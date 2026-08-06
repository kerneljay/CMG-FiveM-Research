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
SHX1_1.Dictionary = "RageUI"
SHX1_1.Texture = "horizontal_grid"
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
function SHX2_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2
  SHX5_2 = RageUI
  SHX5_2 = SHX5_2.CurrentMenu
  if nil ~= SHX5_2 then
    SHX6_2 = SHX5_2
    SHX6_2 = SHX6_2()
    if SHX6_2 then
      if nil ~= SHX4_2 then
        SHX6_2 = SHX5_2.Index
        if SHX6_2 ~= SHX4_2 then
          goto SHX_LABEL_429
        end
      end
      SHX6_2 = RageUI
      SHX6_2 = SHX6_2.IsMouseInBounds
      SHX7_2 = SHX5_2.X
      SHX8_2 = SHX0_1.Grid
      SHX8_2 = SHX8_2.X
      SHX7_2 = SHX7_2 + SHX8_2
      SHX8_2 = SHX5_2.SafeZoneSize
      SHX8_2 = SHX8_2.X
      SHX7_2 = SHX7_2 + SHX8_2
      SHX7_2 = SHX7_2 + 20
      SHX8_2 = SHX5_2.Y
      SHX9_2 = SHX0_1.Grid
      SHX9_2 = SHX9_2.Y
      SHX8_2 = SHX8_2 + SHX9_2
      SHX9_2 = SHX5_2.SafeZoneSize
      SHX9_2 = SHX9_2.Y
      SHX8_2 = SHX8_2 + SHX9_2
      SHX9_2 = SHX5_2.SubtitleHeight
      SHX8_2 = SHX8_2 + SHX9_2
      SHX9_2 = RageUI
      SHX9_2 = SHX9_2.ItemOffset
      SHX8_2 = SHX8_2 + SHX9_2
      SHX8_2 = SHX8_2 + 20
      SHX9_2 = SHX0_1.Grid
      SHX9_2 = SHX9_2.Width
      SHX10_2 = SHX5_2.WidthOffset
      SHX9_2 = SHX9_2 + SHX10_2
      SHX9_2 = SHX9_2 - 40
      SHX10_2 = SHX0_1.Grid
      SHX10_2 = SHX10_2.Height
      SHX10_2 = SHX10_2 - 40
      SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
      SHX7_2 = false
      SHX8_2 = SHX5_2.X
      SHX9_2 = SHX0_1.Grid
      SHX9_2 = SHX9_2.X
      SHX8_2 = SHX8_2 + SHX9_2
      SHX9_2 = SHX5_2.WidthOffset
      SHX9_2 = SHX9_2 / 2
      SHX8_2 = SHX8_2 + SHX9_2
      SHX8_2 = SHX8_2 + 20
      SHX9_2 = SHX5_2.Y
      SHX10_2 = SHX0_1.Grid
      SHX10_2 = SHX10_2.Y
      SHX9_2 = SHX9_2 + SHX10_2
      SHX10_2 = SHX5_2.SubtitleHeight
      SHX9_2 = SHX9_2 + SHX10_2
      SHX10_2 = RageUI
      SHX10_2 = SHX10_2.ItemOffset
      SHX9_2 = SHX9_2 + SHX10_2
      SHX9_2 = SHX9_2 + 20
      if SHX0_2 < 0.0 or SHX0_2 > 1.0 then
        SHX0_2 = 0.0
      end
      SHX10_2 = 0.5
      SHX11_2 = SHX0_1.Grid
      SHX11_2 = SHX11_2.Width
      SHX11_2 = SHX11_2 - 40
      SHX11_2 = SHX11_2 * SHX0_2
      SHX11_2 = SHX8_2 + SHX11_2
      SHX12_2 = SHX0_1.Circle
      SHX12_2 = SHX12_2.Width
      SHX12_2 = SHX12_2 / 2
      SHX8_2 = SHX11_2 - SHX12_2
      SHX11_2 = SHX0_1.Grid
      SHX11_2 = SHX11_2.Height
      SHX11_2 = SHX11_2 - 40
      SHX11_2 = SHX11_2 * SHX10_2
      SHX11_2 = SHX9_2 + SHX11_2
      SHX12_2 = SHX0_1.Circle
      SHX12_2 = SHX12_2.Height
      SHX12_2 = SHX12_2 / 2
      SHX9_2 = SHX11_2 - SHX12_2
      SHX11_2 = RenderSprite
      SHX12_2 = SHX0_1.Background
      SHX12_2 = SHX12_2.Dictionary
      SHX13_2 = SHX0_1.Background
      SHX13_2 = SHX13_2.Texture
      SHX14_2 = SHX5_2.X
      SHX15_2 = SHX5_2.Y
      SHX16_2 = SHX0_1.Background
      SHX16_2 = SHX16_2.Y
      SHX15_2 = SHX15_2 + SHX16_2
      SHX16_2 = SHX5_2.SubtitleHeight
      SHX15_2 = SHX15_2 + SHX16_2
      SHX16_2 = RageUI
      SHX16_2 = SHX16_2.ItemOffset
      SHX15_2 = SHX15_2 + SHX16_2
      SHX16_2 = SHX0_1.Background
      SHX16_2 = SHX16_2.Width
      SHX17_2 = SHX5_2.WidthOffset
      SHX16_2 = SHX16_2 + SHX17_2
      SHX17_2 = SHX0_1.Background
      SHX17_2 = SHX17_2.Height
      SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
      SHX11_2 = RenderSprite
      SHX12_2 = SHX0_1.Grid
      SHX12_2 = SHX12_2.Dictionary
      SHX13_2 = SHX0_1.Grid
      SHX13_2 = SHX13_2.Texture
      SHX14_2 = SHX5_2.X
      SHX15_2 = SHX0_1.Grid
      SHX15_2 = SHX15_2.X
      SHX14_2 = SHX14_2 + SHX15_2
      SHX15_2 = SHX5_2.WidthOffset
      SHX15_2 = SHX15_2 / 2
      SHX14_2 = SHX14_2 + SHX15_2
      SHX15_2 = SHX5_2.Y
      SHX16_2 = SHX0_1.Grid
      SHX16_2 = SHX16_2.Y
      SHX15_2 = SHX15_2 + SHX16_2
      SHX16_2 = SHX5_2.SubtitleHeight
      SHX15_2 = SHX15_2 + SHX16_2
      SHX16_2 = RageUI
      SHX16_2 = SHX16_2.ItemOffset
      SHX15_2 = SHX15_2 + SHX16_2
      SHX16_2 = SHX0_1.Grid
      SHX16_2 = SHX16_2.Width
      SHX17_2 = SHX0_1.Grid
      SHX17_2 = SHX17_2.Height
      SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
      SHX11_2 = RenderSprite
      SHX12_2 = SHX0_1.Circle
      SHX12_2 = SHX12_2.Dictionary
      SHX13_2 = SHX0_1.Circle
      SHX13_2 = SHX13_2.Texture
      SHX14_2 = SHX8_2
      SHX15_2 = SHX9_2
      SHX16_2 = SHX0_1.Circle
      SHX16_2 = SHX16_2.Width
      SHX17_2 = SHX0_1.Circle
      SHX17_2 = SHX17_2.Height
      SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
      SHX11_2 = RenderText
      SHX12_2 = SHX1_2 or SHX12_2
      if not SHX1_2 then
        SHX12_2 = ""
      end
      SHX13_2 = SHX5_2.X
      SHX14_2 = SHX0_1.Text
      SHX14_2 = SHX14_2.Left
      SHX14_2 = SHX14_2.X
      SHX13_2 = SHX13_2 + SHX14_2
      SHX14_2 = SHX5_2.WidthOffset
      SHX14_2 = SHX14_2 / 2
      SHX13_2 = SHX13_2 + SHX14_2
      SHX14_2 = SHX5_2.Y
      SHX15_2 = SHX0_1.Text
      SHX15_2 = SHX15_2.Left
      SHX15_2 = SHX15_2.Y
      SHX14_2 = SHX14_2 + SHX15_2
      SHX15_2 = SHX5_2.SubtitleHeight
      SHX14_2 = SHX14_2 + SHX15_2
      SHX15_2 = RageUI
      SHX15_2 = SHX15_2.ItemOffset
      SHX14_2 = SHX14_2 + SHX15_2
      SHX15_2 = 0
      SHX16_2 = SHX0_1.Text
      SHX16_2 = SHX16_2.Left
      SHX16_2 = SHX16_2.Scale
      SHX17_2 = 245
      SHX18_2 = 245
      SHX19_2 = 245
      SHX20_2 = 255
      SHX21_2 = 1
      SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
      SHX11_2 = RenderText
      SHX12_2 = SHX2_2 or SHX12_2
      if not SHX2_2 then
        SHX12_2 = ""
      end
      SHX13_2 = SHX5_2.X
      SHX14_2 = SHX0_1.Text
      SHX14_2 = SHX14_2.Right
      SHX14_2 = SHX14_2.X
      SHX13_2 = SHX13_2 + SHX14_2
      SHX14_2 = SHX5_2.WidthOffset
      SHX14_2 = SHX14_2 / 2
      SHX13_2 = SHX13_2 + SHX14_2
      SHX14_2 = SHX5_2.Y
      SHX15_2 = SHX0_1.Text
      SHX15_2 = SHX15_2.Right
      SHX15_2 = SHX15_2.Y
      SHX14_2 = SHX14_2 + SHX15_2
      SHX15_2 = SHX5_2.SubtitleHeight
      SHX14_2 = SHX14_2 + SHX15_2
      SHX15_2 = RageUI
      SHX15_2 = SHX15_2.ItemOffset
      SHX14_2 = SHX14_2 + SHX15_2
      SHX15_2 = 0
      SHX16_2 = SHX0_1.Text
      SHX16_2 = SHX16_2.Right
      SHX16_2 = SHX16_2.Scale
      SHX17_2 = 245
      SHX18_2 = 245
      SHX19_2 = 245
      SHX20_2 = 255
      SHX21_2 = 1
      SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
      if SHX6_2 then
        SHX11_2 = IsDisabledControlPressed
        SHX12_2 = 0
        SHX13_2 = 24
        SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
        if SHX11_2 then
          SHX7_2 = true
          SHX11_2 = RageUI
          SHX11_2 = SHX11_2.round
          SHX12_2 = GetControlNormal
          SHX13_2 = 2
          SHX14_2 = 239
          SHX12_2 = SHX12_2(SHX13_2, SHX14_2)
          SHX12_2 = SHX12_2 * 1920
          SHX11_2 = SHX11_2(SHX12_2)
          SHX12_2 = SHX5_2.SafeZoneSize
          SHX12_2 = SHX12_2.X
          SHX11_2 = SHX11_2 - SHX12_2
          SHX12_2 = SHX0_1.Circle
          SHX12_2 = SHX12_2.Width
          SHX12_2 = SHX12_2 / 2
          SHX8_2 = SHX11_2 - SHX12_2
          SHX11_2 = SHX5_2.X
          SHX12_2 = SHX0_1.Grid
          SHX12_2 = SHX12_2.X
          SHX11_2 = SHX11_2 + SHX12_2
          SHX12_2 = SHX5_2.WidthOffset
          SHX12_2 = SHX12_2 / 2
          SHX11_2 = SHX11_2 + SHX12_2
          SHX11_2 = SHX11_2 + 20
          SHX12_2 = SHX0_1.Grid
          SHX12_2 = SHX12_2.Width
          SHX11_2 = SHX11_2 + SHX12_2
          SHX11_2 = SHX11_2 - 40
          if SHX8_2 > SHX11_2 then
            SHX11_2 = SHX5_2.X
            SHX12_2 = SHX0_1.Grid
            SHX12_2 = SHX12_2.X
            SHX11_2 = SHX11_2 + SHX12_2
            SHX12_2 = SHX5_2.WidthOffset
            SHX12_2 = SHX12_2 / 2
            SHX11_2 = SHX11_2 + SHX12_2
            SHX11_2 = SHX11_2 + 20
            SHX12_2 = SHX0_1.Grid
            SHX12_2 = SHX12_2.Width
            SHX11_2 = SHX11_2 + SHX12_2
            SHX8_2 = SHX11_2 - 40
          else
            SHX11_2 = SHX5_2.X
            SHX12_2 = SHX0_1.Grid
            SHX12_2 = SHX12_2.X
            SHX11_2 = SHX11_2 + SHX12_2
            SHX11_2 = SHX11_2 + 20
            SHX12_2 = SHX0_1.Circle
            SHX12_2 = SHX12_2.Width
            SHX12_2 = SHX12_2 / 2
            SHX11_2 = SHX11_2 - SHX12_2
            if SHX8_2 < SHX11_2 then
              SHX11_2 = SHX5_2.X
              SHX12_2 = SHX0_1.Grid
              SHX12_2 = SHX12_2.X
              SHX11_2 = SHX11_2 + SHX12_2
              SHX11_2 = SHX11_2 + 20
              SHX12_2 = SHX0_1.Circle
              SHX12_2 = SHX12_2.Width
              SHX12_2 = SHX12_2 / 2
              SHX8_2 = SHX11_2 - SHX12_2
            end
          end
          SHX11_2 = RageUI
          SHX11_2 = SHX11_2.round
          SHX12_2 = SHX5_2.X
          SHX13_2 = SHX0_1.Grid
          SHX13_2 = SHX13_2.X
          SHX12_2 = SHX12_2 + SHX13_2
          SHX13_2 = SHX5_2.WidthOffset
          SHX13_2 = SHX13_2 / 2
          SHX12_2 = SHX12_2 + SHX13_2
          SHX12_2 = SHX12_2 + 20
          SHX12_2 = SHX8_2 - SHX12_2
          SHX13_2 = SHX0_1.Circle
          SHX13_2 = SHX13_2.Width
          SHX13_2 = SHX13_2 / 2
          SHX12_2 = SHX12_2 + SHX13_2
          SHX13_2 = SHX0_1.Grid
          SHX13_2 = SHX13_2.Width
          SHX13_2 = SHX13_2 - 40
          SHX12_2 = SHX12_2 / SHX13_2
          SHX13_2 = 2
          SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
          SHX0_2 = SHX11_2
          if SHX0_2 > 1.0 then
            SHX0_2 = 1.0
          end
        end
      end
      SHX11_2 = RageUI
      SHX12_2 = RageUI
      SHX12_2 = SHX12_2.ItemOffset
      SHX13_2 = SHX0_1.Background
      SHX13_2 = SHX13_2.Height
      SHX12_2 = SHX12_2 + SHX13_2
      SHX13_2 = SHX0_1.Background
      SHX13_2 = SHX13_2.Y
      SHX12_2 = SHX12_2 + SHX13_2
      SHX11_2.ItemOffset = SHX12_2
      if SHX6_2 and SHX7_2 then
        SHX11_2 = RageUI
        SHX11_2 = SHX11_2.Settings
        SHX11_2 = SHX11_2.Audio
        SHX12_2 = RageUI
        SHX12_2 = SHX12_2.PlaySound
        SHX13_2 = SHX11_2.Use
        SHX13_2 = SHX11_2[SHX13_2]
        SHX13_2 = SHX13_2.Slider
        SHX13_2 = SHX13_2.audioName
        SHX14_2 = SHX11_2.Use
        SHX14_2 = SHX11_2[SHX14_2]
        SHX14_2 = SHX14_2.Slider
        SHX14_2 = SHX14_2.audioRef
        SHX15_2 = true
        SHX12_2(SHX13_2, SHX14_2, SHX15_2)
      end
      SHX11_2 = SHX3_2
      SHX12_2 = SHX6_2
      SHX13_2 = SHX7_2
      SHX14_2 = SHX0_2
      SHX11_2(SHX12_2, SHX13_2, SHX14_2)
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_429:: outside nested blocks until all 'goto SHX_LABEL_429' can see it
  ::SHX_LABEL_429::
end
SHX1_1.GridPanelHorizontal = SHX2_1
