-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1
function SHX0_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX8_2 = tonumber
  SHX9_2 = SHX0_2
  SHX8_2 = SHX8_2(SHX9_2)
  if not SHX8_2 then
    SHX8_2 = 0
  end
  SHX8_2 = SHX8_2 / 1920
  SHX9_2 = tonumber
  SHX10_2 = SHX1_2
  SHX9_2 = SHX9_2(SHX10_2)
  if not SHX9_2 then
    SHX9_2 = 0
  end
  SHX9_2 = SHX9_2 / 1080
  SHX10_2 = tonumber
  SHX11_2 = SHX2_2
  SHX10_2 = SHX10_2(SHX11_2)
  if not SHX10_2 then
    SHX10_2 = 0
  end
  SHX10_2 = SHX10_2 / 1920
  SHX11_2 = tonumber
  SHX12_2 = SHX3_2
  SHX11_2 = SHX11_2(SHX12_2)
  if not SHX11_2 then
    SHX11_2 = 0
  end
  SHX3_2 = SHX11_2 / 1080
  SHX2_2 = SHX10_2
  SHX1_2 = SHX9_2
  SHX0_2 = SHX8_2
  SHX8_2 = DrawRect
  SHX9_2 = SHX2_2 * 0.5
  SHX9_2 = SHX0_2 + SHX9_2
  SHX10_2 = SHX3_2 * 0.5
  SHX10_2 = SHX1_2 + SHX10_2
  SHX11_2 = SHX2_2
  SHX12_2 = SHX3_2
  SHX13_2 = tonumber
  SHX14_2 = SHX4_2
  SHX13_2 = SHX13_2(SHX14_2)
  if not SHX13_2 then
    SHX13_2 = 255
  end
  SHX14_2 = tonumber
  SHX15_2 = SHX5_2
  SHX14_2 = SHX14_2(SHX15_2)
  if not SHX14_2 then
    SHX14_2 = 255
  end
  SHX15_2 = tonumber
  SHX16_2 = SHX6_2
  SHX15_2 = SHX15_2(SHX16_2)
  if not SHX15_2 then
    SHX15_2 = 255
  end
  SHX16_2 = tonumber
  SHX17_2 = SHX7_2
  SHX16_2 = SHX16_2(SHX17_2)
  if not SHX16_2 then
    SHX16_2 = 255
  end
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
end
RenderRectangle = SHX0_1
