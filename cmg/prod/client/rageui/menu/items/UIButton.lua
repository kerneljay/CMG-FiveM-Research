-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1
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
SHX1_1 = RageUI
function SHX2_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX5_2 = RageUI
  SHX5_2 = SHX5_2.CurrentMenu
  if nil ~= SHX5_2 then
    SHX6_2 = SHX5_2
    SHX6_2 = SHX6_2()
    if SHX6_2 then
      SHX6_2 = RageUI
      SHX6_2 = SHX6_2.Options
      SHX6_2 = SHX6_2 + 1
      SHX7_2 = SHX5_2.Pagination
      SHX7_2 = SHX7_2.Minimum
      if SHX6_2 >= SHX7_2 then
        SHX7_2 = SHX5_2.Pagination
        SHX7_2 = SHX7_2.Maximum
        if SHX6_2 <= SHX7_2 then
          SHX7_2 = SHX5_2.Index
          SHX7_2 = SHX7_2 == SHX6_2
          SHX8_2 = RageUI
          SHX8_2 = SHX8_2.ItemsSafeZone
          SHX9_2 = SHX5_2
          SHX8_2(SHX9_2)
          if SHX7_2 then
            SHX8_2 = RenderSprite
            SHX9_2 = SHX0_1.SelectedSprite
            SHX9_2 = SHX9_2.Dictionary
            SHX10_2 = SHX0_1.SelectedSprite
            SHX10_2 = SHX10_2.Texture
            SHX11_2 = SHX5_2.X
            SHX12_2 = SHX5_2.Y
            SHX13_2 = SHX0_1.SelectedSprite
            SHX13_2 = SHX13_2.Y
            SHX12_2 = SHX12_2 + SHX13_2
            SHX13_2 = SHX5_2.SubtitleHeight
            SHX12_2 = SHX12_2 + SHX13_2
            SHX13_2 = RageUI
            SHX13_2 = SHX13_2.ItemOffset
            SHX12_2 = SHX12_2 + SHX13_2
            SHX13_2 = SHX0_1.SelectedSprite
            SHX13_2 = SHX13_2.Width
            SHX14_2 = SHX5_2.WidthOffset
            SHX13_2 = SHX13_2 + SHX14_2
            SHX14_2 = SHX0_1.SelectedSprite
            SHX14_2 = SHX14_2.Height
            SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
          if SHX2_2 then
            if SHX7_2 then
              SHX8_2 = {}
              SHX9_2 = 0
              SHX10_2 = 0
              SHX11_2 = 0
              SHX8_2[1] = SHX9_2
              SHX8_2[2] = SHX10_2
              SHX8_2[3] = SHX11_2
              if SHX8_2 then
                goto SHX_LABEL_84
              end
            end
            SHX8_2 = {}
            SHX9_2 = 255
            SHX10_2 = 255
            SHX11_2 = 255
            SHX8_2[1] = SHX9_2
            SHX8_2[2] = SHX10_2
            SHX8_2[3] = SHX11_2
            if SHX8_2 then
              goto SHX_LABEL_84
            end
          end
          SHX8_2 = {}
          SHX9_2 = 163
          SHX10_2 = 159
          SHX11_2 = 148
          SHX8_2[1] = SHX9_2
          SHX8_2[2] = SHX10_2
          SHX8_2[3] = SHX11_2
          -- [FIX IF ERROR] Move ::SHX_LABEL_84:: outside nested blocks until all 'goto SHX_LABEL_84' can see it
          ::SHX_LABEL_84::
          SHX9_2 = RenderText
          SHX10_2 = SHX0_2
          SHX11_2 = SHX5_2.X
          SHX12_2 = SHX0_1.Text
          SHX12_2 = SHX12_2.X
          SHX11_2 = SHX11_2 + SHX12_2
          SHX12_2 = SHX5_2.Y
          SHX13_2 = SHX0_1.Text
          SHX13_2 = SHX13_2.Y
          SHX12_2 = SHX12_2 + SHX13_2
          SHX13_2 = SHX5_2.SubtitleHeight
          SHX12_2 = SHX12_2 + SHX13_2
          SHX13_2 = RageUI
          SHX13_2 = SHX13_2.ItemOffset
          SHX12_2 = SHX12_2 + SHX13_2
          SHX13_2 = 0
          SHX14_2 = SHX0_1.Text
          SHX14_2 = SHX14_2.Scale
          SHX15_2 = SHX8_2[1]
          SHX16_2 = SHX8_2[2]
          SHX17_2 = SHX8_2[3]
          SHX18_2 = 255
          SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
          SHX9_2 = RageUI
          SHX10_2 = RageUI
          SHX10_2 = SHX10_2.ItemOffset
          SHX11_2 = SHX0_1.Rectangle
          SHX11_2 = SHX11_2.Height
          SHX10_2 = SHX10_2 + SHX11_2
          SHX9_2.ItemOffset = SHX10_2
          SHX9_2 = RageUI
          SHX9_2 = SHX9_2.ItemsDescription
          SHX10_2 = SHX5_2
          SHX11_2 = SHX1_2
          SHX12_2 = SHX7_2
          SHX9_2(SHX10_2, SHX11_2, SHX12_2)
          if SHX2_2 then
            SHX9_2 = SHX5_2.EnableMouse
            if SHX9_2 then
              SHX9_2 = SHX5_2.CursorStyle
              if 0 ~= SHX9_2 then
                SHX9_2 = SHX5_2.CursorStyle
              end
              SHX9_2 = RageUI
              SHX9_2 = SHX9_2.ItemsMouseBounds
              SHX10_2 = SHX5_2
              SHX11_2 = SHX7_2
              SHX12_2 = SHX6_2 + 1
              SHX13_2 = SHX0_1
              SHX9_2 = 1 == SHX9_2 and SHX9_2
            end
            SHX10_2 = SHX5_2.Controls
            SHX10_2 = SHX10_2.Select
            SHX10_2 = SHX10_2.Active
            if not SHX10_2 then
              if not SHX9_2 then
                goto SHX_LABEL_160
                SHX10_2 = SHX9_2 or SHX10_2
              end
              SHX10_2 = SHX5_2.Controls
              SHX10_2 = SHX10_2.Click
              SHX10_2 = SHX10_2.Active
              if not SHX10_2 then
                goto SHX_LABEL_160
              end
            end
            SHX10_2 = SHX7_2
            -- [FIX IF ERROR] Move ::SHX_LABEL_160:: outside nested blocks until all 'goto SHX_LABEL_160' can see it
            ::SHX_LABEL_160::
            if SHX3_2 then
              SHX11_2 = SHX3_2
              SHX12_2 = SHX9_2
              SHX13_2 = SHX7_2
              SHX14_2 = SHX10_2
              SHX11_2(SHX12_2, SHX13_2, SHX14_2)
            end
            if SHX10_2 then
              SHX11_2 = RageUI
              SHX11_2 = SHX11_2.Settings
              SHX11_2 = SHX11_2.Audio
              SHX12_2 = RageUI
              SHX12_2 = SHX12_2.PlaySound
              SHX13_2 = SHX11_2.Use
              SHX13_2 = SHX11_2[SHX13_2]
              SHX13_2 = SHX13_2.Select
              SHX13_2 = SHX13_2.audioName
              SHX14_2 = SHX11_2.Use
              SHX14_2 = SHX11_2[SHX14_2]
              SHX14_2 = SHX14_2.Select
              SHX14_2 = SHX14_2.audioRef
              SHX12_2(SHX13_2, SHX14_2)
              if SHX4_2 then
                SHX12_2 = RageUI
                SHX12_2 = SHX12_2.IsAnyMenuVisible
                SHX12_2 = SHX12_2()
                if SHX12_2 then
                  SHX12_2 = SHX4_2
                  SHX12_2 = SHX12_2()
                  if SHX12_2 then
                    SHX12_2 = RageUI
                    SHX12_2.NextMenu = SHX4_2
                  end
                end
              end
            end
          end
        end
      end
      SHX7_2 = RageUI
      SHX8_2 = RageUI
      SHX8_2 = SHX8_2.Options
      SHX8_2 = SHX8_2 + 1
      SHX7_2.Options = SHX8_2
    end
  end
