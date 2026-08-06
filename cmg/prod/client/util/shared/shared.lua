-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1
SHX0_1 = table
function SHX1_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = 1
  SHX3_2 = #SHX0_2
  SHX4_2 = 1
  for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = SHX0_2[SHX5_2]
    if SHX6_2 == SHX1_2 then
      SHX6_2 = true
      return SHX6_2
    end
  end
  SHX2_2 = false
  return SHX2_2
end
SHX0_1.has = SHX1_1
SHX0_1 = table
function SHX1_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX2_2 = pairs
  SHX3_2 = SHX0_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    if SHX7_2 == SHX1_2 then
      return SHX6_2
    end
  end
  SHX2_2 = false
  return SHX2_2
end
SHX0_1.find = SHX1_1
SHX0_1 = table
function SHX1_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = #SHX0_2
  SHX2_2 = SHX2_2 + 1
  SHX0_2[SHX2_2] = SHX1_2
end
SHX0_1.add = SHX1_1
SHX0_1 = table
function SHX1_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX2_2 = {}
  SHX3_2 = 1
  SHX4_2 = #SHX0_2
  SHX5_2 = 1
  for SHX6_2 = SHX3_2, SHX4_2, SHX5_2 do
    SHX7_2 = #SHX2_2
    SHX7_2 = SHX7_2 + 1
    SHX8_2 = SHX0_2[SHX6_2]
    SHX2_2[SHX7_2] = SHX8_2
  end
  SHX3_2 = 1
  SHX4_2 = #SHX1_2
  SHX5_2 = 1
  for SHX6_2 = SHX3_2, SHX4_2, SHX5_2 do
    SHX7_2 = #SHX2_2
    SHX7_2 = SHX7_2 + 1
    SHX8_2 = SHX1_2[SHX6_2]
    SHX2_2[SHX7_2] = SHX8_2
  end
  return SHX2_2
end
SHX0_1.join = SHX1_1
function SHX0_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  if nil == SHX1_2 then
    SHX1_2 = "%s"
  end
  SHX2_2 = {}
  SHX3_2 = 1
  SHX4_2 = string
  SHX4_2 = SHX4_2.gmatch
  SHX5_2 = SHX0_2
  SHX6_2 = "([^"
  SHX7_2 = SHX1_2
  SHX8_2 = "]+)"
  SHX6_2 = SHX6_2 .. SHX7_2 .. SHX8_2
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2, SHX6_2)
  for SHX8_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    SHX2_2[SHX3_2] = SHX8_2
    SHX3_2 = SHX3_2 + 1
  end
  return SHX2_2
end
stringsplit = SHX0_1
SHX0_1 = string
function SHX1_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = string
  SHX2_2 = SHX2_2.sub
  SHX3_2 = SHX0_2
  SHX4_2 = 1
  SHX5_2 = string
  SHX5_2 = SHX5_2.len
  SHX6_2 = SHX1_2
  SHX5_2, SHX6_2 = SHX5_2(SHX6_2)
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = SHX2_2 == SHX1_2
  return SHX2_2
end
SHX0_1.starts = SHX1_1
SHX0_1 = string
function SHX1_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = type
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if "string" == SHX2_2 then
    SHX2_2 = type
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if "string" == SHX2_2 then
      goto SHX_LABEL_13
    end
  end
  SHX2_2 = false
  return SHX2_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_13:: outside nested blocks until all 'goto SHX_LABEL_13' can see it
  ::SHX_LABEL_13::
  SHX2_2 = string
  SHX2_2 = SHX2_2.find
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX5_2 = 1
  SHX6_2 = true
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = nil ~= SHX2_2
  return SHX2_2
end
SHX0_1.contains = SHX1_1
SHX0_1 = table
function SHX1_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = 0
  SHX2_2 = pairs
  SHX3_2 = SHX0_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX1_2 = SHX1_2 + 1
  end
  return SHX1_2
end
SHX0_1.count = SHX1_1
SHX0_1 = table
function SHX1_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX2_2 = type
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if "table" ~= SHX2_2 then
    return SHX0_2
  end
  if SHX1_2 then
    SHX2_2 = SHX1_2[SHX0_2]
    if SHX2_2 then
      SHX2_2 = SHX1_2[SHX0_2]
      return SHX2_2
    end
  end
  SHX2_2 = SHX1_2 or SHX2_2
  if not SHX1_2 then
    SHX2_2 = {}
  end
  SHX3_2 = setmetatable
  SHX4_2 = {}
  SHX5_2 = getmetatable
  SHX6_2 = SHX0_2
  SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX5_2(SHX6_2)
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX2_2[SHX0_2] = SHX3_2
  SHX4_2 = pairs
  SHX5_2 = SHX0_2
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
  for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    SHX10_2 = table
    SHX10_2 = SHX10_2.copy
    SHX11_2 = SHX8_2
    SHX12_2 = SHX2_2
    SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
    SHX11_2 = table
    SHX11_2 = SHX11_2.copy
    SHX12_2 = SHX9_2
    SHX13_2 = SHX2_2
    SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
    SHX3_2[SHX10_2] = SHX11_2
  end
  return SHX3_2
