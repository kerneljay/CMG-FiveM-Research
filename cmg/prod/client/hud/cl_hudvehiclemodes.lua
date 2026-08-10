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


function EnableDriftMode(vehicle)
    SetDriftTyresEnabled(
        vehicle,
        true
    )
end


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


function CMG.getVehicleMode()
    return vehicleMode
end


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
