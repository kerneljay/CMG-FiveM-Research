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
SHX1_1 = RageUI
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.CurrentMenu
  if nil ~= SHX1_2 then
    SHX2_2 = SHX1_2
    SHX2_2 = SHX2_2()
    if SHX2_2 then
      SHX2_2 = RageUI
      SHX2_2 = SHX2_2.Options
      SHX2_2 = SHX2_2 + 1
      SHX3_2 = SHX1_2.Pagination
      SHX3_2 = SHX3_2.Minimum
      if SHX2_2 >= SHX3_2 then
        SHX3_2 = SHX1_2.Pagination
        SHX3_2 = SHX3_2.Maximum
        if SHX2_2 <= SHX3_2 then
          if nil ~= SHX0_2 then
            SHX3_2 = RenderText
            SHX4_2 = SHX0_2
            SHX5_2 = SHX1_2.X
            SHX6_2 = SHX0_1.Text
            SHX6_2 = SHX6_2.X
            SHX5_2 = SHX5_2 + SHX6_2
            SHX6_2 = SHX1_2.WidthOffset
            SHX6_2 = SHX6_2 * 2.5
            if 0 ~= SHX6_2 then
              SHX6_2 = SHX1_2.WidthOffset
              SHX6_2 = SHX6_2 * 2.5
              if SHX6_2 then
                goto SHX_LABEL_41
              end
            end
            SHX6_2 = 200
            -- [FIX IF ERROR] Move ::SHX_LABEL_41:: outside nested blocks until all 'goto SHX_LABEL_41' can see it
            ::SHX_LABEL_41::
            SHX5_2 = SHX5_2 + SHX6_2
            SHX6_2 = SHX1_2.Y
            SHX7_2 = SHX0_1.Text
            SHX7_2 = SHX7_2.Y
            SHX6_2 = SHX6_2 + SHX7_2
            SHX7_2 = SHX1_2.SubtitleHeight
            SHX6_2 = SHX6_2 + SHX7_2
            SHX7_2 = RageUI
            SHX7_2 = SHX7_2.ItemOffset
            SHX6_2 = SHX6_2 + SHX7_2
            SHX7_2 = 0
            SHX8_2 = SHX0_1.Text
            SHX8_2 = SHX8_2.Scale
            SHX9_2 = 245
            SHX10_2 = 245
            SHX11_2 = 245
            SHX12_2 = 255
            SHX13_2 = 1
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
          end
          SHX3_2 = RageUI
          SHX4_2 = RageUI
          SHX4_2 = SHX4_2.ItemOffset
          SHX5_2 = SHX0_1.Rectangle
          SHX5_2 = SHX5_2.Height
          SHX4_2 = SHX4_2 + SHX5_2
          SHX3_2.ItemOffset = SHX4_2
          SHX3_2 = SHX1_2.Index
          if SHX3_2 == SHX2_2 then
            SHX3_2 = RageUI
            SHX3_2 = SHX3_2.LastControl
            if SHX3_2 then
              SHX3_2 = SHX2_2 - 1
              SHX1_2.Index = SHX3_2
              SHX3_2 = SHX1_2.Index
              if SHX3_2 < 1 then
                SHX3_2 = RageUI
                SHX3_2 = SHX3_2.CurrentMenu
                SHX3_2 = SHX3_2.Options
                SHX1_2.Index = SHX3_2
              end
            else
              SHX3_2 = SHX2_2 + 1
              SHX1_2.Index = SHX3_2
            end
          end
        end
      end
      SHX3_2 = RageUI
      SHX4_2 = RageUI
      SHX4_2 = SHX4_2.Options
      SHX4_2 = SHX4_2 + 1
      SHX3_2.Options = SHX4_2
    end
  end
end
SHX1_1.Separator = SHX2_1
