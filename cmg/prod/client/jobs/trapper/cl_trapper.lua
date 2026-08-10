--[[
    Beginner Guide: cl_trapper.lua
    ==============================

    This file came from decompiled Lua. It has been cleaned so the
    temporary SHX names are replaced with role-based names. Where the
    exact server-side meaning cannot be proven from this client file,
    neutral names such as stateValue/workValue are used instead of
    inventing a misleading meaning.

    Config/modules used:
      * cfg/cfg_trapper

    Commands:
      * /trapnetspeech

    Important events used:
      * CMG:requestTrapperConfig
      * CMG:trapNetContacts
      * CMG:trapNetOpened
      * CMG:trapNetOrder
      * CMG:trapNetOrderLegalSupply
      * CMG:trapNetRequestContacts
      * ae47027072
      * onResourceStop

    Exports:
      * getTrapperNPC

    Compatibility:
      * Event/hash strings and public framework calls are unchanged.
      * This pass intentionally avoids guessing unknown server meanings.
]]
--[[
    BEGINNER GUIDE — Trapper
    ========================

    File: cmg/prod/client/jobs/trapper/cl_trapper.lua
    Purpose: This file contains job gameplay.

    How to read FiveM Lua:
      * RegisterNetEvent/AddEventHandler = code that runs when an event happens.
      * TriggerServerEvent = this client asks/tells the server to do something.
      * PlayerPedId() = your local GTA character (called a 'ped').
      * vector3/vector4 = world coordinates; vector4 also normally includes heading.
      * RageUI/NUI = menu or browser-based UI code.
      * CreateThread/Wait = code that can keep running without freezing the game.

    Decompiled-code note:
      This file came from decompiled Lua. The repeated AI-cleanup boilerplate
      has been removed. Any remaining SHX-style values are compiler/decompiler
      temporaries whose meaning changes repeatedly; follow the surrounding API
      call and the comments rather than treating one SHX variable as one concept.

    Config/data used:
      * cfg/cfg_trapper

    Commands/command-like entries found:
      * trapnetspeech

    Network/hash identifiers found: 61
      They are intentionally left unchanged because matching server code may use them.

    Named framework/network events found:
      * CMG:trapNetOpened
      * CMG:trapNetOrder
      * CMG:trapNetOrderLegalSupply
      * CMG:requestTrapperConfig
      * CMG:trapNetGotConfig
      * CMG:trapNetContacts
      * CMG:trapNetRequestContacts

    Example player-facing text in this file:
      * Press F6 to get started
      * ~r~You are already inside a warehouse.
      * ~r~You can not enter a warehouse with a combat timer.
      * Press [F] to enter warehouse
      * ~r~You must be on the Trapper job to use the warehouse seller.

]]
--[[
    CMG TRAPPER / DRUG DEN WAREHOUSE
    Beginner-Friendly Rewrite / Learning Version
    ===============================================================

    WHY THIS FILE EXISTS
    --------------------
    The supplied file was a very large Lua decompile.  It used temporary
    variables such as:

        workValue
        workValue4
        workValue2

    Those are decompiler "register" names, not names written by the original
    developer, so they make a simple idea extremely hard to understand.

    This rewrite separates the resource into normal sections:

        1. Configuration and state
        2. Warehouse ownership / keys
        3. Warehouse entrances
        4. Warehouse seller + UI callbacks
        5. TrapNet orders and deliveries
        6. TrapNet buyer NPCs
        7. Warehouse prop placement
        8. Shelves, plants and watering
        9. Weed workbench / first-person processing
       10. Warehouse shell loading / unloading
       11. Cleanup

    IMPORTANT
    ---------
    This is the BEGINNER/LEARNING rewrite.

    The file:

        trapper_full_cleaned_reference.lua

    is the behaviour-preserving decompiled reference.  Use that file when you
    need to compare an unusual animation, exact server-event argument order,
    or another edge case.

    The original network-event hashes are retained in this file so you can
    search for the exact matching server handlers.
]]

---------------------------------------------------------------------
-- 1. CONFIGURATION
---------------------------------------------------------------------

local TrapperConfig = CMG.loadModule("cfg/cfg_trapper")
local TrapperCore = CMG.getTrapperCore()

-- Other parts of the CMG framework expect the Trapper core to know its config.
TrapperCore.cfg = TrapperConfig

---------------------------------------------------------------------
-- 2. NETWORK EVENT NAMES
---------------------------------------------------------------------
--
-- The server uses short hashed event names.
--
-- BAD for readability:
--
--     TriggerServerEvent("ae47027072", warehouseId)
--
-- BETTER:
--
--     TriggerServerEvent(EVENTS.REQUEST_ENTER_WAREHOUSE, warehouseId)
--
-- The STRING itself has NOT changed, so it can still match the server.
---------------------------------------------------------------------

local EVENTS = {
    -------------------------------------------------------------
    -- Job / warehouse ownership
    -------------------------------------------------------------

    SET_JOB_START_GUIDANCE = "e3a2b4bde0",
    REQUEST_ENTER_WAREHOUSE = "ae47027072",
    UPDATE_TRAPPER_DATA = "1676313871",
    WAREHOUSE_PURCHASED = "a6fef311cd",
    JOB_ACTIVE_CHANGED = "a68d3374be",
    PURCHASE_WAREHOUSE = "acaf15912f",

    -------------------------------------------------------------
    -- Warehouse keys / UI
    -------------------------------------------------------------

    REQUEST_KEY_HOLDERS = "41f962037a",
    REQUEST_LEADERBOARD = "dde748984e",
    GIVE_WAREHOUSE_KEY = "594f42c861",
    REVOKE_WAREHOUSE_KEY = "418b3444c3",
    ACCEPT_KEY_INVITE = "05d6ac829e",
    DECLINE_KEY_INVITE = "67f1b2900e",
    CANCEL_KEY_INVITE = "032d2841c9",
    SEARCH_PLAYERS = "913d8fa769",

    KEY_HOLDERS_RESULT = "c839fcfb63",
    LEADERBOARD_RESULT = "f23412f497",
    LEVELS_RESULT = "15f134927d",
    PLAYER_SEARCH_RESULT = "79fec18bda",

    -------------------------------------------------------------
    -- TrapNet orders / deliveries
    -------------------------------------------------------------

    PLACE_TRAPNET_ORDER = "363afc9c3e",
    PLACE_LEGAL_SUPPLY_ORDER = "3581e949d7",
    ORDER_CONFIRMED = "fc57db5df9",
    DELIVERY_TIMER = "6fa96e9091",
    START_DELIVERY = "850a241f8b",
    START_SPECIAL_DELIVERY = "76bdb27e56",
    REGISTER_DELIVERY_PED = "b0ea7d31cf",
    DELIVERY_BOX_DROPPED = "d39ece9727",
    CREATE_DELIVERY_PICKUP = "08289204ce",
    PICKUP_DELIVERY = "eab1b30be7",
    REMOVE_DELIVERY = "6f073b577d",
    ITEM_RECEIVED = "e4aa647477",
    SET_DELIVERY_PED_ANIM = "b9819e9635",

    -------------------------------------------------------------
    -- TrapNet buyers
    -------------------------------------------------------------

    BUYER_HANDOFF_PLAYER = "fac711d56b",
    BUYER_HANDOFF_NPC = "af7138ba82",
    BUYER_REFUSED = "8652dfb7b4",

    -------------------------------------------------------------
    -- Warehouse prop placement / interaction
    -------------------------------------------------------------

    PLACE_WAREHOUSE_ITEM = "6b0f8f582c",
    CREATE_WAREHOUSE_OBJECT = "3e72419cb1",
    REMOVE_WAREHOUSE_OBJECT = "5a5406667c",
    USE_WAREHOUSE_OBJECT = "d80be52b4d",
    UPDATE_SHELF = "b6c6005ec2",
    REFRESH_SHELVES = "4b662b8a67",
    REPLACE_WAREHOUSE_OBJECT = "770e1455bc",
    RUN_ITEM_CLIENT_ACTION = "75f86594c8",

    -------------------------------------------------------------
    -- Plants
    -------------------------------------------------------------

    UPDATE_PLANT_STAGE = "a0cb4df825",
    UPDATE_PLANT_STATUS = "c8a4567418",

    -------------------------------------------------------------
    -- Weed workbench / processing
    -------------------------------------------------------------

    CANCEL_WEED_PROCESSING = "acc4e317a4",
    SET_WORKBENCH_COLLISION = "460cc0c926",
    VALIDATE_WEED_PROCESSING = "d9d7860200",

    -------------------------------------------------------------
    -- Warehouse shell
    -------------------------------------------------------------

    LOAD_WAREHOUSE = "8aa91132f1",
    UNLOAD_WAREHOUSE = "f410c40735",
    REQUEST_WAREHOUSE_OBJECTS = "a7fea0c702",

    -------------------------------------------------------------
    -- Remaining hashes from the original decompile
    --
    -- Their exact semantic names are not safely recoverable from the
    -- client alone, so they are deliberately labelled UNKNOWN instead
    -- of pretending we know what the server does.
    -------------------------------------------------------------

    UNKNOWN_0148208A03 = "0148208a03",
    UNKNOWN_020BA07CFC = "020ba07cfc",
    UNKNOWN_05D6AC829E = "05d6ac829e",
    UNKNOWN_15CEDE429F = "15cede429f",
    UNKNOWN_3838624753 = "3838624753",
    UNKNOWN_4D804F2D87 = "4d804f2d87",
    UNKNOWN_572BFC71C7 = "572bfc71c7",
    UNKNOWN_657DB34076 = "657db34076",
    UNKNOWN_73B8CC73B6 = "73b8cc73b6",
}

