--[[
    LEVEL 1 BEGINNER GUIDE — 2step
    ===================================

    File: cmg/prod/client/misc/cl_2step.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the 2step feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 2
      * Background threads: 2
      * Always-running loops: 1
      * Commands: none found by static scan
      * Incoming network events: none found by static scan
      * Local event handlers: none found by static scan
      * Server events sent: none found by static scan
      * NUI callbacks: none found by static scan
      * Modules/config loaded: none found by static scan

    Read it in this order:
      1. Top-level config/state variables.
      2. Helper functions (small reusable pieces of logic).
      3. Commands/events/UI callbacks (what starts the logic).
      4. Threads/loops last (what keeps checking in the background).

    Safety note for editing:
      Keep event names, decorator keys, exported names, and config keys unchanged
      unless you also update every place that uses them.
]]
--[[
    Vehicle Anti-Lag / Two-Step
    ===========================

    Vehicles can carry a Decor integer named "0a6cf607ed". That value selects
    an anti-lag setting saved in `antiLagSettings`.

    CMG.setVehicleAntiLag(settingId, value)
      Updates that setting table and forces the monitor to re-check it.

    When the local player:
      * owns the current vehicle
      * is driving it
      * has a valid anti-lag Decor setting
      * and the configured setting is non-zero

    ...anti-lag mode becomes active.

    While active, releasing both accelerator and brake at RPM > 0.75 can create
    exhaust flames, a tiny explosion sound/effect and turbo pressure.
]]

local antiLagSettings = {}

local antiLagActive = false

-- Set true when the settings table changes so the monitor restarts.
local settingsChanged = false

-- Prevent several flame/explosion threads running at the same time.
local effectBusy = false


-- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
CreateThread(function()
    while true do
        local playerPed =
            CMG.getPlayerPed()

        local vehicle =
            GetVehiclePedIsIn(
                playerPed,
                false
            )

        if vehicle ~= 0
            and GetPedInVehicleSeat(
                vehicle,
                -1
            ) == playerPed then

            local ownerUserId =
                tCMG.getVehicleInfos(
                    vehicle
                )

            local settingId =
                DecorGetInt(
                    vehicle,
                    "0a6cf607ed"
                )

            if ownerUserId
                == CMG.getClientUserId()
                and settingId > 0
                and antiLagSettings[
                    settingId
                ] ~= nil
                and antiLagSettings[
                    settingId
                ] ~= 0 then

                antiLagActive = true

                while GetVehiclePedIsIn(
                    CMG.getPlayerPed(),
                    false
                ) ~= 0
                    and settingsChanged
                        == false do

                    Wait(100)
                end

                settingsChanged =
                    false

                antiLagActive =
                    false
            end
        end

        Wait(1000)
    end
end)


-- === HELPER FUNCTION: antiLagTick() ===
local function antiLagTick()
    if not antiLagActive then
        return
    end

    -- Do nothing while accelerating or braking.
    if IsControlPressed(1, 71)
        or IsControlPressed(1, 72) then
        return
    end

    local playerPed =
        CMG.getPlayerPed()

    if not IsPedInAnyVehicle(
        playerPed,
        true
    ) then
        return
    end

    local vehicle =
        GetVehiclePedIsIn(
            playerPed,
            false
        )

    if GetPedInVehicleSeat(
        vehicle,
        -1
    ) ~= playerPed
        or effectBusy then
        return
    end

    local rpm =
        GetVehicleCurrentRpm(
            vehicle
        )

    local delayMs =
        math.random(
            25,
            200
        )

    effectBusy = true

    -- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
    Citizen.CreateThread(function()
        if rpm > 0.75 then
            CMG.playVehicleFlameExhaustEffect(
                vehicle
            )

            local coords =
                GetEntityCoords(
                    vehicle
                )

            AddExplosion(
                coords.x,
                coords.y,
                coords.z,
                61,
                0.0,
                true,
                true,
                0.0
            )

            SetVehicleTurboPressure(
                vehicle,
                25
            )

            Wait(delayMs)
        end

        effectBusy = false
    end)
end


CMG.createThreadOnTick(
    antiLagTick,
    "Vehicle AntiLag"
)


function CMG.setVehicleAntiLag(
    settingId,
    value
)
    settingsChanged = true

    antiLagSettings[
        settingId
    ] = value
end
