--[[
    LEVEL 1 BEGINNER GUIDE - UI Grid Panel

    RageUI.GridPanel(
        horizontalValue,
        verticalValue,
        topLabel,
        bottomLabel,
        leftLabel,
        rightLabel,
        callback,
        onlyForMenuIndex
    )

    Draws a 2D picker. Values are clamped from 0.0 to 1.0.
    The callback receives:
      hovered, changed, horizontalValue, verticalValue
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
    Dictionary = "pause_menu_pages_char_mom_dad",
    Texture = "nose_grid",
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
    Bottom = { X = 215.5, Y = 250, Scale = 0.35, Align = 1 },
    Left = { X = 57.75, Y = 130, Scale = 0.35, Align = 1 },
    Right = { X = 373.25, Y = 130, Scale = 0.35, Align = 1 }
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

function RageUI.GridPanel(
  horizontalValue,
  verticalValue,
  topLabel,
  bottomLabel,
  leftLabel,
  rightLabel,
  callback,
  onlyForMenuIndex
)
  local menu = RageUI.CurrentMenu
  if menu == nil or not menu() then
    return
  end

  if onlyForMenuIndex ~= nil and menu.Index ~= onlyForMenuIndex then
    return
  end

  horizontalValue = clamp01(horizontalValue)
  verticalValue = clamp01(verticalValue)

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

  local circleX = menu.X
    + style.Grid.X
    + menu.WidthOffset / 2
    + 20
    + gridWidth * horizontalValue
    - style.Circle.Width / 2

  local circleY = panelBaseY(menu)
    + style.Grid.Y
    + 20
    + gridHeight * verticalValue
    - style.Circle.Height / 2

  RenderSprite(
    style.Circle.Dictionary,
    style.Circle.Texture,
    circleX,
    circleY,
    style.Circle.Width,
    style.Circle.Height
  )

  drawText(menu, topLabel, style.Text.Top)
  drawText(menu, bottomLabel, style.Text.Bottom)
  drawText(menu, leftLabel, style.Text.Left)
  drawText(menu, rightLabel, style.Text.Right)

  if hovered and IsDisabledControlPressed(0, 24) then
    changed = true

    local mouseX = RageUI.round(GetControlNormal(2, 239) * 1920) - menu.SafeZoneSize.X
    local mouseY = RageUI.round(GetControlNormal(2, 240) * 1080) - menu.SafeZoneSize.Y

    horizontalValue = clamp01(RageUI.round((mouseX - gridX) / gridWidth, 2))
    verticalValue = clamp01(RageUI.round((mouseY - gridY) / gridHeight, 2))
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

  callback(
    hovered,
    changed,
    horizontalValue,
    verticalValue
  )
end
