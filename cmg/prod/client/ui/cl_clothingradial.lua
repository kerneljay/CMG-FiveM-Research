--[[
    Clothing Radial Menu - beginner-friendly rewrite
    ------------------------------------------------
    This file is a readable rewrite of the supplied decompiled Lua.

    What this script does:
      1. Loads the clothing configuration.
      2. Lets the player remove/restore clothing and props.
      3. Saves the original item so it can be put back on.
      4. Plays clothing animations while items change.
      5. Registers chat/console commands such as /hat, /gloves, etc.
      6. Draws and controls the radial clothing menu.
      7. Contains optional debug helpers for testing clothing variants.

    Important:
      - Existing FiveM/CMG event names have been preserved.
      - The external config is still loaded from:
            cfg/ped_cfg/clothingradial
      - "Drawable" = normal ped clothing component.
      - "Prop"     = hats, glasses, watches, etc.
]]

---------------------------------------------------------------------
-- CONFIG / CONSTANTS
---------------------------------------------------------------------

local ClothingData = CMG.loadModule("cfg/ped_cfg/clothingradial")

-- FiveM input IDs. The menu mainly uses Y, but the original script
-- contained this lookup table, so it has been kept in readable form.
local INPUT_KEYS = {
    [","] = 82,
    ["-"] = 84,
    ["."] = 81,
    ["1"] = 157,
    ["2"] = 158,
    ["3"] = 160,
    ["4"] = 164,
    ["5"] = 165,
    ["6"] = 159,
    ["7"] = 161,
    ["8"] = 162,
    ["9"] = 163,
    ["="] = 83,
    ["["] = 39,
    ["]"] = 40,

    A = 34,
    B = 29,
    BACKSPACE = 177,
    C = 26,
    CAPS = 137,
    D = 9,
    DELETE = 178,
    UP = 172,
    DOWN = 173,
    E = 38,
    ENTER = 18,
    ESC = 322,
    F = 23,
    F1 = 288,
    F2 = 289,
    F3 = 170,
    F5 = 166,
    F6 = 167,
    F7 = 168,
    F8 = 169,
    F9 = 56,
    F10 = 57,
    G = 47,
    H = 74,
    HOME = 213,
    K = 311,
    L = 182,
    LEFT = 174,
    LEFTALT = 19,
    LEFTCTRL = 36,
    LEFTSHIFT = 21,
    M = 244,
    N = 249,
    ["N+"] = 96,
    ["N-"] = 97,
    N4 = 108,
    N5 = 60,
    N6 = 107,
    N7 = 117,
    N8 = 61,
    N9 = 118,
    NENTER = 201,
    P = 199,
    PAGEDOWN = 11,
    PAGEUP = 10,
    Q = 44,
    R = 45,
    RIGHT = 175,
    RIGHTCTRL = 70,
    S = 8,
    SPACE = 22,
    T = 245,
    TAB = 37,
    TOP = 27,
    U = 303,
    V = 0,
    W = 32,
    X = 73,
    Y = 246,
    Z = 20,
    ["~"] = 243,
}

local menuOpen = false
local actionBusy = false

-- Stores clothing we have temporarily removed.
-- Example:
-- savedOutfit.Hat = { Id = 0, Prop = 12, Texture = 0 }
local savedOutfit = {}

-- Used only by the debug variant tester.
local testingVariants = false

---------------------------------------------------------------------
-- LANGUAGE / GUI SETTINGS
---------------------------------------------------------------------

local Languages = {
    en = {
        AlreadyWearing = "You are already wearing that.",
        Bag = "Bag",
        Bag2 = "Opens or closes your bag.",
        Bracelet = "Bracelet",
        Ear = "Ear",
        Ear2 = "ear accessory",
        Glasses = "Glasses",
        Gloves = "Gloves",
        Hair = "Hair",
        Hair2 = "Put your hair up/down/in a bun/ponytail.",
        Hat = "Hat",
        Info = "Info",
        Information = "If the button is blue, you have a saved item.",
        Mask = "Mask",
        Neck = "Neck",
        Neck2 = "neck accessory",
        NotAllowedPed = "This ped model does not allow for this option.",
        NothingToRemove = "You dont appear to have anything to remove.",
        NoVariants = "There dont seem to be any variants for this.",
        Pants = "Pants",
        PleaseWait = "Please wait...",
        Shirt = "Shirt",
        Shoes = "Shoes",
        TakeOffOn = "Take your %s off/on.",
        Top = "Top",
        Top2 = "Toggle shirt variation.",
        Vest = "Vest",
        Visor = "Visor",
        Visor2 = "Toggle hat variation.",
        Watch = "Watch",
        NoShirtOn = "You cannot do this without your shirt on.",
        Reset = "Revert",
        Reset2 = "Revert everything back to normal.",
        Exit = "Close",

        -- Command names.
        BAG = "bag",
        BRACELET = "bracelet",
        EAR = "ear",
        GLASSES = "glasses",
        GLOVES = "gloves",
        HAIR = "hair",
        HAT = "hat",
        MASK = "mask",
        NECK = "neck",
        SHOES = "shoes",
        TOP = "top",
        VEST = "vest",
        VISOR = "visor",
        WATCH = "watch",
        PANTS = "pants",
        SHIRT = "shirt",
        RESET = "revertclothing",
        BAGOFF = "bagoff",
    }
}

local Config = {
    Language = "en",
    ExtrasEnabled = true,
    Debug = false,

    GUI = {
        Position = {
            x = 0.65,
            y = 0.5,
        },

        AllowInCars = false,
        AllowWhenRagdolled = false,
        Enabled = true,
        Key = INPUT_KEYS.Y,
        Sound = true,

        TextColor = { 255, 255, 255 },
        TextOutline = true,
        TextFont = 0,
        TextSize = 0.21,

        -- false = the +clothingmenu / -clothingmenu keybind style is used.
        Toggle = false,
    },

    Commands = {},
    ExtraCommands = {},
}

