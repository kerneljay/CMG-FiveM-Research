--[[
    LEVEL 1 BEGINNER GUIDE — Lockvehicles
    ==========================================

    File: cmg/prod/client/vehicles/cl_lockvehicles.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: vehicle gameplay and vehicle systems, specifically the Lockvehicles feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 1
      * Background threads: 0
      * Always-running loops: 0
      * Commands: lockvehicle
      * Incoming network events: none found by static scan
      * Local event handlers: d5c231fe44
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
    Vehicle Lock Hotkey
    ===================

    /lockvehicle and the COMMA key try to lock/unlock the nearest vehicle the
    player owns.

    Rules:
      * dead players cannot use it
      * normal owned vehicles are checked within 8 metres
      * if no owned vehicle is found, the garbage-job truck helper is tried
      * a key-fob sound/animation is played when the toggle succeeds
]]

-- === HELPER FUNCTION: toggleNearestVehicleLock() ===
local function toggleNearestVehicleLock()
    local playerPed = CMG.getPlayerPed()

    if GetEntityHealth(playerPed) <= 102 then
        tCMG.notify(
            "~r~You may not lock/unlock your vehicle whilst dead."
        )
        return
    end

    local ownsVehicle, vehicle =
        tCMG.getNearestOwnedVehicle(8)

    local lockToggled = false

    if vehicle ~= nil then
        if ownsVehicle then
            tCMG.vc_toggleLock(vehicle)
            lockToggled = true
        else
            Citizen.Wait(1000)
        end
    else
        lockToggled =
            CMG.tryToggleGarbageJobTruckLock(8)
            == true
    end

    if lockToggled then
        tCMG.playSound(
            "HUD_MINI_GAME_SOUNDSET",
            "5_SEC_WARNING"
        )

        local animDict =
            "anim@mp_player_intmenu@key_fob@"

        CMG.loadAnimDict(animDict)

        TaskPlayAnim(
            PlayerPedId(),
            animDict,
            "fob_click",
            8.0,
            -8.0,
            -1,
            48,
            0,
            false,
            false,
            false
        )

        RemoveAnimDict(animDict)

        if CMG.isNewPlayer() then
            drawNativeNotification(
                "Press ~INPUT_27781958~ when nearby to toggle the lock on the vehicle again."
            )
        end

        Citizen.Wait(1000)

    elseif vehicle == nil then
        tCMG.notify(
            "~r~No owned vehicle found nearby to lock/unlock"
        )
    end
end

RegisterCommand(
    "lockvehicle",
    toggleNearestVehicleLock,
    false
)

RegisterKeyMapping(
    "lockvehicle",
    "Lock Vehicle",
    "KEYBOARD",
    "COMMA"
)

AddEventHandler(
    "d5c231fe44",
    toggleNearestVehicleLock
)
