--[[
    LEVEL 1 BEGINNER GUIDE — Inventory
    =======================================

    File: cmg/prod/client/core/cl_inventory.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: core player/framework behaviour, specifically the Inventory feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 56
      * Background threads: 2
      * Always-running loops: 1
      * Commands: inventory
      * Incoming network events: none found by static scan
      * Local event handlers: none found by static scan
      * Server events sent: 72490db2b8
      * NUI callbacks: none found by static scan
      * Modules/config loaded: cfg/cfg_inventory, cfg/weapons

    Read it in this order:
      1. Top-level config/state variables.
      2. Helper functions (small reusable pieces of logic).
      3. Commands/events/UI callbacks (what starts the logic).
      4. Threads/loops last (what keeps checking in the background).

    IMPORTANT — this file still contains decompiler temporary names.
      Names like workValue12, textValue4, dataTable7, flag3, cmgCall2,
      arg1/arg2, or flow_label_* are NOT meaningful original developer names.
      A decompiler invented them while rebuilding source code.

      For a beginner, read the API call on the right-hand side first.
      Example:
        workValue = GetEntityCoords
        dataTable2 = workValue(playerPed)
      means roughly:
        local playerCoords = GetEntityCoords(playerPed)

      I have deliberately NOT mass-renamed these reused temporary variables:
      doing that without full control-flow reconstruction can silently change
      behaviour. Comments/section labels below explain the code safely.

    Safety note for editing:
      Keep event names, decorator keys, exported names, and config keys unchanged
      unless you also update every place that uses them.
]]
--[[
    CMG INVENTORY
    Beginner-Friendly Rewrite
    =====================================================================

    WHAT THIS SCRIPT DOES
    ---------------------
    This client file controls the player's inventory UI.

    It has TWO inventory display systems:

        1. Modern NUI inventory
           - HTML/JS UI
           - receives INVENTORY_SET_* messages
           - sends commands back through CMG.uiRegisterCallback()

        2. Legacy inventory
           - old DrawRect / DrawAdvancedText interface
           - enabled by the "cmg_legacy_inventory" KVP

    It also handles:

        * primary/player inventory
        * secondary inventories
        * vehicle trunks
        * house/business/player secondary inventories
        * moving items between inventories
        * using items
        * giving items to nearby players
        * trashing items
        * equipping/looting/transferring all
        * equipped weapon display
        * inventory weight limits
        * distance checks that close remote inventories
        * restart/inventory lockouts
        * item hand-over visual animations

    IMPORTANT
    ---------
    This is the READABLE / LEARNING reconstruction.

    The supplied decompile contains thousands of temporary SHX register names
    and decompiler jump labels. The modern NUI path and core inventory logic below are
    rebuilt directly from that behaviour.

    The old pixel-by-pixel legacy renderer was intentionally simplified in
    this beginner version because reproducing thousands of DrawRect calls
    would make the file unreadable again.

    For exact legacy rendering/control behaviour use:

        inventory_full_cleaned_reference.lua

    All original network/local event hash strings are kept unchanged.
]]

---------------------------------------------------------------------------
-- 1. CONFIG FILES
---------------------------------------------------------------------------

local InventoryConfig =
    CMG.loadModule(
        "cfg/cfg_inventory"
    )

local WeaponsConfig =
    CMG.loadModule(
        "cfg/weapons"
    )

---------------------------------------------------------------------------
-- 2. EVENT NAMES
---------------------------------------------------------------------------
--
-- Instead of writing:
--
--     TriggerServerEvent("72490db2b8")
--
-- everywhere, we give the hash a readable Lua name.
--
-- The HASH ITSELF is unchanged, so the server can still communicate with it.
---------------------------------------------------------------------------

local EVENTS = {
    -----------------------------------------------------------------------
    -- Inventory data / state
    -----------------------------------------------------------------------

    RECEIVE_PRIMARY_INVENTORY =
        "96db39f973",

    RECEIVE_SECONDARY_INVENTORY =
        "e669d94aae",

    INVENTORY_RESTART_LOCK =
        "9b370c2caf",

    SET_INVENTORY_BLOCKED =
        "b53722ec4c",

    -----------------------------------------------------------------------
    -- Close / clear
    -----------------------------------------------------------------------

    CLEAR_SECONDARY_INVENTORY =
        "2a70dddd80",

    NOTIFY_SERVER_INVENTORY_CLOSED =
        "72490db2b8",

    -----------------------------------------------------------------------
    -- Inventory changed notifications
    -----------------------------------------------------------------------

    INVENTORY_DATA_UPDATED =
        "0c20c62dc8",

    DIRTY_CASH_AMOUNT_CHANGED =
        "dba3e00154",

    -----------------------------------------------------------------------
    -- Vehicle trunk interaction
    -----------------------------------------------------------------------

    OPEN_NEARBY_VEHICLE_TRUNK =
        "a7ce3135a0",

    VEHICLE_TRUNK_DECOR =
        "0a6cf607ed",

    -----------------------------------------------------------------------
    -- Store equipped weapon
    -----------------------------------------------------------------------

    STORE_EQUIPPED_WEAPON =
        "23e533401c",

    -----------------------------------------------------------------------
    -- Inventory animation
    -----------------------------------------------------------------------

    PLAY_INVENTORY_KNEEL_ANIMATION =
        "c0eaa53e37",

    -----------------------------------------------------------------------
    -- Item hand-over visuals
    -----------------------------------------------------------------------

    SHOW_WEAPON_HANDOVER =
        "7498201c14",

    SHOW_OBJECT_HANDOVER =
        "0cf82783fa",
}

-- Every 10-character hash present in the supplied file.
-- This is useful when comparing against the original decompile.
local ALL_ORIGINAL_HASHES = {
    "0a6cf607ed",
    "0c20c62dc8",
    "0cf82783fa",
    "23e533401c",
    "2a70dddd80",
    "72490db2b8",
    "7498201c14",
    "96db39f973",
    "9b370c2caf",
    "a7ce3135a0",
    "b53722ec4c",
    "c0eaa53e37",
    "dba3e00154",
    "e669d94aae",
}

---------------------------------------------------------------------------
-- 3. NUI MESSAGE NAMES
---------------------------------------------------------------------------

local NUI_MESSAGES = {
    SET_PRIMARY =
        "INVENTORY_SET_PRIMARY",

    SET_SECONDARY =
        "INVENTORY_SET_SECONDARY",

    SET_EQUIPPED_WEAPONS =
        "INVENTORY_SET_EQUIPPED_WEAPONS",

    SET_GIVE_REQUEST =
        "INVENTORY_SET_GIVE_REQUEST",

    SET_OPACITY =
        "INVENTORY_SET_OPACITY",

    APP_TOGGLE =
        "APP_TOGGLE",
}

---------------------------------------------------------------------------
-- 4. INVENTORY STATE
---------------------------------------------------------------------------
--
-- The original decompile had roughly thirty top-level SHX variables.
-- They are grouped here so you can see what the inventory is tracking.
---------------------------------------------------------------------------

local Inventory = {
    -----------------------------------------------------------------------
    -- Which UI style is being used?
    -----------------------------------------------------------------------

    legacyEnabled =
        GetResourceKvpString(
            "cmg_legacy_inventory"
        ) == "1",

    -----------------------------------------------------------------------
    -- General UI state
    -----------------------------------------------------------------------

    isOpen = false,

    blocked = false,

    restartLocked = false,

    commandBusy = false,

    -----------------------------------------------------------------------
    -- Raw inventories from the server.
    --
    -- Raw item format:
    --
    --     inventory[itemId] = {
    --         itemName,
    --         amount,
    --         massPerItem
    --     }
    -----------------------------------------------------------------------

    primaryItems = nil,
    secondaryItems = nil,

    -----------------------------------------------------------------------
    -- Formatted versions sent to the NUI.
    -----------------------------------------------------------------------

    primaryUiData = nil,
    secondaryUiData = nil,
    equippedWeaponsUiData = nil,

    -----------------------------------------------------------------------
    -- Maximum inventory weight.
    -----------------------------------------------------------------------

    primaryMaxMass = 0.0,
    secondaryMaxMass = 0.0,

    -----------------------------------------------------------------------
    -- Secondary inventory tracking.
    -----------------------------------------------------------------------

    secondaryEntity = nil,

    secondaryType = nil,

    secondaryOpenedAt =
        vector3(
            0.0,
            0.0,
            0.0
        ),

    notMyTrunkOpenedAt =
        vector3(
            0.0,
            0.0,
            0.0
        ),

    garageTrunkOpenedAt = nil,

    secondaryPlayerServerId = 0,

    -----------------------------------------------------------------------
    -- Modern NUI nearby-player hover.
    -----------------------------------------------------------------------

    hoveredNearbyPlayerServerId = 0,

    lastEquippedWeaponRefresh = 0,

    -----------------------------------------------------------------------
    -- Action locks.
    -----------------------------------------------------------------------

    bulkActionBusy = false,

    selectingGivePlayer = false,

    -----------------------------------------------------------------------
    -- Special behaviour callbacks.
    -----------------------------------------------------------------------

    businessCanStoreItem = nil,

    transfersDisabled = false,

    -----------------------------------------------------------------------
    -- Legacy UI-only state.
    -----------------------------------------------------------------------

    legacyItemsPerPage = 14,

    legacyPrimaryPage = 0,
    legacySecondaryPage = 0,

    legacySelectedPrimaryItem = nil,
    legacySelectedSecondaryItem = nil,

    selectedItemMass = 0.0,
}

