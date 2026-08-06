-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1
SHX0_1 = {}
SHX1_1 = {}
SHX1_1.Dictionary = "pause_menu_pages_char_mom_dad"
SHX1_1.Texture = "mumdadbg"
SHX1_1.Width = 431
SHX1_1.Height = 228
SHX0_1.Background = SHX1_1
SHX1_1 = {}
SHX1_1.Dictionary = "char_creator_portraits"
SHX1_1.X = 25
SHX1_1.Width = 228
SHX1_1.Height = 228
SHX0_1.Mum = SHX1_1
SHX1_1 = {}
SHX1_1.Dictionary = "char_creator_portraits"
SHX1_1.X = 195
SHX1_1.Width = 228
SHX1_1.Height = 228
SHX0_1.Dad = SHX1_1
SHX1_1 = RageUI
function SHX2_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX2_2 = RageUI
  SHX2_2 = SHX2_2.CurrentMenu
  if nil ~= SHX2_2 then
    SHX3_2 = SHX2_2
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      if SHX0_2 < 0 or SHX0_2 > 21 then
        SHX0_2 = 0
      end
      if SHX1_2 < 0 or SHX1_2 > 23 then
        SHX1_2 = 0
      end
      SHX3_2 = ""
      if 21 == SHX0_2 then
        SHX4_2 = "special_female_"
        SHX5_2 = tonumber
        SHX6_2 = string
        SHX6_2 = SHX6_2.sub
        SHX7_2 = SHX0_2
        SHX8_2 = 2
        SHX9_2 = 2
        SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
        SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
        SHX5_2 = SHX5_2 - 1
        SHX4_2 = SHX4_2 .. SHX5_2
        SHX3_2 = SHX4_2
      else
        SHX4_2 = "female_"
        SHX5_2 = SHX0_2
        SHX4_2 = SHX4_2 .. SHX5_2
        SHX3_2 = SHX4_2
      end
      SHX4_2 = ""
      if SHX1_2 >= 21 then
        SHX5_2 = "special_male_"
        SHX6_2 = tonumber
        SHX7_2 = string
        SHX7_2 = SHX7_2.sub
        SHX8_2 = SHX1_2
        SHX9_2 = 2
        SHX10_2 = 2
        SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
        SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
        SHX6_2 = SHX6_2 - 1
        SHX5_2 = SHX5_2 .. SHX6_2
        SHX4_2 = SHX5_2
      else
        SHX5_2 = "male_"
        SHX6_2 = SHX1_2
        SHX5_2 = SHX5_2 .. SHX6_2
        SHX4_2 = SHX5_2
      end
      SHX5_2 = RenderSprite
      SHX6_2 = SHX0_1.Background
      SHX6_2 = SHX6_2.Dictionary
      SHX7_2 = SHX0_1.Background
      SHX7_2 = SHX7_2.Texture
      SHX8_2 = SHX2_2.X
      SHX9_2 = SHX2_2.Y
      SHX10_2 = SHX2_2.SubtitleHeight
      SHX9_2 = SHX9_2 + SHX10_2
      SHX10_2 = RageUI
      SHX10_2 = SHX10_2.ItemOffset
      SHX9_2 = SHX9_2 + SHX10_2
      SHX10_2 = SHX0_1.Background
      SHX10_2 = SHX10_2.Width
      SHX11_2 = SHX2_2.WidthOffset
      SHX11_2 = SHX11_2 / 1
      SHX10_2 = SHX10_2 + SHX11_2
      SHX11_2 = SHX0_1.Background
      SHX11_2 = SHX11_2.Height
      SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
      SHX5_2 = RenderSprite
      SHX6_2 = SHX0_1.Dad
      SHX6_2 = SHX6_2.Dictionary
      SHX7_2 = SHX4_2
      SHX8_2 = SHX2_2.X
      SHX9_2 = SHX0_1.Dad
      SHX9_2 = SHX9_2.X
      SHX8_2 = SHX8_2 + SHX9_2
      SHX9_2 = SHX2_2.WidthOffset
      SHX9_2 = SHX9_2 / 2
      SHX8_2 = SHX8_2 + SHX9_2
      SHX9_2 = SHX2_2.Y
      SHX10_2 = SHX2_2.SubtitleHeight
      SHX9_2 = SHX9_2 + SHX10_2
      SHX10_2 = RageUI
      SHX10_2 = SHX10_2.ItemOffset
      SHX9_2 = SHX9_2 + SHX10_2
      SHX10_2 = SHX0_1.Dad
      SHX10_2 = SHX10_2.Width
      SHX11_2 = SHX0_1.Dad
      SHX11_2 = SHX11_2.Height
      SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
      SHX5_2 = RenderSprite
      SHX6_2 = SHX0_1.Mum
      SHX6_2 = SHX6_2.Dictionary
      SHX7_2 = SHX3_2
      SHX8_2 = SHX2_2.X
      SHX9_2 = SHX0_1.Mum
      SHX9_2 = SHX9_2.X
      SHX8_2 = SHX8_2 + SHX9_2
      SHX9_2 = SHX2_2.WidthOffset
      SHX9_2 = SHX9_2 / 2
      SHX8_2 = SHX8_2 + SHX9_2
      SHX9_2 = SHX2_2.Y
      SHX10_2 = SHX2_2.SubtitleHeight
      SHX9_2 = SHX9_2 + SHX10_2
      SHX10_2 = RageUI
      SHX10_2 = SHX10_2.ItemOffset
      SHX9_2 = SHX9_2 + SHX10_2
      SHX10_2 = SHX0_1.Mum
      SHX10_2 = SHX10_2.Width
      SHX11_2 = SHX0_1.Mum
      SHX11_2 = SHX11_2.Height
      SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
      SHX5_2 = RageUI
      SHX6_2 = RageUI
      SHX6_2 = SHX6_2.ItemOffset
      SHX7_2 = SHX0_1.Background
      SHX7_2 = SHX7_2.Height
      SHX6_2 = SHX6_2 + SHX7_2
      SHX5_2.ItemOffset = SHX6_2
    end
  end
end
SHX1_1.HeritageWindow = SHX2_1