-- Every raw hash from the supplied decompile is also kept in one place.
-- This makes Ctrl+F comparisons with the reference file easy.
local ALL_ORIGINAL_HASHES = {
    "003eadf2da", "0148208a03", "020ba07cfc", "032d2841c9",
    "05d6ac829e", "08289204ce", "15cede429f", "15f134927d",
    "1676313871", "3581e949d7", "363afc9c3e", "3838624753",
    "3e72419cb1", "418b3444c3", "41f962037a", "460cc0c926",
    "4b662b8a67", "4d804f2d87", "572bfc71c7", "594f42c861",
    "5a5406667c", "657db34076", "67f1b2900e", "6b0f8f582c",
    "6f073b577d", "6fa96e9091", "73b8cc73b6", "75f86594c8",
    "76bdb27e56", "770e1455bc", "79fec18bda", "850a241f8b",
    "8652dfb7b4", "8aa91132f1", "913d8fa769", "a0cb4df825",
    "a68d3374be", "a6fef311cd", "a7fea0c702", "acaf15912f",
    "acc4e317a4", "ae47027072", "af7138ba82", "b0ea7d31cf",
    "b4fcca60d5", "b6c6005ec2", "b9819e9635", "c839fcfb63",
    "c8a4567418", "d39ece9727", "d80be52b4d", "d9d7860200",
    "dde748984e", "e3a2b4bde0", "e4aa647477", "eab1b30be7",
    "f1dae6cf3d", "f23412f497", "f410c40735", "fac711d56b",
    "fc57db5df9",
}

---------------------------------------------------------------------
-- 3. FIRST-PERSON WEED-PROCESSING STATE
---------------------------------------------------------------------
--
-- The decompile created this table one field at a time.
--
-- Think of this table as the "memory" for the workbench minigame.
---------------------------------------------------------------------

local WeedProcessing = {
    active = false,

    -- "trim" = remove leaves from cannabis buds.
    -- "bag"  = put cleaned buds into empty bags.
    sessionMode = "trim",

    chair = nil,

    plantId = nil,
    warehouseId = nil,

    phase = "idle",

    camera = nil,

    unprocessedTray = nil,
    processedTray = nil,

    -- Purity values belonging to every bud currently visible.
    remainingPurities = {},

    -- Positions/slots used by the workbench props.
    slots = {},

    -- Decorative leaves attached to the currently processed bud.
    leaves = {},
    leavesFallen = {},

    activeBudEntity = nil,

    processedEntities = {},

    -- Set to true when BACK/cancel should leave the first-person session.
    shouldExit = false,

    tableBudPurity = nil,

    -------------------------------------------------------------
    -- Bagging-specific data
    -------------------------------------------------------------

    bagRemainingPurities = {},
    bagBudSlots = {},

    emptyBagsRemaining = 0,
    emptyBagEntities = {},

    pendingBagBudEntity = nil,
    pendingBagBudPurity = nil,
    pendingEmptyBagEntity = nil,
}

-- Preserve the field expected by the rest of the framework.
TrapperCore.weedFp = WeedProcessing

---------------------------------------------------------------------
-- 4. TRAPPER DATA RECEIVED FROM SERVER
---------------------------------------------------------------------

local TrapperData = {
    -- [database warehouse ID] = warehouse ownership record
    warehousesOwned = {},

    -- [database warehouse ID] = key record
    warehouseKeys = {},

    keyInvitesPending = {},
}

-- True when player is standing at the warehouse-purchase seller.
local atWarehouseSeller = false

-- True while the Trapper job systems should be active.
local trapperJobActive = false

---------------------------------------------------------------------
-- 5. WAREHOUSE RUNTIME STATE
---------------------------------------------------------------------

local WAREHOUSE_EXIT_AREA =
    "trapper_warehouse_exit_area"

local WAREHOUSE_EXIT_PROP =
    "trapper_warehouse_exit_prop"

local WarehouseRuntime = {
    entranceMarkers = {},
    entranceAreas = {},
    entranceBlips = {},

    -- Areas created for props inside the current warehouse.
    areas = {},

    shellObject = nil,

    lastUsedWarehouseId = nil,

    -- [plant/object DB ID] = runtime object information.
    objects = {},

    warehouseLoadInProgress = false,

    warehouseShellAnchor = nil,

    deliveryBox = nil,
}

---------------------------------------------------------------------
-- 6. SAFE LITTLE HELPERS
---------------------------------------------------------------------

local function toNumberIfPossible(value)
    return tonumber(value) or value
end

local function sendUiMessage(messageType, payload)
    CMG.uiSendMessage({
        type = messageType,
        payload = payload,
    })
end

local function closeWarehousePicker()
    CMG.uiSendMessage({
        type = "TRAPPER_WAREHOUSE_PICKER_CLOSE",
    })

    CMG.uiSetFocus(
        false,
        false,
        false
    )
end

local function getWarehouseDefinition(warehouseName)
    return TrapperConfig.warehouses
        and TrapperConfig.warehouses[warehouseName]
end

local function getWarehouseLocation(
    warehouseName,
    locationIndex
)
    local warehouse =
        getWarehouseDefinition(warehouseName)

    if not warehouse then
        return nil
    end

    local locationSize =
        warehouse.locationSize

    local locations =
        TrapperConfig.warehouseLocations
        and TrapperConfig.warehouseLocations[
            locationSize
        ]

    if not locations then
        return nil
    end

    return locations[locationIndex]
end

local function getWarehouseDisplayName(
    warehouseDbId,
    record,
    isMine
)
    local definition =
        getWarehouseDefinition(
            record.warehouseName
        )

    local warehouseName =
        definition
        and definition.name
        or record.warehouseName

    if isMine then
        return warehouseName .. " (Mine)"
    end

    local ownerName = record.ownerName

    if not ownerName or ownerName == "" then
        ownerName =
            "PermID:"
            .. tostring(record.ownerId)
    end

    return warehouseName
        .. " Owner: "
        .. ownerName
end

---------------------------------------------------------------------
-- 7. JOB START GUIDANCE
---------------------------------------------------------------------

RegisterNetEvent(
    EVENTS.SET_JOB_START_GUIDANCE
)

AddEventHandler(
    EVENTS.SET_JOB_START_GUIDANCE,
    function(jobName)
        if jobName ~= TrapperConfig.jobName then
            return
        end

        PlaySound(
            -1,
            "CHECKPOINT_BEHIND",
            "HUD_MINI_GAME_SOUNDSET",
            false,
            0,
            true
        )

        CMG.initializeInstructionalJobScaleform(
            TrapperConfig.jobName,
            "Press F6 to get started"
        )

        if TrapperConfig.jobStart then
            SetNewWaypoint(
                TrapperConfig.jobStart.x,
                TrapperConfig.jobStart.y
            )
        end
    end
)

---------------------------------------------------------------------
-- 8. ENTER A WAREHOUSE
---------------------------------------------------------------------

local function requestEnterWarehouse(warehouseDbId)
    -------------------------------------------------------------
    -- Do not try loading a second warehouse on top of the first.
    -------------------------------------------------------------

    if CMG.inTrappingWarehouse()
        or WarehouseRuntime.warehouseLoadInProgress
    then
        notify(
            "~r~You are already inside a warehouse."
        )

        return
    end

    -------------------------------------------------------------
    -- Combat logging / escape protection.
    -------------------------------------------------------------

    if CMG.getPlayerCombatTimer() > 0 then
        notify(
            "~r~You can not enter a warehouse with a combat timer."
        )

        return
    end

    TriggerServerEvent(
        EVENTS.REQUEST_ENTER_WAREHOUSE,
        warehouseDbId
    )
end

---------------------------------------------------------------------
-- 9. WAREHOUSE ENTRANCE UI
---------------------------------------------------------------------

local function createWarehouseEntrance(
    entranceKey,
    coords,
    options
)
    local areaName =
        "warehouse_entrance_"
        .. tostring(entranceKey)

    local function onEnter()
        -- Nothing needed.
    end

    local function onExit()
        -- Nothing needed.
    end

    local function onTick()
        if CMG.isPurge()
            or CMG.isPlayerInPrison()
        then
            return
        end

        ---------------------------------------------------------
        -- F = enter warehouse.
        ---------------------------------------------------------

        if IsControlJustPressed(1, 23) then
            if #options == 1 then
                requestEnterWarehouse(
                    options[1].warehouseId
                )
            else
                CMG.uiSetFocus(
                    true,
                    true,
                    false
                )

                sendUiMessage(
                    "TRAPPER_SHOW_WAREHOUSE_PICKER",
                    {
                        warehouses = options,
                    }
                )

                CMG.uiSendMessage({
                    type = "APP_TOGGLE",
                    app = "TrapperWarehousePicker",
                })
            end
        end

        CMG.DrawText3D(
            coords,
            "Press [F] to enter warehouse",
            0.3
        )
    end

    CMG.createArea(
        areaName,
        coords,
        1.5,
        6,
        onEnter,
        onExit,
        onTick,
        {}
    )

    table.insert(
        WarehouseRuntime.entranceAreas,
        areaName
    )

    -------------------------------------------------------------
    -- Red animated house marker.
    -------------------------------------------------------------

    local markerId =
        tCMG.addPropMarker(
            "bzzz_marker_home_red_anim",
            coords.x,
            coords.y,
            coords.z,
            20.0
        )

    table.insert(
        WarehouseRuntime.entranceMarkers,
        markerId
    )

    -------------------------------------------------------------
    -- Map blip.
    -------------------------------------------------------------

    local blip =
        tCMG.addBlip(
            coords.x,
            coords.y,
            coords.z,
            474,
            TrapperConfig.blipColour,
            "Drug Den Warehouse",
            0.8,
            false
        )

    table.insert(
        WarehouseRuntime.entranceBlips,
        blip
    )
end

local function clearWarehouseEntrances()
    for _, marker in pairs(
        WarehouseRuntime.entranceMarkers
    ) do
        tCMG.removeMarker(marker)
    end

    WarehouseRuntime.entranceMarkers = {}

    for _, areaName in pairs(
        WarehouseRuntime.entranceAreas
    ) do
        tCMG.removeArea(areaName)
    end

    WarehouseRuntime.entranceAreas = {}

    for _, blip in pairs(
        WarehouseRuntime.entranceBlips
    ) do
        tCMG.removeBlip(blip)
    end

    WarehouseRuntime.entranceBlips = {}
end