---------------------------------------------------------------------
-- SMALL GENERAL HELPERS
---------------------------------------------------------------------

local function debugPrint(value)
    if value == nil then
        print("nil")
        return
    end

    if not Config.Debug then
        return
    end

    if type(value) == "table" then
        print(json.encode(value))
    elseif type(value) == "boolean" then
        print(value)
    else
        print(tostring(value) .. " | " .. type(value))
    end
end

local function getInputKey(keyName)
    return INPUT_KEYS[string.upper(keyName)] or false
end

-- Blocks clothing actions for a short time while an animation is running.
local function markActionBusy(milliseconds)
    Citizen.CreateThread(function()
        actionBusy = true
        Wait(milliseconds)
        actionBusy = false
    end)
end

-- pairs() does not guarantee order.
-- This helper gives us an iterator over sorted keys.
local function sortedPairs(tbl, sorter)
    local keys = {}

    for key in pairs(tbl) do
        table.insert(keys, key)
    end

    table.sort(keys, sorter)

    local index = 0

    return function()
        index = index + 1

        local key = keys[index]
        if key == nil then
            return nil
        end

        return key, tbl[key]
    end
end

local function drawText(x, y, size, text, color, justification, outline, wrap)
    justification = justification or 0
    color = color or Config.GUI.TextColor

    SetTextFont(Config.GUI.TextFont)
    SetTextJustification(justification)
    SetTextScale(size, size)
    SetTextColour(color[1], color[2], color[3], 255)

    if Config.GUI.TextOutline then
        SetTextOutline()
    end

    if wrap then
        SetTextWrap(wrap.x, wrap.y)
    end

    BeginTextCommandDisplayText("STRING")
    AddTextComponentSubstringPlayerName(text)
    EndTextCommandDisplayText(x, y)
end

local function capitalizeFirst(text)
    return text:gsub("^%l", string.upper)
end

local function translate(key)
    local selectedLanguage = Languages[Config.Language]
    local translated = selectedLanguage and selectedLanguage[key]

    if translated == nil then
        translated = Languages.en[key]
    end

    return translated
end

local function showNotification(message)
    notify(message)
end

-- Only the normal GTA Online freemode male/female peds support all
-- the variation tables used by this clothing script.
local function getFreemodeGender(ped)
    local maleModel = GetHashKey("mp_m_freemode_01")
    local femaleModel = GetHashKey("mp_f_freemode_01")
    local pedModel = GetEntityModel(ped)

    if pedModel == maleModel then
        return "Male"
    elseif pedModel == femaleModel then
        return "Female"
    end

    return false
end

---------------------------------------------------------------------
-- SAVING / RESTORING CLOTHING
---------------------------------------------------------------------

local function equipSavedOutfit()
    local ped = PlayerPedId()

    for _, savedItem in pairs(savedOutfit) do
        if savedItem then
            -- The decompiled source inconsistently used both "ID" and
            -- "Id". Accept either form so older saved data still works.
            local componentId = savedItem.Id or savedItem.ID

            if savedItem.Drawable ~= nil then
                SetPedComponentVariation(
                    ped,
                    componentId,
                    savedItem.Drawable,
                    savedItem.Texture,
                    0
                )
            elseif savedItem.Prop ~= nil then
                ClearPedProp(ped, componentId)

                SetPedPropIndex(
                    ped,
                    componentId,
                    savedItem.Prop,
                    savedItem.Texture,
                    true
                )
            end
        end
    end

    savedOutfit = {}
end

RegisterNetEvent("dpc:EquipLast")
AddEventHandler("dpc:EquipLast", equipSavedOutfit)

RegisterNetEvent("dpc:ResetClothing")
AddEventHandler("dpc:ResetClothing", function()
    -- This event forgets the stored "before" clothing.
    -- It does not change what the player currently has equipped.
    savedOutfit = {}
end)

---------------------------------------------------------------------
-- MENU SOUNDS / OPEN-CLOSE EVENTS
---------------------------------------------------------------------

local MENU_SOUNDS = {
    Close = { "TOGGLE_ON", "HUD_FRONTEND_DEFAULT_SOUNDSET" },
    Open = { "NAV_LEFT_RIGHT", "HUD_FRONTEND_DEFAULT_SOUNDSET" },
    Select = { "SELECT", "HUD_FRONTEND_DEFAULT_SOUNDSET" },
}

local function playMenuSound(soundName)
    if not Config.GUI.Sound then
        return
    end

    local sound = MENU_SOUNDS[soundName]
    if not sound then
        return
    end

    PlaySoundFrontend(-1, sound[1], sound[2], false)
end

RegisterNetEvent("dpc:ToggleMenu")
AddEventHandler("dpc:ToggleMenu", function()
    menuOpen = not menuOpen

    if menuOpen then
        playMenuSound("Open")
        SetCursorLocation(Config.GUI.Position.x, Config.GUI.Position.y)
    else
        playMenuSound("Close")
    end
end)

RegisterNetEvent("dpc:Menu")
AddEventHandler("dpc:Menu", function(shouldOpen)
    menuOpen = shouldOpen

    if menuOpen then
        playMenuSound("Open")
    else
        playMenuSound("Close")
    end
end)

---------------------------------------------------------------------
-- CLOTHING ANIMATION
---------------------------------------------------------------------

-- Plays the animation first, then runs callback() when the item
-- should actually be changed.
local function playClothingAnimation(animation, callback)
    local ped = PlayerPedId()

    while not HasAnimDictLoaded(animation.Dict) do
        RequestAnimDict(animation.Dict)
        Wait(100)
    end

    -- The original script changes the movement flag while inside a vehicle.
    if IsPedInAnyVehicle(ped, true) then
        animation.Move = 51
    end

    TaskPlayAnim(
        ped,
        animation.Dict,
        animation.Anim,
        3.0,
        3.0,
        animation.Dur,
        animation.Move,
        0,
        false,
        false,
        false
    )

    RemoveAnimDict(animation.Dict)

    -- Do not let the player spam clothing changes during the animation.
    local waitTime = animation.Dur - 500

    if waitTime < 500 then
        waitTime = 500
    end

    markActionBusy(waitTime)
    Wait(waitTime)

    callback()
