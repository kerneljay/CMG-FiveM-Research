--[[
    Clothing Store / Clothing Menu Client
    ======================================

    This is the beginner-readable version of the old decompiled clothing file.

    WHAT THIS FILE DOES
    -------------------
      1. Loads the clothing whitelist/config files.
      2. Creates all clothing-store locations on the map.
      3. Asks the server which clothing groups the player may use.
      4. Opens the clothing RageUI menu.
      5. Lets the player change clothing drawables and textures.
      6. Supports police/NHS/LFB/HMP/gang/marketplace clothing groups.
      7. Supports imported/custom clothing purchased through the store.
      8. Lets the player change gender, remove props and use wardrobe outfits.
      9. Provides a developer utility for migrating old clothing config data.

    BEGINNER GTA CLOTHING WORDS
    ---------------------------
      ped
        Your GTA character/entity.

      component
        Clothing attached directly to the ped.
        Examples: top, trousers, shoes, mask.

      prop
        A removable accessory.
        Examples: hat, glasses, watch.

      drawable
        The actual clothing model/design.

      texture
        A colour/pattern variation of that drawable.

      collectionName
        Which GTA/DLC clothing collection owns the item.

      collectionIndex / localIndex
        The drawable number INSIDE that collection.

      global drawable index
        The drawable number GTA gives us when all collections are combined.

    IMPORTANT
    ---------
      Hash-looking event names are deliberately unchanged.
      Other client/server files probably use those exact event names.

      This file also preserves the public CMG functions used elsewhere:
        CMG.doesClothingDrawableRequirePermission(...)
        CMG.createClothingMenu(...)
        CMG.deleteClothingMenu(...)
]]


-- ============================================================
-- CONFIGURATION
-- ============================================================

local clothingConfig =
    CMG.loadJsonModule(
        "cfg/ped_cfg/clothing.json"
    )

if not clothingConfig then
    return
end


-- dummies.json contains additional whitelist entries.
-- The old script merged those entries into clothing.json at runtime.
local function mergeWhitelistTables(targetConfig, extraConfig)
    if not targetConfig or not extraConfig then
        return
    end

    for _, whitelistName in ipairs({
        "male_whitelists",
        "female_whitelists"
    }) do
        local extraWhitelist =
            extraConfig[whitelistName]

        if type(extraWhitelist) == "table" then
            targetConfig[whitelistName] =
                targetConfig[whitelistName]
                or {}

            for categoryName, extraEntries
                in pairs(extraWhitelist) do

                if type(extraEntries) == "table" then
                    local currentEntries =
                        targetConfig[whitelistName][categoryName]

                    if type(currentEntries) ~= "table" then
                        currentEntries = {}
                    end

                    local merged = {}

                    for _, entry in ipairs(extraEntries) do
                        table.insert(merged, entry)
                    end

                    for _, entry in ipairs(currentEntries) do
                        table.insert(merged, entry)
                    end

                    targetConfig[whitelistName][categoryName] =
                        merged
                end
            end
        end
    end
end


do
    local dummyJson =
        CMG.loadResourceFile(
            GetCurrentResourceName(),
            "cfg/ped_cfg/dummies.json"
        )

    if dummyJson and dummyJson ~= "" then
        local success, decoded =
            pcall(json.decode, dummyJson)

        if success and type(decoded) == "table" then
            mergeWhitelistTables(
                clothingConfig,
                decoded
            )
        end
    end
end


-- ============================================================
-- SMALL DATA HELPERS
-- ============================================================

local function trim(value)
    if type(value) ~= "string" then
        return value
    end

    return string.gsub(
        value,
        "^%s*(.-)%s*$",
        "%1"
    )
end


local function toRoundedInteger(value)
    if value == nil then
        return nil
    end

    if type(value) == "number" then
        return math.floor(value + 0.5)
    end

    if type(value) == "string" then
        local number = tonumber(value)

        if number then
            return math.floor(number + 0.5)
        end
    end

    return nil
end


-- Several service permission names belong to the same clothing family.
-- Example: ERPT/RPU/NPAS all appear under the "Police Service Clothing" tab.
local groupFamilyMap = {
    civilian = "civilian",

    police = "police",
    erpt = "police",
    rpu = "police",
    cop = "police",
    npas = "police",
    sco19 = "police",
    trident = "police",
    ctsfo = "police",
    borderforce = "police",

    nhs = "nhs",
    lfb = "lfb",
    hmp = "hmp",

    lostmc = "lostmc",
    soa = "lostmc",

    sixthsense = "sixthsense",
    marketplace = "marketplace",

    -- These old config labels were treated like civilian clothing.
    placeholder = "civilian",
    hidden = "civilian",
    variation = "civilian",
    factionhidden = "civilian"
}


local function normaliseGroupFamily(groupName)
    if type(groupName) ~= "string"
        or groupName == "" then
        return "civilian"
    end

    return groupFamilyMap[groupName]
        or "civilian"
end


-- ============================================================
-- MENU DEFINITIONS
-- ============================================================

local clothingGroups = {
    {
        id = "civilian",
        label = "Civilian Clothing"
    },
    {
        id = "police",
        label = "Police Service Clothing"
    },
    {
        id = "nhs",
        label = "Health Service Clothing"
    },
    {
        id = "lfb",
        label = "Fire Service Clothing"
    },
    {
        id = "hmp",
        label = "Prison Service Clothing"
    },
    {
        id = "lostmc",
        label = "Lost MC Clothing"
    },
    {
        id = "sixthsense",
        label = "Sixth Sense Clothing"
    },
    {
        id = "marketplace",
        label = "Marketplace Clothing"
    },
    {
        id = "customclothing",
        label = "Imported Clothing"
    }
}


-- Each row is ONE GTA clothing slot.
--
-- selectedListIndex = which visible drawable is selected in RageUI.
-- textureIndex      = texture currently previewed for that drawable.
local clothingCategories = {
    {
        name = "Hats / Helmets",
        index = 0,
        type = "prop"
    },
    {
        name = "Glasses",
        index = 1,
        type = "prop"
    },
    {
        name = "Ear Accessories",
        index = 2,
        type = "prop"
    },
    {
        name = "Mask",
        index = 1,
        type = "drawable"
    },
    {
        name = "Hair",
        index = 2,
        type = "drawable"
    },
    {
        name = "Shirts / Jackets",
        index = 11,
        type = "drawable"
    },
    {
        name = "Arms / Torso",
        index = 3,
        type = "drawable"
    },
    {
        name = "Watches",
        index = 6,
        type = "prop"
    },
    {
        name = "Bracelets",
        index = 7,
        type = "prop"
    },
    {
        name = "Undershirt",
        index = 8,
        type = "drawable"
    },
    {
        name = "Legs",
        index = 4,
        type = "drawable"
    },
    {
        name = "Shoes",
        index = 6,
        type = "drawable"
    },
    {
        name = "Bags",
        index = 5,
        type = "drawable"
    },
    {
        name = "Vests",
        index = 9,
        type = "drawable"
    },
    {
        name = "Accessories",
        index = 7,
        type = "drawable"
    },
    {
        name = "Badges",
        index = 10,
        type = "drawable"
    }
}