local function rebuildWarehouseEntrances()
    clearWarehouseEntrances()

    -------------------------------------------------------------
    -- Group warehouses that share the same physical entrance.
    --
    -- Example:
    --
    --    small_1
    --        My Small Warehouse
    --        Bob's Small Warehouse (key access)
    -------------------------------------------------------------

    local groupedEntrances = {}

    local function addWarehouseToEntrance(
        warehouseDbId,
        record,
        isMine
    )
        local coords =
            getWarehouseLocation(
                record.warehouseName,
                record.locationIndex
            )

        if not coords then
            return
        end

        local definition =
            getWarehouseDefinition(
                record.warehouseName
            )

        if not definition then
            return
        end

        local entranceKey =
            tostring(definition.locationSize)
            .. "_"
            .. tostring(record.locationIndex)

        if not groupedEntrances[entranceKey] then
            groupedEntrances[entranceKey] = {
                coords = coords,
                options = {},
            }
        end

        table.insert(
            groupedEntrances[
                entranceKey
            ].options,
            {
                warehouseId = warehouseDbId,
                label =
                    getWarehouseDisplayName(
                        warehouseDbId,
                        record,
                        isMine
                    ),
            }
        )
    end

    for warehouseDbId, record in pairs(
        TrapperData.warehousesOwned or {}
    ) do
        addWarehouseToEntrance(
            warehouseDbId,
            record,
            true
        )
    end

    for warehouseDbId, record in pairs(
        TrapperData.warehouseKeys or {}
    ) do
        addWarehouseToEntrance(
            warehouseDbId,
            record,
            false
        )
    end

    for entranceKey, entry in pairs(
        groupedEntrances
    ) do
        createWarehouseEntrance(
            entranceKey,
            entry.coords,
            entry.options
        )
    end
end

---------------------------------------------------------------------
-- 10. BUILD WAREHOUSE DATA FOR THE NUI
---------------------------------------------------------------------

local function buildWarehouseUiData()
    local warehouseIds = {}

    for warehouseId in pairs(
        TrapperConfig.warehouses or {}
    ) do
        table.insert(
            warehouseIds,
            warehouseId
        )
    end

    -------------------------------------------------------------
    -- Cheapest / lowest-level warehouses first.
    -------------------------------------------------------------

    table.sort(
        warehouseIds,
        function(a, b)
            local warehouseA =
                TrapperConfig.warehouses[a]

            local warehouseB =
                TrapperConfig.warehouses[b]

            local levelA =
                warehouseA.minLevel or 1

            local levelB =
                warehouseB.minLevel or 1

            return levelA < levelB
        end
    )

    local warehouseList = {}

    for _, warehouseId in ipairs(
        warehouseIds
    ) do
        local definition =
            TrapperConfig.warehouses[
                warehouseId
            ]

        local owned = false
        local ownedDatabaseId = nil

        for dbId, record in pairs(
            TrapperData.warehousesOwned
            or {}
        ) do
            if record.warehouseName
                == warehouseId
            then
                owned = true
                ownedDatabaseId = dbId
                break
            end
        end

        table.insert(
            warehouseList,
            {
                id = warehouseId,
                warehouseDbId =
                    ownedDatabaseId,

                name =
                    definition.name
                    or warehouseId,

                minLevel =
                    definition.minLevel
                    or 1,

                price =
                    definition.price
                    or 0,

                image =
                    definition.image
                    or warehouseId,

                owned = owned,
            }
        )
    end

    -------------------------------------------------------------
    -- Warehouses the player can enter using somebody else's key.
    -------------------------------------------------------------

    local keyedWarehouses = {}

    for databaseId, record in pairs(
        TrapperData.warehouseKeys
        or {}
    ) do
        local definition =
            getWarehouseDefinition(
                record.warehouseName
            )

        table.insert(
            keyedWarehouses,
            {
                warehouseDbId =
                    databaseId,

                warehouseName =
                    record.warehouseName,

                name =
                    definition
                    and definition.name
                    or record.warehouseName,

                ownerId =
                    record.ownerId,

                ownerName =
                    record.ownerName
                    or (
                        "PermID:"
                        .. tostring(
                            record.ownerId
                        )
                    ),
            }
        )
    end

    return {
        warehouses = warehouseList,
        keyedWarehouses =
            keyedWarehouses,
    }
end

---------------------------------------------------------------------
-- 11. SERVER UPDATES THE PLAYER'S TRAPPER DATA
---------------------------------------------------------------------

RegisterNetEvent(
    EVENTS.UPDATE_TRAPPER_DATA
)

AddEventHandler(
    EVENTS.UPDATE_TRAPPER_DATA,
    function(newData)
        if newData then
            TrapperData = newData
        end

        TrapperData.warehousesOwned =
            TrapperData.warehousesOwned
            or {}

        TrapperData.warehouseKeys =
            TrapperData.warehouseKeys
            or {}

        TrapperData.keyInvitesPending =
            TrapperData.keyInvitesPending
            or {}

        rebuildWarehouseEntrances()

        sendUiMessage(
            "TRAPPER_DATA_UPDATED",
            {
                keyInvitesPending =
                    TrapperData.keyInvitesPending,
            }
        )
    end
)

---------------------------------------------------------------------
-- 12. WAREHOUSE SELLER
---------------------------------------------------------------------

local function createWarehouseSeller()
    if not TrapperConfig.purchaseWarehouse then
        return
    end

    local sellerCoords =
        TrapperConfig.purchaseWarehouse

    local areaName =
        "warehouse_seller_"
        .. tostring(
            TrapperConfig.jobName
        )

    local function onEnter()
        atWarehouseSeller = true
    end

    local function onExit()
        atWarehouseSeller = false
    end

    local function onTick()
        if CMG.isPurge()
            or CMG.isPlayerInPrison()
        then
            return
        end

        ---------------------------------------------------------
        -- E = open warehouse seller.
        ---------------------------------------------------------

        if IsControlJustPressed(1, 38) then
            if CMG.getClientJob()
                ~= TrapperConfig.jobName
            then
                notify(
                    "~r~You must be on the Trapper job to use the warehouse seller."
                )

                return
            end

            CMG.openJobTerminal(true)

            SetTimeout(
                50,
                function()
                    CMG.uiSendMessage({
                        type =
                            "TRAPPER_SET_TAB",

                        info = {
                            tabId =
                                "warehouses",
                        },
                    })
                end
            )
        end

        CMG.DrawText3D(
            sellerCoords,
            "Press [E] to open warehouse seller",
            0.3
        )
    end

    CMG.createArea(
        areaName,
        sellerCoords,
        1.5,
        6,
        onEnter,
        onExit,
        onTick,
        {}
    )

    tCMG.addPropMarker(
        "bzzz_marker_home_red_anim",
        sellerCoords.x,
        sellerCoords.y,
        sellerCoords.z,
        10.0
    )

    tCMG.addBlip(
        sellerCoords.x,
        sellerCoords.y,
        sellerCoords.z,
        474,
        TrapperConfig.blipColour,
        TrapperConfig.jobName,
        0.8,
        false
    )

    if TrapperConfig.paletoSupermarket then
        local supermarket =
            TrapperConfig.paletoSupermarket

        tCMG.addBlip(
            supermarket.x,
            supermarket.y,
            supermarket.z,
            52,
            27,
            "Paleto Supermarket",
            0.8,
            false
        )
    end
end

---------------------------------------------------------------------
-- 13. WAREHOUSE-PURCHASED EVENT
---------------------------------------------------------------------

RegisterNetEvent(
    EVENTS.WAREHOUSE_PURCHASED
)

AddEventHandler(
    EVENTS.WAREHOUSE_PURCHASED,
    function(
        warehouseDbId,
        warehouseName,
        locationIndex
    )
        TrapperData.warehousesOwned[
            warehouseDbId
        ] = {
            keys = {},
            ownerId =
                CMG.getClientUserId(),

            warehouseName =
                warehouseName,

            locationIndex =
                locationIndex,
        }

        rebuildWarehouseEntrances()

        local coords =
            getWarehouseLocation(
                warehouseName,
                locationIndex
            )

        if coords then
            CMG.setNextStepLocationMarker(
                coords
            )
        end

        CMG.addJobTutorialProgress(
            "buy_drug_den",
            1
        )

        sendUiMessage(
            "TRAPPER_WAREHOUSES",
            buildWarehouseUiData()
        )
    end
)

---------------------------------------------------------------------
-- 14. NUI CALLBACK: GET WAREHOUSES
---------------------------------------------------------------------

CMG.uiRegisterCallback(
    "getTrapperWarehouses",
    function()
        return buildWarehouseUiData()
    end
)

---------------------------------------------------------------------
-- 15. NUI CALLBACK: NPC WEED PRICES
---------------------------------------------------------------------

local function buildSellableItemPriceList()
    local prices = {}

    for itemId, itemInfo in pairs(
        TrapperConfig.sellableItems
        or {}
    ) do
        local row = {
            id = itemId,
        }

        if type(itemInfo) == "table" then
            for key, value in pairs(
                itemInfo
            ) do
                row[key] = value
            end
        else
            row.price = itemInfo
        end

        ---------------------------------------------------------
        -- Weed bags include purity in their ID:
        --
        --     weed_bag_72
        --
        -- This allows the UI to display 72 as the purity value.
        ---------------------------------------------------------

        local purity =
            tostring(itemId):match(
                "^weed_bag_(%d+)$"
            )

        if purity then
            row.purity =
                tonumber(purity)
        end

        table.insert(prices, row)
    end

    return prices
end

CMG.uiRegisterCallback(
    "getTrapperWeedNpcPrices",
    function()
        return buildSellableItemPriceList()
    end
)

---------------------------------------------------------------------
-- 16. NUI CALLBACK: BUY WAREHOUSE
---------------------------------------------------------------------

CMG.uiRegisterCallback(
    "buyDrugDenWarehouse",
    function(data)
        if not atWarehouseSeller then
            sendUiMessage(
                "TRAPPER_ERROR",
                {
                    message =
                        "You must be at the warehouse seller to purchase a warehouse.",
                }
            )

            return
        end

        local warehouseId =
            data and data.id

        local locationIndex =
            data and data.locationIndex

        if not warehouseId
            or not locationIndex
        then
            return
        end

        TriggerServerEvent(
            EVENTS.PURCHASE_WAREHOUSE,
            warehouseId,
            locationIndex
        )
    end
)

