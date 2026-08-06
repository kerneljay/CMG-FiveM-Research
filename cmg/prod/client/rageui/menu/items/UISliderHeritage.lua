-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1
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
SHX1_1.Dictionary = "commonmenu"
SHX1_1.Texture = "gradient_nav"
SHX1_1.Y = 0
SHX1_1.Width = 431
SHX1_1.Height = 38
SHX0_1.SelectedSprite = SHX1_1
SHX1_1 = {}
SHX2_1 = {}
SHX2_1.X = 250
SHX2_1.Y = 14.5
SHX2_1.Width = 150
SHX2_1.Height = 9
SHX1_1.Background = SHX2_1
SHX2_1 = {}
SHX2_1.X = 250
SHX2_1.Y = 14.5
SHX2_1.Width = 75
SHX2_1.Height = 9
SHX1_1.Slider = SHX2_1
SHX2_1 = {}
SHX2_1.X = 323.5
SHX2_1.Y = 9
SHX2_1.Width = 2.5
SHX2_1.Height = 20
SHX1_1.Divider = SHX2_1
SHX2_1 = {}
SHX2_1.Dictionary = "mpleaderboard"
SHX2_1.Texture = "leaderboard_female_icon"
SHX2_1.X = 215
SHX2_1.Y = 0
SHX2_1.Width = 40
SHX2_1.Height = 40
SHX1_1.LeftArrow = SHX2_1
SHX2_1 = {}
SHX2_1.Dictionary = "mpleaderboard"
SHX2_1.Texture = "leaderboard_male_icon"
SHX2_1.X = 395
SHX2_1.Y = 0
SHX2_1.Width = 40
SHX2_1.Height = 40
SHX1_1.RightArrow = SHX2_1
SHX2_1 = {}
SHX3_1 = 1
SHX4_1 = 10
SHX5_1 = 1
for SHX6_1 = SHX3_1, SHX4_1, SHX5_1 do
  SHX7_1 = table
  SHX7_1 = SHX7_1.insert
  SHX8_1 = SHX2_1
  SHX9_1 = SHX6_1
  SHX7_1(SHX8_1, SHX9_1)