end
SHX0_1.copy = SHX1_1
function SHX0_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX2_2 = {}
  SHX3_2 = 0
  SHX4_2 = pairs
  SHX5_2 = SHX0_2
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
  for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    SHX3_2 = SHX3_2 + 1
    SHX2_2[SHX3_2] = SHX8_2
  end
  SHX4_2 = table
  SHX4_2 = SHX4_2.sort
  SHX5_2 = SHX2_2
  SHX6_2 = SHX1_2
  SHX4_2(SHX5_2, SHX6_2)
  return SHX2_2
end
sortedKeys = SHX0_1
SHX0_1 = CMG
function SHX1_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX2_2 = {}
  SHX3_2 = pairs
  SHX4_2 = SHX0_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = table
    SHX9_2 = SHX9_2.insert
    SHX10_2 = SHX2_2
    SHX11_2 = {}
    SHX12_2 = SHX7_2
    SHX13_2 = SHX8_2
    SHX11_2[1] = SHX12_2
    SHX11_2[2] = SHX13_2
    SHX9_2(SHX10_2, SHX11_2)
  end
  SHX3_2 = table
  SHX3_2 = SHX3_2.sort
  SHX4_2 = SHX2_2
  function SHX5_2(SHX0_3, SHX1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX2_3, SHX3_3
    SHX2_3 = SHX1_2
    if SHX2_3 then
      SHX2_3 = SHX0_3[2]
      SHX3_3 = SHX1_3[2]
      SHX2_3 = SHX2_3 < SHX3_3
      return SHX2_3
    else
      SHX2_3 = SHX0_3[1]
      SHX3_3 = SHX1_3[1]
      SHX2_3 = SHX2_3 < SHX3_3
      return SHX2_3
    end
  end
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = 0
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3
    SHX0_3 = SHX3_2
    SHX0_3 = SHX0_3 + 1
    SHX3_2 = SHX0_3
    SHX1_3 = SHX3_2
    SHX0_3 = SHX2_2
    SHX0_3 = SHX0_3[SHX1_3]
    if SHX0_3 then
      SHX1_3 = SHX3_2
      SHX0_3 = SHX2_2
      SHX0_3 = SHX0_3[SHX1_3]
      SHX0_3 = SHX0_3[1]
      SHX2_3 = SHX3_2
      SHX1_3 = SHX2_2
      SHX1_3 = SHX1_3[SHX2_3]
      SHX1_3 = SHX1_3[2]
      return SHX0_3, SHX1_3
    else
      SHX0_3 = nil
      SHX1_3 = nil
      return SHX0_3, SHX1_3
    end
  end
  return SHX4_2
end
SHX0_1.keySortedPairs = SHX1_1
function SHX0_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = string
  SHX1_2 = SHX1_2.find
  SHX2_2 = tostring
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = "([-]?)(%d+)([.]?%d*)"
  SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX7_2 = SHX4_2
  SHX6_2 = SHX4_2.reverse
  SHX6_2 = SHX6_2(SHX7_2)
  SHX7_2 = SHX6_2
  SHX6_2 = SHX6_2.gsub
  SHX8_2 = "(%d%d%d)"
  SHX9_2 = "%1,"
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX4_2 = SHX6_2
  SHX6_2 = SHX3_2
  SHX8_2 = SHX4_2
  SHX7_2 = SHX4_2.reverse
  SHX7_2 = SHX7_2(SHX8_2)
  SHX8_2 = SHX7_2
  SHX7_2 = SHX7_2.gsub
  SHX9_2 = "^,"
  SHX10_2 = ""
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  SHX8_2 = SHX5_2
  SHX6_2 = SHX6_2 .. SHX7_2 .. SHX8_2
  return SHX6_2
end
getMoneyStringFormatted = SHX0_1
function SHX0_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX1_2 = type
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if "table" == SHX1_2 then
    SHX1_2 = "{ "
    SHX2_2 = pairs
    SHX3_2 = SHX0_2
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
    for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
      SHX8_2 = type
      SHX9_2 = SHX6_2
      SHX8_2 = SHX8_2(SHX9_2)
      if "number" ~= SHX8_2 then
        SHX8_2 = "\""
        SHX9_2 = SHX6_2
        SHX10_2 = "\""
        SHX8_2 = SHX8_2 .. SHX9_2 .. SHX10_2
        SHX6_2 = SHX8_2
      end
      SHX8_2 = SHX1_2
      SHX9_2 = "["
      SHX10_2 = SHX6_2
      SHX11_2 = "] = "
      SHX12_2 = dump
      SHX13_2 = SHX7_2
      SHX12_2 = SHX12_2(SHX13_2)
      SHX13_2 = ","
      SHX8_2 = SHX8_2 .. SHX9_2 .. SHX10_2 .. SHX11_2 .. SHX12_2 .. SHX13_2
      SHX1_2 = SHX8_2
    end
    SHX2_2 = SHX1_2
    SHX3_2 = "} "
    SHX2_2 = SHX2_2 .. SHX3_2
    return SHX2_2
  else
    SHX1_2 = tostring
    SHX2_2 = SHX0_2
    return SHX1_2(SHX2_2)
  end
end
dump = SHX0_1
SHX0_1 = math
function SHX1_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = math
  SHX2_2 = SHX2_2.floor
  SHX3_2 = SHX0_2 / SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX2_2 = SHX2_2 * SHX1_2
  return SHX2_2
end
SHX0_1.round = SHX1_1
SHX0_1 = math
function SHX1_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  if not SHX1_2 then
    SHX1_2 = 0
  end
  SHX2_2 = math
  SHX2_2 = SHX2_2.floor
  SHX3_2 = 10
  SHX3_2 = SHX3_2 ^ SHX1_2
  SHX3_2 = SHX0_2 * SHX3_2
  SHX3_2 = SHX3_2 + 0.5
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = 10
  SHX3_2 = SHX3_2 ^ SHX1_2
  SHX2_2 = SHX2_2 / SHX3_2
  return SHX2_2
end
SHX0_1.rounddp = SHX1_1
SHX0_1 = table
function SHX1_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  if SHX0_2 == SHX1_2 then
    SHX3_2 = true
    return SHX3_2
  end
  SHX3_2 = type
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = type
  SHX5_2 = SHX1_2
  SHX4_2 = SHX4_2(SHX5_2)
  if SHX3_2 ~= SHX4_2 then
    SHX5_2 = false
    return SHX5_2
  end
  if "table" ~= SHX3_2 then
    SHX5_2 = false
    return SHX5_2
  end
  if not SHX2_2 then
    SHX5_2 = getmetatable
    SHX6_2 = SHX0_2
    SHX5_2 = SHX5_2(SHX6_2)
    if SHX5_2 then
      SHX6_2 = SHX5_2.__eq
      if SHX6_2 then
        SHX6_2 = SHX0_2 == SHX1_2
        return SHX6_2
      end
    end
  end
  SHX5_2 = {}
  SHX6_2 = pairs
  SHX7_2 = SHX0_2
  SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
  for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
    SHX12_2 = SHX1_2[SHX10_2]
    if nil ~= SHX12_2 then
      SHX13_2 = table
      SHX13_2 = SHX13_2.contentEquals
      SHX14_2 = SHX11_2
      SHX15_2 = SHX12_2
      SHX16_2 = SHX2_2
      SHX13_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2)
      if false ~= SHX13_2 then
        goto SHX_LABEL_53
      end
    end
    SHX13_2 = false
    return SHX13_2
    -- [FIX IF ERROR] Move ::SHX_LABEL_53:: outside nested blocks until all 'goto SHX_LABEL_53' can see it
    ::SHX_LABEL_53::
    SHX5_2[SHX10_2] = true
  end
  SHX6_2 = pairs
  SHX7_2 = SHX1_2
  SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
  for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
    SHX12_2 = SHX5_2[SHX10_2]
    if not SHX12_2 then
      SHX12_2 = false
      return SHX12_2
    end
  end
  SHX6_2 = true
  return SHX6_2
