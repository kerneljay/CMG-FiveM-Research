--[[
    LEVEL 1 BEGINNER GUIDE — Store
    ===================================

    File: cmg/prod/client/core/cl_store.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: core player/framework behaviour, specifically the Store feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 18
      * Background threads: 1
      * Always-running loops: 0
      * Commands: store
      * Incoming network events: c0823e196e, 7186a02c28, 46e04ab78a, 2d25483829, 7fc7111a60, 3355341629, de6c00047f, f28f82d7c9, 8868f548de, 3496b19fd4
      * Local event handlers: 919aefda0c, CMG:onClientSpawn
      * Server events sent: 7920f0299e, 39e37ff016, dc21aa19f9, 0ddb1b6e9d, 0ee232fdca, 6d07788b0f, 80f8eda00b, 965a575cfd, 51208becbd
      * NUI callbacks: none found by static scan
      * Modules/config loaded: cfg/cfg_store

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
    CMG Store / Donation Inventory Client
    ======================================

    Beginner overview:
      /store opens the player's Store Inventory.

      The SERVER owns the real store packages. Each package normally contains:
        uuid      = unique package ID
        item      = key into cfg_store.items
        metadata  = extra information saved with the package

      cfg_store.items[itemKey] tells the client:
        name
        description
        metadataFormat / metadataFields
        manuallyRedeemable
        canTransfer
        argsTemplate
        and other redeem rules

      This client lets the player:
        * inspect packages
        * redeem packages
        * transfer a package to another player
        * copy the package code/UUID
        * give a package a LOCAL custom name
        * permanently delete a package
        * choose a vehicle/garage when a vehicle reward requires it
        * preview some vehicles
        * buy extra lockslots

      Developer-only vehicle testing is also kept in a separate section.

    IMPORTANT:
      The hash-looking server event names are intentionally unchanged.
      Some server-sent values have neutral names where this client does not
      explain their exact server-side meaning.
]]

local storeConfig =
    CMG.loadModule("cfg/cfg_store")

if not storeConfig then
    return
end


-- ============================================================
-- STORE RUNTIME STATE
-- ============================================================

-- storePackages[uuid] = package data sent by server.
local storePackages = {}

-- Additional server-sent data used while redeeming vehicle packages.
local vehicleRedeemData = {}

local selectedPackageUuid = nil
local redeemArguments = {}
local selectedItemConfig = nil

-- Rank string displayed at the top of the store.
local storeRank = nil

-- Local-only custom names:
-- customPackageNames[uuid] = "My Name"
local customPackageNames = {}

-- Server-sent garage/vehicle tables.
local garageRedeemOptions = {}
local ownedVehicleRedeemData = {}

local selectedGarageType = nil
local selectedVehicleModel = nil
local selectedVehicleDisplayName = nil

-- Lockslot / vehicle selection server state.
local selectedVehicleIndex = 0
local vehicleSelectionEntries = {}

-- Store testing / preview.
local inStoreTesting = false
local previewVehicle = 0
local previewBucket = nil

-- XP boost shown in the store header.
local xpBoostMultiplier = 1.0
local xpBoostExpiresText = "N/A"


-- ============================================================
-- LOCAL CUSTOM PACKAGE NAMES
-- ============================================================

local CUSTOM_NAME_KVP =
    "cmg_customStoreNameUUIDs"

-- === HELPER FUNCTION: saveCustomPackageNames() ===
local function saveCustomPackageNames()
    SetResourceKvp(
        CUSTOM_NAME_KVP,
        json.encode(customPackageNames)
    )
end

-- === HELPER FUNCTION: loadCustomPackageNames() ===
local function loadCustomPackageNames()
    local raw =
        GetResourceKvpString(
            CUSTOM_NAME_KVP
        )

    if not raw then
        return
    end

    local decoded = json.decode(raw)

    if type(decoded) == "table" then
        customPackageNames = decoded
    end
end

-- === BACKGROUND THREAD: this code runs independently; check its Wait() calls carefully ===
Citizen.CreateThread(
    loadCustomPackageNames
)


-- ============================================================
-- MENUS
-- ============================================================

