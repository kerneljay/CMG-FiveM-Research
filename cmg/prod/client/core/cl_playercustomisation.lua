--[[
    Player Customisation / Clothing Data Client
    ===========================================

    Beginner overview:
      This file is the low-level clothing engine used by the clothing menus.

      It does four main jobs:

        1. Read the player's current GTA clothing into a saveable table.
        2. Apply a saved clothing table back onto a ped.
        3. Migrate old V1 clothing saves into the newer V2 format.
        4. Enforce restricted/custom clothing ownership.

    V2 clothing format:
      {
          version = 2,
          build = <GTA build number>,
          modelHash = <ped model hash>,

          components = {
              [componentId] = {
                  collectionName = "...",
                  collectionIndex = 12,
                  textureIndex = 0
              }
          },

          props = {
              [propId] = {
                  collectionName = "...",
                  collectionIndex = 3,
                  textureIndex = 0
              }
          }
      }

    Useful GTA terms:
      component = clothing attached directly to the ped
                  (shirt, trousers, shoes, etc.)

      prop      = removable accessory
                  (hat, glasses, watch, etc.)

      collectionName
                = DLC/base-game clothing collection.

      collectionIndex
                = local drawable number inside that collection.

      textureIndex
                = colour/pattern variation of the drawable.

    Hashed event names are intentionally unchanged because the server probably
    sends those exact event names.
]]

local clothingConfig =
    CMG.loadModule("cfg/cfg_clothing")

local clothingMigrationLookup =
    CMG.loadJsonModule(
        "cfg/clothing/migration.json"
    )

local storeConfig =
    CMG.loadModule("cfg/cfg_store")


-- ============================================================
-- CONSTANTS / STATE
-- ============================================================

local CURRENT_CUSTOMISATION_VERSION = 2

local customisationSetup = false

-- Custom clothing access data sent by the server.
--
-- fullRestrictedItems[key] = true
--     This exact drawable+texture is a restricted/custom item.
--
-- fullAccessibleItems[key] = true
--     This player is allowed to wear that exact item.
--
-- restrictedDrawables[key] = true
-- accessibleDrawables[key] = true
--
-- restrictedTextures[drawableKey][texture] = true
-- accessibleTextures[drawableKey][texture] = true
local fullRestrictedItems = {}
local fullAccessibleItems = {}

local restrictedDrawables = {}
local accessibleDrawables = {}

local restrictedTextures = {}
local accessibleTextures = {}

-- Built once from cfg_store.customClothingSlotComponents.
--
-- customSlotByComponent[false][componentId] -> slot name
-- customSlotByComponent[true][propId]        -> slot name
local customSlotByComponent = nil

-- True while SetPlayerModel is actively replacing the player's ped.
local pedModelChanging = false

-- Used for a short grace period after SetPlayerModel.
local lastPedModelChangeAt = 0

-- Optional preset that should continuously stay applied.
local lockedPresetName = nil


-- ============================================================
-- CUSTOM CLOTHING LOOKUP KEYS
-- ============================================================

local function roundIndex(value)
    return math.floor((value or 0) + 0.5)
end


-- Exact item key: includes the texture.
local function makeClothingItemKey(
    collectionName,
    localIndex,
    textureIndex,
    gender,
    slot
)
    return string.format(
        "%s|%d|%d|%s|%s",
        collectionName or "",
        roundIndex(localIndex),
        roundIndex(textureIndex),
        gender or "",
        slot or ""
    )
end


-- Drawable key: ignores the texture.
local function makeClothingDrawableKey(
    collectionName,
    localIndex,
    gender,
    slot
)
    return string.format(
        "%s|%d|%s|%s",
        collectionName or "",
        roundIndex(localIndex),
        gender or "",
        slot or ""
    )
end


-- ============================================================
-- PLAYER GENDER
-- ============================================================

local function getGenderFromModel(modelHash)
    -- Standard GTA freemode male.
    if modelHash == 1885233650 then
        return "male"
    end

    -- Standard GTA freemode female.
    if modelHash == -1667301416 then
        return "female"
    end

    return nil
end


local function getCurrentGender()
    return getGenderFromModel(
        GetEntityModel(PlayerPedId())
    )
end


-- ============================================================
-- MAP GTA COMPONENT IDS TO CUSTOM-CLOTHING SLOT NAMES
-- ============================================================