end

---------------------------------------------------------------------
-- RESTORE EVERYTHING THE PLAYER TOGGLED
---------------------------------------------------------------------

local function restoreSavedClothing(playAnimation)
    local ped = PlayerPedId()

    if playAnimation then
        local topAnimation = ClothingData.Drawables.Top.Emote

        TaskPlayAnim(
            ped,
            topAnimation.Dict,
            topAnimation.Anim,
            3.0,
            3.0,
            3000,
            topAnimation.Move,
            0,
            false,
            false,
            false
        )
    end

    for _, savedItem in pairs(savedOutfit) do
        if savedItem then
            if savedItem.Drawable ~= nil then
                SetPedComponentVariation(
                    ped,
                    savedItem.Id,
                    savedItem.Drawable,
                    savedItem.Texture,
                    0
                )
            elseif savedItem.Prop ~= nil then
                ClearPedProp(ped, savedItem.Id)

                SetPedPropIndex(
                    ped,
                    savedItem.Id,
                    savedItem.Prop,
                    savedItem.Texture,
                    true
                )
            end
        end
    end

    savedOutfit = {}
end

---------------------------------------------------------------------
-- NORMAL CLOTHING COMPONENTS
---------------------------------------------------------------------

-- Examples of "drawables":
--   Top, Gloves, Bag, Shoes, Vest, Hair, Neck, Mask, Pants, Shirt
--
-- isExtra tells the function to read ClothingData.Extras instead of
-- ClothingData.Drawables.
local function toggleDrawable(itemName, isExtra)
    if actionBusy then
        return
    end

    local item = ClothingData.Drawables[itemName]

    if isExtra then
        item = ClothingData.Extras[itemName]
    end

    if not item then
        debugPrint("Missing drawable config for " .. tostring(itemName))
        return false
    end

    local ped = PlayerPedId()

    local current = {
        Drawable = GetPedDrawableVariation(ped, item.Drawable),
        Id = item.Drawable,
        Ped = ped,
        Texture = GetPedTextureVariation(ped, item.Drawable),
    }

    local gender = getFreemodeGender(ped)

    -- The original code makes an exception for masks.
    if itemName ~= "Mask" and not gender then
        showNotification(translate("NotAllowedPed"))
        return false
    end

    local variants = item.Table[gender]

    -----------------------------------------------------------------
    -- TABLE-BASED VARIANTS
    -----------------------------------------------------------------
    if not item.Table.Standalone then
        for wornDrawable, replacementDrawable in sortedPairs(variants) do

            ---------------------------------------------------------
            -- Do not remember the previous item.
            ---------------------------------------------------------
            if not item.Remember then
                if wornDrawable == current.Drawable then
                    playClothingAnimation(item.Emote, function()
                        SetPedComponentVariation(
                            ped,
                            item.Drawable,
                            replacementDrawable,
                            current.Texture,
                            0
                        )
                    end)

                    return true
                end

            ---------------------------------------------------------
            -- Remember what the player was wearing so it can
            -- be restored next time the same button is pressed.
            ---------------------------------------------------------
            elseif not savedOutfit[itemName] then
                if wornDrawable == current.Drawable then
                    savedOutfit[itemName] = current

                    playClothingAnimation(item.Emote, function()
                        SetPedComponentVariation(
                            ped,
                            item.Drawable,
                            replacementDrawable,
                            current.Texture,
                            0
                        )
                    end)

                    return true
                end

            ---------------------------------------------------------
            -- This clothing item was already toggled.
            -- Put the original item back on.
            ---------------------------------------------------------
            else
                local saved = savedOutfit[itemName]

                playClothingAnimation(item.Emote, function()
                    SetPedComponentVariation(
                        ped,
                        item.Drawable,
                        saved.Drawable,
                        saved.Texture,
                        0
                    )

                    savedOutfit[itemName] = false
                end)

                return true
            end
        end

        showNotification(translate("NoVariants"))
        return false
    end

    -----------------------------------------------------------------
    -- STANDALONE VARIANT
    --
    -- A standalone entry has one replacement drawable rather than a
    -- mapping of currentDrawable -> replacementDrawable.
    -----------------------------------------------------------------

    if not savedOutfit[itemName] then
        if current.Drawable ~= variants then
            playClothingAnimation(item.Emote, function()
                savedOutfit[itemName] = current

                SetPedComponentVariation(
                    ped,
                    item.Drawable,
                    variants,
                    0,
                    0
                )

                -- Some clothing changes require changing additional
                -- components at the same time.
                if item.Table.Extra then
                    for _, extra in pairs(item.Table.Extra) do
                        local savedExtra = {
                            Drawable = GetPedDrawableVariation(ped, extra.Drawable),
                            Texture = GetPedTextureVariation(ped, extra.Drawable),
                            Id = extra.Drawable,
                        }

                        SetPedComponentVariation(
                            ped,
                            extra.Drawable,
                            extra.Id,
                            extra.Tex,
                            0
                        )

                        savedOutfit[extra.Name] = savedExtra
                    end
                end
            end)

            return true
        end
    else
        local saved = savedOutfit[itemName]

        playClothingAnimation(item.Emote, function()
            SetPedComponentVariation(
                ped,
                item.Drawable,
                saved.Drawable,
                saved.Texture,
                0
            )

            savedOutfit[itemName] = false

            -- Restore any extra components that were changed together.
            if item.Table.Extra then
                for _, extra in pairs(item.Table.Extra) do
                    local savedExtra = savedOutfit[extra.Name]

                    if savedExtra then
                        SetPedComponentVariation(
                            ped,
                            savedExtra.Id,
                            savedExtra.Drawable,
                            savedExtra.Texture,
                            0
                        )

                        savedOutfit[extra.Name] = false
                    end
                end
            end
        end)

        return true
    end

    showNotification(translate("AlreadyWearing"))
    return false
