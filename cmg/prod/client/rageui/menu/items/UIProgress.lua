--[[
    LEVEL 1 BEGINNER GUIDE - UIProgress
    ===================================

    RageUI progress item renderer.

    A progress item is a selectable menu row with a horizontal bar. Left/right
    controls move the value. Selecting the row calls the callback with the
    current value.
]]

local progressStyle = {
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

    Progress = {
        Background = {
            X = 8,
            Y = 33,
            Width = 415,
            Height = 20,
        },

        Bar = {
            X = 11.75,
            Y = 36.75,
            Width = 407.5,
            Height = 12.5,
        },

        Height = 60,
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

local function clamp(value, minimum, maximum)
    if value < minimum then
        return minimum
    end

    if value > maximum then
        return maximum
    end

    return value
end

local function renderSelectedSprite(menu)
    RenderSprite(
        progressStyle.SelectedSprite.Dictionary,
        progressStyle.SelectedSprite.Texture,
        menu.X,
        getItemY(menu, progressStyle.SelectedSprite),
        progressStyle.SelectedSprite.Width + menu.WidthOffset,
        progressStyle.Progress.Height
    )
end

local function renderProgressBar(menu, value, maxValue, selected)
    local background = progressStyle.Progress.Background
    local bar = progressStyle.Progress.Bar

    local backgroundRed = selected and 0 or 240
    local backgroundGreen = selected and 0 or 240
    local backgroundBlue = selected and 0 or 240

    local barRed = selected and 240 or 0
    local barGreen = selected and 240 or 0
    local barBlue = selected and 240 or 0

    RenderRectangle(
        menu.X + background.X,
        getItemY(menu, background),
        background.Width + menu.WidthOffset,
        background.Height,
        backgroundRed,
        backgroundGreen,
        backgroundBlue,
        255
    )

    RenderRectangle(
        menu.X + bar.X,
        getItemY(menu, bar),
        (bar.Width + menu.WidthOffset) * (value / maxValue),
        bar.Height,
        barRed,
        barGreen,
        barBlue,
        255
    )
end

local function isMouseSelecting(menu, selected, optionIndex)
    if not selected or not menu.EnableMouse or menu.CursorStyle == 0 then
        return false
    end

    return RageUI.ItemsMouseBounds(menu, selected, optionIndex, progressStyle) == 1
end

local function mouseValue(menu, maxValue)
    local bar = progressStyle.Progress.Bar
    local cursorX = RageUI.round(GetControlNormal(2, 239) * 1920)
    local barStartX = menu.SafeZoneSize.X + bar.X
    local barWidth = bar.Width + menu.WidthOffset
    local relativeX = clamp(cursorX - barStartX, 0, barWidth)

    return clamp(RageUI.round(maxValue * (relativeX / barWidth)), 0, maxValue)
end

function RageUI.Progress(label, value, maxValue, description, showCounter, enabled, callback)
    local menu, optionIndex, selected = getCurrentMenuOption()

    if menu == nil then
        return
    end

    if enabled == nil then
        enabled = true
    end

    maxValue = math.max(1, maxValue or 1)
    value = clamp(value or 0, 0, maxValue)

    RageUI.ItemsSafeZone(menu)

    local hovered = isMouseSelecting(menu, selected, optionIndex)

    if selected then
        renderSelectedSprite(menu)
    end

    local red, green, blue = getTextColour(enabled, selected)
    local rightLabel = showCounter and (tostring(value) .. "/" .. tostring(maxValue)) or tostring(value)

    RenderText(
        rightLabel,
        menu.X + progressStyle.RightText.X + menu.WidthOffset,
        getItemY(menu, progressStyle.RightText),
        0,
        progressStyle.RightText.Scale,
        red,
        green,
        blue,
        255,
        2
    )

    RenderText(
        label,
        menu.X + progressStyle.Text.X,
        getItemY(menu, progressStyle.Text),
        0,
        progressStyle.Text.Scale,
        red,
        green,
        blue,
        255
    )

    renderProgressBar(menu, value, maxValue, selected)

    RageUI.ItemOffset = RageUI.ItemOffset + progressStyle.Progress.Height
    RageUI.ItemsDescription(menu, description, selected)

    local pressed = false

    if selected and enabled then
        if menu.Controls.Left.Active and not menu.Controls.Right.Active then
            value = value - 1

            if value < 0 then
                value = maxValue
            end

            playAudio("LeftRight")
        elseif menu.Controls.Right.Active and not menu.Controls.Left.Active then
            value = value + 1

            if value > maxValue then
                value = 0
            end

            playAudio("LeftRight")
        end

        pressed = menu.Controls.Select.Active or (hovered and menu.Controls.Click.Active)

        if hovered and menu.Controls.Click.Active then
            value = mouseValue(menu, maxValue)
        end

        if pressed then
            playAudio("Select")
        end
    end

    if callback then
        callback(hovered, selected, pressed, value)
    end

    RageUI.Options = RageUI.Options + 1
end