for _, category in ipairs(clothingCategories) do
    category.selectedListIndex = 1
    category.textureIndex = 0

    -- These are rebuilt when the clothing group/model/access changes.
    category.menuLabels = {}
    category.drawableValues = {}
end


local selectedClothingGroup = "civilian"
local activeCategory = nil

-- Server-sent table saying which clothing groups/permissions are available.
local availableClothingGroups = {}

local clothingListsNeedRefresh = true


-- ============================================================
-- RAGEUI MENUS
-- ============================================================

RMenu.Add(
    "CMGclothing",
    "mainMenu",
    RageUI.CreateMenu(
        "",
        "Clothing Store",
        CMG.getRageUIMenuWidth(),
        CMG.getRageUIMenuHeight(),
        "cmg_clothesui",
        "cmg_clothesui"
    )
)

local mainMenu =
    RMenu:Get(
        "CMGclothing",
        "mainMenu"
    )


RMenu.Add(
    "CMGclothing",
    "changePed",
    RageUI.CreateSubMenu(
        mainMenu,
        "",
        "Change ped model",
        CMG.getRageUIMenuWidth(),
        CMG.getRageUIMenuHeight(),
        "cmg_clothesui",
        "cmg_clothesui"
    )
)

local changePedMenu =
    RMenu:Get(
        "CMGclothing",
        "changePed"
    )


RMenu.Add(
    "CMGclothing",
    "changeClothing",
    RageUI.CreateSubMenu(
        mainMenu,
        "",
        "Change your Clothes",
        CMG.getRageUIMenuWidth(),
        CMG.getRageUIMenuHeight(),
        "cmg_clothesui",
        "cmg_clothesui"
    )
)

local changeClothingMenu =
    RMenu:Get(
        "CMGclothing",
        "changeClothing"
    )


RMenu.Add(
    "CMGclothing",
    "clearProps",
    RageUI.CreateSubMenu(
        mainMenu,
        "",
        "Clear Props",
        CMG.getRageUIMenuWidth(),
        CMG.getRageUIMenuHeight(),
        "cmg_clothesui",
        "cmg_clothesui"
    )
)

local clearPropsMenu =
    RMenu:Get(
        "CMGclothing",
        "clearProps"
    )


-- ============================================================
-- CLOTHING WHITELIST HELPERS
-- ============================================================

local function getGenderWhitelist()
    if CMG.getModelGender() == "female" then
        return
            clothingConfig.female_whitelists
            or {}
    end

    return
        clothingConfig.male_whitelists
        or {}
end


local function getCollectionInfo(
    category,
    globalDrawable
)
    local ped = CMG.getPlayerPed()

    local collectionName
    local localIndex

    if category.type == "prop" then
        collectionName =
            GetPedCollectionNameFromProp(
                ped,
                category.index,
                globalDrawable
            )

        localIndex =
            GetPedCollectionLocalIndexFromProp(
                ped,
                category.index,
                globalDrawable
            )
    else
        collectionName =
            GetPedCollectionNameFromDrawable(
                ped,
                category.index,
                globalDrawable
            )

        localIndex =
            GetPedCollectionLocalIndexFromDrawable(
                ped,
                category.index,
                globalDrawable
            )
    end

    collectionName =
        trim(collectionName)

    if type(collectionName) ~= "string" then
        collectionName = ""
    end

    localIndex =
        toRoundedInteger(localIndex)

    return collectionName, localIndex
end


-- Returns every config entry matching this collection/local drawable.
local function getWhitelistEntries(
    category,
    globalDrawable
)
    local categoryEntries =
        getGenderWhitelist()[
            category.name
        ]

    if type(categoryEntries) ~= "table" then
        return {}
    end

    local collectionName, localIndex =
        getCollectionInfo(
            category,
            globalDrawable
        )

    if localIndex == nil then
        return {}
    end

    local matches = {}

    for _, entry in ipairs(categoryEntries) do
        if type(entry) == "table" then
            local entryCollection =
                trim(
                    entry.collectionName
                    or ""
                )

            local entryLocalIndex =
                toRoundedInteger(
                    entry.localIndex
                )

            if entryCollection == collectionName
                and entryLocalIndex == localIndex then

                table.insert(
                    matches,
                    entry
                )
            end
        end
    end

    return matches
end


local function permissionIsCurrentlyAvailable(
    permission
)
    if type(permission) ~= "string"
        or permission == "" then
        return false
    end

    if availableClothingGroups[permission] == true then
        return true
    end

    local family =
        normaliseGroupFamily(
            permission
        )

    if availableClothingGroups[family] == true then
        return true
    end

    return
        CMG.hasClientPermission(permission)
        == true
end


local function entryHasGroupFamily(
    entry,
    wantedFamily
)
    if type(entry.permissions) ~= "table" then
        return false
    end

    for _, permission
        in ipairs(entry.permissions) do

        if normaliseGroupFamily(permission)
            == wantedFamily then
            return true
        end
    end

    return false
end


local function entryHasAnyAvailablePermission(
    entry
)
    if type(entry.permissions) ~= "table" then
        return false
    end

    for _, permission
        in ipairs(entry.permissions) do

        if permissionIsCurrentlyAvailable(
            permission
        ) then
            return true
        end
    end

    return false
end


-- This is the important "should this drawable appear in the selected tab?"
-- decision.
local function drawableBelongsToSelectedGroup(
    category,
    globalDrawable
)
    local collectionName, localIndex =
        getCollectionInfo(
            category,
            globalDrawable
        )

    local isProp =
        category.type == "prop"

    local customSlot =
        CMG.getCustomClothingSlotForComponent(
            category.index,
            isProp
        )

    -- Imported/custom clothing does not use the normal service whitelist.
    if selectedClothingGroup == "customclothing" then
        if localIndex == nil
            or not customSlot then
            return false
        end

        return
            CMG.hasAccessibleCustomClothingDrawable(
                collectionName,
                localIndex,
                customSlot
            )
    end

    local entries =
        getWhitelistEntries(
            category,
            globalDrawable
        )

    -- The old script treated unlisted Arms/Shoes as universally usable.
    -- Other unlisted clothing belongs to the Civilian tab.
    if #entries == 0 then
        if category.name == "Arms / Torso"
            or category.name == "Shoes" then
            return true
        end

        return
            selectedClothingGroup
            == "civilian"
    end

    for _, entry in ipairs(entries) do
        if entryHasAnyAvailablePermission(entry)
            and entryHasGroupFamily(
                entry,
                selectedClothingGroup
            ) then

            return true
        end
    end

    return false
end


local function hiddenTextureSetForDrawable(
    category,
    globalDrawable
)
    local hidden = {}

    for _, entry
        in ipairs(
            getWhitelistEntries(
                category,
                globalDrawable
            )
        ) do

        if type(entry.hiddenTextures)
            == "table" then

            for _, texture
                in ipairs(
                    entry.hiddenTextures
                ) do

                local index =
                    toRoundedInteger(
                        texture
                    )

                if index ~= nil then
                    hidden[index] = true
                end
            end
        end
    end

    return hidden
