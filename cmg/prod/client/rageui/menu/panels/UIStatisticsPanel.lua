--[[
    LEVEL 1 BEGINNER GUIDE - UI Statistics Panel

    RageUI.StatisticPanel(value, label, onlyForMenuIndex)
    RageUI.StatisticPanelAdvanced(label, primaryValue, primaryColour,
        secondaryValue, secondaryColour, overflowColour, onlyForMenuIndex)

    Draws one statistic row under the current menu item.
    Values are expected as 0.0 -> 1.0 percentages.
]]

local unpackTable = table.unpack or unpack

local style = {
  Background = {
    Y = 4,
    Width = 431,
    Height = 42
  },

  Text = {
    Left = {
      X = 8,
      Y = 15,
      Scale = 0.35
    }
  },

  Bar = {
    Right = 8,
    Y = 27,
    Width = 200,
    Height = 10,
    OffsetRatio = 0.5
  },

  DividerCount = 5
}

local function clamp01(value)
  return math.max(0.0, math.min(1.0, value or 0.0))
end

local function getMenu(onlyForMenuIndex)
  local menu = RageUI.CurrentMenu
  if menu == nil or not menu() then
    return nil
  end

  if onlyForMenuIndex ~= nil and menu.Index ~= onlyForMenuIndex then
    return nil
  end

  return menu
end

local function panelY(menu)
  return menu.Y
    + style.Background.Y
    + menu.SubtitleHeight
    + RageUI.ItemOffset
    + RageUI.StatisticPanelCount * 42
end

local function rowY(menu, offsetY)
  return menu.Y
    + RageUI.StatisticPanelCount * 40
    + offsetY
    + menu.SubtitleHeight
    + RageUI.ItemOffset
end

local function barWidth(menu)
  return style.Bar.Width + menu.WidthOffset * style.Bar.OffsetRatio
end

local function barX(menu, width)
  return menu.X
    + RageUI.Settings.Items.Title.Background.Width
    - width
    - style.Bar.Right
    + menu.WidthOffset
end

local function drawPanelBackground(menu)
  RenderRectangle(
    menu.X,
    panelY(menu),
    style.Background.Width + menu.WidthOffset,
    style.Background.Height,
    0,
    0,
    0,
    170
  )
end

local function drawLabel(menu, label)
  RenderText(
    label or "",
    menu.X + style.Text.Left.X,
    rowY(menu, style.Text.Left.Y),
    0,
    style.Text.Left.Scale,
    245,
    245,
    245,
    255,
    0
  )
end

local function drawBarBase(menu, width)
  RenderRectangle(
    barX(menu, width),
    rowY(menu, style.Bar.Y),
    width,
    style.Bar.Height,
    87,
    87,
    87,
    255
  )
end

local function drawBarFill(menu, width, value, colour)
  RenderRectangle(
    barX(menu, width),
    rowY(menu, style.Bar.Y),
    width * clamp01(value),
    style.Bar.Height,
    unpackTable(colour)
  )
end

local function drawDividers(menu, width)
  local dividerWidth = 2
  local spacing = (width - style.DividerCount / dividerWidth) / (style.DividerCount + 1)

  for dividerIndex = 1, style.DividerCount do
    RenderRectangle(
      barX(menu, width) + dividerIndex * spacing + menu.WidthOffset,
      rowY(menu, style.Bar.Y),
      dividerWidth,
      style.Bar.Height,
      0,
      0,
      0,
      255
    )
  end
end

local function finishStatisticPanel()
  RageUI.StatisticPanelCount = RageUI.StatisticPanelCount + 1
end

function RageUI.StatisticPanel(value, label, onlyForMenuIndex)
  local menu = getMenu(onlyForMenuIndex)
  if not menu then
    return
  end

  local width = barWidth(menu)
  drawPanelBackground(menu)
  drawLabel(menu, label)
  drawBarBase(menu, width)
  drawBarFill(menu, width, value, { 245, 245, 245, 255 })
  drawDividers(menu, width)
  finishStatisticPanel()
end

function RageUI.StatisticPanelAdvanced(
  label,
  primaryValue,
  primaryColour,
  secondaryValue,
  secondaryColour,
  overflowColour,
  onlyForMenuIndex
)
  local menu = getMenu(onlyForMenuIndex)
  if not menu then
    return
  end

  primaryColour = primaryColour or { 255, 255, 255, 255 }
  secondaryColour = secondaryColour or { 0, 153, 204, 255 }
  overflowColour = overflowColour or { 185, 0, 0, 255 }

  local width = barWidth(menu)
  drawPanelBackground(menu)
  drawLabel(menu, label)
  drawBarBase(menu, width)
  drawBarFill(menu, width, primaryValue, primaryColour)

  if secondaryValue then
    local secondaryColourToUse = secondaryValue > 1.0 and overflowColour or secondaryColour

    RenderRectangle(
      barX(menu, width),
      rowY(menu, style.Bar.Y),
      width * clamp01(secondaryValue),
      style.Bar.Height,
      unpackTable(secondaryColourToUse)
    )
  end

  drawDividers(menu, width)
  finishStatisticPanel()
end
