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
SHX1_1.Height = 275
SHX0_1.Background = SHX1_1
SHX1_1 = {}
SHX1_1.Dictionary = "pause_menu_pages_char_mom_dad"
SHX1_1.Texture = "nose_grid"
SHX1_1.X = 115.5
SHX1_1.Y = 47.5
SHX1_1.Width = 200
SHX1_1.Height = 200
SHX0_1.Grid = SHX1_1
SHX1_1 = {}
SHX1_1.Dictionary = "mpinventory"
SHX1_1.Texture = "in_world_circle"
SHX1_1.X = 115.5
SHX1_1.Y = 47.5
SHX1_1.Width = 20
SHX1_1.Height = 20
SHX0_1.Circle = SHX1_1
SHX1_1 = {}
SHX2_1 = {}
SHX2_1.X = 215.5
SHX2_1.Y = 15
SHX2_1.Scale = 0.35
SHX1_1.Top = SHX2_1
SHX2_1 = {}
SHX2_1.X = 215.5
SHX2_1.Y = 250
SHX2_1.Scale = 0.35
SHX1_1.Bottom = SHX2_1
SHX2_1 = {}
SHX2_1.X = 57.75
SHX2_1.Y = 130
SHX2_1.Scale = 0.35
SHX1_1.Left = SHX2_1
SHX2_1 = {}
SHX2_1.X = 373.25
SHX2_1.Y = 130
SHX2_1.Scale = 0.35
SHX1_1.Right = SHX2_1
SHX0_1.Text = SHX1_1
SHX1_1 = RageUI
function SHX2_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2
  SHX8_2 = RageUI
  SHX8_2 = SHX8_2.CurrentMenu
  if nil ~= SHX8_2 then
    SHX9_2 = SHX8_2
    SHX9_2 = SHX9_2()
    if SHX9_2 then
      if nil ~= SHX7_2 then
        SHX9_2 = SHX8_2.Index
        if SHX9_2 ~= SHX7_2 then
          goto SHX_LABEL_650
        end
      end
      SHX9_2 = RageUI
      SHX9_2 = SHX9_2.IsMouseInBounds
      SHX10_2 = SHX8_2.X
      SHX11_2 = SHX0_1.Grid
      SHX11_2 = SHX11_2.X
      SHX10_2 = SHX10_2 + SHX11_2
      SHX11_2 = SHX8_2.SafeZoneSize
      SHX11_2 = SHX11_2.X
      SHX10_2 = SHX10_2 + SHX11_2
      SHX10_2 = SHX10_2 + 20
      SHX11_2 = SHX8_2.Y
      SHX12_2 = SHX0_1.Grid
      SHX12_2 = SHX12_2.Y
      SHX11_2 = SHX11_2 + SHX12_2
      SHX12_2 = SHX8_2.SafeZoneSize
      SHX12_2 = SHX12_2.Y
      SHX11_2 = SHX11_2 + SHX12_2
      SHX12_2 = SHX8_2.SubtitleHeight
      SHX11_2 = SHX11_2 + SHX12_2
      SHX12_2 = RageUI
      SHX12_2 = SHX12_2.ItemOffset
      SHX11_2 = SHX11_2 + SHX12_2
      SHX11_2 = SHX11_2 + 20
      SHX12_2 = SHX0_1.Grid
      SHX12_2 = SHX12_2.Width
      SHX13_2 = SHX8_2.WidthOffset
      SHX12_2 = SHX12_2 + SHX13_2
      SHX12_2 = SHX12_2 - 40
      SHX13_2 = SHX0_1.Grid
      SHX13_2 = SHX13_2.Height
      SHX13_2 = SHX13_2 - 40
      SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
      SHX10_2 = false
      SHX11_2 = SHX8_2.X
      SHX12_2 = SHX0_1.Grid
      SHX12_2 = SHX12_2.X
      SHX11_2 = SHX11_2 + SHX12_2
      SHX12_2 = SHX8_2.WidthOffset
      SHX12_2 = SHX12_2 / 2
      SHX11_2 = SHX11_2 + SHX12_2
      SHX11_2 = SHX11_2 + 20
      SHX12_2 = SHX8_2.Y
      SHX13_2 = SHX0_1.Grid
      SHX13_2 = SHX13_2.Y
      SHX12_2 = SHX12_2 + SHX13_2
      SHX13_2 = SHX8_2.SubtitleHeight
      SHX12_2 = SHX12_2 + SHX13_2
      SHX13_2 = RageUI
      SHX13_2 = SHX13_2.ItemOffset
      SHX12_2 = SHX12_2 + SHX13_2
      SHX12_2 = SHX12_2 + 20
      if SHX0_2 < 0.0 or SHX0_2 > 1.0 then
        SHX0_2 = 0.0
      end
      if SHX1_2 < 0.0 or SHX1_2 > 1.0 then
        SHX1_2 = 0.0
      end
      SHX13_2 = SHX0_1.Grid
      SHX13_2 = SHX13_2.Width
      SHX13_2 = SHX13_2 - 40
      SHX13_2 = SHX13_2 * SHX0_2
      SHX13_2 = SHX11_2 + SHX13_2
      SHX14_2 = SHX0_1.Circle
      SHX14_2 = SHX14_2.Width
      SHX14_2 = SHX14_2 / 2
      SHX11_2 = SHX13_2 - SHX14_2
      SHX13_2 = SHX0_1.Grid
      SHX13_2 = SHX13_2.Height
      SHX13_2 = SHX13_2 - 40
      SHX13_2 = SHX13_2 * SHX1_2
      SHX13_2 = SHX12_2 + SHX13_2
      SHX14_2 = SHX0_1.Circle
      SHX14_2 = SHX14_2.Height
      SHX14_2 = SHX14_2 / 2
      SHX12_2 = SHX13_2 - SHX14_2
      SHX13_2 = RenderSprite
      SHX14_2 = SHX0_1.Background
      SHX14_2 = SHX14_2.Dictionary
      SHX15_2 = SHX0_1.Background
      SHX15_2 = SHX15_2.Texture
      SHX16_2 = SHX8_2.X
      SHX17_2 = SHX8_2.Y
      SHX18_2 = SHX0_1.Background
      SHX18_2 = SHX18_2.Y
      SHX17_2 = SHX17_2 + SHX18_2
      SHX18_2 = SHX8_2.SubtitleHeight
      SHX17_2 = SHX17_2 + SHX18_2
      SHX18_2 = RageUI
      SHX18_2 = SHX18_2.ItemOffset
      SHX17_2 = SHX17_2 + SHX18_2
      SHX18_2 = SHX0_1.Background
      SHX18_2 = SHX18_2.Width
      SHX19_2 = SHX8_2.WidthOffset
      SHX18_2 = SHX18_2 + SHX19_2
      SHX19_2 = SHX0_1.Background
      SHX19_2 = SHX19_2.Height
      SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
      SHX13_2 = RenderSprite
      SHX14_2 = SHX0_1.Grid
      SHX14_2 = SHX14_2.Dictionary
      SHX15_2 = SHX0_1.Grid
      SHX15_2 = SHX15_2.Texture
      SHX16_2 = SHX8_2.X
      SHX17_2 = SHX0_1.Grid
      SHX17_2 = SHX17_2.X
      SHX16_2 = SHX16_2 + SHX17_2
      SHX17_2 = SHX8_2.WidthOffset
      SHX17_2 = SHX17_2 / 2
      SHX16_2 = SHX16_2 + SHX17_2
      SHX17_2 = SHX8_2.Y
      SHX18_2 = SHX0_1.Grid
      SHX18_2 = SHX18_2.Y
      SHX17_2 = SHX17_2 + SHX18_2
      SHX18_2 = SHX8_2.SubtitleHeight
      SHX17_2 = SHX17_2 + SHX18_2
      SHX18_2 = RageUI
      SHX18_2 = SHX18_2.ItemOffset
      SHX17_2 = SHX17_2 + SHX18_2
      SHX18_2 = SHX0_1.Grid
      SHX18_2 = SHX18_2.Width
      SHX19_2 = SHX0_1.Grid
      SHX19_2 = SHX19_2.Height
      SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
      SHX13_2 = RenderSprite
      SHX14_2 = SHX0_1.Circle
      SHX14_2 = SHX14_2.Dictionary
      SHX15_2 = SHX0_1.Circle
      SHX15_2 = SHX15_2.Texture
      SHX16_2 = SHX11_2
      SHX17_2 = SHX12_2
      SHX18_2 = SHX0_1.Circle
      SHX18_2 = SHX18_2.Width
      SHX19_2 = SHX0_1.Circle
      SHX19_2 = SHX19_2.Height
      SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
      SHX13_2 = RenderText
      SHX14_2 = SHX2_2 or SHX14_2
      if not SHX2_2 then
        SHX14_2 = ""
      end
      SHX15_2 = SHX8_2.X
      SHX16_2 = SHX0_1.Text
      SHX16_2 = SHX16_2.Top
      SHX16_2 = SHX16_2.X
      SHX15_2 = SHX15_2 + SHX16_2
      SHX16_2 = SHX8_2.WidthOffset
      SHX16_2 = SHX16_2 / 2
      SHX15_2 = SHX15_2 + SHX16_2
      SHX16_2 = SHX8_2.Y
      SHX17_2 = SHX0_1.Text
      SHX17_2 = SHX17_2.Top
      SHX17_2 = SHX17_2.Y
      SHX16_2 = SHX16_2 + SHX17_2
      SHX17_2 = SHX8_2.SubtitleHeight
      SHX16_2 = SHX16_2 + SHX17_2
      SHX17_2 = RageUI
      SHX17_2 = SHX17_2.ItemOffset
      SHX16_2 = SHX16_2 + SHX17_2
      SHX17_2 = 0
      SHX18_2 = SHX0_1.Text
      SHX18_2 = SHX18_2.Top
      SHX18_2 = SHX18_2.Scale
      SHX19_2 = 245
      SHX20_2 = 245
      SHX21_2 = 245
      SHX22_2 = 255
      SHX23_2 = 1
      SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
      SHX13_2 = RenderText
      SHX14_2 = SHX3_2 or SHX14_2
      if not SHX3_2 then
        SHX14_2 = ""
      end
      SHX15_2 = SHX8_2.X
      SHX16_2 = SHX0_1.Text
      SHX16_2 = SHX16_2.Bottom
      SHX16_2 = SHX16_2.X
      SHX15_2 = SHX15_2 + SHX16_2
      SHX16_2 = SHX8_2.WidthOffset
      SHX16_2 = SHX16_2 / 2
      SHX15_2 = SHX15_2 + SHX16_2
      SHX16_2 = SHX8_2.Y
      SHX17_2 = SHX0_1.Text
      SHX17_2 = SHX17_2.Bottom
      SHX17_2 = SHX17_2.Y
      SHX16_2 = SHX16_2 + SHX17_2
      SHX17_2 = SHX8_2.SubtitleHeight
      SHX16_2 = SHX16_2 + SHX17_2
      SHX17_2 = RageUI
      SHX17_2 = SHX17_2.ItemOffset
      SHX16_2 = SHX16_2 + SHX17_2
      SHX17_2 = 0
      SHX18_2 = SHX0_1.Text
      SHX18_2 = SHX18_2.Bottom
      SHX18_2 = SHX18_2.Scale
      SHX19_2 = 245
      SHX20_2 = 245
      SHX21_2 = 245
      SHX22_2 = 255
      SHX23_2 = 1
      SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
      SHX13_2 = RenderText
      SHX14_2 = SHX4_2 or SHX14_2
      if not SHX4_2 then
        SHX14_2 = ""
      end
      SHX15_2 = SHX8_2.X
      SHX16_2 = SHX0_1.Text
      SHX16_2 = SHX16_2.Left
      SHX16_2 = SHX16_2.X
      SHX15_2 = SHX15_2 + SHX16_2
      SHX16_2 = SHX8_2.WidthOffset
      SHX16_2 = SHX16_2 / 2
      SHX15_2 = SHX15_2 + SHX16_2
      SHX16_2 = SHX8_2.Y
      SHX17_2 = SHX0_1.Text
      SHX17_2 = SHX17_2.Left
      SHX17_2 = SHX17_2.Y
      SHX16_2 = SHX16_2 + SHX17_2
      SHX17_2 = SHX8_2.SubtitleHeight
      SHX16_2 = SHX16_2 + SHX17_2
      SHX17_2 = RageUI
      SHX17_2 = SHX17_2.ItemOffset
      SHX16_2 = SHX16_2 + SHX17_2
      SHX17_2 = 0
      SHX18_2 = SHX0_1.Text
      SHX18_2 = SHX18_2.Left
      SHX18_2 = SHX18_2.Scale
      SHX19_2 = 245
      SHX20_2 = 245
      SHX21_2 = 245
      SHX22_2 = 255
      SHX23_2 = 1
      SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
      SHX13_2 = RenderText
      SHX14_2 = SHX5_2 or SHX14_2
      if not SHX5_2 then
        SHX14_2 = ""
      end
      SHX15_2 = SHX8_2.X
      SHX16_2 = SHX0_1.Text
      SHX16_2 = SHX16_2.Right
      SHX16_2 = SHX16_2.X
      SHX15_2 = SHX15_2 + SHX16_2
      SHX16_2 = SHX8_2.WidthOffset
      SHX16_2 = SHX16_2 / 2
      SHX15_2 = SHX15_2 + SHX16_2
      SHX16_2 = SHX8_2.Y
      SHX17_2 = SHX0_1.Text
      SHX17_2 = SHX17_2.Right
      SHX17_2 = SHX17_2.Y
      SHX16_2 = SHX16_2 + SHX17_2
      SHX17_2 = SHX8_2.SubtitleHeight
      SHX16_2 = SHX16_2 + SHX17_2
      SHX17_2 = RageUI
      SHX17_2 = SHX17_2.ItemOffset
      SHX16_2 = SHX16_2 + SHX17_2
      SHX17_2 = 0
      SHX18_2 = SHX0_1.Text
      SHX18_2 = SHX18_2.Right
      SHX18_2 = SHX18_2.Scale
      SHX19_2 = 245
      SHX20_2 = 245
      SHX21_2 = 245
      SHX22_2 = 255
      SHX23_2 = 1
      SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
      if SHX9_2 then
        SHX13_2 = IsDisabledControlPressed
        SHX14_2 = 0
        SHX15_2 = 24
        SHX13_2 = SHX13_2(SHX14_2, SHX15_2)
        if SHX13_2 then
          SHX10_2 = true
          SHX13_2 = RageUI
          SHX13_2 = SHX13_2.round
          SHX14_2 = GetControlNormal
          SHX15_2 = 2
          SHX16_2 = 239
          SHX14_2 = SHX14_2(SHX15_2, SHX16_2)
          SHX14_2 = SHX14_2 * 1920
          SHX13_2 = SHX13_2(SHX14_2)
          SHX14_2 = SHX8_2.SafeZoneSize
          SHX14_2 = SHX14_2.X
          SHX13_2 = SHX13_2 - SHX14_2
          SHX14_2 = SHX0_1.Circle
          SHX14_2 = SHX14_2.Width
          SHX14_2 = SHX14_2 / 2
          SHX11_2 = SHX13_2 - SHX14_2
          SHX13_2 = RageUI
          SHX13_2 = SHX13_2.round
          SHX14_2 = GetControlNormal
          SHX15_2 = 2
          SHX16_2 = 240
          SHX14_2 = SHX14_2(SHX15_2, SHX16_2)
          SHX14_2 = SHX14_2 * 1080
          SHX13_2 = SHX13_2(SHX14_2)
          SHX14_2 = SHX8_2.SafeZoneSize
          SHX14_2 = SHX14_2.Y
          SHX13_2 = SHX13_2 - SHX14_2
          SHX14_2 = SHX0_1.Circle
          SHX14_2 = SHX14_2.Height
          SHX14_2 = SHX14_2 / 2
          SHX12_2 = SHX13_2 - SHX14_2
          SHX13_2 = SHX8_2.X
          SHX14_2 = SHX0_1.Grid
          SHX14_2 = SHX14_2.X
          SHX13_2 = SHX13_2 + SHX14_2
          SHX14_2 = SHX8_2.WidthOffset
          SHX14_2 = SHX14_2 / 2
          SHX13_2 = SHX13_2 + SHX14_2
          SHX13_2 = SHX13_2 + 20
          SHX14_2 = SHX0_1.Grid
          SHX14_2 = SHX14_2.Width
          SHX13_2 = SHX13_2 + SHX14_2
          SHX13_2 = SHX13_2 - 40
          if SHX11_2 > SHX13_2 then
            SHX13_2 = SHX8_2.X
            SHX14_2 = SHX0_1.Grid
            SHX14_2 = SHX14_2.X
            SHX13_2 = SHX13_2 + SHX14_2
            SHX14_2 = SHX8_2.WidthOffset
            SHX14_2 = SHX14_2 / 2
            SHX13_2 = SHX13_2 + SHX14_2
            SHX13_2 = SHX13_2 + 20
            SHX14_2 = SHX0_1.Grid
            SHX14_2 = SHX14_2.Width
            SHX13_2 = SHX13_2 + SHX14_2
            SHX11_2 = SHX13_2 - 40
          else
            SHX13_2 = SHX8_2.X
            SHX14_2 = SHX0_1.Grid
            SHX14_2 = SHX14_2.X
            SHX13_2 = SHX13_2 + SHX14_2
            SHX13_2 = SHX13_2 + 20
            SHX14_2 = SHX0_1.Circle
            SHX14_2 = SHX14_2.Width
            SHX14_2 = SHX14_2 / 2
            SHX13_2 = SHX13_2 - SHX14_2
            if SHX11_2 < SHX13_2 then
              SHX13_2 = SHX8_2.X
              SHX14_2 = SHX0_1.Grid
              SHX14_2 = SHX14_2.X
              SHX13_2 = SHX13_2 + SHX14_2
              SHX13_2 = SHX13_2 + 20
              SHX14_2 = SHX0_1.Circle
              SHX14_2 = SHX14_2.Width
              SHX14_2 = SHX14_2 / 2
              SHX11_2 = SHX13_2 - SHX14_2
            end
          end
          SHX13_2 = SHX8_2.Y
          SHX14_2 = SHX0_1.Grid
          SHX14_2 = SHX14_2.Y
          SHX13_2 = SHX13_2 + SHX14_2
          SHX14_2 = SHX8_2.SubtitleHeight
          SHX13_2 = SHX13_2 + SHX14_2
          SHX14_2 = RageUI
          SHX14_2 = SHX14_2.ItemOffset
          SHX13_2 = SHX13_2 + SHX14_2
          SHX13_2 = SHX13_2 + 20
          SHX14_2 = SHX0_1.Grid
          SHX14_2 = SHX14_2.Height
          SHX13_2 = SHX13_2 + SHX14_2
          SHX13_2 = SHX13_2 - 40
          if SHX12_2 > SHX13_2 then
            SHX13_2 = SHX8_2.Y
            SHX14_2 = SHX0_1.Grid
            SHX14_2 = SHX14_2.Y
            SHX13_2 = SHX13_2 + SHX14_2
            SHX14_2 = SHX8_2.SubtitleHeight
            SHX13_2 = SHX13_2 + SHX14_2
            SHX14_2 = RageUI
            SHX14_2 = SHX14_2.ItemOffset
            SHX13_2 = SHX13_2 + SHX14_2
            SHX13_2 = SHX13_2 + 20
            SHX14_2 = SHX0_1.Grid
            SHX14_2 = SHX14_2.Height
            SHX13_2 = SHX13_2 + SHX14_2
            SHX12_2 = SHX13_2 - 40
          else
            SHX13_2 = SHX8_2.Y
            SHX14_2 = SHX0_1.Grid
            SHX14_2 = SHX14_2.Y
            SHX13_2 = SHX13_2 + SHX14_2
            SHX14_2 = SHX8_2.SubtitleHeight
            SHX13_2 = SHX13_2 + SHX14_2
            SHX14_2 = RageUI
            SHX14_2 = SHX14_2.ItemOffset
            SHX13_2 = SHX13_2 + SHX14_2
            SHX13_2 = SHX13_2 + 20
            SHX14_2 = SHX0_1.Circle
            SHX14_2 = SHX14_2.Height
            SHX14_2 = SHX14_2 / 2
            SHX13_2 = SHX13_2 - SHX14_2
            if SHX12_2 < SHX13_2 then
              SHX13_2 = SHX8_2.Y
              SHX14_2 = SHX0_1.Grid
              SHX14_2 = SHX14_2.Y
              SHX13_2 = SHX13_2 + SHX14_2
              SHX14_2 = SHX8_2.SubtitleHeight
              SHX13_2 = SHX13_2 + SHX14_2
              SHX14_2 = RageUI
              SHX14_2 = SHX14_2.ItemOffset
              SHX13_2 = SHX13_2 + SHX14_2
              SHX13_2 = SHX13_2 + 20
              SHX14_2 = SHX0_1.Circle
              SHX14_2 = SHX14_2.Height
              SHX14_2 = SHX14_2 / 2
              SHX12_2 = SHX13_2 - SHX14_2
            end
          end
          SHX13_2 = RageUI
          SHX13_2 = SHX13_2.round
          SHX14_2 = SHX8_2.X
          SHX15_2 = SHX0_1.Grid
          SHX15_2 = SHX15_2.X
          SHX14_2 = SHX14_2 + SHX15_2
          SHX15_2 = SHX8_2.WidthOffset
          SHX15_2 = SHX15_2 / 2
          SHX14_2 = SHX14_2 + SHX15_2
          SHX14_2 = SHX14_2 + 20
          SHX14_2 = SHX11_2 - SHX14_2
          SHX15_2 = SHX0_1.Circle
          SHX15_2 = SHX15_2.Width
          SHX15_2 = SHX15_2 / 2
          SHX14_2 = SHX14_2 + SHX15_2
          SHX15_2 = SHX0_1.Grid
          SHX15_2 = SHX15_2.Width
          SHX15_2 = SHX15_2 - 40
          SHX14_2 = SHX14_2 / SHX15_2
          SHX15_2 = 2
          SHX13_2 = SHX13_2(SHX14_2, SHX15_2)
          SHX0_2 = SHX13_2
          SHX13_2 = RageUI
          SHX13_2 = SHX13_2.round
          SHX14_2 = SHX8_2.Y
          SHX15_2 = SHX0_1.Grid
          SHX15_2 = SHX15_2.Y
          SHX14_2 = SHX14_2 + SHX15_2
          SHX15_2 = SHX8_2.SubtitleHeight
          SHX14_2 = SHX14_2 + SHX15_2
          SHX15_2 = RageUI
          SHX15_2 = SHX15_2.ItemOffset
          SHX14_2 = SHX14_2 + SHX15_2
          SHX14_2 = SHX14_2 + 20
          SHX14_2 = SHX12_2 - SHX14_2
          SHX15_2 = SHX0_1.Circle
          SHX15_2 = SHX15_2.Height
          SHX15_2 = SHX15_2 / 2
          SHX14_2 = SHX14_2 + SHX15_2
          SHX15_2 = SHX0_1.Grid
          SHX15_2 = SHX15_2.Height
          SHX15_2 = SHX15_2 - 40
          SHX14_2 = SHX14_2 / SHX15_2
          SHX15_2 = 2
          SHX13_2 = SHX13_2(SHX14_2, SHX15_2)
          SHX1_2 = SHX13_2
          if SHX0_2 > 1.0 then
            SHX0_2 = 1.0
          end
          if SHX1_2 > 1.0 then
            SHX1_2 = 1.0
          end
        end
      end
      SHX13_2 = RageUI
      SHX14_2 = RageUI
      SHX14_2 = SHX14_2.ItemOffset
      SHX15_2 = SHX0_1.Background
      SHX15_2 = SHX15_2.Height
      SHX14_2 = SHX14_2 + SHX15_2
      SHX15_2 = SHX0_1.Background
      SHX15_2 = SHX15_2.Y
      SHX14_2 = SHX14_2 + SHX15_2
      SHX13_2.ItemOffset = SHX14_2
      if SHX9_2 and SHX10_2 then
        SHX13_2 = RageUI
        SHX13_2 = SHX13_2.Settings
        SHX13_2 = SHX13_2.Audio
        SHX14_2 = RageUI
        SHX14_2 = SHX14_2.PlaySound
        SHX15_2 = SHX13_2.Use
        SHX15_2 = SHX13_2[SHX15_2]
        SHX15_2 = SHX15_2.Slider
        SHX15_2 = SHX15_2.audioName
        SHX16_2 = SHX13_2.Use
        SHX16_2 = SHX13_2[SHX16_2]
        SHX16_2 = SHX16_2.Slider
        SHX16_2 = SHX16_2.audioRef
        SHX17_2 = true
        SHX14_2(SHX15_2, SHX16_2, SHX17_2)
      end
      SHX13_2 = SHX6_2
      SHX14_2 = SHX9_2
      SHX15_2 = SHX10_2
      SHX16_2 = SHX0_2
      SHX17_2 = SHX1_2
      SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2)
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_650:: outside nested blocks until all 'goto SHX_LABEL_650' can see it
  ::SHX_LABEL_650::
end
SHX1_1.GridPanel = SHX2_1