end

---------------------------------------------------------------------
-- PROPS
---------------------------------------------------------------------

-- Props are separate from normal clothing components.
-- Examples: Hat, Glasses, Ear, Watch, Bracelet, Visor.
local function toggleProp(itemName)
    if actionBusy then
        return
    end

    local item = ClothingData.Props[itemName]

    if not item then
        debugPrint("Missing prop config for " .. tostring(itemName))
        return false
    end

    local ped = PlayerPedId()

    local current = {
        Id = item.Prop,
        Ped = ped,
        Prop = GetPedPropIndex(ped, item.Prop),
        Texture = GetPedPropTextureIndex(ped, item.Prop),
    }

    -----------------------------------------------------------------
    -- SIMPLE ON/OFF PROP
    -----------------------------------------------------------------
    if not item.Variants then
        -- Player currently has a prop on: save it and remove it.
        if current.Prop ~= -1 then
            playClothingAnimation(item.Emote.Off, function()
                savedOutfit[itemName] = current
                ClearPedProp(ped, item.Prop)
            end)

            return true
        end

        -- Player has previously removed this prop: restore it.
        local saved = savedOutfit[itemName]

        if saved then
            playClothingAnimation(item.Emote.On, function()
                SetPedPropIndex(
                    ped,
                    item.Prop,
                    saved.Prop,
                    saved.Texture,
                    true
                )
            end)

            savedOutfit[itemName] = false
            return true
        end

        showNotification(translate("NothingToRemove"))
        return false
    end

    -----------------------------------------------------------------
    -- PROP WITH VARIANTS
    -----------------------------------------------------------------

    local gender = getFreemodeGender(ped)

    if not gender then
        showNotification(translate("NotAllowedPed"))
        return false
    end

    local variants = item.Variants[gender]

    for currentProp, replacementProp in pairs(variants) do
        if current.Prop == currentProp then
            playClothingAnimation(item.Emote.On, function()
                SetPedPropIndex(
                    ped,
                    item.Prop,
                    replacementProp,
                    current.Texture,
                    true
                )
            end)

            return true
        end
    end

    showNotification(translate("NoVariants"))
    return false
end

---------------------------------------------------------------------
-- DEBUG HELPERS
---------------------------------------------------------------------

-- Draws the player's current clothing IDs on-screen.
local function drawDebugClothingState()
    local entries = {}

    for name, item in sortedPairs(ClothingData.Drawables) do
        table.insert(entries, {
            Name = name,
            Drawable = item.Drawable,
        })
    end

    for name, item in sortedPairs(ClothingData.Extras) do
        table.insert(entries, {
            Name = name,
            Drawable = item.Drawable,
        })
    end

    for name, item in sortedPairs(ClothingData.Props) do
        table.insert(entries, {
            Name = name,
            Prop = item.Prop,
        })
    end

    for index, entry in pairs(entries) do
        local ped = PlayerPedId()
        local current

        if entry.Drawable then
            current = {
                Id = GetPedDrawableVariation(ped, entry.Drawable),
                Texture = GetPedTextureVariation(ped, entry.Drawable),
            }
        elseif entry.Prop then
            current = {
                Id = GetPedPropIndex(ped, entry.Prop),
                Texture = GetPedPropTextureIndex(ped, entry.Prop),
            }
        end

        drawText(
            0.2,
            (0.8 * index) / 18,
            0.3,
            ("~o~%s~w~ = \n     (%s , %s)"):format(
                entry.Name,
                current.Id,
                current.Texture
            ),
            false,
            1
        )

        DrawRect(
            0.23,
            ((0.8 * index) / 18) + 0.025,
            0.07,
            0.045,
            0,
            0,
            0,
            150
        )
    end
end

-- Cycles through configured variants to make development/testing easier.
local function testVariants(itemName)
    if testingVariants then
        showNotification("Already testing variants.")
        return
    end

    Citizen.CreateThread(function()
        testingVariants = true

        local ped = PlayerPedId()
        local drawableItem = ClothingData.Drawables[itemName]
        local propItem = ClothingData.Props[itemName]
        local gender = getFreemodeGender(ped)

        if drawableItem and drawableItem.Table then
            local genderTable = drawableItem.Table[gender]

            if type(genderTable) == "table" then
                for fromDrawable, toDrawable in sortedPairs(genderTable) do
                    showNotification(itemName .. " : ~o~" .. tostring(fromDrawable))
                    playMenuSound("Open")

                    SetPedComponentVariation(
                        ped,
                        drawableItem.Drawable,
                        fromDrawable,
                        0,
                        0
                    )

                    Wait(300)

                    showNotification(itemName .. " : ~b~" .. tostring(toDrawable))
                    playMenuSound("Close")

                    SetPedComponentVariation(
                        ped,
                        drawableItem.Drawable,
                        toDrawable,
                        0,
                        0
                    )

                    Wait(300)
                end
            end

        elseif propItem and propItem.Variants then
            local genderVariants = propItem.Variants[gender]

            for fromProp, toProp in sortedPairs(genderVariants) do
                showNotification(itemName .. " : ~o~" .. tostring(fromProp))
                playMenuSound("Open")

                SetPedPropIndex(
                    ped,
                    propItem.Prop,
                    fromProp,
                    0,
                    true
                )

                Wait(300)

                showNotification(itemName .. " : ~b~" .. tostring(toProp))
                playMenuSound("Close")

                SetPedPropIndex(
                    ped,
                    propItem.Prop,
                    toProp,
                    0,
                    true
                )

                Wait(300)

                ClearPedProp(ped, propItem.Prop)
                Wait(200)
            end
        end

        testingVariants = false
    end)
end

