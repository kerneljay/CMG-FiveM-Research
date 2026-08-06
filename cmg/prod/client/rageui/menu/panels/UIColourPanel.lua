-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1
SHX0_1 = {}
SHX1_1 = {}
SHX1_1.Dictionary = "commonmenu"
SHX1_1.Texture = "gradient_bgd"
SHX1_1.Y = 4
SHX1_1.Width = 431
SHX1_1.Height = 112
SHX0_1.Background = SHX1_1
SHX1_1 = {}
SHX1_1.Dictionary = "commonmenu"
SHX1_1.Texture = "arrowleft"
SHX1_1.X = 7.5
SHX1_1.Y = 15
SHX1_1.Width = 30
SHX1_1.Height = 30
SHX0_1.LeftArrow = SHX1_1
SHX1_1 = {}
SHX1_1.Dictionary = "commonmenu"
SHX1_1.Texture = "arrowright"
SHX1_1.X = 393.5
SHX1_1.Y = 15
SHX1_1.Width = 30
SHX1_1.Height = 30
SHX0_1.RightArrow = SHX1_1
SHX1_1 = {}
SHX1_1.X = 215.5
SHX1_1.Y = 15
SHX1_1.Scale = 0.35
SHX0_1.Header = SHX1_1
SHX1_1 = {}
SHX1_1.X = 15
SHX1_1.Y = 55
SHX1_1.Width = 44.5
SHX1_1.Height = 44.5
SHX0_1.Box = SHX1_1
SHX1_1 = {}
SHX1_1.X = 15
SHX1_1.Y = 47
SHX1_1.Width = 44.5
SHX1_1.Height = 8
SHX0_1.SelectedRectangle = SHX1_1
SHX1_1 = RageUI
function SHX2_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2
  SHX6_2 = RageUI
  SHX6_2 = SHX6_2.CurrentMenu
  if nil ~= SHX6_2 then
    SHX7_2 = SHX6_2
    SHX7_2 = SHX7_2()
    if SHX7_2 then
      if nil ~= SHX5_2 then
        SHX7_2 = SHX6_2.Index
        if SHX7_2 ~= SHX5_2 then
          goto SHX_LABEL_530
        end
      end
      SHX7_2 = #SHX1_2
      if SHX7_2 > 9 then
        SHX7_2 = 9
        if SHX7_2 then
          goto SHX_LABEL_21
        end
      end
      SHX7_2 = #SHX1_2
      -- [FIX IF ERROR] Move ::SHX_LABEL_21:: outside nested blocks until all 'goto SHX_LABEL_21' can see it
      ::SHX_LABEL_21::
      SHX8_2 = RageUI
      SHX8_2 = SHX8_2.IsMouseInBounds
      SHX9_2 = SHX6_2.X
      SHX10_2 = SHX0_1.Box
      SHX10_2 = SHX10_2.X
      SHX9_2 = SHX9_2 + SHX10_2
      SHX10_2 = SHX6_2.SafeZoneSize
      SHX10_2 = SHX10_2.X
      SHX9_2 = SHX9_2 + SHX10_2
      SHX10_2 = SHX6_2.WidthOffset
      SHX10_2 = SHX10_2 / 2
      SHX9_2 = SHX9_2 + SHX10_2
      SHX10_2 = SHX6_2.Y
      SHX11_2 = SHX0_1.Box
      SHX11_2 = SHX11_2.Y
      SHX10_2 = SHX10_2 + SHX11_2
      SHX11_2 = SHX6_2.SafeZoneSize
      SHX11_2 = SHX11_2.Y
      SHX10_2 = SHX10_2 + SHX11_2
      SHX11_2 = SHX6_2.SubtitleHeight
      SHX10_2 = SHX10_2 + SHX11_2
      SHX11_2 = RageUI
      SHX11_2 = SHX11_2.ItemOffset
      SHX10_2 = SHX10_2 + SHX11_2
      SHX11_2 = SHX0_1.Box
      SHX11_2 = SHX11_2.Width
      SHX11_2 = SHX11_2 * SHX7_2
      SHX12_2 = SHX0_1.Box
      SHX12_2 = SHX12_2.Height
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX9_2 = RageUI
      SHX9_2 = SHX9_2.IsMouseInBounds
      SHX10_2 = SHX6_2.X
      SHX11_2 = SHX0_1.LeftArrow
      SHX11_2 = SHX11_2.X
      SHX10_2 = SHX10_2 + SHX11_2
      SHX11_2 = SHX6_2.SafeZoneSize
      SHX11_2 = SHX11_2.X
      SHX10_2 = SHX10_2 + SHX11_2
      SHX11_2 = SHX6_2.WidthOffset
      SHX11_2 = SHX11_2 / 2
      SHX10_2 = SHX10_2 + SHX11_2
      SHX11_2 = SHX6_2.Y
      SHX12_2 = SHX0_1.LeftArrow
      SHX12_2 = SHX12_2.Y
      SHX11_2 = SHX11_2 + SHX12_2
      SHX12_2 = SHX6_2.SafeZoneSize
      SHX12_2 = SHX12_2.Y
      SHX11_2 = SHX11_2 + SHX12_2
      SHX12_2 = SHX6_2.SubtitleHeight
      SHX11_2 = SHX11_2 + SHX12_2
      SHX12_2 = RageUI
      SHX12_2 = SHX12_2.ItemOffset
      SHX11_2 = SHX11_2 + SHX12_2
      SHX12_2 = SHX0_1.LeftArrow
      SHX12_2 = SHX12_2.Width
      SHX13_2 = SHX0_1.LeftArrow
      SHX13_2 = SHX13_2.Height
      SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
      SHX10_2 = RageUI
      SHX10_2 = SHX10_2.IsMouseInBounds
      SHX11_2 = SHX6_2.X
      SHX12_2 = SHX0_1.RightArrow
      SHX12_2 = SHX12_2.X
      SHX11_2 = SHX11_2 + SHX12_2
      SHX12_2 = SHX6_2.SafeZoneSize
      SHX12_2 = SHX12_2.X
      SHX11_2 = SHX11_2 + SHX12_2
      SHX12_2 = SHX6_2.WidthOffset
      SHX12_2 = SHX12_2 / 2
      SHX11_2 = SHX11_2 + SHX12_2
      SHX12_2 = SHX6_2.Y
      SHX13_2 = SHX0_1.RightArrow
      SHX13_2 = SHX13_2.Y
      SHX12_2 = SHX12_2 + SHX13_2
      SHX13_2 = SHX6_2.SafeZoneSize
      SHX13_2 = SHX13_2.Y
      SHX12_2 = SHX12_2 + SHX13_2
      SHX13_2 = SHX6_2.SubtitleHeight
      SHX12_2 = SHX12_2 + SHX13_2
      SHX13_2 = RageUI
      SHX13_2 = SHX13_2.ItemOffset
      SHX12_2 = SHX12_2 + SHX13_2
      SHX13_2 = SHX0_1.RightArrow
      SHX13_2 = SHX13_2.Width
      SHX14_2 = SHX0_1.RightArrow
      SHX14_2 = SHX14_2.Height
      SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2)
      SHX11_2 = false
      SHX12_2 = RenderSprite
      SHX13_2 = SHX0_1.Background
      SHX13_2 = SHX13_2.Dictionary
      SHX14_2 = SHX0_1.Background
      SHX14_2 = SHX14_2.Texture
      SHX15_2 = SHX6_2.X
      SHX16_2 = SHX6_2.Y
      SHX17_2 = SHX0_1.Background
      SHX17_2 = SHX17_2.Y
      SHX16_2 = SHX16_2 + SHX17_2
      SHX17_2 = SHX6_2.SubtitleHeight
      SHX16_2 = SHX16_2 + SHX17_2
      SHX17_2 = RageUI
      SHX17_2 = SHX17_2.ItemOffset
      SHX16_2 = SHX16_2 + SHX17_2
      SHX17_2 = SHX0_1.Background
      SHX17_2 = SHX17_2.Width
      SHX18_2 = SHX6_2.WidthOffset
      SHX17_2 = SHX17_2 + SHX18_2
      SHX18_2 = SHX0_1.Background
      SHX18_2 = SHX18_2.Height
      SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
      SHX12_2 = RenderSprite
      SHX13_2 = SHX0_1.LeftArrow
      SHX13_2 = SHX13_2.Dictionary
      SHX14_2 = SHX0_1.LeftArrow
      SHX14_2 = SHX14_2.Texture
      SHX15_2 = SHX6_2.X
      SHX16_2 = SHX0_1.LeftArrow
      SHX16_2 = SHX16_2.X
      SHX15_2 = SHX15_2 + SHX16_2
      SHX16_2 = SHX6_2.WidthOffset
      SHX16_2 = SHX16_2 / 2
      SHX15_2 = SHX15_2 + SHX16_2
      SHX16_2 = SHX6_2.Y
      SHX17_2 = SHX0_1.LeftArrow
      SHX17_2 = SHX17_2.Y
      SHX16_2 = SHX16_2 + SHX17_2
      SHX17_2 = SHX6_2.SubtitleHeight
      SHX16_2 = SHX16_2 + SHX17_2
      SHX17_2 = RageUI
      SHX17_2 = SHX17_2.ItemOffset
      SHX16_2 = SHX16_2 + SHX17_2
      SHX17_2 = SHX0_1.LeftArrow
      SHX17_2 = SHX17_2.Width
      SHX18_2 = SHX0_1.LeftArrow
      SHX18_2 = SHX18_2.Height
      SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
      SHX12_2 = RenderSprite
      SHX13_2 = SHX0_1.RightArrow
      SHX13_2 = SHX13_2.Dictionary
      SHX14_2 = SHX0_1.RightArrow
      SHX14_2 = SHX14_2.Texture
      SHX15_2 = SHX6_2.X
      SHX16_2 = SHX0_1.RightArrow
      SHX16_2 = SHX16_2.X
      SHX15_2 = SHX15_2 + SHX16_2
      SHX16_2 = SHX6_2.WidthOffset
      SHX16_2 = SHX16_2 / 2
      SHX15_2 = SHX15_2 + SHX16_2
      SHX16_2 = SHX6_2.Y
      SHX17_2 = SHX0_1.RightArrow
      SHX17_2 = SHX17_2.Y
      SHX16_2 = SHX16_2 + SHX17_2
      SHX17_2 = SHX6_2.SubtitleHeight
      SHX16_2 = SHX16_2 + SHX17_2
      SHX17_2 = RageUI
      SHX17_2 = SHX17_2.ItemOffset
      SHX16_2 = SHX16_2 + SHX17_2
      SHX17_2 = SHX0_1.RightArrow
      SHX17_2 = SHX17_2.Width
      SHX18_2 = SHX0_1.RightArrow
      SHX18_2 = SHX18_2.Height
      SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
      SHX12_2 = RenderRectangle
      SHX13_2 = SHX6_2.X
      SHX14_2 = SHX0_1.SelectedRectangle
      SHX14_2 = SHX14_2.X
      SHX13_2 = SHX13_2 + SHX14_2
      SHX14_2 = SHX0_1.Box
      SHX14_2 = SHX14_2.Width
      SHX15_2 = SHX3_2 - SHX2_2
      SHX14_2 = SHX14_2 * SHX15_2
      SHX13_2 = SHX13_2 + SHX14_2
      SHX14_2 = SHX6_2.WidthOffset
      SHX14_2 = SHX14_2 / 2
      SHX13_2 = SHX13_2 + SHX14_2
      SHX14_2 = SHX6_2.Y
      SHX15_2 = SHX0_1.SelectedRectangle
      SHX15_2 = SHX15_2.Y
      SHX14_2 = SHX14_2 + SHX15_2
      SHX15_2 = SHX6_2.SubtitleHeight
      SHX14_2 = SHX14_2 + SHX15_2
      SHX15_2 = RageUI
      SHX15_2 = SHX15_2.ItemOffset
      SHX14_2 = SHX14_2 + SHX15_2
      SHX15_2 = SHX0_1.SelectedRectangle
      SHX15_2 = SHX15_2.Width
      SHX16_2 = SHX0_1.SelectedRectangle
      SHX16_2 = SHX16_2.Height
      SHX17_2 = 245
      SHX18_2 = 245
      SHX19_2 = 245
      SHX20_2 = 255
      SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
      SHX12_2 = 1
      SHX13_2 = SHX7_2
      SHX14_2 = 1
      for SHX15_2 = SHX12_2, SHX13_2, SHX14_2 do
        SHX16_2 = RenderRectangle
        SHX17_2 = SHX6_2.X
        SHX18_2 = SHX0_1.Box
        SHX18_2 = SHX18_2.X
        SHX17_2 = SHX17_2 + SHX18_2
        SHX18_2 = SHX0_1.Box
        SHX18_2 = SHX18_2.Width
        SHX19_2 = SHX15_2 - 1
        SHX18_2 = SHX18_2 * SHX19_2
        SHX17_2 = SHX17_2 + SHX18_2
        SHX18_2 = SHX6_2.WidthOffset
        SHX18_2 = SHX18_2 / 2
        SHX17_2 = SHX17_2 + SHX18_2
        SHX18_2 = SHX6_2.Y
        SHX19_2 = SHX0_1.Box
        SHX19_2 = SHX19_2.Y
        SHX18_2 = SHX18_2 + SHX19_2
        SHX19_2 = SHX6_2.SubtitleHeight
        SHX18_2 = SHX18_2 + SHX19_2
        SHX19_2 = RageUI
        SHX19_2 = SHX19_2.ItemOffset
        SHX18_2 = SHX18_2 + SHX19_2
        SHX19_2 = SHX0_1.Box
        SHX19_2 = SHX19_2.Width
        SHX20_2 = SHX0_1.Box
        SHX20_2 = SHX20_2.Height
        SHX21_2 = table
        SHX21_2 = SHX21_2.unpack
        SHX22_2 = SHX2_2 + SHX15_2
        SHX22_2 = SHX22_2 - 1
        SHX22_2 = SHX1_2[SHX22_2]
        SHX21_2, SHX22_2 = SHX21_2(SHX22_2)
        SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
      end
      SHX12_2 = RenderText
      SHX13_2 = SHX0_2 or SHX13_2
      if not SHX0_2 or not SHX0_2 then
        SHX13_2 = ""
      end
      SHX14_2 = " ("
      SHX15_2 = SHX3_2
      SHX16_2 = " of "
      SHX17_2 = #SHX1_2
      SHX18_2 = ")"
      SHX13_2 = SHX13_2 .. SHX14_2 .. SHX15_2 .. SHX16_2 .. SHX17_2 .. SHX18_2
      SHX14_2 = SHX6_2.X
      SHX15_2 = RageUI
      SHX15_2 = SHX15_2.Settings
      SHX15_2 = SHX15_2.Panels
      SHX15_2 = SHX15_2.Grid
      SHX15_2 = SHX15_2.Text
      SHX15_2 = SHX15_2.Top
      SHX15_2 = SHX15_2.X
      SHX14_2 = SHX14_2 + SHX15_2
      SHX15_2 = SHX6_2.WidthOffset
      SHX15_2 = SHX15_2 / 2
      SHX14_2 = SHX14_2 + SHX15_2
      SHX15_2 = SHX6_2.Y
      SHX16_2 = RageUI
      SHX16_2 = SHX16_2.Settings
      SHX16_2 = SHX16_2.Panels
      SHX16_2 = SHX16_2.Grid
      SHX16_2 = SHX16_2.Text
      SHX16_2 = SHX16_2.Top
      SHX16_2 = SHX16_2.Y
      SHX15_2 = SHX15_2 + SHX16_2
      SHX16_2 = SHX6_2.SubtitleHeight
      SHX15_2 = SHX15_2 + SHX16_2
      SHX16_2 = RageUI
      SHX16_2 = SHX16_2.ItemOffset
      SHX15_2 = SHX15_2 + SHX16_2
      SHX16_2 = 0
      SHX17_2 = RageUI
      SHX17_2 = SHX17_2.Settings
      SHX17_2 = SHX17_2.Panels
      SHX17_2 = SHX17_2.Grid
      SHX17_2 = SHX17_2.Text
      SHX17_2 = SHX17_2.Top
      SHX17_2 = SHX17_2.Scale
      SHX18_2 = 245
      SHX19_2 = 245
      SHX20_2 = 245
      SHX21_2 = 255
      SHX22_2 = 1
      SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
      if SHX8_2 or SHX9_2 or SHX10_2 then
        SHX12_2 = RageUI
        SHX12_2 = SHX12_2.Settings
        SHX12_2 = SHX12_2.Controls
        SHX12_2 = SHX12_2.Click
        SHX12_2 = SHX12_2.Active
        if SHX12_2 then
          SHX11_2 = true
          if SHX9_2 then
            SHX3_2 = SHX3_2 - 1
            if SHX3_2 < 1 then
              SHX3_2 = #SHX1_2
              SHX12_2 = #SHX1_2
              SHX12_2 = SHX12_2 - SHX7_2
              SHX2_2 = SHX12_2 + 1
            elseif SHX3_2 < SHX2_2 then
              SHX2_2 = SHX2_2 - 1
            end
          elseif SHX10_2 then
            SHX3_2 = SHX3_2 + 1
            SHX12_2 = #SHX1_2
            if SHX3_2 > SHX12_2 then
              SHX3_2 = 1
              SHX2_2 = 1
            else
              SHX12_2 = SHX2_2 + SHX7_2
              SHX12_2 = SHX12_2 - 1
              if SHX3_2 > SHX12_2 then
                SHX2_2 = SHX2_2 + 1
              end
            end
          elseif SHX8_2 then
            SHX12_2 = 1
            SHX13_2 = SHX7_2
            SHX14_2 = 1
            for SHX15_2 = SHX12_2, SHX13_2, SHX14_2 do
              SHX16_2 = RageUI
              SHX16_2 = SHX16_2.IsMouseInBounds
              SHX17_2 = SHX6_2.X
              SHX18_2 = SHX0_1.Box
              SHX18_2 = SHX18_2.X
              SHX17_2 = SHX17_2 + SHX18_2
              SHX18_2 = SHX0_1.Box
              SHX18_2 = SHX18_2.Width
              SHX19_2 = SHX15_2 - 1
              SHX18_2 = SHX18_2 * SHX19_2
              SHX17_2 = SHX17_2 + SHX18_2
              SHX18_2 = SHX6_2.SafeZoneSize
              SHX18_2 = SHX18_2.X
              SHX17_2 = SHX17_2 + SHX18_2
              SHX18_2 = SHX6_2.WidthOffset
              SHX18_2 = SHX18_2 / 2
              SHX17_2 = SHX17_2 + SHX18_2
              SHX18_2 = SHX6_2.Y
              SHX19_2 = SHX0_1.Box
              SHX19_2 = SHX19_2.Y
              SHX18_2 = SHX18_2 + SHX19_2
              SHX19_2 = SHX6_2.SafeZoneSize
              SHX19_2 = SHX19_2.Y
              SHX18_2 = SHX18_2 + SHX19_2
              SHX19_2 = SHX6_2.SubtitleHeight
              SHX18_2 = SHX18_2 + SHX19_2
              SHX19_2 = RageUI
              SHX19_2 = SHX19_2.ItemOffset
              SHX18_2 = SHX18_2 + SHX19_2
              SHX19_2 = SHX0_1.Box
              SHX19_2 = SHX19_2.Width
              SHX20_2 = SHX0_1.Box
              SHX20_2 = SHX20_2.Height
              SHX16_2 = SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2)
              if SHX16_2 then
                SHX16_2 = SHX2_2 + SHX15_2
                SHX3_2 = SHX16_2 - 1
              end
            end
          end
        end
      end
      SHX12_2 = RageUI
      SHX13_2 = RageUI
      SHX13_2 = SHX13_2.ItemOffset
      SHX14_2 = SHX0_1.Background
      SHX14_2 = SHX14_2.Height
      SHX13_2 = SHX13_2 + SHX14_2
      SHX14_2 = SHX0_1.Background
      SHX14_2 = SHX14_2.Y
      SHX13_2 = SHX13_2 + SHX14_2
      SHX12_2.ItemOffset = SHX13_2
      if SHX8_2 or SHX9_2 or SHX10_2 then
        SHX12_2 = RageUI
        SHX12_2 = SHX12_2.Settings
        SHX12_2 = SHX12_2.Controls
        SHX12_2 = SHX12_2.Click
        SHX12_2 = SHX12_2.Active
        if SHX12_2 then
          SHX12_2 = RageUI
          SHX12_2 = SHX12_2.Settings
          SHX12_2 = SHX12_2.Audio
          SHX13_2 = RageUI
          SHX13_2 = SHX13_2.PlaySound
          SHX14_2 = SHX12_2.Use
          SHX14_2 = SHX12_2[SHX14_2]
          SHX14_2 = SHX14_2.Select
          SHX14_2 = SHX14_2.audioName
          SHX15_2 = SHX12_2.Use
          SHX15_2 = SHX12_2[SHX15_2]
          SHX15_2 = SHX15_2.Select
          SHX15_2 = SHX15_2.audioRef
          SHX13_2(SHX14_2, SHX15_2)
        end
      end
      SHX12_2 = SHX4_2
      SHX13_2 = SHX8_2 or SHX13_2
      SHX13_2 = SHX9_2 or SHX13_2
      if not SHX8_2 and not SHX9_2 then
        SHX13_2 = SHX10_2
      end
      SHX14_2 = SHX11_2
      SHX15_2 = SHX2_2
      SHX16_2 = SHX3_2
      SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2)
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_530:: outside nested blocks until all 'goto SHX_LABEL_530' can see it
  ::SHX_LABEL_530::
end
SHX1_1.ColourPanel = SHX2_1