---------------------------------------------------------------------------
-- 5. SIMPLE HELPERS
---------------------------------------------------------------------------

-- === HELPER FUNCTION: isWeaponItem(itemId) ===
local function isWeaponItem(itemId)
    return
        type(itemId) == "string"
        and string.find(
            itemId,
            "WEAPON_",
            1,
            true
        ) ~= nil
end

-- === HELPER FUNCTION: isAmmoItem(itemId) ===
local function isAmmoItem(itemId)
    return
        InventoryConfig.ammoItems
        and InventoryConfig.ammoItems[
            itemId
        ] ~= nil
end

-- === HELPER FUNCTION: isEquippableItem(itemId) ===
local function isEquippableItem(itemId)
    return
        isWeaponItem(itemId)
        or isAmmoItem(itemId)
end

local function inventoryHasEquippableItem(
    itemTable
)
    if type(itemTable) ~= "table" then
        return false
    end

    for itemId in pairs(itemTable) do
        if isEquippableItem(itemId) then
            return true
        end
    end

    return false
end

local function calculateInventoryMass(
    itemTable
)
    local totalMass = 0.0

    if type(itemTable) ~= "table" then
        return totalMass
    end

    for _, item in pairs(itemTable) do
        local amount =
            tonumber(item[2])
            or 0

        local massPerItem =
            tonumber(item[3])
            or 0.0

        totalMass =
            totalMass
            + (
                amount
                * massPerItem
            )
    end

    return totalMass
end

local function getItemAmount(
    itemTable,
    itemId
)
    if type(itemTable) ~= "table"
        or not itemId
    then
        return 0
    end

    local item =
        itemTable[itemId]

    if not item then
        return 0
    end

    return
        tonumber(item[2])
        or 0
end

local function getItemMass(
    itemTable,
    itemId
)
    if type(itemTable) ~= "table"
        or not itemId
    then
        return 0.0
    end

    local item =
        itemTable[itemId]

    if not item then
        return 0.0
    end

    return
        tonumber(item[3])
        or 0.0
end

---------------------------------------------------------------------------
-- 6. FREE SPACE HELPERS
---------------------------------------------------------------------------

-- === HELPER FUNCTION: CMG.getSpaceInFirstChest() ===
function CMG.getSpaceInFirstChest()
    return
        Inventory.primaryMaxMass
        - calculateInventoryMass(
            Inventory.primaryItems
        )
end

-- === HELPER FUNCTION: CMG.getSpaceInSecondChest() ===
function CMG.getSpaceInSecondChest()
    return
        Inventory.secondaryMaxMass
        - calculateInventoryMass(
            Inventory.secondaryItems
        )
end

---------------------------------------------------------------------------
-- 7. PUBLIC INVENTORY HELPERS
---------------------------------------------------------------------------

-- === HELPER FUNCTION: CMG.getClientInventoryItemList() ===
function CMG.getClientInventoryItemList()
    return
        Inventory.primaryItems
end

function CMG.hasClientInventoryItem(
    itemId
)
    return
        getItemAmount(
            Inventory.primaryItems,
            itemId
        ) > 0
end

-- === HELPER FUNCTION: CMG.isDrawingInventoryUI() ===
function CMG.isDrawingInventoryUI()
    return
        Inventory.isOpen
end

---------------------------------------------------------------------------
-- 8. FORMAT RAW INVENTORY DATA FOR NUI
---------------------------------------------------------------------------

local function buildInventoryUiData(
    rawItems,
    maximumMass,
    displayName
)
    local uiItems = {}
    local currentMass = 0.0

    for itemId, item in pairs(
        rawItems or {}
    ) do
        local name =
            item[1]

        local amount =
            tonumber(item[2])
            or 0

        local massPerItem =
            tonumber(item[3])
            or 0.0

        local combinedMass =
            amount
            * massPerItem

        local uiItem = {
            name =
                name,

            itemId =
                itemId,

            amount =
                amount,

            combinedMass =
                combinedMass,
        }

        ---------------------------------------------------------------
        -- If this inventory item is a weapon, add data the NUI needs
        -- for the weapon-specific display.
        ---------------------------------------------------------------

        local weapon =
            WeaponsConfig.weapons
            and WeaponsConfig.weapons[
                itemId
            ]

        if weapon then
            uiItem.weapon = {
                id =
                    itemId,

                name =
                    weapon.name,

                class =
                    weapon.class,

                subType =
                    weapon.subType,

                ammo =
                    weapon.ammo,

                amount =
                    0,
            }
        end

        uiItems[
            #uiItems + 1
        ] =
            uiItem

        currentMass =
            currentMass
            + combinedMass
    end

    return {
        currentMass =
            currentMass,

        maximumMass =
            maximumMass,

        items =
            uiItems,

        displayName =
            displayName,

        hasEquippableItem =
            inventoryHasEquippableItem(
                rawItems
            ),
    }
end

---------------------------------------------------------------------------
-- 9. SEND INVENTORY DATA TO NUI
---------------------------------------------------------------------------

local function setInventorySide(
    side,
    rawItems,
    maximumMass,
    displayName
)
    rawItems =
        rawItems
        or {}

    local uiData =
        buildInventoryUiData(
            rawItems,
            maximumMass,
            displayName
        )

    CMG.uiSendMessage({
        type =
            "INVENTORY_SET_"
            .. side,

        info =
            uiData,
    })

    if side == "SECONDARY" then
        Inventory.secondaryItems =
            rawItems

        Inventory.secondaryUiData =
            uiData

        Inventory.secondaryMaxMass =
            maximumMass
    else
        Inventory.primaryItems =
            rawItems

        Inventory.primaryUiData =
            uiData

        Inventory.primaryMaxMass =
            maximumMass
    end

    ---------------------------------------------------------------
    -- Other CMG client modules listen for this to refresh anything
    -- based on inventory contents.
    ---------------------------------------------------------------

    TriggerEvent(
        EVENTS.INVENTORY_DATA_UPDATED
    )
end

-- === HELPER FUNCTION: clearInventorySide(side) ===
local function clearInventorySide(side)
    CMG.uiSendMessage({
        type =
            "INVENTORY_SET_"
            .. side,

        info =
            nil,
    })

    if side == "SECONDARY" then
        Inventory.secondaryItems = nil
        Inventory.secondaryUiData = nil
        Inventory.secondaryMaxMass = 0.0
    else
        Inventory.primaryItems = nil
        Inventory.primaryUiData = nil
        Inventory.primaryMaxMass = 0.0
    end
end

---------------------------------------------------------------------------
-- 10. PRIMARY INVENTORY UPDATE FROM SERVER
---------------------------------------------------------------------------

RegisterNetEvent(
    EVENTS.RECEIVE_PRIMARY_INVENTORY
)

AddEventHandler(
    EVENTS.RECEIVE_PRIMARY_INVENTORY,
    function(
        items,
        maximumMass
    )
        setInventorySide(
            "PRIMARY",
            items,
            maximumMass,
            "Player"
        )

        -----------------------------------------------------------
        -- The source separately publishes the player's dirty-cash
        -- amount to another client system.
        -----------------------------------------------------------

        local dirtyCashAmount = 0

        if items
            and items.dirtycash
        then
            dirtyCashAmount =
                tonumber(
                    items.dirtycash[2]
                )
                or 0
        end

        TriggerEvent(
            EVENTS.DIRTY_CASH_AMOUNT_CHANGED,
            dirtyCashAmount
        )
    end
)