end
SHX0_1.contentEquals = SHX1_1
SHX0_1 = table
function SHX1_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = pairs
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = false
    return SHX7_2
  end
  SHX1_2 = true
  return SHX1_2
end
SHX0_1.empty = SHX1_1
SHX0_1 = {}
SHX1_1 = "Sunday"
SHX2_1 = "Monday"
SHX3_1 = "Tuesday"
SHX4_1 = "Wednesday"
SHX5_1 = "Thursday"
SHX6_1 = "Friday"
SHX7_1 = "Saturday"
SHX0_1[1] = SHX1_1
SHX0_1[2] = SHX2_1
SHX0_1[3] = SHX3_1
SHX0_1[4] = SHX4_1
SHX0_1[5] = SHX5_1
SHX0_1[6] = SHX6_1
SHX0_1[7] = SHX7_1
SHX1_1 = {}
SHX2_1 = "January"
SHX3_1 = "February"
SHX4_1 = "March"
SHX5_1 = "April"
SHX6_1 = "May"
SHX7_1 = "June"
SHX8_1 = "July"
SHX9_1 = "August"
SHX10_1 = "September"
SHX11_1 = "October"
SHX12_1 = "November"
SHX13_1 = "December"
SHX1_1[1] = SHX2_1
SHX1_1[2] = SHX3_1
SHX1_1[3] = SHX4_1
SHX1_1[4] = SHX5_1
SHX1_1[5] = SHX6_1
SHX1_1[6] = SHX7_1
SHX1_1[7] = SHX8_1
SHX1_1[8] = SHX9_1
SHX1_1[9] = SHX10_1
SHX1_1[10] = SHX11_1
SHX1_1[11] = SHX12_1
SHX1_1[12] = SHX13_1
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX2_2 = SHX0_2
  SHX1_2 = SHX0_2.sub
  SHX3_2 = -1
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if "1" == SHX1_2 then
    if 11 ~= SHX0_2 then
      SHX1_2 = "st"
    else
      SHX1_2 = "th"
    end
  elseif "2" == SHX1_2 then
    if 12 ~= SHX0_2 then
      SHX1_2 = "nd"
    else
      SHX1_2 = "th"
    end
  elseif "3" == SHX1_2 then
    if 13 ~= SHX0_2 then
      SHX1_2 = "rd"
    else
      SHX1_2 = "th"
    end
  else
    SHX1_2 = "th"
  end
  return SHX1_2
end
getDaySuffix = SHX2_1
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX0_1
  SHX1_2 = SHX1_2[SHX0_2]
  return SHX1_2
end
getDayName = SHX2_1
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX1_1
  SHX1_2 = SHX1_2[SHX0_2]
  return SHX1_2