local function buildCustomSlotMap()
    local result = {
        [false] = {}, -- normal components
        [true] = {}   -- props
    }

    local configuredSlots =
        storeConfig
        and storeConfig.customClothingSlotComponents
        or {}

    for slotName, data in pairs(configuredSlots) do
        if type(data) == "table"
            and type(data.componentId) == "number" then

            local isProp =
                data.isProp == true

            result[isProp][data.componentId] =
                slotName
        end
    end

    return result
end


local function getCustomSlot(componentId, isProp)
    if not customSlotByComponent then
        customSlotByComponent =
            buildCustomSlotMap()
    end

    return customSlotByComponent[
        isProp == true
    ][componentId]
end


function CMG.getCustomClothingSlotForComponent(
    componentId,
    isProp
)
    return getCustomSlot(
        componentId,
        isProp
    )
end


-- ============================================================
-- BUILD CUSTOM-CLOTHING ACCESS TABLES
-- ============================================================

-- Takes a server list of entries such as:
-- {
--   collectionName = "...",
--   localIndex = 4,
--   textureIndex = 1,
--   gender = "male",
--   slot = "tops"
-- }
--
-- and builds three faster lookup tables.
local function buildClothingAccessLookups(entries)
    local exactItems = {}
    local drawables = {}
    local texturesByDrawable = {}

    for _, item in ipairs(entries or {}) do
        if type(item) == "table"
            and type(item.collectionName) == "string"
            and type(item.localIndex) == "number"
            and type(item.textureIndex) == "number"
            and type(item.gender) == "string"
            and type(item.slot) == "string" then

            local itemKey =
                makeClothingItemKey(
                    item.collectionName,
                    item.localIndex,
                    item.textureIndex,
                    item.gender,
                    item.slot
                )

            exactItems[itemKey] = true

            local drawableKey =
                makeClothingDrawableKey(
                    item.collectionName,
                    item.localIndex,
                    item.gender,
                    item.slot
                )

            drawables[drawableKey] = true

            texturesByDrawable[drawableKey] =
                texturesByDrawable[drawableKey]
                or {}

            texturesByDrawable[drawableKey][
                roundIndex(item.textureIndex)
            ] = true
        end
    end

    return
        exactItems,
        drawables,
        texturesByDrawable
end


-- Server sends:
--   first list  = all restricted/custom clothing items
--   second list = items this player is allowed to use
RegisterNetEvent(
    "d580dacaa7",
    function(restrictedItems, playerAccessibleItems)
        fullRestrictedItems,
        restrictedDrawables,
        restrictedTextures =
            buildClothingAccessLookups(
                restrictedItems
            )

        fullAccessibleItems,
        accessibleDrawables,
        accessibleTextures =
            buildClothingAccessLookups(
                playerAccessibleItems
            )
    end
)


-- ============================================================
-- PUBLIC CUSTOM-CLOTHING ACCESS HELPERS
-- ============================================================

function CMG.canLocallyWearClothingItem(
    collectionName,
    localIndex,
    textureIndex,
    slot
)
    local gender =
        getCurrentGender()

    -- Custom-item restrictions only apply to freemode male/female peds
    -- and only when a custom slot name was supplied.
    if not gender
        or not slot
        or slot == "" then
        return true
    end

    local key =
        makeClothingItemKey(
            collectionName,
            localIndex,
            textureIndex,
            gender,
            slot
        )

    -- Normal/non-restricted item.
    if not fullRestrictedItems[key] then
        return true
    end

    -- Restricted item: only wearable if the server granted access.
    return fullAccessibleItems[key] == true
end


function CMG.isClothingDrawableLocked(
    collectionName,
    localIndex,
    slot
)
    local gender =
        getCurrentGender()

    if not gender
        or not slot
        or slot == "" then
        return false
    end

    local key =
        makeClothingDrawableKey(
            collectionName,
            localIndex,
            gender,
            slot
        )

    return restrictedDrawables[key] == true
end


function CMG.hasAccessibleCustomClothingDrawable(
    collectionName,
    localIndex,
    slot
)
    local gender =
        getCurrentGender()

    if not gender
        or not slot
        or slot == "" then
        return false
    end

    local key =
        makeClothingDrawableKey(
            collectionName,
            localIndex,
            gender,
            slot
        )

    return accessibleDrawables[key] == true
end