---------------------------------------------------------------------------
-- 11. SECONDARY INVENTORY UPDATE FROM SERVER
---------------------------------------------------------------------------

RegisterNetEvent(
    EVENTS.RECEIVE_SECONDARY_INVENTORY
)

AddEventHandler(
    EVENTS.RECEIVE_SECONDARY_INVENTORY,
    function(
        items,
        maximumMass,
        inventoryType,
        doNotOpenUi,
        displayName
    )
        setInventorySide(
            "SECONDARY",
            items,
            maximumMass,
            displayName
        )

        -----------------------------------------------------------
        -- Usually receiving a secondary inventory means we should
        -- open the inventory screen.
        -----------------------------------------------------------

        if not doNotOpenUi then
            CMG.setDrawingInventoryUI(
                true
            )
        end

        if not inventoryType then
            return
        end

        Inventory.secondaryType =
            inventoryType

        Inventory.secondaryOpenedAt =
            CMG.getPlayerCoords()

        -----------------------------------------------------------
        -- "notmytrunk" gets its own 5 metre distance check.
        -----------------------------------------------------------

        if inventoryType
            == "notmytrunk"
        then
            Inventory.notMyTrunkOpenedAt =
                CMG.getPlayerCoords()
        end

        -----------------------------------------------------------
        -- A secondary inventory can represent another player.
        --
        -- Example:
        --
        --     "player_42"
        -----------------------------------------------------------

        local playerIdText =
            string.match(
                inventoryType,
                "player_(.+)"
            )

        if playerIdText then
            Inventory.secondaryPlayerServerId =
                tonumber(
                    playerIdText
                )
                or 0
        else
            Inventory.secondaryPlayerServerId =
                0
        end
    end
)

---------------------------------------------------------------------------
-- 12. CLEAR GIVE-PLAYER REQUEST
---------------------------------------------------------------------------

-- === HELPER FUNCTION: clearGiveRequest() ===
local function clearGiveRequest()
    CMG.uiSendMessage({
        type =
            NUI_MESSAGES.SET_GIVE_REQUEST,

        info =
            {},
    })
end

---------------------------------------------------------------------------
-- 13. CLOSE / RESET SECONDARY INVENTORY
---------------------------------------------------------------------------

-- === HELPER FUNCTION: clearSecondaryContext() ===
local function clearSecondaryContext()
    clearInventorySide(
        "SECONDARY"
    )

    Inventory.secondaryType = nil
    Inventory.secondaryEntity = nil
    Inventory.secondaryPlayerServerId = 0
    Inventory.garageTrunkOpenedAt = nil
end

AddEventHandler(
    EVENTS.CLEAR_SECONDARY_INVENTORY,
    function()
        clearSecondaryContext()

        if Inventory.isOpen then
            CMG.setDrawingInventoryUI(
                false
            )
        end
    end
)

-- === HELPER FUNCTION: tellServerInventoryClosed() ===
local function tellServerInventoryClosed()
    ---------------------------------------------------------------
    -- The source fires the local clear event in a new thread, then
    -- notifies the server.
    ---------------------------------------------------------------

    -- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
    Citizen.CreateThread(
        function()
            TriggerEvent(
                EVENTS.CLEAR_SECONDARY_INVENTORY
            )
        end
    )

    TriggerServerEvent(
        EVENTS.NOTIFY_SERVER_INVENTORY_CLOSED
    )
end

---------------------------------------------------------------------------
-- 14. MODERN NUI OPEN/CLOSE
---------------------------------------------------------------------------

local function setModernInventoryVisible(
    visible
)
    if CMG.isPauseMenuOpen() then
        return
    end

    if visible then
        if Inventory.isOpen then
            return
        end

        CMG.uiSendMessage({
            type =
                NUI_MESSAGES.APP_TOGGLE,

            app =
                "inventory",
        })

        CMG.uiSetFocus(
            true,
            true,
            true
        )

        return
    end

    if not Inventory.isOpen then
        return
    end

    CMG.uiSendMessage({
        type =
            NUI_MESSAGES.APP_TOGGLE,

        app =
            tCMG.isInComa()
            and "deathscreen"
            or "",
    })

    CMG.uiSetFocus(
        false,
        false,
        false
    )

    clearGiveRequest()
    tellServerInventoryClosed()
end

---------------------------------------------------------------------------
-- 15. LEGACY INVENTORY OPEN/CLOSE
---------------------------------------------------------------------------

local function setLegacyInventoryVisible(
    visible
)
    if visible then
        CMG.setCursor(1)
        CMG.setInGUI(true)
    else
        CMG.setCursor(0)
        CMG.setInGUI(false)
        tellServerInventoryClosed()
    end
end

---------------------------------------------------------------------------
-- 16. MAIN UI VISIBILITY FUNCTION
---------------------------------------------------------------------------

function CMG.setDrawingInventoryUI(
    visible
)
    visible =
        visible == true

    ---------------------------------------------------------------
    -- The source refuses to OPEN the inventory while in a coma.
    ---------------------------------------------------------------

    if visible
        and tCMG.isInComa()
    then
        return
    end

    if Inventory.legacyEnabled then
        setLegacyInventoryVisible(
            visible
        )
    else
        setModernInventoryVisible(
            visible
        )
    end

    Inventory.isOpen =
        visible
end

---------------------------------------------------------------------------
-- 17. INVENTORY COMMAND
---------------------------------------------------------------------------

-- === HELPER FUNCTION: toggleInventoryCommand() ===
local function toggleInventoryCommand()
    ---------------------------------------------------------------
    -- Do not open inventory during the Spelling Bee minigame.
    ---------------------------------------------------------------

    local spellingBeeData =
        CMG.getClientEventData(
            "SpellingBeeClientData"
        )

    if spellingBeeData
        and spellingBeeData.minigameName
            == "Spelling Bee"
    then
        return
    end

    ---------------------------------------------------------------
    -- Original inventory hotkey is keyboard-only.
    ---------------------------------------------------------------

    if not CMG.isUsingKeyboard(2) then
        return
    end

    if tCMG.isInComa() then
        return
    end

    if CMG.isHandcuffed() then
        return
    end

    if Inventory.blocked then
        return
    end

    if Inventory.restartLocked then
        tCMG.notify(
            "~r~Cannot open inventory right before a restart!"
        )

        return
    end

    CMG.setDrawingInventoryUI(
        not Inventory.isOpen
    )
end

RegisterCommand(
    "inventory",
    toggleInventoryCommand,
    false
)

RegisterKeyMapping(
    "inventory",
    "Open Inventory",
    "KEYBOARD",
    "L"
)

---------------------------------------------------------------------------
-- 18. SERVER CAN BLOCK INVENTORY ACCESS
---------------------------------------------------------------------------

RegisterNetEvent(
    EVENTS.SET_INVENTORY_BLOCKED
)

AddEventHandler(
    EVENTS.SET_INVENTORY_BLOCKED,
    function(blocked)
        Inventory.blocked =
            blocked == true

        if Inventory.blocked then
            CMG.setDrawingInventoryUI(
                false
            )

            tellServerInventoryClosed()
        end
    end
)

---------------------------------------------------------------------------
-- 19. RESTART LOCK
---------------------------------------------------------------------------

RegisterNetEvent(
    EVENTS.INVENTORY_RESTART_LOCK
)

AddEventHandler(
    EVENTS.INVENTORY_RESTART_LOCK,
    function()
        Inventory.restartLocked =
            true

        -----------------------------------------------------------
        -- The supplied script keeps repeatedly clearing the
        -- secondary inventory and closing the UI every 50 ms.
        --
        -- This is consistent with a pre-restart lockdown.
        -----------------------------------------------------------

        -- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
        Citizen.CreateThread(
            function()
                while Inventory.restartLocked do
                    clearInventorySide(
                        "SECONDARY"
                    )

                    CMG.setDrawingInventoryUI(
                        false
                    )

                    Wait(50)
                end
            end
        )
    end
)

---------------------------------------------------------------------------
-- 20. EQUIPPED WEAPONS LIST
---------------------------------------------------------------------------