end
SHX1_1.Button = SHX2_1
SHX1_1 = RageUI
function SHX2_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2
  SHX6_2 = RageUI
  SHX6_2 = SHX6_2.CurrentMenu
  if nil ~= SHX6_2 then
    SHX7_2 = SHX6_2
    SHX7_2 = SHX7_2()
    if SHX7_2 then
      SHX7_2 = RageUI
      SHX7_2 = SHX7_2.Options
      SHX7_2 = SHX7_2 + 1
      SHX8_2 = SHX6_2.Pagination
      SHX8_2 = SHX8_2.Minimum
      if SHX7_2 >= SHX8_2 then
        SHX8_2 = SHX6_2.Pagination
        SHX8_2 = SHX8_2.Maximum
        if SHX7_2 <= SHX8_2 then
          SHX8_2 = SHX6_2.Index
          SHX8_2 = SHX8_2 == SHX7_2
          SHX9_2 = RageUI
          SHX9_2 = SHX9_2.ItemsSafeZone
          SHX10_2 = SHX6_2
          SHX9_2(SHX10_2)
          SHX9_2 = SHX2_2.LeftBadge
          if SHX9_2 then
            SHX9_2 = SHX2_2.LeftBadge
            SHX10_2 = RageUI
            SHX10_2 = SHX10_2.BadgeStyle
            SHX10_2 = SHX10_2.None
            SHX9_2 = SHX9_2 ~= SHX10_2
          end
          SHX10_2 = SHX2_2.RightBadge
          if SHX10_2 then
            SHX10_2 = SHX2_2.RightBadge
            SHX11_2 = RageUI
            SHX11_2 = SHX11_2.BadgeStyle
            SHX11_2 = SHX11_2.None
          end
          SHX10_2 = SHX10_2 ~= SHX11_2
          if SHX9_2 then
            SHX11_2 = 27
            if SHX11_2 then
              goto SHX_LABEL_66
            end
          end
          SHX11_2 = 0
          -- [FIX IF ERROR] Move ::SHX_LABEL_66:: outside nested blocks until all 'goto SHX_LABEL_66' can see it
          ::SHX_LABEL_66::
          if SHX10_2 then
            SHX12_2 = 32
            if SHX12_2 then
              goto SHX_LABEL_72
            end
          end
          SHX12_2 = 0
          -- [FIX IF ERROR] Move ::SHX_LABEL_72:: outside nested blocks until all 'goto SHX_LABEL_72' can see it
          ::SHX_LABEL_72::
          SHX13_2 = SHX2_2.Color
          if SHX13_2 then
            SHX13_2 = SHX2_2.Color
            SHX13_2 = SHX13_2.BackgroundColor
            if SHX13_2 then
              SHX13_2 = RenderRectangle
              SHX14_2 = SHX6_2.X
              SHX15_2 = SHX6_2.Y
              SHX16_2 = SHX0_1.SelectedSprite
              SHX16_2 = SHX16_2.Y
              SHX15_2 = SHX15_2 + SHX16_2
              SHX16_2 = SHX6_2.SubtitleHeight
              SHX15_2 = SHX15_2 + SHX16_2
              SHX16_2 = RageUI
              SHX16_2 = SHX16_2.ItemOffset
              SHX15_2 = SHX15_2 + SHX16_2
              SHX16_2 = SHX0_1.SelectedSprite
              SHX16_2 = SHX16_2.Width
              SHX17_2 = SHX6_2.WidthOffset
              SHX16_2 = SHX16_2 + SHX17_2
              SHX17_2 = SHX0_1.SelectedSprite
              SHX17_2 = SHX17_2.Height
              SHX18_2 = SHX2_2.Color
              SHX18_2 = SHX18_2.BackgroundColor
              SHX18_2 = SHX18_2[1]
              SHX19_2 = SHX2_2.Color
              SHX19_2 = SHX19_2.BackgroundColor
              SHX19_2 = SHX19_2[2]
              SHX20_2 = SHX2_2.Color
              SHX20_2 = SHX20_2.BackgroundColor
              SHX20_2 = SHX20_2[3]
              SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
            end
          end
          if SHX8_2 then
            SHX13_2 = SHX2_2.Color
            if SHX13_2 then
              SHX13_2 = SHX2_2.Color
              SHX13_2 = SHX13_2.HightLightColor
              if SHX13_2 then
                SHX13_2 = RenderRectangle
                SHX14_2 = SHX6_2.X
                SHX15_2 = SHX6_2.Y
                SHX16_2 = SHX0_1.SelectedSprite
                SHX16_2 = SHX16_2.Y
                SHX15_2 = SHX15_2 + SHX16_2
                SHX16_2 = SHX6_2.SubtitleHeight
                SHX15_2 = SHX15_2 + SHX16_2
                SHX16_2 = RageUI
                SHX16_2 = SHX16_2.ItemOffset
                SHX15_2 = SHX15_2 + SHX16_2
                SHX16_2 = SHX0_1.SelectedSprite
                SHX16_2 = SHX16_2.Width
                SHX17_2 = SHX6_2.WidthOffset
                SHX16_2 = SHX16_2 + SHX17_2
                SHX17_2 = SHX0_1.SelectedSprite
                SHX17_2 = SHX17_2.Height
                SHX18_2 = SHX2_2.Color
                SHX18_2 = SHX18_2.HightLightColor
                SHX18_2 = SHX18_2[1]
                SHX19_2 = SHX2_2.Color
                SHX19_2 = SHX19_2.HightLightColor
                SHX19_2 = SHX19_2[2]
                SHX20_2 = SHX2_2.Color
                SHX20_2 = SHX20_2.HightLightColor
                SHX20_2 = SHX20_2[3]
                SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
            end
            else
              SHX13_2 = RenderSprite
              SHX14_2 = SHX0_1.SelectedSprite
              SHX14_2 = SHX14_2.Dictionary
              SHX15_2 = SHX0_1.SelectedSprite
              SHX15_2 = SHX15_2.Texture
              SHX16_2 = SHX6_2.X
              SHX17_2 = SHX6_2.Y
              SHX18_2 = SHX0_1.SelectedSprite
              SHX18_2 = SHX18_2.Y
              SHX17_2 = SHX17_2 + SHX18_2
              SHX18_2 = SHX6_2.SubtitleHeight
              SHX17_2 = SHX17_2 + SHX18_2
              SHX18_2 = RageUI
              SHX18_2 = SHX18_2.ItemOffset
              SHX17_2 = SHX17_2 + SHX18_2
              SHX18_2 = SHX0_1.SelectedSprite
              SHX18_2 = SHX18_2.Width
              SHX19_2 = SHX6_2.WidthOffset
              SHX18_2 = SHX18_2 + SHX19_2
              SHX19_2 = SHX0_1.SelectedSprite
              SHX19_2 = SHX19_2.Height
              SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
            end
          end
          if SHX3_2 then
            if SHX9_2 then
              SHX13_2 = SHX2_2.LeftBadge
              SHX14_2 = SHX8_2
              SHX13_2 = SHX13_2(SHX14_2)
              SHX14_2 = RenderSprite
              SHX15_2 = SHX13_2.BadgeDictionary
              if not SHX15_2 then
                SHX15_2 = "commonmenu"
              end
              SHX16_2 = SHX13_2.BadgeTexture
              if not SHX16_2 then
                SHX16_2 = ""
              end
              SHX17_2 = SHX6_2.X
              SHX18_2 = SHX6_2.Y
              SHX19_2 = SHX0_1.LeftBadge
              SHX19_2 = SHX19_2.Y
              SHX18_2 = SHX18_2 + SHX19_2
              SHX19_2 = SHX6_2.SubtitleHeight
              SHX18_2 = SHX18_2 + SHX19_2
              SHX19_2 = RageUI
              SHX19_2 = SHX19_2.ItemOffset
              SHX18_2 = SHX18_2 + SHX19_2
              SHX19_2 = SHX0_1.LeftBadge
              SHX19_2 = SHX19_2.Width
              SHX20_2 = SHX0_1.LeftBadge
              SHX20_2 = SHX20_2.Height
              SHX21_2 = 0
              SHX22_2 = SHX13_2.BadgeColour
              if SHX22_2 then
                SHX22_2 = SHX13_2.BadgeColour
                SHX22_2 = SHX22_2.R
                if SHX22_2 then
                  goto SHX_LABEL_219
                end
              end
              SHX22_2 = 255
              -- [FIX IF ERROR] Move ::SHX_LABEL_219:: outside nested blocks until all 'goto SHX_LABEL_219' can see it
              ::SHX_LABEL_219::
              SHX23_2 = SHX13_2.BadgeColour
              if SHX23_2 then
                SHX23_2 = SHX13_2.BadgeColour
                SHX23_2 = SHX23_2.G
                if SHX23_2 then
                  goto SHX_LABEL_227
                end
              end
              SHX23_2 = 255
              -- [FIX IF ERROR] Move ::SHX_LABEL_227:: outside nested blocks until all 'goto SHX_LABEL_227' can see it
              ::SHX_LABEL_227::
              SHX24_2 = SHX13_2.BadgeColour
              if SHX24_2 then
                SHX24_2 = SHX13_2.BadgeColour
                SHX24_2 = SHX24_2.B
                if SHX24_2 then
                  goto SHX_LABEL_235
                end
              end
              SHX24_2 = 255
              -- [FIX IF ERROR] Move ::SHX_LABEL_235:: outside nested blocks until all 'goto SHX_LABEL_235' can see it
              ::SHX_LABEL_235::
              SHX25_2 = SHX13_2.BadgeColour
              if SHX25_2 then
                SHX25_2 = SHX13_2.BadgeColour
                SHX25_2 = SHX25_2.A
                if SHX25_2 then
                  goto SHX_LABEL_243
                end
              end
              SHX25_2 = 255
              -- [FIX IF ERROR] Move ::SHX_LABEL_243:: outside nested blocks until all 'goto SHX_LABEL_243' can see it
              ::SHX_LABEL_243::
              SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
            end
            if SHX10_2 then
              SHX13_2 = SHX2_2.RightBadge
              SHX14_2 = SHX8_2
              SHX13_2 = SHX13_2(SHX14_2)
              SHX14_2 = RenderSprite
              SHX15_2 = SHX13_2.BadgeDictionary
              if not SHX15_2 then
                SHX15_2 = "commonmenu"
              end
              SHX16_2 = SHX13_2.BadgeTexture
              if not SHX16_2 then
                SHX16_2 = ""
              end
              SHX17_2 = SHX6_2.X
              SHX18_2 = SHX0_1.RightBadge
              SHX18_2 = SHX18_2.X
              SHX17_2 = SHX17_2 + SHX18_2
              SHX18_2 = SHX6_2.WidthOffset
              SHX17_2 = SHX17_2 + SHX18_2
              SHX18_2 = SHX6_2.Y
              SHX19_2 = SHX0_1.RightBadge
              SHX19_2 = SHX19_2.Y
              SHX18_2 = SHX18_2 + SHX19_2
              SHX19_2 = SHX6_2.SubtitleHeight
              SHX18_2 = SHX18_2 + SHX19_2
              SHX19_2 = RageUI
              SHX19_2 = SHX19_2.ItemOffset
              SHX18_2 = SHX18_2 + SHX19_2
              SHX19_2 = SHX0_1.RightBadge
              SHX19_2 = SHX19_2.Width
              SHX20_2 = SHX0_1.RightBadge
              SHX20_2 = SHX20_2.Height
              SHX21_2 = 0
              SHX22_2 = SHX13_2.BadgeColour
              if SHX22_2 then
                SHX22_2 = SHX13_2.BadgeColour
                SHX22_2 = SHX22_2.R
                if SHX22_2 then
                  goto SHX_LABEL_291
                end
              end
              SHX22_2 = 255
              -- [FIX IF ERROR] Move ::SHX_LABEL_291:: outside nested blocks until all 'goto SHX_LABEL_291' can see it
              ::SHX_LABEL_291::
              SHX23_2 = SHX13_2.BadgeColour
              if SHX23_2 then
                SHX23_2 = SHX13_2.BadgeColour
                SHX23_2 = SHX23_2.G
                if SHX23_2 then
                  goto SHX_LABEL_299
                end
              end
              SHX23_2 = 255
              -- [FIX IF ERROR] Move ::SHX_LABEL_299:: outside nested blocks until all 'goto SHX_LABEL_299' can see it
              ::SHX_LABEL_299::
              SHX24_2 = SHX13_2.BadgeColour
              if SHX24_2 then
                SHX24_2 = SHX13_2.BadgeColour
                SHX24_2 = SHX24_2.B
                if SHX24_2 then
                  goto SHX_LABEL_307
                end
              end
              SHX24_2 = 255
              -- [FIX IF ERROR] Move ::SHX_LABEL_307:: outside nested blocks until all 'goto SHX_LABEL_307' can see it
              ::SHX_LABEL_307::
              SHX25_2 = SHX13_2.BadgeColour
              if SHX25_2 then
                SHX25_2 = SHX13_2.BadgeColour
                SHX25_2 = SHX25_2.A
                if SHX25_2 then
                  goto SHX_LABEL_315
                end
              end
              SHX25_2 = 255
              -- [FIX IF ERROR] Move ::SHX_LABEL_315:: outside nested blocks until all 'goto SHX_LABEL_315' can see it
              ::SHX_LABEL_315::
              SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
            end
            SHX13_2 = SHX2_2.RightLabel
            if SHX13_2 then
              SHX13_2 = RenderText
              SHX14_2 = SHX2_2.RightLabel
              SHX15_2 = SHX6_2.X
              SHX16_2 = SHX0_1.RightText
              SHX16_2 = SHX16_2.X
              SHX15_2 = SHX15_2 + SHX16_2
              SHX15_2 = SHX15_2 - SHX12_2
              SHX16_2 = SHX6_2.WidthOffset
              SHX15_2 = SHX15_2 + SHX16_2
              SHX16_2 = SHX6_2.Y
              SHX17_2 = SHX0_1.RightText
              SHX17_2 = SHX17_2.Y
              SHX16_2 = SHX16_2 + SHX17_2
              SHX17_2 = SHX6_2.SubtitleHeight
              SHX16_2 = SHX16_2 + SHX17_2
              SHX17_2 = RageUI
              SHX17_2 = SHX17_2.ItemOffset
              SHX16_2 = SHX16_2 + SHX17_2
              SHX17_2 = 0
              SHX18_2 = SHX0_1.RightText
              SHX18_2 = SHX18_2.Scale
              if SHX8_2 then
                SHX19_2 = 0
                if SHX19_2 then
                  goto SHX_LABEL_352
                end
              end
              SHX19_2 = 245
              -- [FIX IF ERROR] Move ::SHX_LABEL_352:: outside nested blocks until all 'goto SHX_LABEL_352' can see it
              ::SHX_LABEL_352::
              if SHX8_2 then
                SHX20_2 = 0
                if SHX20_2 then
                  goto SHX_LABEL_358
                end
              end
              SHX20_2 = 245
              -- [FIX IF ERROR] Move ::SHX_LABEL_358:: outside nested blocks until all 'goto SHX_LABEL_358' can see it
              ::SHX_LABEL_358::
              if SHX8_2 then
                SHX21_2 = 0
                if SHX21_2 then
                  goto SHX_LABEL_364
                end
              end
              SHX21_2 = 245
              -- [FIX IF ERROR] Move ::SHX_LABEL_364:: outside nested blocks until all 'goto SHX_LABEL_364' can see it
              ::SHX_LABEL_364::
              SHX22_2 = 255
              SHX23_2 = 2
              SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
            end
            SHX13_2 = RenderText
            SHX14_2 = SHX0_2
            SHX15_2 = SHX6_2.X
            SHX16_2 = SHX0_1.Text
            SHX16_2 = SHX16_2.X
            SHX15_2 = SHX15_2 + SHX16_2
            SHX15_2 = SHX15_2 + SHX11_2
            SHX16_2 = SHX6_2.Y
            SHX17_2 = SHX0_1.Text
            SHX17_2 = SHX17_2.Y
            SHX16_2 = SHX16_2 + SHX17_2
            SHX17_2 = SHX6_2.SubtitleHeight
            SHX16_2 = SHX16_2 + SHX17_2
            SHX17_2 = RageUI
            SHX17_2 = SHX17_2.ItemOffset
            SHX16_2 = SHX16_2 + SHX17_2
            SHX17_2 = 0
            SHX18_2 = SHX0_1.Text
            SHX18_2 = SHX18_2.Scale
            if SHX8_2 then
              SHX19_2 = 0
              if SHX19_2 then
                goto SHX_LABEL_397
              end
            end
            SHX19_2 = 245
            -- [FIX IF ERROR] Move ::SHX_LABEL_397:: outside nested blocks until all 'goto SHX_LABEL_397' can see it
            ::SHX_LABEL_397::
            if SHX8_2 then
              SHX20_2 = 0
              if SHX20_2 then
                goto SHX_LABEL_403
              end
            end
            SHX20_2 = 245
            -- [FIX IF ERROR] Move ::SHX_LABEL_403:: outside nested blocks until all 'goto SHX_LABEL_403' can see it
            ::SHX_LABEL_403::
            if SHX8_2 then
              SHX21_2 = 0
              if SHX21_2 then
                goto SHX_LABEL_409
              end
            end
            SHX21_2 = 245
            -- [FIX IF ERROR] Move ::SHX_LABEL_409:: outside nested blocks until all 'goto SHX_LABEL_409' can see it
            ::SHX_LABEL_409::
            SHX22_2 = 255
            SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
          else
            if SHX10_2 then
              SHX13_2 = RageUI
              SHX13_2 = SHX13_2.BadgeStyle
              SHX13_2 = SHX13_2.Lock
              SHX14_2 = SHX8_2
              SHX13_2 = SHX13_2(SHX14_2)
              SHX14_2 = RenderSprite
              SHX15_2 = SHX13_2.BadgeDictionary
              if not SHX15_2 then
                SHX15_2 = "commonmenu"
              end
              SHX16_2 = SHX13_2.BadgeTexture
              if not SHX16_2 then
                SHX16_2 = ""
              end
              SHX17_2 = SHX6_2.X
              SHX18_2 = SHX0_1.RightBadge
              SHX18_2 = SHX18_2.X
              SHX17_2 = SHX17_2 + SHX18_2
              SHX18_2 = SHX6_2.WidthOffset
              SHX17_2 = SHX17_2 + SHX18_2
              SHX18_2 = SHX6_2.Y
              SHX19_2 = SHX0_1.RightBadge
              SHX19_2 = SHX19_2.Y
              SHX18_2 = SHX18_2 + SHX19_2
              SHX19_2 = SHX6_2.SubtitleHeight
              SHX18_2 = SHX18_2 + SHX19_2
              SHX19_2 = RageUI
              SHX19_2 = SHX19_2.ItemOffset
              SHX18_2 = SHX18_2 + SHX19_2
              SHX19_2 = SHX0_1.RightBadge
              SHX19_2 = SHX19_2.Width
              SHX20_2 = SHX0_1.RightBadge
              SHX20_2 = SHX20_2.Height
              SHX21_2 = 0
              SHX22_2 = SHX13_2.BadgeColour
              if SHX22_2 then
                SHX22_2 = SHX13_2.BadgeColour
                SHX22_2 = SHX22_2.R
                if SHX22_2 then
                  goto SHX_LABEL_461
                end
              end
              SHX22_2 = 255
              -- [FIX IF ERROR] Move ::SHX_LABEL_461:: outside nested blocks until all 'goto SHX_LABEL_461' can see it
              ::SHX_LABEL_461::
              SHX23_2 = SHX13_2.BadgeColour
              if SHX23_2 then
                SHX23_2 = SHX13_2.BadgeColour
                SHX23_2 = SHX23_2.G
                if SHX23_2 then
                  goto SHX_LABEL_469
                end
              end
              SHX23_2 = 255
              -- [FIX IF ERROR] Move ::SHX_LABEL_469:: outside nested blocks until all 'goto SHX_LABEL_469' can see it
              ::SHX_LABEL_469::
              SHX24_2 = SHX13_2.BadgeColour
              if SHX24_2 then
                SHX24_2 = SHX13_2.BadgeColour
                SHX24_2 = SHX24_2.B
                if SHX24_2 then
                  goto SHX_LABEL_477
                end
              end
              SHX24_2 = 255
              -- [FIX IF ERROR] Move ::SHX_LABEL_477:: outside nested blocks until all 'goto SHX_LABEL_477' can see it
              ::SHX_LABEL_477::
              SHX25_2 = SHX13_2.BadgeColour
              if SHX25_2 then
                SHX25_2 = SHX13_2.BadgeColour
                SHX25_2 = SHX25_2.A
                if SHX25_2 then
                  goto SHX_LABEL_485
                end
              end
              SHX25_2 = 255
              -- [FIX IF ERROR] Move ::SHX_LABEL_485:: outside nested blocks until all 'goto SHX_LABEL_485' can see it
              ::SHX_LABEL_485::
              SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
            end
            SHX13_2 = SHX2_2.RightLabel
            if SHX13_2 then
              SHX13_2 = RenderText
              SHX14_2 = SHX2_2.RightLabel
              SHX15_2 = SHX6_2.X
              SHX16_2 = SHX0_1.RightText
              SHX16_2 = SHX16_2.X
              SHX15_2 = SHX15_2 + SHX16_2
              SHX15_2 = SHX15_2 - SHX12_2
              SHX16_2 = SHX6_2.WidthOffset
              SHX15_2 = SHX15_2 + SHX16_2
              SHX16_2 = SHX6_2.Y
              SHX17_2 = SHX0_1.RightText
              SHX17_2 = SHX17_2.Y
              SHX16_2 = SHX16_2 + SHX17_2
              SHX17_2 = SHX6_2.SubtitleHeight
              SHX16_2 = SHX16_2 + SHX17_2
              SHX17_2 = RageUI
              SHX17_2 = SHX17_2.ItemOffset
              SHX16_2 = SHX16_2 + SHX17_2
              SHX17_2 = 0
              SHX18_2 = SHX0_1.RightText
              SHX18_2 = SHX18_2.Scale
              SHX19_2 = 163
              SHX20_2 = 159
              SHX21_2 = 148
              SHX22_2 = 255
              SHX23_2 = 2
              SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
            end
            SHX13_2 = RenderText
            SHX14_2 = SHX0_2
            SHX15_2 = SHX6_2.X
            SHX16_2 = SHX0_1.Text
            SHX16_2 = SHX16_2.X
            SHX15_2 = SHX15_2 + SHX16_2
            SHX15_2 = SHX15_2 + SHX11_2
            SHX16_2 = SHX6_2.Y
            SHX17_2 = SHX0_1.Text
            SHX17_2 = SHX17_2.Y
            SHX16_2 = SHX16_2 + SHX17_2
            SHX17_2 = SHX6_2.SubtitleHeight
            SHX16_2 = SHX16_2 + SHX17_2
            SHX17_2 = RageUI
            SHX17_2 = SHX17_2.ItemOffset
            SHX16_2 = SHX16_2 + SHX17_2
            SHX17_2 = 0
            SHX18_2 = SHX0_1.Text
            SHX18_2 = SHX18_2.Scale
            SHX19_2 = 163
            SHX20_2 = 159
            SHX21_2 = 148
            SHX22_2 = 255
            SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
          end
          SHX13_2 = RageUI
          SHX14_2 = RageUI
          SHX14_2 = SHX14_2.ItemOffset
          SHX15_2 = SHX0_1.Rectangle
          SHX15_2 = SHX15_2.Height
          SHX14_2 = SHX14_2 + SHX15_2
          SHX13_2.ItemOffset = SHX14_2
          SHX13_2 = RageUI
          SHX13_2 = SHX13_2.ItemsDescription
          SHX14_2 = SHX6_2
          SHX15_2 = SHX1_2
          SHX16_2 = SHX8_2
          SHX13_2(SHX14_2, SHX15_2, SHX16_2)
          SHX13_2 = SHX6_2.EnableMouse
          if SHX13_2 then
            SHX13_2 = SHX6_2.CursorStyle
            if 0 ~= SHX13_2 then
              SHX13_2 = SHX6_2.CursorStyle
            end
            SHX13_2 = RageUI
            SHX13_2 = SHX13_2.ItemsMouseBounds
            SHX14_2 = SHX6_2
            SHX15_2 = SHX8_2
            SHX16_2 = SHX7_2 + 1
            SHX17_2 = SHX0_1
            SHX13_2 = 1 == SHX13_2 and SHX13_2
          end
          SHX14_2 = SHX6_2.Controls
          SHX14_2 = SHX14_2.Select
          SHX14_2 = SHX14_2.Active
          if not SHX14_2 then
            if not SHX13_2 then
              goto SHX_LABEL_598
              SHX14_2 = SHX13_2 or SHX14_2
            end
            SHX14_2 = SHX6_2.Controls
            SHX14_2 = SHX14_2.Click
            SHX14_2 = SHX14_2.Active
            if not SHX14_2 then
              goto SHX_LABEL_598
            end
          end
          SHX14_2 = SHX8_2
          -- [FIX IF ERROR] Move ::SHX_LABEL_598:: outside nested blocks until all 'goto SHX_LABEL_598' can see it
          ::SHX_LABEL_598::
          if SHX3_2 then
            if SHX4_2 then
              SHX15_2 = SHX4_2
              SHX16_2 = SHX13_2
              SHX17_2 = SHX8_2
              SHX18_2 = SHX14_2
              SHX15_2(SHX16_2, SHX17_2, SHX18_2)
            end
            if SHX14_2 then
              SHX15_2 = RageUI
              SHX15_2 = SHX15_2.Settings
              SHX15_2 = SHX15_2.Audio
              SHX16_2 = RageUI
              SHX16_2 = SHX16_2.PlaySound
              SHX17_2 = SHX15_2.Use
              SHX17_2 = SHX15_2[SHX17_2]
              SHX17_2 = SHX17_2.Select
              SHX17_2 = SHX17_2.audioName
              SHX18_2 = SHX15_2.Use
              SHX18_2 = SHX15_2[SHX18_2]
              SHX18_2 = SHX18_2.Select
              SHX18_2 = SHX18_2.audioRef
              SHX16_2(SHX17_2, SHX18_2)
              if SHX5_2 then
                SHX16_2 = RageUI
                SHX16_2 = SHX16_2.IsAnyMenuVisible
                SHX16_2 = SHX16_2()
                if SHX16_2 then
                  SHX16_2 = SHX5_2
                  SHX16_2 = SHX16_2()
                  if SHX16_2 then
                    SHX16_2 = RageUI
                    SHX16_2.NextMenu = SHX5_2
                  end
                end
              end
            end
          elseif SHX4_2 then
            SHX15_2 = SHX4_2
            SHX16_2 = SHX13_2
            SHX17_2 = SHX8_2
            SHX18_2 = false
            SHX15_2(SHX16_2, SHX17_2, SHX18_2)
          end
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
SHX1_1.ButtonWithStyle = SHX2_1
SHX1_1 = RageUI
function SHX2_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX6_2 = RageUI
  SHX6_2 = SHX6_2.CurrentMenu
  if nil ~= SHX6_2 then
    SHX7_2 = SHX6_2
    SHX7_2 = SHX7_2()
    if SHX7_2 then
      SHX7_2 = RageUI
      SHX7_2 = SHX7_2.Options
      SHX7_2 = SHX7_2 + 1
      SHX8_2 = SHX6_2.Pagination
      SHX8_2 = SHX8_2.Minimum
      if SHX7_2 >= SHX8_2 then
        SHX8_2 = SHX6_2.Pagination
        SHX8_2 = SHX8_2.Maximum
        if SHX7_2 <= SHX8_2 then
          SHX8_2 = SHX6_2.Index
          SHX8_2 = SHX8_2 == SHX7_2
          SHX9_2 = RageUI
          SHX9_2 = SHX9_2.ItemsSafeZone
          SHX10_2 = SHX6_2
          SHX9_2(SHX10_2)
          SHX9_2 = RageUI
          SHX10_2 = RageUI
          SHX10_2 = SHX10_2.ItemOffset
          SHX9_2.ItemOffset = SHX10_2
          SHX9_2 = RageUI
          SHX9_2 = SHX9_2.LongerItemDescription
          SHX10_2 = SHX6_2
          SHX11_2 = SHX1_2
          SHX12_2 = SHX8_2
          SHX9_2(SHX10_2, SHX11_2, SHX12_2)
          if SHX3_2 then
            SHX9_2 = SHX6_2.EnableMouse
            if SHX9_2 then
              SHX9_2 = SHX6_2.CursorStyle
              if 0 ~= SHX9_2 then
                SHX9_2 = SHX6_2.CursorStyle
              end
              SHX9_2 = RageUI
              SHX9_2 = SHX9_2.ItemsMouseBounds
              SHX10_2 = SHX6_2
              SHX11_2 = SHX8_2
              SHX12_2 = SHX7_2 + 1
              SHX13_2 = SHX0_1
              SHX9_2 = 1 == SHX9_2 and SHX9_2
            end
            SHX10_2 = SHX6_2.Controls
            SHX10_2 = SHX10_2.Select
            SHX10_2 = SHX10_2.Active
            if not SHX10_2 then
              if not SHX9_2 then
                goto SHX_LABEL_75
                SHX10_2 = SHX9_2 or SHX10_2
              end
              SHX10_2 = SHX6_2.Controls
              SHX10_2 = SHX10_2.Click
              SHX10_2 = SHX10_2.Active
              if not SHX10_2 then
                goto SHX_LABEL_75
              end
            end
            SHX10_2 = SHX8_2
            -- [FIX IF ERROR] Move ::SHX_LABEL_75:: outside nested blocks until all 'goto SHX_LABEL_75' can see it
            ::SHX_LABEL_75::
            if SHX4_2 then
              SHX11_2 = SHX4_2
              SHX12_2 = SHX9_2
              SHX13_2 = SHX8_2
              SHX14_2 = SHX10_2
              SHX11_2(SHX12_2, SHX13_2, SHX14_2)
            end
            if SHX10_2 then
              SHX11_2 = RageUI
              SHX11_2 = SHX11_2.Settings
              SHX11_2 = SHX11_2.Audio
              SHX12_2 = RageUI
              SHX12_2 = SHX12_2.PlaySound
              SHX13_2 = SHX11_2.Use
              SHX13_2 = SHX11_2[SHX13_2]
              SHX13_2 = SHX13_2.Select
              SHX13_2 = SHX13_2.audioName
              SHX14_2 = SHX11_2.Use
              SHX14_2 = SHX11_2[SHX14_2]
              SHX14_2 = SHX14_2.Select
              SHX14_2 = SHX14_2.audioRef
              SHX12_2(SHX13_2, SHX14_2)
              if SHX5_2 then
                SHX12_2 = RageUI
                SHX12_2 = SHX12_2.IsAnyMenuVisible
                SHX12_2 = SHX12_2()
                if SHX12_2 then
                  SHX12_2 = SHX5_2
                  SHX12_2 = SHX12_2()
                  if SHX12_2 then
                    SHX12_2 = RageUI
                    SHX12_2.NextMenu = SHX5_2
                  end
                end
              end
            end
          end
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
SHX1_1.FakeButtonWithStyle = SHX2_1
SHX1_1 = RageUI
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = RageUI
  SHX1_2.ParentCallback = SHX0_2
end
SHX1_1.BackspaceMenuCallback = SHX2_1