---------------------------------------------------------------------
-- COMMAND DEFINITIONS
---------------------------------------------------------------------

local function takeOffDescription(name)
    return string.format(translate("TakeOffOn"), string.lower(name))
end

Config.Commands[translate("TOP")] = {
    Func = function()
        toggleDrawable("Top")
    end,
    Sprite = "top",
    Desc = translate("Top2"),
    Button = 1,
    Name = translate("Top"),
}

Config.Commands[translate("GLOVES")] = {
    Func = function()
        toggleDrawable("Gloves")
    end,
    Sprite = "gloves",
    Desc = takeOffDescription(translate("Gloves")),
    Button = 2,
    Name = translate("Gloves"),
}

Config.Commands[translate("VISOR")] = {
    Func = function()
        toggleProp("Visor")
    end,
    Sprite = "visor",
    Desc = translate("Visor2"),
    Button = 3,
    Name = translate("Visor"),
}

Config.Commands[translate("HAT")] = {
    Func = function()
        toggleProp("Hat")
    end,
    Sprite = "hat",
    Desc = takeOffDescription(translate("Hat")),
    Button = 4,
    Name = translate("Hat"),
}

Config.Commands[translate("SHOES")] = {
    Func = function()
        toggleDrawable("Shoes")
    end,
    Sprite = "shoes",
    Desc = takeOffDescription(translate("Shoes")),
    Button = 5,
    Name = translate("Shoes"),
}

Config.Commands[translate("MASK")] = {
    Func = function()
        toggleDrawable("Mask")
    end,
    Sprite = "mask",
    Desc = takeOffDescription(translate("Mask")),
    Button = 6,
    Name = translate("Mask"),
}

Config.Commands[translate("HAIR")] = {
    Func = function()
        toggleDrawable("Hair")
    end,
    Sprite = "hair",
    Desc = translate("Hair2"),
    Button = 7,
    Name = translate("Hair"),
}

Config.Commands[translate("BAG")] = {
    Func = function()
        toggleDrawable("Bag")
    end,
    Sprite = "bag",
    Desc = translate("Bag2"),
    Button = 8,
    Name = translate("Bag"),
}

Config.Commands[translate("GLASSES")] = {
    Func = function()
        toggleProp("Glasses")
    end,
    Sprite = "glasses",
    Desc = takeOffDescription(translate("Glasses")),
    Button = 9,
    Name = translate("Glasses"),
}

Config.Commands[translate("EAR")] = {
    Func = function()
        toggleProp("Ear")
    end,
    Sprite = "ear",
    Desc = string.format(translate("TakeOffOn"), string.lower(translate("Ear2"))),
    Button = 10,
    Name = translate("Ear"),
}

Config.Commands[translate("NECK")] = {
    Func = function()
        toggleDrawable("Neck")
    end,
    Sprite = "neck",
    Desc = string.format(translate("TakeOffOn"), string.lower(translate("Neck2"))),
    Button = 11,
    Name = translate("Neck"),
}

Config.Commands[translate("WATCH")] = {
    Func = function()
        toggleProp("Watch")
    end,
    Sprite = "watch",
    Desc = takeOffDescription(translate("Watch")),
    Button = 12,
    Name = translate("Watch"),
    Rotation = 5.0,
}

Config.Commands[translate("BRACELET")] = {
    Func = function()
        toggleProp("Bracelet")
    end,
    Sprite = "bracelet",
    Desc = takeOffDescription(translate("Bracelet")),
    Button = 13,
    Name = translate("Bracelet"),
}

Config.Commands[translate("VEST")] = {
    Func = function()
        toggleDrawable("Vest", true)
    end,
    Sprite = "vest",
    Desc = takeOffDescription(translate("Vest")),
    Button = 14,
    Name = translate("Vest"),
}

---------------------------------------------------------------------
-- EXTRA BUTTONS AROUND THE RADIAL
---------------------------------------------------------------------

local PARACHUTE_BAGS = {
    [40] = true,
    [41] = true,
    [44] = true,
    [45] = true,
}

Config.ExtraCommands[translate("PANTS")] = {
    Func = function()
        toggleDrawable("Pants", true)
    end,
    Sprite = "pants",
    Desc = takeOffDescription(translate("Pants")),
    Name = translate("Pants"),
    OffsetX = -0.04,
    OffsetY = 0.0,
}

Config.ExtraCommands[translate("SHIRT")] = {
    Func = function()
        toggleDrawable("Shirt", true)
    end,
    Sprite = "shirt",
    Desc = takeOffDescription(translate("Shirt")),
    Name = translate("Shirt"),
    OffsetX = 0.04,
    OffsetY = 0.0,
}

Config.ExtraCommands[translate("RESET")] = {
    Func = function()
        if not restoreSavedClothing(true) then
            -- The original restore function returns nil, so this condition
            -- results in the "AlreadyWearing" notification after restore.
            showNotification(translate("AlreadyWearing"))
        end
    end,
    Sprite = "reset",
    Desc = translate("Reset2"),
    Name = translate("Reset"),
    OffsetX = 0.12,
    OffsetY = 0.2,
    Rotate = true,
}

Config.ExtraCommands["clothingexit"] = {
    Func = function()
        menuOpen = false
    end,
    Sprite = "exit",
    Desc = "",
    Name = translate("Exit"),
    OffsetX = 0.12,
    OffsetY = -0.2,
    Enabled = Config.GUI.Toggle,
}

Config.ExtraCommands[translate("BAGOFF")] = {
    Func = function()
        toggleDrawable("Bagoff", true)
    end,

    Sprite = "bagoff",

    -- The icon changes depending on whether the saved/current bag looks
    -- like a normal bag or a parachute-style drawable.
    SpriteFunc = function()
        local currentBagDrawable = GetPedDrawableVariation(PlayerPedId(), 5)
        local savedBag = savedOutfit.Bagoff

        if savedBag then
            if PARACHUTE_BAGS[savedBag.Drawable] then
                return "bagoff"
            end

            return "paraoff"
        end

        if currentBagDrawable ~= 0 then
            if PARACHUTE_BAGS[currentBagDrawable] then
                return "bagoff"
            end

            return "paraoff"
        end

        return false
    end,

    Desc = takeOffDescription(translate("Bag")),
    Name = translate("Bag"),
    OffsetX = -0.12,
    OffsetY = 0.2,
}

