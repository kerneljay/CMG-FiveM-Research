-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1
SHX0_1 = 4048302200
SHX1_1 = 20
SHX2_1 = 10
SHX3_1 = {}
function SHX4_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = GetHashKey
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX0_1
  SHX1_2 = SHX1_2 ~ SHX2_2
  SHX2_2 = SHX1_2 & 4294967295
  SHX3_2 = tostring
  SHX4_2 = SHX2_2
  return SHX3_2(SHX4_2)
end
function SHX5_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX4_1
  SHX2_2 = "checksum:"
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2 .. SHX3_2
  return SHX1_2(SHX2_2)
end
function SHX6_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = #SHX0_2
  SHX2_2 = SHX1_2
  SHX3_2 = 1
  SHX4_2 = SHX1_2
  SHX5_2 = 1
  for SHX6_2 = SHX3_2, SHX4_2, SHX5_2 do
    SHX7_2 = string
    SHX7_2 = SHX7_2.byte
    SHX8_2 = SHX0_2
    SHX9_2 = SHX6_2
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
    SHX2_2 = SHX2_2 * SHX7_2
    SHX2_2 = SHX2_2 ~ SHX7_2
    SHX2_2 = SHX2_2 & 4294967295
  end
  return SHX2_2
end
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = table
  SHX1_2 = SHX1_2.create
  SHX2_2 = #SHX0_2
  SHX3_2 = 0
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX2_2 = 1
  SHX3_2 = #SHX0_2
  SHX4_2 = 1
  for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = string
    SHX6_2 = SHX6_2.byte
    SHX7_2 = SHX0_2
    SHX8_2 = SHX5_2
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
    SHX7_2 = SHX1_1
    SHX7_2 = SHX5_2 % SHX7_2
    SHX8_2 = SHX2_1
    SHX7_2 = SHX7_2 - SHX8_2
    SHX8_2 = string
    SHX8_2 = SHX8_2.char
    SHX9_2 = SHX6_2 - SHX7_2
    SHX8_2 = SHX8_2(SHX9_2)
    SHX1_2[SHX5_2] = SHX8_2
  end
  SHX2_2 = table
  SHX2_2 = SHX2_2.concat
  SHX3_2 = SHX1_2
  return SHX2_2(SHX3_2)
end
SHX8_1 = CMG
function SHX9_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX1_2 = SHX4_1
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = GetResourceKvpString
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = GetResourceKvpInt
  SHX4_2 = SHX5_1
  SHX5_2 = SHX1_2
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX4_2(SHX5_2)
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX3_2 = SHX3_2 & 4294967295
  if 0 == SHX3_2 then
    SHX4_2 = nil
    return SHX4_2
  end
  SHX4_2 = SHX7_1
  SHX5_2 = SHX2_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = SHX6_1
  SHX6_2 = SHX4_2
  SHX5_2 = SHX5_2(SHX6_2)
  if SHX5_2 ~= SHX3_2 then
    SHX6_2 = SHX3_1
    SHX6_2 = SHX6_2[SHX0_2]
    if not SHX6_2 then
      SHX6_2 = CMG
      SHX6_2 = SHX6_2.isDevMode
      SHX6_2 = SHX6_2()
      if SHX6_2 then
        SHX6_2 = print
        SHX7_2 = "[CMG KVP] Invalid checksum for "
        SHX8_2 = SHX0_2
        SHX9_2 = " (saved "
        SHX10_2 = tostring
        SHX11_2 = SHX3_2
        SHX10_2 = SHX10_2(SHX11_2)
        SHX11_2 = " vs calculated "
        SHX12_2 = tostring
        SHX13_2 = SHX5_2
        SHX12_2 = SHX12_2(SHX13_2)
        SHX13_2 = ")"
        SHX7_2 = SHX7_2 .. SHX8_2 .. SHX9_2 .. SHX10_2 .. SHX11_2 .. SHX12_2 .. SHX13_2
        SHX6_2(SHX7_2)
      end
      SHX6_2 = TriggerServerEvent
      SHX7_2 = "51b7fcfab1"
      SHX8_2 = SHX0_2
      SHX9_2 = SHX3_2
      SHX10_2 = SHX5_2
      SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
      SHX6_2 = SHX3_1
      SHX6_2[SHX0_2] = true
    end
  end
  return SHX4_2
end
SHX8_1.getSecureKVP = SHX9_1
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = table
  SHX1_2 = SHX1_2.create
  SHX2_2 = #SHX0_2
  SHX3_2 = 0
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX2_2 = 1
  SHX3_2 = #SHX0_2
  SHX4_2 = 1
  for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = string
    SHX6_2 = SHX6_2.byte
    SHX7_2 = SHX0_2
    SHX8_2 = SHX5_2
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
    SHX7_2 = SHX1_1
    SHX7_2 = SHX5_2 % SHX7_2
    SHX8_2 = SHX2_1
    SHX7_2 = SHX7_2 - SHX8_2
    SHX8_2 = string
    SHX8_2 = SHX8_2.char
    SHX9_2 = SHX6_2 + SHX7_2
    SHX8_2 = SHX8_2(SHX9_2)
    SHX1_2[SHX5_2] = SHX8_2
  end
  SHX2_2 = table
  SHX2_2 = SHX2_2.concat
  SHX3_2 = SHX1_2
  return SHX2_2(SHX3_2)
end
SHX9_1 = CMG
function SHX10_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  if not SHX1_2 then
    return
  end
  SHX2_2 = SHX4_1
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = SHX8_1
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = SetResourceKvp
  SHX5_2 = SHX2_2
  SHX6_2 = SHX3_2
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SHX6_1
  SHX5_2 = SHX1_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = SetResourceKvpInt
  SHX6_2 = SHX5_1
  SHX7_2 = SHX2_2
  SHX6_2 = SHX6_2(SHX7_2)
  SHX7_2 = SHX4_2
  SHX5_2(SHX6_2, SHX7_2)
end
SHX9_1.setSecureKVP = SHX10_1
