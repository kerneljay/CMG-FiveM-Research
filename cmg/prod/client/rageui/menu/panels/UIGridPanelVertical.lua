--[[
    LEVEL 1 BEGINNER GUIDE - UI Grid Panel Vertical

    RageUI.GridPanelVertical(
        value,
        topLabel,
        bottomLabel,
        callback,
        onlyForMenuIndex
    )

    Draws a one-axis vertical picker. The callback receives:
      hovered, changed, value
]]

local style = {
  Background = {
    Dictionary = "commonmenu",
    Texture = "gradient_bgd",
    Y = 4,
    Width = 431,
    Height = 275
  },

  Grid = {
    Dictionary = "RageUI",
    Texture = "vertical_grid",
    X = 115.5,
    Y = 47.5,
    Width = 200,
    Height = 200
  },

  Circle = {
    Dictionary = "mpinventory",
    Texture = "in_world_circle",
    Width = 20,
    Height = 20
  },

  Text = {
    Top = { X = 215.5, Y = 15, Scale = 0.35, Align = 1 },
    Bottom = { X = 215.5, Y = 250, Scale = 0.35, Align = 1 }
  }
}

local function clamp01(value)
  return math.max(0.0, math.min(1.0, value or 0.0))
end

local function panelBaseY(menu)
  return menu.Y + menu.SubtitleHeight + RageUI.ItemOffset
end

local function gridBounds(menu)
  local x = menu.X + style.Grid.X + menu.SafeZoneSize.X + 20
  local y = menu.Y + style.Grid.Y + menu.SafeZoneSize.Y + menu.SubtitleHeight + RageUI.ItemOffset + 20
  local width = style.Grid.Width + menu.WidthOffset - 40
  local height = style.Grid.Height - 40
  return x, y, width, height
end

local function drawText(menu, label, textStyle)
  RenderText(
    label or "",
    menu.X + textStyle.X + menu.WidthOffset / 2,
    panelBaseY(menu) + textStyle.Y,
    0,
    textStyle.Scale,
    245,
    245,
    245,
    255,
    textStyle.Align
  )
end

function RageUI.GridPanelVertical(value, topLabel, bottomLabel, callback, onlyForMenuIndex)
  local menu = RageUI.CurrentMenu
  if menu == nil or not menu() then
    return
  end

  if onlyForMenuIndex ~= nil and menu.Index ~= onlyForMenuIndex then
    return
  end

  value = clamp01(value)

  local gridX, gridY, gridWidth, gridHeight = gridBounds(menu)
  local hovered = RageUI.IsMouseInBounds(gridX, gridY, gridWidth, gridHeight)
  local changed = false

  RenderSprite(
    style.Background.Dictionary,
    style.Background.Texture,
    menu.X,
    panelBaseY(menu) + style.Background.Y,
    style.Background.Width + menu.WidthOffset,
    style.Background.Height
  )

  RenderSprite(
    style.Grid.Dictionary,
    style.Grid.Texture,
    menu.X + style.Grid.X + menu.WidthOffset / 2,
    panelBaseY(menu) + style.Grid.Y,
    style.Grid.Width,
    style.Grid.Height
  )

  RenderSprite(
    style.Circle.Dictionary,
    style.Circle.Texture,
    menu.X + style.Grid.X + menu.WidthOffset / 2 + style.Grid.Width / 2 - style.Circle.Width / 2,
    panelBaseY(menu) + style.Grid.Y + 20 + gridHeight * value - style.Circle.Height / 2,
    style.Circle.Width,
    style.Circle.Height
  )

  drawText(menu, topLabel, style.Text.Top)
  drawText(menu, bottomLabel, style.Text.Bottom)

  if hovered and IsDisabledControlPressed(0, 24) then
    changed = true
    local mouseY = RageUI.round(GetControlNormal(2, 240) * 1080) - menu.SafeZoneSize.Y
    value = clamp01(RageUI.round((mouseY - gridY) / gridHeight, 2))
  end

  RageUI.ItemOffset = RageUI.ItemOffset + style.Background.Height + style.Background.Y

  if hovered and changed then
    local audio = RageUI.Settings.Audio
    RageUI.PlaySound(
      audio[audio.Use].Slider.audioName,
      audio[audio.Use].Slider.audioRef,
      true
    )
  end

  callback(hovered, changed, value)
end