---------------------------------------------------------------------
-- REGISTER THE TEXT COMMANDS
---------------------------------------------------------------------

local function canRunClothingCommand()
    if IsPlayerFreeAiming(PlayerId()) then
        return false
    end

    if IsPedReloading(PlayerPedId()) then
        return false
    end

    return tCMG.canAnim()
end

for commandName, command in pairs(Config.Commands) do
    RegisterCommand(commandName, function()
        if canRunClothingCommand() then
            command.Func()
        end
    end, false)

    TriggerEvent(
        "chat:addSuggestion",
        "/" .. commandName,
        command.Desc
    )
end

if Config.ExtrasEnabled then
    for commandName, command in pairs(Config.ExtraCommands) do
        RegisterCommand(commandName, function()
            if canRunClothingCommand() then
                command.Func()
            end
        end, false)

        TriggerEvent(
            "chat:addSuggestion",
            "/" .. commandName,
            command.Desc
        )
    end
end

-- If the resource is stopped/restarted while somebody has clothing
-- temporarily removed, restore it.
AddEventHandler("onResourceStop", function(resourceName)
    if resourceName == GetCurrentResourceName() then
        restoreSavedClothing()
    end
end)

---------------------------------------------------------------------
-- THE REST OF THE FILE IS THE RADIAL-MENU GUI
---------------------------------------------------------------------

if not Config.GUI.Enabled then
    return
end

local function distance2D(x1, y1, x2, y2)
    local x = x1 - x2
    local y = y1 - y2

    return math.sqrt((x * x) + (y * y))
end

local function disableMenuControls()
    local controls = {
        1, 2, 18, 68, 69, 70, 91, 92,
        24, 25, 14, 15, 16, 17,
    }

    for _, control in ipairs(controls) do
        DisableControlAction(1, control, true)
    end

    DisablePlayerFiring(PlayerId(), true)
    SetMouseCursorActiveThisFrame()
end

-- FiveM returns the cursor in pixels. The menu is drawn using normalised
-- 0.0 -> 1.0 screen coordinates, so convert the cursor here.
local function getNormalisedCursorPosition()
    local screenWidth, screenHeight = GetActiveScreenResolution()
    local cursorX, cursorY = GetNuiCursorPosition()

    local normalisedX = (cursorX / screenWidth) + 0.008
    local normalisedY = (cursorY / screenHeight) + 0.027

    return normalisedX, normalisedY
end

-- Draws one clickable radial-menu icon.
-- Returns true when the player left-clicks the icon.
local function drawRadialButton(button)
    local circleRotation = button.Rotate or 0.0

    if button.Shadow then
        DrawSprite(
            "dp_clothing",
            "circle",
            button.x,
            button.y,
            button.Size.Circle.x / 0.8,
            button.Size.Circle.y / 0.8,
            circleRotation,
            button.Colour.r,
            button.Colour.g,
            button.Colour.b,
            button.Alpha
        )
    end

    DrawSprite(
        "dp_clothing",
        button.Sprite,
        button.x,
        button.y,
        button.Size.Sprite.x / 0.68,
        button.Size.Sprite.y / 0.68,
        button.Rotation,
        255,
        255,
        255,
        button.Alpha
    )

    -----------------------------------------------------------------
    -- LEFT CLICK
    -----------------------------------------------------------------
    if IsDisabledControlJustPressed(1, 24) then
        local mouseX, mouseY = getNormalisedCursorPosition()

        local distance = distance2D(
            button.x + 0.005,
            button.y + 0.025,
            mouseX,
            mouseY
        )

        if distance < 0.025 then
            return true
        end

    -----------------------------------------------------------------
    -- RIGHT CLICK (DEBUG MODE)
    -----------------------------------------------------------------
    elseif IsDisabledControlJustPressed(1, 25) and Config.Debug then
        local mouseX, mouseY = getNormalisedCursorPosition()

        local distance = distance2D(
            button.x + 0.005,
            button.y + 0.025,
            mouseX,
            mouseY
        )

        if distance < 0.025 then
            testVariants(capitalizeFirst(button.Sprite))
        end
    end

    return false
end

-- Checks whether the radial menu is allowed to open right now.
local function canOpenMenu(ped)
    if IsPedInAnyVehicle(ped, true) and not Config.GUI.AllowInCars then
        return false
    end

    if IsPedSwimmingUnderWater(ped) then
        return false
    end

    if IsPedRagdoll(ped) and not Config.GUI.AllowWhenRagdolled then
        return false
    end

    if IsHudComponentActive(19) then
        return false
    end

    local spellingBeeData = CMG.getClientEventData("SpellingBeeClientData")

    if spellingBeeData and spellingBeeData.minigameName == "Spelling Bee" then
        return false
    end

    if CMG.hasClientPermission("paramedic.permission") then
        return false
    end

    return true
end

---------------------------------------------------------------------
-- BUILD THE RADIAL BUTTON POSITIONS
---------------------------------------------------------------------

local ICON_SIZE = {
    x = 0.0254,
    y = 0.0445,
}

local CIRCLE_SIZE = {
    x = 0.028750000000000005,
    y = 0.05,
}

local mainButtons = {}
local extraButtons = {}

local infoRotation = 0.0

