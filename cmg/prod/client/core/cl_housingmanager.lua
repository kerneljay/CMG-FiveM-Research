--[[
    Housing Interior Manager
    ========================

    This file manages GTA IPLs/interior entity sets used by houses.

    Beginner notes:
      IPL = a GTA map/interior package that can be requested or removed.
      entity set = a group of interior decorations/objects that can be turned
                   on or off inside an interior.

    It also stores whether the player is currently inside a house and a second
    server-provided house value. The exact meaning of that second value is not
    shown in this client file, so it is named currentHouseData rather than
    guessing.
]]

local inHouse = false
local currentHouseData = nil

-- Server asks us to modify map/interior content.
RegisterNetEvent("86e1c60d27", function(iplsToRemove, iplsToRequest, interiors)
    if iplsToRemove then
        for _, iplName in pairs(iplsToRemove) do
            RemoveIpl(iplName)
        end
    end

    if iplsToRequest then
        for _, iplName in pairs(iplsToRequest) do
            RequestIpl(iplName)
        end
    end

    if not interiors then
        return
    end

    for _, interiorConfig in pairs(interiors) do
        local position = interiorConfig.position

        local interiorId = GetInteriorAtCoordsWithType(
            position.x,
            position.y,
            position.z,
            interiorConfig.type
        )

        if IsValidInterior(interiorId) then
            -- Decorations/entity sets that should be enabled.
            if interiorConfig.request then
                for _, entitySetName in pairs(interiorConfig.request) do
                    ActivateInteriorEntitySet(interiorId, entitySetName)
                end
            end

            -- Decorations/entity sets that should be disabled.
            if interiorConfig.remove then
                for _, entitySetName in pairs(interiorConfig.remove) do
                    DeactivateInteriorEntitySet(interiorId, entitySetName)
                end
            end

            RefreshInterior(interiorId)
        end
    end
end)

-- Server updates our current-house state.
RegisterNetEvent("66dd8aed8f", function(isInsideHouse, houseData)
    inHouse = isInsideHouse
    currentHouseData = houseData
end)

-- The original resource adds table.delete globally.
-- It returns a COPY of a list without the requested value.
function table.delete(list, valueToRemove)
    local result = {}

    for _, value in pairs(list) do
        if value ~= valueToRemove then
            result[#result + 1] = value
        end
    end

    return result
end

-- Other client files can call this to inspect the housing state.
function CMG.isInHouse()
    return inHouse, currentHouseData
end