-- === HELPER FUNCTION: refreshEquippedWeapons() ===
local function refreshEquippedWeapons()
    local equippedWeapons = {}

    for weaponId, weaponState in pairs(
        CMG.getWeapons()
        or {}
    ) do
        local weaponConfig =
            WeaponsConfig.weapons
            and WeaponsConfig.weapons[
                weaponId
            ]

        if weaponConfig
            and not string.starts(
                weaponId,
                "GADGET_"
            )
        then
            equippedWeapons[
                #equippedWeapons + 1
            ] = {
                id =
                    weaponId,

                name =
                    weaponConfig.name,

                class =
                    weaponConfig.class,

                subType =
                    weaponConfig.subType,

                ammo =
                    weaponConfig.ammo,

                amount =
                    weaponState.ammo,
            }
        end
    end

    CMG.uiSendMessage({
        type =
            NUI_MESSAGES.SET_EQUIPPED_WEAPONS,

        info =
            equippedWeapons,
    })

    Inventory.equippedWeaponsUiData =
        equippedWeapons
end

---------------------------------------------------------------------------
-- 21. GARAGE TRUNK SPECIAL CASE
---------------------------------------------------------------------------

-- === HELPER FUNCTION: CMG.setOpeningBootFromGarage() ===
function CMG.setOpeningBootFromGarage()
    Inventory.garageTrunkOpenedAt =
        GetEntityCoords(
            CMG.getPlayerPed()
        )

    ---------------------------------------------------------------
    -- -1 means:
    --
    -- "There is no live entity to measure against. Use the saved
    --  garage position instead."
    ---------------------------------------------------------------

    Inventory.secondaryEntity =
        -1
end

local function getTrackedSecondaryCoords(
    entity
)
    if entity == -1 then
        return
            Inventory.garageTrunkOpenedAt
            or vector3(
                0.0,
                0.0,
                0.0
            )
    end

    return
        GetEntityCoords(
            entity
        )
end

---------------------------------------------------------------------------
-- 22. SECONDARY INVENTORY DISTANCE CHECKS
---------------------------------------------------------------------------

-- === HELPER FUNCTION: closeIfTooFarFromSecondary() ===
local function closeIfTooFarFromSecondary()
    local playerCoords =
        CMG.getPlayerCoords()

    ---------------------------------------------------------------
    -- Vehicle/entity secondary inventory:
    -- close at > 10 metres.
    ---------------------------------------------------------------

    if Inventory.secondaryEntity ~= nil
        and Inventory.secondaryItems
    then
        local sourceCoords =
            getTrackedSecondaryCoords(
                Inventory.secondaryEntity
            )

        if #(
            playerCoords
            - sourceCoords
        ) > 10.0
        then
            Inventory.secondaryEntity = nil
            Inventory.garageTrunkOpenedAt = nil
            tellServerInventoryClosed()

            return
        end
    end

    ---------------------------------------------------------------
    -- House:
    -- close at > 5 metres from where it was opened.
    ---------------------------------------------------------------

    if Inventory.secondaryType == "house"
        and Inventory.secondaryItems
        and #(
            playerCoords
            - Inventory.secondaryOpenedAt
        ) > 5.0
    then
        tellServerInventoryClosed()

        return
    end

    ---------------------------------------------------------------
    -- Someone else's trunk:
    -- close at > 5 metres.
    ---------------------------------------------------------------

    if Inventory.secondaryType
            == "notmytrunk"
        and Inventory.secondaryItems
        and #(
            playerCoords
            - Inventory.notMyTrunkOpenedAt
        ) > 5.0
    then
        tellServerInventoryClosed()

        return
    end

    ---------------------------------------------------------------
    -- Another player's inventory:
    -- close at > 5 metres.
    ---------------------------------------------------------------

    if Inventory.secondaryPlayerServerId
            ~= 0
        and Inventory.secondaryItems
    then
        local player =
            GetPlayerFromServerId(
                Inventory.secondaryPlayerServerId
            )

        local distance =
            1000.0

        if player >= 0 then
            distance =
                #(
                    playerCoords
                    - GetEntityCoords(
                        GetPlayerPed(player)
                    )
                )
        end

        if distance > 5.0 then
            tellServerInventoryClosed()

            return
        end
    end

    ---------------------------------------------------------------
    -- If a regular trunk context has lost its tracked vehicle,
    -- close the inventory.
    ---------------------------------------------------------------

    if Inventory.secondaryEntity == nil
        and Inventory.secondaryType
            == "trunk"
    then
        CMG.setDrawingInventoryUI(
            false
        )
    end
end

---------------------------------------------------------------------------
-- 23. OPEN NEAREST VEHICLE TRUNK
---------------------------------------------------------------------------

AddEventHandler(
    EVENTS.OPEN_NEARBY_VEHICLE_TRUNK,
    function()
        if Inventory.blocked then
            return
        end

        local vehicle =
            tCMG.getNearestVehicle(6)

        if not vehicle then
            tCMG.notify(
                "~r~No vehicle nearby"
            )

            return
        end

        local modelHash =
            GetEntityModel(
                vehicle
            )

        local vehicleId =
            CMG.getVehicleIdFromModel(
                modelHash
            )

        if not vehicleId then
            tCMG.notify(
                "~r~You don't have the keys to this vehicle!"
            )

            return
        end

        local ownerUserId,
            storedVehicleId =
            tCMG.getVehicleInfos(
                vehicle
            )

        local trunkId =
            DecorGetInt(
                vehicle,
                EVENTS.VEHICLE_TRUNK_DECOR
            )

        local myUserId =
            CMG.getClientUserId()

        if ownerUserId ~= myUserId
            or storedVehicleId
                ~= vehicleId
            or trunkId <= 0
        then
            tCMG.notify(
                "~r~You don't have the keys to this vehicle"
            )

            return
        end

        CMG.setDrawingInventoryUI(
            true
        )

        Inventory.secondaryEntity =
            vehicle

        ---------------------------------------------------------------
        -- One special trunk ID is opened through a networked scripted
        -- vehicle API rather than the normal trunk function.
        ---------------------------------------------------------------

        if trunkId
            == 1927688563
        then
            local netId =
                NetworkGetNetworkIdFromEntity(
                    vehicle
                )

            if netId > 0 then
                CMGclient.openVehicleScriptedTrunk({
                    netId,
                })
            else
                tCMG.notify(
                    "~r~You are unable to open this vehicle boot."
                )
            end

            return
        end

        print(
            "[CMG Trunks] calling OpenVehicleTrunk: "
            .. tostring(
                trunkId
            )
        )

        CMGclient.OpenVehicleTrunk({
            trunkId,
        })
    end
)

---------------------------------------------------------------------------
-- 24. MOVE ONE ITEM: SECONDARY -> PLAYER
---------------------------------------------------------------------------

local function moveSecondaryToPlayer(
    itemId,
    amount
)
    if Inventory.transfersDisabled then
        return
    end

    CMGclient.moveChestToClient({
        itemId,
        amount,
    })
end

---------------------------------------------------------------------------
-- 25. MOVE ONE ITEM: PLAYER -> SECONDARY
---------------------------------------------------------------------------

local function movePlayerToSecondary(
    itemId,
    amount
)
    if Inventory.secondaryType
            == "business"
        and Inventory.businessCanStoreItem
        and not Inventory.businessCanStoreItem(
            itemId
        )
    then
        notify(
            "~r~The business does not except this item."
        )

        return
    end

    if Inventory.transfersDisabled then
        return
    end

    CMGclient.moveClientToChest({
        itemId,
        amount,
    })
end

---------------------------------------------------------------------------
-- 26. BULK EQUIP ALL
---------------------------------------------------------------------------