end
getMonthName = SHX2_1
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = {}
  SHX2_2 = math
  SHX2_2 = SHX2_2.floor
  SHX3_2 = SHX0_2 / 31556926
  SHX2_2 = SHX2_2(SHX3_2)
  SHX1_2.years = SHX2_2
  SHX2_2 = SHX0_2 % 31556926
  SHX3_2 = math
  SHX3_2 = SHX3_2.floor
  SHX4_2 = SHX2_2 / 2629743
  SHX3_2 = SHX3_2(SHX4_2)
  SHX1_2.months = SHX3_2
  SHX2_2 = SHX2_2 % 2629743
  SHX3_2 = math
  SHX3_2 = SHX3_2.floor
  SHX4_2 = SHX2_2 / 86400
  SHX3_2 = SHX3_2(SHX4_2)
  SHX1_2.days = SHX3_2
  SHX2_2 = SHX2_2 % 86400
  SHX3_2 = math
  SHX3_2 = SHX3_2.floor
  SHX4_2 = SHX2_2 / 3600
  SHX3_2 = SHX3_2(SHX4_2)
  SHX1_2.hours = SHX3_2
  SHX2_2 = SHX2_2 % 3600
  SHX3_2 = math
  SHX3_2 = SHX3_2.floor
  SHX4_2 = SHX2_2 / 60
  SHX3_2 = SHX3_2(SHX4_2)
  SHX1_2.minutes = SHX3_2
  SHX2_2 = SHX2_2 % 60
  SHX3_2 = math
  SHX3_2 = SHX3_2.floor
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX1_2.seconds = SHX3_2
  return SHX1_2
end
formatTime = SHX2_1
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = ""
  SHX2_2 = SHX0_2.years
  if nil ~= SHX2_2 then
    SHX2_2 = SHX0_2.years
    if SHX2_2 > 0 then
      SHX2_2 = SHX0_2.years
      if 1 == SHX2_2 then
        SHX1_2 = "1 Year"
      else
        SHX2_2 = string
        SHX2_2 = SHX2_2.format
        SHX3_2 = "%u Years"
        SHX4_2 = SHX0_2.years
        SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
        SHX1_2 = SHX2_2
      end
    end
  end
  SHX2_2 = SHX0_2.months
  if nil ~= SHX2_2 then
    SHX2_2 = SHX0_2.months
    if SHX2_2 > 0 then
      SHX2_2 = SHX0_2.months
      if 1 == SHX2_2 then
        if "" == SHX1_2 then
          SHX1_2 = "1 Month"
        else
          SHX2_2 = SHX1_2
          SHX3_2 = ", 1 Month"
          SHX2_2 = SHX2_2 .. SHX3_2
          SHX1_2 = SHX2_2
        end
      elseif "" == SHX1_2 then
        SHX2_2 = string
        SHX2_2 = SHX2_2.format
        SHX3_2 = "%u Months"
        SHX4_2 = SHX0_2.months
        SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
        SHX1_2 = SHX2_2
      else
        SHX2_2 = string
        SHX2_2 = SHX2_2.format
        SHX3_2 = "%s, %u Months"
        SHX4_2 = SHX1_2
        SHX5_2 = SHX0_2.months
        SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
        SHX1_2 = SHX2_2
      end
    end
  end
  SHX2_2 = SHX0_2.days
  if nil ~= SHX2_2 then
    SHX2_2 = SHX0_2.days
    if SHX2_2 > 0 then
      SHX2_2 = SHX0_2.days
      if 1 == SHX2_2 then
        if "" == SHX1_2 then
          SHX1_2 = "1 Day"
        else
          SHX2_2 = SHX1_2
          SHX3_2 = ", 1 Day"
          SHX2_2 = SHX2_2 .. SHX3_2
          SHX1_2 = SHX2_2
        end
      elseif "" == SHX1_2 then
        SHX2_2 = string
        SHX2_2 = SHX2_2.format
        SHX3_2 = "%u Days"
        SHX4_2 = SHX0_2.days
        SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
        SHX1_2 = SHX2_2
      else
        SHX2_2 = string
        SHX2_2 = SHX2_2.format
        SHX3_2 = "%s, %u Days"
        SHX4_2 = SHX1_2
        SHX5_2 = SHX0_2.days
        SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
        SHX1_2 = SHX2_2
      end
    end
  end
  SHX2_2 = SHX0_2.hours
  if nil ~= SHX2_2 then
    SHX2_2 = SHX0_2.hours
    if SHX2_2 > 0 then
      SHX2_2 = SHX0_2.hours
      if 1 == SHX2_2 then
        if "" == SHX1_2 then
          SHX1_2 = "1 Hour"
        else
          SHX2_2 = SHX1_2
          SHX3_2 = ", 1 Hour"
          SHX2_2 = SHX2_2 .. SHX3_2
          SHX1_2 = SHX2_2
        end
      elseif "" == SHX1_2 then
        SHX2_2 = string
        SHX2_2 = SHX2_2.format
        SHX3_2 = "%u Hour"
        SHX4_2 = SHX0_2.hours
        SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
        SHX1_2 = SHX2_2
      else
        SHX2_2 = string
        SHX2_2 = SHX2_2.format
        SHX3_2 = "%s, %u Hours"
        SHX4_2 = SHX1_2
        SHX5_2 = SHX0_2.hours
        SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
        SHX1_2 = SHX2_2
      end
    end
  end
  SHX2_2 = SHX0_2.minutes
  if nil ~= SHX2_2 then
    SHX2_2 = SHX0_2.minutes
    if SHX2_2 > 0 then
      SHX2_2 = SHX0_2.minutes
      if 1 == SHX2_2 then
        if "" == SHX1_2 then
          SHX1_2 = "1 Minute"
        else
          SHX2_2 = SHX1_2
          SHX3_2 = ", 1 Minute"
          SHX2_2 = SHX2_2 .. SHX3_2
          SHX1_2 = SHX2_2
        end
      elseif "" == SHX1_2 then
        SHX2_2 = string
        SHX2_2 = SHX2_2.format
        SHX3_2 = "%u Minutes"
        SHX4_2 = SHX0_2.minutes
        SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
        SHX1_2 = SHX2_2
      else
        SHX2_2 = string
        SHX2_2 = SHX2_2.format
        SHX3_2 = "%s, %u Minutes"
        SHX4_2 = SHX1_2
        SHX5_2 = SHX0_2.minutes
        SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
        SHX1_2 = SHX2_2
      end
    end
  end
  SHX2_2 = SHX0_2.seconds
  if nil ~= SHX2_2 then
    SHX2_2 = SHX0_2.seconds
    if SHX2_2 > 0 then
      SHX2_2 = SHX0_2.seconds
      if 1 == SHX2_2 then
        if "" == SHX1_2 then
          SHX1_2 = "1 Second"
        else
          SHX2_2 = SHX1_2
          SHX3_2 = "and  1 Second"
          SHX2_2 = SHX2_2 .. SHX3_2
          SHX1_2 = SHX2_2
        end
      elseif "" == SHX1_2 then
        SHX2_2 = string
        SHX2_2 = SHX2_2.format
        SHX3_2 = "%u Seconds"
        SHX4_2 = SHX0_2.seconds
        SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
        SHX1_2 = SHX2_2
      else
        SHX2_2 = string
        SHX2_2 = SHX2_2.format
        SHX3_2 = "%s and %u Seconds"
        SHX4_2 = SHX1_2
        SHX5_2 = SHX0_2.seconds
        SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
        SHX1_2 = SHX2_2
      end
    end
  end
  return SHX1_2
