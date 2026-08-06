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
SHX1_1.Height = 42
SHX0_1.Background = SHX1_1
SHX1_1 = {}
SHX2_1 = {}
SHX2_1.X = 8
SHX2_1.Y = 10
SHX2_1.Scale = 0.35
SHX1_1.Left = SHX2_1
SHX2_1 = {}
SHX2_1.X = 8
SHX2_1.Y = 10
SHX2_1.Scale = 0.35
SHX1_1.Right = SHX2_1
SHX0_1.Text = SHX1_1
SHX1_1 = RageUI
function SHX2_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX3_2 = RageUI
  SHX3_2 = SHX3_2.CurrentMenu
  if nil ~= SHX3_2 then
    SHX4_2 = MeasureStringWidth
    SHX5_2 = SHX0_2
    SHX4_2 = SHX4_2(SHX5_2)
    SHX5_2 = SHX3_2
    SHX5_2 = SHX5_2()
    if SHX5_2 then
      if nil ~= SHX2_2 then
        SHX5_2 = SHX3_2.Index
        if SHX5_2 ~= SHX2_2 then
          goto SHX_LABEL_137
        end
      end
      SHX5_2 = RenderRectangle
      SHX6_2 = SHX3_2.X
      SHX7_2 = SHX3_2.Y
      SHX8_2 = SHX0_1.Background
      SHX8_2 = SHX8_2.Y
      SHX7_2 = SHX7_2 + SHX8_2
      SHX8_2 = SHX3_2.SubtitleHeight
      SHX7_2 = SHX7_2 + SHX8_2
      SHX8_2 = RageUI
      SHX8_2 = SHX8_2.ItemOffset
      SHX7_2 = SHX7_2 + SHX8_2
      SHX8_2 = RageUI
      SHX8_2 = SHX8_2.StatisticPanelCount
      SHX8_2 = SHX8_2 * 42
      SHX7_2 = SHX7_2 + SHX8_2
      SHX8_2 = SHX0_1.Background
      SHX8_2 = SHX8_2.Width
      SHX9_2 = SHX3_2.WidthOffset
      SHX8_2 = SHX8_2 + SHX9_2
      SHX9_2 = SHX0_1.Background
      SHX9_2 = SHX9_2.Height
      SHX10_2 = 0
      SHX11_2 = 0
      SHX12_2 = 0
      SHX13_2 = 170
      SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
      SHX5_2 = RenderText
      SHX6_2 = SHX0_2 or SHX6_2
      if not SHX0_2 then
        SHX6_2 = ""
      end
      SHX7_2 = SHX3_2.X
      SHX8_2 = SHX0_1.Text
      SHX8_2 = SHX8_2.Left
      SHX8_2 = SHX8_2.X
      SHX7_2 = SHX7_2 + SHX8_2
      SHX8_2 = RageUI
      SHX8_2 = SHX8_2.StatisticPanelCount
      SHX8_2 = SHX8_2 * 40
      SHX9_2 = SHX3_2.Y
      SHX8_2 = SHX8_2 + SHX9_2
      SHX9_2 = SHX0_1.Text
      SHX9_2 = SHX9_2.Left
      SHX9_2 = SHX9_2.Y
      SHX8_2 = SHX8_2 + SHX9_2
      SHX9_2 = SHX3_2.SubtitleHeight
      SHX8_2 = SHX8_2 + SHX9_2
      SHX9_2 = RageUI
      SHX9_2 = SHX9_2.ItemOffset
      SHX8_2 = SHX8_2 + SHX9_2
      SHX9_2 = 0
      SHX10_2 = SHX0_1.Text
      SHX10_2 = SHX10_2.Left
      SHX10_2 = SHX10_2.Scale
      SHX11_2 = 245
      SHX12_2 = 245
      SHX13_2 = 245
      SHX14_2 = 255
      SHX15_2 = 0
      SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
      SHX5_2 = RenderText
      SHX6_2 = SHX1_2 or SHX6_2
      if not SHX1_2 then
        SHX6_2 = ""
      end
      SHX7_2 = SHX3_2.X
      SHX8_2 = SHX0_1.Background
      SHX8_2 = SHX8_2.Width
      SHX7_2 = SHX7_2 + SHX8_2
      SHX8_2 = SHX3_2.WidthOffset
      SHX7_2 = SHX7_2 + SHX8_2
      SHX7_2 = SHX7_2 - SHX4_2
      SHX8_2 = RageUI
      SHX8_2 = SHX8_2.StatisticPanelCount
      SHX8_2 = SHX8_2 * 40
      SHX9_2 = SHX3_2.Y
      SHX8_2 = SHX8_2 + SHX9_2
      SHX9_2 = SHX0_1.Text
      SHX9_2 = SHX9_2.Left
      SHX9_2 = SHX9_2.Y
      SHX8_2 = SHX8_2 + SHX9_2
      SHX9_2 = SHX3_2.SubtitleHeight
      SHX8_2 = SHX8_2 + SHX9_2
      SHX9_2 = RageUI
      SHX9_2 = SHX9_2.ItemOffset
      SHX8_2 = SHX8_2 + SHX9_2
      SHX9_2 = 0
      SHX10_2 = SHX0_1.Text
      SHX10_2 = SHX10_2.Left
      SHX10_2 = SHX10_2.Scale
      SHX11_2 = 245
      SHX12_2 = 245
      SHX13_2 = 245
      SHX14_2 = 255
      SHX15_2 = 2
      SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
      SHX5_2 = RageUI
      SHX6_2 = RageUI
      SHX6_2 = SHX6_2.StatisticPanelCount
      SHX6_2 = SHX6_2 + 1
      SHX5_2.StatisticPanelCount = SHX6_2
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_137:: outside nested blocks until all 'goto SHX_LABEL_137' can see it
  ::SHX_LABEL_137::
end
SHX1_1.BoutonPanel = SHX2_1