-- === HELPER FUNCTION: equipAll() ===
local function equipAll()
    if Inventory.bulkActionBusy then
        return
    end

    Inventory.bulkActionBusy =
        true

    if not Inventory.primaryItems then
        Inventory.bulkActionBusy =
            false

        return
    end

    local sorted =
        sortAlphabetically(
            Inventory.primaryItems
        )

    table.sort(
        sorted,
        function(a, b)

            -- === HELPER FUNCTION: priority(itemId) ===
            local function priority(itemId)
                if isWeaponItem(itemId) then
                    return 2
                end

                if isAmmoItem(itemId) then
                    return 1
                end

                return 0
            end

            return
                priority(a.title)
                > priority(b.title)
        end
    )

    for _, item in pairs(sorted) do
        if getItemAmount(
            Inventory.primaryItems,
            item.title
        ) > 0
            and isEquippableItem(
                item.title
            )
        then
            CMGclient.useInventoryItem({
                item.title,
                -1,
            })

            Wait(250)
        end

        if not Inventory.isOpen
            or not Inventory.primaryItems
            or table.count(
                Inventory.primaryItems
            ) == 0
            or Inventory.transfersDisabled
        then
            break
        end
    end

    Inventory.bulkActionBusy =
        false
end

---------------------------------------------------------------------------
-- 27. LOOT ALL: SECONDARY -> PLAYER
---------------------------------------------------------------------------

-- === HELPER FUNCTION: lootAll() ===
local function lootAll()
    if Inventory.bulkActionBusy then
        return
    end

    Inventory.bulkActionBusy =
        true

    if not Inventory.secondaryItems
        or not Inventory.primaryItems
    then
        Inventory.bulkActionBusy =
            false

        return
    end

    local sorted =
        sortAlphabetically(
            Inventory.secondaryItems
        )

    table.sort(
        sorted,
        function(a, b)

            -- === HELPER FUNCTION: priority(itemId) ===
            local function priority(itemId)
                if isWeaponItem(itemId) then
                    return 2
                end

                if isAmmoItem(itemId) then
                    return 1
                end

                return 0
            end

            return
                priority(a.title)
                > priority(b.title)
        end
    )

    for _, item in pairs(sorted) do
        if getItemAmount(
            Inventory.secondaryItems,
            item.title
        ) > 0
        then
            moveSecondaryToPlayer(
                item.title,
                item.value[2]
            )

            Wait(250)
        end

        if not Inventory.isOpen
            or not Inventory.primaryItems
            or not Inventory.secondaryItems
            or table.count(
                Inventory.secondaryItems
            ) == 0
        then
            break
        end
    end

    Inventory.bulkActionBusy =
        false
end

---------------------------------------------------------------------------
-- 28. TRANSFER ALL: PLAYER -> SECONDARY
---------------------------------------------------------------------------

-- === HELPER FUNCTION: transferAll() ===
local function transferAll()
    if Inventory.bulkActionBusy then
        return
    end

    Inventory.bulkActionBusy =
        true

    if not Inventory.secondaryItems
        or not Inventory.primaryItems
    then
        Inventory.bulkActionBusy =
            false

        return
    end

    local sorted =
        sortAlphabetically(
            Inventory.primaryItems
        )

    table.sort(
        sorted,
        function(a, b)

            -- === HELPER FUNCTION: priority(itemId) ===
            local function priority(itemId)
                if isWeaponItem(itemId) then
                    return 2
                end

                if isAmmoItem(itemId) then
                    return 1
                end

                return 0
            end

            return
                priority(a.title)
                > priority(b.title)
        end
    )

    for _, item in pairs(sorted) do
        -----------------------------------------------------------
        -- The source stops mass-transfer as soon as combat begins.
        -----------------------------------------------------------

        if CMG.getPlayerCombatTimer() > 0 then
            break
        end

        -----------------------------------------------------------
        -- Dirty cash cannot be stored in a red zone.
        -----------------------------------------------------------

        if item.title == "dirtycash"
            and CMG.isPlayerInRedZone()
        then
            notify(
                "~r~Could not transfer all dirty cash as you are inside a redzone."
            )
        elseif getItemAmount(
            Inventory.primaryItems,
            item.title
        ) > 0
        then
            movePlayerToSecondary(
                item.title,
                item.value[2]
            )

            Wait(250)
        end

        if not Inventory.isOpen
            or not Inventory.primaryItems
            or not Inventory.secondaryItems
            or table.count(
                Inventory.primaryItems
            ) == 0
        then
            break
        end
    end

    Inventory.bulkActionBusy =
        false
end

---------------------------------------------------------------------------
-- 29. GIVE ITEM: LINE-OF-SIGHT SAFETY CHECK
---------------------------------------------------------------------------

local function giveItemToPlayer(
    itemId,
    targetServerId,
    amount
)
    local targetPlayer =
        GetPlayerFromServerId(
            targetServerId
        )

    if targetPlayer == -1 then
        return
    end

    local targetPed =
        GetPlayerPed(
            targetPlayer
        )

    if targetPed == 0 then
        return
    end

    local myPed =
        PlayerPedId()

    local myCoords =
        CMG.getPlayerCoords()

    local targetCoords =
        GetEntityCoords(
            targetPed,
            true
        )

    ---------------------------------------------------------------
    -- The original checks several vertical ray heights from -0.8m
    -- through +0.8m. At least one line needs to be unobstructed.
    ---------------------------------------------------------------

    local hasClearPath =
        false

    for step = -8, 8 do
        local height =
            step / 10.0

        local from =
            myCoords
            + vector3(
                0.0,
                0.0,
                height
            )

        local to =
            targetCoords
            + vector3(
                0.0,
                0.0,
                height
            )

        local ray =
            StartExpensiveSynchronousShapeTestLosProbe(
                from.x,
                from.y,
                from.z,

                to.x,
                to.y,
                to.z,

                17,
                myPed,
                7
            )

        local _result,
            hit =
            GetShapeTestResult(
                ray
            )

        if hit == 0 then
            hasClearPath =
                true

            break
        end
    end

    if not hasClearPath
        and not CMG.getTunableValue(
            "disable_transfer_walls"
        )
    then
        notify(
            "~r~You can not transfer items between solid objects."
        )

        return
    end

    CMGclient.giveToNearestPlayer({
        itemId,
        targetServerId,
        amount,
    })
end

---------------------------------------------------------------------------
-- 30. FIND NEARBY PLAYERS FOR GIVE MENU
---------------------------------------------------------------------------

-- === HELPER FUNCTION: buildNearbyPlayerList() ===
local function buildNearbyPlayerList()
    local nearby = {}
    local myPed = PlayerPedId()
    local myCoords = CMG.getPlayerCoords()

    for _, player in pairs(
        GetActivePlayers()
    ) do
        local ped =
            GetPlayerPed(
                player
            )

        if ped ~= 0
            and ped ~= myPed
        then
            local distance =
                #(
                    GetEntityCoords(
                        ped,
                        true
                    )
                    - myCoords
                )

            if distance < 5.0 then
                local serverId =
                    GetPlayerServerId(
                        player
                    )

                local name = ""

                if CMG.isPlayerInSelectedGang(
                    serverId
                )
                then
                    name =
                        CMG.getPlayerName(
                            player
                        )
                        or ""
                end

                nearby[
                    #nearby + 1
                ] = {
                    permId =
                        serverId,

                    name =
                        name,
                }
            end
        end
    end

    return nearby
end

---------------------------------------------------------------------------
-- 31. MODERN NUI AMOUNT RESOLVER
---------------------------------------------------------------------------
--
-- Requested amount meanings:
--
--     nil     = ask the player for a number
--     -1      = move the maximum possible amount
--     number  = use that exact amount
---------------------------------------------------------------------------

local function resolveMoveAmount(
    requestedAmount,
    request,
    callback
)
    if requestedAmount == nil then
        CMG.clientPrompt(
            "Enter Amount",
            "",
            function(input)
                local amount =
                    tonumber(input)

                if not amount then
                    notify(
                        "~r~Unable to parse input amount."
                    )

                    return
                end

                callback(
                    amount,
                    request
                )
            end
        )

        return
    end

    ---------------------------------------------------------------
    -- -1 means "all", but it is still limited by the destination's
    -- free weight.
    ---------------------------------------------------------------

    if requestedAmount == -1 then
        local itemId =
            request.selectedItemId

        local sourceItems
        local destinationSpace

        if request.selectedInventoryName
            == "Player"
        then
            sourceItems =
                Inventory.primaryItems

            destinationSpace =
                CMG.getSpaceInSecondChest()
        else
            sourceItems =
                Inventory.secondaryItems

            destinationSpace =
                CMG.getSpaceInFirstChest()
        end

        if not sourceItems
            or not sourceItems[itemId]
        then
            return
        end

        local amount =
            tonumber(
                sourceItems[
                    itemId
                ][2]
            )
            or 0

        local massPerItem =
            tonumber(
                sourceItems[
                    itemId
                ][3]
            )
            or 0.0

        if massPerItem > 0.0
            and destinationSpace
                < amount
                    * massPerItem
        then
            amount =
                math.floor(
                    destinationSpace
                    / massPerItem
                )
        end

        callback(
            amount,
            request
        )

        return
    end

    callback(
        requestedAmount,
        request
    )