local function addMenu(
    name,
    subtitle,
    parentName
)
    local menu

    if parentName then
        menu = RageUI.CreateSubMenu(
            RMenu:Get("store", parentName),
            "",
            subtitle,
            CMG.getRageUIMenuWidth(),
            CMG.getRageUIMenuHeight(),
            "cmg_storeui",
            "cmg_storeui"
        )
    else
        menu = RageUI.CreateMenu(
            "",
            subtitle,
            CMG.getRageUIMenuWidth(),
            CMG.getRageUIMenuHeight(),
            "cmg_storeui",
            "cmg_storeui"
        )
    end

    RMenu.Add("store", name, menu)
    return RMenu:Get("store", name)
end

local mainMenu =
    addMenu("mainmenu", "Inventory")

local infoMenu =
    addMenu("info", "Information", "mainmenu")

local redeemMenu =
    addMenu("redeem", "Redeem", "info")

local vehicleListMenu =
    addMenu(
        "vehicleList",
        "Vehicles",
        "redeem"
    )

local vehicleListInnerMenu =
    addMenu(
        "vehicleListInner",
        "Vehicles",
        "vehicleList"
    )

local vehicleSelectionMenu =
    addMenu(
        "vehicleSelection",
        "Vehicle Options",
        "vehicleList"
    )

local lockslotsMenu =
    addMenu(
        "lockslots",
        "Purchase Lockslot",
        "mainmenu"
    )

local confirmDeleteMenu =
    addMenu(
        "confirmDelete",
        "~r~Are you sure?",
        "info"
    )


-- ============================================================
-- PACKAGE HELPERS
-- ============================================================

-- === HELPER FUNCTION: getSelectedPackage() ===
local function getSelectedPackage()
    if not selectedPackageUuid then
        return nil
    end

    return
        storePackages[
            selectedPackageUuid
        ]
end


-- === HELPER FUNCTION: getItemConfig(package) ===
local function getItemConfig(package)
    if not package then
        return nil
    end

    return
        storeConfig.items[
            package.item
        ]
end


local function getPackageDisplayName(
    uuid,
    package
)
    local custom =
        customPackageNames[uuid]

    if type(custom) == "string"
        and custom ~= "" then
        return custom
    end

    local item =
        getItemConfig(package)

    if item and item.name then
        return item.name
    end

    return tostring(uuid)
end


-- === HELPER FUNCTION: sortedPackageEntries() ===
local function sortedPackageEntries()
    local entries = {}

    for uuid, package
        in pairs(storePackages) do

        table.insert(
            entries,
            {
                uuid = uuid,
                package = package,
                label =
                    getPackageDisplayName(
                        uuid,
                        package
                    )
            }
        )
    end

    table.sort(
        entries,
        function(a, b)
            return
                string.lower(a.label)
                < string.lower(b.label)
        end
    )

    return entries
end


-- === HELPER FUNCTION: resetRedeemState() ===
local function resetRedeemState()
    redeemArguments = {}
    selectedItemConfig = nil
    selectedGarageType = nil
    selectedVehicleModel = nil
    selectedVehicleDisplayName = nil
    selectedVehicleIndex = 0
end


-- ============================================================
-- METADATA DISPLAY
-- ============================================================

local function drawPackageMetadata(
    package,
    itemConfig
)
    if not itemConfig.metadataFormat
        or not itemConfig.metadataFields then
        return
    end

    local values = {}

    for _, fieldName
        in pairs(
            itemConfig.metadataFields
        ) do

        table.insert(
            values,
            package.metadata
            and package.metadata[fieldName]
            or nil
        )
    end

    RageUI.Separator(
        "~g~" ..
        string.format(
            itemConfig.metadataFormat,
            table.unpack(values)
        )
    )
end


-- ============================================================
-- REDEEM ARGUMENT EDITING
-- ============================================================

-- argsTemplate entries are server/config-driven.
-- The client only needs a generic way to request text/numeric/list values.

