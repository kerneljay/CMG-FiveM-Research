-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1
SHX0_1 = {}
SHX1_1 = CMG
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX0_1
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX2_2 = SHX1_2.value
    return SHX2_2
  end
  SHX2_2 = nil
  return SHX2_2
end
SHX1_1.getTunableValue = SHX2_1
SHX1_1 = RegisterNetEvent
SHX2_1 = "2f89bbe50c"
function SHX3_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = SHX0_1
  SHX2_2 = SHX2_2[SHX0_2]
  if not SHX2_2 then
    SHX3_2 = {}
    SHX2_2 = SHX3_2
    SHX3_2 = SHX0_1
    SHX3_2[SHX0_2] = SHX2_2
  end
  SHX2_2.value = SHX1_2
  SHX3_2 = TriggerEvent
  SHX4_2 = "1a027a264a"
  SHX5_2 = SHX0_2
  SHX6_2 = SHX1_2
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
end
SHX1_1(SHX2_1, SHX3_1)
SHX1_1 = RegisterNetEvent
SHX2_1 = "220ec18765"
function SHX3_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX1_2 = pairs
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2[1]
    SHX8_2 = SHX6_2[2]
    SHX9_2 = SHX0_1
    SHX10_2 = {}
    SHX10_2.value = SHX8_2
    SHX9_2[SHX7_2] = SHX10_2
    SHX9_2 = TriggerEvent
    SHX10_2 = "1a027a264a"
    SHX11_2 = SHX7_2
    SHX12_2 = SHX8_2
    SHX9_2(SHX10_2, SHX11_2, SHX12_2)
  end
end
SHX1_1(SHX2_1, SHX3_1)