end


-- Public helper used by other scripts.
function CMG.doesClothingDrawableRequirePermission(
    gender,
    categoryName,
    drawableId,
    permission
)
    local whitelist =
        string.lower(
            tostring(gender)
        ) == "female"
        and (
            clothingConfig.female_whitelists
            or {}
        )
        or (
            clothingConfig.male_whitelists
            or {}
        )

    local categoryEntries =
        whitelist[categoryName]

    if type(categoryEntries) ~= "table" then
        return false
    end

    local ped = CMG.getPlayerPed()

    -- Convert the GLOBAL drawable to collection/local so it can be compared
    -- against the config. We infer whether the category is a prop from our
    -- category table.
    local category = nil

    for _, candidate
        in ipairs(clothingCategories) do

        if candidate.name == categoryName then
            category = candidate
            break
        end
    end

    if not category then
        return false
    end

    local collectionName
    local localIndex

    if category.type == "prop" then
        collectionName =
            GetPedCollectionNameFromProp(
                ped,
                category.index,
                drawableId
            )

        localIndex =
            GetPedCollectionLocalIndexFromProp(
                ped,
                category.index,
                drawableId
            )
    else
        collectionName =
            GetPedCollectionNameFromDrawable(
                ped,
                category.index,
                drawableId
            )

        localIndex =
            GetPedCollectionLocalIndexFromDrawable(
                ped,
                category.index,
                drawableId
            )
    end

    collectionName =
        trim(collectionName or "")

    localIndex =
        toRoundedInteger(localIndex)

    for _, entry in ipairs(categoryEntries) do
        if trim(entry.collectionName or "")
            == collectionName
            and toRoundedInteger(
                entry.localIndex
            ) == localIndex
            and type(entry.permissions)
                == "table" then

            for _, requiredPermission
                in pairs(entry.permissions) do

                if requiredPermission
                    == permission then
                    return true
                end
            end
        end
    end

    return false
end


-- ============================================================
-- WHICH CLOTHING GROUP TABS CAN THE PLAYER OPEN?
-- ============================================================

local function canOpenClothingGroup(groupId)
    if groupId == "civilian" then
        return true
    end

    if groupId == "customclothing" then
        return
            CMG.hasAnyAccessibleCustomClothing()
    end

    if groupId == "lostmc" then
        return
            availableClothingGroups.lostmc
            == true
    end

    return
        availableClothingGroups[groupId]
        == true
end


-- ============================================================
-- CATEGORY RESTRICTIONS
-- ============================================================

local function canChangeCategory(categoryName)
    -- AA male uniform prevents changing these major uniform slots.
    if CMG.hasClientPermission(
        "aa.onduty.permission"
    ) then

        local isMale =
            CMG.getModelGender()
            == "male"

        if isMale
            and (
                categoryName == "Shirts / Jackets"
                or categoryName == "Shirts /Jackets"
                or categoryName == "Arms / Torso"
                or categoryName == "Legs"
                or categoryName == "Undershirt"
            ) then

            return false
        end
    end

    -- A currently-equipped backpack owns component 5.
    if categoryName == "Bags" then
        return
            CMG.getCurrentBackpack()
            == nil
    end

    return true
end


-- ============================================================
-- READ/APPLY CURRENT DRAWABLE + TEXTURE
-- ============================================================

local function getCurrentGlobalDrawable(category)
    local ped = CMG.getPlayerPed()

    if category.type == "prop" then
        local drawable =
            GetPedPropIndex(
                ped,
                category.index
            )

        if drawable == nil
            or drawable < 0 then
            return nil
        end

        return drawable
    end

    return
        GetPedDrawableVariation(
            ped,
            category.index
        )
end


local function getCurrentTexture(category)
    local ped = CMG.getPlayerPed()

    if category.name == "Hair" then
        return
            GetPedHairColor(ped)
            or 0
    end

    if category.type == "prop" then
        local texture =
            GetPedPropTextureIndex(
                ped,
                category.index
            )

        if texture == nil
            or texture < 0 then
            return 0
        end

        return texture
    end

    return
        GetPedTextureVariation(
            ped,
            category.index
        )
        or 0
end


local function getTextureCount(
    category,
    globalDrawable
)
    local ped = CMG.getPlayerPed()

    if category.name == "Hair" then
        return GetNumHairColors()
    end

    if category.type == "prop" then
        return
            GetNumberOfPedPropTextureVariations(
                ped,
                category.index,
                globalDrawable
            )
    end

    return
        GetNumberOfPedTextureVariations(
            ped,
            category.index,
            globalDrawable
        )
end


local function textureIsVisible(
    category,
    globalDrawable,
    textureIndex
)
    local hidden =
        hiddenTextureSetForDrawable(
            category,
            globalDrawable
        )

    if hidden[textureIndex] then
        return false
    end

    local collectionName, localIndex =
        getCollectionInfo(
            category,
            globalDrawable
        )

    local slot =
        CMG.getCustomClothingSlotForComponent(
            category.index,
            category.type == "prop"
        )

    -- If the drawable belongs to a known custom slot, custom clothing
    -- restrictions may also hide an individual texture.
    if localIndex ~= nil and slot then
        if not CMG.canLocallyWearClothingItem(
            collectionName,
            localIndex,
            textureIndex,
            slot
        ) then
            return false
        end
    end

    return true
end


local function getVisibleTextureIndexes(
    category,
    globalDrawable
)
    local result = {}

    local count =
        getTextureCount(
            category,
            globalDrawable
        )

    for textureIndex = 0,
        math.max(count - 1, 0) do

        if textureIsVisible(
            category,
            globalDrawable,
            textureIndex
        ) then
            table.insert(
                result,
                textureIndex
            )
        end
    end

    -- A few GTA items report zero texture variations.
    if #result == 0 then
        table.insert(result, 0)
    end

    return result
end


local function firstVisibleTexture(
    category,
    globalDrawable
)
    return
        getVisibleTextureIndexes(
            category,
            globalDrawable
        )[1]
        or 0
end


local function sendHairUpdateToServer()
    local ped = CMG.getPlayerPed()

    TriggerServerEvent(
        "236aec7dad",
        CMG.getModelGender(),
        GetPedDrawableVariation(
            ped,
            2
        ),
        GetPedHairColor(ped)
    )
end


local function applyCategorySelection(
    category,
    globalDrawable,
    textureIndex
)
    if globalDrawable == nil then
        return
    end

    local ped = CMG.getPlayerPed()

    if category.type == "drawable" then
        if category.name == "Hair" then
            -- Hair colour is separate from the normal component texture.
            SetPedComponentVariation(
                ped,
                category.index,
                globalDrawable,
                0,
                0
            )

            SetPedHairColor(
                ped,
                textureIndex,
                textureIndex
            )

            sendHairUpdateToServer()
        else
            SetPedComponentVariation(
                ped,
                category.index,
                globalDrawable,
                textureIndex,
                0
            )
        end

        return
    end

    SetPedPropIndex(
        ped,
        category.index,
        globalDrawable,
        textureIndex,
        false
    )