end
SHX3_1 = RageUI
function SHX4_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2
  SHX5_2 = RageUI
  SHX5_2 = SHX5_2.CurrentMenu
  SHX6_2 = RageUI
  SHX6_2 = SHX6_2.Settings
  SHX6_2 = SHX6_2.Audio
  if nil ~= SHX5_2 then
    SHX7_2 = SHX5_2
    SHX7_2 = SHX7_2()
    if SHX7_2 then
      SHX7_2 = RageUI
      SHX7_2 = SHX7_2.Options
      SHX7_2 = SHX7_2 + 1
      SHX8_2 = SHX5_2.Pagination
      SHX8_2 = SHX8_2.Minimum
      if SHX7_2 >= SHX8_2 then
        SHX8_2 = SHX5_2.Pagination
        SHX8_2 = SHX8_2.Maximum
        if SHX7_2 <= SHX8_2 then
          SHX8_2 = SHX4_2 or SHX8_2
          if not SHX4_2 then
            SHX8_2 = 0.1
          end
          SHX9_2 = SHX5_2.Index
          SHX9_2 = SHX9_2 == SHX7_2
          SHX10_2 = false
          SHX11_2 = false
          SHX12_2 = RageUI
          SHX12_2 = SHX12_2.ItemsSafeZone
          SHX13_2 = SHX5_2
          SHX12_2(SHX13_2)
          SHX12_2 = false
          SHX13_2 = 0
          SHX14_2 = SHX5_2.EnableMouse
          if true == SHX14_2 then
            SHX14_2 = SHX5_2.CursorStyle
            if 0 == SHX14_2 then
              goto SHX_LABEL_49
            end
          end
          SHX14_2 = SHX5_2.CursorStyle
          -- [FIX IF ERROR] Move ::SHX_LABEL_49:: outside nested blocks until all 'goto SHX_LABEL_49' can see it
          ::SHX_LABEL_49::
          if 1 == SHX14_2 then
            SHX14_2 = RageUI
            SHX14_2 = SHX14_2.ItemsMouseBounds
            SHX15_2 = SHX5_2
            SHX16_2 = SHX9_2
            SHX17_2 = SHX7_2
            SHX18_2 = SHX0_1
            SHX14_2 = SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2)
            SHX12_2 = SHX14_2
          end
          if SHX9_2 then
            SHX14_2 = RenderSprite
            SHX15_2 = SHX0_1.SelectedSprite
            SHX15_2 = SHX15_2.Dictionary
            SHX16_2 = SHX0_1.SelectedSprite
            SHX16_2 = SHX16_2.Texture
            SHX17_2 = SHX5_2.X
            SHX18_2 = SHX5_2.Y
            SHX19_2 = SHX0_1.SelectedSprite
            SHX19_2 = SHX19_2.Y
            SHX18_2 = SHX18_2 + SHX19_2
            SHX19_2 = SHX5_2.SubtitleHeight
            SHX18_2 = SHX18_2 + SHX19_2
            SHX19_2 = RageUI
            SHX19_2 = SHX19_2.ItemOffset
            SHX18_2 = SHX18_2 + SHX19_2
            SHX19_2 = SHX0_1.SelectedSprite
            SHX19_2 = SHX19_2.Width
            SHX20_2 = SHX5_2.WidthOffset
            SHX19_2 = SHX19_2 + SHX20_2
            SHX20_2 = SHX0_1.SelectedSprite
            SHX20_2 = SHX20_2.Height
            SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
            SHX14_2 = RageUI
            SHX14_2 = SHX14_2.IsMouseInBounds
            SHX15_2 = SHX5_2.X
            SHX16_2 = SHX1_1.LeftArrow
            SHX16_2 = SHX16_2.X
            SHX15_2 = SHX15_2 + SHX16_2
            SHX16_2 = SHX5_2.SafeZoneSize
            SHX16_2 = SHX16_2.X
            SHX15_2 = SHX15_2 + SHX16_2
            SHX16_2 = SHX5_2.WidthOffset
            SHX15_2 = SHX15_2 + SHX16_2
            SHX16_2 = SHX5_2.Y
            SHX17_2 = SHX1_1.LeftArrow
            SHX17_2 = SHX17_2.Y
            SHX16_2 = SHX16_2 + SHX17_2
            SHX17_2 = SHX5_2.SafeZoneSize
            SHX17_2 = SHX17_2.Y
            SHX16_2 = SHX16_2 + SHX17_2
            SHX17_2 = SHX5_2.SubtitleHeight
            SHX16_2 = SHX16_2 + SHX17_2
            SHX17_2 = RageUI
            SHX17_2 = SHX17_2.ItemOffset
            SHX16_2 = SHX16_2 + SHX17_2
            SHX17_2 = SHX1_1.LeftArrow
            SHX17_2 = SHX17_2.Width
            SHX18_2 = SHX1_1.LeftArrow
            SHX18_2 = SHX18_2.Height
            SHX14_2 = SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2)
            SHX10_2 = SHX14_2
            SHX14_2 = RageUI
            SHX14_2 = SHX14_2.IsMouseInBounds
            SHX15_2 = SHX5_2.X
            SHX16_2 = SHX1_1.RightArrow
            SHX16_2 = SHX16_2.X
            SHX15_2 = SHX15_2 + SHX16_2
            SHX16_2 = SHX5_2.SafeZoneSize
            SHX16_2 = SHX16_2.X
            SHX15_2 = SHX15_2 + SHX16_2
            SHX16_2 = SHX5_2.WidthOffset
            SHX15_2 = SHX15_2 + SHX16_2
            SHX16_2 = SHX5_2.Y
            SHX17_2 = SHX1_1.RightArrow
            SHX17_2 = SHX17_2.Y
            SHX16_2 = SHX16_2 + SHX17_2
            SHX17_2 = SHX5_2.SafeZoneSize
            SHX17_2 = SHX17_2.Y
            SHX16_2 = SHX16_2 + SHX17_2
            SHX17_2 = SHX5_2.SubtitleHeight
            SHX16_2 = SHX16_2 + SHX17_2
            SHX17_2 = RageUI
            SHX17_2 = SHX17_2.ItemOffset
            SHX16_2 = SHX16_2 + SHX17_2
            SHX17_2 = SHX1_1.RightArrow
            SHX17_2 = SHX17_2.Width
            SHX18_2 = SHX1_1.RightArrow
            SHX18_2 = SHX18_2.Height
            SHX14_2 = SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2)
            SHX11_2 = SHX14_2
          end
          if SHX9_2 then
            SHX14_2 = RenderText
            SHX15_2 = SHX0_2
            SHX16_2 = SHX5_2.X
            SHX17_2 = SHX0_1.Text
            SHX17_2 = SHX17_2.X
            SHX16_2 = SHX16_2 + SHX17_2
            SHX17_2 = SHX5_2.Y
            SHX18_2 = SHX0_1.Text
            SHX18_2 = SHX18_2.Y
            SHX17_2 = SHX17_2 + SHX18_2
            SHX18_2 = SHX5_2.SubtitleHeight
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
            SHX14_2 = RenderSprite
            SHX15_2 = SHX1_1.LeftArrow
            SHX15_2 = SHX15_2.Dictionary
            SHX16_2 = SHX1_1.LeftArrow
            SHX16_2 = SHX16_2.Texture
            SHX17_2 = SHX5_2.X
            SHX18_2 = SHX1_1.LeftArrow
            SHX18_2 = SHX18_2.X
            SHX17_2 = SHX17_2 + SHX18_2
            SHX18_2 = SHX5_2.WidthOffset
            SHX17_2 = SHX17_2 + SHX18_2
            SHX17_2 = SHX17_2 - SHX13_2
            SHX18_2 = SHX5_2.Y
            SHX19_2 = SHX1_1.LeftArrow
            SHX19_2 = SHX19_2.Y
            SHX18_2 = SHX18_2 + SHX19_2
            SHX19_2 = SHX5_2.SubtitleHeight
            SHX18_2 = SHX18_2 + SHX19_2
            SHX19_2 = RageUI
            SHX19_2 = SHX19_2.ItemOffset
            SHX18_2 = SHX18_2 + SHX19_2
            SHX19_2 = SHX1_1.LeftArrow
            SHX19_2 = SHX19_2.Width
            SHX20_2 = SHX1_1.LeftArrow
            SHX20_2 = SHX20_2.Height
            SHX21_2 = 0
            SHX22_2 = 0
            SHX23_2 = 0
            SHX24_2 = 0
            SHX25_2 = 255
            SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
            SHX14_2 = RenderSprite
            SHX15_2 = SHX1_1.RightArrow
            SHX15_2 = SHX15_2.Dictionary
            SHX16_2 = SHX1_1.RightArrow
            SHX16_2 = SHX16_2.Texture
            SHX17_2 = SHX5_2.X
            SHX18_2 = SHX1_1.RightArrow
            SHX18_2 = SHX18_2.X
            SHX17_2 = SHX17_2 + SHX18_2
            SHX18_2 = SHX5_2.WidthOffset
            SHX17_2 = SHX17_2 + SHX18_2
            SHX17_2 = SHX17_2 - SHX13_2
            SHX18_2 = SHX5_2.Y
            SHX19_2 = SHX1_1.RightArrow
            SHX19_2 = SHX19_2.Y
            SHX18_2 = SHX18_2 + SHX19_2
            SHX19_2 = SHX5_2.SubtitleHeight
            SHX18_2 = SHX18_2 + SHX19_2
            SHX19_2 = RageUI
            SHX19_2 = SHX19_2.ItemOffset
            SHX18_2 = SHX18_2 + SHX19_2
            SHX19_2 = SHX1_1.RightArrow
            SHX19_2 = SHX19_2.Width
            SHX20_2 = SHX1_1.RightArrow
            SHX20_2 = SHX20_2.Height
            SHX21_2 = 0
            SHX22_2 = 0
            SHX23_2 = 0
            SHX24_2 = 0
            SHX25_2 = 255
            SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
          else
            SHX14_2 = RenderText
            SHX15_2 = SHX0_2
            SHX16_2 = SHX5_2.X
            SHX17_2 = SHX0_1.Text
            SHX17_2 = SHX17_2.X
            SHX16_2 = SHX16_2 + SHX17_2
            SHX17_2 = SHX5_2.Y
            SHX18_2 = SHX0_1.Text
            SHX18_2 = SHX18_2.Y
            SHX17_2 = SHX17_2 + SHX18_2
            SHX18_2 = SHX5_2.SubtitleHeight
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
            SHX14_2 = RenderSprite
            SHX15_2 = SHX1_1.LeftArrow
            SHX15_2 = SHX15_2.Dictionary
            SHX16_2 = SHX1_1.LeftArrow
            SHX16_2 = SHX16_2.Texture
            SHX17_2 = SHX5_2.X
            SHX18_2 = SHX1_1.LeftArrow
            SHX18_2 = SHX18_2.X
            SHX17_2 = SHX17_2 + SHX18_2
            SHX18_2 = SHX5_2.WidthOffset
            SHX17_2 = SHX17_2 + SHX18_2
            SHX17_2 = SHX17_2 - SHX13_2
            SHX18_2 = SHX5_2.Y
            SHX19_2 = SHX1_1.LeftArrow
            SHX19_2 = SHX19_2.Y
            SHX18_2 = SHX18_2 + SHX19_2
            SHX19_2 = SHX5_2.SubtitleHeight
            SHX18_2 = SHX18_2 + SHX19_2
            SHX19_2 = RageUI
            SHX19_2 = SHX19_2.ItemOffset
            SHX18_2 = SHX18_2 + SHX19_2
            SHX19_2 = SHX1_1.LeftArrow
            SHX19_2 = SHX19_2.Width
            SHX20_2 = SHX1_1.LeftArrow
            SHX20_2 = SHX20_2.Height
            SHX21_2 = 0
            SHX22_2 = 255
            SHX23_2 = 255
            SHX24_2 = 255
            SHX25_2 = 255
            SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
            SHX14_2 = RenderSprite
            SHX15_2 = SHX1_1.RightArrow
            SHX15_2 = SHX15_2.Dictionary
            SHX16_2 = SHX1_1.RightArrow
            SHX16_2 = SHX16_2.Texture
            SHX17_2 = SHX5_2.X
            SHX18_2 = SHX1_1.RightArrow
            SHX18_2 = SHX18_2.X
            SHX17_2 = SHX17_2 + SHX18_2
            SHX18_2 = SHX5_2.WidthOffset
            SHX17_2 = SHX17_2 + SHX18_2
            SHX17_2 = SHX17_2 - SHX13_2
            SHX18_2 = SHX5_2.Y
            SHX19_2 = SHX1_1.RightArrow
            SHX19_2 = SHX19_2.Y
            SHX18_2 = SHX18_2 + SHX19_2
            SHX19_2 = SHX5_2.SubtitleHeight
            SHX18_2 = SHX18_2 + SHX19_2
            SHX19_2 = RageUI
            SHX19_2 = SHX19_2.ItemOffset
            SHX18_2 = SHX18_2 + SHX19_2
            SHX19_2 = SHX1_1.RightArrow
            SHX19_2 = SHX19_2.Width
            SHX20_2 = SHX1_1.RightArrow
            SHX20_2 = SHX20_2.Height
            SHX21_2 = 0
            SHX22_2 = 255
            SHX23_2 = 255
            SHX24_2 = 255
            SHX25_2 = 255
            SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
          end
          SHX14_2 = RenderRectangle
          SHX15_2 = SHX5_2.X
          SHX16_2 = SHX1_1.Background
          SHX16_2 = SHX16_2.X
          SHX15_2 = SHX15_2 + SHX16_2
          SHX16_2 = SHX5_2.WidthOffset
          SHX15_2 = SHX15_2 + SHX16_2
          SHX15_2 = SHX15_2 - SHX13_2
          SHX16_2 = SHX5_2.Y
          SHX17_2 = SHX1_1.Background
          SHX17_2 = SHX17_2.Y
          SHX16_2 = SHX16_2 + SHX17_2
          SHX17_2 = SHX5_2.SubtitleHeight
          SHX16_2 = SHX16_2 + SHX17_2
          SHX17_2 = RageUI
          SHX17_2 = SHX17_2.ItemOffset
          SHX16_2 = SHX16_2 + SHX17_2
          SHX17_2 = SHX1_1.Background
          SHX17_2 = SHX17_2.Width
          SHX18_2 = SHX1_1.Background
          SHX18_2 = SHX18_2.Height
          SHX19_2 = 4
          SHX20_2 = 32
          SHX21_2 = 57
          SHX22_2 = 255
          SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
          SHX14_2 = RenderRectangle
          SHX15_2 = SHX5_2.X
          SHX16_2 = SHX1_1.Slider
          SHX16_2 = SHX16_2.X
          SHX15_2 = SHX15_2 + SHX16_2
          SHX16_2 = SHX1_1.Background
          SHX16_2 = SHX16_2.Width
          SHX17_2 = SHX1_1.Slider
          SHX17_2 = SHX17_2.Width
          SHX16_2 = SHX16_2 - SHX17_2
          SHX17_2 = SHX2_1
          SHX17_2 = #SHX17_2
          SHX16_2 = SHX16_2 / SHX17_2
          SHX16_2 = SHX16_2 * SHX1_2
          SHX15_2 = SHX15_2 + SHX16_2
          SHX16_2 = SHX5_2.WidthOffset
          SHX15_2 = SHX15_2 + SHX16_2
          SHX15_2 = SHX15_2 - SHX13_2
          SHX16_2 = SHX5_2.Y
          SHX17_2 = SHX1_1.Slider
          SHX17_2 = SHX17_2.Y
          SHX16_2 = SHX16_2 + SHX17_2
          SHX17_2 = SHX5_2.SubtitleHeight
          SHX16_2 = SHX16_2 + SHX17_2
          SHX17_2 = RageUI
          SHX17_2 = SHX17_2.ItemOffset
          SHX16_2 = SHX16_2 + SHX17_2
          SHX17_2 = SHX1_1.Slider
          SHX17_2 = SHX17_2.Width
          SHX18_2 = SHX1_1.Slider
          SHX18_2 = SHX18_2.Height
          SHX19_2 = 57
          SHX20_2 = 116
          SHX21_2 = 200
          SHX22_2 = 255
          SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
          SHX14_2 = RenderRectangle
          SHX15_2 = SHX5_2.X
          SHX16_2 = SHX1_1.Divider
          SHX16_2 = SHX16_2.X
          SHX15_2 = SHX15_2 + SHX16_2
          SHX16_2 = SHX5_2.WidthOffset
          SHX15_2 = SHX15_2 + SHX16_2
          SHX16_2 = SHX5_2.Y
          SHX17_2 = SHX1_1.Divider
          SHX17_2 = SHX17_2.Y
          SHX16_2 = SHX16_2 + SHX17_2
          SHX17_2 = SHX5_2.SubtitleHeight
          SHX16_2 = SHX16_2 + SHX17_2
          SHX17_2 = RageUI
          SHX17_2 = SHX17_2.ItemOffset
          SHX16_2 = SHX16_2 + SHX17_2
          SHX17_2 = SHX1_1.Divider
          SHX17_2 = SHX17_2.Width
          SHX18_2 = SHX1_1.Divider
          SHX18_2 = SHX18_2.Height
          SHX19_2 = 245
          SHX20_2 = 245
          SHX21_2 = 245
          SHX22_2 = 255
          SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
          SHX14_2 = RageUI
          SHX15_2 = RageUI
          SHX15_2 = SHX15_2.ItemOffset
          SHX16_2 = SHX0_1.Rectangle
          SHX16_2 = SHX16_2.Height
          SHX15_2 = SHX15_2 + SHX16_2
          SHX14_2.ItemOffset = SHX15_2
          SHX14_2 = RageUI
          SHX14_2 = SHX14_2.ItemsDescription
          SHX15_2 = SHX5_2
          SHX16_2 = SHX2_2
          SHX17_2 = SHX9_2
          SHX14_2(SHX15_2, SHX16_2, SHX17_2)
          if SHX9_2 then
            SHX14_2 = SHX5_2.Controls
            SHX14_2 = SHX14_2.SliderLeft
            SHX14_2 = SHX14_2.Active
            if not SHX14_2 then
              SHX14_2 = SHX5_2.Controls
              SHX14_2 = SHX14_2.Click
              SHX14_2 = SHX14_2.Active
              if not (SHX14_2 and SHX10_2) then
                goto SHX_LABEL_530
              end
            end
            SHX14_2 = SHX5_2.Controls
            SHX14_2 = SHX14_2.SliderRight
            SHX14_2 = SHX14_2.Active
            if not SHX14_2 then
              SHX14_2 = SHX5_2.Controls
              SHX14_2 = SHX14_2.Click
              SHX14_2 = SHX14_2.Active
              if not SHX14_2 or not SHX11_2 then
                SHX1_2 = SHX1_2 - SHX8_2
                SHX14_2 = 0.1
                if SHX1_2 < SHX14_2 then
                  SHX1_2 = 0.0
                else
                  SHX14_2 = RageUI
                  SHX14_2 = SHX14_2.PlaySound
                  SHX15_2 = SHX6_2.Use
                  SHX15_2 = SHX6_2[SHX15_2]
                  SHX15_2 = SHX15_2.Slider
                  SHX15_2 = SHX15_2.audioName
                  SHX16_2 = SHX6_2.Use
                  SHX16_2 = SHX6_2[SHX16_2]
                  SHX16_2 = SHX16_2.Slider
                  SHX16_2 = SHX16_2.audioRef
                  SHX17_2 = true
                  SHX14_2(SHX15_2, SHX16_2, SHX17_2)
                end
            end
          end
          else
            -- [FIX IF ERROR] Move ::SHX_LABEL_530:: outside nested blocks until all 'goto SHX_LABEL_530' can see it
            ::SHX_LABEL_530::
            if SHX9_2 then
              SHX14_2 = SHX5_2.Controls
              SHX14_2 = SHX14_2.SliderRight
              SHX14_2 = SHX14_2.Active
              if not SHX14_2 then
                SHX14_2 = SHX5_2.Controls
                SHX14_2 = SHX14_2.Click
                SHX14_2 = SHX14_2.Active
                if not (SHX14_2 and SHX11_2) then
                  goto SHX_LABEL_576
                end
              end
              SHX14_2 = SHX5_2.Controls
              SHX14_2 = SHX14_2.SliderLeft
              SHX14_2 = SHX14_2.Active
              if not SHX14_2 then
                SHX14_2 = SHX5_2.Controls
                SHX14_2 = SHX14_2.Click
                SHX14_2 = SHX14_2.Active
                if not SHX14_2 or not SHX10_2 then
                  SHX1_2 = SHX1_2 + SHX8_2
                  SHX14_2 = SHX2_1
                  SHX14_2 = #SHX14_2
                  if SHX1_2 > SHX14_2 then
                    SHX1_2 = 10
                  else
                    SHX14_2 = RageUI
                    SHX14_2 = SHX14_2.PlaySound
                    SHX15_2 = SHX6_2.Use
                    SHX15_2 = SHX6_2[SHX15_2]
                    SHX15_2 = SHX15_2.Slider
                    SHX15_2 = SHX15_2.audioName
                    SHX16_2 = SHX6_2.Use
                    SHX16_2 = SHX6_2[SHX16_2]
                    SHX16_2 = SHX16_2.Slider
                    SHX16_2 = SHX16_2.audioRef
                    SHX17_2 = true
                    SHX14_2(SHX15_2, SHX16_2, SHX17_2)
                  end
                end
              end
            end
          end
          -- [FIX IF ERROR] Move ::SHX_LABEL_576:: outside nested blocks until all 'goto SHX_LABEL_576' can see it
          ::SHX_LABEL_576::
          if SHX9_2 then
            SHX14_2 = SHX5_2.Controls
            SHX14_2 = SHX14_2.Select
            SHX14_2 = SHX14_2.Active
            if not SHX14_2 then
              if not SHX12_2 then
                goto SHX_LABEL_606
              end
              SHX14_2 = SHX5_2.Controls
              SHX14_2 = SHX14_2.Click
              SHX14_2 = SHX14_2.Active
              if not SHX14_2 or SHX10_2 or SHX11_2 then
                goto SHX_LABEL_606
              end
            end
            SHX14_2 = RageUI
            SHX14_2 = SHX14_2.PlaySound
            SHX15_2 = SHX6_2.Use
            SHX15_2 = SHX6_2[SHX15_2]
            SHX15_2 = SHX15_2.Select
            SHX15_2 = SHX15_2.audioName
            SHX16_2 = SHX6_2.Use
            SHX16_2 = SHX6_2[SHX16_2]
            SHX16_2 = SHX16_2.Select
            SHX16_2 = SHX16_2.audioRef
            SHX17_2 = false
            SHX14_2(SHX15_2, SHX16_2, SHX17_2)
          end
          -- [FIX IF ERROR] Move ::SHX_LABEL_606:: outside nested blocks until all 'goto SHX_LABEL_606' can see it
          ::SHX_LABEL_606::
          SHX14_2 = SHX3_2
          SHX15_2 = SHX12_2
          SHX16_2 = SHX9_2
          SHX17_2 = SHX5_2.Controls
          SHX17_2 = SHX17_2.Select
          SHX17_2 = SHX17_2.Active
          if not SHX17_2 then
            if not SHX12_2 then
              goto SHX_LABEL_629
              SHX17_2 = SHX12_2 or SHX17_2
            end
            SHX17_2 = SHX5_2.Controls
            SHX17_2 = SHX17_2.Click
            SHX17_2 = SHX17_2.Active
          end
          SHX17_2 = SHX17_2 and not SHX10_2 and not SHX11_2 and SHX17_2
          -- [FIX IF ERROR] Move ::SHX_LABEL_629:: outside nested blocks until all 'goto SHX_LABEL_629' can see it
          ::SHX_LABEL_629::
          SHX18_2 = SHX1_2 / 10
          SHX19_2 = SHX1_2
          SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
        end
      end
      SHX8_2 = RageUI
      SHX9_2 = RageUI
      SHX9_2 = SHX9_2.Options
      SHX9_2 = SHX9_2 + 1
      SHX8_2.Options = SHX9_2
    end
  end
end
SHX3_1.UISliderHeritage = SHX4_1
