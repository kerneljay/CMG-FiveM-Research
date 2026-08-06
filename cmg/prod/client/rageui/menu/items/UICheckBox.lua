-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1
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
SHX1_1.Dictionary = "commonmenu"
SHX2_1 = {}
SHX3_1 = "shop_box_blankb"
SHX4_1 = "shop_box_tickb"
SHX5_1 = "shop_box_blank"
SHX6_1 = "shop_box_tick"
SHX7_1 = "shop_box_crossb"
SHX8_1 = "shop_box_cross"
SHX2_1[1] = SHX3_1
SHX2_1[2] = SHX4_1
SHX2_1[3] = SHX5_1
SHX2_1[4] = SHX6_1
SHX2_1[5] = SHX7_1
SHX2_1[6] = SHX8_1
SHX1_1.Textures = SHX2_1
SHX1_1.X = 380
SHX1_1.Y = -6
SHX1_1.Width = 50
SHX1_1.Height = 50
SHX2_1 = RageUI
SHX3_1 = {}
SHX3_1.Tick = 1
SHX3_1.Cross = 2
SHX2_1.CheckboxStyle = SHX3_1
function SHX2_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX5_2 = RageUI
  SHX5_2 = SHX5_2.CurrentMenu
  if nil == SHX4_2 then
    SHX4_2 = 0
  end
  if SHX0_2 then
    if SHX1_2 then
      SHX6_2 = RenderSprite
      SHX7_2 = SHX1_1.Dictionary
      SHX8_2 = SHX1_1.Textures
      SHX8_2 = SHX8_2[SHX2_2]
      SHX9_2 = SHX5_2.X
      SHX10_2 = SHX1_1.X
      SHX9_2 = SHX9_2 + SHX10_2
      SHX10_2 = SHX5_2.WidthOffset
      SHX9_2 = SHX9_2 + SHX10_2
      SHX9_2 = SHX9_2 - SHX4_2
      SHX10_2 = SHX5_2.Y
      SHX11_2 = SHX1_1.Y
      SHX10_2 = SHX10_2 + SHX11_2
      SHX11_2 = SHX5_2.SubtitleHeight
      SHX10_2 = SHX10_2 + SHX11_2
      SHX11_2 = RageUI
      SHX11_2 = SHX11_2.ItemOffset
      SHX10_2 = SHX10_2 + SHX11_2
      SHX11_2 = SHX1_1.Width
      SHX12_2 = SHX1_1.Height
      SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    else
      SHX6_2 = RenderSprite
      SHX7_2 = SHX1_1.Dictionary
      SHX8_2 = SHX1_1.Textures
      SHX8_2 = SHX8_2[1]
      SHX9_2 = SHX5_2.X
      SHX10_2 = SHX1_1.X
      SHX9_2 = SHX9_2 + SHX10_2
      SHX10_2 = SHX5_2.WidthOffset
      SHX9_2 = SHX9_2 + SHX10_2
      SHX9_2 = SHX9_2 - SHX4_2
      SHX10_2 = SHX5_2.Y
      SHX11_2 = SHX1_1.Y
      SHX10_2 = SHX10_2 + SHX11_2
      SHX11_2 = SHX5_2.SubtitleHeight
      SHX10_2 = SHX10_2 + SHX11_2
      SHX11_2 = RageUI
      SHX11_2 = SHX11_2.ItemOffset
      SHX10_2 = SHX10_2 + SHX11_2
      SHX11_2 = SHX1_1.Width
      SHX12_2 = SHX1_1.Height
      SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    end
  elseif SHX1_2 then
    SHX6_2 = RenderSprite
    SHX7_2 = SHX1_1.Dictionary
    SHX8_2 = SHX1_1.Textures
    SHX8_2 = SHX8_2[SHX3_2]
    SHX9_2 = SHX5_2.X
    SHX10_2 = SHX1_1.X
    SHX9_2 = SHX9_2 + SHX10_2
    SHX10_2 = SHX5_2.WidthOffset
    SHX9_2 = SHX9_2 + SHX10_2
    SHX9_2 = SHX9_2 - SHX4_2
    SHX10_2 = SHX5_2.Y
    SHX11_2 = SHX1_1.Y
    SHX10_2 = SHX10_2 + SHX11_2
    SHX11_2 = SHX5_2.SubtitleHeight
    SHX10_2 = SHX10_2 + SHX11_2
    SHX11_2 = RageUI
    SHX11_2 = SHX11_2.ItemOffset
    SHX10_2 = SHX10_2 + SHX11_2
    SHX11_2 = SHX1_1.Width
    SHX12_2 = SHX1_1.Height
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  else
    SHX6_2 = RenderSprite
    SHX7_2 = SHX1_1.Dictionary
    SHX8_2 = SHX1_1.Textures
    SHX8_2 = SHX8_2[3]
    SHX9_2 = SHX5_2.X
    SHX10_2 = SHX1_1.X
    SHX9_2 = SHX9_2 + SHX10_2
    SHX10_2 = SHX5_2.WidthOffset
    SHX9_2 = SHX9_2 + SHX10_2
    SHX9_2 = SHX9_2 - SHX4_2
    SHX10_2 = SHX5_2.Y
    SHX11_2 = SHX1_1.Y
    SHX10_2 = SHX10_2 + SHX11_2
    SHX11_2 = SHX5_2.SubtitleHeight
    SHX10_2 = SHX10_2 + SHX11_2
    SHX11_2 = RageUI
    SHX11_2 = SHX11_2.ItemOffset
    SHX10_2 = SHX10_2 + SHX11_2
    SHX11_2 = SHX1_1.Width
    SHX12_2 = SHX1_1.Height
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  end
end
SHX3_1 = RageUI
function SHX4_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2
  SHX7_2 = RageUI
  SHX7_2 = SHX7_2.CurrentMenu
  if nil ~= SHX7_2 then
    SHX8_2 = SHX7_2
    SHX8_2 = SHX8_2()
    if SHX8_2 then
      SHX8_2 = RageUI
      SHX8_2 = SHX8_2.Options
      SHX8_2 = SHX8_2 + 1
      SHX9_2 = SHX7_2.Pagination
      SHX9_2 = SHX9_2.Minimum
      if SHX8_2 >= SHX9_2 then
        SHX9_2 = SHX7_2.Pagination
        SHX9_2 = SHX9_2.Maximum
        if SHX8_2 <= SHX9_2 then
          SHX9_2 = SHX7_2.Index
          SHX9_2 = SHX9_2 == SHX8_2
          SHX10_2 = SHX3_2.LeftBadge
          SHX11_2 = RageUI
          SHX11_2 = SHX11_2.BadgeStyle
          SHX11_2 = SHX11_2.None
          if SHX10_2 ~= SHX11_2 then
            SHX10_2 = SHX3_2.LeftBadge
            if nil ~= SHX10_2 then
              goto SHX_LABEL_38
            end
          end
          SHX10_2 = 0
          -- [FIX IF ERROR] Move ::SHX_LABEL_38:: outside nested blocks until all 'goto SHX_LABEL_38' can see it
          ::SHX_LABEL_38::
          if not SHX10_2 then
            SHX10_2 = 27
          end
          SHX11_2 = SHX3_2.RightBadge
          SHX12_2 = RageUI
          SHX12_2 = SHX12_2.BadgeStyle
          SHX12_2 = SHX12_2.None
          if SHX11_2 ~= SHX12_2 then
            SHX11_2 = SHX3_2.RightBadge
            if nil ~= SHX11_2 then
              goto SHX_LABEL_51
            end
          end
          SHX11_2 = 0
          -- [FIX IF ERROR] Move ::SHX_LABEL_51:: outside nested blocks until all 'goto SHX_LABEL_51' can see it
          ::SHX_LABEL_51::
          if not SHX11_2 then
            SHX11_2 = 32
          end
          SHX12_2 = 0
          SHX13_2 = RageUI
          SHX13_2 = SHX13_2.ItemsSafeZone
          SHX14_2 = SHX7_2
          SHX13_2(SHX14_2)
          SHX13_2 = false
          SHX14_2 = SHX7_2.EnableMouse
          if true == SHX14_2 then
            SHX14_2 = SHX7_2.CursorStyle
            if 0 == SHX14_2 then
              goto SHX_LABEL_67
            end
          end
          SHX14_2 = SHX7_2.CursorStyle
          -- [FIX IF ERROR] Move ::SHX_LABEL_67:: outside nested blocks until all 'goto SHX_LABEL_67' can see it
          ::SHX_LABEL_67::
          if 1 == SHX14_2 then
            SHX14_2 = RageUI
            SHX14_2 = SHX14_2.ItemsMouseBounds
            SHX15_2 = SHX7_2
            SHX16_2 = SHX9_2
            SHX17_2 = SHX8_2
            SHX18_2 = SHX0_1
            SHX14_2 = SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2)
            SHX13_2 = SHX14_2
          end
          if SHX9_2 then
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
            SHX20_2 = SHX0_1.SelectedSprite
            SHX20_2 = SHX20_2.Height
            SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
          end
          SHX14_2 = type
          SHX15_2 = SHX3_2
          SHX14_2 = SHX14_2(SHX15_2)
          if "table" == SHX14_2 then
            SHX14_2 = SHX3_2.Enabled
            if true ~= SHX14_2 then
              SHX14_2 = SHX3_2.Enabled
              if nil ~= SHX14_2 then
                goto SHX_LABEL_332
              end
            end
            if SHX9_2 then
              SHX14_2 = RenderText
              SHX15_2 = SHX0_2
              SHX16_2 = SHX7_2.X
              SHX17_2 = SHX0_1.Text
              SHX17_2 = SHX17_2.X
              SHX16_2 = SHX16_2 + SHX17_2
              SHX16_2 = SHX16_2 + SHX10_2
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
            else
              SHX14_2 = RenderText
              SHX15_2 = SHX0_2
              SHX16_2 = SHX7_2.X
              SHX17_2 = SHX0_1.Text
              SHX17_2 = SHX17_2.X
              SHX16_2 = SHX16_2 + SHX17_2
              SHX16_2 = SHX16_2 + SHX10_2
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
            end
            SHX14_2 = type
            SHX15_2 = SHX3_2
            SHX14_2 = SHX14_2(SHX15_2)
            if "table" == SHX14_2 then
              SHX14_2 = SHX3_2.LeftBadge
              if nil ~= SHX14_2 then
                SHX14_2 = SHX3_2.LeftBadge
                SHX15_2 = RageUI
                SHX15_2 = SHX15_2.BadgeStyle
                SHX15_2 = SHX15_2.None
                if SHX14_2 ~= SHX15_2 then
                  SHX14_2 = SHX3_2.LeftBadge
                  SHX15_2 = SHX9_2
                  SHX14_2 = SHX14_2(SHX15_2)
                  SHX15_2 = RenderSprite
                  SHX16_2 = SHX14_2.BadgeDictionary
                  if not SHX16_2 then
                    SHX16_2 = "commonmenu"
                  end
                  SHX17_2 = SHX14_2.BadgeTexture
                  if not SHX17_2 then
                    SHX17_2 = ""
                  end
                  SHX18_2 = SHX7_2.X
                  SHX19_2 = SHX7_2.Y
                  SHX20_2 = SHX0_1.LeftBadge
                  SHX20_2 = SHX20_2.Y
                  SHX19_2 = SHX19_2 + SHX20_2
                  SHX20_2 = SHX7_2.SubtitleHeight
                  SHX19_2 = SHX19_2 + SHX20_2
                  SHX20_2 = RageUI
                  SHX20_2 = SHX20_2.ItemOffset
                  SHX19_2 = SHX19_2 + SHX20_2
                  SHX20_2 = SHX0_1.LeftBadge
                  SHX20_2 = SHX20_2.Width
                  SHX21_2 = SHX0_1.LeftBadge
                  SHX21_2 = SHX21_2.Height
                  SHX22_2 = 0
                  SHX23_2 = SHX14_2.BadgeColour
                  if SHX23_2 then
                    SHX23_2 = SHX14_2.BadgeColour
                    SHX23_2 = SHX23_2.R
                    if SHX23_2 then
                      goto SHX_LABEL_227
                    end
                  end
                  SHX23_2 = 255
                  -- [FIX IF ERROR] Move ::SHX_LABEL_227:: outside nested blocks until all 'goto SHX_LABEL_227' can see it
                  ::SHX_LABEL_227::
                  SHX24_2 = SHX14_2.BadgeColour
                  if SHX24_2 then
                    SHX24_2 = SHX14_2.BadgeColour
                    SHX24_2 = SHX24_2.G
                    if SHX24_2 then
                      goto SHX_LABEL_235
                    end
                  end
                  SHX24_2 = 255
                  -- [FIX IF ERROR] Move ::SHX_LABEL_235:: outside nested blocks until all 'goto SHX_LABEL_235' can see it
                  ::SHX_LABEL_235::
                  SHX25_2 = SHX14_2.BadgeColour
                  if SHX25_2 then
                    SHX25_2 = SHX14_2.BadgeColour
                    SHX25_2 = SHX25_2.B
                    if SHX25_2 then
                      goto SHX_LABEL_243
                    end
                  end
                  SHX25_2 = 255
                  -- [FIX IF ERROR] Move ::SHX_LABEL_243:: outside nested blocks until all 'goto SHX_LABEL_243' can see it
                  ::SHX_LABEL_243::
                  SHX26_2 = SHX14_2.BadgeColour
                  if SHX26_2 then
                    SHX26_2 = SHX14_2.BadgeColour
                    SHX26_2 = SHX26_2.A
                    if SHX26_2 then
                      goto SHX_LABEL_251
                    end
                  end
                  SHX26_2 = 255
                  -- [FIX IF ERROR] Move ::SHX_LABEL_251:: outside nested blocks until all 'goto SHX_LABEL_251' can see it
                  ::SHX_LABEL_251::
                  SHX15_2(SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
                end
              end
              SHX14_2 = SHX3_2.RightBadge
              if nil ~= SHX14_2 then
                SHX14_2 = SHX3_2.RightBadge
                SHX15_2 = RageUI
                SHX15_2 = SHX15_2.BadgeStyle
                SHX15_2 = SHX15_2.None
                if SHX14_2 ~= SHX15_2 then
                  SHX14_2 = SHX3_2.RightBadge
                  SHX15_2 = SHX9_2
                  SHX14_2 = SHX14_2(SHX15_2)
                  SHX15_2 = RenderSprite
                  SHX16_2 = SHX14_2.BadgeDictionary
                  if not SHX16_2 then
                    SHX16_2 = "commonmenu"
                  end
                  SHX17_2 = SHX14_2.BadgeTexture
                  if not SHX17_2 then
                    SHX17_2 = ""
                  end
                  SHX18_2 = SHX7_2.X
                  SHX19_2 = SHX0_1.RightBadge
                  SHX19_2 = SHX19_2.X
                  SHX18_2 = SHX18_2 + SHX19_2
                  SHX19_2 = SHX7_2.WidthOffset
                  SHX18_2 = SHX18_2 + SHX19_2
                  SHX19_2 = SHX7_2.Y
                  SHX20_2 = SHX0_1.RightBadge
                  SHX20_2 = SHX20_2.Y
                  SHX19_2 = SHX19_2 + SHX20_2
                  SHX20_2 = SHX7_2.SubtitleHeight
                  SHX19_2 = SHX19_2 + SHX20_2
                  SHX20_2 = RageUI
                  SHX20_2 = SHX20_2.ItemOffset
                  SHX19_2 = SHX19_2 + SHX20_2
                  SHX20_2 = SHX0_1.RightBadge
                  SHX20_2 = SHX20_2.Width
                  SHX21_2 = SHX0_1.RightBadge
                  SHX21_2 = SHX21_2.Height
                  SHX22_2 = 0
                  SHX23_2 = SHX14_2.BadgeColour
                  if SHX23_2 then
                    SHX23_2 = SHX14_2.BadgeColour
                    SHX23_2 = SHX23_2.R
                    if SHX23_2 then
                      goto SHX_LABEL_306
                    end
                  end
                  SHX23_2 = 255
                  -- [FIX IF ERROR] Move ::SHX_LABEL_306:: outside nested blocks until all 'goto SHX_LABEL_306' can see it
                  ::SHX_LABEL_306::
                  SHX24_2 = SHX14_2.BadgeColour
                  if SHX24_2 then
                    SHX24_2 = SHX14_2.BadgeColour
                    SHX24_2 = SHX24_2.G
                    if SHX24_2 then
                      goto SHX_LABEL_314
                    end
                  end
                  SHX24_2 = 255
                  -- [FIX IF ERROR] Move ::SHX_LABEL_314:: outside nested blocks until all 'goto SHX_LABEL_314' can see it
                  ::SHX_LABEL_314::
                  SHX25_2 = SHX14_2.BadgeColour
                  if SHX25_2 then
                    SHX25_2 = SHX14_2.BadgeColour
                    SHX25_2 = SHX25_2.B
                    if SHX25_2 then
                      goto SHX_LABEL_322
                    end
                  end
                  SHX25_2 = 255
                  -- [FIX IF ERROR] Move ::SHX_LABEL_322:: outside nested blocks until all 'goto SHX_LABEL_322' can see it
                  ::SHX_LABEL_322::
                  SHX26_2 = SHX14_2.BadgeColour
                  if SHX26_2 then
                    SHX26_2 = SHX14_2.BadgeColour
                    SHX26_2 = SHX26_2.A
                    if SHX26_2 then
                      goto SHX_LABEL_330
                    end
                  end
                  SHX26_2 = 255
                  -- [FIX IF ERROR] Move ::SHX_LABEL_330:: outside nested blocks until all 'goto SHX_LABEL_330' can see it
                  ::SHX_LABEL_330::
                  SHX15_2(SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
                  goto SHX_LABEL_465
                  -- [FIX IF ERROR] Move ::SHX_LABEL_332:: outside nested blocks until all 'goto SHX_LABEL_332' can see it
                  ::SHX_LABEL_332::
                  SHX14_2 = RageUI
                  SHX14_2 = SHX14_2.BadgeStyle
                  SHX14_2 = SHX14_2.Lock
                  SHX15_2 = RageUI
                  SHX15_2 = SHX15_2.BadgeStyle
                  SHX15_2 = SHX15_2.None
                  if SHX14_2 == SHX15_2 or nil == SHX14_2 then
                    SHX15_2 = 0
                    if SHX15_2 then
                      goto SHX_LABEL_346
                    end
                  end
                  SHX15_2 = 27
                  -- [FIX IF ERROR] Move ::SHX_LABEL_346:: outside nested blocks until all 'goto SHX_LABEL_346' can see it
                  ::SHX_LABEL_346::
                  if SHX9_2 then
                    SHX16_2 = RenderText
                    SHX17_2 = SHX0_2
                    SHX18_2 = SHX7_2.X
                    SHX19_2 = SHX0_1.Text
                    SHX19_2 = SHX19_2.X
                    SHX18_2 = SHX18_2 + SHX19_2
                    SHX18_2 = SHX18_2 + SHX15_2
                    SHX19_2 = SHX7_2.Y
                    SHX20_2 = SHX0_1.Text
                    SHX20_2 = SHX20_2.Y
                    SHX19_2 = SHX19_2 + SHX20_2
                    SHX20_2 = SHX7_2.SubtitleHeight
                    SHX19_2 = SHX19_2 + SHX20_2
                    SHX20_2 = RageUI
                    SHX20_2 = SHX20_2.ItemOffset
                    SHX19_2 = SHX19_2 + SHX20_2
                    SHX20_2 = 0
                    SHX21_2 = SHX0_1.Text
                    SHX21_2 = SHX21_2.Scale
                    SHX22_2 = 0
                    SHX23_2 = 0
                    SHX24_2 = 0
                    SHX25_2 = 255
                    SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
                  else
                    SHX16_2 = RenderText
                    SHX17_2 = SHX0_2
                    SHX18_2 = SHX7_2.X
                    SHX19_2 = SHX0_1.Text
                    SHX19_2 = SHX19_2.X
                    SHX18_2 = SHX18_2 + SHX19_2
                    SHX18_2 = SHX18_2 + SHX15_2
                    SHX19_2 = SHX7_2.Y
                    SHX20_2 = SHX0_1.Text
                    SHX20_2 = SHX20_2.Y
                    SHX19_2 = SHX19_2 + SHX20_2
                    SHX20_2 = SHX7_2.SubtitleHeight
                    SHX19_2 = SHX19_2 + SHX20_2
                    SHX20_2 = RageUI
                    SHX20_2 = SHX20_2.ItemOffset
                    SHX19_2 = SHX19_2 + SHX20_2
                    SHX20_2 = 0
                    SHX21_2 = SHX0_1.Text
                    SHX21_2 = SHX21_2.Scale
                    SHX22_2 = 163
                    SHX23_2 = 159
                    SHX24_2 = 148
                    SHX25_2 = 255
                    SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
                  end
                  SHX16_2 = RageUI
                  SHX16_2 = SHX16_2.BadgeStyle
                  SHX16_2 = SHX16_2.None
                  if SHX14_2 ~= SHX16_2 and nil ~= SHX14_2 then
                    SHX16_2 = SHX14_2
                    SHX17_2 = SHX9_2
                    SHX16_2 = SHX16_2(SHX17_2)
                    SHX17_2 = RenderSprite
                    SHX18_2 = SHX16_2.BadgeDictionary
                    if not SHX18_2 then
                      SHX18_2 = "commonmenu"
                    end
                    SHX19_2 = SHX16_2.BadgeTexture
                    if not SHX19_2 then
                      SHX19_2 = ""
                    end
                    SHX20_2 = SHX7_2.X
                    SHX21_2 = SHX7_2.Y
                    SHX22_2 = SHX0_1.LeftBadge
                    SHX22_2 = SHX22_2.Y
                    SHX21_2 = SHX21_2 + SHX22_2
                    SHX22_2 = SHX7_2.SubtitleHeight
                    SHX21_2 = SHX21_2 + SHX22_2
                    SHX22_2 = RageUI
                    SHX22_2 = SHX22_2.ItemOffset
                    SHX21_2 = SHX21_2 + SHX22_2
                    SHX22_2 = SHX0_1.LeftBadge
                    SHX22_2 = SHX22_2.Width
                    SHX23_2 = SHX0_1.LeftBadge
                    SHX23_2 = SHX23_2.Height
                    SHX24_2 = 0
                    SHX25_2 = SHX16_2.BadgeColour
                    SHX25_2 = SHX25_2.R
                    if not SHX25_2 then
                      SHX25_2 = 255
                    end
                    SHX26_2 = SHX16_2.BadgeColour
                    SHX26_2 = SHX26_2.G
                    if not SHX26_2 then
                      SHX26_2 = 255
                    end
                    SHX27_2 = SHX16_2.BadgeColour
                    SHX27_2 = SHX27_2.B
                    if not SHX27_2 then
                      SHX27_2 = 255
                    end
                    SHX28_2 = SHX16_2.BadgeColour
                    SHX28_2 = SHX28_2.A
                    if not SHX28_2 then
                      SHX28_2 = 255
                    end
                    SHX17_2(SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
                  end
                end
              end
            end
            -- [FIX IF ERROR] Move ::SHX_LABEL_465:: outside nested blocks until all 'goto SHX_LABEL_465' can see it
            ::SHX_LABEL_465::
            SHX14_2 = SHX3_2.Enabled
            if true ~= SHX14_2 then
              SHX14_2 = SHX3_2.Enabled
              if nil ~= SHX14_2 then
                goto SHX_LABEL_564
              end
            end
            if SHX9_2 then
              SHX14_2 = SHX3_2.RightLabel
              if nil ~= SHX14_2 then
                SHX14_2 = SHX3_2.RightLabel
                if "" ~= SHX14_2 then
                  SHX14_2 = RenderText
                  SHX15_2 = SHX3_2.RightLabel
                  SHX16_2 = SHX7_2.X
                  SHX17_2 = SHX0_1.RightText
                  SHX17_2 = SHX17_2.X
                  SHX16_2 = SHX16_2 + SHX17_2
                  SHX16_2 = SHX16_2 - SHX11_2
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
                  SHX14_2 = MeasureStringWidth
                  SHX15_2 = SHX3_2.RightLabel
                  SHX16_2 = 0
                  SHX17_2 = 0.35
                  SHX14_2 = SHX14_2(SHX15_2, SHX16_2, SHX17_2)
                  SHX12_2 = SHX14_2
                end
              end
            else
              SHX14_2 = SHX3_2.RightLabel
              if nil ~= SHX14_2 then
                SHX14_2 = SHX3_2.RightLabel
                if "" ~= SHX14_2 then
                  SHX14_2 = RenderText
                  SHX15_2 = SHX3_2.RightLabel
                  SHX16_2 = SHX7_2.X
                  SHX17_2 = SHX0_1.RightText
                  SHX17_2 = SHX17_2.X
                  SHX16_2 = SHX16_2 + SHX17_2
                  SHX16_2 = SHX16_2 - SHX11_2
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
                  SHX14_2 = MeasureStringWidth
                  SHX15_2 = SHX3_2.RightLabel
                  SHX16_2 = 0
                  SHX17_2 = 0.35
                  SHX14_2 = SHX14_2(SHX15_2, SHX16_2, SHX17_2)
                  SHX12_2 = SHX14_2
                end
              end
            end
            -- [FIX IF ERROR] Move ::SHX_LABEL_564:: outside nested blocks until all 'goto SHX_LABEL_564' can see it
            ::SHX_LABEL_564::
            SHX12_2 = SHX11_2 + SHX12_2
            SHX14_2 = SHX3_2.Style
            if nil ~= SHX14_2 then
              SHX14_2 = SHX3_2.Style
              SHX15_2 = RageUI
              SHX15_2 = SHX15_2.CheckboxStyle
              SHX15_2 = SHX15_2.Tick
              if SHX14_2 == SHX15_2 then
                SHX14_2 = SHX2_1
                SHX15_2 = SHX9_2
                SHX16_2 = SHX2_2
                SHX17_2 = 2
                SHX18_2 = 4
                SHX19_2 = SHX12_2
                SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
              else
                SHX14_2 = SHX3_2.Style
                SHX15_2 = RageUI
                SHX15_2 = SHX15_2.CheckboxStyle
                SHX15_2 = SHX15_2.Cross
                if SHX14_2 == SHX15_2 then
                  SHX14_2 = SHX2_1
                  SHX15_2 = SHX9_2
                  SHX16_2 = SHX2_2
                  SHX17_2 = 5
                  SHX18_2 = 6
                  SHX19_2 = SHX12_2
                  SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
                else
                  SHX14_2 = SHX2_1
                  SHX15_2 = SHX9_2
                  SHX16_2 = SHX2_2
                  SHX17_2 = 2
                  SHX18_2 = 4
                  SHX19_2 = SHX12_2
                  SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
                end
              end
            else
              SHX14_2 = SHX2_1
              SHX15_2 = SHX9_2
              SHX16_2 = SHX2_2
              SHX17_2 = 2
              SHX18_2 = 4
              SHX19_2 = SHX12_2
              SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
            end
            if SHX9_2 then
              SHX14_2 = SHX7_2.Controls
              SHX14_2 = SHX14_2.Select
              SHX14_2 = SHX14_2.Active
              if not SHX14_2 then
                if not SHX13_2 then
                  goto SHX_LABEL_658
                end
                SHX14_2 = SHX7_2.Controls
                SHX14_2 = SHX14_2.Click
                SHX14_2 = SHX14_2.Active
                if not SHX14_2 then
                  goto SHX_LABEL_658
                end
              end
              SHX14_2 = SHX3_2.Enabled
              if true ~= SHX14_2 then
                SHX14_2 = SHX3_2.Enabled
                if nil ~= SHX14_2 then
                  goto SHX_LABEL_658
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
              SHX2_2 = not SHX2_2
              if SHX2_2 then
                if nil ~= SHX5_2 then
                  SHX15_2 = SHX5_2
                  SHX15_2()
                end
              elseif nil ~= SHX6_2 then
                SHX15_2 = SHX6_2
                SHX15_2()
              end
            end
            -- [FIX IF ERROR] Move ::SHX_LABEL_658:: outside nested blocks until all 'goto SHX_LABEL_658' can see it
            ::SHX_LABEL_658::
            if SHX9_2 then
              SHX14_2 = SHX7_2.Controls
              SHX14_2 = SHX14_2.Select
              SHX14_2 = SHX14_2.Active
              if not SHX14_2 then
                if SHX13_2 then
                  SHX14_2 = SHX7_2.Controls
                  SHX14_2 = SHX14_2.Click
                  SHX14_2 = SHX14_2.Active
                  if SHX14_2 then
                    SHX14_2 = SHX3_2.Enabled
                    if false == SHX14_2 then
                      SHX14_2 = RageUI
                      SHX14_2 = SHX14_2.Settings
                      SHX14_2 = SHX14_2.Audio
                      SHX15_2 = RageUI
                      SHX15_2 = SHX15_2.PlaySound
                      SHX16_2 = SHX14_2.Use
                      SHX16_2 = SHX14_2[SHX16_2]
                      SHX16_2 = SHX16_2.Error
                      SHX16_2 = SHX16_2.audioName
                      SHX17_2 = SHX14_2.Use
                      SHX17_2 = SHX14_2[SHX17_2]
                      SHX17_2 = SHX17_2.Error
                      SHX17_2 = SHX17_2.audioRef
                      SHX15_2(SHX16_2, SHX17_2)
                      SHX2_2 = false
                      if SHX2_2 then
                        if nil ~= SHX5_2 then
                          SHX15_2 = SHX5_2
                          SHX15_2()
                        end
                      elseif nil ~= SHX6_2 then
                        SHX15_2 = SHX6_2
                        SHX15_2()
                      end
                    end
                  end
                end
              end
            end
          else
            SHX14_2 = error
            SHX15_2 = "UICheckBox Style is not a `table`"
            SHX14_2(SHX15_2)
          end
          SHX14_2 = RageUI
          SHX15_2 = RageUI
          SHX15_2 = SHX15_2.ItemOffset
          SHX16_2 = SHX0_1.Rectangle
          SHX16_2 = SHX16_2.Height
          SHX15_2 = SHX15_2 + SHX16_2
          SHX14_2.ItemOffset = SHX15_2
          SHX14_2 = RageUI
          SHX14_2 = SHX14_2.ItemsDescription
          SHX15_2 = SHX7_2
          SHX16_2 = SHX1_2
          SHX17_2 = SHX9_2
          SHX14_2(SHX15_2, SHX16_2, SHX17_2)
          SHX14_2 = SHX4_2
          SHX15_2 = SHX13_2
          SHX16_2 = SHX9_2
          SHX17_2 = SHX7_2.Controls
          SHX17_2 = SHX17_2.Select
          SHX17_2 = SHX17_2.Active
          if not SHX17_2 then
            if not SHX13_2 then
              goto SHX_LABEL_735
              SHX17_2 = SHX13_2 or SHX17_2
            end
            SHX17_2 = SHX7_2.Controls
            SHX17_2 = SHX17_2.Click
            SHX17_2 = SHX17_2.Active
            if not SHX17_2 then
              goto SHX_LABEL_735
            end
          end
          SHX17_2 = SHX9_2
          -- [FIX IF ERROR] Move ::SHX_LABEL_735:: outside nested blocks until all 'goto SHX_LABEL_735' can see it
          ::SHX_LABEL_735::
          SHX18_2 = SHX2_2
          SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2)
        end
      end
      SHX9_2 = RageUI
      SHX10_2 = RageUI
      SHX10_2 = SHX10_2.Options
      SHX10_2 = SHX10_2 + 1
      SHX9_2.Options = SHX10_2
    end
  end
end
SHX3_1.Checkbox = SHX4_1
