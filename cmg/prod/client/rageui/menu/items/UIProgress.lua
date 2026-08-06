-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1
SHX0_1 = {}
SHX1_1 = {}
SHX1_1.Y = 0
SHX1_1.Width = 431
SHX1_1.Height = 38
SHX0_1.Rectangle = SHX1_1
SHX1_1 = {}
SHX1_1.X = 8
SHX1_1.Y = 3
SHX1_1.Scale = 0.33
SHX0_1.Text = SHX1_1
SHX1_1 = {}
SHX1_1.Y = -2
SHX1_1.Width = 40
SHX1_1.Height = 40
SHX0_1.LeftBadge = SHX1_1
SHX1_1 = {}
SHX1_1.X = 385
SHX1_1.Y = -2
SHX1_1.Width = 40
SHX1_1.Height = 40
SHX0_1.RightBadge = SHX1_1
SHX1_1 = {}
SHX1_1.X = 420
SHX1_1.Y = 4
SHX1_1.Scale = 0.35
SHX0_1.RightText = SHX1_1
SHX1_1 = {}
SHX1_1.Dictionary = "commonmenu"
SHX1_1.Texture = "gradient_nav"
SHX1_1.Y = 0
SHX1_1.Width = 431
SHX1_1.Height = 38
SHX0_1.SelectedSprite = SHX1_1
SHX1_1 = {}
SHX2_1 = {}
SHX2_1.X = 8
SHX2_1.Y = 33
SHX2_1.Width = 415
SHX2_1.Height = 20
SHX1_1.Background = SHX2_1
SHX2_1 = {}
SHX2_1.X = 11.75
SHX2_1.Y = 36.75
SHX2_1.Width = 407.5
SHX2_1.Height = 12.5
SHX1_1.Bar = SHX2_1
SHX1_1.Height = 60
SHX2_1 = RageUI
function SHX3_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2
  SHX7_2 = RageUI
  SHX7_2 = SHX7_2.CurrentMenu
  if nil ~= SHX7_2 then
    SHX8_2 = SHX7_2
    SHX8_2 = SHX8_2()
    if SHX8_2 then
      SHX8_2 = {}
      SHX9_2 = 1
      SHX10_2 = SHX2_2
      SHX11_2 = 1
      for SHX12_2 = SHX9_2, SHX10_2, SHX11_2 do
        SHX13_2 = table
        SHX13_2 = SHX13_2.insert
        SHX14_2 = SHX8_2
        SHX15_2 = SHX12_2
        SHX13_2(SHX14_2, SHX15_2)
      end
      SHX9_2 = RageUI
      SHX9_2 = SHX9_2.Options
      SHX9_2 = SHX9_2 + 1
      SHX10_2 = SHX7_2.Pagination
      SHX10_2 = SHX10_2.Minimum
      if SHX9_2 >= SHX10_2 then
        SHX10_2 = SHX7_2.Pagination
        SHX10_2 = SHX10_2.Maximum
        if SHX9_2 <= SHX10_2 then
          SHX10_2 = SHX7_2.Index
          SHX10_2 = SHX10_2 == SHX9_2
          SHX11_2 = false
          SHX12_2 = RageUI
          SHX12_2 = SHX12_2.ItemsSafeZone
          SHX13_2 = SHX7_2
          SHX12_2(SHX13_2)
          SHX12_2 = false
          SHX13_2 = SHX7_2.EnableMouse
          if true == SHX13_2 then
            SHX13_2 = SHX7_2.CursorStyle
            if 0 == SHX13_2 then
              goto SHX_LABEL_53
            end
          end
          SHX13_2 = SHX7_2.CursorStyle
          -- [FIX IF ERROR] Move ::SHX_LABEL_53:: outside nested blocks until all 'goto SHX_LABEL_53' can see it
          ::SHX_LABEL_53::
          if 1 == SHX13_2 then
            SHX13_2 = RageUI
            SHX13_2 = SHX13_2.ItemsMouseBounds
            SHX14_2 = SHX7_2
            SHX15_2 = SHX10_2
            SHX16_2 = SHX9_2
            SHX17_2 = SHX0_1
            SHX13_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2)
            SHX12_2 = SHX13_2
          end
          if SHX4_2 then
            SHX13_2 = SHX1_2
            SHX14_2 = "/"
            SHX15_2 = #SHX8_2
            SHX13_2 = SHX13_2 .. SHX14_2 .. SHX15_2
            if SHX13_2 then
              goto SHX_LABEL_83
            end
          end
          SHX13_2 = type
          SHX14_2 = SHX8_2[SHX1_2]
          SHX13_2 = SHX13_2(SHX14_2)
          if "table" == SHX13_2 then
            SHX13_2 = tostring
            SHX14_2 = SHX8_2[SHX1_2]
            SHX14_2 = SHX14_2.Name
            SHX13_2 = SHX13_2(SHX14_2)
            if SHX13_2 then
              goto SHX_LABEL_83
            end
          end
          SHX13_2 = tostring
          SHX14_2 = SHX8_2[SHX1_2]
          SHX13_2 = SHX13_2(SHX14_2)
          -- [FIX IF ERROR] Move ::SHX_LABEL_83:: outside nested blocks until all 'goto SHX_LABEL_83' can see it
          ::SHX_LABEL_83::
          if SHX10_2 then
            SHX14_2 = RenderSprite
            SHX15_2 = SHX0_1.SelectedSprite
            SHX15_2 = SHX15_2.Dictionary
            SHX16_2 = SHX0_1.SelectedSprite
            SHX16_2 = SHX16_2.Texture
            SHX17_2 = SHX7_2.X
            SHX18_2 = SHX7_2.Y
            SHX19_2 = SHX0_1.SelectedSprite
            SHX19_2 = SHX19_2.Y
            SHX18_2 = SHX18_2 + SHX19_2
            SHX19_2 = SHX7_2.SubtitleHeight
            SHX18_2 = SHX18_2 + SHX19_2
            SHX19_2 = RageUI
            SHX19_2 = SHX19_2.ItemOffset
            SHX18_2 = SHX18_2 + SHX19_2
            SHX19_2 = SHX0_1.SelectedSprite
            SHX19_2 = SHX19_2.Width
            SHX20_2 = SHX7_2.WidthOffset
            SHX19_2 = SHX19_2 + SHX20_2
            SHX20_2 = SHX1_1.Height
            SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
            SHX14_2 = RageUI
            SHX14_2 = SHX14_2.IsMouseInBounds
            SHX15_2 = SHX7_2.X
            SHX16_2 = SHX1_1.Bar
            SHX16_2 = SHX16_2.X
            SHX15_2 = SHX15_2 + SHX16_2
            SHX16_2 = SHX7_2.SafeZoneSize
            SHX16_2 = SHX16_2.X
            SHX15_2 = SHX15_2 + SHX16_2
            SHX16_2 = SHX7_2.Y
            SHX17_2 = SHX1_1.Bar
            SHX17_2 = SHX17_2.Y
            SHX16_2 = SHX16_2 + SHX17_2
            SHX17_2 = SHX7_2.SafeZoneSize
            SHX17_2 = SHX17_2.Y
            SHX16_2 = SHX16_2 + SHX17_2
            SHX17_2 = SHX7_2.SubtitleHeight
            SHX16_2 = SHX16_2 + SHX17_2
            SHX17_2 = RageUI
            SHX17_2 = SHX17_2.ItemOffset
            SHX16_2 = SHX16_2 + SHX17_2
            SHX16_2 = SHX16_2 - 12
            SHX17_2 = SHX1_1.Bar
            SHX17_2 = SHX17_2.Width
            SHX18_2 = SHX7_2.WidthOffset
            SHX17_2 = SHX17_2 + SHX18_2
            SHX18_2 = SHX1_1.Bar
            SHX18_2 = SHX18_2.Height
            SHX18_2 = SHX18_2 + 24
            SHX14_2 = SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2)
            SHX11_2 = SHX14_2
          end
          if true == SHX5_2 or nil == SHX5_2 then
            if SHX10_2 then
              SHX14_2 = RenderText
              SHX15_2 = SHX13_2
              SHX16_2 = SHX7_2.X
              SHX17_2 = SHX0_1.RightText
              SHX17_2 = SHX17_2.X
              SHX16_2 = SHX16_2 + SHX17_2
              SHX17_2 = SHX7_2.WidthOffset
              SHX16_2 = SHX16_2 + SHX17_2
              SHX17_2 = SHX7_2.Y
              SHX18_2 = SHX0_1.RightText
              SHX18_2 = SHX18_2.Y
              SHX17_2 = SHX17_2 + SHX18_2
              SHX18_2 = SHX7_2.SubtitleHeight
              SHX17_2 = SHX17_2 + SHX18_2
              SHX18_2 = RageUI
              SHX18_2 = SHX18_2.ItemOffset
              SHX17_2 = SHX17_2 + SHX18_2
              SHX18_2 = 0
              SHX19_2 = SHX0_1.RightText
              SHX19_2 = SHX19_2.Scale
              SHX20_2 = 0
              SHX21_2 = 0
              SHX22_2 = 0
              SHX23_2 = 255
              SHX24_2 = 2
              SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
              SHX14_2 = RenderText
              SHX15_2 = SHX0_2
              SHX16_2 = SHX7_2.X
              SHX17_2 = SHX0_1.Text
              SHX17_2 = SHX17_2.X
              SHX16_2 = SHX16_2 + SHX17_2
              SHX17_2 = SHX7_2.Y
              SHX18_2 = SHX0_1.Text
              SHX18_2 = SHX18_2.Y
              SHX17_2 = SHX17_2 + SHX18_2
              SHX18_2 = SHX7_2.SubtitleHeight
              SHX17_2 = SHX17_2 + SHX18_2
              SHX18_2 = RageUI
              SHX18_2 = SHX18_2.ItemOffset
              SHX17_2 = SHX17_2 + SHX18_2
              SHX18_2 = 0
              SHX19_2 = SHX0_1.Text
              SHX19_2 = SHX19_2.Scale
              SHX20_2 = 0
              SHX21_2 = 0
              SHX22_2 = 0
              SHX23_2 = 255
              SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
              SHX14_2 = RenderRectangle
              SHX15_2 = SHX7_2.X
              SHX16_2 = SHX1_1.Background
              SHX16_2 = SHX16_2.X
              SHX15_2 = SHX15_2 + SHX16_2
              SHX16_2 = SHX7_2.Y
              SHX17_2 = SHX1_1.Background
              SHX17_2 = SHX17_2.Y
              SHX16_2 = SHX16_2 + SHX17_2
              SHX17_2 = SHX7_2.SubtitleHeight
              SHX16_2 = SHX16_2 + SHX17_2
              SHX17_2 = RageUI
              SHX17_2 = SHX17_2.ItemOffset
              SHX16_2 = SHX16_2 + SHX17_2
              SHX17_2 = SHX1_1.Background
              SHX17_2 = SHX17_2.Width
              SHX18_2 = SHX7_2.WidthOffset
              SHX17_2 = SHX17_2 + SHX18_2
              SHX18_2 = SHX1_1.Background
              SHX18_2 = SHX18_2.Height
              SHX19_2 = 0
              SHX20_2 = 0
              SHX21_2 = 0
              SHX22_2 = 255
              SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
              SHX14_2 = RenderRectangle
              SHX15_2 = SHX7_2.X
              SHX16_2 = SHX1_1.Bar
              SHX16_2 = SHX16_2.X
              SHX15_2 = SHX15_2 + SHX16_2
              SHX16_2 = SHX7_2.Y
              SHX17_2 = SHX1_1.Bar
              SHX17_2 = SHX17_2.Y
              SHX16_2 = SHX16_2 + SHX17_2
              SHX17_2 = SHX7_2.SubtitleHeight
              SHX16_2 = SHX16_2 + SHX17_2
              SHX17_2 = RageUI
              SHX17_2 = SHX17_2.ItemOffset
              SHX16_2 = SHX16_2 + SHX17_2
              SHX17_2 = #SHX8_2
              SHX17_2 = SHX1_2 / SHX17_2
              SHX18_2 = SHX1_1.Bar
              SHX18_2 = SHX18_2.Width
              SHX19_2 = SHX7_2.WidthOffset
              SHX18_2 = SHX18_2 + SHX19_2
              SHX17_2 = SHX17_2 * SHX18_2
              SHX18_2 = SHX1_1.Bar
              SHX18_2 = SHX18_2.Height
              SHX19_2 = 240
              SHX20_2 = 240
              SHX21_2 = 240
              SHX22_2 = 255
              SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
            else
              SHX14_2 = RenderText
              SHX15_2 = SHX13_2
              SHX16_2 = SHX7_2.X
              SHX17_2 = SHX0_1.RightText
              SHX17_2 = SHX17_2.X
              SHX16_2 = SHX16_2 + SHX17_2
              SHX17_2 = SHX7_2.WidthOffset
              SHX16_2 = SHX16_2 + SHX17_2
              SHX17_2 = SHX7_2.Y
              SHX18_2 = SHX0_1.RightText
              SHX18_2 = SHX18_2.Y
              SHX17_2 = SHX17_2 + SHX18_2
              SHX18_2 = SHX7_2.SubtitleHeight
              SHX17_2 = SHX17_2 + SHX18_2
              SHX18_2 = RageUI
              SHX18_2 = SHX18_2.ItemOffset
              SHX17_2 = SHX17_2 + SHX18_2
              SHX18_2 = 0
              SHX19_2 = SHX0_1.RightText
              SHX19_2 = SHX19_2.Scale
              SHX20_2 = 245
              SHX21_2 = 245
              SHX22_2 = 245
              SHX23_2 = 255
              SHX24_2 = 2
              SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
              SHX14_2 = RenderText
              SHX15_2 = SHX0_2
              SHX16_2 = SHX7_2.X
              SHX17_2 = SHX0_1.Text
              SHX17_2 = SHX17_2.X
              SHX16_2 = SHX16_2 + SHX17_2
              SHX17_2 = SHX7_2.Y
              SHX18_2 = SHX0_1.Text
              SHX18_2 = SHX18_2.Y
              SHX17_2 = SHX17_2 + SHX18_2
              SHX18_2 = SHX7_2.SubtitleHeight
              SHX17_2 = SHX17_2 + SHX18_2
              SHX18_2 = RageUI
              SHX18_2 = SHX18_2.ItemOffset
              SHX17_2 = SHX17_2 + SHX18_2
              SHX18_2 = 0
              SHX19_2 = SHX0_1.Text
              SHX19_2 = SHX19_2.Scale
              SHX20_2 = 245
              SHX21_2 = 245
              SHX22_2 = 245
              SHX23_2 = 255
              SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
              SHX14_2 = RenderRectangle
              SHX15_2 = SHX7_2.X
              SHX16_2 = SHX1_1.Background
              SHX16_2 = SHX16_2.X
              SHX15_2 = SHX15_2 + SHX16_2
              SHX16_2 = SHX7_2.Y
              SHX17_2 = SHX1_1.Background
              SHX17_2 = SHX17_2.Y
              SHX16_2 = SHX16_2 + SHX17_2
              SHX17_2 = SHX7_2.SubtitleHeight
              SHX16_2 = SHX16_2 + SHX17_2
              SHX17_2 = RageUI
              SHX17_2 = SHX17_2.ItemOffset
              SHX16_2 = SHX16_2 + SHX17_2
              SHX17_2 = SHX1_1.Background
              SHX17_2 = SHX17_2.Width
              SHX18_2 = SHX7_2.WidthOffset
              SHX17_2 = SHX17_2 + SHX18_2
              SHX18_2 = SHX1_1.Background
              SHX18_2 = SHX18_2.Height
              SHX19_2 = 240
              SHX20_2 = 240
              SHX21_2 = 240
              SHX22_2 = 255
              SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
              SHX14_2 = RenderRectangle
              SHX15_2 = SHX7_2.X
              SHX16_2 = SHX1_1.Bar
              SHX16_2 = SHX16_2.X
              SHX15_2 = SHX15_2 + SHX16_2
              SHX16_2 = SHX7_2.Y
              SHX17_2 = SHX1_1.Bar
              SHX17_2 = SHX17_2.Y
              SHX16_2 = SHX16_2 + SHX17_2
              SHX17_2 = SHX7_2.SubtitleHeight
              SHX16_2 = SHX16_2 + SHX17_2
              SHX17_2 = RageUI
              SHX17_2 = SHX17_2.ItemOffset
              SHX16_2 = SHX16_2 + SHX17_2
              SHX17_2 = #SHX8_2
              SHX17_2 = SHX1_2 / SHX17_2
              SHX18_2 = SHX1_1.Bar
              SHX18_2 = SHX18_2.Width
              SHX19_2 = SHX7_2.WidthOffset
              SHX18_2 = SHX18_2 + SHX19_2
              SHX17_2 = SHX17_2 * SHX18_2
              SHX18_2 = SHX1_1.Bar
              SHX18_2 = SHX18_2.Height
              SHX19_2 = 0
              SHX20_2 = 0
              SHX21_2 = 0
              SHX22_2 = 255
              SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
            end
          else
            SHX14_2 = RenderText
            SHX15_2 = SHX13_2
            SHX16_2 = SHX7_2.X
            SHX17_2 = SHX0_1.RightText
            SHX17_2 = SHX17_2.X
            SHX16_2 = SHX16_2 + SHX17_2
            SHX17_2 = SHX7_2.WidthOffset
            SHX16_2 = SHX16_2 + SHX17_2
            SHX17_2 = SHX7_2.Y
            SHX18_2 = SHX0_1.RightText
            SHX18_2 = SHX18_2.Y
            SHX17_2 = SHX17_2 + SHX18_2
            SHX18_2 = SHX7_2.SubtitleHeight
            SHX17_2 = SHX17_2 + SHX18_2
            SHX18_2 = RageUI
            SHX18_2 = SHX18_2.ItemOffset
            SHX17_2 = SHX17_2 + SHX18_2
            SHX18_2 = 0
            SHX19_2 = SHX0_1.RightText
            SHX19_2 = SHX19_2.Scale
            SHX20_2 = 163
            SHX21_2 = 159
            SHX22_2 = 148
            SHX23_2 = 255
            SHX24_2 = 2
            SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
            SHX14_2 = RenderText
            SHX15_2 = SHX0_2
            SHX16_2 = SHX7_2.X
            SHX17_2 = SHX0_1.Text
            SHX17_2 = SHX17_2.X
            SHX16_2 = SHX16_2 + SHX17_2
            SHX17_2 = SHX7_2.Y
            SHX18_2 = SHX0_1.Text
            SHX18_2 = SHX18_2.Y
            SHX17_2 = SHX17_2 + SHX18_2
            SHX18_2 = SHX7_2.SubtitleHeight
            SHX17_2 = SHX17_2 + SHX18_2
            SHX18_2 = RageUI
            SHX18_2 = SHX18_2.ItemOffset
            SHX17_2 = SHX17_2 + SHX18_2
            SHX18_2 = 0
            SHX19_2 = SHX0_1.Text
            SHX19_2 = SHX19_2.Scale
            SHX20_2 = 163
            SHX21_2 = 159
            SHX22_2 = 148
            SHX23_2 = 255
            SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
            if SHX10_2 then
              SHX14_2 = RenderRectangle
              SHX15_2 = SHX7_2.X
              SHX16_2 = SHX1_1.Background
              SHX16_2 = SHX16_2.X
              SHX15_2 = SHX15_2 + SHX16_2
              SHX16_2 = SHX7_2.Y
              SHX17_2 = SHX1_1.Background
              SHX17_2 = SHX17_2.Y
              SHX16_2 = SHX16_2 + SHX17_2
              SHX17_2 = SHX7_2.SubtitleHeight
              SHX16_2 = SHX16_2 + SHX17_2
              SHX17_2 = RageUI
              SHX17_2 = SHX17_2.ItemOffset
              SHX16_2 = SHX16_2 + SHX17_2
              SHX17_2 = SHX1_1.Background
              SHX17_2 = SHX17_2.Width
              SHX18_2 = SHX7_2.WidthOffset
              SHX17_2 = SHX17_2 + SHX18_2
              SHX18_2 = SHX1_1.Background
              SHX18_2 = SHX18_2.Height
              SHX19_2 = 0
              SHX20_2 = 0
              SHX21_2 = 0
              SHX22_2 = 255
              SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
            else
              SHX14_2 = RenderRectangle
              SHX15_2 = SHX7_2.X
              SHX16_2 = SHX1_1.Background
              SHX16_2 = SHX16_2.X
              SHX15_2 = SHX15_2 + SHX16_2
              SHX16_2 = SHX7_2.Y
              SHX17_2 = SHX1_1.Background
              SHX17_2 = SHX17_2.Y
              SHX16_2 = SHX16_2 + SHX17_2
              SHX17_2 = SHX7_2.SubtitleHeight
              SHX16_2 = SHX16_2 + SHX17_2
              SHX17_2 = RageUI
              SHX17_2 = SHX17_2.ItemOffset
              SHX16_2 = SHX16_2 + SHX17_2
              SHX17_2 = SHX1_1.Background
              SHX17_2 = SHX17_2.Width
              SHX18_2 = SHX7_2.WidthOffset
              SHX17_2 = SHX17_2 + SHX18_2
              SHX18_2 = SHX1_1.Background
              SHX18_2 = SHX18_2.Height
              SHX19_2 = 240
              SHX20_2 = 240
              SHX21_2 = 240
              SHX22_2 = 255
              SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
            end
          end
          SHX14_2 = RageUI
          SHX15_2 = RageUI
          SHX15_2 = SHX15_2.ItemOffset
          SHX16_2 = SHX1_1.Height
          SHX15_2 = SHX15_2 + SHX16_2
          SHX14_2.ItemOffset = SHX15_2
          SHX14_2 = RageUI
          SHX14_2 = SHX14_2.ItemsDescription
          SHX15_2 = SHX7_2
          SHX16_2 = SHX3_2
          SHX17_2 = SHX10_2
          SHX14_2(SHX15_2, SHX16_2, SHX17_2)
          if SHX10_2 then
            SHX14_2 = SHX7_2.Controls
            SHX14_2 = SHX14_2.Left
            SHX14_2 = SHX14_2.Active
            if SHX14_2 then
              SHX14_2 = SHX7_2.Controls
              SHX14_2 = SHX14_2.Right
              SHX14_2 = SHX14_2.Active
              if not SHX14_2 then
                SHX1_2 = SHX1_2 - 1
                if SHX1_2 < 0 then
                  SHX1_2 = #SHX8_2
                end
                SHX14_2 = RageUI
                SHX14_2 = SHX14_2.Settings
                SHX14_2 = SHX14_2.Audio
                SHX15_2 = RageUI
                SHX15_2 = SHX15_2.PlaySound
                SHX16_2 = SHX14_2.Use
                SHX16_2 = SHX14_2[SHX16_2]
                SHX16_2 = SHX16_2.LeftRight
                SHX16_2 = SHX16_2.audioName
                SHX17_2 = SHX14_2.Use
                SHX17_2 = SHX14_2[SHX17_2]
                SHX17_2 = SHX17_2.LeftRight
                SHX17_2 = SHX17_2.audioRef
                SHX15_2(SHX16_2, SHX17_2)
            end
          end
          elseif SHX10_2 then
            SHX14_2 = SHX7_2.Controls
            SHX14_2 = SHX14_2.Right
            SHX14_2 = SHX14_2.Active
            if SHX14_2 then
              SHX14_2 = SHX7_2.Controls
              SHX14_2 = SHX14_2.Left
              SHX14_2 = SHX14_2.Active
              if not SHX14_2 then
                SHX1_2 = SHX1_2 + 1
                SHX14_2 = #SHX8_2
                if SHX1_2 > SHX14_2 then
                  SHX1_2 = 0
                end
                SHX14_2 = RageUI
                SHX14_2 = SHX14_2.Settings
                SHX14_2 = SHX14_2.Audio
                SHX15_2 = RageUI
                SHX15_2 = SHX15_2.PlaySound
                SHX16_2 = SHX14_2.Use
                SHX16_2 = SHX14_2[SHX16_2]
                SHX16_2 = SHX16_2.LeftRight
                SHX16_2 = SHX16_2.audioName
                SHX17_2 = SHX14_2.Use
                SHX17_2 = SHX14_2[SHX17_2]
                SHX17_2 = SHX17_2.LeftRight
                SHX17_2 = SHX17_2.audioRef
                SHX15_2(SHX16_2, SHX17_2)
              end
            end
          end
          if SHX10_2 then
            SHX14_2 = SHX7_2.Controls
            SHX14_2 = SHX14_2.Select
            SHX14_2 = SHX14_2.Active
            if not SHX14_2 then
              if not SHX12_2 then
                goto SHX_LABEL_633
              end
              SHX14_2 = SHX7_2.Controls
              SHX14_2 = SHX14_2.Click
              SHX14_2 = SHX14_2.Active
              if not SHX14_2 or SHX11_2 then
                goto SHX_LABEL_633
              end
            end
            SHX14_2 = RageUI
            SHX14_2 = SHX14_2.Settings
            SHX14_2 = SHX14_2.Audio
            SHX15_2 = RageUI
            SHX15_2 = SHX15_2.PlaySound
            SHX16_2 = SHX14_2.Use
            SHX16_2 = SHX14_2[SHX16_2]
            SHX16_2 = SHX16_2.Select
            SHX16_2 = SHX16_2.audioName
            SHX17_2 = SHX14_2.Use
            SHX17_2 = SHX14_2[SHX17_2]
            SHX17_2 = SHX17_2.Select
            SHX17_2 = SHX17_2.audioRef
            SHX15_2(SHX16_2, SHX17_2)
          else
            -- [FIX IF ERROR] Move ::SHX_LABEL_633:: outside nested blocks until all 'goto SHX_LABEL_633' can see it
            ::SHX_LABEL_633::
            if SHX10_2 and SHX12_2 then
              SHX14_2 = SHX7_2.Controls
              SHX14_2 = SHX14_2.Click
              SHX14_2 = SHX14_2.Active
              if SHX14_2 and SHX11_2 then
                SHX14_2 = RageUI
                SHX14_2 = SHX14_2.round
                SHX15_2 = GetControlNormal
                SHX16_2 = 2
                SHX17_2 = 239
                SHX15_2 = SHX15_2(SHX16_2, SHX17_2)
                SHX15_2 = SHX15_2 * 1920
                SHX14_2 = SHX14_2(SHX15_2)
                SHX15_2 = SHX7_2.SafeZoneSize
                SHX15_2 = SHX15_2.X
                SHX14_2 = SHX14_2 - SHX15_2
                SHX15_2 = SHX1_1.Bar
                SHX15_2 = SHX15_2.X
                SHX14_2 = SHX14_2 - SHX15_2
                SHX15_2 = SHX1_1.Bar
                SHX15_2 = SHX15_2.Width
                SHX16_2 = SHX7_2.WidthOffset
                SHX15_2 = SHX15_2 + SHX16_2
                if SHX14_2 > SHX15_2 then
                  SHX14_2 = SHX15_2
                elseif SHX14_2 < 0 then
                  SHX14_2 = 0
                end
                SHX16_2 = RageUI
                SHX16_2 = SHX16_2.round
                SHX17_2 = #SHX8_2
                SHX18_2 = SHX14_2 / SHX15_2
                SHX17_2 = SHX17_2 * SHX18_2
                SHX16_2 = SHX16_2(SHX17_2)
                SHX1_2 = SHX16_2
                SHX16_2 = #SHX8_2
                if SHX1_2 > SHX16_2 or SHX1_2 < 0 then
                  SHX1_2 = 0
                end
              end
            end
          end
          if SHX5_2 then
            SHX14_2 = SHX6_2
            SHX15_2 = SHX12_2
            SHX16_2 = SHX10_2
            SHX17_2 = SHX7_2.Controls
            SHX17_2 = SHX17_2.Select
            SHX17_2 = SHX17_2.Active
            if not SHX17_2 then
              if not SHX12_2 then
                goto SHX_LABEL_711
                SHX17_2 = SHX12_2 or SHX17_2
              end
              SHX17_2 = SHX7_2.Controls
              SHX17_2 = SHX17_2.Click
              SHX17_2 = SHX17_2.Active
            end
            SHX17_2 = SHX17_2 and not SHX11_2 and SHX17_2
            -- [FIX IF ERROR] Move ::SHX_LABEL_711:: outside nested blocks until all 'goto SHX_LABEL_711' can see it
            ::SHX_LABEL_711::
            SHX18_2 = SHX1_2
            SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2)
          end
        end
      end
      SHX10_2 = RageUI
      SHX11_2 = RageUI
      SHX11_2 = SHX11_2.Options
      SHX11_2 = SHX11_2 + 1
      SHX10_2.Options = SHX11_2
      SHX8_2 = nil
    end
  end
end
SHX2_1.Progress = SHX3_1
