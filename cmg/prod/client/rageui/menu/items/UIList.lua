--[[
    LEVEL 1 BEGINNER GUIDE - UIList
    ===============================

    RageUI list item renderer.

    A list item is a selectable menu row with left/right arrows. Left and right
    change the current item index. Selecting the row calls the callback with
    the current index.
]]

local listStyle = {
    Rectangle = {
        Y = 0,
        Width = 431,
        Height = 38,
    },

    Text = {
        X = 8,
        Y = 3,
        Scale = 0.33,
    },

    LeftBadge = {
        Y = -2,
        Width = 40,
        Height = 40,
    },

    RightBadge = {
        X = 385,
        Y = -2,
        Width = 40,
        Height = 40,
    },

    RightText = {
        X = 420,
        Y = 4,
        Scale = 0.35,
    },

    SelectedSprite = {
        Dictionary = "commonmenu",
        Texture = "gradient_nav",
        Y = 0,
        Width = 431,
        Height = 38,
    },

    LeftArrow = {
        Dictionary = "commonmenu",
        Texture = "arrowleft",
        X = 378,
        Y = 3,
        Width = 30,
        Height = 30,
    },

    RightArrow = {
        Dictionary = "commonmenu",
        Texture = "arrowright",
        X = 400,
        Y = 3,
        Width = 30,
        Height = 30,
    },

    ListText = {
        X = 403,
        Y = 3,
        Scale = 0.35,
    },
}

local function getCurrentMenuOption()
    local menu = RageUI.CurrentMenu

    if menu == nil or not menu() then
        return nil
    end

    local optionIndex = RageUI.Options + 1

    if optionIndex < menu.Pagination.Minimum
        or optionIndex > menu.Pagination.Maximum then
        RageUI.Options = optionIndex
        return nil
    end

    return menu, optionIndex, menu.Index == optionIndex
end

local function getItemY(menu, style)
    return menu.Y
        + style.Y
        + menu.SubtitleHeight
        + RageUI.ItemOffset
end

local function normaliseStyle(style)
    style = style or {}

    if style.LeftBadge == nil then
        style.LeftBadge = RageUI.BadgeStyle.None
    end

    if style.RightBadge == nil then
        style.RightBadge = RageUI.BadgeStyle.None
    end

    return style
end

local function getTextColour(enabled, selected)
    if not enabled then
        return 163, 159, 148
    end

    if selected then
        return 0, 0, 0
    end

    return 245, 245, 245
end

local function playAudio(kind)
    local audio = RageUI.Settings.Audio
    local audioInfo = audio[audio.Use][kind]

    RageUI.PlaySound(audioInfo.audioName, audioInfo.audioRef)
end

local function renderSelectedSprite(menu)
    RenderSprite(
        listStyle.SelectedSprite.Dictionary,
        listStyle.SelectedSprite.Texture,
        menu.X,
        getItemY(menu, listStyle.SelectedSprite),
        listStyle.SelectedSprite.Width + menu.WidthOffset,
        listStyle.SelectedSprite.Height
    )
end

local function drawBadge(menu, badge, badgeStyle)
    if badge == nil or badge == RageUI.BadgeStyle.None then
        return
    end

    local badgeFactory = badge

    if type(badgeFactory) == "function" then
        badgeFactory = badgeFactory()
    end

    if type(badgeFactory) ~= "table" then
        return
    end

    RenderSprite(
        badgeFactory.BadgeDictionary or "commonmenu",
        badgeFactory.BadgeTexture,
        menu.X + (badgeStyle.X or 0) + menu.WidthOffset,
        getItemY(menu, badgeStyle),
        badgeStyle.Width,
        badgeStyle.Height
    )
end

local function getItemDisplayText(items, index)
    local item = items[index]

    if type(item) == "table" then
        return tostring(item.Name or item.name or item[1] or "NIL")
    end

    return tostring(item or "NIL")
end

local function wrapIndex(index, itemCount)
    if itemCount <= 0 then
        return 1
    end

    if index < 1 then
        return itemCount
    end

    if index > itemCount then
        return 1
    end

    return index
end

local function isMouseSelecting(menu, selected, optionIndex)
    if not selected or not menu.EnableMouse or menu.CursorStyle == 0 then
        return false
    end

    return RageUI.ItemsMouseBounds(menu, selected, optionIndex, listStyle) == 1
end

local function renderArrow(menu, arrowStyle)
    RenderSprite(
        arrowStyle.Dictionary,
        arrowStyle.Texture,
        menu.X + arrowStyle.X + menu.WidthOffset,
        getItemY(menu, arrowStyle),
        arrowStyle.Width,
        arrowStyle.Height
    )
end

local function openIndexedSubMenu(subMenus, index)
    if type(subMenus) == "table"
        and subMenus[index] ~= nil
        and RageUI.IsAnyMenuVisible() then
        RageUI.NextMenu = subMenus[index]
    end
end

function RageUI.List(label, items, index, description, style, enabled, callback, onListChange, subMenus)
    local menu, optionIndex, selected = getCurrentMenuOption()

    if menu == nil then
        return
    end

    items = items or {}
    style = normaliseStyle(style)

    if enabled == nil then
        enabled = true
    end

    index = wrapIndex(index or 1, #items)

    RageUI.ItemsSafeZone(menu)

    local hovered = isMouseSelecting(menu, selected, optionIndex)

    if selected then
        renderSelectedSprite(menu)
    end

    local red, green, blue = getTextColour(enabled, selected)

    RenderText(
        label,
        menu.X + listStyle.Text.X,
        getItemY(menu, listStyle.Text),
        0,
        listStyle.Text.Scale,
        red,
        green,
        blue,
        255
    )

    if style.RightLabel ~= nil and style.RightLabel ~= "" then
        RenderText(
            style.RightLabel,
            menu.X + listStyle.RightText.X + menu.WidthOffset,
            getItemY(menu, listStyle.RightText),
            0,
            listStyle.RightText.Scale,
            red,
            green,
            blue,
            255,
            2
        )
    else
        renderArrow(menu, listStyle.LeftArrow)
        renderArrow(menu, listStyle.RightArrow)

        RenderText(
            getItemDisplayText(items, index),
            menu.X + listStyle.ListText.X + menu.WidthOffset,
            getItemY(menu, listStyle.ListText),
            0,
            listStyle.ListText.Scale,
            red,
            green,
            blue,
            255,
            2
        )
    end

    drawBadge(menu, style.LeftBadge, listStyle.LeftBadge)
    drawBadge(menu, style.RightBadge, listStyle.RightBadge)

    RageUI.ItemOffset = RageUI.ItemOffset + listStyle.Rectangle.Height
    RageUI.ItemsDescription(menu, description, selected)

    local pressed = false
    local indexChanged = false

    if selected and enabled then
        if menu.Controls.Left.Active and not menu.Controls.Right.Active then
            index = wrapIndex(index - 1, #items)
            indexChanged = true
            playAudio("LeftRight")
        elseif menu.Controls.Right.Active and not menu.Controls.Left.Active then
            index = wrapIndex(index + 1, #items)
            indexChanged = true
            playAudio("LeftRight")
        end

        pressed = menu.Controls.Select.Active or (hovered and menu.Controls.Click.Active)

        if pressed then
            playAudio("Select")
            openIndexedSubMenu(subMenus, index)
        end
    end

    if indexChanged and onListChange then
        onListChange(index)
    end

    if callback then
        callback(hovered, selected, pressed, index)
    end

    RageUI.Options = RageUI.Options + 1
end
