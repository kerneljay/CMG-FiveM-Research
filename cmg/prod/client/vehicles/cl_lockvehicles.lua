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