end

---------------------------------------------------------------------------
-- 32. MODERN ACTION: MOVE
---------------------------------------------------------------------------

local function moveInventoryItem(
    request,
    requestedAmount
)
    if not request.selectedItemId then
        notify(
            "~r~No item selected."
        )

        return
    end

    resolveMoveAmount(
        requestedAmount,
        request,

        function(
            amount,
            moveRequest
        )
            if amount <= 0
                or math.type(amount)
                    ~= "integer"
            then
                notify(
                    "~r~Input amount must be a positive whole number."
                )

                return
            end

            -------------------------------------------------------
            -- From player -> secondary.
            -------------------------------------------------------

            if moveRequest.selectedInventoryName
                == "Player"
            then
                if not Inventory.secondaryItems then
                    notify(
                        "~r~No secondary inventory selected."
                    )

                    return
                end

                if CMG.getPlayerCombatTimer()
                    > 0
                then
                    notify(
                        "~r~You can not store items whilst in combat."
                    )

                    return
                end

                if moveRequest.selectedItemId
                        == "dirtycash"
                    and CMG.isPlayerInRedZone()
                then
                    notify(
                        "~r~You can not store dirty cash inside a redzone."
                    )

                    return
                end

                movePlayerToSecondary(
                    moveRequest.selectedItemId,
                    amount
                )

                return
            end

            -------------------------------------------------------
            -- From secondary -> player.
            -------------------------------------------------------

            moveSecondaryToPlayer(
                moveRequest.selectedItemId,
                amount
            )
        end
    )
end

---------------------------------------------------------------------------
-- 33. MODERN ACTION: USE
---------------------------------------------------------------------------

local function useInventoryItem(
    request,
    amount
)
    if not request.selectedItemId then
        notify(
            "~r~No item selected."
        )

        return
    end

    CMGclient.useInventoryItem({
        request.selectedItemId,
        amount,
    })
end

---------------------------------------------------------------------------
-- 34. MODERN ACTION: GIVE
---------------------------------------------------------------------------

local function requestGiveItem(
    request,
    amount
)
    if not request.selectedItemId then
        notify(
            "~r~No item selected."
        )

        return
    end

    if request.selectedInventoryName
        ~= "Player"
    then
        notify(
            "~r~Please move the item to your inventory to give."
        )

        return
    end

    local nearby =
        buildNearbyPlayerList()

    if #nearby == 0 then
        notify(
            "~r~No nearby players."
        )

        return
    end

    CMG.uiSendMessage({
        type =
            NUI_MESSAGES.SET_GIVE_REQUEST,

        info = {
            players =
                nearby,

            request = {
                selectedItemId =
                    request.selectedItemId,

                giveAmount =
                    amount,
            },
        },
    })
end

local function confirmGiveItem(
    data
)
    clearGiveRequest()

    giveItemToPlayer(
        data.selectedItemId,
        data.selectedPermId,
        data.giveAmount
    )
end

---------------------------------------------------------------------------
-- 35. MODERN ACTION: TRASH / DROP
---------------------------------------------------------------------------

local function trashInventoryItem(
    request,
    amount
)
    if not request.selectedItemId then
        notify(
            "~r~No item selected."
        )

        return
    end

    if request.selectedInventoryName
        ~= "Player"
    then
        notify(
            "~r~Please move the item to your inventory to trash."
        )

        return
    end

    CMGclient.trashItem({
        request.selectedItemId,
        amount,
    })
end

---------------------------------------------------------------------------
-- 36. MODERN ACTION: STORE EQUIPPED WEAPON
---------------------------------------------------------------------------

-- === HELPER FUNCTION: storeEquippedWeapon(data) ===
local function storeEquippedWeapon(data)
    TriggerServerEvent(
        EVENTS.STORE_EQUIPPED_WEAPON,
        true,
        false,
        data.id
    )
end

-- === HELPER FUNCTION: storeAllEquippedWeapons() ===
local function storeAllEquippedWeapons()
    ExecuteCommand(
        "storeallweapons"
    )
end

---------------------------------------------------------------------------
-- 37. NUI COMMAND TABLE
---------------------------------------------------------------------------

local InventoryCommands = {
    use =
        function(data)
            useInventoryItem(
                data,
                data.moveAmount
            )
        end,

    use_all =
        function(data)
            useInventoryItem(
                data,
                -1
            )
        end,

    move =
        function(data)
            moveInventoryItem(
                data,
                data.moveAmount
            )
        end,

    move_all =
        function(data)
            moveInventoryItem(
                data,
                -1
            )
        end,

    give =
        function(data)
            requestGiveItem(
                data,
                data.moveAmount
            )
        end,

    give_all =
        function(data)
            requestGiveItem(
                data,
                -1
            )
        end,

    drop =
        function(data)
            trashInventoryItem(
                data,
                data.moveAmount
            )
        end,

    drop_all =
        function(data)
            trashInventoryItem(
                data,
                -1
            )
        end,

    equip_all =
        equipAll,

    loot_all =
        lootAll,

    give_result =
        confirmGiveItem,

    store =
        storeEquippedWeapon,

    store_all =
        storeAllEquippedWeapons,

    transfer_all =
        transferAll,
}

---------------------------------------------------------------------------
-- 38. NUI CALLBACK: inventoryCommand
---------------------------------------------------------------------------

CMG.uiRegisterCallback(
    "inventoryCommand",
    function(data)
        if Inventory.commandBusy
            or not Inventory.isOpen
        then
            return
        end

        local command =
            InventoryCommands[
                data.command
            ]

        if not command then
            return
        end

        if Inventory.transfersDisabled then
            return
        end

        Inventory.commandBusy =
            true

        command(data)

        Inventory.commandBusy =
            false
    end
)

---------------------------------------------------------------------------
-- 39. NUI CALLBACK: nearby player hover
---------------------------------------------------------------------------

CMG.uiRegisterCallback(
    "onNearbyHover",
    function(data)
        if data.enabled then
            Inventory.hoveredNearbyPlayerServerId =
                data.permId
        else
            Inventory.hoveredNearbyPlayerServerId =
                0
        end
    end
)

---------------------------------------------------------------------------
-- 40. NUI CALLBACK: initial inventory request
---------------------------------------------------------------------------

CMG.uiRegisterCallback(
    "inventoryInitialRequest",
    function()
        CMG.uiSendMessage({
            type =
                NUI_MESSAGES.SET_PRIMARY,

            info =
                Inventory.primaryUiData,
        })

        CMG.uiSendMessage({
            type =
                NUI_MESSAGES.SET_SECONDARY,

            info =
                Inventory.secondaryUiData,
        })

        CMG.uiSendMessage({
            type =
                NUI_MESSAGES.SET_EQUIPPED_WEAPONS,

            info =
                Inventory.equippedWeaponsUiData,
        })

        CMG.uiSendMessage({
            type =
                NUI_MESSAGES.SET_OPACITY,

            info =
                CMG.getInventoryOpacity(),
        })
    end
)

---------------------------------------------------------------------------
-- 41. NUI CALLBACK: inventory closed
---------------------------------------------------------------------------

CMG.uiRegisterCallback(
    "inventoryClosed",
    function()
        CMG.setDrawingInventoryUI(
            false
        )
    end
)

---------------------------------------------------------------------------
-- 42. DRAW MARKER ABOVE NEARBY PLAYER BEING HOVERED
---------------------------------------------------------------------------

local function drawNearbyPlayerMarker(
    serverId
)
    local player =
        GetPlayerFromServerId(
            serverId
        )

    if player < 0 then
        return
    end

    local ped =
        GetPlayerPed(
            player
        )

    if ped == 0
        or ped == CMG.getPlayerPed()
    then
        return
    end

    local coords =
        GetEntityCoords(
            ped,
            true
        )

    DrawMarker(
        2,

        coords.x,
        coords.y,
        coords.z + 1.1,

        0.0,
        0.0,
        0.0,

        0.0,
        -180.0,
        0.0,

        0.4,
        0.4,
        0.4,

        0,
        168,
        255,
        125,

        false,
        true,
        2,
        false,
        nil,
        nil,
        false
    )