local function buildRadialButtons()
    local centerX = Config.GUI.Position.x
    local centerY = Config.GUI.Position.y

    local radiusX = 0.1
    local radiusY = 0.175

    -------------------------------------------------------------
    -- 14 main buttons arranged in a circle.
    -------------------------------------------------------------
    for commandName, command in pairs(Config.Commands) do
        local buttonNumber = command.Button
        local angle = (buttonNumber * math.pi) / 7

        local x = centerX + (radiusX * math.cos(angle))
        local y = centerY + (radiusY * math.sin(angle))

        mainButtons[buttonNumber] = {
            Command = commandName,
            Desc = command.Desc or "",
            Rotation = command.Rotation or 0.0,
            Size = {
                Sprite = ICON_SIZE,
            },
            Sprite = command.Sprite,
            Text = command.Name,
            x = x,
            y = y,
        }
    end

    -------------------------------------------------------------
    -- Extra buttons use manually configured offsets.
    -------------------------------------------------------------
    if Config.ExtrasEnabled then
        for commandName, command in pairs(Config.ExtraCommands) do
            local enabled = command.Enabled

            if enabled == nil then
                enabled = true
            end

            extraButtons[commandName] = {
                Command = commandName,
                Desc = command.Desc or "",
                OffsetX = command.OffsetX,
                OffsetY = command.OffsetY,

                Size = {
                    Circle = {
                        x = CIRCLE_SIZE.x,
                        y = CIRCLE_SIZE.y,
                    },
                    Sprite = {
                        x = ICON_SIZE.x / 1.35,
                        y = ICON_SIZE.y / 1.35,
                    },
                },

                Sprite = command.Sprite,
                SpriteFunc = command.SpriteFunc,
                Text = command.Name,
                Enabled = enabled,
                Rotate = command.Rotate,
                Rotation = 0.0,
            }
        end
    end
end

---------------------------------------------------------------------
-- LITTLE BUTTON CLICK ANIMATION
---------------------------------------------------------------------

local function animateButton(commandKey, isExtraButton, rotate, isInfoButton)
    Citizen.CreateThread(function()
        playMenuSound("Select")

        local button

        if isExtraButton then
            button = extraButtons[commandKey]
        elseif isInfoButton then
            button = {}
        else
            button = mainButtons[commandKey]
        end

        -------------------------------------------------------------
        -- Spin the selected icon.
        -------------------------------------------------------------
        if rotate then
            for step = 1, 18 do
                local rotation = (-step * 20) + 0.0

                if not isInfoButton then
                    button.Rotation = rotation
                else
                    infoRotation = rotation
                end

                Wait(1)
            end

            return
        end

        -------------------------------------------------------------
        -- Brief "press" animation by shrinking the icon.
        -------------------------------------------------------------
        if not isExtraButton then
            button.Size = {
                Sprite = {
                    x = ICON_SIZE.x / 1.1,
                    y = ICON_SIZE.y / 1.1,
                }
            }

            Wait(100)

            button.Size = {
                Sprite = {
                    x = ICON_SIZE.x,
                    y = ICON_SIZE.y,
                }
            }
        else
            button.Size = {
                Circle = {
                    x = CIRCLE_SIZE.x,
                    y = CIRCLE_SIZE.y,
                },
                Sprite = {
                    x = (ICON_SIZE.x / 1.3) / 1.1,
                    y = (ICON_SIZE.y / 1.3) / 1.1,
                },
            }

            Wait(100)

            button.Size = {
                Circle = {
                    x = CIRCLE_SIZE.x,
                    y = CIRCLE_SIZE.y,
                },
                Sprite = {
                    x = ICON_SIZE.x / 1.35,
                    y = ICON_SIZE.y / 1.35,
                },
            }
        end
    end)
end

---------------------------------------------------------------------
-- HOVER TEXT
---------------------------------------------------------------------

local function drawHoverInformation()
    local mouseX, mouseY = getNormalisedCursorPosition()

    for _, button in pairs(mainButtons) do
        local distance = distance2D(
            button.x + 0.005,
            button.y + 0.025,
            mouseX,
            mouseY
        )

        if distance < 0.025 then
            drawText(
                Config.GUI.Position.x,
                Config.GUI.Position.y - 0.1,
                0.3,
                button.Text,
                false,
                false,
                true
            )

            drawText(
                Config.GUI.Position.x,
                Config.GUI.Position.y - 0.08,
                0.22,
                button.Desc,
                { 210, 210, 210 },
                false,
                true,
                { x = 0.1, y = 0.2 }
            )
        end
    end

    for _, button in pairs(extraButtons) do
        if button.Enabled then
            local distance = distance2D(
                Config.GUI.Position.x + button.OffsetX + 0.005,
                Config.GUI.Position.y + button.OffsetY + 0.025,
                mouseX,
                mouseY
            )

            local spriteVisible = true

            if button.SpriteFunc then
                spriteVisible = button.SpriteFunc() and true or false
            end

            if spriteVisible and distance < 0.025 then
                drawText(
                    Config.GUI.Position.x,
                    Config.GUI.Position.y - 0.1,
                    0.3,
                    button.Text,
                    false,
                    false,
                    true
                )

                drawText(
                    Config.GUI.Position.x,
                    Config.GUI.Position.y - 0.08,
                    0.22,
                    button.Desc,
                    { 210, 210, 210 },
                    false,
                    true,
                    { x = 0.1, y = 0.2 }
                )
            end
        end
    end

    local infoDistance = distance2D(
        Config.GUI.Position.x + 0.005,
        Config.GUI.Position.y + 0.025,
        mouseX,
        mouseY
    )

    if infoDistance < 0.015 then
        drawText(
            Config.GUI.Position.x,
            Config.GUI.Position.y - 0.09,
            0.3,
            translate("Info"),
            false,
            false,
            true
        )
    end
end

---------------------------------------------------------------------
-- DRAW THE WHOLE MENU
---------------------------------------------------------------------