end
formatTimeString = SHX2_1
SHX2_1 = {}
SHX3_1 = "~n~"
SHX4_1 = "~h~"
SHX5_1 = "<i>"
SHX6_1 = "\194\166"
SHX7_1 = "\195\183"
SHX8_1 = "\226\136\145"
SHX9_1 = "~ex_r*~"
SHX10_1 = "~ws~"
SHX11_1 = "\206\169"
SHX12_1 = "%^0"
SHX13_1 = "%^1"
SHX14_1 = "%^2"
SHX15_1 = "%^3"
SHX16_1 = "%^4"
SHX17_1 = "%^5"
SHX18_1 = "%^6"
SHX19_1 = "%^7"
SHX20_1 = "%^8"
SHX21_1 = "%^9"
SHX22_1 = "~bold~"
SHX23_1 = "~italic~"
SHX24_1 = "<C>"
SHX25_1 = "</C>"
SHX26_1 = "~nrt~"
SHX27_1 = "~a~"
SHX28_1 = "~1~"
SHX2_1[1] = SHX3_1
SHX2_1[2] = SHX4_1
SHX2_1[3] = SHX5_1
SHX2_1[4] = SHX6_1
SHX2_1[5] = SHX7_1
SHX2_1[6] = SHX8_1
SHX2_1[7] = SHX9_1
SHX2_1[8] = SHX10_1
SHX2_1[9] = SHX11_1
SHX2_1[10] = SHX12_1
SHX2_1[11] = SHX13_1
SHX2_1[12] = SHX14_1
SHX2_1[13] = SHX15_1
SHX2_1[14] = SHX16_1
SHX2_1[15] = SHX17_1
SHX2_1[16] = SHX18_1
SHX2_1[17] = SHX19_1
SHX2_1[18] = SHX20_1
SHX2_1[19] = SHX21_1
SHX2_1[20] = SHX22_1
SHX2_1[21] = SHX23_1
SHX2_1[22] = SHX24_1
SHX2_1[23] = SHX25_1
SHX2_1[24] = SHX26_1
SHX2_1[25] = SHX27_1
SHX2_1[26] = SHX28_1
SHX3_1 = {}
SHX4_1 = "~r~"
SHX5_1 = "~b~"
SHX6_1 = "~g~"
SHX7_1 = "~y~"
SHX8_1 = "~p~"
SHX9_1 = "~q~"
SHX10_1 = "~o~"
SHX11_1 = "~c~"
SHX12_1 = "~t~"
SHX13_1 = "~m~"
SHX14_1 = "~u~"
SHX15_1 = "~l~"
SHX16_1 = "~w~"
SHX17_1 = "~s~"
SHX18_1 = "~"
SHX3_1[1] = SHX4_1
SHX3_1[2] = SHX5_1
SHX3_1[3] = SHX6_1
SHX3_1[4] = SHX7_1
SHX3_1[5] = SHX8_1
SHX3_1[6] = SHX9_1
SHX3_1[7] = SHX10_1
SHX3_1[8] = SHX11_1
SHX3_1[9] = SHX12_1
SHX3_1[10] = SHX13_1
SHX3_1[11] = SHX14_1
SHX3_1[12] = SHX15_1
SHX3_1[13] = SHX16_1
SHX3_1[14] = SHX17_1
SHX3_1[15] = SHX18_1
SHX4_1 = CMG
function SHX5_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  if nil == SHX0_2 then
    SHX2_2 = "N/A"
    return SHX2_2
  end
  SHX2_2 = SHX0_2
  SHX3_2 = pairs
  SHX4_2 = SHX2_1
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = SHX0_2.gsub
    SHX10_2 = SHX2_2
    SHX11_2 = SHX0_2.lower
    SHX12_2 = SHX8_2
    SHX11_2 = SHX11_2(SHX12_2)
    SHX12_2 = ""
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
    SHX2_2 = SHX9_2
  end
  if not SHX1_2 then
    SHX3_2 = pairs
    SHX4_2 = SHX3_1
    SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
    for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
      SHX9_2 = SHX0_2.gsub
      SHX10_2 = SHX2_2
      SHX11_2 = SHX0_2.lower
      SHX12_2 = SHX8_2
      SHX11_2 = SHX11_2(SHX12_2)
      SHX12_2 = ""
      SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
      SHX2_2 = SHX9_2
    end
  end
  return SHX2_2