end


-- ============================================================
-- REMOVE / RESET ONE CATEGORY
-- ============================================================

local function resetCategory(category)
    local ped = CMG.getPlayerPed()

    if category.type == "prop" then
        ClearPedProp(
            ped,
            category.index
        )

        if category.index == 0
            and IsPedWearingHelmet(ped) then
            RemovePedHelmet(
                ped,
                true
            )
        end

        return
    end

    if category.name == "Shirts / Jackets" then
        SetPedComponentVariation(
            ped,
            3,
            15,
            0,
            0
        )

        -- Preserved from the original client.
        SetPedComponentVariation(
            ped,
            8,
            0,
            240,
            0
        )

        SetPedComponentVariation(
            ped,
            11,
            CMG.getModelGender() == "female"
                and 18
                or 15,
            0,
            0
        )

    elseif category.name == "Arms / Torso" then
        SetPedComponentVariation(
            ped,
            3,
            15,
            0,
            0
        )

    elseif category.name == "Undershirt" then
        SetPedComponentVariation(
            ped,
            8,
            15,
            0,
            0
        )

    elseif category.name == "Legs" then
        SetPedComponentVariation(
            ped,
            4,
            14,
            0,
            2
        )

    elseif category.name == "Shoes" then
        SetPedComponentVariation(
            ped,
            6,
            CMG.getModelGender() == "female"
                and 35
                or 34,
            0,
            2
        )

    elseif category.name == "Accessories" then
        SetPedComponentVariation(
            ped,
            7,
            0,
            0,
            0
        )

    elseif category.name == "Mask" then
        SetPedComponentVariation(
            ped,
            1,
            0,
            0,
            1
        )

    elseif category.name == "Hair" then
        SetPedComponentVariation(
            ped,
            2,
            0,
            0,
            0
        )

        sendHairUpdateToServer()

    else
        SetPedComponentVariation(
            ped,
            category.index,
            0,
            0,
            0
        )
    end
end


-- ============================================================
-- BUILD THE DRAWABLE LIST FOR ONE CATEGORY
-- ============================================================

local function rebuildCategoryList(category)
    local ped = CMG.getPlayerPed()

    local numberOfDrawables

    if category.type == "prop" then
        numberOfDrawables =
            GetNumberOfPedPropDrawableVariations(
                ped,
                category.index
            )
    else
        numberOfDrawables =
            GetNumberOfPedDrawableVariations(
                ped,
                category.index
            )
    end

    category.menuLabels = {}
    category.drawableValues = {}

    for globalDrawable = 0,
        numberOfDrawables - 1 do

        if drawableBelongsToSelectedGroup(
            category,
            globalDrawable
        ) then

            -- If every texture of a restricted/custom drawable is locked,
            -- there is no point showing that drawable.
            local collectionName, localIndex =
                getCollectionInfo(
                    category,
                    globalDrawable
                )

            local slot =
                CMG.getCustomClothingSlotForComponent(
                    category.index,
                    category.type == "prop"
                )

            local drawableUsable = true

            if localIndex ~= nil
                and slot
                and CMG.isClothingDrawableLocked(
                    collectionName,
                    localIndex,
                    slot
                ) then

                local lockedTextures =
                    CMG.getLockedClothingTextureSet(
                        collectionName,
                        localIndex,
                        slot
                    )

                local totalTextures =
                    getTextureCount(
                        category,
                        globalDrawable
                    )

                local lockedCount = 0

                for _ in pairs(
                    lockedTextures
                ) do
                    lockedCount =
                        lockedCount + 1
                end

                if totalTextures > 0
                    and lockedCount
                        >= totalTextures then
                    drawableUsable = false
                end
            end

            if drawableUsable then
                table.insert(
                    category.drawableValues,
                    globalDrawable
                )
            end
        end
    end

    local total =
        #category.drawableValues

    for listIndex = 1, total do
        category.menuLabels[listIndex] =
            tostring(listIndex)
            .. "/"
            .. tostring(total)
    end

    if total == 0 then
        category.menuLabels = {
            "No available items"
        }

        category.drawableValues = {
            nil
        }

        category.selectedListIndex = 1
        category.textureIndex = 0
        return
    end

    -- Try to place the list cursor on what the player is already wearing.
    local currentDrawable =
        getCurrentGlobalDrawable(
            category
        )

    category.selectedListIndex = 1

    if currentDrawable ~= nil then
        for index, drawable
            in ipairs(
                category.drawableValues
            ) do

            if drawable == currentDrawable then
                category.selectedListIndex =
                    index
                break
            end
        end
    end

    local selectedDrawable =
        category.drawableValues[
            category.selectedListIndex
        ]

    local currentTexture =
        getCurrentTexture(category)

    if selectedDrawable ~= nil
        and textureIsVisible(
            category,
            selectedDrawable,
            currentTexture
        ) then

        category.textureIndex =
            currentTexture
    else
        category.textureIndex =
            selectedDrawable ~= nil
            and firstVisibleTexture(
                category,
                selectedDrawable
            )
            or 0
    end
end


local function rebuildAllCategoryLists()
    for _, category
        in ipairs(clothingCategories) do

        rebuildCategoryList(category)
    end

    clothingListsNeedRefresh = false
end


-- ============================================================
-- TEXTURE CYCLING
-- ============================================================

local function cycleTexture(
    category,
    direction
)
    local globalDrawable =
        category.drawableValues[
            category.selectedListIndex
        ]

    if globalDrawable == nil then
        return
    end

    local visibleTextures =
        getVisibleTextureIndexes(
            category,
            globalDrawable
        )

    if #visibleTextures == 0 then
        return
    end

    local currentPosition = 1

    for index, texture
        in ipairs(visibleTextures) do

        if texture
            == category.textureIndex then

            currentPosition = index
            break
        end
    end

    currentPosition =
        currentPosition + direction

    if currentPosition < 1 then
        currentPosition =
            #visibleTextures

    elseif currentPosition
        > #visibleTextures then

        currentPosition = 1
    end

    category.textureIndex =
        visibleTextures[
            currentPosition
        ]

    applyCategorySelection(
        category,
        globalDrawable,
        category.textureIndex
    )
end


local function controlJustPressed(
    control
)
    return
        IsControlJustPressed(
            0,
            control
        )
        or IsControlJustPressed(
            2,
            control
        )
        or IsDisabledControlJustPressed(
            0,
            control
        )
        or IsDisabledControlJustPressed(
            2,
            control
        )
end


-- ============================================================
-- CLOTHING PREVIEW CAMERA
-- ============================================================

