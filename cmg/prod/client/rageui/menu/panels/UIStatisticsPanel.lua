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
SHX2_1.X = -40
SHX2_1.Y = 15
SHX2_1.Scale = 0.35
SHX1_1.Left = SHX2_1
SHX0_1.Text = SHX1_1
SHX1_1 = {}
SHX1_1.Right = 8
SHX1_1.Y = 27
SHX1_1.Width = 200
SHX1_1.Height = 10
SHX1_1.OffsetRatio = 0.5
SHX0_1.Bar = SHX1_1
SHX1_1 = {}
SHX2_1 = {}
SHX2_1.X = 200
SHX2_1.Y = 27
SHX2_1.Width = 2
SHX2_1.Height = 10
SHX1_1[1] = SHX2_1
SHX2_1 = {}
SHX2_1.X = 200
SHX2_1.Y = 27
SHX2_1.Width = 2
SHX2_1.Height = 10
SHX1_1[2] = SHX2_1
SHX2_1 = {}
SHX2_1.X = 200
SHX2_1.Y = 27
SHX2_1.Width = 2
SHX2_1.Height = 10
SHX1_1[3] = SHX2_1
SHX2_1 = {}
SHX2_1.X = 200
SHX2_1.Y = 27
SHX2_1.Width = 2
SHX2_1.Height = 10
SHX1_1[4] = SHX2_1
SHX2_1 = {}
SHX2_1.X = 200
SHX2_1.Y = 27
SHX2_1.Width = 2
SHX2_1.Height = 10
SHX1_1[5] = SHX2_1
SHX0_1.Divider = SHX1_1
SHX1_1 = RageUI
function SHX2_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX3_2 = RageUI
  SHX3_2 = SHX3_2.CurrentMenu
  if nil ~= SHX3_2 then
    SHX4_2 = SHX3_2
    SHX4_2 = SHX4_2()
    if SHX4_2 then
      if nil ~= SHX2_2 then
        SHX4_2 = SHX3_2.Index
        if SHX4_2 ~= SHX2_2 then
          goto SHX_LABEL_262
        end
      end
      SHX4_2 = SHX0_1.Bar
      SHX4_2 = SHX4_2.Width
      SHX5_2 = SHX3_2.WidthOffset
      SHX6_2 = SHX0_1.Bar
      SHX6_2 = SHX6_2.OffsetRatio
      SHX5_2 = SHX5_2 * SHX6_2
      SHX4_2 = SHX4_2 + SHX5_2
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
      SHX6_2 = SHX1_2 or SHX6_2
      if not SHX1_2 then
        SHX6_2 = ""
      end
      SHX7_2 = SHX3_2.X
      SHX7_2 = SHX7_2 + 8.0
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
      SHX5_2 = RenderRectangle
      SHX6_2 = SHX3_2.X
      SHX7_2 = RageUI
      SHX7_2 = SHX7_2.Settings
      SHX7_2 = SHX7_2.Items
      SHX7_2 = SHX7_2.Title
      SHX7_2 = SHX7_2.Background
      SHX7_2 = SHX7_2.Width
      SHX6_2 = SHX6_2 + SHX7_2
      SHX6_2 = SHX6_2 - SHX4_2
      SHX7_2 = SHX0_1.Bar
      SHX7_2 = SHX7_2.Right
      SHX6_2 = SHX6_2 - SHX7_2
      SHX7_2 = SHX3_2.WidthOffset
      SHX6_2 = SHX6_2 + SHX7_2
      SHX7_2 = RageUI
      SHX7_2 = SHX7_2.StatisticPanelCount
      SHX7_2 = SHX7_2 * 40
      SHX8_2 = SHX3_2.Y
      SHX7_2 = SHX7_2 + SHX8_2
      SHX8_2 = SHX0_1.Bar
      SHX8_2 = SHX8_2.Y
      SHX7_2 = SHX7_2 + SHX8_2
      SHX8_2 = SHX3_2.SubtitleHeight
      SHX7_2 = SHX7_2 + SHX8_2
      SHX8_2 = RageUI
      SHX8_2 = SHX8_2.ItemOffset
      SHX7_2 = SHX7_2 + SHX8_2
      SHX8_2 = SHX4_2
      SHX9_2 = SHX0_1.Bar
      SHX9_2 = SHX9_2.Height
      SHX10_2 = 87
      SHX11_2 = 87
      SHX12_2 = 87
      SHX13_2 = 255
      SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
      SHX5_2 = RenderRectangle
      SHX6_2 = SHX3_2.X
      SHX7_2 = RageUI
      SHX7_2 = SHX7_2.Settings
      SHX7_2 = SHX7_2.Items
      SHX7_2 = SHX7_2.Title
      SHX7_2 = SHX7_2.Background
      SHX7_2 = SHX7_2.Width
      SHX6_2 = SHX6_2 + SHX7_2
      SHX6_2 = SHX6_2 - SHX4_2
      SHX7_2 = SHX0_1.Bar
      SHX7_2 = SHX7_2.Right
      SHX6_2 = SHX6_2 - SHX7_2
      SHX7_2 = SHX3_2.WidthOffset
      SHX6_2 = SHX6_2 + SHX7_2
      SHX7_2 = RageUI
      SHX7_2 = SHX7_2.StatisticPanelCount
      SHX7_2 = SHX7_2 * 40
      SHX8_2 = SHX3_2.Y
      SHX7_2 = SHX7_2 + SHX8_2
      SHX8_2 = SHX0_1.Bar
      SHX8_2 = SHX8_2.Y
      SHX7_2 = SHX7_2 + SHX8_2
      SHX8_2 = SHX3_2.SubtitleHeight
      SHX7_2 = SHX7_2 + SHX8_2
      SHX8_2 = RageUI
      SHX8_2 = SHX8_2.ItemOffset
      SHX7_2 = SHX7_2 + SHX8_2
      SHX8_2 = SHX0_2 * SHX4_2
      SHX9_2 = SHX0_1.Bar
      SHX9_2 = SHX9_2.Height
      SHX10_2 = 255
      SHX11_2 = 255
      SHX12_2 = 255
      SHX13_2 = 255
      SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
      SHX5_2 = 1
      SHX6_2 = SHX0_1.Divider
      SHX6_2 = #SHX6_2
      SHX7_2 = 1
      for SHX8_2 = SHX5_2, SHX6_2, SHX7_2 do
        SHX9_2 = RenderRectangle
        SHX10_2 = SHX3_2.X
        SHX11_2 = RageUI
        SHX11_2 = SHX11_2.Settings
        SHX11_2 = SHX11_2.Items
        SHX11_2 = SHX11_2.Title
        SHX11_2 = SHX11_2.Background
        SHX11_2 = SHX11_2.Width
        SHX10_2 = SHX10_2 + SHX11_2
        SHX10_2 = SHX10_2 - SHX4_2
        SHX11_2 = SHX0_1.Bar
        SHX11_2 = SHX11_2.Right
        SHX10_2 = SHX10_2 - SHX11_2
        SHX11_2 = SHX0_1.Divider
        SHX11_2 = #SHX11_2
        SHX12_2 = SHX0_1.Divider
        SHX12_2 = SHX12_2[SHX8_2]
        SHX12_2 = SHX12_2.Width
        SHX11_2 = SHX11_2 / SHX12_2
        SHX11_2 = SHX4_2 - SHX11_2
        SHX12_2 = SHX0_1.Divider
        SHX12_2 = #SHX12_2
        SHX12_2 = SHX12_2 + 1
        SHX11_2 = SHX11_2 / SHX12_2
        SHX11_2 = SHX8_2 * SHX11_2
        SHX10_2 = SHX10_2 + SHX11_2
        SHX11_2 = SHX3_2.WidthOffset
        SHX10_2 = SHX10_2 + SHX11_2
        SHX11_2 = RageUI
        SHX11_2 = SHX11_2.StatisticPanelCount
        SHX11_2 = SHX11_2 * 40
        SHX12_2 = SHX3_2.Y
        SHX11_2 = SHX11_2 + SHX12_2
        SHX12_2 = SHX0_1.Divider
        SHX12_2 = SHX12_2[SHX8_2]
        SHX12_2 = SHX12_2.Y
        SHX11_2 = SHX11_2 + SHX12_2
        SHX12_2 = SHX3_2.SubtitleHeight
        SHX11_2 = SHX11_2 + SHX12_2
        SHX12_2 = RageUI
        SHX12_2 = SHX12_2.ItemOffset
        SHX11_2 = SHX11_2 + SHX12_2
        SHX12_2 = SHX0_1.Divider
        SHX12_2 = SHX12_2[SHX8_2]
        SHX12_2 = SHX12_2.Width
        SHX13_2 = SHX0_1.Divider
        SHX13_2 = SHX13_2[SHX8_2]
        SHX13_2 = SHX13_2.Height
        SHX14_2 = 0
        SHX15_2 = 0
        SHX16_2 = 0
        SHX17_2 = 255
        SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
      end
      SHX5_2 = RageUI
      SHX6_2 = RageUI
      SHX6_2 = SHX6_2.StatisticPanelCount
      SHX6_2 = SHX6_2 + 1
      SHX5_2.StatisticPanelCount = SHX6_2
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_262:: outside nested blocks until all 'goto SHX_LABEL_262' can see it
  ::SHX_LABEL_262::