local function drawClothingMenu()
    disableMenuControls()
    drawHoverInformation()

    local centerX = Config.GUI.Position.x
    local centerY = Config.GUI.Position.y

    -------------------------------------------------------------
    -- MAIN CIRCLE BUTTONS
    -------------------------------------------------------------
    for buttonNumber, button in pairs(mainButtons) do
        local savedKey = capitalizeFirst(button.Sprite)
        local hasSavedItem = savedOutfit[savedKey] ~= nil
            and savedOutfit[savedKey] ~= false

        local alpha
        local colour

        if hasSavedItem then
            alpha = 180
            colour = {
                r = 0,
                g = 100,
                b = 210,
                a = 220,
            }
        else
            alpha = 255
            colour = {
                r = 0,
                g = 0,
                b = 0,
                a = 255,
            }
        end

        -- Background wedge for this radial segment.
        DrawSprite(
            "dp_wheel",
            tostring(buttonNumber),
            centerX,
            centerY,
            0.4285,
            0.7714,
            0.0,
            colour.r,
            colour.g,
            colour.b,
            colour.a
        )

        local clicked = drawRadialButton({
            Alpha = alpha,
            Colour = colour,
            Size = button.Size,
            Sprite = button.Sprite,
            Text = button.Text,
            x = button.x,
            y = button.y,
            Rotation = button.Rotation,
        })

        if clicked and not actionBusy then
            ---------------------------------------------------------
            -- Gloves have one extra rule in the original script:
            -- they cannot be toggled while the shirt is removed.
            ---------------------------------------------------------
            if button.Sprite == "gloves" then
                if not savedOutfit.Shirt then
                    animateButton(buttonNumber)
                    ExecuteCommand(button.Command)
                else
                    showNotification(translate("NoShirtOn"))
                end
            else
                animateButton(buttonNumber)
                ExecuteCommand(button.Command)
            end
        end
    end

    -------------------------------------------------------------
    -- EXTRA BUTTONS
    -------------------------------------------------------------
    for commandName, button in pairs(extraButtons) do
        if button.Enabled then
            local savedKey = capitalizeFirst(button.Sprite)
            local hasSavedItem = savedOutfit[savedKey] ~= nil
                and savedOutfit[savedKey] ~= false

            local alpha
            local colour

            if hasSavedItem then
                alpha = 180
                colour = {
                    r = 0,
                    g = 100,
                    b = 210,
                    a = 220,
                }
            else
                alpha = 255
                colour = {
                    r = 0,
                    g = 0,
                    b = 0,
                    a = 255,
                }
            end

            local sprite = button.Sprite

            if button.SpriteFunc then
                sprite = button.SpriteFunc()
            end

            if sprite then
                local clicked = drawRadialButton({
                    Alpha = alpha,
                    Colour = colour,
                    Shadow = true,
                    Size = button.Size,
                    Sprite = sprite,
                    Text = button.Text,
                    x = centerX + button.OffsetX,
                    y = centerY + button.OffsetY,
                    Rotation = button.Rotation,
                    Rotate = button.Rotate,
                })

                if clicked and not actionBusy then
                    animateButton(
                        commandName,
                        true,
                        button.Rotate
                    )

                    ExecuteCommand(button.Command)
                end
            end
        end
    end

    -------------------------------------------------------------
    -- "PLEASE WAIT" TEXT WHILE AN ITEM IS ANIMATING
    -------------------------------------------------------------
    if actionBusy then
        drawText(
            centerX,
            centerY + 0.05,
            0.28,
            translate("PleaseWait"),
            false,
            false,
            true
        )
    end

    -------------------------------------------------------------
    -- CENTER INFO BUTTON
    -------------------------------------------------------------
    local infoClicked = drawRadialButton({
        Alpha = 255,
        Colour = {
            r = 0,
            g = 0,
            b = 0,
        },
        Shadow = true,
        Size = {
            Circle = {
                x = 0.0345,
                y = 0.06,
            },
            Sprite = {
                x = 0.0234,
                y = 0.0425,
            },
        },
        Sprite = "info",
        Text = translate("Info"),
        x = centerX,
        y = centerY,
        Rotation = infoRotation,
    })

    if infoClicked then
        animateButton(nil, true, true, true)

        showNotification(translate("Information"))

        for key, value in pairs(savedOutfit) do
            debugPrint(key .. " : " .. json.encode(value))
        end
    end
end

---------------------------------------------------------------------
-- MENU COMMAND / KEYBIND
---------------------------------------------------------------------

CMG.registerCommand("+clothingmenu", function()
    local ped = PlayerPedId()

    if canOpenMenu(ped) then
        playMenuSound("Open")
        SetCursorLocation(Config.GUI.Position.x, Config.GUI.Position.y)
        menuOpen = true
    end
end, false)

CMG.registerCommand("-clothingmenu", function()
    menuOpen = false
end, false)

RegisterKeyMapping(
    "+clothingmenu",
    "Clothing Menu",
    "KEYBOARD",
    "Y"
)

---------------------------------------------------------------------
-- LOAD TEXTURE DICTIONARIES AND START THE TICK
---------------------------------------------------------------------

local TEXTURE_DICTIONARIES = {
    "dp_clothing",
    "dp_wheel",
}

local function clothingMenuTick()
    -- This branch is only used when Config.GUI.Toggle is enabled.
    if Config.GUI.Toggle then
        if IsControlJustPressed(0, Config.GUI.Key) then
            local ped = PlayerPedId()

            if canOpenMenu(ped) then
                playMenuSound("Open")
                SetCursorLocation(Config.GUI.Position.x, Config.GUI.Position.y)
                menuOpen = not menuOpen
            end
        end
    end

    if menuOpen then
        drawClothingMenu()
    end

    if Config.Debug then
        drawDebugClothingState()
    end
end

Citizen.CreateThread(function()
    for _, textureDictionary in pairs(TEXTURE_DICTIONARIES) do
        while not HasStreamedTextureDictLoaded(textureDictionary) do
            Wait(100)
            RequestStreamedTextureDict(textureDictionary, true)
        end
    end

    buildRadialButtons()

    CMG.createThreadOnTick(
        clothingMenuTick,
        "Clothing Radial Controls"
    )
end)