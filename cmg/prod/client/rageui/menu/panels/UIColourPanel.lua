--[[
    LEVEL 1 BEGINNER GUIDE - UI Colour Panel

    RageUI.ColourPanel(
        headerText,
        colours,
        firstVisibleIndex,
        selectedIndex,
        callback,
        onlyForMenuIndex
    )

    Shows up to 9 colour swatches below the current menu item.
    The callback receives:
      hovered, changed, firstVisibleIndex, selectedIndex
]]

local unpackTable = table.unpack or unpack

local style = {
  Background = {
    Dictionary = "commonmenu",
    Texture = "gradient_bgd",
    Y = 4,
    Width = 431,
    Height = 112
  },

  LeftArrow = {
    Dictionary = "commonmenu",
    Texture = "arrowleft",
    X = 7.5,
    Y = 15,
    Width = 30,
    Height = 30
  },

  RightArrow = {
    Dictionary = "commonmenu",
    Texture = "arrowright",
    X = 393.5,
    Y = 15,
    Width = 30,
    Height = 30
  },

  Header = {
    X = 215.5,
    Y = 15,
    Scale = 0.35
  },

  Box = {
    X = 15,
    Y = 55,
    Width = 44.5,
    Height = 44.5
  },

  SelectedRectangle = {
    X = 15,
    Y = 47,
    Width = 44.5,
    Height = 8
  }
}

local function panelX(menu, element)
  return menu.X + element.X + menu.SafeZoneSize.X + menu.WidthOffset / 2
end

local function panelY(menu, element)
  return menu.Y
    + element.Y
    + menu.SafeZoneSize.Y
    + menu.SubtitleHeight
    + RageUI.ItemOffset
end

local function drawSprite(menu, element)
  RenderSprite(
    element.Dictionary,
    element.Texture,
    menu.X + element.X + menu.WidthOffset / 2,
    menu.Y + element.Y + menu.SubtitleHeight + RageUI.ItemOffset,
    element.Width,
    element.Height
  )
end

local function isMouseInElement(menu, element, width, height)
  return RageUI.IsMouseInBounds(
    panelX(menu, element),
    panelY(menu, element),
    width or element.Width,
    height or element.Height
  )
end

function RageUI.ColourPanel(
  headerText,
  colours,
  firstVisibleIndex,
  selectedIndex,
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

  firstVisibleIndex = firstVisibleIndex or 1
  selectedIndex = selectedIndex or 1

  local colourCount = #colours
  local visibleColourCount = math.min(colourCount, 9)
  local hoveredSwatches = isMouseInElement(
    menu,
    style.Box,
    style.Box.Width * visibleColourCount,
    style.Box.Height
  )
  local hoveredLeftArrow = isMouseInElement(menu, style.LeftArrow)
  local hoveredRightArrow = isMouseInElement(menu, style.RightArrow)
  local hovered = hoveredSwatches or hoveredLeftArrow or hoveredRightArrow
  local changed = false

  RenderSprite(
    style.Background.Dictionary,
    style.Background.Texture,
    menu.X,
    menu.Y + style.Background.Y + menu.SubtitleHeight + RageUI.ItemOffset,
    style.Background.Width + menu.WidthOffset,
    style.Background.Height
  )

  drawSprite(menu, style.LeftArrow)
  drawSprite(menu, style.RightArrow)

  local selectedSlot = selectedIndex - firstVisibleIndex
  RenderRectangle(
    menu.X
      + style.SelectedRectangle.X
      + style.SelectedRectangle.Width * selectedSlot
      + menu.WidthOffset / 2,
    menu.Y
      + style.SelectedRectangle.Y
      + menu.SubtitleHeight
      + RageUI.ItemOffset,
    style.SelectedRectangle.Width,
    style.SelectedRectangle.Height,
    245,
    245,
    245,
    255
  )

  for slotIndex = 1, visibleColourCount do
    local colour = colours[firstVisibleIndex + slotIndex - 1]
    if colour then
      RenderRectangle(
        menu.X
          + style.Box.X
          + style.Box.Width * (slotIndex - 1)
          + menu.WidthOffset / 2,
        menu.Y
          + style.Box.Y
          + menu.SubtitleHeight
          + RageUI.ItemOffset,
        style.Box.Width,
        style.Box.Height,
        unpackTable(colour)
      )
    end
  end

  RenderText(
    (headerText or "") .. " (" .. selectedIndex .. " of " .. colourCount .. ")",
    menu.X + style.Header.X + menu.WidthOffset / 2,
    menu.Y + style.Header.Y + menu.SubtitleHeight + RageUI.ItemOffset,
    0,
    style.Header.Scale,
    245,
    245,
    245,
    255,
    1
  )

  if hovered and RageUI.Settings.Controls.Click.Active then
    changed = true

    if hoveredLeftArrow then
      selectedIndex = selectedIndex - 1
      if selectedIndex < 1 then
        selectedIndex = colourCount
        firstVisibleIndex = colourCount - visibleColourCount + 1
      elseif selectedIndex < firstVisibleIndex then
        firstVisibleIndex = firstVisibleIndex - 1
      end
    elseif hoveredRightArrow then
      selectedIndex = selectedIndex + 1
      if selectedIndex > colourCount then
        selectedIndex = 1
        firstVisibleIndex = 1
      elseif selectedIndex > firstVisibleIndex + visibleColourCount - 1 then
        firstVisibleIndex = firstVisibleIndex + 1
      end
    elseif hoveredSwatches then
      for slotIndex = 1, visibleColourCount do
        local swatchElement = {
          X = style.Box.X + style.Box.Width * (slotIndex - 1),
          Y = style.Box.Y,
          Width = style.Box.Width,
          Height = style.Box.Height
        }

        if isMouseInElement(menu, swatchElement) then
          selectedIndex = firstVisibleIndex + slotIndex - 1
        end
      end
    end
  end

  RageUI.ItemOffset = RageUI.ItemOffset + style.Background.Height + style.Background.Y

  if hovered and changed then
    local audio = RageUI.Settings.Audio
    RageUI.PlaySound(
      audio[audio.Use].Select.audioName,
      audio[audio.Use].Select.audioRef
    )
  end

  callback(
    hovered,
    changed,
    firstVisibleIndex,
    selectedIndex
  )
end
