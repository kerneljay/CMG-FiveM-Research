--[[
    LEVEL 1 BEGINNER GUIDE - UI Slider Progress

    RageUI.SliderProgress(label, value, maxValue, description, enabled, style, callback)

    Draws a slider row with a filled progress bar.
    The callback receives:
      hovered, selected, pressed, value
]]

local function clamp(value, minValue, maxValue)
  return math.max(minValue, math.min(maxValue, value))
end

function RageUI.SliderProgress(label, value, maxValue, description, enabled, sliderStyle, callback)
  local menu = RageUI.CurrentMenu
  if menu == nil or not menu() then
    return
  end

  if type(sliderStyle) == "function" and callback == nil then
    callback = sliderStyle
    sliderStyle = {}
  end

  enabled = enabled ~= false
  value = tonumber(value) or 0
  maxValue = tonumber(maxValue) or 100

  local optionIndex = RageUI.Options + 1
  local visible = optionIndex >= menu.Pagination.Minimum and optionIndex <= menu.Pagination.Maximum
  if visible then
    local selected = menu.Index == optionIndex
    local hovered = false
    local pressed = false
    local rowY = menu.Y + menu.SubtitleHeight + RageUI.ItemOffset

    RageUI.ItemsSafeZone(menu)

    if selected then
      RenderSprite("commonmenu", "gradient_nav", menu.X, rowY, 431 + menu.WidthOffset, 38)

      if menu.EnableMouse and menu.CursorStyle == 1 then
        hovered = RageUI.ItemsMouseBounds(menu, selected, optionIndex, { Rectangle = { Height = 38 } })
      end
    end

    local textColour = selected and { 0, 0, 0 } or { 245, 245, 245 }
    if not enabled then
      textColour = { 163, 159, 148 }
    end

    RenderText(label or "", menu.X + 8, rowY + 3, 0, 0.33, textColour[1], textColour[2], textColour[3], 255, 0)

    local barX = menu.X + 250 + menu.WidthOffset
    local barY = rowY + 14.5
    local barWidth = 150
    local progress = clamp(value / maxValue, 0.0, 1.0)

    RenderRectangle(barX, barY, barWidth, 9, 87, 87, 87, 255)
    RenderRectangle(barX, barY, barWidth * progress, 9, 245, 245, 245, 255)

    RageUI.ItemOffset = RageUI.ItemOffset + 38
    RageUI.ItemsDescription(menu, description, selected)

    if enabled and selected then
      if menu.Controls.Left.Active then
        value = clamp(value - 1, 0, maxValue)
      elseif menu.Controls.Right.Active then
        value = clamp(value + 1, 0, maxValue)
      end

      pressed = menu.Controls.Select.Active or (hovered and menu.Controls.Click.Active)
    end

    if callback then
      callback(hovered, selected, pressed, value)
    end
  end

  RageUI.Options = RageUI.Options + 1
end