end
SHX4_1.sanitizeString = SHX5_1
SHX4_1 = GetPlayerName
function SHX5_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX4_1
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.sanitizeString
  SHX3_2 = SHX1_2
  SHX4_2 = false
  return SHX2_2(SHX3_2, SHX4_2)
end
GetPlayerName = SHX5_1
SHX5_1 = {}
SHX5_1[1] = true
SHX5_1[2] = true
SHX6_1 = CMG
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX5_1
  SHX1_2 = SHX1_2[SHX0_2]
  if not SHX1_2 then
    SHX1_2 = false
  end
  return SHX1_2
end
SHX6_1.isDeveloper = SHX7_1
SHX6_1 = CMG
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX0_2 % 6
  if 0 == SHX1_2 then
    SHX2_2 = "~b~"
    return SHX2_2
  elseif 1 == SHX1_2 then
    SHX2_2 = "~y~"
    return SHX2_2
  elseif 2 == SHX1_2 then
    SHX2_2 = "~o~"
    return SHX2_2
  elseif 3 == SHX1_2 then
    SHX2_2 = "~g~"
    return SHX2_2
  elseif 4 == SHX1_2 then
    SHX2_2 = "~p~"
    return SHX2_2
  elseif 5 == SHX1_2 then
    SHX2_2 = "~q~"
    return SHX2_2
  elseif 6 == SHX1_2 then
    SHX2_2 = "~r~"
    return SHX2_2
  end
  SHX2_2 = error
  SHX3_2 = "Modulus operation failed"
  SHX2_2(SHX3_2)
