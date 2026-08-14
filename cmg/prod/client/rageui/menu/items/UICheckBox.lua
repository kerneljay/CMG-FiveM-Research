--[[
    LEVEL 1 BEGINNER GUIDE - UICheckBox
    ===================================

    RageUI checkbox item renderer.

    This is UI framework code. A checkbox is a normal selectable menu row with
    a tick/cross/blank sprite on the right. When selected, it toggles the
    checked value and sends the new value to the callback.
]]

local checkboxStyle = {
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

    CheckboxSprite = {
        Dictionary = "commonmenu",
        Textures = {
            "shop_box_blankb",
            "shop_box_tickb",
            "shop_box_blank",
            "shop_box_tick",
            "shop_box_crossb",
            "shop_box_cross",
        },
        X = 380,
        Y = -6,
        Width = 50,
        Height = 50,
    },
}

RageUI.CheckboxStyle = {
    Tick = 1,
    Cross = 2,
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

local function getTextColour(enabled, selected)
    if not enabled then
        return 163, 159, 148
    end

    if selected then
        return 0, 0, 0
    end

    return 255, 255, 255
end

local function renderSelectedSprite(menu)
    RenderSprite(
        checkboxStyle.SelectedSprite.Dictionary,
        checkboxStyle.SelectedSprite.Texture,
        menu.X,
        getItemY(menu, checkboxStyle.SelectedSprite),
        checkboxStyle.SelectedSprite.Width + menu.WidthOffset,
        checkboxStyle.SelectedSprite.Height
    )
end

local function getCheckboxTextureIndex(checked, selected, style)
    style = style or RageUI.CheckboxStyle.Tick

    if checked then
        if style == RageUI.CheckboxStyle.Cross then
            return selected and 5 or 6
        end

        return selected and 2 or 4
    end

    return selected and 1 or 3
end

local function renderCheckboxSprite(menu, checked, selected, style, xOffset)
    local sprite = checkboxStyle.CheckboxSprite

    RenderSprite(
        sprite.Dictionary,
        sprite.Textures[getCheckboxTextureIndex(checked, selected, style)],
        menu.X + sprite.X + menu.WidthOffset - (xOffset or 0),
        getItemY(menu, sprite),
        sprite.Width,
        sprite.Height
    )
end

local function isMouseSelecting(menu, selected, optionIndex)
    if not selected or not menu.EnableMouse or menu.CursorStyle == 0 then
        return false
    end

    return RageUI.ItemsMouseBounds(menu, selected, optionIndex, checkboxStyle) == 1
end

local function playAudio(kind)
    local audio = RageUI.Settings.Audio
    local audioInfo = audio[audio.Use][kind]

    RageUI.PlaySound(audioInfo.audioName, audioInfo.audioRef)
end

function RageUI.Checkbox(label, description, checked, style, callback, checkedCallback, uncheckedCallback)
    local menu, optionIndex, selected = getCurrentMenuOption()

    if menu == nil then
        return
    end

    style = style or {}

    if style.Enabled == nil then
        style.Enabled = true
    end

    if style.Style == nil then
        style.Style = RageUI.CheckboxStyle.Tick
    end

    RageUI.ItemsSafeZone(menu)

    if selected then
        renderSelectedSprite(menu)
    end

    local red, green, blue = getTextColour(style.Enabled, selected)

    RenderText(
        label,
        menu.X + checkboxStyle.Text.X,
        getItemY(menu, checkboxStyle.Text),
        0,
        checkboxStyle.Text.Scale,
        red,
        green,
        blue,
        255
    )

    renderCheckboxSprite(menu, checked, selected, style.Style, style.CheckboxOffset)

    RageUI.ItemOffset = RageUI.ItemOffset + checkboxStyle.Rectangle.Height
    RageUI.ItemsDescription(menu, description, selected)

    local hovered = isMouseSelecting(menu, selected, optionIndex)
    local pressed = selected
        and (menu.Controls.Select.Active or (hovered and menu.Controls.Click.Active))

    local newChecked = checked

    if pressed then
        if style.Enabled then
            newChecked = not checked
            playAudio("Select")

            if newChecked and checkedCallback then
                checkedCallback()
            elseif not newChecked and uncheckedCallback then
                uncheckedCallback()
            end
        else
            playAudio("Error")
        end
    end

    if callback then
        callback(hovered, selected, pressed and style.Enabled, newChecked)
    end

    RageUI.Options = RageUI.Options + 1
end
