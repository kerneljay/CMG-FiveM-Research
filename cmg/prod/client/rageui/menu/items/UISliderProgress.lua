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
SHX2_1.X = 250
SHX2_1.Y = 14.5
SHX2_1.Width = 150
SHX2_1.Height = 9
SHX1_1.Background = SHX2_1
SHX2_1 = {}
SHX2_1.X = 250
SHX2_1.Y = 14.5
SHX2_1.Width = 150
SHX2_1.Height = 9
SHX1_1.Slider = SHX2_1
SHX2_1 = {}
SHX2_1.Dictionary = "commonmenutu"
SHX2_1.Texture = "arrowleft"
SHX2_1.X = 235
SHX2_1.Y = 11.5
SHX2_1.Width = 15
SHX2_1.Height = 15
SHX1_1.LeftArrow = SHX2_1
SHX2_1 = {}
SHX2_1.Dictionary = "commonmenutu"
SHX2_1.Texture = "arrowright"
SHX2_1.X = 400
SHX2_1.Y = 11.5
SHX2_1.Width = 15
SHX2_1.Height = 15
SHX1_1.RightArrow = SHX2_1
SHX2_1 = RageUI
function SHX3_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2
  SHX7_2 = RageUI
  SHX7_2 = SHX7_2.CurrentMenu
  SHX8_2 = RageUI
  SHX8_2 = SHX8_2.Settings
  SHX8_2 = SHX8_2.Audio
  if nil ~= SHX7_2 then
    SHX9_2 = SHX7_2
    SHX9_2 = SHX9_2()
    if SHX9_2 then
      SHX9_2 = {}
      SHX10_2 = 1
      SHX11_2 = SHX2_2
      SHX12_2 = 1
      for SHX13_2 = SHX10_2, SHX11_2, SHX12_2 do
        SHX14_2 = table
        SHX14_2 = SHX14_2.insert
        SHX15_2 = SHX9_2
        SHX16_2 = SHX13_2
        SHX14_2(SHX15_2, SHX16_2)
      end
      SHX10_2 = RageUI
      SHX10_2 = SHX10_2.Options
      SHX10_2 = SHX10_2 + 1
      SHX11_2 = SHX7_2.Pagination
      SHX11_2 = SHX11_2.Minimum
      if SHX10_2 >= SHX11_2 then
        SHX11_2 = SHX7_2.Pagination
        SHX11_2 = SHX11_2.Maximum
        if SHX10_2 <= SHX11_2 then
          SHX11_2 = SHX7_2.Index
          SHX11_2 = SHX11_2 == SHX10_2
          SHX12_2 = false
          SHX13_2 = false
          SHX14_2 = RageUI
          SHX14_2 = SHX14_2.ItemsSafeZone
          SHX15_2 = SHX7_2
          SHX14_2(SHX15_2)
          SHX14_2 = false
          SHX15_2 = SHX4_2.LeftBadge
          SHX16_2 = RageUI
          SHX16_2 = SHX16_2.BadgeStyle
          SHX16_2 = SHX16_2.None
          if SHX15_2 ~= SHX16_2 then
            SHX15_2 = SHX4_2.LeftBadge
            if nil ~= SHX15_2 then
              goto SHX_LABEL_60
            end
          end
          SHX15_2 = 0
          -- [FIX IF ERROR] Move ::SHX_LABEL_60:: outside nested blocks until all 'goto SHX_LABEL_60' can see it
          ::SHX_LABEL_60::
          if not SHX15_2 then
            SHX15_2 = 27
          end
          SHX16_2 = SHX4_2.RightBadge
          SHX17_2 = RageUI
          SHX17_2 = SHX17_2.BadgeStyle
          SHX17_2 = SHX17_2.None
          if SHX16_2 ~= SHX17_2 then
            SHX16_2 = SHX4_2.RightBadge
            if nil ~= SHX16_2 then
              goto SHX_LABEL_73
            end
          end
          SHX16_2 = 0
          -- [FIX IF ERROR] Move ::SHX_LABEL_73:: outside nested blocks until all 'goto SHX_LABEL_73' can see it
          ::SHX_LABEL_73::
          if not SHX16_2 then
            SHX16_2 = 32
          end
          SHX17_2 = 0
          SHX18_2 = SHX7_2.EnableMouse
          if true == SHX18_2 then
            SHX18_2 = SHX7_2.CursorStyle
            if 0 == SHX18_2 then
              goto SHX_LABEL_84
            end
          end
          SHX18_2 = SHX7_2.CursorStyle
          -- [FIX IF ERROR] Move ::SHX_LABEL_84:: outside nested blocks until all 'goto SHX_LABEL_84' can see it
          ::SHX_LABEL_84::
          if 1 == SHX18_2 then
            SHX18_2 = RageUI
            SHX18_2 = SHX18_2.ItemsMouseBounds
            SHX19_2 = SHX7_2
            SHX20_2 = SHX11_2
            SHX21_2 = SHX10_2
            SHX22_2 = SHX0_1
            SHX18_2 = SHX18_2(SHX19_2, SHX20_2, SHX21_2, SHX22_2)
            SHX14_2 = SHX18_2
          end
          if SHX11_2 then
            SHX18_2 = RenderSprite
            SHX19_2 = SHX0_1.SelectedSprite
            SHX19_2 = SHX19_2.Dictionary
            SHX20_2 = SHX0_1.SelectedSprite
            SHX20_2 = SHX20_2.Texture
            SHX21_2 = SHX7_2.X
            SHX22_2 = SHX7_2.Y
            SHX23_2 = SHX0_1.SelectedSprite
            SHX23_2 = SHX23_2.Y
            SHX22_2 = SHX22_2 + SHX23_2
            SHX23_2 = SHX7_2.SubtitleHeight
            SHX22_2 = SHX22_2 + SHX23_2
            SHX23_2 = RageUI
            SHX23_2 = SHX23_2.ItemOffset
            SHX22_2 = SHX22_2 + SHX23_2
            SHX23_2 = SHX0_1.SelectedSprite
            SHX23_2 = SHX23_2.Width
            SHX24_2 = SHX7_2.WidthOffset
            SHX23_2 = SHX23_2 + SHX24_2
            SHX24_2 = SHX0_1.SelectedSprite
            SHX24_2 = SHX24_2.Height
            SHX18_2(SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
            SHX18_2 = RageUI
            SHX18_2 = SHX18_2.IsMouseInBounds
            SHX19_2 = SHX7_2.X
            SHX20_2 = SHX1_1.LeftArrow
            SHX20_2 = SHX20_2.X
            SHX19_2 = SHX19_2 + SHX20_2
            SHX20_2 = SHX7_2.SafeZoneSize
            SHX20_2 = SHX20_2.X
            SHX19_2 = SHX19_2 + SHX20_2
            SHX20_2 = SHX7_2.WidthOffset
            SHX19_2 = SHX19_2 + SHX20_2
            SHX20_2 = SHX7_2.Y
            SHX21_2 = SHX1_1.LeftArrow
            SHX21_2 = SHX21_2.Y
            SHX20_2 = SHX20_2 + SHX21_2
            SHX21_2 = SHX7_2.SafeZoneSize
            SHX21_2 = SHX21_2.Y
            SHX20_2 = SHX20_2 + SHX21_2
            SHX21_2 = SHX7_2.SubtitleHeight
            SHX20_2 = SHX20_2 + SHX21_2
            SHX21_2 = RageUI
            SHX21_2 = SHX21_2.ItemOffset
            SHX20_2 = SHX20_2 + SHX21_2
            SHX21_2 = SHX1_1.LeftArrow
            SHX21_2 = SHX21_2.Width
            SHX22_2 = SHX1_1.LeftArrow
            SHX22_2 = SHX22_2.Height
            SHX18_2 = SHX18_2(SHX19_2, SHX20_2, SHX21_2, SHX22_2)
            SHX12_2 = SHX18_2
            SHX18_2 = RageUI
            SHX18_2 = SHX18_2.IsMouseInBounds
            SHX19_2 = SHX7_2.X
            SHX20_2 = SHX1_1.RightArrow
            SHX20_2 = SHX20_2.X
            SHX19_2 = SHX19_2 + SHX20_2
            SHX20_2 = SHX7_2.SafeZoneSize
            SHX20_2 = SHX20_2.X
            SHX19_2 = SHX19_2 + SHX20_2
            SHX20_2 = SHX7_2.WidthOffset
            SHX19_2 = SHX19_2 + SHX20_2
            SHX20_2 = SHX7_2.Y
            SHX21_2 = SHX1_1.RightArrow
            SHX21_2 = SHX21_2.Y
            SHX20_2 = SHX20_2 + SHX21_2
            SHX21_2 = SHX7_2.SafeZoneSize
            SHX21_2 = SHX21_2.Y
            SHX20_2 = SHX20_2 + SHX21_2
            SHX21_2 = SHX7_2.SubtitleHeight
            SHX20_2 = SHX20_2 + SHX21_2
            SHX21_2 = RageUI
            SHX21_2 = SHX21_2.ItemOffset
            SHX20_2 = SHX20_2 + SHX21_2
            SHX21_2 = SHX1_1.RightArrow
            SHX21_2 = SHX21_2.Width
            SHX22_2 = SHX1_1.RightArrow
            SHX22_2 = SHX22_2.Height
            SHX18_2 = SHX18_2(SHX19_2, SHX20_2, SHX21_2, SHX22_2)
            SHX13_2 = SHX18_2
          end
          if true == SHX5_2 or nil == SHX5_2 then
            if SHX11_2 then
              SHX18_2 = SHX4_2.RightLabel
              if nil ~= SHX18_2 then
                SHX18_2 = SHX4_2.RightLabel
                if "" ~= SHX18_2 then
                  SHX18_2 = RenderText
                  SHX19_2 = SHX4_2.RightLabel
                  SHX20_2 = SHX7_2.X
                  SHX21_2 = SHX0_1.RightText
                  SHX21_2 = SHX21_2.X
                  SHX20_2 = SHX20_2 + SHX21_2
                  SHX20_2 = SHX20_2 - SHX16_2
                  SHX21_2 = SHX7_2.WidthOffset
                  SHX20_2 = SHX20_2 + SHX21_2
                  SHX21_2 = SHX7_2.Y
                  SHX22_2 = SHX0_1.RightText
                  SHX22_2 = SHX22_2.Y
                  SHX21_2 = SHX21_2 + SHX22_2
                  SHX22_2 = SHX7_2.SubtitleHeight
                  SHX21_2 = SHX21_2 + SHX22_2
                  SHX22_2 = RageUI
                  SHX22_2 = SHX22_2.ItemOffset
                  SHX21_2 = SHX21_2 + SHX22_2
                  SHX22_2 = 0
                  SHX23_2 = SHX0_1.RightText
                  SHX23_2 = SHX23_2.Scale
                  SHX24_2 = 0
                  SHX25_2 = 0
                  SHX26_2 = 0
                  SHX27_2 = 255
                  SHX28_2 = 2
                  SHX18_2(SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
                  SHX18_2 = MeasureStringWidth
                  SHX19_2 = SHX4_2.RightLabel
                  SHX20_2 = 0
                  SHX21_2 = 0.35
                  SHX18_2 = SHX18_2(SHX19_2, SHX20_2, SHX21_2)
                  SHX17_2 = SHX18_2
                end
              end
            else
              SHX18_2 = SHX4_2.RightLabel
              if nil ~= SHX18_2 then
                SHX18_2 = SHX4_2.RightLabel
                if "" ~= SHX18_2 then
                  SHX18_2 = MeasureStringWidth
                  SHX19_2 = SHX4_2.RightLabel
                  SHX20_2 = 0
                  SHX21_2 = 0.35
                  SHX18_2 = SHX18_2(SHX19_2, SHX20_2, SHX21_2)
                  SHX17_2 = SHX18_2
                  SHX18_2 = RenderText
                  SHX19_2 = SHX4_2.RightLabel
                  SHX20_2 = SHX7_2.X
                  SHX21_2 = SHX0_1.RightText
                  SHX21_2 = SHX21_2.X
                  SHX20_2 = SHX20_2 + SHX21_2
                  SHX20_2 = SHX20_2 - SHX16_2
                  SHX21_2 = SHX7_2.WidthOffset
                  SHX20_2 = SHX20_2 + SHX21_2
                  SHX21_2 = SHX7_2.Y
                  SHX22_2 = SHX0_1.RightText
                  SHX22_2 = SHX22_2.Y
                  SHX21_2 = SHX21_2 + SHX22_2
                  SHX22_2 = SHX7_2.SubtitleHeight
                  SHX21_2 = SHX21_2 + SHX22_2
                  SHX22_2 = RageUI
                  SHX22_2 = SHX22_2.ItemOffset
                  SHX21_2 = SHX21_2 + SHX22_2
                  SHX22_2 = 0
                  SHX23_2 = SHX0_1.RightText
                  SHX23_2 = SHX23_2.Scale
                  SHX24_2 = 245
                  SHX25_2 = 245
                  SHX26_2 = 245
                  SHX27_2 = 255
                  SHX28_2 = 2
                  SHX18_2(SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
                end
              end
            end
          end
          SHX17_2 = SHX17_2 + SHX16_2
          if true == SHX5_2 or nil == SHX5_2 then
            if SHX11_2 then
              SHX18_2 = RenderText
              SHX19_2 = SHX0_2
              SHX20_2 = SHX7_2.X
              SHX21_2 = SHX0_1.Text
              SHX21_2 = SHX21_2.X
              SHX20_2 = SHX20_2 + SHX21_2
              SHX20_2 = SHX20_2 + SHX15_2
              SHX21_2 = SHX7_2.Y
              SHX22_2 = SHX0_1.Text
              SHX22_2 = SHX22_2.Y
              SHX21_2 = SHX21_2 + SHX22_2
              SHX22_2 = SHX7_2.SubtitleHeight
              SHX21_2 = SHX21_2 + SHX22_2
              SHX22_2 = RageUI
              SHX22_2 = SHX22_2.ItemOffset
              SHX21_2 = SHX21_2 + SHX22_2
              SHX22_2 = 0
              SHX23_2 = SHX0_1.Text
              SHX23_2 = SHX23_2.Scale
              SHX24_2 = 0
              SHX25_2 = 0
              SHX26_2 = 0
              SHX27_2 = 255
              SHX18_2(SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2)
              SHX18_2 = RenderSprite
              SHX19_2 = SHX1_1.LeftArrow
              SHX19_2 = SHX19_2.Dictionary
              SHX20_2 = SHX1_1.LeftArrow
              SHX20_2 = SHX20_2.Texture
              SHX21_2 = SHX7_2.X
              SHX22_2 = SHX1_1.LeftArrow
              SHX22_2 = SHX22_2.X
              SHX21_2 = SHX21_2 + SHX22_2
              SHX22_2 = SHX7_2.WidthOffset
              SHX21_2 = SHX21_2 + SHX22_2
              SHX21_2 = SHX21_2 - SHX17_2
              SHX22_2 = SHX7_2.Y
              SHX23_2 = SHX1_1.LeftArrow
              SHX23_2 = SHX23_2.Y
              SHX22_2 = SHX22_2 + SHX23_2
              SHX23_2 = SHX7_2.SubtitleHeight
              SHX22_2 = SHX22_2 + SHX23_2
              SHX23_2 = RageUI
              SHX23_2 = SHX23_2.ItemOffset
              SHX22_2 = SHX22_2 + SHX23_2
              SHX23_2 = SHX1_1.LeftArrow
              SHX23_2 = SHX23_2.Width
              SHX24_2 = SHX1_1.LeftArrow
              SHX24_2 = SHX24_2.Height
              SHX25_2 = 0
              SHX26_2 = 0
              SHX27_2 = 0
              SHX28_2 = 0
              SHX29_2 = 255
              SHX18_2(SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2)
              SHX18_2 = RenderSprite
              SHX19_2 = SHX1_1.RightArrow
              SHX19_2 = SHX19_2.Dictionary
              SHX20_2 = SHX1_1.RightArrow
              SHX20_2 = SHX20_2.Texture
              SHX21_2 = SHX7_2.X
              SHX22_2 = SHX1_1.RightArrow
              SHX22_2 = SHX22_2.X
              SHX21_2 = SHX21_2 + SHX22_2
              SHX22_2 = SHX7_2.WidthOffset
              SHX21_2 = SHX21_2 + SHX22_2
              SHX21_2 = SHX21_2 - SHX17_2
              SHX22_2 = SHX7_2.Y
              SHX23_2 = SHX1_1.RightArrow
              SHX23_2 = SHX23_2.Y
              SHX22_2 = SHX22_2 + SHX23_2
              SHX23_2 = SHX7_2.SubtitleHeight
              SHX22_2 = SHX22_2 + SHX23_2
              SHX23_2 = RageUI
              SHX23_2 = SHX23_2.ItemOffset
              SHX22_2 = SHX22_2 + SHX23_2
              SHX23_2 = SHX1_1.RightArrow
              SHX23_2 = SHX23_2.Width
              SHX24_2 = SHX1_1.RightArrow
              SHX24_2 = SHX24_2.Height
              SHX25_2 = 0
              SHX26_2 = 0
              SHX27_2 = 0
              SHX28_2 = 0
              SHX29_2 = 255
              SHX18_2(SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2)
            else
              SHX18_2 = RenderText
              SHX19_2 = SHX0_2
              SHX20_2 = SHX7_2.X
              SHX21_2 = SHX0_1.Text
              SHX21_2 = SHX21_2.X
              SHX20_2 = SHX20_2 + SHX21_2
              SHX20_2 = SHX20_2 + SHX15_2
              SHX21_2 = SHX7_2.Y
              SHX22_2 = SHX0_1.Text
              SHX22_2 = SHX22_2.Y
              SHX21_2 = SHX21_2 + SHX22_2
              SHX22_2 = SHX7_2.SubtitleHeight
              SHX21_2 = SHX21_2 + SHX22_2
              SHX22_2 = RageUI
              SHX22_2 = SHX22_2.ItemOffset
              SHX21_2 = SHX21_2 + SHX22_2
              SHX22_2 = 0
              SHX23_2 = SHX0_1.Text
              SHX23_2 = SHX23_2.Scale
              SHX24_2 = 245
              SHX25_2 = 245
              SHX26_2 = 245
              SHX27_2 = 255
              SHX18_2(SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2)
            end
          else
            SHX18_2 = RenderText
            SHX19_2 = SHX0_2
            SHX20_2 = SHX7_2.X
            SHX21_2 = SHX0_1.Text
            SHX21_2 = SHX21_2.X
            SHX20_2 = SHX20_2 + SHX21_2
            SHX20_2 = SHX20_2 + SHX15_2
            SHX21_2 = SHX7_2.Y
            SHX22_2 = SHX0_1.Text
            SHX22_2 = SHX22_2.Y
            SHX21_2 = SHX21_2 + SHX22_2
            SHX22_2 = SHX7_2.SubtitleHeight
            SHX21_2 = SHX21_2 + SHX22_2
            SHX22_2 = RageUI
            SHX22_2 = SHX22_2.ItemOffset
            SHX21_2 = SHX21_2 + SHX22_2
            SHX22_2 = 0
            SHX23_2 = SHX0_1.Text
            SHX23_2 = SHX23_2.Scale
            SHX24_2 = 163
            SHX25_2 = 159
            SHX26_2 = 148
            SHX27_2 = 255
            SHX18_2(SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2)
            if SHX11_2 then
              SHX18_2 = RenderSprite
              SHX19_2 = SHX1_1.LeftArrow
              SHX19_2 = SHX19_2.Dictionary
              SHX20_2 = SHX1_1.LeftArrow
              SHX20_2 = SHX20_2.Texture
              SHX21_2 = SHX7_2.X
              SHX22_2 = SHX1_1.LeftArrow
              SHX22_2 = SHX22_2.X
              SHX21_2 = SHX21_2 + SHX22_2
              SHX22_2 = SHX7_2.WidthOffset
              SHX21_2 = SHX21_2 + SHX22_2
              SHX21_2 = SHX21_2 - SHX17_2
              SHX22_2 = SHX7_2.Y
              SHX23_2 = SHX1_1.LeftArrow
              SHX23_2 = SHX23_2.Y
              SHX22_2 = SHX22_2 + SHX23_2
              SHX23_2 = SHX7_2.SubtitleHeight
              SHX22_2 = SHX22_2 + SHX23_2
              SHX23_2 = RageUI
              SHX23_2 = SHX23_2.ItemOffset
              SHX22_2 = SHX22_2 + SHX23_2
              SHX23_2 = SHX1_1.LeftArrow
              SHX23_2 = SHX23_2.Width
              SHX24_2 = SHX1_1.LeftArrow
              SHX24_2 = SHX24_2.Height
              SHX25_2 = 163
              SHX26_2 = 159
              SHX27_2 = 148
              SHX28_2 = 255
              SHX18_2(SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
              SHX18_2 = RenderSprite
              SHX19_2 = SHX1_1.RightArrow
              SHX19_2 = SHX19_2.Dictionary
              SHX20_2 = SHX1_1.RightArrow
              SHX20_2 = SHX20_2.Texture
              SHX21_2 = SHX7_2.X
              SHX22_2 = SHX1_1.RightArrow
              SHX22_2 = SHX22_2.X
              SHX21_2 = SHX21_2 + SHX22_2
              SHX22_2 = SHX7_2.WidthOffset
              SHX21_2 = SHX21_2 + SHX22_2
              SHX21_2 = SHX21_2 - SHX17_2
              SHX22_2 = SHX7_2.Y
              SHX23_2 = SHX1_1.RightArrow
              SHX23_2 = SHX23_2.Y
              SHX22_2 = SHX22_2 + SHX23_2
              SHX23_2 = SHX7_2.SubtitleHeight
              SHX22_2 = SHX22_2 + SHX23_2
              SHX23_2 = RageUI
              SHX23_2 = SHX23_2.ItemOffset
              SHX22_2 = SHX22_2 + SHX23_2
              SHX23_2 = SHX1_1.RightArrow
              SHX23_2 = SHX23_2.Width
              SHX24_2 = SHX1_1.RightArrow
              SHX24_2 = SHX24_2.Height
              SHX25_2 = 163
              SHX26_2 = 159
              SHX27_2 = 148
              SHX28_2 = 255
              SHX18_2(SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
            end
          end
          SHX18_2 = type
          SHX19_2 = SHX4_2
          SHX18_2 = SHX18_2(SHX19_2)
          if "table" == SHX18_2 then
            SHX18_2 = SHX4_2.Enabled
            if true ~= SHX18_2 then
              SHX18_2 = SHX4_2.Enabled
              if nil ~= SHX18_2 then
                goto SHX_LABEL_702
              end
            end
            SHX18_2 = type
            SHX19_2 = SHX4_2
            SHX18_2 = SHX18_2(SHX19_2)
            if "table" ~= SHX18_2 then
              goto SHX_LABEL_767
            end
            SHX18_2 = SHX4_2.LeftBadge
            if nil ~= SHX18_2 then
              SHX18_2 = SHX4_2.LeftBadge
              SHX19_2 = RageUI
              SHX19_2 = SHX19_2.BadgeStyle
              SHX19_2 = SHX19_2.None
              if SHX18_2 ~= SHX19_2 then
                SHX18_2 = SHX4_2.LeftBadge
                SHX19_2 = SHX11_2
                SHX18_2 = SHX18_2(SHX19_2)
                SHX19_2 = RenderSprite
                SHX20_2 = SHX18_2.BadgeDictionary
                if not SHX20_2 then
                  SHX20_2 = "commonmenu"
                end
                SHX21_2 = SHX18_2.BadgeTexture
                if not SHX21_2 then
                  SHX21_2 = ""
                end
                SHX22_2 = SHX7_2.X
                SHX23_2 = SHX7_2.Y
                SHX24_2 = SHX0_1.LeftBadge
                SHX24_2 = SHX24_2.Y
                SHX23_2 = SHX23_2 + SHX24_2
                SHX24_2 = SHX7_2.SubtitleHeight
                SHX23_2 = SHX23_2 + SHX24_2
                SHX24_2 = RageUI
                SHX24_2 = SHX24_2.ItemOffset
                SHX23_2 = SHX23_2 + SHX24_2
                SHX24_2 = SHX0_1.LeftBadge
                SHX24_2 = SHX24_2.Width
                SHX25_2 = SHX0_1.LeftBadge
                SHX25_2 = SHX25_2.Height
                SHX26_2 = 0
                SHX27_2 = SHX18_2.BadgeColour
                if SHX27_2 then
                  SHX27_2 = SHX18_2.BadgeColour
                  SHX27_2 = SHX27_2.R
                  if SHX27_2 then
                    goto SHX_LABEL_597
                  end
                end
                SHX27_2 = 255
                -- [FIX IF ERROR] Move ::SHX_LABEL_597:: outside nested blocks until all 'goto SHX_LABEL_597' can see it
                ::SHX_LABEL_597::
                SHX28_2 = SHX18_2.BadgeColour
                if SHX28_2 then
                  SHX28_2 = SHX18_2.BadgeColour
                  SHX28_2 = SHX28_2.G
                  if SHX28_2 then
                    goto SHX_LABEL_605
                  end
                end
                SHX28_2 = 255
                -- [FIX IF ERROR] Move ::SHX_LABEL_605:: outside nested blocks until all 'goto SHX_LABEL_605' can see it
                ::SHX_LABEL_605::
                SHX29_2 = SHX18_2.BadgeColour
                if SHX29_2 then
                  SHX29_2 = SHX18_2.BadgeColour
                  SHX29_2 = SHX29_2.B
                  if SHX29_2 then
                    goto SHX_LABEL_613
                  end
                end
                SHX29_2 = 255
                -- [FIX IF ERROR] Move ::SHX_LABEL_613:: outside nested blocks until all 'goto SHX_LABEL_613' can see it
                ::SHX_LABEL_613::
                SHX30_2 = SHX18_2.BadgeColour
                if SHX30_2 then
                  SHX30_2 = SHX18_2.BadgeColour
                  SHX30_2 = SHX30_2.A
                  if SHX30_2 then
                    goto SHX_LABEL_621
                  end
                end
                SHX30_2 = 255
                -- [FIX IF ERROR] Move ::SHX_LABEL_621:: outside nested blocks until all 'goto SHX_LABEL_621' can see it
                ::SHX_LABEL_621::
                SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2)
              end
            end
            SHX18_2 = SHX4_2.RightBadge
            if nil == SHX18_2 then
              goto SHX_LABEL_767
            end
            SHX18_2 = SHX4_2.RightBadge
            SHX19_2 = RageUI
            SHX19_2 = SHX19_2.BadgeStyle
            SHX19_2 = SHX19_2.None
            if SHX18_2 == SHX19_2 then
              goto SHX_LABEL_767
            end
            SHX18_2 = SHX4_2.RightBadge
            SHX19_2 = SHX11_2
            SHX18_2 = SHX18_2(SHX19_2)
            SHX19_2 = RenderSprite
            SHX20_2 = SHX18_2.BadgeDictionary
            if not SHX20_2 then
              SHX20_2 = "commonmenu"
            end
            SHX21_2 = SHX18_2.BadgeTexture
            if not SHX21_2 then
              SHX21_2 = ""
            end
            SHX22_2 = SHX7_2.X
            SHX23_2 = SHX0_1.RightBadge
            SHX23_2 = SHX23_2.X
            SHX22_2 = SHX22_2 + SHX23_2
            SHX23_2 = SHX7_2.WidthOffset
            SHX22_2 = SHX22_2 + SHX23_2
            SHX23_2 = SHX7_2.Y
            SHX24_2 = SHX0_1.RightBadge
            SHX24_2 = SHX24_2.Y
            SHX23_2 = SHX23_2 + SHX24_2
            SHX24_2 = SHX7_2.SubtitleHeight
            SHX23_2 = SHX23_2 + SHX24_2
            SHX24_2 = RageUI
            SHX24_2 = SHX24_2.ItemOffset
            SHX23_2 = SHX23_2 + SHX24_2
            SHX24_2 = SHX0_1.RightBadge
            SHX24_2 = SHX24_2.Width
            SHX25_2 = SHX0_1.RightBadge
            SHX25_2 = SHX25_2.Height
            SHX26_2 = 0
            SHX27_2 = SHX18_2.BadgeColour
            if SHX27_2 then
              SHX27_2 = SHX18_2.BadgeColour
              SHX27_2 = SHX27_2.R
              if SHX27_2 then
                goto SHX_LABEL_676
              end
            end
            SHX27_2 = 255
            -- [FIX IF ERROR] Move ::SHX_LABEL_676:: outside nested blocks until all 'goto SHX_LABEL_676' can see it
            ::SHX_LABEL_676::
            SHX28_2 = SHX18_2.BadgeColour
            if SHX28_2 then
              SHX28_2 = SHX18_2.BadgeColour
              SHX28_2 = SHX28_2.G
              if SHX28_2 then
                goto SHX_LABEL_684
              end
            end
            SHX28_2 = 255
            -- [FIX IF ERROR] Move ::SHX_LABEL_684:: outside nested blocks until all 'goto SHX_LABEL_684' can see it
            ::SHX_LABEL_684::
            SHX29_2 = SHX18_2.BadgeColour
            if SHX29_2 then
              SHX29_2 = SHX18_2.BadgeColour
              SHX29_2 = SHX29_2.B
              if SHX29_2 then
                goto SHX_LABEL_692
              end
            end
            SHX29_2 = 255
            -- [FIX IF ERROR] Move ::SHX_LABEL_692:: outside nested blocks until all 'goto SHX_LABEL_692' can see it
            ::SHX_LABEL_692::
            SHX30_2 = SHX18_2.BadgeColour
            if SHX30_2 then
              SHX30_2 = SHX18_2.BadgeColour
              SHX30_2 = SHX30_2.A
              if SHX30_2 then
                goto SHX_LABEL_700
              end
            end
            SHX30_2 = 255
            -- [FIX IF ERROR] Move ::SHX_LABEL_700:: outside nested blocks until all 'goto SHX_LABEL_700' can see it
            ::SHX_LABEL_700::
            SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2)
            goto SHX_LABEL_767
            -- [FIX IF ERROR] Move ::SHX_LABEL_702:: outside nested blocks until all 'goto SHX_LABEL_702' can see it
            ::SHX_LABEL_702::
            SHX18_2 = RageUI
            SHX18_2 = SHX18_2.BadgeStyle
            SHX18_2 = SHX18_2.Lock
            SHX19_2 = RageUI
            SHX19_2 = SHX19_2.BadgeStyle
            SHX19_2 = SHX19_2.None
            if SHX18_2 ~= SHX19_2 and nil ~= SHX18_2 then
              SHX19_2 = SHX18_2
              SHX20_2 = SHX11_2
              SHX19_2 = SHX19_2(SHX20_2)
              SHX20_2 = RenderSprite
              SHX21_2 = SHX19_2.BadgeDictionary
              if not SHX21_2 then
                SHX21_2 = "commonmenu"
              end
              SHX22_2 = SHX19_2.BadgeTexture
              if not SHX22_2 then
                SHX22_2 = ""
              end
              SHX23_2 = SHX7_2.X
              SHX24_2 = SHX7_2.Y
              SHX25_2 = SHX0_1.LeftBadge
              SHX25_2 = SHX25_2.Y
              SHX24_2 = SHX24_2 + SHX25_2
              SHX25_2 = SHX7_2.SubtitleHeight
              SHX24_2 = SHX24_2 + SHX25_2
              SHX25_2 = RageUI
              SHX25_2 = SHX25_2.ItemOffset
              SHX24_2 = SHX24_2 + SHX25_2
              SHX25_2 = SHX0_1.LeftBadge
              SHX25_2 = SHX25_2.Width
              SHX26_2 = SHX0_1.LeftBadge
              SHX26_2 = SHX26_2.Height
              SHX27_2 = 0
              SHX28_2 = SHX19_2.BadgeColour
              SHX28_2 = SHX28_2.R
              if not SHX28_2 then
                SHX28_2 = 255
              end
              SHX29_2 = SHX19_2.BadgeColour
              SHX29_2 = SHX29_2.G
              if not SHX29_2 then
                SHX29_2 = 255
              end
              SHX30_2 = SHX19_2.BadgeColour
              SHX30_2 = SHX30_2.B
              if not SHX30_2 then
                SHX30_2 = 255
              end
              SHX31_2 = SHX19_2.BadgeColour
              SHX31_2 = SHX31_2.A
              if not SHX31_2 then
                SHX31_2 = 255
              end
              SHX20_2(SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2)
            end
          else
            SHX18_2 = error
            SHX19_2 = "UICheckBox Style is not a `table`"
            SHX18_2(SHX19_2)
          end
          -- [FIX IF ERROR] Move ::SHX_LABEL_767:: outside nested blocks until all 'goto SHX_LABEL_767' can see it
          ::SHX_LABEL_767::
          SHX18_2 = type
          SHX19_2 = SHX4_2.ProgressBackgroundColor
          SHX18_2 = SHX18_2(SHX19_2)
          if "table" == SHX18_2 then
            SHX18_2 = RenderRectangle
            SHX19_2 = SHX7_2.X
            SHX20_2 = SHX1_1.Background
            SHX20_2 = SHX20_2.X
            SHX19_2 = SHX19_2 + SHX20_2
            SHX20_2 = SHX7_2.WidthOffset
            SHX19_2 = SHX19_2 + SHX20_2
            SHX19_2 = SHX19_2 - SHX17_2
            SHX20_2 = SHX7_2.Y
            SHX21_2 = SHX1_1.Background
            SHX21_2 = SHX21_2.Y
            SHX20_2 = SHX20_2 + SHX21_2
            SHX21_2 = SHX7_2.SubtitleHeight
            SHX20_2 = SHX20_2 + SHX21_2
            SHX21_2 = RageUI
            SHX21_2 = SHX21_2.ItemOffset
            SHX20_2 = SHX20_2 + SHX21_2
            SHX21_2 = SHX1_1.Background
            SHX21_2 = SHX21_2.Width
            SHX22_2 = SHX1_1.Background
            SHX22_2 = SHX22_2.Height
            SHX23_2 = SHX4_2.ProgressBackgroundColor
            SHX23_2 = SHX23_2.R
            SHX24_2 = SHX4_2.ProgressBackgroundColor
            SHX24_2 = SHX24_2.G
            SHX25_2 = SHX4_2.ProgressBackgroundColor
            SHX25_2 = SHX25_2.B
            SHX26_2 = SHX4_2.ProgressBackgroundColor
            SHX26_2 = SHX26_2.A
            SHX18_2(SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
          else
            SHX18_2 = error
            SHX19_2 = "Style ProgressBackgroundColor is not a table or undefined"
            SHX18_2(SHX19_2)
          end
          SHX18_2 = type
          SHX19_2 = SHX4_2.ProgressColor
          SHX18_2 = SHX18_2(SHX19_2)
          if "table" == SHX18_2 then
            SHX18_2 = RenderRectangle
            SHX19_2 = SHX7_2.X
            SHX20_2 = SHX1_1.Slider
            SHX20_2 = SHX20_2.X
            SHX19_2 = SHX19_2 + SHX20_2
            SHX20_2 = SHX7_2.WidthOffset
            SHX19_2 = SHX19_2 + SHX20_2
            SHX19_2 = SHX19_2 - SHX17_2
            SHX20_2 = SHX7_2.Y
            SHX21_2 = SHX1_1.Slider
            SHX21_2 = SHX21_2.Y
            SHX20_2 = SHX20_2 + SHX21_2
            SHX21_2 = SHX7_2.SubtitleHeight
            SHX20_2 = SHX20_2 + SHX21_2
            SHX21_2 = RageUI
            SHX21_2 = SHX21_2.ItemOffset
            SHX20_2 = SHX20_2 + SHX21_2
            SHX21_2 = SHX1_1.Slider
            SHX21_2 = SHX21_2.Width
            SHX22_2 = #SHX9_2
            SHX22_2 = SHX22_2 - 1
            SHX21_2 = SHX21_2 / SHX22_2
            SHX22_2 = SHX1_2 - 1
            SHX21_2 = SHX21_2 * SHX22_2
            SHX22_2 = SHX1_1.Slider
            SHX22_2 = SHX22_2.Height
            SHX23_2 = SHX4_2.ProgressColor
            SHX23_2 = SHX23_2.R
            SHX24_2 = SHX4_2.ProgressColor
            SHX24_2 = SHX24_2.G
            SHX25_2 = SHX4_2.ProgressColor
            SHX25_2 = SHX25_2.B
            SHX26_2 = SHX4_2.ProgressColor
            SHX26_2 = SHX26_2.A
            SHX18_2(SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
          else
            SHX18_2 = error
            SHX19_2 = "Style ProgressColor is not a table or undefined"
            SHX18_2(SHX19_2)
          end
          SHX18_2 = RageUI
          SHX19_2 = RageUI
          SHX19_2 = SHX19_2.ItemOffset
          SHX20_2 = SHX0_1.Rectangle
          SHX20_2 = SHX20_2.Height
          SHX19_2 = SHX19_2 + SHX20_2
          SHX18_2.ItemOffset = SHX19_2
          SHX18_2 = RageUI
          SHX18_2 = SHX18_2.ItemsDescription
          SHX19_2 = SHX7_2
          SHX20_2 = SHX3_2
          SHX21_2 = SHX11_2
          SHX18_2(SHX19_2, SHX20_2, SHX21_2)
          if SHX11_2 then
            SHX18_2 = SHX7_2.Controls
            SHX18_2 = SHX18_2.Left
            SHX18_2 = SHX18_2.Active
            if not SHX18_2 then
              SHX18_2 = SHX7_2.Controls
              SHX18_2 = SHX18_2.Click
              SHX18_2 = SHX18_2.Active
              if not (SHX18_2 and SHX12_2) then
                goto SHX_LABEL_923
              end
            end
            SHX18_2 = SHX7_2.Controls
            SHX18_2 = SHX18_2.Right
            SHX18_2 = SHX18_2.Active
            if not SHX18_2 then
              SHX18_2 = SHX7_2.Controls
              SHX18_2 = SHX18_2.Click
              SHX18_2 = SHX18_2.Active
              if not SHX18_2 or not SHX13_2 then
                SHX1_2 = SHX1_2 - 1
                if SHX1_2 < 1 then
                  SHX1_2 = #SHX9_2
                end
                SHX18_2 = RageUI
                SHX18_2 = SHX18_2.PlaySound
                SHX19_2 = SHX8_2.Use
                SHX19_2 = SHX8_2[SHX19_2]
                SHX19_2 = SHX19_2.LeftRight
                SHX19_2 = SHX19_2.audioName
                SHX20_2 = SHX8_2.Use
                SHX20_2 = SHX8_2[SHX20_2]
                SHX20_2 = SHX20_2.LeftRight
                SHX20_2 = SHX20_2.audioRef
                SHX18_2(SHX19_2, SHX20_2)
            end
          end
          else
            -- [FIX IF ERROR] Move ::SHX_LABEL_923:: outside nested blocks until all 'goto SHX_LABEL_923' can see it
            ::SHX_LABEL_923::
            if SHX11_2 then
              SHX18_2 = SHX7_2.Controls
              SHX18_2 = SHX18_2.Right
              SHX18_2 = SHX18_2.Active
              if not SHX18_2 then
                SHX18_2 = SHX7_2.Controls
                SHX18_2 = SHX18_2.Click
                SHX18_2 = SHX18_2.Active
                if not (SHX18_2 and SHX13_2) then
                  goto SHX_LABEL_966
                end
              end
              SHX18_2 = SHX7_2.Controls
              SHX18_2 = SHX18_2.Left
              SHX18_2 = SHX18_2.Active
              if not SHX18_2 then
                SHX18_2 = SHX7_2.Controls
                SHX18_2 = SHX18_2.Click
                SHX18_2 = SHX18_2.Active
                if not SHX18_2 or not SHX12_2 then
                  SHX1_2 = SHX1_2 + 1
                  SHX18_2 = #SHX9_2
                  if SHX1_2 > SHX18_2 then
                    SHX1_2 = 1
                  end
                  SHX18_2 = RageUI
                  SHX18_2 = SHX18_2.PlaySound
                  SHX19_2 = SHX8_2.Use
                  SHX19_2 = SHX8_2[SHX19_2]
                  SHX19_2 = SHX19_2.LeftRight
                  SHX19_2 = SHX19_2.audioName
                  SHX20_2 = SHX8_2.Use
                  SHX20_2 = SHX8_2[SHX20_2]
                  SHX20_2 = SHX20_2.LeftRight
                  SHX20_2 = SHX20_2.audioRef
                  SHX18_2(SHX19_2, SHX20_2)
                end
              end
            end
          end
          -- [FIX IF ERROR] Move ::SHX_LABEL_966:: outside nested blocks until all 'goto SHX_LABEL_966' can see it
          ::SHX_LABEL_966::
          if SHX11_2 then
            SHX18_2 = SHX7_2.Controls
            SHX18_2 = SHX18_2.Select
            SHX18_2 = SHX18_2.Active
            if not SHX18_2 then
              if not SHX14_2 then
                goto SHX_LABEL_995
              end
              SHX18_2 = SHX7_2.Controls
              SHX18_2 = SHX18_2.Click
              SHX18_2 = SHX18_2.Active
              if not SHX18_2 or SHX12_2 or SHX13_2 then
                goto SHX_LABEL_995
              end
            end
            SHX18_2 = RageUI
            SHX18_2 = SHX18_2.PlaySound
            SHX19_2 = SHX8_2.Use
            SHX19_2 = SHX8_2[SHX19_2]
            SHX19_2 = SHX19_2.Select
            SHX19_2 = SHX19_2.audioName
            SHX20_2 = SHX8_2.Use
            SHX20_2 = SHX8_2[SHX20_2]
            SHX20_2 = SHX20_2.Select
            SHX20_2 = SHX20_2.audioRef
            SHX18_2(SHX19_2, SHX20_2)
          end
          -- [FIX IF ERROR] Move ::SHX_LABEL_995:: outside nested blocks until all 'goto SHX_LABEL_995' can see it
          ::SHX_LABEL_995::
          if SHX5_2 then
            SHX18_2 = SHX6_2
            SHX19_2 = SHX14_2
            SHX20_2 = SHX11_2
            SHX21_2 = SHX7_2.Controls
            SHX21_2 = SHX21_2.Select
            SHX21_2 = SHX21_2.Active
            if not SHX21_2 then
              if not SHX14_2 then
                goto SHX_LABEL_1020
                SHX21_2 = SHX14_2 or SHX21_2
              end
              SHX21_2 = SHX7_2.Controls
              SHX21_2 = SHX21_2.Click
              SHX21_2 = SHX21_2.Active
            end
            SHX21_2 = SHX21_2 and not SHX12_2 and not SHX13_2 and SHX21_2
            -- [FIX IF ERROR] Move ::SHX_LABEL_1020:: outside nested blocks until all 'goto SHX_LABEL_1020' can see it
            ::SHX_LABEL_1020::
            SHX22_2 = SHX1_2
            SHX18_2(SHX19_2, SHX20_2, SHX21_2, SHX22_2)
          end
        end
      end
      SHX11_2 = RageUI
      SHX12_2 = RageUI
      SHX12_2 = SHX12_2.Options
      SHX12_2 = SHX12_2 + 1
      SHX11_2.Options = SHX12_2
    end
  end
end
SHX2_1.SliderProgress = SHX3_1