---------------------------------------------------------------------
-- 17. NUI CALLBACK: AVAILABLE WAREHOUSE LOCATIONS
---------------------------------------------------------------------

CMG.uiRegisterCallback(
    "getTrapperWarehouseLocations",
    function(data)
        if not atWarehouseSeller then
            return {
                locations = {},
                error =
                    "You must be at the warehouse seller to purchase a warehouse.",
            }
        end

        local warehouseId =
            data and data.id

        local warehouse =
            getWarehouseDefinition(
                warehouseId
            )

        if not warehouse then
            return {
                locations = {},
            }
        end

        local locations =
            TrapperConfig.warehouseLocations
            and TrapperConfig.warehouseLocations[
                warehouse.locationSize
            ]
            or {}

        return {
            locations = locations,
        }
    end
)

---------------------------------------------------------------------
-- 18. WAREHOUSE PREVIEW
---------------------------------------------------------------------

local function previewWarehouse(
    warehouseId,
    locationIndex
)
    local warehouse =
        getWarehouseDefinition(
            warehouseId
        )

    if not warehouse then
        return
    end

    local originalCoords =
        CMG.getPlayerCoords()

    local playerPed =
        CMG.getPlayerPed()

    local originalHeading =
        GetEntityHeading(playerPed)

    -------------------------------------------------------------
    -- The source creates the preview shell well below the map.
    -- This keeps it separate from the real world.
    -------------------------------------------------------------

    -- Beginner: Request/load a GTA model before spawning or applying it.
    CMG.loadModel(warehouseId)

    local shellCoords =
        vector3(
            originalCoords.x,
            originalCoords.y,
            originalCoords.z - 100.0
        )

    local shell =
        CreateObjectNoOffset(
            GetHashKey(warehouseId),
            shellCoords.x,
            shellCoords.y,
            shellCoords.z,
            false,
            false,
            false
        )

    FreezeEntityPosition(
        shell,
        true
    )

    local doorOffset =
        warehouse.doorOffset
        or vector3(
            0.0,
            0.0,
            0.0
        )

    SetEntityCoords(
        playerPed,
        shellCoords.x
            + doorOffset.x,
        shellCoords.y
            + doorOffset.y,
        shellCoords.z
            + doorOffset.z
            + 1.0,
        false,
        false,
        false,
        false
    )

    -------------------------------------------------------------
    -- E exits preview.
    -------------------------------------------------------------

    while DoesEntityExist(shell) do
        drawNativeNotification(
            "Press ~INPUT_CONTEXT~ to exit warehouse preview"
        )

        if IsControlJustPressed(
            0,
            38
        ) then
            break
        end

        Wait(0)
    end

    SetEntityCoords(
        playerPed,
        originalCoords.x,
        originalCoords.y,
        originalCoords.z,
        false,
        false,
        false,
        false
    )

    SetEntityHeading(
        playerPed,
        originalHeading
    )

    -- Beginner: Delete a GTA entity.
    DeleteEntity(shell)

    SetModelAsNoLongerNeeded(
        GetHashKey(warehouseId)
    )
end

CMG.uiRegisterCallback(
    "previewDrugDenWarehouse",
    function(data)
        if not atWarehouseSeller then
            return
        end

        local warehouseId =
            data and data.id

        if type(warehouseId)
            ~= "string"
        then
            return
        end

        -- Original client fires this local event before previewing.
        -- Beginner: Trigger another client-side event in this resource/framework. Event/command: "b4fcca60d5".
        TriggerEvent("b4fcca60d5")

        -- Beginner: Start a separate FiveM thread so this code can run independently.
        Citizen.CreateThread(function()
            Wait(400)

            previewWarehouse(
                warehouseId,
                data and data.locationIndex
            )
        end)
    end
)

---------------------------------------------------------------------
-- 19. WAREHOUSE KEYS / LEADERBOARD NUI CALLBACKS
---------------------------------------------------------------------

CMG.uiRegisterCallback(
    "getTrapperKeyHolders",
    function(data)
        local warehouseId =
            data and data.warehouseId

        if warehouseId then
            TriggerServerEvent(
                EVENTS.REQUEST_KEY_HOLDERS,
                toNumberIfPossible(
                    warehouseId
                )
            )
        end
    end
)

CMG.uiRegisterCallback(
    "getTrapperLeaderboard",
    function()
        TriggerServerEvent(
            EVENTS.REQUEST_LEADERBOARD
        )
    end
)

CMG.uiRegisterCallback(
    "trapperGiveKey",
    function(data)
        if not data then
            return
        end

        if data.warehouseId
            and data.targetUserId
        then
            TriggerServerEvent(
                EVENTS.GIVE_WAREHOUSE_KEY,
                toNumberIfPossible(
                    data.warehouseId
                ),
                toNumberIfPossible(
                    data.targetUserId
                )
            )
        end
    end
)

CMG.uiRegisterCallback(
    "trapperRevokeKey",
    function(data)
        if not data then
            return
        end

        if data.warehouseId
            and data.targetUserId
        then
            TriggerServerEvent(
                EVENTS.REVOKE_WAREHOUSE_KEY,
                toNumberIfPossible(
                    data.warehouseId
                ),
                toNumberIfPossible(
                    data.targetUserId
                )
            )
        end
    end
)

CMG.uiRegisterCallback(
    "getTrapperKeyInvites",
    function()
        return {
            keyInvitesPending =
                TrapperData.keyInvitesPending
                or {},

            keyInviteAcceptFee =
                TrapperConfig.keyInviteAcceptFee
                or 0,
        }
    end
)

CMG.uiRegisterCallback(
    "trapperAcceptKeyInvite",
    function(data)
        local warehouseId =
            data and data.warehouseId

        if warehouseId then
            TriggerServerEvent(
                EVENTS.ACCEPT_KEY_INVITE,
                toNumberIfPossible(
                    warehouseId
                )
            )
        end
    end
)

CMG.uiRegisterCallback(
    "trapperDeclineKeyInvite",
    function(data)
        local warehouseId =
            data and data.warehouseId

        if warehouseId then
            TriggerServerEvent(
                EVENTS.DECLINE_KEY_INVITE,
                toNumberIfPossible(
                    warehouseId
                )
            )
        end
    end
)

CMG.uiRegisterCallback(
    "trapperCancelKeyInvite",
    function(data)
        local warehouseId =
            data and data.warehouseId

        if warehouseId then
            TriggerServerEvent(
                EVENTS.CANCEL_KEY_INVITE,
                toNumberIfPossible(
                    warehouseId
                )
            )
        end
    end
)

CMG.uiRegisterCallback(
    "trapperSearchPlayers",
    function(data)
        local query =
            data and data.query

        if type(query) == "string" then
            TriggerServerEvent(
                EVENTS.SEARCH_PLAYERS,
                query
            )
        end
    end
)

---------------------------------------------------------------------
-- 20. WAREHOUSE PICKER CALLBACKS
---------------------------------------------------------------------

CMG.uiRegisterCallback(
    "selectTrapperWarehouse",
    function(data)
        local warehouseId =
            data and data.warehouseId

        if warehouseId then
            requestEnterWarehouse(
                toNumberIfPossible(
                    warehouseId
                )
            )
        end

        closeWarehousePicker()
    end
)

CMG.uiRegisterCallback(
    "trapperWarehousePickerCancel",
    function()
        closeWarehousePicker()
    end
)

---------------------------------------------------------------------
-- 21. SERVER -> UI RESULT EVENTS
---------------------------------------------------------------------

-- Beginner: Register a network event handler that the server/other clients can trigger.
RegisterNetEvent(EVENTS.KEY_HOLDERS_RESULT)

AddEventHandler(
    EVENTS.KEY_HOLDERS_RESULT,
    function(warehouseId, holders)
        sendUiMessage(
            "TRAPPER_KEY_HOLDERS",
            {
                warehouseId =
                    warehouseId,

                holders =
                    holders or {},
            }
        )
    end
)

-- Beginner: Register a network event handler that the server/other clients can trigger.
RegisterNetEvent(EVENTS.LEADERBOARD_RESULT)

AddEventHandler(
    EVENTS.LEADERBOARD_RESULT,
    function(runner, cook)
        sendUiMessage(
            "TRAPPER_LEADERBOARD",
            {
                runner = runner,
                cook = cook,
            }
        )
    end
)

-- Beginner: Register a network event handler that the server/other clients can trigger.
RegisterNetEvent(EVENTS.LEVELS_RESULT)

AddEventHandler(
    EVENTS.LEVELS_RESULT,
    function(
        cookLevel,
        cookXp,
        cookXpMax,
        runnerLevel,
        runnerXp,
        runnerXpMax
    )
        sendUiMessage(
            "TRAPPER_LEVELS",
            {
                cookLevel =
                    cookLevel,

                cookXp =
                    cookXp,

                cookXpMax =
                    cookXpMax,

                runnerLevel =
                    runnerLevel,

                runnerXp =
                    runnerXp,

                runnerXpMax =
                    runnerXpMax,
            }
        )
    end
)

RegisterNetEvent(
    EVENTS.PLAYER_SEARCH_RESULT
)

AddEventHandler(
    EVENTS.PLAYER_SEARCH_RESULT,
    function(players)
        sendUiMessage(
            "TRAPPER_SEARCH_RESULT",
            {
                players = players or {},
            }
        )
    end
)

---------------------------------------------------------------------
-- 22. TRAPNET ORDER EVENTS
---------------------------------------------------------------------

AddEventHandler(
    "CMG:trapNetOpened",
    function()
        CMG.addJobTutorialProgress(
            "download_trapnet_app",
            1
        )
    end
)

AddEventHandler(
    "CMG:trapNetOrder",
    function(order)
        if not WarehouseRuntime.lastUsedWarehouseId then
            notify(
                "~r~You need to be inside a warehouse to place this order."
            )

            return
        end

        order = order or {}

        order.warehouseId =
            WarehouseRuntime.lastUsedWarehouseId

        TriggerServerEvent(
            EVENTS.PLACE_TRAPNET_ORDER,
            order
        )
    end
)