local cameraSettings = {
    ["Hats / Helmets"] = {
        offset = vector3(0.0, 0.5, 0.8),
        point = vector3(0.0, 0.0, 0.7),
        fov = 60.0
    },

    ["Glasses"] = {
        offset = vector3(0.0, 0.5, 0.68),
        point = vector3(0.0, 0.0, 0.68),
        fov = 50.0
    },

    ["Ear Accessories"] = {
        offset = vector3(0.0, 0.5, 0.68),
        point = vector3(0.0, 0.0, 0.68),
        fov = 50.0
    },

    ["Mask"] = {
        offset = vector3(0.0, 0.5, 0.8),
        point = vector3(0.0, 0.0, 0.7),
        fov = 60.0
    },

    ["Hair"] = {
        offset = vector3(0.0, 0.5, 0.8),
        point = vector3(0.0, 0.0, 0.7),
        fov = 60.0
    },

    ["Shirts / Jackets"] = {
        offset = vector3(0.0, 1.0, 0.3),
        point = vector3(0.0, 0.0, 0.3),
        fov = 70.0
    },

    ["Arms / Torso"] = {
        offset = vector3(0.0, 1.0, 0.3),
        point = vector3(0.0, 0.0, 0.3),
        fov = 70.0
    },

    ["Watches"] = {
        offset = vector3(0.0, 0.8, 0.0),
        point = vector3(0.0, 0.0, 0.0),
        fov = 60.0
    },

    ["Bracelets"] = {
        offset = vector3(0.0, 0.8, 0.0),
        point = vector3(0.0, 0.0, 0.0),
        fov = 60.0
    },

    ["Undershirt"] = {
        offset = vector3(0.0, 1.0, 0.3),
        point = vector3(0.0, 0.0, 0.3),
        fov = 70.0
    },

    ["Legs"] = {
        offset = vector3(0.0, 1.0, -0.4),
        point = vector3(0.0, 0.0, -0.4),
        fov = 70.0
    },

    ["Shoes"] = {
        offset = vector3(0.0, 0.6, -0.5),
        point = vector3(0.0, 0.0, -0.9),
        fov = 60.0
    },

    ["Bags"] = {
        offset = vector3(0.0, 1.0, 0.3),
        point = vector3(0.0, 0.0, 0.3),
        fov = 70.0
    },

    ["Vests"] = {
        offset = vector3(0.0, 1.0, 0.3),
        point = vector3(0.0, 0.0, 0.3),
        fov = 70.0
    },

    ["Accessories"] = {
        offset = vector3(0.0, 1.2, 0.3),
        point = vector3(0.0, 0.0, 0.2),
        fov = 80.0
    },

    ["Badges"] = {
        offset = vector3(0.0, 1.2, 0.3),
        point = vector3(0.0, 0.0, 0.2),
        fov = 80.0
    }
}


local clothingCamera = nil
local cameraActive = false


local function updateClothingCamera()
    if not clothingCamera
        or not DoesCamExist(
            clothingCamera
        ) then
        return
    end

    local category =
        activeCategory
        or clothingCategories[1]

    local setting =
        cameraSettings[
            category.name
        ]
        or cameraSettings[
            "Shirts / Jackets"
        ]

    local ped = CMG.getPlayerPed()

    local cameraCoords =
        GetOffsetFromEntityInWorldCoords(
            ped,
            setting.offset.x,
            setting.offset.y,
            setting.offset.z
        )

    local pointCoords =
        GetOffsetFromEntityInWorldCoords(
            ped,
            setting.point.x,
            setting.point.y,
            setting.point.z
        )

    SetCamCoord(
        clothingCamera,
        cameraCoords.x,
        cameraCoords.y,
        cameraCoords.z
    )

    PointCamAtCoord(
        clothingCamera,
        pointCoords.x,
        pointCoords.y,
        pointCoords.z
    )

    SetCamFov(
        clothingCamera,
        setting.fov
    )

    -- Move mouse left/right to rotate the player's preview.
    local look =
        GetDisabledControlNormal(
            0,
            1
        )

    if math.abs(look) > 0.001 then
        SetEntityHeading(
            ped,
            GetEntityHeading(ped)
                - look * 4.0
        )
    end
end


local function startClothingCamera()
    if cameraActive then
        return
    end

    clothingCamera =
        CreateCam(
            "DEFAULT_SCRIPTED_CAMERA",
            true
        )

    SetCamActive(
        clothingCamera,
        true
    )

    RenderScriptCams(
        true,
        true,
        300,
        true,
        true
    )

    cameraActive = true

    Citizen.CreateThread(function()
        while cameraActive do
            updateClothingCamera()
            Wait(0)
        end
    end)
end


local function stopClothingCamera()
    cameraActive = false

    if clothingCamera
        and DoesCamExist(
            clothingCamera
        ) then

        RenderScriptCams(
            false,
            true,
            300,
            true,
            true
        )

        DestroyCam(
            clothingCamera,
            false
        )
    end

    clothingCamera = nil
end


-- ============================================================
-- STATIC CLOTHING STORES
-- ============================================================