function CMG.hasAnyAccessibleCustomClothing()
    local gender =
        getCurrentGender()

    if not gender then
        return false
    end

    -- Drawable keys look like:
    -- collection|index|gender|slot
    for key in pairs(accessibleDrawables) do
        local _, _, keyGender =
            string.match(
                key,
                "^(.-)|(%-?%d+)|([^|]+)|"
            )

        if keyGender == gender then
            return true
        end
    end

    return false
end


function CMG.getLockedClothingTextureSet(
    collectionName,
    localIndex,
    slot
)
    local gender =
        getCurrentGender()

    if not gender
        or not slot
        or slot == "" then
        return {}
    end

    local key =
        makeClothingDrawableKey(
            collectionName,
            localIndex,
            gender,
            slot
        )

    return restrictedTextures[key] or {}
end


function CMG.getAccessibleClothingTextureSet(
    collectionName,
    localIndex,
    slot
)
    local gender =
        getCurrentGender()

    if not gender
        or not slot
        or slot == "" then
        return {}
    end

    local key =
        makeClothingDrawableKey(
            collectionName,
            localIndex,
            gender,
            slot
        )

    return accessibleTextures[key] or {}
end


function CMG.isPlayerCustomisationSetup()
    return customisationSetup
end


-- ============================================================
-- REMOVE RESTRICTED CLOTHING THE PLAYER DOES NOT OWN
-- ============================================================

local function removeUnownedRestrictedItems(customisation)
    if type(customisation) ~= "table" then
        return 0
    end

    local gender =
        getGenderFromModel(
            customisation.modelHash
        )

    if not gender then
        return 0
    end

    local removedCount = 0

    local function checkSection(section, isProp)
        if type(section) ~= "table" then
            return
        end

        for componentId, item in pairs(section) do
            if type(item) == "table"
                and type(item.collectionName) == "string"
                and type(item.collectionIndex) == "number"
                and type(item.textureIndex) == "number" then

                local slot =
                    getCustomSlot(
                        componentId,
                        isProp
                    )

                if slot then
                    local key =
                        makeClothingItemKey(
                            item.collectionName,
                            item.collectionIndex,
                            item.textureIndex,
                            gender,
                            slot
                        )

                    if fullRestrictedItems[key]
                        and not fullAccessibleItems[key] then

                        section[componentId] = nil
                        removedCount =
                            removedCount + 1
                    end
                end
            end
        end
    end

    checkSection(
        customisation.components,
        false
    )

    checkSection(
        customisation.props,
        true
    )

    return removedCount
end


-- ============================================================
-- COMPONENT-ID PARSER USED BY OLD V1 SAVES
-- ============================================================

-- V1 saves can use:
--   "p0" -> prop 0
--   "6"  -> component 6
local function parseLegacySlotId(value)
    if type(value) == "string"
        and string.sub(value, 1, 1) == "p" then

        return
            true,
            tonumber(string.sub(value, 2))
    end

    return
        false,
        tonumber(value)
end


-- ============================================================
-- CREATE AN EMPTY V2 CUSTOMISATION TABLE
-- ============================================================

local function createEmptyCustomisation(ped)
    local modelHash = 0

    if ped then
        modelHash =
            GetEntityModel(ped) or 0
    end

    return {
        version =
            CURRENT_CUSTOMISATION_VERSION,

        build =
            GetGameBuildNumber(),

        modelHash = modelHash,

        components = {},
        props = {}
    }
end


-- ============================================================
-- READ CURRENT PLAYER CLOTHING
-- ============================================================

function tCMG.getCustomization()
    local ped = PlayerPedId()

    local customisation =
        createEmptyCustomisation(ped)

    -- Components 0..11.
    for componentId = 0, 11 do
        local collectionName =
            GetPedDrawableVariationCollectionName(
                ped,
                componentId
            )

        if collectionName then
            customisation.components[
                componentId
            ] = {
                collectionName =
                    collectionName,

                collectionIndex =
                    _ENV[
                        "GetPedDrawableVariationCollectionLocalIndex"
                    ](
                        ped,
                        componentId
                    ),

                textureIndex =
                    GetPedTextureVariation(
                        ped,
                        componentId
                    )
            }
        end
    end

    -- Props 0..8.
    for propId = 0, 8 do
        local globalDrawableIndex =
            GetPedPropIndex(
                ped,
                propId
            )

        local collectionName =
            GetPedCollectionNameFromProp(
                ped,
                propId,
                globalDrawableIndex
            )

        if collectionName then
            customisation.props[propId] = {
                collectionName =
                    collectionName,

                collectionIndex =
                    GetPedCollectionLocalIndexFromProp(
                        ped,
                        propId,
                        globalDrawableIndex
                    ),

                textureIndex =
                    GetPedPropTextureIndex(
                        ped,
                        propId
                    )
            }
        end
    end

    return customisation