end

---------------------------------------------------------------------------
-- 43. MODERN INVENTORY PER-FRAME LOGIC
---------------------------------------------------------------------------

-- === HELPER FUNCTION: modernInventoryTick() ===
local function modernInventoryTick()
    CMG.disableStandardControlsForUI()

    if Inventory.hoveredNearbyPlayerServerId
        ~= 0
    then
        drawNearbyPlayerMarker(
            Inventory.hoveredNearbyPlayerServerId
        )
    end

    ---------------------------------------------------------------
    -- Refresh equipped weapons every 250 ms.
    ---------------------------------------------------------------

    local now =
        GetGameTimer()

    if now
        - Inventory.lastEquippedWeaponRefresh
        > 250
    then
        refreshEquippedWeapons()

        Inventory.lastEquippedWeaponRefresh =
            now
    end

    ---------------------------------------------------------------
    -- Stop GTA's basic look controls from fighting the NUI.
    ---------------------------------------------------------------

    for control = 1, 6 do
        DisableControlAction(
            0,
            control,
            true
        )
    end

    ---------------------------------------------------------------
    -- Escape closes the inventory.
    ---------------------------------------------------------------

    if IsDisabledControlJustReleased(
        0,
        200
    )
    then
        toggleInventoryCommand()
    end
end

---------------------------------------------------------------------------
-- 44. LEGACY INVENTORY - READABLE FALLBACK
---------------------------------------------------------------------------
--
-- The original contains roughly 2,300 lines of DrawRect/DrawAdvancedText and
-- cursor-area calculations here.
--
-- Reproducing that verbatim would defeat the purpose of a beginner rewrite.
--
-- This fallback keeps legacy mode closable and clearly tells the developer
-- where the exact original renderer lives.
--
-- If your production server actively uses legacy inventory, copy the legacy
-- renderer section from inventory_full_cleaned_reference.lua or port it
-- separately into named rendering helpers.
---------------------------------------------------------------------------

-- === HELPER FUNCTION: legacyInventoryTick() ===
local function legacyInventoryTick()
    CMG.setInGUI(true)

    DrawRect(
        0.5,
        0.5,
        0.58,
        0.24,
        0,
        0,
        0,
        180
    )

    DrawAdvancedText(
        0.60,
        0.42,
        0.005,
        0.0028,
        0.5,

        "CMG INVENTORY - LEGACY MODE",

        255,
        255,
        255,
        255,

        CMG.getFontId(
            "Akrobat-ExtraBold"
        ),

        0
    )

    DrawAdvancedText(
        0.60,
        0.47,
        0.005,
        0.0028,
        0.35,

        "Readable rewrite: use modern inventory or exact cleaned reference for old renderer.",

        255,
        255,
        255,
        255,

        4,
        0
    )

    DrawAdvancedText(
        0.60,
        0.52,
        0.005,
        0.0028,
        0.35,

        "[Press L or ESC to close]",

        255,
        255,
        255,
        255,

        4,
        0
    )

    if IsDisabledControlJustReleased(
        0,
        200
    )
    then
        CMG.setDrawingInventoryUI(
            false
        )
    end
end

---------------------------------------------------------------------------
-- 45. MAIN INVENTORY TICK
---------------------------------------------------------------------------

-- === HELPER FUNCTION: inventoryTick() ===
local function inventoryTick()
    if Inventory.secondaryItems then
        closeIfTooFarFromSecondary()
    end

    if not Inventory.isOpen then
        return
    end

    ---------------------------------------------------------------
    -- Health <= 102 is treated as dead/invalid for inventory.
    ---------------------------------------------------------------

    if GetEntityHealth(
        PlayerPedId()
    ) <= 102
    then
        tellServerInventoryClosed()

        CMG.setDrawingInventoryUI(
            false
        )

        return
    end

    if CMG.isNewPlayer() then
        drawNativeNotification(
            "Press ~INPUT_3008C430~ to toggle the inventory."
        )
    end

    if Inventory.legacyEnabled then
        legacyInventoryTick()
    else
        modernInventoryTick()
    end
end

CMG.createThreadOnTick(
    inventoryTick,
    "Inventory UI"
)

---------------------------------------------------------------------------
-- 46. LEGACY INVENTORY SETTING
---------------------------------------------------------------------------

function CMG.setLegacyInventoryEnabled(
    enabled
)
    enabled =
        enabled == true

    if Inventory.isOpen then
        CMG.setDrawingInventoryUI(
            false
        )
    end

    SetResourceKvp(
        "cmg_legacy_inventory",
        enabled
            and "1"
            or "0"
    )

    Inventory.legacyEnabled =
        enabled
end

-- === HELPER FUNCTION: CMG.isLegacyInventoryEnabled() ===
function CMG.isLegacyInventoryEnabled()
    return
        Inventory.legacyEnabled
end

---------------------------------------------------------------------------
-- 47. BUSINESS INVENTORY FILTER
---------------------------------------------------------------------------

function CMG.setInventoryBusinessCb(
    callback
)
    Inventory.businessCanStoreItem =
        callback
end

---------------------------------------------------------------------------
-- 48. TEMPORARILY DISABLE INVENTORY TRANSFERS
---------------------------------------------------------------------------

function CMG.setInventoryTransferDisabled(
    disabled
)
    Inventory.transfersDisabled =
        disabled == true
end

---------------------------------------------------------------------------
-- 49. INVENTORY KNEEL ANIMATION
---------------------------------------------------------------------------

local inventoryAnimRunning =
    false

local INVENTORY_ANIM = {
    dictionary =
        "amb@medic@standing@kneel@base",

    name =
        "base",
}

RegisterNetEvent(
    EVENTS.PLAY_INVENTORY_KNEEL_ANIMATION
)

AddEventHandler(
    EVENTS.PLAY_INVENTORY_KNEEL_ANIMATION,
    function()
        if inventoryAnimRunning then
            return
        end

        inventoryAnimRunning =
            true

        tCMG.setCanAnim(
            false
        )

        while Inventory.isOpen do
            local ped =
                PlayerPedId()

            if not IsEntityPlayingAnim(
                ped,
                INVENTORY_ANIM.dictionary,
                INVENTORY_ANIM.name,
                3
            )
            then
                CMG.loadAnimDict(
                    INVENTORY_ANIM.dictionary
                )

                TaskPlayAnim(
                    ped,

                    INVENTORY_ANIM.dictionary,
                    INVENTORY_ANIM.name,

                    2.0,
                    -2.0,

                    -1,

                    1,

                    1.0,

                    false,
                    false,
                    false
                )

                RemoveAnimDict(
                    INVENTORY_ANIM.dictionary
                )
            end

            Wait(0)
        end

        local ped =
            PlayerPedId()

        if IsEntityPlayingAnim(
            ped,
            INVENTORY_ANIM.dictionary,
            INVENTORY_ANIM.name,
            3
        )
        then
            StopAnimTask(
                ped,
                INVENTORY_ANIM.dictionary,
                INVENTORY_ANIM.name,
                1.0
            )
        end

        tCMG.setCanAnim(
            true
        )

        inventoryAnimRunning =
            false
    end
)

---------------------------------------------------------------------------
-- 50. SIMPLE USER LIST PROMPT
---------------------------------------------------------------------------
--
-- This is used by the legacy "give item" flow.
---------------------------------------------------------------------------

local UserListPrompt = {
    active = false,
    entries = nil,
    selectedKey = nil,

    position =
        vector2(
            0.105,
            0.302
        ),
}

-- === HELPER FUNCTION: CMG.isUserListPromptActive() ===
function CMG.isUserListPromptActive()
    return
        UserListPrompt.entries
        ~= nil
end