-- Entry format:
--   coords      = where the clothing store interaction is.
--   hideBlip    = true for hidden/internal/service locations.
--   permission  = optional permission needed for the location.
local staticClothingStores = {
    { coords = vector3(72.2545394897461, -1399.10229492188, 29.3761386871338), hideBlip = false },
    { coords = vector3(449.81854248047, -993.30865478516, 30.689584732056), hideBlip = false },
    { coords = vector3(1547.8505859375, 816.67712402344, 78.693054199219), hideBlip = false },
    { coords = vector3(-703.77685546875, -152.258544921875, 37.4151458740234), hideBlip = false },
    { coords = vector3(-167.863754272461, -298.969482421875, 39.7332878112793), hideBlip = false },
    { coords = vector3(428.694885253906, -800.1064453125, 29.4911422729492), hideBlip = false },
    { coords = vector3(-829.413269042969, -1073.71032714844, 11.3281078338623), hideBlip = false },
    { coords = vector3(-1193.42956542969, -772.262329101563, 17.3244285583496), hideBlip = false },
    { coords = vector3(-1447.7978515625, -242.461242675781, 49.8207931518555), hideBlip = false },
    { coords = vector3(11.6323690414429, 6514.224609375, 31.8778476715088), hideBlip = false },
    { coords = vector3(1696.29187011719, 4829.3125, 42.0631141662598), hideBlip = false },
    { coords = vector3(123.64656829834, -219.440338134766, 54.5578384399414), hideBlip = false },
    { coords = vector3(618.093444824219, 2759.62939453125, 42.0881042480469), hideBlip = false },
    { coords = vector3(1190.55017089844, 2713.44189453125, 38.2226257324219), hideBlip = false },
    { coords = vector3(-3172.49682617188, 1048.13330078125, 20.8632030487061), hideBlip = false },
    { coords = vector3(-1108.44177246094, 2708.92358398438, 19.1078643798828), hideBlip = false },
    { coords = vector3(127.57326507568, -1038.4321289063, 29.555480957031), hideBlip = false },
    { coords = vector3(-2152.7907714844, 5231.9516601563, 18.788805007935), hideBlip = false },
    { coords = vector3(1213.8666992188, -1474.5180664063, 35.073650360107), hideBlip = false },
    { coords = vector3(-455.61834716797, 6012.7348632813, 31.7164478302), hideBlip = false },
    { coords = vector3(1439.3804931641, 6331.80078125, 23.954704284668), hideBlip = false },
    { coords = vector3(-1098.4307861328, -831.42083740234, 14.282784461975), hideBlip = false },
    { coords = vector3(243.71351623535, -1370.1625976563, 39.534339904785), hideBlip = true },
    { coords = vector3(948.33013916016, 64.711891174316, 81.000564575195), hideBlip = false },
    { coords = vector3(1839.0124511719, 3689.259765625, 34.270027160645), hideBlip = false },
    { coords = vector3(-253.41467285156, 6309.4458007813, 32.427234649658), hideBlip = false },
    { coords = vector3(-565.46356201172, 287.12573242188, 91.797775268555), hideBlip = false },
    { coords = vector3(1780.2961425781, 2547.8825683594, 45.797790527344), hideBlip = false },
    { coords = vector3(4489.6123046875, -4452.7778320312, 4.366425037384), hideBlip = false },
    { coords = vector3(-443.05731201172, -311.21786499023, 34.910472869873), hideBlip = false },
    { coords = vector3(277.69772338867, -1335.5568847656, 24.537786483765), hideBlip = true },
    { coords = vector3(557.88751220703, 5950.2036132812, -158.08744812012), hideBlip = true },
    { coords = vector3(323.02081298828, 5956.587890625, -158.27177429199), hideBlip = true },
    { coords = vector3(262.38305664062, 6101.4702148438, -159.42733764648), hideBlip = true },
    { coords = vector3(256.01400756836, 6227.15234375, -159.4225769043), hideBlip = true },
    { coords = vector3(-2428.5307617188, -224.33743286133, 16.430755615234), hideBlip = true, permission = "borderforce.whitelisted" },
    { coords = vector3(1325.2674560547, 596.18975830078, 80.330574035645), hideBlip = true, permission = "borderforce.whitelisted" },
    { coords = vector3(2446.55078125, -195.40969848633, 87.59196472168), hideBlip = true, permission = "borderforce.whitelisted" },
    { coords = vector3(1113.886719, -920.182556, 51.271362), hideBlip = false, permission = "lfb.whitelisted" },
    { coords = vector3(-982.78454589844, -2937.9470214844, 13.945078849792), hideBlip = true },
    { coords = vector3(2064.3076171875, 5068.587890625, 41.944023132324), hideBlip = false },
    { coords = vector3(1401.3364257812, 1130.7509765625, 118.15337371826), hideBlip = true },
    { coords = vector3(-63.206512451172, 359.97018432617, 112.44757843018), hideBlip = true },
    { coords = vector3(-269.044922, -914.434448, 46.270412), hideBlip = true },
    { coords = vector3(335.20489501953, -580.37078857422, 75.724952697754), hideBlip = true },
    { coords = vector3(273.05331420898, 2995.7216796875, 43.083797454834), hideBlip = false },
    { coords = vector3(-1881.3974609375, 2068.4558105469, 145.57386779785), hideBlip = false },
    { coords = vector3(-598.35925292969, -1066.8760986328, 22.344198226929), hideBlip = false },
    { coords = vector3(1841.5708007812, 2578.4370117188, 45.890563964844), hideBlip = false, permission = "prisonguard.onduty.permission" },
    { coords = vector3(1841.5257568359, 2575.9323730469, 45.890563964844), hideBlip = false, permission = "prisonguard.onduty.permission" },
}


-- Runtime world handles:
-- storeWorldItems[id] = {area=..., marker=..., blip=...}
local storeWorldItems = {}


local function removeStoreWorldItems(storeId)
    local data =
        storeWorldItems[storeId]

    if not data then
        return
    end

    if data.blip then
        tCMG.removeBlip(
            data.blip
        )
    end

    if data.marker then
        tCMG.removeMarker(
            data.marker
        )
    end

    tCMG.removeArea(
        "clothingstore_"
        .. tostring(storeId)
    )

    storeWorldItems[storeId] = nil
end


local function leaveClothingStore()
    RageUI.CloseAll()

    stopClothingCamera()

    activeCategory = nil
end


local function clothingStoreTick()
    -- The server opens the menu after returning the clothing-group access
    -- table. The area itself does not need per-frame work.
end


local function createStoreWorldItems(
    storeId,
    store
)
    if storeWorldItems[storeId] then
        return
    end

    local blip = nil

    if not store.hideBlip then
        blip =
            tCMG.addBlip(
                store.coords.x,
                store.coords.y,
                store.coords.z,
                73,
                3,
                "Clothing Store",
                0.7
            )
    end

    local marker =
        tCMG.addPropMarker(
            "bzzz_marker_tshirt_green_anim",
            store.coords.x,
            store.coords.y,
            store.coords.z,
            20.0
        )

    CMG.createArea(
        "clothingstore_"
            .. tostring(storeId),
        store.coords,
        2.0,
        3.0,

        function()
            -- Ask the server which clothing groups this player can use at
            -- this particular store.
            TriggerServerEvent(
                "b6d3eda536",
                storeId
            )
        end,

        leaveClothingStore,
        clothingStoreTick,
        {index = storeId}
    )

    storeWorldItems[storeId] = {
        blip = blip,
        marker = marker,
        area =
            "clothingstore_"
            .. tostring(storeId)
    }
end


local function refreshPermissionStores()
    for storeId, store
        in ipairs(staticClothingStores) do

        local allowed =
            not store.permission
            or CMG.hasClientPermission(
                store.permission
            )

        if allowed then
            createStoreWorldItems(
                storeId,
                store
            )
        else
            removeStoreWorldItems(
                storeId
            )
        end
    end
end


AddEventHandler(
    "CMG:onClientSpawn",
    function(_, firstSpawn)
        if firstSpawn then
            refreshPermissionStores()
        end
    end
)


-- Permissions can change without reconnecting.
AddEventHandler(
    "b51e08118b",
    refreshPermissionStores
)


-- ============================================================
-- DYNAMIC CLOTHING STORE API
-- ============================================================

-- Other scripts can create temporary clothing stores.
function CMG.createClothingMenu(
    storeId,
    coords
)
    local key =
        "dynamic_" ..
        tostring(storeId)

    removeStoreWorldItems(key)

    local store = {
        coords = coords,
        hideBlip = false
    }

    createStoreWorldItems(
        key,
        store
    )
end


function CMG.deleteClothingMenu(
    storeId
)
    removeStoreWorldItems(
        "dynamic_" ..
        tostring(storeId)
    )
end


-- ============================================================
-- SERVER RETURNS AVAILABLE CLOTHING GROUPS
-- ============================================================

RegisterNetEvent(
    "c8c4d7de17",
    function(serverAvailableGroups)
        availableClothingGroups =
            serverAvailableGroups
            or {}

        clothingListsNeedRefresh = true

        -- If another clothing menu is already open, just refresh the lists.
        if not RageUI.IsAnyMenuOfTypeVisible(
            "CMGclothing"
        ) then

            rebuildAllCategoryLists()

            RageUI.Visible(
                mainMenu,
                true
            )
        end
    end
)


-- Imported/custom clothing ownership changed.
AddEventHandler(
    "d580dacaa7",
    function()
        clothingListsNeedRefresh = true
    end
)