end
SHX1_1.StatisticPanel = SHX2_1
SHX1_1 = RageUI
function SHX2_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2
  SHX7_2 = RageUI
  SHX7_2 = SHX7_2.CurrentMenu
  if nil ~= SHX7_2 then
    SHX8_2 = SHX7_2
    SHX8_2 = SHX8_2()
    if SHX8_2 then
      if nil ~= SHX6_2 then
        SHX8_2 = SHX7_2.Index
        if SHX8_2 ~= SHX6_2 then
          goto SHX_LABEL_403
        end
      end
      if not SHX2_2 then
        SHX8_2 = {}
        SHX9_2 = 255
        SHX10_2 = 255
        SHX11_2 = 255
        SHX12_2 = 255
        SHX8_2[1] = SHX9_2
        SHX8_2[2] = SHX10_2
        SHX8_2[3] = SHX11_2
        SHX8_2[4] = SHX12_2
        SHX2_2 = SHX8_2
      end
      SHX8_2 = SHX0_1.Bar
      SHX8_2 = SHX8_2.Width
      SHX9_2 = SHX7_2.WidthOffset
      SHX10_2 = SHX0_1.Bar
      SHX10_2 = SHX10_2.OffsetRatio
      SHX9_2 = SHX9_2 * SHX10_2
      SHX8_2 = SHX8_2 + SHX9_2
      SHX9_2 = RenderRectangle
      SHX10_2 = SHX7_2.X
      SHX11_2 = SHX7_2.Y
      SHX12_2 = SHX0_1.Background
      SHX12_2 = SHX12_2.Y
      SHX11_2 = SHX11_2 + SHX12_2
      SHX12_2 = SHX7_2.SubtitleHeight
      SHX11_2 = SHX11_2 + SHX12_2
      SHX12_2 = RageUI
      SHX12_2 = SHX12_2.ItemOffset
      SHX11_2 = SHX11_2 + SHX12_2
      SHX12_2 = RageUI
      SHX12_2 = SHX12_2.StatisticPanelCount
      SHX12_2 = SHX12_2 * 42
      SHX11_2 = SHX11_2 + SHX12_2
      SHX12_2 = SHX0_1.Background
      SHX12_2 = SHX12_2.Width
      SHX13_2 = SHX7_2.WidthOffset
      SHX12_2 = SHX12_2 + SHX13_2
      SHX13_2 = SHX0_1.Background
      SHX13_2 = SHX13_2.Height
      SHX14_2 = 0
      SHX15_2 = 0
      SHX16_2 = 0
      SHX17_2 = 170
      SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
      SHX9_2 = RenderText
      SHX10_2 = SHX0_2 or SHX10_2
      if not SHX0_2 then
        SHX10_2 = ""
      end
      SHX11_2 = SHX7_2.X
      SHX11_2 = SHX11_2 + 8.0
      SHX12_2 = RageUI
      SHX12_2 = SHX12_2.StatisticPanelCount
      SHX12_2 = SHX12_2 * 40
      SHX13_2 = SHX7_2.Y
      SHX12_2 = SHX12_2 + SHX13_2
      SHX13_2 = SHX0_1.Text
      SHX13_2 = SHX13_2.Left
      SHX13_2 = SHX13_2.Y
      SHX12_2 = SHX12_2 + SHX13_2
      SHX13_2 = SHX7_2.SubtitleHeight
      SHX12_2 = SHX12_2 + SHX13_2
      SHX13_2 = RageUI
      SHX13_2 = SHX13_2.ItemOffset
      SHX12_2 = SHX12_2 + SHX13_2
      SHX13_2 = 0
      SHX14_2 = SHX0_1.Text
      SHX14_2 = SHX14_2.Left
      SHX14_2 = SHX14_2.Scale
      SHX15_2 = 245
      SHX16_2 = 245
      SHX17_2 = 245
      SHX18_2 = 255
      SHX19_2 = 0
      SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
      SHX9_2 = RenderRectangle
      SHX10_2 = SHX7_2.X
      SHX11_2 = RageUI
      SHX11_2 = SHX11_2.Settings
      SHX11_2 = SHX11_2.Items
      SHX11_2 = SHX11_2.Title
      SHX11_2 = SHX11_2.Background
      SHX11_2 = SHX11_2.Width
      SHX10_2 = SHX10_2 + SHX11_2
      SHX10_2 = SHX10_2 - SHX8_2
      SHX11_2 = SHX0_1.Bar
      SHX11_2 = SHX11_2.Right
      SHX10_2 = SHX10_2 - SHX11_2
      SHX11_2 = SHX7_2.WidthOffset
      SHX10_2 = SHX10_2 + SHX11_2
      SHX11_2 = RageUI
      SHX11_2 = SHX11_2.StatisticPanelCount
      SHX11_2 = SHX11_2 * 40
      SHX12_2 = SHX7_2.Y
      SHX11_2 = SHX11_2 + SHX12_2
      SHX12_2 = SHX0_1.Bar
      SHX12_2 = SHX12_2.Y
      SHX11_2 = SHX11_2 + SHX12_2
      SHX12_2 = SHX7_2.SubtitleHeight
      SHX11_2 = SHX11_2 + SHX12_2
      SHX12_2 = RageUI
      SHX12_2 = SHX12_2.ItemOffset
      SHX11_2 = SHX11_2 + SHX12_2
      SHX12_2 = SHX8_2
      SHX13_2 = SHX0_1.Bar
      SHX13_2 = SHX13_2.Height
      SHX14_2 = 87
      SHX15_2 = 87
      SHX16_2 = 87
      SHX17_2 = 255
      SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
      SHX9_2 = RenderRectangle
      SHX10_2 = SHX7_2.X
      SHX11_2 = RageUI
      SHX11_2 = SHX11_2.Settings
      SHX11_2 = SHX11_2.Items
      SHX11_2 = SHX11_2.Title
      SHX11_2 = SHX11_2.Background
      SHX11_2 = SHX11_2.Width
      SHX10_2 = SHX10_2 + SHX11_2
      SHX10_2 = SHX10_2 - SHX8_2
      SHX11_2 = SHX0_1.Bar
      SHX11_2 = SHX11_2.Right
      SHX10_2 = SHX10_2 - SHX11_2
      SHX11_2 = SHX7_2.WidthOffset
      SHX10_2 = SHX10_2 + SHX11_2
      SHX11_2 = RageUI
      SHX11_2 = SHX11_2.StatisticPanelCount
      SHX11_2 = SHX11_2 * 40
      SHX12_2 = SHX7_2.Y
      SHX11_2 = SHX11_2 + SHX12_2
      SHX12_2 = SHX0_1.Bar
      SHX12_2 = SHX12_2.Y
      SHX11_2 = SHX11_2 + SHX12_2
      SHX12_2 = SHX7_2.SubtitleHeight
      SHX11_2 = SHX11_2 + SHX12_2
      SHX12_2 = RageUI
      SHX12_2 = SHX12_2.ItemOffset
      SHX11_2 = SHX11_2 + SHX12_2
      SHX12_2 = SHX1_2 * SHX8_2
      SHX13_2 = SHX0_1.Bar
      SHX13_2 = SHX13_2.Height
      SHX14_2 = SHX2_2[1]
      SHX15_2 = SHX2_2[2]
      SHX16_2 = SHX2_2[3]
      SHX17_2 = SHX2_2[4]
      SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
      if not SHX4_2 then
        SHX9_2 = {}
        SHX10_2 = 0
        SHX11_2 = 153
        SHX12_2 = 204
        SHX13_2 = 255
        SHX9_2[1] = SHX10_2
        SHX9_2[2] = SHX11_2
        SHX9_2[3] = SHX12_2
        SHX9_2[4] = SHX13_2
        SHX4_2 = SHX9_2
      end
      if not SHX5_2 then
        SHX9_2 = {}
        SHX10_2 = 185
        SHX11_2 = 0
        SHX12_2 = 0
        SHX13_2 = 255
        SHX9_2[1] = SHX10_2
        SHX9_2[2] = SHX11_2
        SHX9_2[3] = SHX12_2
        SHX9_2[4] = SHX13_2
        SHX5_2 = SHX9_2
      end
      if SHX3_2 and SHX3_2 > 0 then
        SHX9_2 = SHX7_2.X
        SHX10_2 = RageUI
        SHX10_2 = SHX10_2.Settings
        SHX10_2 = SHX10_2.Items
        SHX10_2 = SHX10_2.Title
        SHX10_2 = SHX10_2.Background
        SHX10_2 = SHX10_2.Width
        SHX9_2 = SHX9_2 + SHX10_2
        SHX9_2 = SHX9_2 - SHX8_2
        SHX10_2 = SHX0_1.Bar
        SHX10_2 = SHX10_2.Right
        SHX9_2 = SHX9_2 - SHX10_2
        SHX10_2 = SHX7_2.WidthOffset
        SHX9_2 = SHX9_2 + SHX10_2
        SHX10_2 = SHX1_2 * SHX8_2
        SHX9_2 = SHX9_2 + SHX10_2
        SHX10_2 = RenderRectangle
        SHX11_2 = SHX9_2
        SHX12_2 = RageUI
        SHX12_2 = SHX12_2.StatisticPanelCount
        SHX12_2 = SHX12_2 * 40
        SHX13_2 = SHX7_2.Y
        SHX12_2 = SHX12_2 + SHX13_2
        SHX13_2 = SHX0_1.Bar
        SHX13_2 = SHX13_2.Y
        SHX12_2 = SHX12_2 + SHX13_2
        SHX13_2 = SHX7_2.SubtitleHeight
        SHX12_2 = SHX12_2 + SHX13_2
        SHX13_2 = RageUI
        SHX13_2 = SHX13_2.ItemOffset
        SHX12_2 = SHX12_2 + SHX13_2
        SHX13_2 = SHX3_2 * SHX8_2
        SHX14_2 = SHX0_1.Bar
        SHX14_2 = SHX14_2.Height
        SHX15_2 = SHX4_2[1]
        SHX16_2 = SHX4_2[2]
        SHX17_2 = SHX4_2[3]
        SHX18_2 = SHX4_2[4]
        SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
      elseif SHX3_2 and SHX3_2 < 0 then
        SHX9_2 = SHX7_2.X
        SHX10_2 = RageUI
        SHX10_2 = SHX10_2.Settings
        SHX10_2 = SHX10_2.Items
        SHX10_2 = SHX10_2.Title
        SHX10_2 = SHX10_2.Background
        SHX10_2 = SHX10_2.Width
        SHX9_2 = SHX9_2 + SHX10_2
        SHX9_2 = SHX9_2 - SHX8_2
        SHX10_2 = SHX0_1.Bar
        SHX10_2 = SHX10_2.Right
        SHX9_2 = SHX9_2 - SHX10_2
        SHX10_2 = SHX7_2.WidthOffset
        SHX9_2 = SHX9_2 + SHX10_2
        SHX10_2 = SHX1_2 * SHX8_2
        SHX9_2 = SHX9_2 + SHX10_2
        SHX10_2 = RenderRectangle
        SHX11_2 = SHX9_2
        SHX12_2 = RageUI
        SHX12_2 = SHX12_2.StatisticPanelCount
        SHX12_2 = SHX12_2 * 40
        SHX13_2 = SHX7_2.Y
        SHX12_2 = SHX12_2 + SHX13_2
        SHX13_2 = SHX0_1.Bar
        SHX13_2 = SHX13_2.Y
        SHX12_2 = SHX12_2 + SHX13_2
        SHX13_2 = SHX7_2.SubtitleHeight
        SHX12_2 = SHX12_2 + SHX13_2
        SHX13_2 = RageUI
        SHX13_2 = SHX13_2.ItemOffset
        SHX12_2 = SHX12_2 + SHX13_2
        SHX13_2 = SHX3_2 * SHX8_2
        SHX14_2 = SHX0_1.Bar
        SHX14_2 = SHX14_2.Height
        SHX15_2 = SHX5_2[1]
        SHX16_2 = SHX5_2[2]
        SHX17_2 = SHX5_2[3]
        SHX18_2 = SHX5_2[4]
        SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
      end
      SHX9_2 = 1
      SHX10_2 = SHX0_1.Divider
      SHX10_2 = #SHX10_2
      SHX11_2 = 1
      for SHX12_2 = SHX9_2, SHX10_2, SHX11_2 do
        SHX13_2 = RenderRectangle
        SHX14_2 = SHX7_2.X
        SHX15_2 = RageUI
        SHX15_2 = SHX15_2.Settings
        SHX15_2 = SHX15_2.Items
        SHX15_2 = SHX15_2.Title
        SHX15_2 = SHX15_2.Background
        SHX15_2 = SHX15_2.Width
        SHX14_2 = SHX14_2 + SHX15_2
        SHX14_2 = SHX14_2 - SHX8_2
        SHX15_2 = SHX0_1.Bar
        SHX15_2 = SHX15_2.Right
        SHX14_2 = SHX14_2 - SHX15_2
        SHX15_2 = SHX0_1.Divider
        SHX15_2 = #SHX15_2
        SHX16_2 = SHX0_1.Divider
        SHX16_2 = SHX16_2[SHX12_2]
        SHX16_2 = SHX16_2.Width
        SHX15_2 = SHX15_2 / SHX16_2
        SHX15_2 = SHX8_2 - SHX15_2
        SHX16_2 = SHX0_1.Divider
        SHX16_2 = #SHX16_2
        SHX16_2 = SHX16_2 + 1
        SHX15_2 = SHX15_2 / SHX16_2
        SHX15_2 = SHX12_2 * SHX15_2
        SHX14_2 = SHX14_2 + SHX15_2
        SHX15_2 = SHX7_2.WidthOffset
        SHX14_2 = SHX14_2 + SHX15_2
        SHX15_2 = RageUI
        SHX15_2 = SHX15_2.StatisticPanelCount
        SHX15_2 = SHX15_2 * 40
        SHX16_2 = SHX7_2.Y
        SHX15_2 = SHX15_2 + SHX16_2
        SHX16_2 = SHX0_1.Divider
        SHX16_2 = SHX16_2[SHX12_2]
        SHX16_2 = SHX16_2.Y
        SHX15_2 = SHX15_2 + SHX16_2
        SHX16_2 = SHX7_2.SubtitleHeight
        SHX15_2 = SHX15_2 + SHX16_2
        SHX16_2 = RageUI
        SHX16_2 = SHX16_2.ItemOffset
        SHX15_2 = SHX15_2 + SHX16_2
        SHX16_2 = SHX0_1.Divider
        SHX16_2 = SHX16_2[SHX12_2]
        SHX16_2 = SHX16_2.Width
        SHX17_2 = SHX0_1.Divider
        SHX17_2 = SHX17_2[SHX12_2]
        SHX17_2 = SHX17_2.Height
        SHX18_2 = 0
        SHX19_2 = 0
        SHX20_2 = 0
        SHX21_2 = 255
        SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
      end
      SHX9_2 = RageUI
      SHX10_2 = RageUI
      SHX10_2 = SHX10_2.StatisticPanelCount
      SHX10_2 = SHX10_2 + 1
      SHX9_2.StatisticPanelCount = SHX10_2
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_403:: outside nested blocks until all 'goto SHX_LABEL_403' can see it
  ::SHX_LABEL_403::
end
SHX1_1.StatisticPanelAdvanced = SHX2_1
