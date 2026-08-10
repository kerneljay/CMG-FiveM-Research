--[[
    Vehicle Seat-Changing Helper
    ============================

    CMG.changeSeat(seatIndex) moves the player to another free seat after a
    two-second progress bar.

    It is blocked when:
      * another seat change is already running
      * the player is not in a vehicle
      * the requested seat is occupied
      * the player has a combat timer
      * the player is handcuffed
      * the current vehicle is moving faster than 0.1 game speed units
]]

local changingSeat = false

local function canChangeVehicleState(actionDescription)
    if CMG.getPlayerCombatTimer() > 0 then
        notify(
            "Cannot "
            .. actionDescription
            .. " whilst you havea combat timer"
        )
        return false
    end

    local vehicle =
        CMG.getPlayerVehicle()

    if vehicle == 0 then
        return false
    end

    if CMG.isHandcuffed() then
        return false
    end

    return
        GetEntitySpeed(vehicle)
        < 0.1
end

function CMG.changeSeat(seatIndex)
    if changingSeat then
        return
    end

    changingSeat = true

    local playerPed =
        PlayerPedId()

    if not IsPedSittingInAnyVehicle(
        playerPed
    ) then
        notify(
            "You are not in a vehicle!"
        )

        changingSeat = false
        return
    end

    local vehicle =
        GetVehiclePedIsIn(
            playerPed,
            false
        )

    if not IsVehicleSeatFree(
        vehicle,
        seatIndex
    ) then
        notify(
            "That seat is not free!"
        )

        changingSeat = false
        return
    end

    if not canChangeVehicleState(
        "change seat"
    ) then
        changingSeat = false
        return
    end

    CMG.startCircularProgressBar(
        "",
        2000,
        nil,
        function()
        end
    )

    -- Make sure the player is still in the same vehicle after the delay.
    if CMG.getPlayerVehicle()
        == vehicle then

        SetPedIntoVehicle(
            PlayerPedId(),
            vehicle,
            seatIndex
        )
    end

    changingSeat = false
end