-- === HELPER FUNCTION: drawRedeemArgument(arg) ===
local function drawRedeemArgument(arg)
    local current =
        redeemArguments[arg.field]

    local rightLabel =
        current ~= nil
        and tostring(current)
        or (arg.emptyText or "")

    RageUI.ButtonWithStyle(
        arg.name or arg.field,
        arg.description or "",
        {
            RightLabel = rightLabel
        },
        true,
        function(_, _, selected)
            if not selected then
                return
            end

            CMG.clientPrompt(
                arg.name or "Enter value",
                current and tostring(current)
                    or "",
                function(value)
                    if value == nil then
                        return
                    end

                    if arg.maxLength then
                        value =
                            string.sub(
                                value,
                                1,
                                arg.maxLength
                            )
                    end

                    if arg.minLength
                        and #value < arg.minLength then

                        notify(
                            "~r~Input must be " ..
                            tostring(arg.minLength) ..
                            " characters or greater."
                        )
                        return
                    end

                    if arg.maxLength
                        and #value > arg.maxLength then

                        notify(
                            "~r~Input must be " ..
                            tostring(arg.maxLength) ..
                            " characters or less."
                        )
                        return
                    end

                    redeemArguments[
                        arg.field
                    ] = value
                end
            )
        end
    )
end


local function buildRedeemArguments(
    itemConfig
)
    redeemArguments = {}

    for _, arg
        in pairs(
            itemConfig.argsTemplate or {}
        ) do

        if arg.default ~= nil then
            redeemArguments[
                arg.field
            ] = arg.default
        end
    end
end


local function redeemArgumentsAreValid(
    itemConfig
)
    for _, arg
        in pairs(
            itemConfig.argsTemplate or {}
        ) do

        local value =
            redeemArguments[
                arg.field
            ]

        if arg.required
            and (
                value == nil
                or value == ""
            ) then
            return false
        end
    end

    return true
end


-- ============================================================
-- VEHICLE REDEEM HELPERS
-- ============================================================

local function openVehicleRedeem(
    itemConfig
)
    selectedItemConfig =
        itemConfig

    -- Ask server for currently-available garages/vehicles if needed.
    if table.count(
        vehicleSelectionEntries
    ) == 0 then
        TriggerServerEvent(
            "7920f0299e"
        )
    end
end


-- === HELPER FUNCTION: drawVehicleGarageButtons() ===
local function drawVehicleGarageButtons()
    for garageName, garageData
        in pairs(
            vehicleSelectionEntries
            or {}
        ) do

        local accessible =
            garageData.access ~= false

        local description =
            accessible
            and ""
            or
            "You do not have access to this garage."

        RageUI.ButtonWithStyle(
            tostring(garageName),
            description,
            {
                RightLabel = "→→→"
            },
            accessible,
            function(_, _, selected)
                if selected then
                    selectedGarageType =
                        garageName

                    garageRedeemOptions =
                        garageData.vehicles
                        or garageData
                end
            end,
            vehicleListInnerMenu
        )
    end
end


-- === HELPER FUNCTION: drawVehicleButtons() ===
local function drawVehicleButtons()
    for modelName, vehicleData
        in pairs(
            garageRedeemOptions
            or {}
        ) do

        local displayName =
            type(vehicleData) == "table"
            and (
                vehicleData.name
                or vehicleData.label
            )
            or nil

        displayName =
            displayName
            or GetDisplayNameFromVehicleModel(
                GetHashKey(modelName)
            )
            or modelName

        RageUI.ButtonWithStyle(
            tostring(displayName),
            "Inventory size: " ..
            tostring(
                type(vehicleData) == "table"
                and (
                    vehicleData.capacity
                    or vehicleData.weight
                    or "?"
                )
                or "?"
            ) ..
            "kg",
            {RightLabel = "→→→"},
            true,
            function(_, _, selected)
                if selected then
                    selectedVehicleModel =
                        modelName

                    selectedVehicleDisplayName =
                        displayName
                end
            end,
            vehicleSelectionMenu
        )
    end
end


-- ============================================================
-- VEHICLE PREVIEW / STORE TESTING
-- ============================================================

-- === HELPER FUNCTION: stopVehiclePreview() ===
local function stopVehiclePreview()
    if previewVehicle ~= 0
        and DoesEntityExist(
            previewVehicle
        ) then

        DeleteEntity(
            previewVehicle
        )
    end

    previewVehicle = 0
    inStoreTesting = false
    previewBucket = nil

    -- Tell the server we have left the isolated vehicle-testing mode.
    TriggerServerEvent(
        "39e37ff016",
        false
    )

    RageUI.CloseAll()
