--[[
    Vehicle Airbags
    ===============

    This script visually deploys two airbag props when the local player badly
    damages a normal road vehicle.

    Trigger conditions:
      * the player is driving
      * the player is not inside an event
      * vehicle engine health is 630 or lower
      * this vehicle has not already deployed airbags
      * vehicle class is NOT:
          8  = motorcycles
          13 = bicycles
          15 = helicopters
          16 = planes

    When triggered:
      * a server sound event is sent
      * one airbag is attached to the driver seat
      * one is attached to the front passenger seat
      * both props are deleted after 10 seconds

    The script also cleans its table if the vehicle disappears.
]]

local deployedAirbags = {}

local ENGINE_HEALTH_TRIGGER = 630.0
local AIRBAG_MODEL_HASH = 851216094


local function deleteIfExists(entity)
    if entity
        and DoesEntityExist(entity) then
        DeleteEntity(entity)
    end
end


local function deployAirbags(vehicle)
    deployedAirbags[vehicle] = {
        vehicle = vehicle,
        driverBag = 0,
        passengerBag = 0
    }

    local driverSeatBone =
        GetEntityBoneIndexByName(
            vehicle,
            "seat_dside_f"
        )

    local passengerSeatBone =
        GetEntityBoneIndexByName(
            vehicle,
            "seat_pside_f"
        )

    CMG.loadModel(
        AIRBAG_MODEL_HASH
    )

    local playerCoords =
        CMG.getPlayerCoords()

    local driverBag =
        CreateObject(
            AIRBAG_MODEL_HASH,
            playerCoords.x,
            playerCoords.y,
            playerCoords.z,
            false,
            false,
            false
        )

    local passengerBag =
        CreateObject(
            AIRBAG_MODEL_HASH,
            playerCoords.x,
            playerCoords.y,
            playerCoords.z,
            false,
            false,
            false
        )

    deployedAirbags[vehicle].driverBag =
        driverBag

    deployedAirbags[vehicle].passengerBag =
        passengerBag

    while not DoesEntityExist(driverBag)
        or not DoesEntityExist(passengerBag) do
        Wait(0)
    end

    SetModelAsNoLongerNeeded(
        AIRBAG_MODEL_HASH
    )

    AttachEntityToEntity(
        driverBag,
        vehicle,
        driverSeatBone,
        0.0,
        0.3,
        0.4,
        90.0,
        0.0,
        0.0,
        true,
        true,
        false,
        false,
        2,
        true
    )

    AttachEntityToEntity(
        passengerBag,
        vehicle,
        passengerSeatBone,
        0.0,
        0.4,
        0.4,
        90.0,
        0.0,
        0.0,
        true,
        true,
        false,
        false,
        2,
        true
    )

    SetTimeout(
        10000,
        function()
            deleteIfExists(driverBag)
            deleteIfExists(passengerBag)
        end
    )
end


CreateThread(function()
    while true do
        local vehicle =
            CMG.getPlayerVehicle()

        if vehicle ~= 0 then
            local playerPed =
                CMG.getPlayerPed()

            local isDriver =
                GetPedInVehicleSeat(
                    vehicle,
                    -1
                ) == playerPed

            if isDriver
                and not CMG.inEvent()
                and GetVehicleEngineHealth(vehicle)
                    <= ENGINE_HEALTH_TRIGGER
                and deployedAirbags[vehicle] == nil then

                local vehicleClass =
                    GetVehicleClass(vehicle)

                local unsupportedClass =
                    vehicleClass == 8
                    or vehicleClass == 13
                    or vehicleClass == 15
                    or vehicleClass == 16

                if not unsupportedClass then
                    TriggerServerEvent(
                        "f43585f6ec",
                        "airbag",
                        15.0,
                        CMG.getSoundEventCode()
                    )

                    deployAirbags(vehicle)
                end
            end
        end

        -- Remove stale records if the original vehicle was deleted.
        for trackedVehicle, data
            in pairs(deployedAirbags) do

            if not DoesEntityExist(
                data.vehicle
            ) then
                deleteIfExists(
                    data.driverBag
                )

                deleteIfExists(
                    data.passengerBag
                )

                deployedAirbags[
                    trackedVehicle
                ] = nil
            end
        end

        Wait(1000)
    end
end)
