-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1
function SHX0_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2
  SHX4_2 = SHX3_2
  SHX5_2 = pairs
  SHX6_2 = SHX0_2
  SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
  for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
    SHX11_2 = false
    SHX12_2 = pairs
    SHX13_2 = SHX1_2
    SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX12_2(SHX13_2)
    for SHX16_2, SHX17_2 in SHX12_2, SHX13_2, SHX14_2, SHX15_2 do
      SHX18_2 = SHX10_2[SHX17_2]
      SHX19_2 = SHX16_2 + 1
      SHX19_2 = SHX1_2[SHX19_2]
      SHX20_2 = type
      SHX21_2 = SHX19_2
      SHX20_2 = SHX20_2(SHX21_2)
      if "table" == SHX20_2 then
        SHX20_2 = #SHX18_2
        SHX2_2[SHX4_2] = SHX20_2
        SHX4_2 = SHX4_2 + 1
        SHX20_2 = SHX0_1
        SHX21_2 = SHX18_2
        SHX22_2 = SHX19_2
        SHX23_2 = SHX2_2
        SHX24_2 = SHX4_2
        SHX20_2 = SHX20_2(SHX21_2, SHX22_2, SHX23_2, SHX24_2)
        SHX4_2 = SHX4_2 + SHX20_2
        SHX11_2 = true
      elseif not SHX11_2 then
        SHX2_2[SHX4_2] = SHX18_2
      end
      SHX4_2 = SHX4_2 + 1
    end
  end
  SHX5_2 = SHX4_2 - SHX3_2
  return SHX5_2
end
SHX1_1 = CMG
function SHX2_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getTunableValue
  SHX3_2 = "table_packing"
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = {}
    SHX3_2 = SHX0_1
    SHX4_2 = SHX0_2
    SHX5_2 = SHX1_2
    SHX6_2 = SHX2_2
    SHX7_2 = 1
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
    return SHX2_2
  else
    return SHX0_2
  end
end
SHX1_1.packTable = SHX2_1
function SHX1_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = type
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if "table" == SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.warn
    SHX2_2 = "^CMG.unpackTable: Key used for the table was a table! Additional information: "
    SHX3_2 = json
    SHX3_2 = SHX3_2.encode
    SHX4_2 = SHX0_2
    SHX3_2 = SHX3_2(SHX4_2)
    SHX2_2 = SHX2_2 .. SHX3_2
    SHX1_2(SHX2_2)
  end
end
function SHX2_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2
  SHX5_2 = SHX3_2
  SHX6_2 = false
  SHX7_2 = 1
  SHX8_2 = SHX4_2
  SHX9_2 = 1
  for SHX10_2 = SHX7_2, SHX8_2, SHX9_2 do
    SHX11_2 = #SHX0_2
    if SHX5_2 >= SHX11_2 then
      break
    end
    SHX11_2 = {}
    SHX12_2 = pairs
    SHX13_2 = SHX1_2
    SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX12_2(SHX13_2)
    for SHX16_2, SHX17_2 in SHX12_2, SHX13_2, SHX14_2, SHX15_2 do
      SHX18_2 = SHX16_2 + 1
      SHX18_2 = SHX1_2[SHX18_2]
      SHX19_2 = type
      SHX20_2 = SHX18_2
      SHX19_2 = SHX19_2(SHX20_2)
      if "table" == SHX19_2 then
        SHX19_2 = SHX0_2[SHX5_2]
        SHX5_2 = SHX5_2 + 1
        SHX20_2 = {}
        SHX21_2 = SHX2_1
        SHX22_2 = SHX0_2
        SHX23_2 = SHX18_2
        SHX24_2 = SHX20_2
        SHX25_2 = SHX5_2
        SHX26_2 = SHX19_2
        SHX21_2 = SHX21_2(SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
        SHX5_2 = SHX5_2 + SHX21_2
        SHX21_2 = SHX1_1
        SHX22_2 = SHX17_2
        SHX21_2(SHX22_2)
        SHX11_2[SHX17_2] = SHX20_2
        SHX6_2 = false
      elseif not SHX6_2 then
        SHX19_2 = SHX1_1
        SHX20_2 = SHX17_2
        SHX19_2(SHX20_2)
        SHX19_2 = SHX0_2[SHX5_2]
        SHX11_2[SHX17_2] = SHX19_2
      end
      SHX5_2 = SHX5_2 + 1
    end
    SHX12_2 = table
    SHX12_2 = SHX12_2.insert
    SHX13_2 = SHX2_2
    SHX14_2 = SHX11_2
    SHX12_2(SHX13_2, SHX14_2)
  end
  SHX7_2 = SHX5_2 - SHX3_2
  return SHX7_2
end
SHX3_1 = CMG
function SHX4_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getTunableValue
  SHX3_2 = "table_packing"
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = {}
    SHX3_2 = SHX2_1
    SHX4_2 = SHX0_2
    SHX5_2 = SHX1_2
    SHX6_2 = SHX2_2
    SHX7_2 = 1
    SHX8_2 = 4294967295
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    return SHX2_2
  else
    return SHX0_2
  end
end
SHX3_1.unpackTable = SHX4_1
SHX3_1 = Citizen
SHX3_1 = SHX3_1.CreateThread
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = IsDuplicityVersion
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.registerTunable
    SHX1_2 = "Utils"
    SHX2_2 = "table_packing"
    SHX3_2 = "boolean"
    SHX4_2 = false
    SHX5_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.registerTunable
    SHX1_2 = "Utils"
    SHX2_2 = "cmgui_focus"
    SHX3_2 = "boolean"
    SHX4_2 = false
    SHX5_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  end
end
SHX3_1(SHX4_1)
