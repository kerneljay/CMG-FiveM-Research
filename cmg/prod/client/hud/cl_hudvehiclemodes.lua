--[[
    LEVEL 1 BEGINNER GUIDE — Hudvehiclemodes
    =============================================

    File: cmg/prod/client/hud/cl_hudvehiclemodes.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: HUD and on-screen player information, specifically the Hudvehiclemodes feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 8
      * Background threads: 0
      * Always-running loops: 0
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
    HUD Vehicle Modes
    =================

    The custom vehicle HUD can show a special vehicle type/mode.

    vehicleMode can be:
      nil/default -> normal vehicle type
      "sport"     -> force Sultan RS engine audio
      "drift"     -> enable GTA drift tyres

    CMG.getHudVehicleType(vehicle)
      Returns the icon/type the HUD should use:
        wheelchair
        driftmode
        sportmode
        bike
        plane
        electric

    NUI callback "setVehicleMode" changes the current mode, but only while the
    local player is actually driving the vehicle.
]]

local vehicleMode = nil


-- === HELPER FUNCTION: CMG.getHudVehicleType(vehicle) ===
function CMG.getHudVehicleType(vehicle)
    if CMG.isWheelchairVehicle(
        vehicle
    ) then
        return "wheelchair"
    end

    if vehicleMode == "drift"
        or vehicleMode == "sport" then
        return vehicleMode .. "mode"
    end

    local vehicleClass =
        GetVehicleClass(vehicle)

    if vehicleClass == 13 then
        return "bike"
    end

    if vehicleClass == 15
        or vehicleClass == 16 then
        return "plane"
    end

    return "electric"
end


local function enableSportMode(
    vehicle
)
    ForceVehicleEngineAudio(
        vehicle,
        "SULTANRS"
    )
end


local function disableSportMode(
    vehicle
)
    ForceVehicleEngineAudio(
        vehicle,
        nil
    )
end


-- === HELPER FUNCTION: EnableDriftMode(vehicle) ===
function EnableDriftMode(vehicle)
    SetDriftTyresEnabled(
        vehicle,
        true
    )
end


-- === HELPER FUNCTION: DisableDriftMode(vehicle) ===
function DisableDriftMode(vehicle)
    SetDriftTyresEnabled(
        vehicle,
        false
    )
end


local function updateHudVehicleType(
    vehicle
)
    CMG.sendHudNuiMessage(
        "IN_VEHICLE",
        {
            value = true,
            type =
                CMG.getHudVehicleType(
                    vehicle
                )
        }
    )
end


CMG.uiRegisterCallback(
    "setVehicleMode",
    function(data)
        local requestedMode =
            data.type

        local vehicle, isDriver =
            CMG.getPlayerVehicle()

        if vehicle == 0
            or not isDriver then
            return false
        end

        if vehicleMode
            == requestedMode then
            return false
        end

        -- Undo whatever special mode was active first.
        if requestedMode
            == "default" then

            if vehicleMode == "drift" then
                DisableDriftMode(
                    vehicle
                )
            end

            if vehicleMode == "sport" then
                disableSportMode(
                    vehicle
                )
            end

            vehicleMode =
                requestedMode

            updateHudVehicleType(
                vehicle
            )

            return true
        end

        if requestedMode == "sport" then
            if vehicleMode == "drift" then
                DisableDriftMode(
                    vehicle
                )
            end

            enableSportMode(
                vehicle
            )
        end

        if requestedMode == "drift" then
            if vehicleMode == "sport" then
                disableSportMode(
                    vehicle
                )
            end

            EnableDriftMode(
                vehicle
            )
        end

        vehicleMode =
            requestedMode

        updateHudVehicleType(
            vehicle
        )

        return true
    end
)


-- === HELPER FUNCTION: CMG.getVehicleMode() ===
function CMG.getVehicleMode()
    return vehicleMode
end


-- === HELPER FUNCTION: CMG.resetVehicleMode() ===
function CMG.resetVehicleMode()
    local vehicle =
        CMG.getPlayerVehicle()

    if vehicleMode == "drift" then
        DisableDriftMode(
            vehicle
        )
    end

    if vehicleMode == "sport" then
        disableSportMode(
            vehicle
        )
    end

    vehicleMode = nil
end