end


-- === HELPER FUNCTION: CMG.isInStoreTesting() ===
function CMG.isInStoreTesting()
    return inStoreTesting
end


-- === HELPER FUNCTION: startVehiclePreview(modelName) ===
local function startVehiclePreview(modelName)
    if inStoreTesting then
        return
    end

    local modelHash =
        GetHashKey(modelName)

    if not IsModelInCdimage(modelHash)
        or not IsModelAVehicle(modelHash) then

        notify(
            "~r~Unable to preview this vehicle."
        )
        return
    end

    inStoreTesting = true

    -- The original server event toggles the isolated store-testing state.
    TriggerServerEvent(
        "39e37ff016",
        true
    )

    -- Keep the chosen model locally so the surrounding preview system can
    -- create/show it without confusing this with the store-inventory event.
    selectedVehicleModel = modelName
end


-- Server starts/authorises a preview and can provide whatever routing-bucket
-- value the framework needs. Exact server meaning is kept neutral.
RegisterNetEvent(
    "c0823e196e",
    function(bucket)
        previewBucket = bucket
    end
)


-- Existing framework event used to detect unexpected bucket changes.
AddEventHandler(
    "919aefda0c",
    function(newBucket)
        if previewBucket
            and newBucket ~= previewBucket then

            stopVehiclePreview()

            notify(
                "~r~Preview stopped due to unexpected change in bucket."
            )
        end
    end
)


-- ============================================================
-- MAIN STORE MENU
-- ============================================================

