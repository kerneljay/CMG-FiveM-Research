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
SHX2_1.Dictionary = "commonmenu"
SHX2_1.Texture = "arrowleft"
SHX2_1.X = 378
SHX2_1.Y = 3
SHX2_1.Width = 30
SHX2_1.Height = 30
SHX1_1.LeftArrow = SHX2_1
SHX2_1 = {}
SHX2_1.Dictionary = "commonmenu"
SHX2_1.Texture = "arrowright"
SHX2_1.X = 400
SHX2_1.Y = 3
SHX2_1.Width = 30
SHX2_1.Height = 30
SHX1_1.RightArrow = SHX2_1
SHX2_1 = {}
SHX2_1.X = 403
SHX2_1.Y = 3
SHX2_1.Scale = 0.35
SHX1_1.Text = SHX2_1
SHX2_1 = RageUI
function SHX3_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2
  SHX9_2 = RageUI
  SHX9_2 = SHX9_2.CurrentMenu
  if nil ~= SHX9_2 then
    SHX10_2 = SHX9_2
    SHX10_2 = SHX10_2()
    if SHX10_2 then
      SHX10_2 = RageUI
      SHX10_2 = SHX10_2.Options
      SHX10_2 = SHX10_2 + 1
      SHX11_2 = SHX9_2.Pagination
      SHX11_2 = SHX11_2.Minimum
      if SHX10_2 >= SHX11_2 then
        SHX11_2 = SHX9_2.Pagination
        SHX11_2 = SHX11_2.Maximum
        if SHX10_2 <= SHX11_2 then
          SHX11_2 = SHX9_2.Index
          SHX11_2 = SHX11_2 == SHX10_2
          SHX12_2 = false
          SHX13_2 = false
          SHX14_2 = RageUI
          SHX14_2 = SHX14_2.ItemsSafeZone
          SHX15_2 = SHX9_2
          SHX14_2(SHX15_2)
          SHX14_2 = false
          SHX15_2 = SHX4_2.LeftBadge
          SHX16_2 = RageUI
          SHX16_2 = SHX16_2.BadgeStyle
          SHX16_2 = SHX16_2.None
          if SHX15_2 ~= SHX16_2 then
            SHX15_2 = SHX4_2.LeftBadge
            if nil ~= SHX15_2 then
              goto SHX_LABEL_45
            end
          end
          SHX15_2 = 0
          -- [FIX IF ERROR] Move ::SHX_LABEL_45:: outside nested blocks until all 'goto SHX_LABEL_45' can see it
          ::SHX_LABEL_45::
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
              goto SHX_LABEL_58
            end
          end
          SHX16_2 = 0
          -- [FIX IF ERROR] Move ::SHX_LABEL_58:: outside nested blocks until all 'goto SHX_LABEL_58' can see it
          ::SHX_LABEL_58::
          if not SHX16_2 then
            SHX16_2 = 32
          end
          SHX17_2 = 0
          SHX18_2 = SHX9_2.EnableMouse
          if true == SHX18_2 then
            SHX18_2 = SHX9_2.CursorStyle
            if 0 == SHX18_2 then
              goto SHX_LABEL_69
            end
          end
          SHX18_2 = SHX9_2.CursorStyle
          -- [FIX IF ERROR] Move ::SHX_LABEL_69:: outside nested blocks until all 'goto SHX_LABEL_69' can see it
          ::SHX_LABEL_69::
          if 1 == SHX18_2 then
            SHX18_2 = RageUI
            SHX18_2 = SHX18_2.ItemsMouseBounds
            SHX19_2 = SHX9_2
            SHX20_2 = SHX11_2
            SHX21_2 = SHX10_2
            SHX22_2 = SHX0_1
            SHX18_2 = SHX18_2(SHX19_2, SHX20_2, SHX21_2, SHX22_2)
            SHX14_2 = SHX18_2
          end
          SHX18_2 = type
          SHX19_2 = SHX1_2[SHX2_2]
          SHX18_2 = SHX18_2(SHX19_2)
          if "table" == SHX18_2 then
            SHX18_2 = string
            SHX18_2 = SHX18_2.format
            SHX19_2 = "\226\134\144 %s \226\134\146"
            SHX20_2 = SHX1_2[SHX2_2]
            SHX20_2 = SHX20_2.Name
            SHX18_2 = SHX18_2(SHX19_2, SHX20_2)
            if SHX18_2 then
              goto SHX_LABEL_98
            end
          end
          SHX18_2 = string
          SHX18_2 = SHX18_2.format
          SHX19_2 = "\226\134\144 %s \226\134\146"
          SHX20_2 = SHX1_2[SHX2_2]
          SHX18_2 = SHX18_2(SHX19_2, SHX20_2)
          if not SHX18_2 then
            SHX18_2 = "NIL"
          end
          -- [FIX IF ERROR] Move ::SHX_LABEL_98:: outside nested blocks until all 'goto SHX_LABEL_98' can see it
          ::SHX_LABEL_98::
          if SHX11_2 then
            SHX19_2 = RenderSprite
            SHX20_2 = SHX0_1.SelectedSprite
            SHX20_2 = SHX20_2.Dictionary
            SHX21_2 = SHX0_1.SelectedSprite
            SHX21_2 = SHX21_2.Texture
            SHX22_2 = SHX9_2.X
            SHX23_2 = SHX9_2.Y
            SHX24_2 = SHX0_1.SelectedSprite
            SHX24_2 = SHX24_2.Y
            SHX23_2 = SHX23_2 + SHX24_2
            SHX24_2 = SHX9_2.SubtitleHeight
            SHX23_2 = SHX23_2 + SHX24_2
            SHX24_2 = RageUI
            SHX24_2 = SHX24_2.ItemOffset
            SHX23_2 = SHX23_2 + SHX24_2
            SHX24_2 = SHX0_1.SelectedSprite
            SHX24_2 = SHX24_2.Width
            SHX25_2 = SHX9_2.WidthOffset
            SHX24_2 = SHX24_2 + SHX25_2
            SHX25_2 = SHX0_1.SelectedSprite
            SHX25_2 = SHX25_2.Height
            SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
          end
          if true == SHX5_2 or nil == SHX5_2 then
            if SHX11_2 then
              SHX19_2 = SHX4_2.RightLabel
              if nil ~= SHX19_2 then
                SHX19_2 = SHX4_2.RightLabel
                if "" ~= SHX19_2 then
                  SHX19_2 = RenderText
                  SHX20_2 = SHX4_2.RightLabel
                  SHX21_2 = SHX9_2.X
                  SHX22_2 = SHX0_1.RightText
                  SHX22_2 = SHX22_2.X
                  SHX21_2 = SHX21_2 + SHX22_2
                  SHX21_2 = SHX21_2 - SHX16_2
                  SHX22_2 = SHX9_2.WidthOffset
                  SHX21_2 = SHX21_2 + SHX22_2
                  SHX22_2 = SHX9_2.Y
                  SHX23_2 = SHX0_1.RightText
                  SHX23_2 = SHX23_2.Y
                  SHX22_2 = SHX22_2 + SHX23_2
                  SHX23_2 = SHX9_2.SubtitleHeight
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
                  SHX20_2 = SHX4_2.RightLabel
                  SHX21_2 = 0
                  SHX22_2 = 0.35
                  SHX19_2 = SHX19_2(SHX20_2, SHX21_2, SHX22_2)
                  SHX17_2 = SHX19_2
                end
              end
            else
              SHX19_2 = SHX4_2.RightLabel
              if nil ~= SHX19_2 then
                SHX19_2 = SHX4_2.RightLabel
                if "" ~= SHX19_2 then
                  SHX19_2 = MeasureStringWidth
                  SHX20_2 = SHX4_2.RightLabel
                  SHX21_2 = 0
                  SHX22_2 = 0.35
                  SHX19_2 = SHX19_2(SHX20_2, SHX21_2, SHX22_2)
                  SHX17_2 = SHX19_2
                  SHX19_2 = RenderText
                  SHX20_2 = SHX4_2.RightLabel
                  SHX21_2 = SHX9_2.X
                  SHX22_2 = SHX0_1.RightText
                  SHX22_2 = SHX22_2.X
                  SHX21_2 = SHX21_2 + SHX22_2
                  SHX21_2 = SHX21_2 - SHX16_2
                  SHX22_2 = SHX9_2.WidthOffset
                  SHX21_2 = SHX21_2 + SHX22_2
                  SHX22_2 = SHX9_2.Y
                  SHX23_2 = SHX0_1.RightText
                  SHX23_2 = SHX23_2.Y
                  SHX22_2 = SHX22_2 + SHX23_2
                  SHX23_2 = SHX9_2.SubtitleHeight
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
          SHX19_2 = SHX16_2 * 1.3
          SHX17_2 = SHX19_2 + SHX17_2
          if true == SHX5_2 or nil == SHX5_2 then
            if SHX11_2 then
              SHX19_2 = RenderText
              SHX20_2 = SHX0_2
              SHX21_2 = SHX9_2.X
              SHX22_2 = SHX0_1.Text
              SHX22_2 = SHX22_2.X
              SHX21_2 = SHX21_2 + SHX22_2
              SHX21_2 = SHX21_2 + SHX15_2
              SHX22_2 = SHX9_2.Y
              SHX23_2 = SHX0_1.Text
              SHX23_2 = SHX23_2.Y
              SHX22_2 = SHX22_2 + SHX23_2
              SHX23_2 = SHX9_2.SubtitleHeight
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
              SHX19_2 = RenderText
              SHX20_2 = SHX18_2
              SHX21_2 = SHX9_2.X
              SHX22_2 = SHX1_1.Text
              SHX22_2 = SHX22_2.X
              SHX21_2 = SHX21_2 + SHX22_2
              SHX21_2 = SHX21_2 + 15
              SHX22_2 = SHX9_2.WidthOffset
              SHX21_2 = SHX21_2 + SHX22_2
              SHX21_2 = SHX21_2 - SHX17_2
              SHX22_2 = SHX9_2.Y
              SHX23_2 = SHX1_1.Text
              SHX23_2 = SHX23_2.Y
              SHX22_2 = SHX22_2 + SHX23_2
              SHX23_2 = SHX9_2.SubtitleHeight
              SHX22_2 = SHX22_2 + SHX23_2
              SHX23_2 = RageUI
              SHX23_2 = SHX23_2.ItemOffset
              SHX22_2 = SHX22_2 + SHX23_2
              SHX23_2 = 0
              SHX24_2 = SHX1_1.Text
              SHX24_2 = SHX24_2.Scale
              SHX25_2 = 0
              SHX26_2 = 0
              SHX27_2 = 0
              SHX28_2 = 255
              SHX29_2 = 2
              SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2)
            else
              SHX19_2 = RenderText
              SHX20_2 = SHX0_2
              SHX21_2 = SHX9_2.X
              SHX22_2 = SHX0_1.Text
              SHX22_2 = SHX22_2.X
              SHX21_2 = SHX21_2 + SHX22_2
              SHX21_2 = SHX21_2 + SHX15_2
              SHX22_2 = SHX9_2.Y
              SHX23_2 = SHX0_1.Text
              SHX23_2 = SHX23_2.Y
              SHX22_2 = SHX22_2 + SHX23_2
              SHX23_2 = SHX9_2.SubtitleHeight
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
              SHX19_2 = RenderText
              SHX20_2 = SHX18_2
              SHX21_2 = SHX9_2.X
              SHX22_2 = SHX1_1.Text
              SHX22_2 = SHX22_2.X
              SHX21_2 = SHX21_2 + SHX22_2
              SHX21_2 = SHX21_2 + 15
              SHX22_2 = SHX9_2.WidthOffset
              SHX21_2 = SHX21_2 + SHX22_2
              SHX21_2 = SHX21_2 - SHX17_2
              SHX22_2 = SHX9_2.Y
              SHX23_2 = SHX1_1.Text
              SHX23_2 = SHX23_2.Y
              SHX22_2 = SHX22_2 + SHX23_2
              SHX23_2 = SHX9_2.SubtitleHeight
              SHX22_2 = SHX22_2 + SHX23_2
              SHX23_2 = RageUI
              SHX23_2 = SHX23_2.ItemOffset
              SHX22_2 = SHX22_2 + SHX23_2
              SHX23_2 = 0
              SHX24_2 = SHX1_1.Text
              SHX24_2 = SHX24_2.Scale
              SHX25_2 = 245
              SHX26_2 = 245
              SHX27_2 = 245
              SHX28_2 = 255
              SHX29_2 = 2
              SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2)
            end
          else
            SHX19_2 = RenderText
            SHX20_2 = SHX0_2
            SHX21_2 = SHX9_2.X
            SHX22_2 = SHX0_1.Text
            SHX22_2 = SHX22_2.X
            SHX21_2 = SHX21_2 + SHX22_2
            SHX21_2 = SHX21_2 + SHX15_2
            SHX22_2 = SHX9_2.Y
            SHX23_2 = SHX0_1.Text
            SHX23_2 = SHX23_2.Y
            SHX22_2 = SHX22_2 + SHX23_2
            SHX23_2 = SHX9_2.SubtitleHeight
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
            if SHX11_2 then
              SHX19_2 = RenderText
              SHX20_2 = SHX18_2
              SHX21_2 = SHX9_2.X
              SHX22_2 = SHX1_1.Text
              SHX22_2 = SHX22_2.X
              SHX21_2 = SHX21_2 + SHX22_2
              SHX22_2 = SHX9_2.WidthOffset
              SHX21_2 = SHX21_2 + SHX22_2
              SHX22_2 = SHX9_2.Y
              SHX23_2 = SHX1_1.Text
              SHX23_2 = SHX23_2.Y
              SHX22_2 = SHX22_2 + SHX23_2
              SHX23_2 = SHX9_2.SubtitleHeight
              SHX22_2 = SHX22_2 + SHX23_2
              SHX23_2 = RageUI
              SHX23_2 = SHX23_2.ItemOffset
              SHX22_2 = SHX22_2 + SHX23_2
              SHX23_2 = 0
              SHX24_2 = SHX1_1.Text
              SHX24_2 = SHX24_2.Scale
              SHX25_2 = 163
              SHX26_2 = 159
              SHX27_2 = 148
              SHX28_2 = 255
              SHX29_2 = 2
              SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2)
            else
              SHX19_2 = RenderText
              SHX20_2 = SHX18_2
              SHX21_2 = SHX9_2.X
              SHX22_2 = SHX1_1.Text
              SHX22_2 = SHX22_2.X
              SHX21_2 = SHX21_2 + SHX22_2
              SHX21_2 = SHX21_2 + 15
              SHX22_2 = SHX9_2.WidthOffset
              SHX21_2 = SHX21_2 + SHX22_2
              SHX22_2 = SHX9_2.Y
              SHX23_2 = SHX1_1.Text
              SHX23_2 = SHX23_2.Y
              SHX22_2 = SHX22_2 + SHX23_2
              SHX23_2 = SHX9_2.SubtitleHeight
              SHX22_2 = SHX22_2 + SHX23_2
              SHX23_2 = RageUI
              SHX23_2 = SHX23_2.ItemOffset
              SHX22_2 = SHX22_2 + SHX23_2
              SHX23_2 = 0
              SHX24_2 = SHX1_1.Text
              SHX24_2 = SHX24_2.Scale
              SHX25_2 = 163
              SHX26_2 = 159
              SHX27_2 = 148
              SHX28_2 = 255
              SHX29_2 = 2
              SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2)
            end
          end
          SHX19_2 = type
          SHX20_2 = SHX4_2
          SHX19_2 = SHX19_2(SHX20_2)
          if "table" == SHX19_2 then
            SHX19_2 = SHX4_2.Enabled
            if true ~= SHX19_2 then
              SHX19_2 = SHX4_2.Enabled
              if nil ~= SHX19_2 then
                goto SHX_LABEL_627
              end
            end
            SHX19_2 = type
            SHX20_2 = SHX4_2
            SHX19_2 = SHX19_2(SHX20_2)
            if "table" ~= SHX19_2 then
              goto SHX_LABEL_692
            end
            SHX19_2 = SHX4_2.LeftBadge
            if nil ~= SHX19_2 then
              SHX19_2 = SHX4_2.LeftBadge
              SHX20_2 = RageUI
              SHX20_2 = SHX20_2.BadgeStyle
              SHX20_2 = SHX20_2.None
              if SHX19_2 ~= SHX20_2 then
                SHX19_2 = SHX4_2.LeftBadge
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
                SHX23_2 = SHX9_2.X
                SHX24_2 = SHX9_2.Y
                SHX25_2 = SHX0_1.LeftBadge
                SHX25_2 = SHX25_2.Y
                SHX24_2 = SHX24_2 + SHX25_2
                SHX25_2 = SHX9_2.SubtitleHeight
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
                    goto SHX_LABEL_522
                  end
                end
                SHX28_2 = 255
                -- [FIX IF ERROR] Move ::SHX_LABEL_522:: outside nested blocks until all 'goto SHX_LABEL_522' can see it
                ::SHX_LABEL_522::
                SHX29_2 = SHX19_2.BadgeColour
                if SHX29_2 then
                  SHX29_2 = SHX19_2.BadgeColour
                  SHX29_2 = SHX29_2.G
                  if SHX29_2 then
                    goto SHX_LABEL_530
                  end
                end
                SHX29_2 = 255
                -- [FIX IF ERROR] Move ::SHX_LABEL_530:: outside nested blocks until all 'goto SHX_LABEL_530' can see it
                ::SHX_LABEL_530::
                SHX30_2 = SHX19_2.BadgeColour
                if SHX30_2 then
                  SHX30_2 = SHX19_2.BadgeColour
                  SHX30_2 = SHX30_2.B
                  if SHX30_2 then
                    goto SHX_LABEL_538
                  end
                end
                SHX30_2 = 255
                -- [FIX IF ERROR] Move ::SHX_LABEL_538:: outside nested blocks until all 'goto SHX_LABEL_538' can see it
                ::SHX_LABEL_538::
                SHX31_2 = SHX19_2.BadgeColour
                if SHX31_2 then
                  SHX31_2 = SHX19_2.BadgeColour
                  SHX31_2 = SHX31_2.A
                  if SHX31_2 then
                    goto SHX_LABEL_546
                  end
                end
                SHX31_2 = 255
                -- [FIX IF ERROR] Move ::SHX_LABEL_546:: outside nested blocks until all 'goto SHX_LABEL_546' can see it
                ::SHX_LABEL_546::
                SHX20_2(SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2)
              end
            end
            SHX19_2 = SHX4_2.RightBadge
            if nil == SHX19_2 then
              goto SHX_LABEL_692
            end
            SHX19_2 = SHX4_2.RightBadge
            SHX20_2 = RageUI
            SHX20_2 = SHX20_2.BadgeStyle
            SHX20_2 = SHX20_2.None
            if SHX19_2 == SHX20_2 then
              goto SHX_LABEL_692
            end
            SHX19_2 = SHX4_2.RightBadge
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
            SHX23_2 = SHX9_2.X
            SHX24_2 = SHX0_1.RightBadge
            SHX24_2 = SHX24_2.X
            SHX23_2 = SHX23_2 + SHX24_2
            SHX24_2 = SHX9_2.WidthOffset
            SHX23_2 = SHX23_2 + SHX24_2
            SHX24_2 = SHX9_2.Y
            SHX25_2 = SHX0_1.RightBadge
            SHX25_2 = SHX25_2.Y
            SHX24_2 = SHX24_2 + SHX25_2
            SHX25_2 = SHX9_2.SubtitleHeight
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
                goto SHX_LABEL_601
              end
            end
            SHX28_2 = 255
            -- [FIX IF ERROR] Move ::SHX_LABEL_601:: outside nested blocks until all 'goto SHX_LABEL_601' can see it
            ::SHX_LABEL_601::
            SHX29_2 = SHX19_2.BadgeColour
            if SHX29_2 then
              SHX29_2 = SHX19_2.BadgeColour
              SHX29_2 = SHX29_2.G
              if SHX29_2 then
                goto SHX_LABEL_609
              end
            end
            SHX29_2 = 255
            -- [FIX IF ERROR] Move ::SHX_LABEL_609:: outside nested blocks until all 'goto SHX_LABEL_609' can see it
            ::SHX_LABEL_609::
            SHX30_2 = SHX19_2.BadgeColour
            if SHX30_2 then
              SHX30_2 = SHX19_2.BadgeColour
              SHX30_2 = SHX30_2.B
              if SHX30_2 then
                goto SHX_LABEL_617
              end
            end
            SHX30_2 = 255
            -- [FIX IF ERROR] Move ::SHX_LABEL_617:: outside nested blocks until all 'goto SHX_LABEL_617' can see it
            ::SHX_LABEL_617::
            SHX31_2 = SHX19_2.BadgeColour
            if SHX31_2 then
              SHX31_2 = SHX19_2.BadgeColour
              SHX31_2 = SHX31_2.A
              if SHX31_2 then
                goto SHX_LABEL_625
              end
            end
            SHX31_2 = 255
            -- [FIX IF ERROR] Move ::SHX_LABEL_625:: outside nested blocks until all 'goto SHX_LABEL_625' can see it
            ::SHX_LABEL_625::
            SHX20_2(SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2)
            goto SHX_LABEL_692
            -- [FIX IF ERROR] Move ::SHX_LABEL_627:: outside nested blocks until all 'goto SHX_LABEL_627' can see it
            ::SHX_LABEL_627::
            SHX19_2 = RageUI
            SHX19_2 = SHX19_2.BadgeStyle
            SHX19_2 = SHX19_2.Lock
            SHX20_2 = RageUI
            SHX20_2 = SHX20_2.BadgeStyle
            SHX20_2 = SHX20_2.None
            if SHX19_2 ~= SHX20_2 and nil ~= SHX19_2 then
              SHX20_2 = SHX19_2
              SHX21_2 = SHX11_2
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
              SHX24_2 = SHX9_2.X
              SHX25_2 = SHX9_2.Y
              SHX26_2 = SHX0_1.LeftBadge
              SHX26_2 = SHX26_2.Y
              SHX25_2 = SHX25_2 + SHX26_2
              SHX26_2 = SHX9_2.SubtitleHeight
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
          -- [FIX IF ERROR] Move ::SHX_LABEL_692:: outside nested blocks until all 'goto SHX_LABEL_692' can see it
          ::SHX_LABEL_692::
          SHX19_2 = RageUI
          SHX20_2 = RageUI
          SHX20_2 = SHX20_2.ItemOffset
          SHX21_2 = SHX0_1.Rectangle
          SHX21_2 = SHX21_2.Height
          SHX20_2 = SHX20_2 + SHX21_2
          SHX19_2.ItemOffset = SHX20_2
          SHX19_2 = RageUI
          SHX19_2 = SHX19_2.ItemsDescription
          SHX20_2 = SHX9_2
          SHX21_2 = SHX3_2
          SHX22_2 = SHX11_2
          SHX19_2(SHX20_2, SHX21_2, SHX22_2)
          if SHX11_2 then
            SHX19_2 = SHX9_2.Controls
            SHX19_2 = SHX19_2.Left
            SHX19_2 = SHX19_2.Active
            if not SHX19_2 then
              SHX19_2 = SHX9_2.Controls
              SHX19_2 = SHX19_2.Click
              SHX19_2 = SHX19_2.Active
              if not (SHX19_2 and SHX12_2) then
                goto SHX_LABEL_758
              end
            end
            SHX19_2 = SHX9_2.Controls
            SHX19_2 = SHX19_2.Right
            SHX19_2 = SHX19_2.Active
            if not SHX19_2 then
              SHX19_2 = SHX9_2.Controls
              SHX19_2 = SHX19_2.Click
              SHX19_2 = SHX19_2.Active
              if not SHX19_2 or not SHX13_2 then
                SHX2_2 = SHX2_2 - 1
                if SHX2_2 < 1 then
                  SHX2_2 = #SHX1_2
                end
                if nil ~= SHX7_2 then
                  SHX19_2 = SHX7_2
                  SHX20_2 = SHX2_2
                  SHX21_2 = SHX1_2[SHX2_2]
                  SHX19_2(SHX20_2, SHX21_2)
                end
                SHX19_2 = RageUI
                SHX19_2 = SHX19_2.Settings
                SHX19_2 = SHX19_2.Audio
                SHX20_2 = RageUI
                SHX20_2 = SHX20_2.PlaySound
                SHX21_2 = SHX19_2.Use
                SHX21_2 = SHX19_2[SHX21_2]
                SHX21_2 = SHX21_2.LeftRight
                SHX21_2 = SHX21_2.audioName
                SHX22_2 = SHX19_2.Use
                SHX22_2 = SHX19_2[SHX22_2]
                SHX22_2 = SHX22_2.LeftRight
                SHX22_2 = SHX22_2.audioRef
                SHX20_2(SHX21_2, SHX22_2)
            end
          end
          else
            -- [FIX IF ERROR] Move ::SHX_LABEL_758:: outside nested blocks until all 'goto SHX_LABEL_758' can see it
            ::SHX_LABEL_758::
            if SHX11_2 then
              SHX19_2 = SHX9_2.Controls
              SHX19_2 = SHX19_2.Right
              SHX19_2 = SHX19_2.Active
              if not SHX19_2 then
                SHX19_2 = SHX9_2.Controls
                SHX19_2 = SHX19_2.Click
                SHX19_2 = SHX19_2.Active
                if not (SHX19_2 and SHX13_2) then
                  goto SHX_LABEL_810
                end
              end
              SHX19_2 = SHX9_2.Controls
              SHX19_2 = SHX19_2.Left
              SHX19_2 = SHX19_2.Active
              if not SHX19_2 then
                SHX19_2 = SHX9_2.Controls
                SHX19_2 = SHX19_2.Click
                SHX19_2 = SHX19_2.Active
                if not SHX19_2 or not SHX12_2 then
                  SHX2_2 = SHX2_2 + 1
                  SHX19_2 = #SHX1_2
                  if SHX2_2 > SHX19_2 then
                    SHX2_2 = 1
                  end
                  if nil ~= SHX7_2 then
                    SHX19_2 = SHX7_2
                    SHX20_2 = SHX2_2
                    SHX21_2 = SHX1_2[SHX2_2]
                    SHX19_2(SHX20_2, SHX21_2)
                  end
                  SHX19_2 = RageUI
                  SHX19_2 = SHX19_2.Settings
                  SHX19_2 = SHX19_2.Audio
                  SHX20_2 = RageUI
                  SHX20_2 = SHX20_2.PlaySound
                  SHX21_2 = SHX19_2.Use
                  SHX21_2 = SHX19_2[SHX21_2]
                  SHX21_2 = SHX21_2.LeftRight
                  SHX21_2 = SHX21_2.audioName
                  SHX22_2 = SHX19_2.Use
                  SHX22_2 = SHX19_2[SHX22_2]
                  SHX22_2 = SHX22_2.LeftRight
                  SHX22_2 = SHX22_2.audioRef
                  SHX20_2(SHX21_2, SHX22_2)
                end
              end
            end
          end
          -- [FIX IF ERROR] Move ::SHX_LABEL_810:: outside nested blocks until all 'goto SHX_LABEL_810' can see it
          ::SHX_LABEL_810::
          if SHX11_2 then
            SHX19_2 = SHX9_2.Controls
            SHX19_2 = SHX19_2.Select
            SHX19_2 = SHX19_2.Active
            if not SHX19_2 then
              if not SHX14_2 then
                goto SHX_LABEL_857
              end
              SHX19_2 = SHX9_2.Controls
              SHX19_2 = SHX19_2.Click
              SHX19_2 = SHX19_2.Active
              if not SHX19_2 or SHX12_2 or SHX13_2 then
                goto SHX_LABEL_857
              end
            end
            SHX19_2 = RageUI
            SHX19_2 = SHX19_2.Settings
            SHX19_2 = SHX19_2.Audio
            SHX20_2 = RageUI
            SHX20_2 = SHX20_2.PlaySound
            SHX21_2 = SHX19_2.Use
            SHX21_2 = SHX19_2[SHX21_2]
            SHX21_2 = SHX21_2.Select
            SHX21_2 = SHX21_2.audioName
            SHX22_2 = SHX19_2.Use
            SHX22_2 = SHX19_2[SHX22_2]
            SHX22_2 = SHX22_2.Select
            SHX22_2 = SHX22_2.audioRef
            SHX20_2(SHX21_2, SHX22_2)
            if nil ~= SHX8_2 then
              SHX20_2 = type
              SHX21_2 = SHX8_2
              SHX20_2 = SHX20_2(SHX21_2)
              if "table" == SHX20_2 then
                SHX20_2 = RageUI
                SHX20_2 = SHX20_2.IsAnyMenuVisible
                SHX20_2 = SHX20_2()
                if SHX20_2 then
                  SHX20_2 = RageUI
                  SHX21_2 = SHX8_2[SHX2_2]
                  SHX20_2.NextMenu = SHX21_2
                end
              end
            end
          end
          -- [FIX IF ERROR] Move ::SHX_LABEL_857:: outside nested blocks until all 'goto SHX_LABEL_857' can see it
          ::SHX_LABEL_857::
          if SHX5_2 then
            SHX19_2 = SHX6_2
            SHX20_2 = SHX14_2
            SHX21_2 = SHX11_2
            SHX22_2 = SHX9_2.Controls
            SHX22_2 = SHX22_2.Select
            SHX22_2 = SHX22_2.Active
            if not SHX22_2 then
              if not SHX14_2 then
                goto SHX_LABEL_882
                SHX22_2 = SHX14_2 or SHX22_2
              end
              SHX22_2 = SHX9_2.Controls
              SHX22_2 = SHX22_2.Click
              SHX22_2 = SHX22_2.Active
            end
            SHX22_2 = SHX22_2 and not SHX12_2 and not SHX13_2 and SHX22_2
            -- [FIX IF ERROR] Move ::SHX_LABEL_882:: outside nested blocks until all 'goto SHX_LABEL_882' can see it
            ::SHX_LABEL_882::
            SHX23_2 = SHX2_2
            SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2)
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
SHX2_1.List = SHX3_1