AddEventHandler(
    "CMG:trapNetOrderLegalSupply",
    function(order)
        if not WarehouseRuntime.lastUsedWarehouseId then
            notify(
                "~r~You need to be inside a warehouse to place this order."
            )

            return
        end

        order = order or {}

        order.warehouseId =
            WarehouseRuntime.lastUsedWarehouseId

        TriggerServerEvent(
            EVENTS.PLACE_LEGAL_SUPPLY_ORDER,
            order
        )
    end
)

---------------------------------------------------------------------
-- 23. ORDER CONFIRMATION
---------------------------------------------------------------------

-- Beginner: Register a network event handler that the server/other clients can trigger.
RegisterNetEvent(EVENTS.ORDER_CONFIRMED)

AddEventHandler(
    EVENTS.ORDER_CONFIRMED,
    function(order)
        if not order
            or not order.items
        then
            return
        end

        for itemId, amount in pairs(
            order.items
        ) do
            CMG.addJobTutorialProgress(
                "order_"
                    .. tostring(itemId),

                tonumber(amount)
                    or 1
            )
        end
    end
)

---------------------------------------------------------------------
-- 24. DELIVERY TIMER
---------------------------------------------------------------------

-- Beginner: Register a network event handler that the server/other clients can trigger.
RegisterNetEvent(EVENTS.DELIVERY_TIMER)

AddEventHandler(
    EVENTS.DELIVERY_TIMER,
    function(warehouseId, durationMs)
        CMG.removeHudTimer(
            "trapnetDelivery"
        )

        CMG.addHudDurationTimer(
            "trapnetDelivery",
            "DELIVERY",
            (durationMs or 0) / 1000,
            nil
        )

        -- The actual arrival is triggered by another server event when
        -- the timer finishes.
    end
)

---------------------------------------------------------------------
-- 25. TRAPNET DELIVERY
---------------------------------------------------------------------

local DELIVERY_PED_MODEL = -459818001
local DELIVERY_BOX_MODEL = 1302435108

local function createTrapNetDelivery(
    warehouseId,
    deliveryPedModel
)
    -------------------------------------------------------------
    -- Only animate the delivery if the player is currently in the
    -- corresponding warehouse.
    -------------------------------------------------------------

    if WarehouseRuntime.lastUsedWarehouseId
        ~= warehouseId
    then
        return
    end

    if not WarehouseRuntime.shellObject
        or not DoesEntityExist(
            WarehouseRuntime.shellObject
        )
    then
        return
    end

    deliveryPedModel =
        deliveryPedModel
        or DELIVERY_PED_MODEL

    -- Beginner: Request/load a GTA model before spawning or applying it.
    CMG.loadModel(deliveryPedModel)
    CMG.loadModel(DELIVERY_BOX_MODEL)

    local shellCoords =
        GetEntityCoords(
            WarehouseRuntime.shellObject
        )

    local spawnCoords =
        shellCoords
        + vector3(
            0.0,
            0.0,
            1.0
        )

    CMG.requestEntitySpawn(
        "trapper_delivery_ped",
        spawnCoords
    )

    local deliveryPed =
        CreatePed(
            4,
            deliveryPedModel,
            spawnCoords.x,
            spawnCoords.y,
            spawnCoords.z,
            0.0,
            true,
            true
        )

    CMG.requestEntitySpawn(
        "trapper_delivery_box",
        spawnCoords
    )

    local box =
        CreateObject(
            DELIVERY_BOX_MODEL,
            spawnCoords.x,
            spawnCoords.y,
            spawnCoords.z,
            true,
            true,
            false
        )

    -------------------------------------------------------------
    -- Make the NPC carry the box.
    -------------------------------------------------------------

    CMG.loadAnimDict(
        "anim@heists@box_carry@"
    )

    TaskPlayAnim(
        deliveryPed,
        "anim@heists@box_carry@",
        "idle",
        8.0,
        -8.0,
        -1,
        49,
        0.0,
        false,
        false,
        false
    )

    AttachEntityToEntity(
        box,
        deliveryPed,
        GetPedBoneIndex(
            deliveryPed,
            28422
        ),
        0.0,
        -0.15,
        -0.2,
        0.0,
        0.0,
        0.0,
        true,
        true,
        false,
        true,
        1,
        true
    )

    TriggerServerEvent(
        EVENTS.REGISTER_DELIVERY_PED,
        warehouseId,
        NetworkGetNetworkIdFromEntity(
            deliveryPed
        )
    )

    -------------------------------------------------------------
    -- Walk into the warehouse.
    -------------------------------------------------------------

    TaskGoStraightToCoord(
        deliveryPed,
        spawnCoords.x,
        spawnCoords.y,
        spawnCoords.z,
        1.0,
        10000,
        0.0,
        0.5
    )

    Wait(1500)

    -------------------------------------------------------------
    -- Put the box down.
    -------------------------------------------------------------

    DetachEntity(
        box,
        true,
        true
    )

    PlaceObjectOnGroundProperly(
        box
    )

    FreezeEntityPosition(
        box,
        true
    )

    WarehouseRuntime.deliveryBox =
        box

    local boxCoords =
        -- Beginner: Read an entity's world coordinates.
        GetEntityCoords(box)

    TriggerServerEvent(
        EVENTS.DELIVERY_BOX_DROPPED,
        warehouseId,
        boxCoords.x,
        boxCoords.y,
        boxCoords.z
    )

    notify(
        "~g~Your delivery has arrived"
    )

    -------------------------------------------------------------
    -- NPC can leave after dropping the delivery.
    -------------------------------------------------------------

    TaskWanderStandard(
        deliveryPed,
        10.0,
        10
    )

    SetTimeout(
        10000,
        function()
            if DoesEntityExist(
                deliveryPed
            ) then
                DeleteEntity(
                    deliveryPed
                )
            end
        end
    )
end

-- Beginner: Register a network event handler that the server/other clients can trigger.
RegisterNetEvent(EVENTS.START_DELIVERY)

AddEventHandler(
    EVENTS.START_DELIVERY,
    function(warehouseId)
        createTrapNetDelivery(
            warehouseId
        )
    end
)

RegisterNetEvent(
    EVENTS.START_SPECIAL_DELIVERY
)

AddEventHandler(
    EVENTS.START_SPECIAL_DELIVERY,
    function(warehouseId)
        createTrapNetDelivery(
            warehouseId,
            416176080
        )
    end
)

---------------------------------------------------------------------
-- 26. DELIVERY PICKUP AREA
---------------------------------------------------------------------

local DELIVERY_PICKUP_AREA =
    "trapnet_delivery_box_pickup"

RegisterNetEvent(
    EVENTS.CREATE_DELIVERY_PICKUP
)

AddEventHandler(
    EVENTS.CREATE_DELIVERY_PICKUP,
    function(coords)
        if not coords then
            return
        end

        CMG.createArea(
            DELIVERY_PICKUP_AREA,
            coords,
            1.5,
            6,
            function()
            end,
            function()
            end,
            function()
                CMG.DrawText3D(
                    coords,
                    "Press [E] to pick up TrapNet delivery",
                    0.3
                )

                if IsControlJustPressed(
                    1,
                    38
                ) then
                    CMG.addJobTutorialProgress(
                        "pickup_supplies",
                        1
                    )

                    TriggerServerEvent(
                        EVENTS.PICKUP_DELIVERY
                    )
                end
            end,
            {}
        )
    end
)

RegisterNetEvent(
    EVENTS.REMOVE_DELIVERY
)

AddEventHandler(
    EVENTS.REMOVE_DELIVERY,
    function(warehouseId)
        if warehouseId
            ~= WarehouseRuntime.lastUsedWarehouseId
        then
            return
        end

        tCMG.removeArea(
            DELIVERY_PICKUP_AREA
        )

        if WarehouseRuntime.deliveryBox
            and DoesEntityExist(
                WarehouseRuntime.deliveryBox
            )
        then
            DeleteEntity(
                WarehouseRuntime.deliveryBox
            )
        end

        WarehouseRuntime.deliveryBox =
            nil
    end
)

---------------------------------------------------------------------
-- 27. CONFIG REQUEST FOR TRAPNET
---------------------------------------------------------------------

AddEventHandler(
    "CMG:requestTrapperConfig",
    function()
        TriggerEvent(
            "CMG:trapNetGotConfig",
            TrapperConfig
        )
    end
)

---------------------------------------------------------------------
-- 28. ITEM RECEIVED
---------------------------------------------------------------------

-- Beginner: Register a network event handler that the server/other clients can trigger.
RegisterNetEvent(EVENTS.ITEM_RECEIVED)

AddEventHandler(
    EVENTS.ITEM_RECEIVED,
    function(itemId, amount)
        ---------------------------------------------------------
        -- Some tutorial steps lead the user back to their warehouse after
        -- receiving shears or empty weed bags.
        ---------------------------------------------------------

        if itemId == "shears"
            or itemId == "weed_bag_empty"
        then
            -- The exact tutorial marker selection is handled elsewhere in
            -- the original resource.
        end

        CMG.addJobTutorialProgress(
            "order_" .. tostring(itemId),
            tonumber(amount) or 1
        )
    end
)

---------------------------------------------------------------------
-- 29. TRAPNET BUYER CONTACTS
---------------------------------------------------------------------

local trapNetContacts = {}

local buyerBlips = {}

local function clearBuyerBlips()
    for _, blip in pairs(
        buyerBlips
    ) do
        tCMG.removeBlip(blip)
    end

    buyerBlips = {}
end

local function validBuyerEntity(
    entity,
    contact
)
    if not entity
        or entity == 0
        or not DoesEntityExist(entity)
    then
        return false
    end

    local state =
        Entity(entity).state

    if state then
        if state.type
            == "SETUP_SECURITY"
            or state.type
                == "SETUP_STAFF"
            or state.type
                == "SETUP_PILOT"
        then
            return false
        end
    end

    if contact
        and contact.model
        and GetEntityModel(entity)
            ~= contact.model
    then
        return false
    end

    if contact and contact.coords then
        if #(
            -- Beginner: Read an entity's world coordinates.
            GetEntityCoords(entity)
            - contact.coords
        ) > 12.0 then
            return false
        end
    end

    return true