end


-- ============================================================
-- NORMALISE V2 TABLE KEYS
-- ============================================================

local function normaliseV2Customisation(customisation)
    customisation.components =
        table.indicies(
            customisation.components
        )

    customisation.props =
        table.indicies(
            customisation.props
        )

    return customisation
end


-- ============================================================
-- MIGRATE A V1 SAVE TO V2
-- ============================================================

local function migrateV1ToV2(oldCustomisation)
    local newCustomisation =
        createEmptyCustomisation(nil)

    local modelHash =
        oldCustomisation.modelhash

    if not modelHash
        and oldCustomisation.model then

        modelHash =
            GetHashKey(
                oldCustomisation.model
            )
    end

    if not modelHash then
        error(
            "Unable to obtain model hash whilst upgrading customisation from V1 to V2"
        )
    end

    assert(
        modelHash ~= 0,
        "Failed to migrate zero model hash whilst upgrading customisation from V1 to V2"
    )

    newCustomisation.modelHash =
        modelHash

    -- Find migration information for this ped model.
    local modelLookup = nil

    for _, lookup
        in pairs(
            clothingMigrationLookup or {}
        ) do

        if lookup.modelHash
            == modelHash then

            modelLookup = lookup
            break
        end
    end

    -- Some non-freemode/custom peds have no migration table.
    -- In that case we can still return a valid V2 shell.
    if not modelLookup then
        return newCustomisation
    end

    for rawSlotId, oldItem
        in pairs(oldCustomisation) do

        if rawSlotId ~= "model"
            and rawSlotId ~= "modelhash" then

            local slotId =
                tonumber(rawSlotId)
                or rawSlotId

            local isProp, componentId =
                parseLegacySlotId(slotId)

            if componentId then
                local sectionLookup =
                    isProp
                    and modelLookup.props
                    or modelLookup.components

                local destination =
                    isProp
                    and newCustomisation.props
                    or newCustomisation.components

                local componentLookup =
                    sectionLookup
                    and sectionLookup[
                        tostring(componentId)
                    ]

                local drawableLookup =
                    componentLookup
                    and componentLookup[
                        tostring(oldItem[1])
                    ]

                if drawableLookup then
                    destination[componentId] = {
                        collectionName =
                            drawableLookup[1],

                        collectionIndex =
                            drawableLookup[2],

                        textureIndex =
                            oldItem[2]
                    }
                end
            end
        end
    end

    return newCustomisation
end


function CMG.migrateClothingCustomisation(customisation)
    local version =
        customisation.version or 1

    if version == 2 then
        customisation =
            normaliseV2Customisation(
                customisation
            )
    end

    if version
        == CURRENT_CUSTOMISATION_VERSION then
        return customisation
    end

    local migrated

    if version == 1 then
        migrated =
            migrateV1ToV2(
                customisation
            )
    else
        error(
            "Unknown version found whilst trying to migrate clothing"
        )
    end

    -- Written recursively in the original so another migration step could
    -- be added later without changing call sites.
    return
        CMG.migrateClothingCustomisation(
            migrated
        )
end


-- ============================================================
-- APPLY A COMPLETE CUSTOMISATION TO THE LOCAL PLAYER
-- ============================================================

