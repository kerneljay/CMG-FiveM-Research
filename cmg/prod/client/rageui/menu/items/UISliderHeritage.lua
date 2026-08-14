--[[
    LEVEL 1 BEGINNER GUIDE - UI Slider Heritage

    RageUI.UISliderHeritage(label, value, description, callback, onlyEnabled)

    This is the male/female heritage blend slider.
    The callback receives:
      hovered, selected, pressed, ratio, value
]]

function RageUI.UISliderHeritage(label, value, description, callback, enabled)
  local menu = RageUI.CurrentMenu
  if menu == nil or not menu() then
    return
  end

  enabled = enabled ~= false
  value = tonumber(value) or 5
  value = math.max(1, math.min(10, value))

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
    RenderSprite("mpleaderboard", "leaderboard_female_icon", menu.X + 215 + menu.WidthOffset, rowY, 40, 40)
    RenderSprite("mpleaderboard", "leaderboard_male_icon", menu.X + 395 + menu.WidthOffset, rowY, 40, 40)

    local barX = menu.X + 250 + menu.WidthOffset
    local progress = value / 10
    RenderRectangle(barX, rowY + 14.5, 150, 9, 87, 87, 87, 255)
    RenderRectangle(barX, rowY + 14.5, 150 * progress, 9, 245, 245, 245, 255)

    RageUI.ItemOffset = RageUI.ItemOffset + 38
    RageUI.ItemsDescription(menu, description, selected)

    if enabled and selected then
      if menu.Controls.Left.Active then
        value = math.max(1, value - 1)
      elseif menu.Controls.Right.Active then
        value = math.min(10, value + 1)
      end

      pressed = menu.Controls.Select.Active or (hovered and menu.Controls.Click.Active)
    end

    if callback then
      callback(hovered, selected, pressed, value / 10, value)
    end
  end

  RageUI.Options = RageUI.Options + 1
end
