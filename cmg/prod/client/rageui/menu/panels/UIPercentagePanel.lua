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
SHX1_1.Height = 76
SHX0_1.Background = SHX1_1
SHX1_1 = {}
SHX1_1.X = 9
SHX1_1.Y = 50
SHX1_1.Width = 413
SHX1_1.Height = 10
SHX0_1.Bar = SHX1_1
SHX1_1 = {}
SHX2_1 = {}
SHX2_1.X = 25
SHX2_1.Y = 15
SHX2_1.Scale = 0.35
SHX1_1.Left = SHX2_1
SHX2_1 = {}
SHX2_1.X = 215.5
SHX2_1.Y = 15
SHX2_1.Scale = 0.35
SHX1_1.Middle = SHX2_1
SHX2_1 = {}
SHX2_1.X = 398
SHX2_1.Y = 15
SHX2_1.Scale = 0.35
SHX1_1.Right = SHX2_1
SHX0_1.Text = SHX1_1
SHX1_1 = RageUI
function SHX2_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  SHX6_2 = RageUI
  SHX6_2 = SHX6_2.CurrentMenu
  if nil ~= SHX6_2 then
    SHX7_2 = SHX6_2
    SHX7_2 = SHX7_2()
    if SHX7_2 then
      if nil ~= SHX5_2 then
        SHX7_2 = SHX6_2.Index
        if SHX7_2 ~= SHX5_2 then
          goto SHX_LABEL_357
        end
      end
      SHX7_2 = RageUI
      SHX7_2 = SHX7_2.IsMouseInBounds
      SHX8_2 = SHX6_2.X
      SHX9_2 = SHX0_1.Bar
      SHX9_2 = SHX9_2.X
      SHX8_2 = SHX8_2 + SHX9_2
      SHX9_2 = SHX6_2.SafeZoneSize
      SHX9_2 = SHX9_2.X
      SHX8_2 = SHX8_2 + SHX9_2
      SHX9_2 = SHX6_2.Y
      SHX10_2 = SHX0_1.Bar
      SHX10_2 = SHX10_2.Y
      SHX9_2 = SHX9_2 + SHX10_2
      SHX10_2 = SHX6_2.SafeZoneSize
      SHX10_2 = SHX10_2.Y
      SHX9_2 = SHX9_2 + SHX10_2
      SHX10_2 = SHX6_2.SubtitleHeight
      SHX9_2 = SHX9_2 + SHX10_2
      SHX10_2 = RageUI
      SHX10_2 = SHX10_2.ItemOffset
      SHX9_2 = SHX9_2 + SHX10_2
      SHX9_2 = SHX9_2 - 4
      SHX10_2 = SHX0_1.Bar
      SHX10_2 = SHX10_2.Width
      SHX11_2 = SHX6_2.WidthOffset
      SHX10_2 = SHX10_2 + SHX11_2
      SHX11_2 = SHX0_1.Bar
      SHX11_2 = SHX11_2.Height
      SHX11_2 = SHX11_2 + 8
      SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
      SHX8_2 = false
      SHX9_2 = SHX0_1.Bar
      SHX9_2 = SHX9_2.Width
      if SHX0_2 < 0.0 then
        SHX0_2 = 0.0
      elseif SHX0_2 > 1.0 then
        SHX0_2 = 1.0
      end
      SHX9_2 = SHX9_2 * SHX0_2
      SHX10_2 = RenderSprite
      SHX11_2 = SHX0_1.Background
      SHX11_2 = SHX11_2.Dictionary
      SHX12_2 = SHX0_1.Background
      SHX12_2 = SHX12_2.Texture
      SHX13_2 = SHX6_2.X
      SHX14_2 = SHX6_2.Y
      SHX15_2 = SHX0_1.Background
      SHX15_2 = SHX15_2.Y
      SHX14_2 = SHX14_2 + SHX15_2
      SHX15_2 = SHX6_2.SubtitleHeight
      SHX14_2 = SHX14_2 + SHX15_2
      SHX15_2 = RageUI
      SHX15_2 = SHX15_2.ItemOffset
      SHX14_2 = SHX14_2 + SHX15_2
      SHX15_2 = SHX0_1.Background
      SHX15_2 = SHX15_2.Width
      SHX16_2 = SHX6_2.WidthOffset
      SHX15_2 = SHX15_2 + SHX16_2
      SHX16_2 = SHX0_1.Background
      SHX16_2 = SHX16_2.Height
      SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
      SHX10_2 = RenderRectangle
      SHX11_2 = SHX6_2.X
      SHX12_2 = SHX0_1.Bar
      SHX12_2 = SHX12_2.X
      SHX11_2 = SHX11_2 + SHX12_2
      SHX12_2 = SHX6_2.WidthOffset
      SHX12_2 = SHX12_2 / 2
      SHX11_2 = SHX11_2 + SHX12_2
      SHX12_2 = SHX6_2.Y
      SHX13_2 = SHX0_1.Bar
      SHX13_2 = SHX13_2.Y
      SHX12_2 = SHX12_2 + SHX13_2
      SHX13_2 = SHX6_2.SubtitleHeight
      SHX12_2 = SHX12_2 + SHX13_2
      SHX13_2 = RageUI
      SHX13_2 = SHX13_2.ItemOffset
      SHX12_2 = SHX12_2 + SHX13_2
      SHX13_2 = SHX0_1.Bar
      SHX13_2 = SHX13_2.Width
      SHX14_2 = SHX0_1.Bar
      SHX14_2 = SHX14_2.Height
      SHX15_2 = 87
      SHX16_2 = 87
      SHX17_2 = 87
      SHX18_2 = 255
      SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
      SHX10_2 = RenderRectangle
      SHX11_2 = SHX6_2.X
      SHX12_2 = SHX0_1.Bar
      SHX12_2 = SHX12_2.X
      SHX11_2 = SHX11_2 + SHX12_2
      SHX12_2 = SHX6_2.WidthOffset
      SHX12_2 = SHX12_2 / 2
      SHX11_2 = SHX11_2 + SHX12_2
      SHX12_2 = SHX6_2.Y
      SHX13_2 = SHX0_1.Bar
      SHX13_2 = SHX13_2.Y
      SHX12_2 = SHX12_2 + SHX13_2
      SHX13_2 = SHX6_2.SubtitleHeight
      SHX12_2 = SHX12_2 + SHX13_2
      SHX13_2 = RageUI
      SHX13_2 = SHX13_2.ItemOffset
      SHX12_2 = SHX12_2 + SHX13_2
      SHX13_2 = SHX9_2
      SHX14_2 = SHX0_1.Bar
      SHX14_2 = SHX14_2.Height
      SHX15_2 = 245
      SHX16_2 = 245
      SHX17_2 = 245
      SHX18_2 = 255
      SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
      SHX10_2 = RenderText
      SHX11_2 = SHX1_2 or SHX11_2
      if not SHX1_2 then
        SHX11_2 = "Opacity"
      end
      SHX12_2 = SHX6_2.X
      SHX13_2 = SHX0_1.Text
      SHX13_2 = SHX13_2.Middle
      SHX13_2 = SHX13_2.X
      SHX12_2 = SHX12_2 + SHX13_2
      SHX13_2 = SHX6_2.WidthOffset
      SHX13_2 = SHX13_2 / 2
      SHX12_2 = SHX12_2 + SHX13_2
      SHX13_2 = SHX6_2.Y
      SHX14_2 = SHX0_1.Text
      SHX14_2 = SHX14_2.Middle
      SHX14_2 = SHX14_2.Y
      SHX13_2 = SHX13_2 + SHX14_2
      SHX14_2 = SHX6_2.SubtitleHeight
      SHX13_2 = SHX13_2 + SHX14_2
      SHX14_2 = RageUI
      SHX14_2 = SHX14_2.ItemOffset
      SHX13_2 = SHX13_2 + SHX14_2
      SHX14_2 = 0
      SHX15_2 = SHX0_1.Text
      SHX15_2 = SHX15_2.Middle
      SHX15_2 = SHX15_2.Scale
      SHX16_2 = 245
      SHX17_2 = 245
      SHX18_2 = 245
      SHX19_2 = 255
      SHX20_2 = 1
      SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
      SHX10_2 = RenderText
      SHX11_2 = SHX2_2 or SHX11_2
      if not SHX2_2 then
        SHX11_2 = "0%"
      end
      SHX12_2 = SHX6_2.X
      SHX13_2 = SHX0_1.Text
      SHX13_2 = SHX13_2.Left
      SHX13_2 = SHX13_2.X
      SHX12_2 = SHX12_2 + SHX13_2
      SHX13_2 = SHX6_2.WidthOffset
      SHX13_2 = SHX13_2 / 2
      SHX12_2 = SHX12_2 + SHX13_2
      SHX13_2 = SHX6_2.Y
      SHX14_2 = SHX0_1.Text
      SHX14_2 = SHX14_2.Left
      SHX14_2 = SHX14_2.Y
      SHX13_2 = SHX13_2 + SHX14_2
      SHX14_2 = SHX6_2.SubtitleHeight
      SHX13_2 = SHX13_2 + SHX14_2
      SHX14_2 = RageUI
      SHX14_2 = SHX14_2.ItemOffset
      SHX13_2 = SHX13_2 + SHX14_2
      SHX14_2 = 0
      SHX15_2 = SHX0_1.Text
      SHX15_2 = SHX15_2.Left
      SHX15_2 = SHX15_2.Scale
      SHX16_2 = 245
      SHX17_2 = 245
      SHX18_2 = 245
      SHX19_2 = 255
      SHX20_2 = 1
      SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
      SHX10_2 = RenderText
      SHX11_2 = SHX3_2 or SHX11_2
      if not SHX3_2 then
        SHX11_2 = "100%"
      end
      SHX12_2 = SHX6_2.X
      SHX13_2 = SHX0_1.Text
      SHX13_2 = SHX13_2.Right
      SHX13_2 = SHX13_2.X
      SHX12_2 = SHX12_2 + SHX13_2
      SHX13_2 = SHX6_2.WidthOffset
      SHX13_2 = SHX13_2 / 2
      SHX12_2 = SHX12_2 + SHX13_2
      SHX13_2 = SHX6_2.Y
      SHX14_2 = SHX0_1.Text
      SHX14_2 = SHX14_2.Right
      SHX14_2 = SHX14_2.Y
      SHX13_2 = SHX13_2 + SHX14_2
      SHX14_2 = SHX6_2.SubtitleHeight
      SHX13_2 = SHX13_2 + SHX14_2
      SHX14_2 = RageUI
      SHX14_2 = SHX14_2.ItemOffset
      SHX13_2 = SHX13_2 + SHX14_2
      SHX14_2 = 0
      SHX15_2 = SHX0_1.Text
      SHX15_2 = SHX15_2.Right
      SHX15_2 = SHX15_2.Scale
      SHX16_2 = 245
      SHX17_2 = 245
      SHX18_2 = 245
      SHX19_2 = 255
      SHX20_2 = 1
      SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
      if SHX7_2 then
        SHX10_2 = IsDisabledControlPressed
        SHX11_2 = 0
        SHX12_2 = 24
        SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
        if SHX10_2 then
          SHX8_2 = true
          SHX10_2 = RageUI
          SHX10_2 = SHX10_2.round
          SHX11_2 = GetControlNormal
          SHX12_2 = 2
          SHX13_2 = 239
          SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
          SHX11_2 = SHX11_2 * 1920
          SHX10_2 = SHX10_2(SHX11_2)
          SHX11_2 = SHX6_2.SafeZoneSize
          SHX11_2 = SHX11_2.X
          SHX10_2 = SHX10_2 - SHX11_2
          SHX11_2 = SHX6_2.X
          SHX12_2 = SHX0_1.Bar
          SHX12_2 = SHX12_2.X
          SHX11_2 = SHX11_2 + SHX12_2
          SHX12_2 = SHX6_2.WidthOffset
          SHX12_2 = SHX12_2 / 2
          SHX11_2 = SHX11_2 + SHX12_2
          SHX9_2 = SHX10_2 - SHX11_2
          if SHX9_2 < 0 then
            SHX9_2 = 0
          else
            SHX10_2 = SHX0_1.Bar
            SHX10_2 = SHX10_2.Width
            if SHX9_2 > SHX10_2 then
              SHX10_2 = SHX0_1.Bar
              SHX9_2 = SHX10_2.Width
            end
          end
          SHX10_2 = RageUI
          SHX10_2 = SHX10_2.round
          SHX11_2 = SHX0_1.Bar
          SHX11_2 = SHX11_2.Width
          SHX11_2 = SHX9_2 / SHX11_2
          SHX12_2 = 2
          SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
          SHX0_2 = SHX10_2
        end
      end
      SHX10_2 = RageUI
      SHX11_2 = RageUI
      SHX11_2 = SHX11_2.ItemOffset
      SHX12_2 = SHX0_1.Background
      SHX12_2 = SHX12_2.Height
      SHX11_2 = SHX11_2 + SHX12_2
      SHX12_2 = SHX0_1.Background
      SHX12_2 = SHX12_2.Y
      SHX11_2 = SHX11_2 + SHX12_2
      SHX10_2.ItemOffset = SHX11_2
      if SHX7_2 and SHX8_2 then
        SHX10_2 = RageUI
        SHX10_2 = SHX10_2.Settings
        SHX10_2 = SHX10_2.Audio
        SHX11_2 = RageUI
        SHX11_2 = SHX11_2.PlaySound
        SHX12_2 = SHX10_2.Use
        SHX12_2 = SHX10_2[SHX12_2]
        SHX12_2 = SHX12_2.Slider
        SHX12_2 = SHX12_2.audioName
        SHX13_2 = SHX10_2.Use
        SHX13_2 = SHX10_2[SHX13_2]
        SHX13_2 = SHX13_2.Slider
        SHX13_2 = SHX13_2.audioRef
        SHX14_2 = true
        SHX11_2(SHX12_2, SHX13_2, SHX14_2)
      end
      SHX10_2 = SHX4_2
      SHX11_2 = SHX7_2
      SHX12_2 = SHX8_2
      SHX13_2 = SHX0_2
      SHX10_2(SHX11_2, SHX12_2, SHX13_2)
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_357:: outside nested blocks until all 'goto SHX_LABEL_357' can see it
  ::SHX_LABEL_357::
end
SHX1_1.PercentagePanel = SHX2_1
