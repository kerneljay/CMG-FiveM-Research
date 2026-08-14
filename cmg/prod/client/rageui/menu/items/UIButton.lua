--[[
    LEVEL 1 BEGINNER GUIDE - UIButton
    =================================

    RageUI button item renderer.

    This file is UI framework code. It draws one menu row, handles keyboard
    or mouse selection, calls the supplied callback, and optionally opens a
    submenu.
]]

local buttonStyle = {
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

local function renderSelectedSprite(menu, height)
    RenderSprite(
        buttonStyle.SelectedSprite.Dictionary,
        buttonStyle.SelectedSprite.Texture,
        menu.X,
        getItemY(menu, buttonStyle.SelectedSprite),
        buttonStyle.SelectedSprite.Width + menu.WidthOffset,
        height or buttonStyle.SelectedSprite.Height
    )
end

local function getLabelColour(enabled, selected)
    if not enabled then
        return 163, 159, 148
    end

    if selected then
        return 0, 0, 0
    end

    return 255, 255, 255
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

local function getBadgeOffset(badge, defaultOffset)
    if badge ~= nil and badge ~= RageUI.BadgeStyle.None then
        return 27
    end

    return defaultOffset or 0
end

local function drawBadge(menu, badge, badgeStyle, xOffset)
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
        menu.X + (badgeStyle.X or 0) + menu.WidthOffset - (xOffset or 0),
        getItemY(menu, badgeStyle),
        badgeStyle.Width,
        badgeStyle.Height
    )
end

local function drawButtonText(menu, label, description, style, enabled, selected)
    local red, green, blue = getLabelColour(enabled, selected)
    local leftBadgeOffset = getBadgeOffset(style.LeftBadge, 0)
    local rightBadgeOffset = getBadgeOffset(style.RightBadge, 0)

    RenderText(
        label,
        menu.X + buttonStyle.Text.X + leftBadgeOffset,
        getItemY(menu, buttonStyle.Text),
        0,
        buttonStyle.Text.Scale,
        red,
        green,
        blue,
        255
    )

    if style.RightLabel ~= nil and style.RightLabel ~= "" then
        RenderText(
            style.RightLabel,
            menu.X + buttonStyle.RightText.X - rightBadgeOffset + menu.WidthOffset,
            getItemY(menu, buttonStyle.RightText),
            0,
            buttonStyle.RightText.Scale,
            red,
            green,
            blue,
            255,
            2
        )
    end

    drawBadge(menu, style.LeftBadge, buttonStyle.LeftBadge)
    drawBadge(menu, style.RightBadge, buttonStyle.RightBadge, 0)

    RageUI.ItemOffset = RageUI.ItemOffset + buttonStyle.Rectangle.Height
    RageUI.ItemsDescription(menu, description, selected)
end

local function isMouseSelecting(menu, selected, optionIndex)
    if not selected or not menu.EnableMouse or menu.CursorStyle == 0 then
        return false
    end

    return RageUI.ItemsMouseBounds(menu, selected, optionIndex, buttonStyle) == 1
end

local function playSelectSound()
    local audio = RageUI.Settings.Audio
    local selectedAudio = audio[audio.Use].Select

    RageUI.PlaySound(selectedAudio.audioName, selectedAudio.audioRef)
end

local function runButtonCallback(callback, hovered, selected, active)
    if callback then
        callback(hovered, selected, active)
    end
end

local function openSubMenuIfNeeded(subMenu)
    if subMenu ~= nil and RageUI.IsAnyMenuVisible() and subMenu() then
        RageUI.NextMenu = subMenu
    end
end

local function drawButton(label, description, style, enabled, callback, subMenu, isFakeButton)
    local menu, optionIndex, selected = getCurrentMenuOption()

    if menu == nil then
        return
    end

    RageUI.ItemsSafeZone(menu)

    if selected then
        renderSelectedSprite(menu)
    end

    if enabled == nil then
        enabled = true
    end

    style = normaliseStyle(style)

    drawButtonText(menu, label, description, style, enabled, selected)

    local hovered = isMouseSelecting(menu, selected, optionIndex)
    local pressed = false

    if enabled then
        local selectPressed = menu.Controls.Select.Active
        local clickPressed = hovered and menu.Controls.Click.Active

        pressed = selected and (selectPressed or clickPressed)
    end

    if isFakeButton then
        runButtonCallback(callback, hovered, selected, pressed)
    else
        runButtonCallback(callback, hovered, selected, pressed)

        if pressed then
            playSelectSound()
            openSubMenuIfNeeded(subMenu)
        end
    end

    RageUI.Options = RageUI.Options + 1
end

function RageUI.Button(label, description, enabled, callback, subMenu)
    drawButton(label, description, {}, enabled, callback, subMenu, false)
end

function RageUI.ButtonWithStyle(label, description, style, enabled, callback, subMenu)
    drawButton(label, description, style, enabled, callback, subMenu, false)
end

function RageUI.FakeButtonWithStyle(label, description, style, enabled, callback, subMenu)
    drawButton(label, description, style, enabled, callback, subMenu, true)
end

function RageUI.BackspaceMenuCallback(callback)
    RageUI.ParentCallback = callback
end
