--[[
    LB Racing Client Protection
    ===========================

    While an LB Racing race is active:
      * normal vehicle-failure logic is disabled
      * greenzones are disabled
      * every 10 seconds, a damaged race vehicle driven by the local player is
        repaired back to full health WITHOUT changing its current velocity

    Race starts:
      lb-racing:setParticipantsReady

    Race ends:
      lb-racing:raceFinished

    The original decompiler produced a goto around the damaged-vehicle check.
    This readable version restores the direct intended condition.
]]

local raceActive = false
local repairIntervalMs = 10000
local repairThreadRunning = false
local DAMAGE_THRESHOLD = 990.0


function CMG.isLbRacingActive()
    return raceActive
end


local function vehicleNeedsRaceRepair(
    vehicle
)
    return
        GetVehicleEngineHealth(
            vehicle
        ) < DAMAGE_THRESHOLD
        or GetVehicleBodyHealth(
            vehicle
        ) < DAMAGE_THRESHOLD
        or GetVehiclePetrolTankHealth(
            vehicle
        ) < DAMAGE_THRESHOLD
end


local function repairRaceVehicle(
    vehicle
)
    if vehicle == 0
        or not DoesEntityExist(vehicle)
        or not vehicleNeedsRaceRepair(
            vehicle
        ) then
        return
    end

    local velocity =
        GetEntityVelocity(
            vehicle
        )

    SetVehicleEngineHealth(
        vehicle,
        1000.0
    )

    SetVehicleBodyHealth(
        vehicle,
        1000.0
    )

    SetVehiclePetrolTankHealth(
        vehicle,
        1000.0
    )

    SetVehicleDeformationFixed(
        vehicle
    )

    CMG.setVehicleFixedPreservingFuel(
        vehicle
    )

    SetEntityVelocity(
        vehicle,
        velocity.x,
        velocity.y,
        velocity.z
    )
end


local function startRepairThread()
    if repairThreadRunning then
        return
    end

    repairThreadRunning = true

    CreateThread(function()
        while raceActive do
            local vehicle, isDriver =
                CMG.getPlayerVehicle()

            if vehicle ~= 0
                and isDriver then
                repairRaceVehicle(
                    vehicle
                )
            end

            Wait(
                repairIntervalMs
            )
        end

        repairThreadRunning =
            false
    end)
end


local function setRaceActive(
    enabled
)
    if raceActive == enabled then
        return
    end

    raceActive = enabled

    if enabled then
        CMG.setVehicleFailureDisabled(
            true
        )

        CMG.setGreenzonesDisabled(
            true
        )

        startRepairThread()
        return
    end

    CMG.setVehicleFailureDisabled(
        false
    )

    CMG.setGreenzonesDisabled(
        false
    )

    local vehicle =
        CMG.getPlayerVehicle()

    if vehicle ~= 0 then
        SetLocalPlayerAsGhost(
            false
        )

        SetNetworkVehicleAsGhost(
            vehicle,
            false
        )
    end
end


RegisterNetEvent(
    "lb-racing:setParticipantsReady",
    function()
        print(
            "setLbRacingActive",
            "true"
        )

        setRaceActive(true)
    end
)


RegisterNetEvent(
    "lb-racing:raceFinished",
    function()
        print(
            "setLbRacingActive",
            "false"
        )

        setRaceActive(false)
    end
)
