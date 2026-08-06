-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_garages"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = pairs
SHX2_1 = SHX0_1.garages
SHX1_1, SHX2_1, SHX3_1, SHX4_1 = SHX1_1(SHX2_1)
for SHX5_1, SHX6_1 in SHX1_1, SHX2_1, SHX3_1, SHX4_1 do
  SHX7_1 = pairs
  SHX8_1 = SHX6_1
  SHX7_1, SHX8_1, SHX9_1, SHX10_1 = SHX7_1(SHX8_1)
  for SHX11_1, SHX12_1 in SHX7_1, SHX8_1, SHX9_1, SHX10_1 do
    if "_config" ~= SHX11_1 then
      SHX13_1 = SHX12_1.name
      if SHX13_1 then
        SHX13_1 = AddTextEntryByHash
        SHX14_1 = GetHashKey
        SHX15_1 = SHX11_1
        SHX14_1 = SHX14_1(SHX15_1)
        SHX15_1 = SHX12_1.name
        SHX13_1(SHX14_1, SHX15_1)
      end
    end
  end
end