-- ============================================================
-- MAIN MENU
-- ============================================================

local function selectClothingGroup(
    groupId
)
    selectedClothingGroup =
        groupId

    activeCategory = nil
    clothingListsNeedRefresh = true

    rebuildAllCategoryLists()
    startClothingCamera()
end


local function drawGroupButtons()
    local paramedicOnly =
        CMG.hasClientPermission(
            "paramedic.permission"
        )

    for _, group in ipairs(clothingGroups) do
        local shouldShow =
            canOpenClothingGroup(
                group.id
            )

        if paramedicOnly then
            shouldShow =
                group.id == "nhs"
        end

        if shouldShow then
            RageUI.ButtonWithStyle(
                group.label,
                "",
                {RightLabel = "→→→"},
                true,
                function(_, _, selected)
                    if selected then
                        selectClothingGroup(
                            group.id
                        )
                    end
                end,
                changeClothingMenu
            )
        end
    end
end


local function drawMoreOptions()
    RageUI.Separator(
        "~y~More Options~w~"
    )

    if not CMG.inOrganHesit() then
        RageUI.ButtonWithStyle(
            "Change Gender",
            "",
            {RightLabel = "→→→"},
            true,
            function()
            end,
            changePedMenu
        )
    end

    if not CMG.hasClientPermission(
        "paramedic.permission"
    ) then

        RageUI.ButtonWithStyle(
            "~y~Wardrobe",
            "",
            {RightLabel = "→→→"},
            true,
            function(_, _, selected)
                if not selected then
                    return
                end

                if CMG.isPlusClub()
                    or CMG.isPlatClub() then

                    RageUI.Visible(
                        mainMenu,
                        false
                    )

                    TriggerEvent(
                        "1fa1fff768"
                    )
                else
                    notify(
                        "~y~You need to be a subscriber of CMG Plus or CMG Platinum to use this feature."
                    )

                    notify(
                        "~y~Available @ store.cmgstudios.net"
                    )
                end
            end
        )

        RageUI.ButtonWithStyle(
            "Apply Outfit Code",
            "Applys an outfit code given by a player with ~y~CMG Plus~w~ or ~y~CMG Platinum~w~.",
            {RightLabel = "→→→"},
            true,
            function(_, _, selected)
                if not selected then
                    return
                end

                CMG.clientPrompt(
                    "Outfit Code:",
                    "",
                    function(code)
                        if not code then
                            return
                        end

                        code =
                            string.gsub(
                                code,
                                "%s+",
                                ""
                            )

                        if #code == 5 then
                            TriggerServerEvent(
                                "a5402aab30",
                                string.upper(code)
                            )
                        else
                            notify(
                                "~r~Outfit code is not in a valid format."
                            )
                        end
                    end
                )
            end
        )
    end


    if CMG.isInGang()
        and CMG.isMainGangAdvanced() then

        RageUI.ButtonWithStyle(
            "Apply Gang Outfit",
            "",
            {RightLabel = "→→→"},
            true,
            function(_, _, selected)
                if selected then
                    TriggerServerEvent(
                        "98b604d886"
                    )
                end
            end
        )

        if CMG.hasGangPermission(
            "leader"
        ) then
            RageUI.ButtonWithStyle(
                "Set Gang Outfit",
                "",
                {RightLabel = "→→→"},
                true,
                function(_, _, selected)
                    if selected then
                        TriggerServerEvent(
                            "b9d98986e1"
                        )
                    end
                end
            )
        end
    end


    RageUI.ButtonWithStyle(
        "Remove Props",
        "",
        {RightLabel = "→→→"},
        true,
        function()
        end,
        clearPropsMenu
    )
end


-- ============================================================
-- CHANGE GENDER MENU
-- ============================================================

local function canChangeGender()
    if GetEntityHealth(
        CMG.getPlayerPed()
    ) > 102 then
        return true
    end

    notify(
        "~r~You cannot change gender whilst dead."
    )

    return false
end


local function drawGenderMenu()
    RageUI.ButtonWithStyle(
        "MP Male",
        "WARNING: Resets all your Body Options",
        {RightLabel = "→→→"},
        true,
        function(_, _, selected)
            if selected
                and canChangeGender() then

                CMG.loadCustomisationPreset(
                    "DefaultMale"
                )

                clothingListsNeedRefresh =
                    true
            end
        end
    )

    RageUI.ButtonWithStyle(
        "MP Female",
        "WARNING: Resets all your Body Options",
        {RightLabel = "→→→"},
        true,
        function(_, _, selected)
            if selected
                and canChangeGender() then

                CMG.loadCustomisationPreset(
                    "DefaultFemale"
                )

                clothingListsNeedRefresh =
                    true
            end
        end
    )


    RageUI.ButtonWithStyle(
        "~r~Clear All Appearance",
        "This resets both male and female appearance data, including face appearance, hair, clothing and accessories.",
        {RightLabel = "→→→"},
        true,
        function(_, _, selected)
            if selected then
                TriggerServerEvent(
                    "862cc1a614"
                )
            end
        end
    )
end


-- ============================================================
-- CLEAR PROP MENU
-- ============================================================

local function propRemovalButton(
    label,
    propId
)
    RageUI.Button(
        label,
        nil,
        true,
        function(_, _, selected)
            if selected then
                ClearPedProp(
                    CMG.getPlayerPed(),
                    propId
                )
            end
        end
    )
end


local function drawClearPropsMenu()
    propRemovalButton(
        "Remove Hat",
        0
    )

    propRemovalButton(
        "Remove Glasses",
        1
    )

    propRemovalButton(
        "Remove Ear Accessory",
        2
    )

    propRemovalButton(
        "Remove Watch",
        6
    )

    propRemovalButton(
        "Remove Bracelet",
        7
    )
end


-- ============================================================
-- DIRECT CLOTHING-ID INPUT
-- ============================================================

local directInputBusy = false


local function promptForClothingId()
    if directInputBusy
        or not activeCategory then
        return
    end

    directInputBusy = true

    Citizen.CreateThread(function()
        local input =
            CMG.GetRageInputText(
                "Enter clothing ID you want to wear"
            )

        directInputBusy = false

        if not input then
            return
        end

        local requested =
            tonumber(input)

        if not requested then
            return
        end

        -- The UI exposes list position rather than GTA's global drawable ID.
        requested =
            math.floor(
                requested
            )

        if requested < 1
            or requested
                > #activeCategory.drawableValues then
            notify(
                "~r~That clothing ID is not available in this list."
            )
            return
        end

        activeCategory.selectedListIndex =
            requested

        local drawable =
            activeCategory.drawableValues[
                requested
            ]

        activeCategory.textureIndex =
            firstVisibleTexture(
                activeCategory,
                drawable
            )

        applyCategorySelection(
            activeCategory,
            drawable,
            activeCategory.textureIndex
        )
    end)
end


-- ============================================================
-- CLOTHING CATEGORY ROW
-- ============================================================

