--[[
    LEVEL 1 BEGINNER GUIDE — Housingmanager
    ============================================

    File: cmg/prod/client/core/cl_housingmanager.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: core player/framework behaviour, specifically the Housingmanager feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 2
      * Background threads: 0
      * Always-running loops: 0
      * Commands: none found by static scan
      * Incoming network events: 86e1c60d27, 66dd8aed8f
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

-- === NETWORK EVENT: receives "86e1c60d27" from server/another network source ===
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

-- === NETWORK EVENT: receives "66dd8aed8f" from server/another network source ===
RegisterNetEvent("66dd8aed8f", function(isInsideHouse, houseData)
    inHouse = isInsideHouse
    currentHouseData = houseData
end)

-- The original resource adds table.delete globally.
-- It returns a COPY of a list without the requested value.

-- === HELPER FUNCTION: table.delete(list, valueToRemove) ===
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

-- === HELPER FUNCTION: CMG.isInHouse() ===
function CMG.isInHouse()
    return inHouse, currentHouseData
end