end

local function refreshBuyerBlips()
    clearBuyerBlips()

    if not trapperJobActive then
        return
    end

    for _, contact in pairs(
        trapNetContacts
    ) do
        local coords =
            contact.coords
            or contact.location

        if coords then
            local blip =
                tCMG.addBlip(
                    coords.x,
                    coords.y,
                    coords.z,
                    contact.blip
                        or 280,
                    contact.blipColour
                        or 2,
                    contact.name
                        or "TrapNet Buyer",
                    0.7,
                    false
                )

            table.insert(
                buyerBlips,
                blip
            )
        end
    end
end

AddEventHandler(
    "CMG:trapNetContacts",
    function(contacts)
        trapNetContacts =
            contacts or {}

        refreshBuyerBlips()
    end
)

---------------------------------------------------------------------
-- 30. TRAPNET NPC SPEECH TEST COMMAND
---------------------------------------------------------------------

RegisterCommand(
    "trapnetspeech",
    function(_, args)
        local speechName =
            args and args[1]

        if not speechName then
            return
        end

        speechName =
            string.upper(
                speechName
            )

        local playerCoords =
            CMG.getPlayerCoords()

        local closestPed = nil
        local closestDistance = 10.0

        for _, ped in pairs(
            GetGamePool("CPed")
        ) do
            if ped ~= PlayerPedId() then
                local distance =
                    #(
                        playerCoords
                        - GetEntityCoords(ped)
                    )

                if distance
                    < closestDistance
                    and validBuyerEntity(
                        ped
                    )
                then
                    closestPed = ped
                    closestDistance =
                        distance
                end
            end
        end

        if not closestPed then
            notify(
                "~r~No nearby TrapNet buyer."
            )

            return
        end

        PlayPedAmbientSpeechNative(
            closestPed,
            speechName,
            "SPEECH_PARAMS_FORCE"
        )

        notify(
            "~g~Played speech: ~w~"
                .. speechName
        )
    end,
    false
)

---------------------------------------------------------------------
-- 31. PLAYER -> BUYER HANDOFF ANIMATION
---------------------------------------------------------------------

RegisterNetEvent(
    EVENTS.BUYER_HANDOFF_PLAYER
)

AddEventHandler(
    EVENTS.BUYER_HANDOFF_PLAYER,
    function(
        buyerNetworkId,
        itemId
    )
        if not NetworkDoesNetworkIdExist(
            buyerNetworkId
        ) then
            return
        end

        local buyer =
            NetworkGetEntityFromNetworkId(
                buyerNetworkId
            )

        if buyer == 0 then
            return
        end

        local playerPed =
            CMG.getPlayerPed()

        local item =
            TrapperConfig.items
            and TrapperConfig.items[
                itemId
            ]

        local model =
            item
            and item.model

        if not model then
            return
        end

        -- Beginner: Request/load a GTA model before spawning or applying it.
        CMG.loadModel(model)
        -- Beginner: Load a GTA animation dictionary before using it.
        CMG.loadAnimDict("mp_common")

        tCMG.setCanAnim(false)

        local playerCoords =
            GetEntityCoords(
                playerPed
            )

        local object =
            CreateObject(
                model,
                playerCoords.x,
                playerCoords.y,
                playerCoords.z,
                false,
                false,
                false
            )

        AttachEntityToEntity(
            object,
            playerPed,
            GetPedBoneIndex(
                playerPed,
                57005
            ),
            0.12,
            0.02,
            -0.02,
            90.0,
            0.0,
            0.0,
            true,
            true,
            false,
            true,
            1,
            true
        )

        TaskPlayAnim(
            playerPed,
            "mp_common",
            "givetake1_a",
            8.0,
            -8.0,
            1500,
            0,
            0.0,
            false,
            false,
            false
        )

        Wait(1500)

        if DoesEntityExist(object) then
            -- Beginner: Delete a GTA entity.
            DeleteEntity(object)
        end

        tCMG.setCanAnim(true)

        RemoveAnimDict("mp_common")
        SetModelAsNoLongerNeeded(model)

        CMG.addJobTutorialProgress(
            "make_the_deal",
            1
        )
    end
)

---------------------------------------------------------------------
-- 32. BUYER REFUSAL
---------------------------------------------------------------------

-- Beginner: Register a network event handler that the server/other clients can trigger.
RegisterNetEvent(EVENTS.BUYER_REFUSED)

AddEventHandler(
    EVENTS.BUYER_REFUSED,
    function(buyerNetworkId)
        if not NetworkDoesNetworkIdExist(
            buyerNetworkId
        ) then
            return
        end

        local buyer =
            NetworkGetEntityFromNetworkId(
                buyerNetworkId
            )

        if buyer ~= 0 then
            PlayPedAmbientSpeechNative(
                buyer,
                "GENERIC_NO",
                "SPEECH_PARAMS_FORCE"
            )
        end
    end
)

---------------------------------------------------------------------
-- 33. GET CONFIGURED TRAPPER NPC
---------------------------------------------------------------------

function CMG.getTrapperNPC(npcId)
    return TrapperConfig.NPCs
        and TrapperConfig.NPCs[npcId]
end

exports(
    "getTrapperNPC",
    function(npcId)
        return CMG.getTrapperNPC(
            npcId
        )
    end
)

---------------------------------------------------------------------
-- 34. PLACED WAREHOUSE OBJECT STATE
---------------------------------------------------------------------
--
-- Runtime entry example:
--
-- WarehouseRuntime.objects[123] = {
--     plantId = 123,
--     itemId = "weed_workbench",
--     itemInfo = {...},
--     object = entityHandle,
--     extraObjects = {...},
--     shelfSlots = {...},
-- }
---------------------------------------------------------------------

local function getPlacedObject(plantId)
    return WarehouseRuntime.objects[
        plantId
    ]
end

local function deleteExtraObjects(runtimeObject)
    for _, entity in pairs(
        runtimeObject.extraObjects
        or {}
    ) do
        if DoesEntityExist(entity) then
            -- Beginner: Delete a GTA entity.
            DeleteEntity(entity)
        end
    end

    runtimeObject.extraObjects = {}
end

local function deleteWarehouseRuntimeObject(
    plantId
)
    local runtimeObject =
        getPlacedObject(plantId)

    if not runtimeObject then
        return
    end

    if runtimeObject.areaName then
        tCMG.removeArea(
            runtimeObject.areaName
        )
    end

    deleteExtraObjects(
        runtimeObject
    )

    if runtimeObject.object
        and DoesEntityExist(
            runtimeObject.object
        )
    then
        DeleteEntity(
            runtimeObject.object
        )
    end

    WarehouseRuntime.objects[
        plantId
    ] = nil
end

---------------------------------------------------------------------
-- 35. CREATE A WAREHOUSE OBJECT
---------------------------------------------------------------------

RegisterNetEvent(
    EVENTS.CREATE_WAREHOUSE_OBJECT
)

AddEventHandler(
    EVENTS.CREATE_WAREHOUSE_OBJECT,
    function(
        plantId,
        itemId,
        itemInfo,
        coords,
        heading
    )
        local configItem =
            TrapperConfig.items
            and TrapperConfig.items[
                itemId
            ]

        if not configItem
            or not configItem.model
        then
            return
        end

        CMG.loadModel(
            configItem.model
        )

        local object =
            CreateObjectNoOffset(
                configItem.model,
                coords.x,
                coords.y,
                coords.z,
                false,
                false,
                false
            )

        SetEntityHeading(
            object,
            heading or 0.0
        )

        FreezeEntityPosition(
            object,
            true
        )

        local runtimeObject = {
            plantId = plantId,
            itemId = itemId,
            itemInfo = itemInfo or {},
            object = object,
            extraObjects = {},
            shelfSlots = {},
        }

        WarehouseRuntime.objects[
            plantId
        ] = runtimeObject

        SetModelAsNoLongerNeeded(
            configItem.model
        )
    end
)

---------------------------------------------------------------------
-- 36. REMOVE WAREHOUSE OBJECT
---------------------------------------------------------------------

RegisterNetEvent(
    EVENTS.REMOVE_WAREHOUSE_OBJECT
)

AddEventHandler(
    EVENTS.REMOVE_WAREHOUSE_OBJECT,
    function(plantId)
        deleteWarehouseRuntimeObject(
            plantId
        )
    end
)

---------------------------------------------------------------------
-- 37. USE A WAREHOUSE OBJECT
---------------------------------------------------------------------

local function interactWithWarehouseObject(
    runtimeObject,
    actionName
)
    if not runtimeObject then
        return
    end

    TriggerServerEvent(
        EVENTS.USE_WAREHOUSE_OBJECT,
        runtimeObject.itemId,
        actionName,
        runtimeObject.plantId
    )
end

---------------------------------------------------------------------
-- 38. SHELVES
---------------------------------------------------------------------

local function normaliseShelfSlots(slots)
    local result = {}

    local slotCount =
        TrapperConfig.shelfSlots
        or 0

    for index = 1, slotCount do
        result[index] =
            slots
            and slots[index]
            or nil
    end

    return result
end

-- Beginner: Register a network event handler that the server/other clients can trigger.
RegisterNetEvent(EVENTS.UPDATE_SHELF)

AddEventHandler(
    EVENTS.UPDATE_SHELF,
    function(
        plantId,
        shelfSlots
    )
        local runtimeObject =
            getPlacedObject(plantId)

        if not runtimeObject then
            return
        end

        runtimeObject.shelfSlots =
            normaliseShelfSlots(
                shelfSlots
            )

        -- The exact decorative shelf-prop offsets are retained in the
        -- cleaned reference.  This beginner rewrite keeps the data model
        -- clear without pretending those decompiled geometry offsets are
        -- meaningful business logic.
    end
)

---------------------------------------------------------------------
-- 39. PLANT STAGE UPDATE
---------------------------------------------------------------------

RegisterNetEvent(
    EVENTS.UPDATE_PLANT_STAGE
)