local function drawClothingCategory(
    category
)
    local enabled =
        canChangeCategory(
            category.name
        )

    local description =
        "~INPUT_CELLPHONE_SELECT~ Change Texture\n" ..
        "~INPUT_CELLPHONE_RIGHT~ Next Index\n" ..
        "~INPUT_CELLPHONE_LEFT~ Previous Index\n" ..
        "~INPUT_CELLPHONE_EXTRA_OPTION~ Enter Clothing ID\n" ..
        "~INPUT_LOOK_LR~ Rotate Camera\n" ..
        "~INPUT_FRONTEND_DELETE~ Remove item"

    RageUI.List(
        category.name,
        category.menuLabels,
        category.selectedListIndex,
        description,
        {},
        enabled,

        function(_, active, _, listIndex)
            if not enabled then
                return
            end

            activeCategory =
                category

            -- Left/right changed the drawable.
            if listIndex
                ~= category.selectedListIndex then

                category.selectedListIndex =
                    listIndex

                local drawable =
                    category.drawableValues[
                        listIndex
                    ]

                if drawable ~= nil then
                    category.textureIndex =
                        firstVisibleTexture(
                            category,
                            drawable
                        )

                    applyCategorySelection(
                        category,
                        drawable,
                        category.textureIndex
                    )
                end
            end

            if not active then
                return
            end

            -- The original client used these phone/menu controls to cycle
            -- textures while the clothing row was active.
            if controlJustPressed(172)
                or controlJustPressed(241) then

                cycleTexture(
                    category,
                    -1
                )
            end

            if controlJustPressed(173)
                or controlJustPressed(242) then

                cycleTexture(
                    category,
                    1
                )
            end

            -- INPUT_FRONTEND_DELETE.
            if controlJustPressed(214) then
                resetCategory(category)

                clothingListsNeedRefresh =
                    true
            end

            -- INPUT_CELLPHONE_EXTRA_OPTION from the original client.
            if IsDisabledControlJustPressed(
                0,
                179
            ) then
                promptForClothingId()
            end
        end
    )
end


local function drawClothingMenu()
    if clothingListsNeedRefresh then
        rebuildAllCategoryLists()
    end

    for _, category
        in ipairs(clothingCategories) do

        drawClothingCategory(
            category
        )
    end
end


-- ============================================================
-- RAGEUI DRAW LOOP
-- ============================================================

RageUI.CreateWhile(
    1.0,
    mainMenu,
    nil,
    function()
        RageUI.IsVisible(
            mainMenu,
            true,
            false,
            true,
            function()
                drawGroupButtons()
                drawMoreOptions()
            end,
            function()
            end
        )

        RageUI.IsVisible(
            changePedMenu,
            true,
            false,
            true,
            drawGenderMenu,
            function()
            end
        )

        RageUI.IsVisible(
            changeClothingMenu,
            true,
            false,
            true,
            drawClothingMenu,
            function()
            end
        )

        RageUI.IsVisible(
            clearPropsMenu,
            true,
            false,
            true,
            drawClearPropsMenu,
            function()
            end
        )
    end
)


-- ============================================================
-- DEFAULT CUSTOMISATION RESET
-- ============================================================

RegisterNetEvent(
    "5554c4f64b",
    function()
        tCMG.setCustomization(
            CMG.getDefaultCustomization(
                CMG.getModelGender()
                    == "female"
            ),
            true,
            true
        )

        clothingListsNeedRefresh =
            true
    end
)


-- ============================================================
-- DEVELOPER TOOL: MIGRATE OLD GLOBAL CLOTHING IDS
-- ============================================================

-- Old clothing configs stored GLOBAL drawable IDs.
-- Newer configs store collectionName + localIndex, which survives GTA DLC
-- ordering changes much better.
local function migrateWhitelistConfig()
    local output = {
        male_whitelists = {},
        female_whitelists = {}
    }

    local originalModel =
        GetEntityModel(
            PlayerPedId()
        )

    local function migrateGender(
        gender,
        modelHash,
        whitelistName
    )
        CMG.loadModel(modelHash)

        SetPlayerModel(
            PlayerId(),
            modelHash
        )

        SetModelAsNoLongerNeeded(
            modelHash
        )

        Wait(100)

        local ped =
            PlayerPedId()

        local sourceWhitelist =
            clothingConfig[
                whitelistName
            ]
            or {}

        local destination =
            output[
                whitelistName
            ]

        for categoryName, entries
            in pairs(sourceWhitelist) do

            destination[categoryName] =
                {}

            local category = nil

            for _, candidate
                in ipairs(clothingCategories) do

                if candidate.name
                    == categoryName then

                    category = candidate
                    break
                end
            end

            if category then
                for _, entry
                    in ipairs(entries) do

                    local globalIndex =
                        entry.globalIndex
                        or entry.drawableId
                        or entry.drawable

                    if type(globalIndex)
                        == "number" then

                        local collectionName
                        local localIndex

                        if category.type
                            == "prop" then

                            collectionName =
                                GetPedCollectionNameFromProp(
                                    ped,
                                    category.index,
                                    globalIndex
                                )

                            localIndex =
                                GetPedCollectionLocalIndexFromProp(
                                    ped,
                                    category.index,
                                    globalIndex
                                )
                        else
                            collectionName =
                                GetPedCollectionNameFromDrawable(
                                    ped,
                                    category.index,
                                    globalIndex
                                )

                            localIndex =
                                GetPedCollectionLocalIndexFromDrawable(
                                    ped,
                                    category.index,
                                    globalIndex
                                )
                        end

                        table.insert(
                            destination[
                                categoryName
                            ],
                            {
                                collectionName =
                                    collectionName,

                                localIndex =
                                    localIndex,

                                permissions =
                                    entry.permissions,

                                hiddenTextures =
                                    entry.hiddenTextures
                            }
                        )
                    else
                        -- Already-migrated entry: keep it.
                        table.insert(
                            destination[
                                categoryName
                            ],
                            entry
                        )
                    end
                end
            end
        end
    end

    migrateGender(
        "male",
        1885233650,
        "male_whitelists"
    )

    migrateGender(
        "female",
        -1667301416,
        "female_whitelists"
    )

    -- Restore the old ped model after generating the config.
    if originalModel
        and originalModel ~= 0 then

        CMG.loadModel(
            originalModel
        )

        SetPlayerModel(
            PlayerId(),
            originalModel
        )

        SetModelAsNoLongerNeeded(
            originalModel
        )
    end

    CMG.copyToClipboard(
        json.encode(
            output,
            {indent = true}
        )
    )

    notify(
        "~g~Clothing migration has finished!"
    )
end


CMG.registerDevMenuItems(
    "Customisation",
    function()
        RageUI.Button(
            "Migrate Clothing Config",
            "",
            true,
            function(_, _, selected)
                if selected then
                    migrateWhitelistConfig()
                end
            end
        )
    end
)


-- ============================================================
-- CLEAN CAMERA UP IF THE RESOURCE STOPS
-- ============================================================

AddEventHandler(
    "onResourceStop",
    function(resourceName)
        if resourceName
            == GetCurrentResourceName() then

            stopClothingCamera()
        end
    end
)