RageUI.CreateWhile(
    1.0,
    mainMenu,
    nil,
    function()
        RageUI.IsVisible(
            mainMenu,
            true,
            true,
            true,
            function()
                if storeRank then
                    RageUI.Separator(
                        "~g~Your rank is " ..
                        tostring(storeRank)
                    )
                end

                if xpBoostMultiplier > 1.0 then
                    RageUI.Separator(
                        string.format(
                            "~g~Current XP Boost is %s%% (until %s)",
                            math.floor(
                                (
                                    xpBoostMultiplier
                                    - 1.0
                                ) * 100
                            ),
                            xpBoostExpiresText
                        )
                    )
                end

                for _, entry
                    in ipairs(
                        sortedPackageEntries()
                    ) do

                    RageUI.ButtonWithStyle(
                        entry.label,
                        "",
                        {RightLabel = "→→→"},
                        true,
                        function(_, _, selected)
                            if selected then
                                if selectedPackageUuid
                                    ~= entry.uuid then
                                    resetRedeemState()
                                end

                                selectedPackageUuid =
                                    entry.uuid
                            end
                        end,
                        infoMenu
                    )
                end
            end,
            function()
            end
        )


        -- ----------------------------------------------------
        -- PACKAGE INFORMATION
        -- ----------------------------------------------------

        RageUI.IsVisible(
            infoMenu,
            true,
            true,
            true,
            function()
                local package =
                    getSelectedPackage()

                if not package then
                    RageUI.CloseAll()
                    return
                end

                local itemConfig =
                    getItemConfig(package)

                if not itemConfig then
                    RageUI.Separator(
                        "~r~Unknown store item"
                    )
                    return
                end

                selectedItemConfig =
                    itemConfig

                RageUI.Separator(
                    "~y~" ..
                    tostring(itemConfig.name) ..
                    "   |   " ..
                    tostring(
                        selectedPackageUuid
                    )
                )

                drawPackageMetadata(
                    package,
                    itemConfig
                )

                if itemConfig.manuallyRedeemable then
                    RageUI.ButtonWithStyle(
                        "Redeem Item",
                        itemConfig.description or "",
                        {RightLabel = "→→→"},
                        true,
                        function(_, _, selected)
                            if selected then
                                buildRedeemArguments(
                                    itemConfig
                                )

                                TriggerServerEvent(
                                    "dc21aa19f9"
                                )
                            end
                        end,
                        redeemMenu
                    )
                else
                    RageUI.Button(
                        "Redeem Item",
                        itemConfig.description or "",
                        false,
                        function()
                        end
                    )
                end

                if itemConfig.canTransfer then
                    RageUI.ButtonWithStyle(
                        "Sell To Player",
                        "This will transfer the entire package, including any redeemable content, to the specified player.",
                        {RightLabel = "→→→"},
                        true,
                        function(_, _, selected)
                            if not selected then
                                return
                            end

                            if not tCMG.isInGreenzone(
                                false
                            ) then
                                notify(
                                    "~r~You must be in a greenzone to sell."
                                )
                                return
                            end

                            CMG.clientPrompt(
                                "Player ID",
                                "",
                                function(targetId)
                                    if targetId
                                        and targetId ~= "" then

                                        TriggerServerEvent(
                                            "0ddb1b6e9d",
                                            selectedPackageUuid,
                                            tonumber(targetId)
                                        )
                                    end
                                end
                            )
                        end
                    )
                end

                RageUI.ButtonWithStyle(
                    "Copy Code to Clipboard",
                    "Copies package code into your clipboard.",
                    {RightLabel = "→→→"},
                    true,
                    function(_, _, selected)
                        if selected then
                            CMG.copyToClipboard(
                                tostring(
                                    selectedPackageUuid
                                )
                            )

                            notify(
                                string.format(
                                    "~g~Copied %s into your clipboard!",
                                    tostring(
                                        selectedPackageUuid
                                    )
                                )
                            )
                        end
                    end
                )

                RageUI.ButtonWithStyle(
                    "Assign Custom Name",
                    "Assigns a custom name to this item. This name is only visible to you and is not transferred when sold or visible by donation support.",
                    {RightLabel = "→→→"},
                    true,
                    function(_, _, selected)
                        if not selected then
                            return
                        end

                        CMG.clientPrompt(
                            "Enter custom name (leave blank to reset)",
                            customPackageNames[
                                selectedPackageUuid
                            ] or "",
                            function(name)
                                if not name
                                    or #name <= 1 then
                                    customPackageNames[
                                        selectedPackageUuid
                                    ] = nil
                                else
                                    customPackageNames[
                                        selectedPackageUuid
                                    ] =
                                        string.sub(
                                            name,
                                            1,
                                            50
                                        )
                                end

                                saveCustomPackageNames()
                            end
                        )
                    end
                )

                RageUI.ButtonWithStyle(
                    "~r~Delete Item",
                    "Permanently removes this item from your store. This cannot be undone.",
                    {RightLabel = "→→→"},
                    true,
                    function()
                    end,
                    confirmDeleteMenu
                )
            end,
            function()
            end
        )


        -- ----------------------------------------------------
        -- DELETE CONFIRMATION
        -- ----------------------------------------------------

        RageUI.IsVisible(
            confirmDeleteMenu,
            true,
            true,
            true,
            function()
                RageUI.Separator(
                    "~r~This cannot be undone."
                )

                RageUI.ButtonWithStyle(
                    "No",
                    "",
                    {RightLabel = "→→→"},
                    true,
                    function()
                    end,
                    infoMenu
                )

                RageUI.ButtonWithStyle(
                    "Yes",
                    "",
                    {RightLabel = "→→→"},
                    true,
                    function(_, _, selected)
                        if selected
                            and selectedPackageUuid then

                            TriggerServerEvent(
                                "0ee232fdca",
                                selectedPackageUuid
                            )

                            customPackageNames[
                                selectedPackageUuid
                            ] = nil

                            saveCustomPackageNames()

                            selectedPackageUuid = nil
                        end
                    end,
                    mainMenu
                )
            end,
            function()
            end
        )


        -- ----------------------------------------------------
        -- GENERIC REDEEM ARGUMENTS
        -- ----------------------------------------------------

        RageUI.IsVisible(
            redeemMenu,
            true,
            true,
            true,
            function()
                local package =
                    getSelectedPackage()

                local itemConfig =
                    package
                    and getItemConfig(package)

                if not package
                    or not itemConfig then
                    return
                end

                for _, arg
                    in pairs(
                        itemConfig.argsTemplate
                        or {}
                    ) do
                    drawRedeemArgument(arg)
                end

                if itemConfig.vehicleList then
                    RageUI.ButtonWithStyle(
                        "Vehicles",
                        "",
                        {RightLabel = "→→→"},
                        true,
                        function(_, _, selected)
                            if selected then
                                openVehicleRedeem(
                                    itemConfig
                                )
                            end
                        end,
                        vehicleListMenu
                    )
                end

                RageUI.ButtonWithStyle(
                    "~g~Redeem " ..
                    tostring(itemConfig.name),
                    "",
                    {RightLabel = "→→→"},
                    true,
                    function(_, _, selected)
                        if not selected then
                            return
                        end

                        if not redeemArgumentsAreValid(
                            itemConfig
                        ) then

                            notify(
                                "~r~Unable to redeem, one or more argument is invalid."
                            )
                            return
                        end

                        TriggerServerEvent(
                            "6d07788b0f",
                            selectedPackageUuid,
                            redeemArguments
                        )
                    end
                )
            end,
            function()
            end
        )


        -- ----------------------------------------------------
        -- VEHICLE REDEEM MENUS
        -- ----------------------------------------------------

        RageUI.IsVisible(
            vehicleListMenu,
            true,
            true,
            true,
            drawVehicleGarageButtons,
            function()
            end
        )

        RageUI.IsVisible(
            vehicleListInnerMenu,
            true,
            true,
            true,
            drawVehicleButtons,
            function()
            end
        )

        RageUI.IsVisible(
            vehicleSelectionMenu,
            true,
            true,
            true,
            function()
                RageUI.Separator(
                    tostring(
                        selectedVehicleDisplayName
                        or selectedVehicleModel
                        or "Vehicle"
                    )
                )

                RageUI.ButtonWithStyle(
                    "Select Vehicle",
                    "",
                    {RightLabel = "→→→"},
                    true,
                    function(_, _, selected)
                        if selected
                            and selectedVehicleModel then

                            redeemArguments.vehicle =
                                selectedVehicleModel

                            redeemArguments.garage =
                                selectedGarageType

                            RageUI.Visible(
                                redeemMenu,
                                true
                            )
                        end
                    end,
                    redeemMenu
                )

                RageUI.ButtonWithStyle(
                    "Preview Vehicle",
                    "",
                    {RightLabel = "→→→"},
                    true,
                    function(_, _, selected)
                        if selected then
                            if selectedVehicleModel
                                and not inStoreTesting then

                                startVehiclePreview(
                                    selectedVehicleModel
                                )
                            else
                                notify(
                                    "~r~You can not preview right now."
                                )
                            end
                        end
                    end
                )
            end,
            function()
            end
        )


        -- ----------------------------------------------------
        -- LOCKSLOT MENU
        -- ----------------------------------------------------

        RageUI.IsVisible(
            lockslotsMenu,
            true,
            true,
            true,
            function()
                RageUI.Separator(
                    "Lockslot Price: £" ..
                    getMoneyStringFormatted(
                        storeConfig.lockslotPurchasePrice
                    )
                )

                RageUI.ButtonWithStyle(
                    "~y~Purchase Lockslot",
                    "",
                    {RightLabel = "→→→"},
                    true,
                    function(_, _, selected)
                        if selected then
                            TriggerServerEvent(
                                "80f8eda00b"
                            )
                        end
                    end
                )
            end,
            function()
            end
        )
    end
)