-- Parameters after customisation are intentionally described neutrally because
-- they are used as behaviour flags by other framework code:
--
-- forceModelChange:
--     Change the ped model even if the model hash already matches.
--
-- skipHealthRestore:
--     Do not restore the old health after SetPlayerModel.
--
-- keepMissingProps:
--     If true, prop slots absent from the customisation are not cleared.
function tCMG.setCustomization(
    customisation,
    forceModelChange,
    skipHealthRestore,
    keepMissingProps
)
    if not customisation then
        return
    end

    customisation =
        CMG.migrateClothingCustomisation(
            customisation
        )

    local removedCount =
        removeUnownedRestrictedItems(
            customisation
        )

    if removedCount > 0 then
        local grammar =
            removedCount == 1
            and "item was"
            or "items were"

        notify(
            string.format(
                "~r~%d locked clothing %s removed because you don't own them.",
                removedCount,
                grammar
            )
        )
    end

    if not CMG.loadModel(
        customisation.modelHash
    ) then
        print(
            "[CMG] Failed to load model",
            customisation.modelHash
        )
        return
    end

    local ped = PlayerPedId()

    local currentModel =
        GetEntityModel(ped)

    if currentModel
        ~= customisation.modelHash
        or forceModelChange then

        pedModelChanging = true

        local previousWeapons =
            CMG.getWeapons()

        local previousHealth =
            GetEntityHealth(ped)

        SetPlayerModel(
            PlayerId(),
            customisation.modelHash
        )

        CMG.forcePlayerInfoCacheRefresh()

        -- The very first customisation setup restores the cached framework
        -- weapon store. Later model changes restore whatever the ped had.
        if not customisationSetup then
            CMG.giveWeapons(
                CMG.getCachedWeaponStore(),
                true
            )

            customisationSetup = true
        else
            CMG.giveWeapons(
                previousWeapons,
                true
            )
        end

        SetEntityMaxHealth(
            PlayerPedId(),
            200
        )

        if skipHealthRestore == nil
            or skipHealthRestore == false then

            print(
                "[CMG] Customisation, setting health to ",
                previousHealth
            )

            tCMG.setHealth(
                previousHealth
            )
        end

        -- Framework/server refresh hooks preserved exactly.
        TriggerServerEvent(
            "f46b8e185c"
        )

        TriggerServerEvent(
            "195b53ce8c"
        )

        ped = PlayerPedId()
    else
        print(
            "[CMG] Same model detected, not changing model."
        )
    end

    SetModelAsNoLongerNeeded(
        customisation.modelHash
    )

    -- Apply components.
    for componentId, item
        in pairs(
            customisation.components or {}
        ) do

        if item.collectionName then
            SetPedCollectionComponentVariation(
                ped,
                componentId,
                item.collectionName,
                item.collectionIndex,
                item.textureIndex,
                0
            )
        end
    end

    -- Apply/clear props.
    for propId = 0, 8 do
        local item =
            customisation.props
            and customisation.props[propId]

        if item
            and item.collectionName
            and item.collectionIndex >= 0
            and item.textureIndex >= 0 then

            SetPedCollectionPropIndex(
                ped,
                propId,
                item.collectionName,
                item.collectionIndex,
                item.textureIndex,
                true
            )

        elseif not keepMissingProps then
            ClearPedProp(
                ped,
                propId
            )
        end
    end

    pedModelChanging = false
    lastPedModelChangeAt =
        GetGameTimer()
end


-- ============================================================
-- APPLY CLOTHING TO ANY PED WITHOUT CHANGING ITS MODEL
-- ============================================================

function tCMG.setPedCustomization(
    ped,
    customisation
)
    if not customisation then
        return
    end

    customisation =
        CMG.migrateClothingCustomisation(
            customisation
        )

    for componentId, item
        in pairs(
            customisation.components or {}
        ) do

        if item.collectionName then
            SetPedCollectionComponentVariation(
                ped,
                componentId,
                item.collectionName,
                item.collectionIndex,
                item.textureIndex,
                0
            )
        end
    end

    for propId = 0, 8 do
        local item =
            customisation.props
            and customisation.props[propId]

        if item
            and item.collectionName
            and item.collectionIndex >= 0
            and item.textureIndex >= 0 then

            SetPedCollectionPropIndex(
                ped,
                propId,
                item.collectionName,
                item.collectionIndex,
                item.textureIndex,
                true
            )
        end
    end
end


-- ============================================================
-- PED MODEL-CHANGE SAFETY FLAG
-- ============================================================

function CMG.isPedScriptGuidChanging()
    return
        pedModelChanging
        or (
            GetGameTimer()
            - lastPedModelChangeAt
            < 3000
        )
end


-- ============================================================
-- PRESET CLOTHING
-- ============================================================