-- === HELPER FUNCTION: drawUserListPrompt() ===
local function drawUserListPrompt()
    if not UserListPrompt.entries then
        return
    end

    DrawRect(
        UserListPrompt.position.x,
        UserListPrompt.position.y - 0.029,
        0.14,
        0.007,
        0,
        168,
        255,
        150
    )

    local row = 0

    for key, name in pairs(
        UserListPrompt.entries
    ) do
        local y =
            UserListPrompt.position.y
            + (
                row
                * 0.035
            )

        DrawAdvancedText(
            UserListPrompt.position.x + 0.0325,
            y + 0.005,
            0.005,
            0.0028,
            0.366,

            string.format(
                "[%s] %s",
                key,
                name
            ),

            255,
            255,
            255,
            255,

            4,
            1
        )

        if CursorInAreaRect(
            UserListPrompt.position.x,
            y,
            0.13,
            0.03
        )
        then
            DrawRect(
                UserListPrompt.position.x,
                y,
                0.13,
                0.03,
                0,
                168,
                255,
                150
            )

            drawNearbyPlayerMarker(
                key
            )

            if IsControlJustPressed(
                0,
                329
            )
                or IsDisabledControlJustPressed(
                    0,
                    329
                )
            then
                UserListPrompt.selectedKey =
                    key

                UserListPrompt.active =
                    false

                break
            end
        else
            DrawRect(
                UserListPrompt.position.x,
                y,
                0.13,
                0.03,
                0,
                0,
                0,
                225
            )
        end

        row =
            row + 1
    end

    DisableControlAction(
        0,
        202,
        true
    )

    if IsDisabledControlJustReleased(
        0,
        202
    )
        or not Inventory.isOpen
    then
        UserListPrompt.active =
            false
    end
end

CMG.createThreadOnTick(
    drawUserListPrompt,
    "User List Prompt"
)

-- === HELPER FUNCTION: tCMG.promptUserList(entries) ===
function tCMG.promptUserList(entries)
    if UserListPrompt.entries then
        return
    end

    UserListPrompt.entries =
        entries

    UserListPrompt.active =
        true

    UserListPrompt.selectedKey =
        nil

    while UserListPrompt.active do
        Wait(0)
    end

    UserListPrompt.entries =
        nil

    return
        UserListPrompt.selectedKey
end

---------------------------------------------------------------------------
-- 51. VISUAL ITEM HAND-OVER ANIMATION
---------------------------------------------------------------------------
--
-- The server can tell two clients to show a temporary object moving from
-- one player's hand to another player's hand.
---------------------------------------------------------------------------

local SPECIAL_HANDOVER_WEAPONS = {
    musket =
        1654440677,

    combatmg =
        2144741730,
}

local DEFAULT_WEAPON_FOR_CLASS = {
    Melee =
        -1786099057,

    Pistol =
        453432689,

    SMG =
        736523883,

    AR =
        -1074790547,

    Heavy =
        -1634596898,
}

local function animateHandedObject(
    fromServerId,
    toServerId,
    createObjectAt
)
    local fromPlayer =
        GetPlayerFromServerId(
            fromServerId
        )

    local toPlayer =
        GetPlayerFromServerId(
            toServerId
        )

    if fromPlayer == -1
        or toPlayer == -1
    then
        return
    end

    local fromPed =
        GetPlayerPed(
            fromPlayer
        )

    local toPed =
        GetPlayerPed(
            toPlayer
        )

    if fromPed == 0
        or toPed == 0
    then
        return
    end

    local fromHand =
        GetPedBoneIndex(
            fromPed,
            57005
        )

    local toHand =
        GetPedBoneIndex(
            toPed,
            57005
        )

    if fromHand == -1
        or toHand == -1
    then
        return
    end

    local startCoords =
        GetWorldPositionOfEntityBone(
            fromPed,
            fromHand
        )

    local object =
        createObjectAt(
            startCoords
        )

    if object == 0 then
        return
    end

    FreezeEntityPosition(
        object,
        true
    )

    SetEntityCollision(
        object,
        false,
        false
    )

    local initialTargetCoords =
        GetWorldPositionOfEntityBone(
            toPed,
            toHand
        )

    local initialDistance =
        #(
            GetEntityCoords(
                object,
                true
            )
            - initialTargetCoords
        )

    local startedAt =
        GetGameTimer()

    while true do
        local progress =
            math.min(
                1.0,

                (
                    GetGameTimer()
                    - startedAt
                )
                / 1500.0
            )

        if progress >= 1.0 then
            break
        end

        if not DoesEntityExist(
            fromPed
        )
            or not DoesEntityExist(
                toPed
            )
        then
            break
        end

        local sourceCoords =
            GetEntityCoords(
                fromPed,
                true
            )

        local targetCoords =
            GetWorldPositionOfEntityBone(
                toPed,
                toHand
            )

        local distance =
            #(
                sourceCoords
                - targetCoords
            )

        local remaining =
            math.min(
                distance,
                initialDistance
                - (
                    progress
                    * initialDistance
                )
            )

        local direction =
            norm(
                sourceCoords
                - targetCoords
            )

        local position =
            targetCoords
            + (
                direction
                * remaining
            )

        SetEntityCoordsNoOffset(
            object,

            position.x,
            position.y,
            position.z,

            true,
            true,
            true
        )

        Wait(0)
    end

    DeleteEntity(
        object
    )
end

---------------------------------------------------------------------------
-- 52. VISUAL WEAPON HAND-OVER
---------------------------------------------------------------------------

RegisterNetEvent(
    EVENTS.SHOW_WEAPON_HANDOVER
)

AddEventHandler(
    EVENTS.SHOW_WEAPON_HANDOVER,
    function(
        fromServerId,
        toServerId,
        weaponClass,
        specialWeaponName
    )
        local weaponHash =
            SPECIAL_HANDOVER_WEAPONS[
                specialWeaponName
            ]

        if not weaponHash then
            weaponHash =
                DEFAULT_WEAPON_FOR_CLASS[
                    weaponClass
                ]
        end

        if not weaponHash then
            weaponHash =
                DEFAULT_WEAPON_FOR_CLASS.Pistol
        end

        animateHandedObject(
            fromServerId,
            toServerId,

            function(coords)
                CMG.loadWeaponAsset(
                    weaponHash
                )

                return
                    CreateWeaponObject(
                        weaponHash,
                        0,

                        coords.x,
                        coords.y,
                        coords.z,

                        true,
                        1.0,
                        false
                    )
            end
        )
    end
)

---------------------------------------------------------------------------
-- 53. VISUAL NORMAL OBJECT HAND-OVER
---------------------------------------------------------------------------

RegisterNetEvent(
    EVENTS.SHOW_OBJECT_HANDOVER
)

AddEventHandler(
    EVENTS.SHOW_OBJECT_HANDOVER,
    function(
        fromServerId,
        toServerId,
        modelHash
    )
        animateHandedObject(
            fromServerId,
            toServerId,

            function(coords)
                CMG.loadModel(
                    modelHash
                )

                return
                    CreateObjectNoOffset(
                        modelHash,

                        coords.x,
                        coords.y,
                        coords.z,

                        false,
                        false,
                        false
                    )
            end
        )
    end
)

---------------------------------------------------------------------------
-- 54. BEGINNER WALKTHROUGH
---------------------------------------------------------------------------
--
-- Start here if you are new to FiveM Lua:
--
-- 1. Player presses L.
--
-- 2. toggleInventoryCommand() checks:
--      - Spelling Bee isn't active
--      - keyboard is being used
--      - player isn't dead
--      - player isn't handcuffed
--      - inventory isn't server-blocked
--      - restart lock isn't active
--
-- 3. CMG.setDrawingInventoryUI(true) opens either:
--      - modern NUI, or
--      - legacy inventory.
--
-- 4. Server sends event 96db39f973 with the player's inventory.
--
-- 5. setInventorySide("PRIMARY", ...) converts raw item arrays into:
--
--      {
--          name = "...",
--          itemId = "...",
--          amount = 5,
--          combinedMass = 2.5
--      }
--
-- 6. If the player opens a trunk/chest/house/player inventory, event
--    e669d94aae sends the SECONDARY inventory.
--
-- 7. The NUI sends commands such as:
--
--      use
--      use_all
--      move
--      move_all
--      give
--      give_all
--      drop
--      drop_all
--      equip_all
--      loot_all
--      transfer_all
--      store
--      store_all
--
-- 8. Those commands call the small readable action functions above.
--
-- 9. closeIfTooFarFromSecondary() prevents the player from walking away
--    while still accessing a remote trunk/house/player inventory.
--
-- 10. Closing the inventory:
--      - clears the secondary inventory
--      - clears the give-player popup
--      - removes NUI focus
--      - tells the server through 72490db2b8.
--
-- That is the core inventory system.
---------------------------------------------------------------------------
