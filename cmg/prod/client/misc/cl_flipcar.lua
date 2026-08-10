--[[
    /flipcar
    ========

    Lets the DRIVER right an overturned/stuck vehicle after waiting 30 seconds.

    The 30-second wait is cancelled if:
      * the player leaves that vehicle
      * the player's health changes (damage)
      * the vehicle reaches 4.4704 speed units or more
      * the engine is turned back on

    Before waiting, the script checks wheel suspension. If more than half the
    vehicle's wheels appear to have suspension compression, it decides the car
    is already properly sitting on its wheels and does not need flipping.
]]

local flipPending = false


local function vehicleIsOnEnoughWheels(
    vehicle
)
    local wheelCount =
        GetVehicleNumberOfWheels(
            vehicle
        )

    local compressedWheels = 0

    for wheelIndex = 0,
        wheelCount - 1 do

        if GetVehicleWheelSuspensionCompression(
            vehicle,
            wheelIndex
        ) > 0.0 then

            compressedWheels =
                compressedWheels + 1
        end
    end

    return
        compressedWheels
        > math.floor(
            wheelCount / 2.0
        )
end


RegisterCommand(
    "flipcar",
    function()
        local vehicle, isDriver =
            CMG.getPlayerVehicle()

        if vehicle == 0 then
            notify(
                "You are not in a vehicle"
            )
            return
        end

        if not isDriver then
            notify(
                "You are not the driver of this vehicle"
            )
            return
        end

        if GetIsVehicleEngineRunning(
            vehicle
        ) then
            SetVehicleEngineOn(
                vehicle,
                false,
                true,
                true
            )
        end

        if vehicleIsOnEnoughWheels(
            vehicle
        ) then
            notify(
                "Your vehicle does not require flipping"
            )
            return
        end

        if flipPending then
            notify(
                "Your vehicle is already waiting to be flipped"
            )
            return
        end

        flipPending = true

        notify(
            "Flipping your vehicle in 30 seconds. Please remain stationary"
        )

        local playerPed =
            CMG.getPlayerPed()

        local startingHealth =
            GetEntityHealth(
                playerPed
            )

        local startedAt =
            GetGameTimer()

        while GetGameTimer()
            - startedAt
            < 30000 do

            local currentVehicle =
                CMG.getPlayerVehicle()

            if currentVehicle
                ~= vehicle then

                notify(
                    "Cancelling flip as you left the vehicle"
                )

                flipPending = false
                return
            end

            if GetEntityHealth(
                playerPed
            ) ~= startingHealth then

                notify(
                    "Cancelling flip as you recieved damage"
                )

                flipPending = false
                return
            end

            if GetEntitySpeed(
                vehicle
            ) >= 4.4704 then

                notify(
                    "Cancelling flip as you are not stationary"
                )

                flipPending = false
                return
            end

            if GetIsVehicleEngineRunning(
                vehicle
            ) then
                notify(
                    "Cancelling flip as you turned the engine on"
                )

                flipPending = false
                return
            end

            Citizen.Wait(0)
        end

        local coords =
            GetEntityCoords(
                vehicle
            )

        SetEntityCoords(
            vehicle,
            coords.x,
            coords.y,
            coords.z,
            true,
            false,
            false,
            false
        )

        SetVehicleOnGroundProperly(
            vehicle
        )

        SetVehicleEngineOn(
            vehicle,
            true,
            true,
            false
        )

        notify(
            "Your vehicle has been flipped"
        )

        flipPending = false
    end,
    false
)