function CMG.loadCustomisationPreset(
    presetName
)
    local preset =
        clothingConfig.presets[
            presetName
        ]

    assert(
        preset,
        string.format(
            "Preset %s does not exist.",
            presetName
        )
    )

    -- A preset may also force a specific ped model.
    if preset.model
        and GetEntityModel(
            PlayerPedId()
        ) ~= preset.model then

        CMG.loadModel(
            preset.model
        )

        SetPlayerModel(
            PlayerId(),
            preset.model
        )

        SetModelAsNoLongerNeeded(
            preset.model
        )

        Citizen.Wait(100)
    end

    local ped = PlayerPedId()

    for componentId, item
        in pairs(
            preset.components or {}
        ) do

        local globalDrawable =
            GetPedDrawableGlobalIndexFromCollection(
                ped,
                componentId,
                item.collectionName,
                item.localIndex
            )

        local currentDrawable =
            GetPedDrawableVariation(
                ped,
                componentId
            )

        local currentTexture =
            GetPedTextureVariation(
                ped,
                componentId
            )

        if currentDrawable ~= globalDrawable
            or currentTexture
                ~= item.textureIndex then

            SetPedComponentVariation(
                ped,
                componentId,
                globalDrawable,
                item.textureIndex,
                0
            )
        end
    end

    for propId, item
        in pairs(
            preset.props or {}
        ) do

        -- Newer preset format.
        if item.collectionName then
            SetPedCollectionPropIndex(
                ped,
                propId,
                item.collectionName,
                item.localIndex,
                item.textureIndex,
                true
            )

        -- Older preset array format:
        -- {drawableIndex, textureIndex, attachFlag}
        else
            SetPedPropIndex(
                ped,
                propId,
                item[1],
                item[2],
                item[3]
            )
        end
    end
end


function CMG.lockCustomisationPreset(
    presetName
)
    assert(
        clothingConfig.presets[
            presetName
        ],
        string.format(
            "Preset %s does not exist.",
            presetName
        )
    )

    CMG.loadCustomisationPreset(
        presetName
    )

    lockedPresetName =
        presetName
end


function CMG.unlockCustomisationPreset()
    lockedPresetName = nil
end


-- Re-apply a locked uniform/preset if another script tries to change it.
Citizen.CreateThread(function()
    while true do
        if lockedPresetName then
            local preset =
                clothingConfig.presets[
                    lockedPresetName
                ]

            if preset then
                local ped = PlayerPedId()
                local differs = false

                for componentId, item
                    in pairs(
                        preset.components or {}
                    ) do

                    local wantedDrawable =
                        GetPedDrawableGlobalIndexFromCollection(
                            ped,
                            componentId,
                            item.collectionName,
                            item.localIndex
                        )

                    if GetPedDrawableVariation(
                        ped,
                        componentId
                    ) ~= wantedDrawable
                        or GetPedTextureVariation(
                            ped,
                            componentId
                        ) ~= item.textureIndex then

                        differs = true
                        break
                    end
                end

                if not differs then
                    for propId, item
                        in pairs(
                            preset.props or {}
                        ) do

                        -- Original locked-preset check used the older array
                        -- prop format here.
                        if GetPedPropIndex(
                            ped,
                            propId
                        ) ~= item[1]
                            or GetPedPropTextureIndex(
                                ped,
                                propId
                            ) ~= item[2] then

                            differs = true
                            break
                        end
                    end
                end

                if differs then
                    CMG.loadCustomisationPreset(
                        lockedPresetName
                    )
                end
            end

            Citizen.Wait(2000)
        else
            Citizen.Wait(5000)
        end
    end
end)


-- ============================================================
-- PED LOD DISTANCES
-- ============================================================

SetVisualSettingFloat(
    "ped.lod.distance.high",
    200.0
)

SetVisualSettingFloat(
    "ped.lod.distance.medium",
    400.0
)

SetVisualSettingFloat(
    "ped.lod.distance.low",
    700.0
)


-- ============================================================
-- DEVELOPER MIGRATION TOOLS
-- ============================================================

-- These tools exist only to help developers convert old/global GTA clothing
-- indexes into collection/local indexes used by V2.

local migrationDump = {}