end
SHX6_1.getPlayerColour = SHX7_1
SHX6_1 = {}
SHX6_1.r = true
SHX6_1.n = true
SHX6_1.b = true
SHX6_1.q = true
SHX6_1.k = true
SHX6_1.p = true
SHX6_1.R = true
SHX6_1.N = true
SHX6_1.B = true
SHX6_1.Q = true
SHX6_1.K = true
SHX6_1.P = true
SHX7_1 = CMG
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX1_2 = {}
  SHX2_2 = {}
  SHX3_2 = {}
  SHX4_2 = {}
  SHX5_2 = {}
  SHX6_2 = {}
  SHX7_2 = {}
  SHX8_2 = {}
  SHX9_2 = {}
  SHX1_2[1] = SHX2_2
  SHX1_2[2] = SHX3_2
  SHX1_2[3] = SHX4_2
  SHX1_2[4] = SHX5_2
  SHX1_2[5] = SHX6_2
  SHX1_2[6] = SHX7_2
  SHX1_2[7] = SHX8_2
  SHX1_2[8] = SHX9_2
  SHX2_2 = 1
  SHX3_2 = ""
  SHX4_2 = 0
  SHX5_2 = 0
  SHX6_2 = 0
  SHX7_2 = 1
  SHX8_2 = #SHX0_2
  SHX9_2 = 1
  for SHX10_2 = SHX7_2, SHX8_2, SHX9_2 do
    SHX11_2 = string
    SHX11_2 = SHX11_2.sub
    SHX12_2 = SHX0_2
    SHX13_2 = SHX10_2
    SHX14_2 = SHX10_2
    SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2)
    if "/" == SHX11_2 then
      SHX12_2 = assert
      SHX13_2 = SHX1_2[SHX2_2]
      SHX13_2 = #SHX13_2
      SHX13_2 = 8 == SHX13_2
      SHX12_2(SHX13_2)
      SHX2_2 = SHX2_2 + 1
    elseif " " == SHX11_2 then
      SHX12_2 = assert
      SHX13_2 = SHX6_2 <= 5
      SHX12_2(SHX13_2)
      SHX6_2 = SHX6_2 + 1
    elseif SHX6_2 > 0 then
      SHX12_2 = string
      SHX12_2 = SHX12_2.sub
      SHX13_2 = SHX0_2
      SHX14_2 = SHX10_2
      SHX15_2 = string
      SHX15_2 = SHX15_2.find
      SHX16_2 = SHX0_2
      SHX17_2 = " "
      SHX18_2 = SHX10_2
      SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2 = SHX15_2(SHX16_2, SHX17_2, SHX18_2)
      SHX12_2 = SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
      if 1 == SHX6_2 then
        SHX13_2 = assert
        SHX14_2 = "w" == SHX11_2 or "b" == SHX11_2
        SHX13_2(SHX14_2)
        SHX3_2 = SHX11_2
      elseif 4 == SHX6_2 then
        SHX13_2 = tonumber
        SHX14_2 = SHX12_2
        SHX13_2 = SHX13_2(SHX14_2)
        SHX14_2 = assert
        SHX15_2 = type
        SHX16_2 = SHX13_2
        SHX15_2 = SHX15_2(SHX16_2)
        SHX15_2 = "number" == SHX15_2
        SHX14_2(SHX15_2)
        SHX14_2 = assert
        SHX15_2 = SHX13_2 >= 0
        SHX14_2(SHX15_2)
        SHX4_2 = SHX13_2
      elseif 5 == SHX6_2 then
        SHX13_2 = tonumber
        SHX14_2 = SHX12_2
        SHX13_2 = SHX13_2(SHX14_2)
        SHX14_2 = assert
        SHX15_2 = type
        SHX16_2 = SHX13_2
        SHX15_2 = SHX15_2(SHX16_2)
        SHX15_2 = "number" == SHX15_2
        SHX14_2(SHX15_2)
        SHX14_2 = assert
        SHX15_2 = SHX13_2 >= 0
        SHX14_2(SHX15_2)
        SHX5_2 = SHX13_2
      end
    elseif SHX2_2 <= 8 then
      SHX12_2 = tonumber
      SHX13_2 = SHX11_2
      SHX12_2 = SHX12_2(SHX13_2)
      if SHX12_2 then
        SHX13_2 = assert
        SHX14_2 = SHX12_2 >= 0 and SHX12_2 <= 8
        SHX13_2(SHX14_2)
        SHX13_2 = 1
        SHX14_2 = SHX12_2
        SHX15_2 = 1
        for SHX16_2 = SHX13_2, SHX14_2, SHX15_2 do
          SHX17_2 = table
          SHX17_2 = SHX17_2.insert
          SHX18_2 = SHX1_2[SHX2_2]
          SHX19_2 = ""
          SHX17_2(SHX18_2, SHX19_2)
        end
      else
        SHX13_2 = assert
        SHX14_2 = SHX1_2[SHX2_2]
        SHX14_2 = #SHX14_2
        SHX14_2 = SHX14_2 <= 8
        SHX13_2(SHX14_2)
        SHX13_2 = assert
        SHX14_2 = SHX6_1
        SHX14_2 = SHX14_2[SHX11_2]
        SHX13_2(SHX14_2)
        SHX13_2 = table
        SHX13_2 = SHX13_2.insert
        SHX14_2 = SHX1_2[SHX2_2]
        SHX15_2 = SHX11_2
        SHX13_2(SHX14_2, SHX15_2)
      end
    end
  end
  SHX7_2 = assert
  SHX8_2 = 8 == SHX2_2
  SHX7_2(SHX8_2)
  SHX7_2 = assert
  SHX8_2 = 5 == SHX6_2
  SHX7_2(SHX8_2)
  SHX7_2 = SHX1_2
  SHX8_2 = SHX3_2
  SHX9_2 = SHX4_2
  SHX10_2 = SHX5_2
  return SHX7_2, SHX8_2, SHX9_2, SHX10_2
end
SHX7_1.parseChessFEN = SHX8_1
SHX7_1 = CMG
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = nil
  if SHX0_2 then
    SHX2_2 = string
    SHX2_2 = SHX2_2.upper
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    SHX1_2 = SHX2_2
    SHX2_2 = string
    SHX2_2 = SHX2_2.gsub
    SHX3_2 = SHX1_2
    SHX4_2 = "%s+"
    SHX5_2 = ""
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX1_2 = SHX2_2
    SHX2_2 = string
    SHX2_2 = SHX2_2.gsub
    SHX3_2 = SHX1_2
    SHX4_2 = "%W"
    SHX5_2 = ""
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX1_2 = SHX2_2
  end
  return SHX1_2
end
SHX7_1.getFlatLicensePlate = SHX8_1
SHX7_1 = string
function SHX8_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX3_2 = SHX0_2
  SHX4_2 = string
  SHX4_2 = SHX4_2.rep
  SHX5_2 = SHX2_2
  SHX6_2 = #SHX0_2
  SHX6_2 = SHX1_2 - SHX6_2
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX3_2 = SHX3_2 .. SHX4_2
  return SHX3_2
end
SHX7_1.lpad = SHX8_1
SHX7_1 = string
function SHX8_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2
  SHX3_2 = string
  SHX3_2 = SHX3_2.rep
  SHX4_2 = SHX2_2
  SHX5_2 = #SHX0_2
  SHX5_2 = SHX1_2 - SHX5_2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2 .. SHX4_2
  return SHX3_2