-- ============================================================
-- /STORE + SERVER STORE DATA
-- ============================================================

RegisterCommand(
    "store",
    function()
        RageUI.Visible(
            mainMenu,
            true
        )

        -- Refresh the inventory from the server.
        TriggerServerEvent(
            "965a575cfd"
        )
    end,
    false
)


-- Complete package list.
RegisterNetEvent(
    "7186a02c28",
    function(packages)
        storePackages =
            packages or {}
    end
)


-- Extra vehicle redeem data.
RegisterNetEvent(
    "46e04ab78a",
    function(data)
        vehicleRedeemData =
            data or {}
    end
)


-- Store rank/title shown in the header.
RegisterNetEvent(
    "2d25483829",
    function(rank)
        storeRank = rank
    end
)


-- Force-close store.
RegisterNetEvent(
    "7fc7111a60",
    function()
        RageUI.Visible(
            mainMenu,
            false
        )
    end
)


-- Server-provided garage/vehicle options.
RegisterNetEvent(
    "3355341629",
    function(data)
        vehicleSelectionEntries =
            data or {}
    end
)


-- Additional vehicle/package ownership data.
RegisterNetEvent(
    "de6c00047f",
    function(data)
        ownedVehicleRedeemData =
            data or {}
    end
)


-- Two neutral vehicle-selection values used by the old client.
RegisterNetEvent(
    "f28f82d7c9",
    function(selectedIndex, entries)
        selectedVehicleIndex =
            selectedIndex or 0

        vehicleSelectionEntries =
            entries or {}
    end
)


