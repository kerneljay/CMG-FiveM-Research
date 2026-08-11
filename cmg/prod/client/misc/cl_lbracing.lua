--[[
    LEVEL 1 BEGINNER GUIDE — Lbracing
    ======================================

    File: cmg/prod/client/misc/cl_lbracing.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: miscellaneous gameplay feature, specifically the Lbracing feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 5
      * Background threads: 1
      * Always-running loops: 0
      * Commands: none found by static scan
      * Incoming network events: lb-racing:setParticipantsReady, lb-racing:raceFinished
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


-- === HELPER FUNCTION: CMG.isLbRacingActive() ===
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


-- === HELPER FUNCTION: startRepairThread() ===
local function startRepairThread()
    if repairThreadRunning then
        return
    end

    repairThreadRunning = true

    -- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
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