end
SHX7_1.rpad = SHX8_1
SHX7_1 = math
SHX7_1.pi = 3.141592653589793
SHX7_1 = table
function SHX8_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX2_2 = 1
  SHX3_2 = pairs
  SHX4_2 = SHX0_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    if SHX2_2 == SHX1_2 then
      return SHX7_2
    end
    SHX2_2 = SHX2_2 + 1
  end
  SHX3_2 = error
  SHX4_2 = string
  SHX4_2 = SHX4_2.format
  SHX5_2 = "Index %s out of range (1 to %s)"
  SHX6_2 = SHX1_2
  SHX7_2 = table
  SHX7_2 = SHX7_2.count
  SHX8_2 = SHX0_2
  SHX7_2, SHX8_2, SHX9_2 = SHX7_2(SHX8_2)
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
end
SHX7_1.keyat = SHX8_1
SHX7_1 = string
function SHX8_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX5_2 = string
  SHX5_2 = SHX5_2.sub
  SHX6_2 = SHX0_2
  SHX7_2 = 1
  SHX8_2 = SHX4_2 - 1
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX6_2 = string
  SHX6_2 = SHX6_2.sub
  SHX7_2 = SHX0_2
  SHX8_2 = SHX4_2
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  SHX7_2 = string
  SHX7_2 = SHX7_2.gsub
  SHX8_2 = SHX6_2
  SHX9_2 = SHX1_2
  SHX10_2 = SHX2_2
  SHX11_2 = SHX3_2
  SHX7_2, SHX8_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX9_2 = SHX5_2
  SHX10_2 = SHX7_2
  SHX9_2 = SHX9_2 .. SHX10_2
  SHX10_2 = SHX8_2
  return SHX9_2, SHX10_2
end
SHX7_1.indexedgsub = SHX8_1
SHX7_1 = table
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = {}
  SHX2_2 = pairs
  SHX3_2 = SHX0_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = tonumber
    SHX9_2 = SHX6_2
    SHX8_2 = SHX8_2(SHX9_2)
    if SHX8_2 then
      SHX9_2 = math
      SHX9_2 = SHX9_2.type
      SHX10_2 = SHX8_2
      SHX9_2 = SHX9_2(SHX10_2)
      if "integer" == SHX9_2 then
        SHX1_2[SHX8_2] = SHX7_2
      end
    end
  end
  return SHX1_2
end
SHX7_1.indicies = SHX8_1
SHX7_1 = table
function SHX8_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX2_2 = {}
  SHX3_2 = pairs
  SHX4_2 = SHX0_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = SHX1_2
    SHX10_2 = SHX8_2
    SHX9_2 = SHX9_2(SHX10_2)
    if SHX9_2 then
      SHX9_2 = table
      SHX9_2 = SHX9_2.insert
      SHX10_2 = SHX2_2
      SHX11_2 = SHX8_2
      SHX9_2(SHX10_2, SHX11_2)
    end
  end
  return SHX2_2
end
SHX7_1.filter = SHX8_1
SHX7_1 = CMG
function SHX8_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2
  SHX3_2 = _G
  function SHX4_2(...)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3
    SHX0_3 = SHX2_2
    SHX1_3 = SHX1_2
    SHX2_3 = ...
    return SHX0_3(SHX1_3, SHX2_3)
  end
  SHX3_2[SHX0_2] = SHX4_2
end
SHX7_1.patchFunction = SHX8_1
SHX7_1 = table
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = #SHX0_2
  SHX2_2 = SHX1_2
  SHX3_2 = 2
  SHX4_2 = -1
  for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = math
    SHX6_2 = SHX6_2.random
    SHX7_2 = SHX5_2
    SHX6_2 = SHX6_2(SHX7_2)
    SHX7_2 = SHX0_2[SHX6_2]
    SHX8_2 = SHX0_2[SHX5_2]
    SHX0_2[SHX6_2] = SHX8_2
    SHX0_2[SHX5_2] = SHX7_2
  end
end
SHX7_1.shuffle = SHX8_1
SHX7_1 = table
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX0_2.x
  if SHX1_2 then
    SHX1_2 = SHX0_2.y
    if SHX1_2 then
      SHX1_2 = vector2
      SHX2_2 = SHX0_2.x
      SHX3_2 = SHX0_2.y
      return SHX1_2(SHX2_2, SHX3_2)
    end
  end
  SHX1_2 = error
  SHX2_2 = "Table can not be converted to a vector."
  SHX1_2(SHX2_2)
end
SHX7_1.vector2 = SHX8_1
SHX7_1 = table
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX0_2.x
  if SHX1_2 then
    SHX1_2 = SHX0_2.y
    if SHX1_2 then
      SHX1_2 = SHX0_2.z
      if SHX1_2 then
        SHX1_2 = vector3
        SHX2_2 = SHX0_2.x
        SHX3_2 = SHX0_2.y
        SHX4_2 = SHX0_2.z
        return SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      end
    end
  end
  SHX1_2 = error
  SHX2_2 = "Table can not be converted to a vector."
  SHX1_2(SHX2_2)
end
SHX7_1.vector3 = SHX8_1
SHX7_1 = table
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX0_2.x
  if SHX1_2 then
    SHX1_2 = SHX0_2.y
    if SHX1_2 then
      SHX1_2 = SHX0_2.z
      if SHX1_2 then
        SHX1_2 = SHX0_2.w
        if SHX1_2 then
          SHX1_2 = vector4
          SHX2_2 = SHX0_2.x
          SHX3_2 = SHX0_2.y
          SHX4_2 = SHX0_2.z
          SHX5_2 = SHX0_2.w
          return SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
        end
      end
    end
  end
  SHX1_2 = error
  SHX2_2 = "Table can not be converted to a vector."
  SHX1_2(SHX2_2)
end
SHX7_1.vector4 = SHX8_1