AddEventHandler(
    EVENTS.UPDATE_PLANT_STAGE,
    function(
        plantId,
        stage
    )
        local runtimeObject =
            getPlacedObject(
                plantId
            )

        if not runtimeObject then
            return
        end

        local stageInfo =
            TrapperConfig.plantStages
            and TrapperConfig.plantStages[
                stage
            ]

        if not stageInfo
            or not stageInfo.prop
        then
            return
        end

        local oldObject =
            runtimeObject.object

        if not oldObject
            or not DoesEntityExist(
                oldObject
            )
        then
            return
        end

        local coords =
            GetEntityCoords(
                oldObject
            )

        local heading =
            GetEntityHeading(
                oldObject
            )

        -- Beginner: Delete a GTA entity.
        DeleteEntity(oldObject)

        CMG.loadModel(
            stageInfo.prop
        )

        local newObject =
            CreateObjectNoOffset(
                stageInfo.prop,
                coords.x,
                coords.y,
                coords.z,
                false,
                false,
                false
            )

        SetEntityHeading(
            newObject,
            heading
        )

        FreezeEntityPosition(
            newObject,
            true
        )

        runtimeObject.object =
            newObject

        runtimeObject.stage =
            stage

        SetModelAsNoLongerNeeded(
            stageInfo.prop
        )
    end
)

---------------------------------------------------------------------
-- 40. PLANT STATUS / HYDRATION
---------------------------------------------------------------------

RegisterNetEvent(
    EVENTS.UPDATE_PLANT_STATUS
)

AddEventHandler(
    EVENTS.UPDATE_PLANT_STATUS,
    function(plantId, status)
        local runtimeObject =
            getPlacedObject(
                plantId
            )

        if not runtimeObject then
            return
        end

        status = status or {}

        runtimeObject.plantedAt =
            status.plantedAt

        runtimeObject.lastWatered =
            status.lastWatered

        runtimeObject.hydration =
            status.hydration
            or 0

        runtimeObject.growthPercent =
            status.growthPercent
            or 0

        runtimeObject.growthDurationMs =
            status.growthDurationMs
            or TrapperConfig.plantGrowthDurationMs
    end
)

---------------------------------------------------------------------
-- 41. WATER HOSE STATE
---------------------------------------------------------------------

local WaterHose = {
    active = false,

    targetPlantId = nil,

    prop = nil,
    rope = nil,

    animationDictionary =
        "anim@amb@business@weed@weed_inspecting_lo_med_hi@",

    animationName =
        "weed_spraybottle_crouch_spraying_02_inspector",
}

local function stopWaterHose()
    WaterHose.active = false
    WaterHose.targetPlantId = nil

    if WaterHose.rope then
        DeleteRope(
            WaterHose.rope
        )

        WaterHose.rope = nil
    end

    if WaterHose.prop
        and DoesEntityExist(
            WaterHose.prop
        )
    then
        DeleteEntity(
            WaterHose.prop
        )

        WaterHose.prop = nil
    end

    StopAnimTask(
        CMG.getPlayerPed(),
        WaterHose.animationDictionary,
        WaterHose.animationName,
        1.0
    )

    ClearPedTasks(
        CMG.getPlayerPed()
    )
end

local function startWaterHose(plantId)
    if WaterHose.active then
        stopWaterHose()
        return
    end

    -------------------------------------------------------------
    -- The exact unlock/skill object is config/server-dependent.
    -- Keep the same user-facing restriction.
    -------------------------------------------------------------

    if TrapperCore.skills
        and TrapperCore.skills.waterHose
        == false
    then
        notify(
            "~r~You need to unlock the Water Hose skill first."
        )

        return
    end

    WaterHose.active = true
    WaterHose.targetPlantId =
        plantId

    CMG.loadAnimDict(
        WaterHose.animationDictionary
    )

    TaskPlayAnim(
        CMG.getPlayerPed(),
        WaterHose.animationDictionary,
        WaterHose.animationName,
        8.0,
        -8.0,
        -1,
        49,
        0.0,
        false,
        false,
        false
    )
end

---------------------------------------------------------------------
-- 42. HOTBAR CHANGE
---------------------------------------------------------------------

function CMG.onTrapperHotbarSelect()
    -- Changing items should not leave old hose/placement state running.
    if WaterHose.active then
        stopWaterHose()
    end
end

---------------------------------------------------------------------
-- 43. FIRST-PERSON WEED WORKBENCH HELPERS
---------------------------------------------------------------------

local WORKBENCH_ITEM_ID =
    "weed_workbench"

local WORKBENCH_ANIM_DICT =
    "anim@amb@business@weed@weed_sorting_seated@"

local function findNearbyWorkbench(
    maximumDistance
)
    maximumDistance =
        maximumDistance
        or 6.0

    local playerCoords =
        CMG.getPlayerCoords()

    local closest = nil
    local closestDistance =
        maximumDistance

    for plantId, runtimeObject in pairs(
        WarehouseRuntime.objects
    ) do
        if runtimeObject.itemId
            == WORKBENCH_ITEM_ID
            and runtimeObject.object
            and DoesEntityExist(
                runtimeObject.object
            )
        then
            local distance =
                #(
                    playerCoords
                    - GetEntityCoords(
                        runtimeObject.object
                    )
                )

            if distance
                < closestDistance
            then
                closest =
                    runtimeObject

                closestDistance =
                    distance
            end
        end
    end

    return closest
end

local function resetWeedProcessingState()
    WeedProcessing.active = false
    WeedProcessing.phase = "idle"

    WeedProcessing.chair = nil
    WeedProcessing.plantId = nil
    WeedProcessing.warehouseId = nil

    WeedProcessing.unprocessedTray =
        nil

    WeedProcessing.processedTray =
        nil

    WeedProcessing.remainingPurities =
        {}

    WeedProcessing.slots = {}
    WeedProcessing.leaves = {}
    WeedProcessing.leavesFallen = {}

    WeedProcessing.activeBudEntity =
        nil

    WeedProcessing.processedEntities =
        {}

    WeedProcessing.shouldExit =
        false

    WeedProcessing.tableBudPurity =
        nil

    WeedProcessing.bagRemainingPurities =
        {}

    WeedProcessing.bagBudSlots =
        {}

    WeedProcessing.emptyBagsRemaining =
        0

    WeedProcessing.emptyBagEntities =
        {}

    WeedProcessing.pendingBagBudEntity =
        nil

    WeedProcessing.pendingBagBudPurity =
        nil

    WeedProcessing.pendingEmptyBagEntity =
        nil

    if WeedProcessing.camera
        and DoesCamExist(
            WeedProcessing.camera
        )
    then
        RenderScriptCams(
            false,
            true,
            500,
            true,
            false
        )

        DestroyCam(
            WeedProcessing.camera,
            false
        )
    end

    WeedProcessing.camera = nil

    RemoveAnimDict(
        WORKBENCH_ANIM_DICT
    )

    tCMG.setCanAnim(true)
end

local function beginWeedWorkbenchSession(
    mode,
    plantId
)
    if WeedProcessing.active then
        return
    end

    local workbench =
        findNearbyWorkbench(6.0)

    if not workbench then
        notify(
            "~r~No weed workbench nearby."
        )

        return
    end

    WeedProcessing.active = true
    WeedProcessing.sessionMode =
        mode

    WeedProcessing.plantId =
        plantId

    WeedProcessing.warehouseId =
        WarehouseRuntime.lastUsedWarehouseId

    WeedProcessing.phase = "busy"
    WeedProcessing.shouldExit =
        false

    tCMG.setCanAnim(false)

    -------------------------------------------------------------
    -- Real resource performs a server-side validation before creating
    -- all of the first-person props.
    -------------------------------------------------------------

    TriggerServerEvent(
        EVENTS.VALIDATE_WEED_PROCESSING,
        plantId,
        mode
    )

    -- Beginner: Start a separate FiveM thread so this code can run independently.
    Citizen.CreateThread(function()
        if mode == "trim" then
            drawNativeNotification(
                "Click ~g~a bud~s~ and then click on the ~g~leaves~s~ to remove them. ~INPUT_FRONTEND_RRIGHT~ to exit"
            )
        else
            drawNativeNotification(
                "Click ~g~a cleaned bud~s~ and then an ~g~empty bag~s~ to bag it. ~INPUT_FRONTEND_RRIGHT~ to exit"
            )
        end

        while WeedProcessing.active
            and not WeedProcessing.shouldExit
        do
            -- BACKSPACE / frontend back
            if IsControlJustPressed(
                0,
                177
            ) then
                WeedProcessing.shouldExit =
                    true
            end

            Wait(0)
        end

        resetWeedProcessingState()
    end)
end

---------------------------------------------------------------------
-- 44. PUBLIC WORKBENCH FUNCTIONS
---------------------------------------------------------------------

function CMG.processWeedBud(plantId)
    if not findNearbyWorkbench(6.0) then
        notify(
            "~r~No weed workbench nearby."
        )

        return
    end

    beginWeedWorkbenchSession(
        "trim",
        plantId
    )
end

function CMG.processWeedBag(plantId)
    if not findNearbyWorkbench(6.0) then
        notify(
            "~r~No weed workbench nearby."
        )

        return
    end

    beginWeedWorkbenchSession(
        "bag",
        plantId
    )
end

---------------------------------------------------------------------
-- 45. SERVER CANCELS / RELEASES PROCESSING
---------------------------------------------------------------------

RegisterNetEvent(
    EVENTS.CANCEL_WEED_PROCESSING
)

AddEventHandler(
    EVENTS.CANCEL_WEED_PROCESSING,
    function()
        if WeedProcessing.active then
            WeedProcessing.shouldExit =
                true
        else
            tCMG.setCanAnim(true)
        end
    end
)

---------------------------------------------------------------------
-- 46. TOGGLE WORKBENCH COLLISION
---------------------------------------------------------------------

RegisterNetEvent(
    EVENTS.SET_WORKBENCH_COLLISION
)

AddEventHandler(
    EVENTS.SET_WORKBENCH_COLLISION,
    function(
        plantId,
        collisionEnabled
    )
        local runtimeObject =
            getPlacedObject(
                plantId
            )

        if not runtimeObject
            or runtimeObject.itemId
                ~= WORKBENCH_ITEM_ID
            or not runtimeObject.object
        then
            return
        end

        SetEntityCollision(
            runtimeObject.object,
            collisionEnabled == true,
            collisionEnabled == true
        )
    end
)

