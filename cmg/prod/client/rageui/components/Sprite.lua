-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1
function SHX0_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2
  SHX11_2 = tonumber
  SHX12_2 = SHX2_2
  SHX11_2 = SHX11_2(SHX12_2)
  if not SHX11_2 then
    SHX11_2 = 0
  end
  SHX11_2 = SHX11_2 / 1920
  SHX12_2 = tonumber
  SHX13_2 = SHX3_2
  SHX12_2 = SHX12_2(SHX13_2)
  if not SHX12_2 then
    SHX12_2 = 0
  end
  SHX12_2 = SHX12_2 / 1080
  SHX13_2 = tonumber
  SHX14_2 = SHX4_2
  SHX13_2 = SHX13_2(SHX14_2)
  if not SHX13_2 then
    SHX13_2 = 0
  end
  SHX13_2 = SHX13_2 / 1920
  SHX14_2 = tonumber
  SHX15_2 = SHX5_2
  SHX14_2 = SHX14_2(SHX15_2)
  if not SHX14_2 then
    SHX14_2 = 0
  end
  SHX5_2 = SHX14_2 / 1080
  SHX4_2 = SHX13_2
  SHX3_2 = SHX12_2
  SHX2_2 = SHX11_2
  SHX11_2 = HasStreamedTextureDictLoaded
  SHX12_2 = SHX0_2
  SHX11_2 = SHX11_2(SHX12_2)
  if not SHX11_2 then
    SHX11_2 = RequestStreamedTextureDict
    SHX12_2 = SHX0_2
    SHX13_2 = true
    SHX11_2(SHX12_2, SHX13_2)
  end
  SHX11_2 = DrawSprite
  SHX12_2 = SHX0_2
  SHX13_2 = SHX1_2
  SHX14_2 = SHX4_2 * 0.5
  SHX14_2 = SHX2_2 + SHX14_2
  SHX15_2 = SHX5_2 * 0.5
  SHX15_2 = SHX3_2 + SHX15_2
  SHX16_2 = SHX4_2
  SHX17_2 = SHX5_2
  SHX18_2 = SHX6_2 or SHX18_2
  if not SHX6_2 then
    SHX18_2 = 0
  end
  SHX19_2 = tonumber
  SHX20_2 = SHX7_2
  SHX19_2 = SHX19_2(SHX20_2)
  if not SHX19_2 then
    SHX19_2 = 255
  end
  SHX20_2 = tonumber
  SHX21_2 = SHX8_2
  SHX20_2 = SHX20_2(SHX21_2)
  if not SHX20_2 then
    SHX20_2 = 255
  end
  SHX21_2 = tonumber
  SHX22_2 = SHX9_2
  SHX21_2 = SHX21_2(SHX22_2)
  if not SHX21_2 then
    SHX21_2 = 255
  end
  SHX22_2 = tonumber
  SHX23_2 = SHX10_2
  SHX22_2 = SHX22_2(SHX23_2)
  if not SHX22_2 then
    SHX22_2 = 255
  end
  SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
end
RenderSprite = SHX0_1
