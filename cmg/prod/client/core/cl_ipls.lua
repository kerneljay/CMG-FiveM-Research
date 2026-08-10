--[[
    IPL / Interior Streaming Manager
    ================================

    IPLs are GTA map packages. Interior "entity sets" are groups of furniture,
    decorations or scene variants inside an interior.

    This script:
      - permanently loads configured IPLs
      - loads/unloads nearby IPLs as the player enters/leaves areas
      - activates/deactivates configured interior entity sets
      - exposes an IPL debug page in the developer menu
]]

local iplConfig = CMG.loadModule("cfg/cfg_ipls")

local activeAreaCount = 0
local activeIplCount = 0
local activeEntitySetCount = 0

-- Apply one configured location.
--
-- iplAction       = RequestIpl when loading, RemoveIpl when unloading
-- entitySetAction = ActivateInteriorEntitySet / DeactivateInteriorEntitySet
-- unloading       = true when leaving the area
local function applyIplLocation(location, iplAction, entitySetAction, unloading)
    local counterChange = unloading and -1 or 1

    activeAreaCount = activeAreaCount + counterChange

    -- --------------------------------------------------------
    -- IPL files
    -- --------------------------------------------------------
    if location.iplNames then
        for _, iplName in pairs(location.iplNames) do
            iplAction(iplName)
            activeIplCount = activeIplCount + counterChange
        end
    end

    -- --------------------------------------------------------
    -- Interior entity sets
    -- --------------------------------------------------------
    if location.entitySetNames then
        for _, entitySetConfig in pairs(location.entitySetNames) do
            local position = location.position
            local interiorId

            if entitySetConfig.type then
                interiorId = GetInteriorAtCoordsWithType(
                    position.x,
                    position.y,
                    position.z,
                    entitySetConfig.type
                )
            else
                interiorId = GetInteriorAtCoords(
                    position.x,
                    position.y,
                    position.z
                )
            end

            if IsValidInterior(interiorId) then
                -- Entity sets to turn ON while this location is active.
                if entitySetConfig.request then
                    for _, entitySetName in pairs(entitySetConfig.request) do
                        entitySetAction(interiorId, entitySetName)
                        activeEntitySetCount = activeEntitySetCount + counterChange

                        -- Colour is only applied while loading.
                        if entitySetConfig.colour and not unloading then
                            SetInteriorEntitySetColor(
                                interiorId,
                                entitySetName,
                                entitySetConfig.colour
                            )
                        end
                    end
                end

                -- Entity sets that should always be disabled for this setup.
                if entitySetConfig.remove then
                    for _, entitySetName in pairs(entitySetConfig.remove) do
                        DeactivateInteriorEntitySet(interiorId, entitySetName)
                    end
                end

                RefreshInterior(interiorId)
            end
        end
    end
end

local function loadIplLocation(location)
    applyIplLocation(
        location,
        RequestIpl,
        ActivateInteriorEntitySet,
        false
    )
end

local function unloadIplLocation(location)
    applyIplLocation(
        location,
        RemoveIpl,
        DeactivateInteriorEntitySet,
        true
    )
end

Citizen.CreateThread(function()
    -- Original resource disables the deep-ocean scaler globally.
    SetDeepOceanScaler(0.0)

    -- IPLs in this list never unload.
    for _, iplName in pairs(iplConfig.alwaysLoadedIplNames) do
        RequestIpl(iplName)
    end

    -- Nearby locations load only when the player enters their configured area.
    for index, location in pairs(iplConfig.nearbyLocations) do
        CMG.createArea(
            string.format("ipl_area_%s", index),
            location.position,
            location.radius,
            location.radius,
            loadIplLocation,
            unloadIplLocation,
            function()
                -- No every-frame interaction is needed.
            end,
            location
        )
    end
end)

-- Small helper used by all four debug buttons below.
local function copyDebugValue(value)
    CMG.copyToClipboard(tostring(value))
    notify("~g~Copied to clipboard.")
end

CMG.registerDevMenuItems("IPLs", function()
    RageUI.Separator(string.format("Num Areas Active: %s", activeAreaCount))
    RageUI.Separator(string.format("Num IPLs Active: %s", activeIplCount))
    RageUI.Separator(string.format("Num Entity Sets Active: %s", activeEntitySetCount))

    local playerPed = PlayerPedId()
    local viewportRoomKey = GetRoomKeyForGameViewport()
    local cameraCoords = GetGameplayCamCoord()
    local viewportInterior = GetInteriorAtCoords(
        cameraCoords.x,
        cameraCoords.y,
        cameraCoords.z
    )
    local entityRoomKey = GetRoomKeyFromEntity(playerPed)
    local entityInterior = GetInteriorFromEntity(playerPed)

    RageUI.ButtonWithStyle(
        "Interior (Entity)",
        "",
        {RightLabel = tostring(entityInterior)},
        true,
        function(_, _, selected)
            if selected then
                copyDebugValue(entityInterior)
            end
        end
    )

    RageUI.ButtonWithStyle(
        "Interior (Viewport)",
        "",
        {RightLabel = tostring(viewportInterior)},
        true,
        function(_, _, selected)
            if selected then
                copyDebugValue(viewportInterior)
            end
        end
    )

    RageUI.ButtonWithStyle(
        "Room Key (Entity)",
        "",
        {RightLabel = tostring(entityRoomKey)},
        true,
        function(_, _, selected)
            if selected then
                copyDebugValue(entityRoomKey)
            end
        end
    )

    RageUI.ButtonWithStyle(
        "Room Key (Viewport)",
        "",
        {RightLabel = tostring(viewportRoomKey)},
        true,
        function(_, _, selected)
            if selected then
                copyDebugValue(viewportRoomKey)
            end
        end
    )
end)