---------------------------------------------------------------------
-- 47. WAREHOUSE SHELL CLEANUP
---------------------------------------------------------------------

local function cleanupCurrentWarehouse()
    -------------------------------------------------------------
    -- Stop first-person/hose systems first.
    -------------------------------------------------------------

    if WeedProcessing.active then
        WeedProcessing.shouldExit =
            true
    end

    if WaterHose.active then
        stopWaterHose()
    end

    -------------------------------------------------------------
    -- Remove warehouse interaction areas.
    -------------------------------------------------------------

    for _, areaName in pairs(
        WarehouseRuntime.areas
    ) do
        tCMG.removeArea(
            areaName
        )
    end

    WarehouseRuntime.areas = {}

    -------------------------------------------------------------
    -- Remove all placed object entities.
    -------------------------------------------------------------

    local objectIds = {}

    for plantId in pairs(
        WarehouseRuntime.objects
    ) do
        table.insert(
            objectIds,
            plantId
        )
    end

    for _, plantId in ipairs(
        objectIds
    ) do
        deleteWarehouseRuntimeObject(
            plantId
        )
    end

    -------------------------------------------------------------
    -- Remove warehouse shell.
    -------------------------------------------------------------

    if WarehouseRuntime.shellObject
        and DoesEntityExist(
            WarehouseRuntime.shellObject
        )
    then
        DeleteEntity(
            WarehouseRuntime.shellObject
        )
    end

    WarehouseRuntime.shellObject =
        nil

    WarehouseRuntime.warehouseShellAnchor =
        nil

    WarehouseRuntime.lastUsedWarehouseId =
        nil

    WarehouseRuntime.warehouseLoadInProgress =
        false

    tCMG.removeArea(
        WAREHOUSE_EXIT_AREA
    )
end

---------------------------------------------------------------------
-- 48. LOAD / ENTER WAREHOUSE
---------------------------------------------------------------------

-- Beginner: Register a network event handler that the server/other clients can trigger.
RegisterNetEvent(EVENTS.LOAD_WAREHOUSE)

AddEventHandler(
    EVENTS.LOAD_WAREHOUSE,
    function(
        warehouseDbId,
        warehouseName,
        locationIndex
    )
        if WarehouseRuntime.warehouseLoadInProgress then
            return
        end

        if WarehouseRuntime.lastUsedWarehouseId
            == warehouseDbId
            and WarehouseRuntime.shellObject
            and DoesEntityExist(
                WarehouseRuntime.shellObject
            )
        then
            return
        end

        WarehouseRuntime.warehouseLoadInProgress =
            true

        cleanupCurrentWarehouse()

        WarehouseRuntime.warehouseLoadInProgress =
            true

        local definition =
            getWarehouseDefinition(
                warehouseName
            )

        if not definition then
            WarehouseRuntime.warehouseLoadInProgress =
                false

            return
        end

        local exteriorCoords =
            getWarehouseLocation(
                warehouseName,
                locationIndex
            )

        if not exteriorCoords then
            WarehouseRuntime.warehouseLoadInProgress =
                false

            return
        end

        ---------------------------------------------------------
        -- Real source uses the warehouse/shell model configured for this
        -- warehouse type.  Prefer explicit shell/model, otherwise the ID.
        ---------------------------------------------------------

        local shellModel =
            definition.shell
            or definition.model
            or warehouseName

        -- Beginner: Request/load a GTA model before spawning or applying it.
        CMG.loadModel(shellModel)

        ---------------------------------------------------------
        -- Put interior shell below the normal world.
        ---------------------------------------------------------

        local shellAnchor =
            vector3(
                exteriorCoords.x,
                exteriorCoords.y,
                exteriorCoords.z - 100.0
            )

        local shell =
            CreateObjectNoOffset(
                GetHashKey(
                    tostring(shellModel)
                ),
                shellAnchor.x,
                shellAnchor.y,
                shellAnchor.z,
                false,
                false,
                false
            )

        FreezeEntityPosition(
            shell,
            true
        )

        WarehouseRuntime.shellObject =
            shell

        WarehouseRuntime.warehouseShellAnchor =
            shellAnchor

        WarehouseRuntime.lastUsedWarehouseId =
            warehouseDbId

        ---------------------------------------------------------
        -- Move player to configured inside-door offset.
        ---------------------------------------------------------

        local doorOffset =
            definition.doorOffset
            or vector3(
                0.0,
                0.0,
                0.0
            )

        local insideDoor =
            shellAnchor
            + doorOffset

        SetEntityCoords(
            CMG.getPlayerPed(),
            insideDoor.x,
            insideDoor.y,
            insideDoor.z + 1.0,
            false,
            false,
            false,
            false
        )

        ---------------------------------------------------------
        -- Exit interaction.
        ---------------------------------------------------------

        CMG.createArea(
            WAREHOUSE_EXIT_AREA,
            insideDoor,
            1.5,
            6,
            function()
            end,
            function()
            end,
            function()
                CMG.DrawText3D(
                    insideDoor,
                    "Press [F] to exit warehouse",
                    0.3
                )

                if IsControlJustPressed(
                    1,
                    23
                ) then
                    TriggerServerEvent(
                        EVENTS.UNLOAD_WAREHOUSE,
                        warehouseDbId
                    )
                end
            end,
            {}
        )

        ---------------------------------------------------------
        -- Ask server for placed items/plants belonging to this warehouse.
        ---------------------------------------------------------

        TriggerServerEvent(
            EVENTS.REQUEST_WAREHOUSE_OBJECTS,
            warehouseDbId
        )

        WarehouseRuntime.warehouseLoadInProgress =
            false
    end
)

---------------------------------------------------------------------
-- 49. UNLOAD WAREHOUSE
---------------------------------------------------------------------

-- Beginner: Register a network event handler that the server/other clients can trigger.
RegisterNetEvent(EVENTS.UNLOAD_WAREHOUSE)

AddEventHandler(
    EVENTS.UNLOAD_WAREHOUSE,
    function()
        cleanupCurrentWarehouse()
    end
)

---------------------------------------------------------------------
-- 50. PUBLIC WAREHOUSE HELPERS
---------------------------------------------------------------------

function CMG.inTrappingWarehouse()
    return WarehouseRuntime.shellObject
        ~= nil
        and DoesEntityExist(
            WarehouseRuntime.shellObject
        )
end

function CMG.getCurrentTrapperWarehouseId()
    return WarehouseRuntime.lastUsedWarehouseId
end

function CMG.isTrapperShelfRadialSuppressedForPlantId(
    plantId
)
    local runtimeObject =
        getPlacedObject(plantId)

    if not runtimeObject then
        return false
    end

    if runtimeObject.itemId ~= "shelf"
        and runtimeObject.itemId
            ~= "garden_hose"
    then
        return false
    end

    return CMG.isPlayerInClientArea(
        plantId
    )
end

---------------------------------------------------------------------
-- 51. FIND THE TYPE OF THE LAST-USED WAREHOUSE
---------------------------------------------------------------------

function CMG.getLastUsedTrapperWarehouseName()
    local warehouseDbId =
        WarehouseRuntime.lastUsedWarehouseId

    if not warehouseDbId then
        return nil
    end

    local owned =
        TrapperData.warehousesOwned
        and TrapperData.warehousesOwned[
            warehouseDbId
        ]

    if owned and owned.warehouseName then
        return owned.warehouseName
    end

    local keyed =
        TrapperData.warehouseKeys
        and TrapperData.warehouseKeys[
            warehouseDbId
        ]

    if keyed and keyed.warehouseName then
        return keyed.warehouseName
    end

    return nil
end

---------------------------------------------------------------------
-- 52. INITIAL CLIENT SETUP
---------------------------------------------------------------------

-- Beginner: Start a separate FiveM thread so this code can run independently.
Citizen.CreateThread(function()
    -------------------------------------------------------------
    -- Build seller + currently known entrances.
    -------------------------------------------------------------

    createWarehouseSeller()
    rebuildWarehouseEntrances()

    -------------------------------------------------------------
    -- Ask server for warehouse objects / Trapper contacts.
    -------------------------------------------------------------

    TriggerServerEvent(
        EVENTS.REQUEST_WAREHOUSE_OBJECTS
    )

    TriggerServerEvent(
        "CMG:trapNetRequestContacts"
    )
end)

---------------------------------------------------------------------
-- 53. RESOURCE CLEANUP
---------------------------------------------------------------------

AddEventHandler(
    "onResourceStop",
    function(resourceName)
        if resourceName
            ~= GetCurrentResourceName()
        then
            return
        end

        cleanupCurrentWarehouse()
        clearWarehouseEntrances()
        clearBuyerBlips()

        if WeedProcessing.active then
            resetWeedProcessingState()
        end
    end
)

---------------------------------------------------------------------
-- 54. BEGINNER MAP OF THE SYSTEM
---------------------------------------------------------------------
--
-- If you are learning this script, follow it in THIS order:
--
--   A. TrapperData
--      This tells the client which warehouses you own/have keys for.
--
--   B. rebuildWarehouseEntrances()
--      Turns those records into map markers + F interaction areas.
--
--   C. requestEnterWarehouse()
--      Checks the combat timer and asks the server for access.
--
--   D. EVENTS.LOAD_WAREHOUSE
--      Creates the underground interior shell and teleports the player in.
--
--   E. WarehouseRuntime.objects
--      Contains shelves, pots, workbenches, hoses and plants in that shell.
--
--   F. TrapNet events
--      Let the player order supplies and receive them as a delivery box.
--
--   G. CMG.processWeedBud() / CMG.processWeedBag()
--      Starts the first-person workbench minigames.
--
-- This is far easier than trying to follow workValue -> workValue5 -> workValue3.
--
-- FOR EXACT ANIMATION / PLACEMENT GEOMETRY:
--
--     open trapper_full_cleaned_reference.lua
--
-- and search for the event hash or callback name from this file.
---------------------------------------------------------------------