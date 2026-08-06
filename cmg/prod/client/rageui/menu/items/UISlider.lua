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
function SHX3_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2
  SHX8_2 = RageUI
  SHX8_2 = SHX8_2.CurrentMenu
  SHX9_2 = RageUI
  SHX9_2 = SHX9_2.Settings
  SHX9_2 = SHX9_2.Audio
  if nil ~= SHX8_2 then
    SHX10_2 = SHX8_2
    SHX10_2 = SHX10_2()
    if SHX10_2 then
      SHX10_2 = {}
      SHX11_2 = 1
      SHX12_2 = SHX2_2
      SHX13_2 = 1
      for SHX14_2 = SHX11_2, SHX12_2, SHX13_2 do
        SHX15_2 = table
        SHX15_2 = SHX15_2.insert
        SHX16_2 = SHX10_2
        SHX17_2 = SHX14_2
        SHX15_2(SHX16_2, SHX17_2)
      end
      SHX11_2 = RageUI
      SHX11_2 = SHX11_2.Options
      SHX11_2 = SHX11_2 + 1
      SHX12_2 = SHX8_2.Pagination
      SHX12_2 = SHX12_2.Minimum
      if SHX11_2 >= SHX12_2 then
        SHX12_2 = SHX8_2.Pagination
        SHX12_2 = SHX12_2.Maximum
        if SHX11_2 <= SHX12_2 then
          SHX12_2 = SHX8_2.Index
          SHX12_2 = SHX12_2 == SHX11_2
          SHX13_2 = false
          SHX14_2 = false
          SHX15_2 = RageUI
          SHX15_2 = SHX15_2.ItemsSafeZone
          SHX16_2 = SHX8_2
          SHX15_2(SHX16_2)
          SHX15_2 = false
          SHX16_2 = SHX5_2.LeftBadge
          SHX17_2 = RageUI
          SHX17_2 = SHX17_2.BadgeStyle
          SHX17_2 = SHX17_2.None
          if SHX16_2 ~= SHX17_2 then
            SHX16_2 = SHX5_2.LeftBadge
            if nil ~= SHX16_2 then
              goto SHX_LABEL_60
            end
          end
          SHX16_2 = 0
          -- [FIX IF ERROR] Move ::SHX_LABEL_60:: outside nested blocks until all 'goto SHX_LABEL_60' can see it
          ::SHX_LABEL_60::
          if not SHX16_2 then
            SHX16_2 = 27
          end
          SHX17_2 = SHX5_2.RightBadge
          SHX18_2 = RageUI
          SHX18_2 = SHX18_2.BadgeStyle
          SHX18_2 = SHX18_2.None
          if SHX17_2 ~= SHX18_2 then
            SHX17_2 = SHX5_2.RightBadge
            if nil ~= SHX17_2 then
              goto SHX_LABEL_73
            end
          end
          SHX17_2 = 0
          -- [FIX IF ERROR] Move ::SHX_LABEL_73:: outside nested blocks until all 'goto SHX_LABEL_73' can see it
          ::SHX_LABEL_73::
          if not SHX17_2 then
            SHX17_2 = 32
          end
          SHX18_2 = 0
          SHX19_2 = SHX8_2.EnableMouse
          if true == SHX19_2 then
            SHX19_2 = SHX8_2.CursorStyle
            if 0 == SHX19_2 then
              goto SHX_LABEL_84
            end
          end
          SHX19_2 = SHX8_2.CursorStyle
          -- [FIX IF ERROR] Move ::SHX_LABEL_84:: outside nested blocks until all 'goto SHX_LABEL_84' can see it
          ::SHX_LABEL_84::
          if 1 == SHX19_2 then
            SHX19_2 = RageUI
            SHX19_2 = SHX19_2.ItemsMouseBounds
            SHX20_2 = SHX8_2
            SHX21_2 = SHX12_2
            SHX22_2 = SHX11_2
            SHX23_2 = SHX0_1
            SHX19_2 = SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2)
            SHX15_2 = SHX19_2
          end
          if SHX12_2 then
            SHX19_2 = RenderSprite
            SHX20_2 = SHX0_1.SelectedSprite
            SHX20_2 = SHX20_2.Dictionary
            SHX21_2 = SHX0_1.SelectedSprite
            SHX21_2 = SHX21_2.Texture
            SHX22_2 = SHX8_2.X
            SHX23_2 = SHX8_2.Y
            SHX24_2 = SHX0_1.SelectedSprite
            SHX24_2 = SHX24_2.Y
            SHX23_2 = SHX23_2 + SHX24_2
            SHX24_2 = SHX8_2.SubtitleHeight
            SHX23_2 = SHX23_2 + SHX24_2
            SHX24_2 = RageUI
            SHX24_2 = SHX24_2.ItemOffset
            SHX23_2 = SHX23_2 + SHX24_2
            SHX24_2 = SHX0_1.SelectedSprite
            SHX24_2 = SHX24_2.Width
            SHX25_2 = SHX8_2.WidthOffset
            SHX24_2 = SHX24_2 + SHX25_2
            SHX25_2 = SHX0_1.SelectedSprite
            SHX25_2 = SHX25_2.Height
            SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
            SHX19_2 = RageUI
            SHX19_2 = SHX19_2.IsMouseInBounds
            SHX20_2 = SHX8_2.X
            SHX21_2 = SHX1_1.LeftArrow
            SHX21_2 = SHX21_2.X
            SHX20_2 = SHX20_2 + SHX21_2
            SHX21_2 = SHX8_2.SafeZoneSize
            SHX21_2 = SHX21_2.X
            SHX20_2 = SHX20_2 + SHX21_2
            SHX21_2 = SHX8_2.WidthOffset
            SHX20_2 = SHX20_2 + SHX21_2
            SHX21_2 = SHX8_2.Y
            SHX22_2 = SHX1_1.LeftArrow
            SHX22_2 = SHX22_2.Y
            SHX21_2 = SHX21_2 + SHX22_2
            SHX22_2 = SHX8_2.SafeZoneSize
            SHX22_2 = SHX22_2.Y
            SHX21_2 = SHX21_2 + SHX22_2
            SHX22_2 = SHX8_2.SubtitleHeight
            SHX21_2 = SHX21_2 + SHX22_2
            SHX22_2 = RageUI
            SHX22_2 = SHX22_2.ItemOffset
            SHX21_2 = SHX21_2 + SHX22_2
            SHX22_2 = SHX1_1.LeftArrow
            SHX22_2 = SHX22_2.Width
            SHX23_2 = SHX1_1.LeftArrow
            SHX23_2 = SHX23_2.Height
            SHX19_2 = SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2)
            SHX13_2 = SHX19_2
            SHX19_2 = RageUI
            SHX19_2 = SHX19_2.IsMouseInBounds
            SHX20_2 = SHX8_2.X
            SHX21_2 = SHX1_1.RightArrow
            SHX21_2 = SHX21_2.X
            SHX20_2 = SHX20_2 + SHX21_2
            SHX21_2 = SHX8_2.SafeZoneSize
            SHX21_2 = SHX21_2.X
            SHX20_2 = SHX20_2 + SHX21_2
            SHX21_2 = SHX8_2.WidthOffset
            SHX20_2 = SHX20_2 + SHX21_2
            SHX21_2 = SHX8_2.Y
            SHX22_2 = SHX1_1.RightArrow
            SHX22_2 = SHX22_2.Y
            SHX21_2 = SHX21_2 + SHX22_2
            SHX22_2 = SHX8_2.SafeZoneSize
            SHX22_2 = SHX22_2.Y
            SHX21_2 = SHX21_2 + SHX22_2
            SHX22_2 = SHX8_2.SubtitleHeight
            SHX21_2 = SHX21_2 + SHX22_2
            SHX22_2 = RageUI
            SHX22_2 = SHX22_2.ItemOffset
            SHX21_2 = SHX21_2 + SHX22_2
            SHX22_2 = SHX1_1.RightArrow
            SHX22_2 = SHX22_2.Width
            SHX23_2 = SHX1_1.RightArrow
            SHX23_2 = SHX23_2.Height
            SHX19_2 = SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2)
            SHX14_2 = SHX19_2
          end
          if true == SHX6_2 or nil == SHX6_2 then
            if SHX12_2 then
              SHX19_2 = SHX5_2.RightLabel
              if nil ~= SHX19_2 then
                SHX19_2 = SHX5_2.RightLabel
                if "" ~= SHX19_2 then
                  SHX19_2 = RenderText
                  SHX20_2 = SHX5_2.RightLabel
                  SHX21_2 = SHX8_2.X
                  SHX22_2 = SHX0_1.RightText
                  SHX22_2 = SHX22_2.X
                  SHX21_2 = SHX21_2 + SHX22_2
                  SHX21_2 = SHX21_2 - SHX17_2
                  SHX22_2 = SHX8_2.WidthOffset
                  SHX21_2 = SHX21_2 + SHX22_2
                  SHX22_2 = SHX8_2.Y
                  SHX23_2 = SHX0_1.RightText
                  SHX23_2 = SHX23_2.Y
                  SHX22_2 = SHX22_2 + SHX23_2
                  SHX23_2 = SHX8_2.SubtitleHeight
                  SHX22_2 = SHX22_2 + SHX23_2
                  SHX23_2 = RageUI
                  SHX23_2 = SHX23_2.ItemOffset
                  SHX22_2 = SHX22_2 + SHX23_2
                  SHX23_2 = 0
                  SHX24_2 = SHX0_1.RightText
                  SHX24_2 = SHX24_2.Scale
                  SHX25_2 = 0
                  SHX26_2 = 0
                  SHX27_2 = 0
                  SHX28_2 = 255
                  SHX29_2 = 2
                  SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2)
                  SHX19_2 = MeasureStringWidth
                  SHX20_2 = SHX5_2.RightLabel
                  SHX21_2 = 0
                  SHX22_2 = 0.35
                  SHX19_2 = SHX19_2(SHX20_2, SHX21_2, SHX22_2)
                  SHX18_2 = SHX19_2
                end
              end
            else
              SHX19_2 = SHX5_2.RightLabel
              if nil ~= SHX19_2 then
                SHX19_2 = SHX5_2.RightLabel
                if "" ~= SHX19_2 then
                  SHX19_2 = MeasureStringWidth
                  SHX20_2 = SHX5_2.RightLabel
                  SHX21_2 = 0
                  SHX22_2 = 0.35
                  SHX19_2 = SHX19_2(SHX20_2, SHX21_2, SHX22_2)
                  SHX18_2 = SHX19_2
                  SHX19_2 = RenderText
                  SHX20_2 = SHX5_2.RightLabel
                  SHX21_2 = SHX8_2.X
                  SHX22_2 = SHX0_1.RightText
                  SHX22_2 = SHX22_2.X
                  SHX21_2 = SHX21_2 + SHX22_2
                  SHX21_2 = SHX21_2 - SHX17_2
                  SHX22_2 = SHX8_2.WidthOffset
                  SHX21_2 = SHX21_2 + SHX22_2
                  SHX22_2 = SHX8_2.Y
                  SHX23_2 = SHX0_1.RightText
                  SHX23_2 = SHX23_2.Y
                  SHX22_2 = SHX22_2 + SHX23_2
                  SHX23_2 = SHX8_2.SubtitleHeight
                  SHX22_2 = SHX22_2 + SHX23_2
                  SHX23_2 = RageUI
                  SHX23_2 = SHX23_2.ItemOffset
                  SHX22_2 = SHX22_2 + SHX23_2
                  SHX23_2 = 0
                  SHX24_2 = SHX0_1.RightText
                  SHX24_2 = SHX24_2.Scale
                  SHX25_2 = 245
                  SHX26_2 = 245
                  SHX27_2 = 245
                  SHX28_2 = 255
                  SHX29_2 = 2
                  SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2)
                end
              end
            end
          end
          SHX18_2 = SHX18_2 + SHX17_2
          if true == SHX6_2 or nil == SHX6_2 then
            if SHX12_2 then
              SHX19_2 = RenderText
              SHX20_2 = SHX0_2
              SHX21_2 = SHX8_2.X
              SHX22_2 = SHX0_1.Text
              SHX22_2 = SHX22_2.X
              SHX21_2 = SHX21_2 + SHX22_2
              SHX21_2 = SHX21_2 + SHX16_2
              SHX22_2 = SHX8_2.Y
              SHX23_2 = SHX0_1.Text
              SHX23_2 = SHX23_2.Y
              SHX22_2 = SHX22_2 + SHX23_2
              SHX23_2 = SHX8_2.SubtitleHeight
              SHX22_2 = SHX22_2 + SHX23_2
              SHX23_2 = RageUI
              SHX23_2 = SHX23_2.ItemOffset
              SHX22_2 = SHX22_2 + SHX23_2
              SHX23_2 = 0
              SHX24_2 = SHX0_1.Text
              SHX24_2 = SHX24_2.Scale
              SHX25_2 = 0
              SHX26_2 = 0
              SHX27_2 = 0
              SHX28_2 = 255
              SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
              SHX19_2 = RenderSprite
              SHX20_2 = SHX1_1.LeftArrow
              SHX20_2 = SHX20_2.Dictionary
              SHX21_2 = SHX1_1.LeftArrow
              SHX21_2 = SHX21_2.Texture
              SHX22_2 = SHX8_2.X
              SHX23_2 = SHX1_1.LeftArrow
              SHX23_2 = SHX23_2.X
              SHX22_2 = SHX22_2 + SHX23_2
              SHX23_2 = SHX8_2.WidthOffset
              SHX22_2 = SHX22_2 + SHX23_2
              SHX22_2 = SHX22_2 - SHX18_2
              SHX23_2 = SHX8_2.Y
              SHX24_2 = SHX1_1.LeftArrow
              SHX24_2 = SHX24_2.Y
              SHX23_2 = SHX23_2 + SHX24_2
              SHX24_2 = SHX8_2.SubtitleHeight
              SHX23_2 = SHX23_2 + SHX24_2
              SHX24_2 = RageUI
              SHX24_2 = SHX24_2.ItemOffset
              SHX23_2 = SHX23_2 + SHX24_2
              SHX24_2 = SHX1_1.LeftArrow
              SHX24_2 = SHX24_2.Width
              SHX25_2 = SHX1_1.LeftArrow
              SHX25_2 = SHX25_2.Height
              SHX26_2 = 0
              SHX27_2 = 0
              SHX28_2 = 0
              SHX29_2 = 0
              SHX30_2 = 255
              SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2)
              SHX19_2 = RenderSprite
              SHX20_2 = SHX1_1.RightArrow
              SHX20_2 = SHX20_2.Dictionary
              SHX21_2 = SHX1_1.RightArrow
              SHX21_2 = SHX21_2.Texture
              SHX22_2 = SHX8_2.X
              SHX23_2 = SHX1_1.RightArrow
              SHX23_2 = SHX23_2.X
              SHX22_2 = SHX22_2 + SHX23_2
              SHX23_2 = SHX8_2.WidthOffset
              SHX22_2 = SHX22_2 + SHX23_2
              SHX22_2 = SHX22_2 - SHX18_2
              SHX23_2 = SHX8_2.Y
              SHX24_2 = SHX1_1.RightArrow
              SHX24_2 = SHX24_2.Y
              SHX23_2 = SHX23_2 + SHX24_2
              SHX24_2 = SHX8_2.SubtitleHeight
              SHX23_2 = SHX23_2 + SHX24_2
              SHX24_2 = RageUI
              SHX24_2 = SHX24_2.ItemOffset
              SHX23_2 = SHX23_2 + SHX24_2
              SHX24_2 = SHX1_1.RightArrow
              SHX24_2 = SHX24_2.Width
              SHX25_2 = SHX1_1.RightArrow
              SHX25_2 = SHX25_2.Height
              SHX26_2 = 0
              SHX27_2 = 0
              SHX28_2 = 0
              SHX29_2 = 0
              SHX30_2 = 255
              SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2)
            else
              SHX19_2 = RenderText
              SHX20_2 = SHX0_2
              SHX21_2 = SHX8_2.X
              SHX22_2 = SHX0_1.Text
              SHX22_2 = SHX22_2.X
              SHX21_2 = SHX21_2 + SHX22_2
              SHX21_2 = SHX21_2 + SHX16_2
              SHX22_2 = SHX8_2.Y
              SHX23_2 = SHX0_1.Text
              SHX23_2 = SHX23_2.Y
              SHX22_2 = SHX22_2 + SHX23_2
              SHX23_2 = SHX8_2.SubtitleHeight
              SHX22_2 = SHX22_2 + SHX23_2
              SHX23_2 = RageUI
              SHX23_2 = SHX23_2.ItemOffset
              SHX22_2 = SHX22_2 + SHX23_2
              SHX23_2 = 0
              SHX24_2 = SHX0_1.Text
              SHX24_2 = SHX24_2.Scale
              SHX25_2 = 245
              SHX26_2 = 245
              SHX27_2 = 245
              SHX28_2 = 255
              SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
            end
          else
            SHX19_2 = RenderText
            SHX20_2 = SHX0_2
            SHX21_2 = SHX8_2.X
            SHX22_2 = SHX0_1.Text
            SHX22_2 = SHX22_2.X
            SHX21_2 = SHX21_2 + SHX22_2
            SHX21_2 = SHX21_2 + SHX16_2
            SHX22_2 = SHX8_2.Y
            SHX23_2 = SHX0_1.Text
            SHX23_2 = SHX23_2.Y
            SHX22_2 = SHX22_2 + SHX23_2
            SHX23_2 = SHX8_2.SubtitleHeight
            SHX22_2 = SHX22_2 + SHX23_2
            SHX23_2 = RageUI
            SHX23_2 = SHX23_2.ItemOffset
            SHX22_2 = SHX22_2 + SHX23_2
            SHX23_2 = 0
            SHX24_2 = SHX0_1.Text
            SHX24_2 = SHX24_2.Scale
            SHX25_2 = 163
            SHX26_2 = 159
            SHX27_2 = 148
            SHX28_2 = 255
            SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
            if SHX12_2 then
              SHX19_2 = RenderSprite
              SHX20_2 = SHX1_1.LeftArrow
              SHX20_2 = SHX20_2.Dictionary
              SHX21_2 = SHX1_1.LeftArrow
              SHX21_2 = SHX21_2.Texture
              SHX22_2 = SHX8_2.X
              SHX23_2 = SHX1_1.LeftArrow
              SHX23_2 = SHX23_2.X
              SHX22_2 = SHX22_2 + SHX23_2
              SHX23_2 = SHX8_2.WidthOffset
              SHX22_2 = SHX22_2 + SHX23_2
              SHX22_2 = SHX22_2 - SHX18_2
              SHX23_2 = SHX8_2.Y
              SHX24_2 = SHX1_1.LeftArrow
              SHX24_2 = SHX24_2.Y
              SHX23_2 = SHX23_2 + SHX24_2
              SHX24_2 = SHX8_2.SubtitleHeight
              SHX23_2 = SHX23_2 + SHX24_2
              SHX24_2 = RageUI
              SHX24_2 = SHX24_2.ItemOffset
              SHX23_2 = SHX23_2 + SHX24_2
              SHX24_2 = SHX1_1.LeftArrow
              SHX24_2 = SHX24_2.Width
              SHX25_2 = SHX1_1.LeftArrow
              SHX25_2 = SHX25_2.Height
              SHX26_2 = 163
              SHX27_2 = 159
              SHX28_2 = 148
              SHX29_2 = 255
              SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2)
              SHX19_2 = RenderSprite
              SHX20_2 = SHX1_1.RightArrow
              SHX20_2 = SHX20_2.Dictionary
              SHX21_2 = SHX1_1.RightArrow
              SHX21_2 = SHX21_2.Texture
              SHX22_2 = SHX8_2.X
              SHX23_2 = SHX1_1.RightArrow
              SHX23_2 = SHX23_2.X
              SHX22_2 = SHX22_2 + SHX23_2
              SHX23_2 = SHX8_2.WidthOffset
              SHX22_2 = SHX22_2 + SHX23_2
              SHX22_2 = SHX22_2 - SHX18_2
              SHX23_2 = SHX8_2.Y
              SHX24_2 = SHX1_1.RightArrow
              SHX24_2 = SHX24_2.Y
              SHX23_2 = SHX23_2 + SHX24_2
              SHX24_2 = SHX8_2.SubtitleHeight
              SHX23_2 = SHX23_2 + SHX24_2
              SHX24_2 = RageUI
              SHX24_2 = SHX24_2.ItemOffset
              SHX23_2 = SHX23_2 + SHX24_2
              SHX24_2 = SHX1_1.RightArrow
              SHX24_2 = SHX24_2.Width
              SHX25_2 = SHX1_1.RightArrow
              SHX25_2 = SHX25_2.Height
              SHX26_2 = 163
              SHX27_2 = 159
              SHX28_2 = 148
              SHX29_2 = 255
              SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2)
            end
          end
          SHX19_2 = type
          SHX20_2 = SHX5_2
          SHX19_2 = SHX19_2(SHX20_2)
          if "table" == SHX19_2 then
            SHX19_2 = SHX5_2.Enabled
            if true ~= SHX19_2 then
              SHX19_2 = SHX5_2.Enabled
              if nil ~= SHX19_2 then
                goto SHX_LABEL_702
              end
            end
            SHX19_2 = type
            SHX20_2 = SHX5_2
            SHX19_2 = SHX19_2(SHX20_2)
            if "table" ~= SHX19_2 then
              goto SHX_LABEL_767
            end
            SHX19_2 = SHX5_2.LeftBadge
            if nil ~= SHX19_2 then
              SHX19_2 = SHX5_2.LeftBadge
              SHX20_2 = RageUI
              SHX20_2 = SHX20_2.BadgeStyle
              SHX20_2 = SHX20_2.None
              if SHX19_2 ~= SHX20_2 then
                SHX19_2 = SHX5_2.LeftBadge
                SHX20_2 = SHX12_2
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
                SHX23_2 = SHX8_2.X
                SHX24_2 = SHX8_2.Y
                SHX25_2 = SHX0_1.LeftBadge
                SHX25_2 = SHX25_2.Y
                SHX24_2 = SHX24_2 + SHX25_2
                SHX25_2 = SHX8_2.SubtitleHeight
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
                if SHX28_2 then
                  SHX28_2 = SHX19_2.BadgeColour
                  SHX28_2 = SHX28_2.R
                  if SHX28_2 then
                    goto SHX_LABEL_597
                  end
                end
                SHX28_2 = 255
                -- [FIX IF ERROR] Move ::SHX_LABEL_597:: outside nested blocks until all 'goto SHX_LABEL_597' can see it
                ::SHX_LABEL_597::
                SHX29_2 = SHX19_2.BadgeColour
                if SHX29_2 then
                  SHX29_2 = SHX19_2.BadgeColour
                  SHX29_2 = SHX29_2.G
                  if SHX29_2 then
                    goto SHX_LABEL_605
                  end
                end
                SHX29_2 = 255
                -- [FIX IF ERROR] Move ::SHX_LABEL_605:: outside nested blocks until all 'goto SHX_LABEL_605' can see it
                ::SHX_LABEL_605::
                SHX30_2 = SHX19_2.BadgeColour
                if SHX30_2 then
                  SHX30_2 = SHX19_2.BadgeColour
                  SHX30_2 = SHX30_2.B
                  if SHX30_2 then
                    goto SHX_LABEL_613
                  end
                end
                SHX30_2 = 255
                -- [FIX IF ERROR] Move ::SHX_LABEL_613:: outside nested blocks until all 'goto SHX_LABEL_613' can see it
                ::SHX_LABEL_613::
                SHX31_2 = SHX19_2.BadgeColour
                if SHX31_2 then
                  SHX31_2 = SHX19_2.BadgeColour
                  SHX31_2 = SHX31_2.A
                  if SHX31_2 then
                    goto SHX_LABEL_621
                  end
                end
                SHX31_2 = 255
                -- [FIX IF ERROR] Move ::SHX_LABEL_621:: outside nested blocks until all 'goto SHX_LABEL_621' can see it
                ::SHX_LABEL_621::
                SHX20_2(SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2)
              end
            end
            SHX19_2 = SHX5_2.RightBadge
            if nil == SHX19_2 then
              goto SHX_LABEL_767
            end
            SHX19_2 = SHX5_2.RightBadge
            SHX20_2 = RageUI
            SHX20_2 = SHX20_2.BadgeStyle
            SHX20_2 = SHX20_2.None
            if SHX19_2 == SHX20_2 then
              goto SHX_LABEL_767
            end
            SHX19_2 = SHX5_2.RightBadge
            SHX20_2 = SHX12_2
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
            SHX23_2 = SHX8_2.X
            SHX24_2 = SHX0_1.RightBadge
            SHX24_2 = SHX24_2.X
            SHX23_2 = SHX23_2 + SHX24_2
            SHX24_2 = SHX8_2.WidthOffset
            SHX23_2 = SHX23_2 + SHX24_2
            SHX24_2 = SHX8_2.Y
            SHX25_2 = SHX0_1.RightBadge
            SHX25_2 = SHX25_2.Y
            SHX24_2 = SHX24_2 + SHX25_2
            SHX25_2 = SHX8_2.SubtitleHeight
            SHX24_2 = SHX24_2 + SHX25_2
            SHX25_2 = RageUI
            SHX25_2 = SHX25_2.ItemOffset
            SHX24_2 = SHX24_2 + SHX25_2
            SHX25_2 = SHX0_1.RightBadge
            SHX25_2 = SHX25_2.Width
            SHX26_2 = SHX0_1.RightBadge
            SHX26_2 = SHX26_2.Height
            SHX27_2 = 0
            SHX28_2 = SHX19_2.BadgeColour
            if SHX28_2 then
              SHX28_2 = SHX19_2.BadgeColour
              SHX28_2 = SHX28_2.R
              if SHX28_2 then
                goto SHX_LABEL_676
              end
            end
            SHX28_2 = 255
            -- [FIX IF ERROR] Move ::SHX_LABEL_676:: outside nested blocks until all 'goto SHX_LABEL_676' can see it
            ::SHX_LABEL_676::
            SHX29_2 = SHX19_2.BadgeColour
            if SHX29_2 then
              SHX29_2 = SHX19_2.BadgeColour
              SHX29_2 = SHX29_2.G
              if SHX29_2 then
                goto SHX_LABEL_684
              end
            end
            SHX29_2 = 255
            -- [FIX IF ERROR] Move ::SHX_LABEL_684:: outside nested blocks until all 'goto SHX_LABEL_684' can see it
            ::SHX_LABEL_684::
            SHX30_2 = SHX19_2.BadgeColour
            if SHX30_2 then
              SHX30_2 = SHX19_2.BadgeColour
              SHX30_2 = SHX30_2.B
              if SHX30_2 then
                goto SHX_LABEL_692
              end
            end
            SHX30_2 = 255
            -- [FIX IF ERROR] Move ::SHX_LABEL_692:: outside nested blocks until all 'goto SHX_LABEL_692' can see it
            ::SHX_LABEL_692::
            SHX31_2 = SHX19_2.BadgeColour
            if SHX31_2 then
              SHX31_2 = SHX19_2.BadgeColour
              SHX31_2 = SHX31_2.A
              if SHX31_2 then
                goto SHX_LABEL_700
              end
            end
            SHX31_2 = 255
            -- [FIX IF ERROR] Move ::SHX_LABEL_700:: outside nested blocks until all 'goto SHX_LABEL_700' can see it
            ::SHX_LABEL_700::
            SHX20_2(SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2)
            goto SHX_LABEL_767
            -- [FIX IF ERROR] Move ::SHX_LABEL_702:: outside nested blocks until all 'goto SHX_LABEL_702' can see it
            ::SHX_LABEL_702::
            SHX19_2 = RageUI
            SHX19_2 = SHX19_2.BadgeStyle
            SHX19_2 = SHX19_2.Lock
            SHX20_2 = RageUI
            SHX20_2 = SHX20_2.BadgeStyle
            SHX20_2 = SHX20_2.None
            if SHX19_2 ~= SHX20_2 and nil ~= SHX19_2 then
              SHX20_2 = SHX19_2
              SHX21_2 = SHX12_2
              SHX20_2 = SHX20_2(SHX21_2)
              SHX21_2 = RenderSprite
              SHX22_2 = SHX20_2.BadgeDictionary
              if not SHX22_2 then
                SHX22_2 = "commonmenu"
              end
              SHX23_2 = SHX20_2.BadgeTexture
              if not SHX23_2 then
                SHX23_2 = ""
              end
              SHX24_2 = SHX8_2.X
              SHX25_2 = SHX8_2.Y
              SHX26_2 = SHX0_1.LeftBadge
              SHX26_2 = SHX26_2.Y
              SHX25_2 = SHX25_2 + SHX26_2
              SHX26_2 = SHX8_2.SubtitleHeight
              SHX25_2 = SHX25_2 + SHX26_2
              SHX26_2 = RageUI
              SHX26_2 = SHX26_2.ItemOffset
              SHX25_2 = SHX25_2 + SHX26_2
              SHX26_2 = SHX0_1.LeftBadge
              SHX26_2 = SHX26_2.Width
              SHX27_2 = SHX0_1.LeftBadge
              SHX27_2 = SHX27_2.Height
              SHX28_2 = 0
              SHX29_2 = SHX20_2.BadgeColour
              SHX29_2 = SHX29_2.R
              if not SHX29_2 then
                SHX29_2 = 255
              end
              SHX30_2 = SHX20_2.BadgeColour
              SHX30_2 = SHX30_2.G
              if not SHX30_2 then
                SHX30_2 = 255
              end
              SHX31_2 = SHX20_2.BadgeColour
              SHX31_2 = SHX31_2.B
              if not SHX31_2 then
                SHX31_2 = 255
              end
              SHX32_2 = SHX20_2.BadgeColour
              SHX32_2 = SHX32_2.A
              if not SHX32_2 then
                SHX32_2 = 255
              end
              SHX21_2(SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2)
            end
          else
            SHX19_2 = error
            SHX20_2 = "UICheckBox Style is not a `table`"
            SHX19_2(SHX20_2)
          end
          -- [FIX IF ERROR] Move ::SHX_LABEL_767:: outside nested blocks until all 'goto SHX_LABEL_767' can see it
          ::SHX_LABEL_767::
          SHX19_2 = RenderRectangle
          SHX20_2 = SHX8_2.X
          SHX21_2 = SHX1_1.Background
          SHX21_2 = SHX21_2.X
          SHX20_2 = SHX20_2 + SHX21_2
          SHX21_2 = SHX8_2.WidthOffset
          SHX20_2 = SHX20_2 + SHX21_2
          SHX20_2 = SHX20_2 - SHX18_2
          SHX21_2 = SHX8_2.Y
          SHX22_2 = SHX1_1.Background
          SHX22_2 = SHX22_2.Y
          SHX21_2 = SHX21_2 + SHX22_2
          SHX22_2 = SHX8_2.SubtitleHeight
          SHX21_2 = SHX21_2 + SHX22_2
          SHX22_2 = RageUI
          SHX22_2 = SHX22_2.ItemOffset
          SHX21_2 = SHX21_2 + SHX22_2
          SHX22_2 = SHX1_1.Background
          SHX22_2 = SHX22_2.Width
          SHX23_2 = SHX1_1.Background
          SHX23_2 = SHX23_2.Height
          SHX24_2 = 4
          SHX25_2 = 32
          SHX26_2 = 57
          SHX27_2 = 255
          SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2)
          SHX19_2 = RenderRectangle
          SHX20_2 = SHX8_2.X
          SHX21_2 = SHX1_1.Slider
          SHX21_2 = SHX21_2.X
          SHX20_2 = SHX20_2 + SHX21_2
          SHX21_2 = SHX1_1.Background
          SHX21_2 = SHX21_2.Width
          SHX22_2 = SHX1_1.Slider
          SHX22_2 = SHX22_2.Width
          SHX21_2 = SHX21_2 - SHX22_2
          SHX22_2 = #SHX10_2
          SHX22_2 = SHX22_2 - 1
          SHX21_2 = SHX21_2 / SHX22_2
          SHX22_2 = SHX1_2 - 1
          SHX21_2 = SHX21_2 * SHX22_2
          SHX20_2 = SHX20_2 + SHX21_2
          SHX21_2 = SHX8_2.WidthOffset
          SHX20_2 = SHX20_2 + SHX21_2
          SHX20_2 = SHX20_2 - SHX18_2
          SHX21_2 = SHX8_2.Y
          SHX22_2 = SHX1_1.Slider
          SHX22_2 = SHX22_2.Y
          SHX21_2 = SHX21_2 + SHX22_2
          SHX22_2 = SHX8_2.SubtitleHeight
          SHX21_2 = SHX21_2 + SHX22_2
          SHX22_2 = RageUI
          SHX22_2 = SHX22_2.ItemOffset
          SHX21_2 = SHX21_2 + SHX22_2
          SHX22_2 = SHX1_1.Slider
          SHX22_2 = SHX22_2.Width
          SHX23_2 = SHX1_1.Slider
          SHX23_2 = SHX23_2.Height
          SHX24_2 = 57
          SHX25_2 = 116
          SHX26_2 = 200
          SHX27_2 = 255
          SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2)
          if SHX4_2 then
            SHX19_2 = RenderRectangle
            SHX20_2 = SHX8_2.X
            SHX21_2 = SHX1_1.Divider
            SHX21_2 = SHX21_2.X
            SHX20_2 = SHX20_2 + SHX21_2
            SHX21_2 = SHX8_2.WidthOffset
            SHX20_2 = SHX20_2 + SHX21_2
            SHX21_2 = SHX8_2.Y
            SHX22_2 = SHX1_1.Divider
            SHX22_2 = SHX22_2.Y
            SHX21_2 = SHX21_2 + SHX22_2
            SHX22_2 = SHX8_2.SubtitleHeight
            SHX21_2 = SHX21_2 + SHX22_2
            SHX22_2 = RageUI
            SHX22_2 = SHX22_2.ItemOffset
            SHX21_2 = SHX21_2 + SHX22_2
            SHX22_2 = SHX1_1.Divider
            SHX22_2 = SHX22_2.Width
            SHX23_2 = SHX1_1.Divider
            SHX23_2 = SHX23_2.Height
            SHX24_2 = 245
            SHX25_2 = 245
            SHX26_2 = 245
            SHX27_2 = 255
            SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2)
          end
          SHX19_2 = RageUI
          SHX20_2 = RageUI
          SHX20_2 = SHX20_2.ItemOffset
          SHX21_2 = SHX0_1.Rectangle
          SHX21_2 = SHX21_2.Height
          SHX20_2 = SHX20_2 + SHX21_2
          SHX19_2.ItemOffset = SHX20_2
          SHX19_2 = RageUI
          SHX19_2 = SHX19_2.ItemsDescription
          SHX20_2 = SHX8_2
          SHX21_2 = SHX3_2
          SHX22_2 = SHX12_2
          SHX19_2(SHX20_2, SHX21_2, SHX22_2)
          if SHX12_2 then
            SHX19_2 = SHX8_2.Controls
            SHX19_2 = SHX19_2.Left
            SHX19_2 = SHX19_2.Active
            if not SHX19_2 then
              SHX19_2 = SHX8_2.Controls
              SHX19_2 = SHX19_2.Click
              SHX19_2 = SHX19_2.Active
              if not (SHX19_2 and SHX13_2) then
                goto SHX_LABEL_937
              end
            end
            SHX19_2 = SHX8_2.Controls
            SHX19_2 = SHX19_2.Right
            SHX19_2 = SHX19_2.Active
            if not SHX19_2 then
              SHX19_2 = SHX8_2.Controls
              SHX19_2 = SHX19_2.Click
              SHX19_2 = SHX19_2.Active
              if not SHX19_2 or not SHX14_2 then
                SHX1_2 = SHX1_2 - 1
                if SHX1_2 < 1 then
                  SHX1_2 = #SHX10_2
                end
                SHX19_2 = RageUI
                SHX19_2 = SHX19_2.PlaySound
                SHX20_2 = SHX9_2.Use
                SHX20_2 = SHX9_2[SHX20_2]
                SHX20_2 = SHX20_2.LeftRight
                SHX20_2 = SHX20_2.audioName
                SHX21_2 = SHX9_2.Use
                SHX21_2 = SHX9_2[SHX21_2]
                SHX21_2 = SHX21_2.LeftRight
                SHX21_2 = SHX21_2.audioRef
                SHX19_2(SHX20_2, SHX21_2)
            end
          end
          else
            -- [FIX IF ERROR] Move ::SHX_LABEL_937:: outside nested blocks until all 'goto SHX_LABEL_937' can see it
            ::SHX_LABEL_937::
            if SHX12_2 then
              SHX19_2 = SHX8_2.Controls
              SHX19_2 = SHX19_2.Right
              SHX19_2 = SHX19_2.Active
              if not SHX19_2 then
                SHX19_2 = SHX8_2.Controls
                SHX19_2 = SHX19_2.Click
                SHX19_2 = SHX19_2.Active
                if not (SHX19_2 and SHX14_2) then
                  goto SHX_LABEL_980
                end
              end
              SHX19_2 = SHX8_2.Controls
              SHX19_2 = SHX19_2.Left
              SHX19_2 = SHX19_2.Active
              if not SHX19_2 then
                SHX19_2 = SHX8_2.Controls
                SHX19_2 = SHX19_2.Click
                SHX19_2 = SHX19_2.Active
                if not SHX19_2 or not SHX13_2 then
                  SHX1_2 = SHX1_2 + 1
                  SHX19_2 = #SHX10_2
                  if SHX1_2 > SHX19_2 then
                    SHX1_2 = 1
                  end
                  SHX19_2 = RageUI
                  SHX19_2 = SHX19_2.PlaySound
                  SHX20_2 = SHX9_2.Use
                  SHX20_2 = SHX9_2[SHX20_2]
                  SHX20_2 = SHX20_2.LeftRight
                  SHX20_2 = SHX20_2.audioName
                  SHX21_2 = SHX9_2.Use
                  SHX21_2 = SHX9_2[SHX21_2]
                  SHX21_2 = SHX21_2.LeftRight
                  SHX21_2 = SHX21_2.audioRef
                  SHX19_2(SHX20_2, SHX21_2)
                end
              end
            end
          end
          -- [FIX IF ERROR] Move ::SHX_LABEL_980:: outside nested blocks until all 'goto SHX_LABEL_980' can see it
          ::SHX_LABEL_980::
          if SHX12_2 then
            SHX19_2 = SHX8_2.Controls
            SHX19_2 = SHX19_2.Select
            SHX19_2 = SHX19_2.Active
            if not SHX19_2 then
              if not SHX15_2 then
                goto SHX_LABEL_1009
              end
              SHX19_2 = SHX8_2.Controls
              SHX19_2 = SHX19_2.Click
              SHX19_2 = SHX19_2.Active
              if not SHX19_2 or SHX13_2 or SHX14_2 then
                goto SHX_LABEL_1009
              end
            end
            SHX19_2 = RageUI
            SHX19_2 = SHX19_2.PlaySound
            SHX20_2 = SHX9_2.Use
            SHX20_2 = SHX9_2[SHX20_2]
            SHX20_2 = SHX20_2.Select
            SHX20_2 = SHX20_2.audioName
            SHX21_2 = SHX9_2.Use
            SHX21_2 = SHX9_2[SHX21_2]
            SHX21_2 = SHX21_2.Select
            SHX21_2 = SHX21_2.audioRef
            SHX19_2(SHX20_2, SHX21_2)
          end
          -- [FIX IF ERROR] Move ::SHX_LABEL_1009:: outside nested blocks until all 'goto SHX_LABEL_1009' can see it
          ::SHX_LABEL_1009::
          if SHX6_2 then
            SHX19_2 = SHX7_2
            SHX20_2 = SHX15_2
            SHX21_2 = SHX12_2
            SHX22_2 = SHX8_2.Controls
            SHX22_2 = SHX22_2.Select
            SHX22_2 = SHX22_2.Active
            if not SHX22_2 then
              if not SHX15_2 then
                goto SHX_LABEL_1034
                SHX22_2 = SHX15_2 or SHX22_2
              end
              SHX22_2 = SHX8_2.Controls
              SHX22_2 = SHX22_2.Click
              SHX22_2 = SHX22_2.Active
            end
            SHX22_2 = SHX22_2 and not SHX13_2 and not SHX14_2 and SHX22_2
            -- [FIX IF ERROR] Move ::SHX_LABEL_1034:: outside nested blocks until all 'goto SHX_LABEL_1034' can see it
            ::SHX_LABEL_1034::
            SHX23_2 = SHX1_2
            SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2)
          end
        end
      end
      SHX12_2 = RageUI
      SHX13_2 = RageUI
      SHX13_2 = SHX13_2.Options
      SHX13_2 = SHX13_2 + 1
      SHX12_2.Options = SHX13_2
    end
  end
end
SHX2_1.Slider = SHX3_1
