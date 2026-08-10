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
