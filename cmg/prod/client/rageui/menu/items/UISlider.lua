--[[
    LEVEL 1 BEGINNER GUIDE - UI Slider

    RageUI.Slider(label, currentIndex, maxIndex, description, enabled, style, callback)

    Draws a menu row with left/right arrows and an index value.
    The callback receives:
      hovered, selected, pressed, currentIndex
]]

local style = {
  Height = 38,
  Text = { X = 8, Y = 3, Scale = 0.33 },
  RightText = { X = 420, Y = 4, Scale = 0.35 },
  SelectedSprite = {
    Dictionary = "commonmenu",
    Texture = "gradient_nav",
    Width = 431,
    Height = 38
  },
  LeftArrow = {
    Dictionary = "commonmenutu",
    Texture = "arrowleft",
    X = 235,
    Y = 11.5,
    Width = 15,
    Height = 15
  },
  RightArrow = {
    Dictionary = "commonmenutu",
    Texture = "arrowright",
    X = 400,
    Y = 11.5,
    Width = 15,
    Height = 15
  }
}

local function rowY(menu)
  return menu.Y + menu.SubtitleHeight + RageUI.ItemOffset
end

local function playLeftRightSound()
  local audio = RageUI.Settings.Audio
  RageUI.PlaySound(
    audio[audio.Use].LeftRight.audioName,
    audio[audio.Use].LeftRight.audioRef
  )
end

local function playSelectSound()
  local audio = RageUI.Settings.Audio
  RageUI.PlaySound(
    audio[audio.Use].Select.audioName,
    audio[audio.Use].Select.audioRef
  )
end

local function isMouseInArrow(menu, arrow)
  return RageUI.IsMouseInBounds(
    menu.X + arrow.X + menu.SafeZoneSize.X + menu.WidthOffset,
    rowY(menu) + arrow.Y + menu.SafeZoneSize.Y,
    arrow.Width,
    arrow.Height
  )
end

local function normaliseArguments(styleOrCallback, callback)
  if type(styleOrCallback) == "function" and callback == nil then
    return {}, styleOrCallback
  end

  return styleOrCallback or {}, callback
end

function RageUI.Slider(label, currentIndex, maxIndex, description, enabled, sliderStyle, callback)
  local menu = RageUI.CurrentMenu
  if menu == nil or not menu() then
    return
  end

  sliderStyle, callback = normaliseArguments(sliderStyle, callback)
  enabled = enabled ~= false
  currentIndex = tonumber(currentIndex) or 1
  maxIndex = tonumber(maxIndex) or 1

  local optionIndex = RageUI.Options + 1
  local visible = optionIndex >= menu.Pagination.Minimum and optionIndex <= menu.Pagination.Maximum
  if visible then
    local selected = menu.Index == optionIndex
    local hovered = false
    local pressed = false

    RageUI.ItemsSafeZone(menu)

    if selected then
      RenderSprite(
        style.SelectedSprite.Dictionary,
        style.SelectedSprite.Texture,
        menu.X,
        rowY(menu),
        style.SelectedSprite.Width + menu.WidthOffset,
        style.SelectedSprite.Height
      )

      if menu.EnableMouse and menu.CursorStyle == 1 then
        hovered = RageUI.ItemsMouseBounds(menu, selected, optionIndex, { Rectangle = { Height = style.Height } })
      end
    end

    local textRed, textGreen, textBlue = table.unpack(selected and { 0, 0, 0 } or { 245, 245, 245 })
    if not enabled then
      textRed, textGreen, textBlue = 163, 159, 148
    end

    RenderText(
      label or "",
      menu.X + style.Text.X,
      rowY(menu) + style.Text.Y,
      0,
      style.Text.Scale,
      textRed,
      textGreen,
      textBlue,
      255,
      0
    )

    RenderText(
      tostring(currentIndex),
      menu.X + style.RightText.X + menu.WidthOffset,
      rowY(menu) + style.RightText.Y,
      0,
      style.RightText.Scale,
      textRed,
      textGreen,
      textBlue,
      255,
      2
    )

    RenderSprite(style.LeftArrow.Dictionary, style.LeftArrow.Texture, menu.X + style.LeftArrow.X + menu.WidthOffset, rowY(menu) + style.LeftArrow.Y, style.LeftArrow.Width, style.LeftArrow.Height)
    RenderSprite(style.RightArrow.Dictionary, style.RightArrow.Texture, menu.X + style.RightArrow.X + menu.WidthOffset, rowY(menu) + style.RightArrow.Y, style.RightArrow.Width, style.RightArrow.Height)

    local hoveredLeftArrow = selected and isMouseInArrow(menu, style.LeftArrow)
    local hoveredRightArrow = selected and isMouseInArrow(menu, style.RightArrow)

    RageUI.ItemOffset = RageUI.ItemOffset + style.Height
    RageUI.ItemsDescription(menu, description, selected)

    if enabled and selected then
      if menu.Controls.Left.Active or (menu.Controls.Click.Active and hoveredLeftArrow) then
        currentIndex = currentIndex - 1
        if currentIndex < 1 then
          currentIndex = maxIndex
        end
        playLeftRightSound()
      elseif menu.Controls.Right.Active or (menu.Controls.Click.Active and hoveredRightArrow) then
        currentIndex = currentIndex + 1
        if currentIndex > maxIndex then
          currentIndex = 1
        end
        playLeftRightSound()
      end

      pressed = menu.Controls.Select.Active
        or (hovered and menu.Controls.Click.Active and not hoveredLeftArrow and not hoveredRightArrow)

      if pressed then
        playSelectSound()
      end
    end

    if callback then
      callback(hovered, selected, pressed, currentIndex)
    end
  end

  RageUI.Options = RageUI.Options + 1
end