local function buildModelIndexLookup(
    modelHash
)
    CMG.loadModel(modelHash)

    SetPlayerModel(
        PlayerId(),
        modelHash
    )

    CMG.forcePlayerInfoCacheRefresh()

    local ped = PlayerPedId()

    local lookup = {
        modelHash = modelHash,
        components = {},
        props = {}
    }

    for componentId = 0, 11 do
        local component = {}

        for globalIndex = 0,
            GetNumberOfPedDrawableVariations(
                ped,
                componentId
            ) - 1 do

            component[globalIndex] = {
                GetPedCollectionNameFromDrawable(
                    ped,
                    componentId,
                    globalIndex
                ),

                GetPedCollectionLocalIndexFromDrawable(
                    ped,
                    componentId,
                    globalIndex
                )
            }
        end

        lookup.components[
            componentId
        ] = component
    end

    for propId = 0, 8 do
        local prop = {}

        for globalIndex = 0,
            GetNumberOfPedPropDrawableVariations(
                ped,
                propId
            ) - 1 do

            prop[globalIndex] = {
                GetPedCollectionNameFromProp(
                    ped,
                    propId,
                    globalIndex
                ),

                GetPedCollectionLocalIndexFromProp(
                    ped,
                    propId,
                    globalIndex
                )
            }
        end

        lookup.props[propId] =
            prop
    end

    table.insert(
        migrationDump,
        lookup
    )
end


local function copyGlobalToLocalLookup()
    table.clear(migrationDump)

    buildModelIndexLookup(
        1885233650
    )

    buildModelIndexLookup(
        -1667301416
    )

    CMG.clientPrompt(
        "Lookup JSON",
        json.encode(migrationDump) or "{}",
        function()
        end
    )
end


local convertingMalePresets = true


local function convertPresetRow()
    CMG.clientPrompt(
        "Enter Input",
        "",
        function(input)
            local numbers = {}

            for value
                in tostring(input):gmatch(
                    "(%d+)"
                ) do

                table.insert(
                    numbers,
                    tonumber(value)
                )
            end

            if #numbers % 4 ~= 0 then
                notify(
                    "~r~Unable to parse provided input"
                )
                return
            end

            local wantedModel =
                convertingMalePresets
                and 1885233650
                or -1667301416

            local modelLookup = nil

            for _, lookup
                in pairs(migrationDump) do

                if lookup.modelHash
                    == wantedModel then

                    modelLookup =
                        lookup
                    break
                end
            end

            assert(
                modelLookup,
                "Unable to find model lookup data"
            )

            local output = ""

            for row = 0,
                math.floor(
                    #numbers / 4
                ) - 1 do

                local offset =
                    row * 4

                local componentId =
                    numbers[1 + offset]

                local drawableId =
                    numbers[2 + offset]

                local textureId =
                    numbers[3 + offset]

                local componentLookup =
                    modelLookup.components[
                        tostring(componentId)
                    ]
                    or modelLookup.components[
                        componentId
                    ]

                assert(
                    componentLookup,
                    string.format(
                        "Unable to find component lookup data for componentId %s",
                        componentId
                    )
                )

                local drawableLookup =
                    componentLookup[
                        tostring(drawableId)
                    ]
                    or componentLookup[
                        drawableId
                    ]

                assert(
                    drawableLookup,
                    string.format(
                        "Unable to find component lookup data for componentId %s drawableId %s",
                        componentId,
                        drawableId
                    )
                )

                output =
                    output ..
                    string.format(
                        [[
[%s] = {
    collectionName = "%s",
    localIndex = %s,
    textureIndex = %s,
},
]],
                        componentId,
                        drawableLookup[1],
                        drawableLookup[2],
                        textureId
                    )
            end

            notify(
                "~g~Copied migrated clothing to clipboard"
            )

            CMG.copyToClipboard(
                output
            )
        end
    )
end


CMG.registerDevMenuItems(
    "Customisation",
    function()
        RageUI.Button(
            "Get Global -> Local Lookup",
            "Returns a JSON that converts the current builds clothing from global index to local index.",
            true,
            function(_, _, selected)
                if selected then
                    copyGlobalToLocalLookup()
                end
            end
        )

        RageUI.Button(
            "Convert Preset Row",
            [[
Converts a row of components in a preset. Example input:
[6] = {27, 0, 0}]],
            true,
            function(_, _, selected)
                if selected then
                    convertPresetRow()
                end
            end
        )

        RageUI.Checkbox(
            "Converting Male Presets",
            "Whether this should convert male presets. Uncheck to work on females.",
            convertingMalePresets,
            {},
            function(_, _, _, checked)
                convertingMalePresets =
                    checked
            end
        )
    end
)