-- XP boost display state.
RegisterNetEvent(
    "8868f548de",
    function(multiplier, expiryText)
        xpBoostMultiplier =
            tonumber(multiplier) or 1.0

        xpBoostExpiresText =
            expiryText or "N/A"
    end
)


-- Celebration effect after successful store operations.
RegisterNetEvent(
    "3496b19fd4",
    function()
        CMG.loadPtfx(
            "scr_xs_celebration"
        )

        CMG.loadPtfx(
            "scr_rcpaparazzo1"
        )

        for _ = 1, 4 do
            local coords =
                CMG.getPlayerCoords()

            UseParticleFxAsset(
                "scr_xs_celebration"
            )

            StartParticleFxNonLoopedAtCoord(
                "scr_xs_confetti_burst",
                coords.x,
                coords.y,
                coords.z - 0.8,
                0.0,
                0.0,
                0.0,
                1.2,
                false,
                false,
                false
            )

            UseParticleFxAsset(
                "scr_rcpaparazzo1"
            )

            StartParticleFxNonLoopedAtCoord(
                "scr_mich4_firework_burst_spawn",
                coords.x,
                coords.y,
                coords.z,
                0.0,
                0.0,
                0.0,
                1.0,
                false,
                false,
                false
            )

            Wait(500)
        end

        RemoveNamedPtfxAsset(
            "scr_xs_celebration"
        )

        RemoveNamedPtfxAsset(
            "scr_rcpaparazzo1"
        )
    end
)


-- ============================================================
-- DEVELOPER VALIDATION
-- ============================================================

AddEventHandler(
    "CMG:onClientSpawn",
    function(userId, firstSpawn)
        if not firstSpawn
            or not CMG.isDevMode()
            or not CMG.isDeveloper(
                userId
            ) then
            return
        end

        local invalidModels = {}

        for modelName
            in pairs(
                storeConfig.vipCars
                or {}
            ) do

            if not IsModelValid(
                GetHashKey(modelName)
            ) then
                table.insert(
                    invalidModels,
                    modelName
                )
            end
        end

        for _, category
            in pairs(
                storeConfig.customCars
                or {}
            ) do

            for modelName in pairs(category) do
                if not IsModelValid(
                    GetHashKey(modelName)
                ) then
                    table.insert(
                        invalidModels,
                        modelName
                    )
                end
            end
        end

        TriggerServerEvent(
            "51208becbd",
            invalidModels
        )
    end
)


-- ============================================================
-- LOCKSLOT PURCHASE WORLD AREA
-- ============================================================

local lockslotCoords =
    storeConfig.lockslotPurchaseLocation

if lockslotCoords then
    tCMG.addMarker(
        lockslotCoords.x,
        lockslotCoords.y,
        lockslotCoords.z,
        1.0,
        1.0,
        1.0,
        0,
        0,
        255,
        100,
        50,
        27,
        false,
        false,
        true
    )

    CMG.createArea(
        "purchase_lockslot",
        lockslotCoords,
        2.0,
        2.0,
        function()
        end,
        function()
        end,
        function()
            drawNativeNotification(
                "Press ~INPUT_CONTEXT~ to open lockslot purchase menu"
            )

            if IsControlJustPressed(
                0,
                51
            ) then
                RageUI.Visible(
                    lockslotsMenu,
                    true
                )
            end
        end,
        {}
    )
end
