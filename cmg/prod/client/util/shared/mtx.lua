-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1
SHX0_1 = {}
function SHX1_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = {}
  SHX2_2 = {}
  SHX1_2.values = SHX2_2
  SHX2_2 = {}
  SHX1_2.positions = SHX2_2
  SHX2_2 = {}
  SHX1_2.directions = SHX2_2
  SHX1_2.sign = 1
  SHX2_2 = setmetatable
  SHX3_2 = SHX1_2
  SHX4_2 = {}
  SHX5_2 = SHX0_1
  SHX4_2.__index = SHX5_2
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = 1
  SHX3_2 = SHX0_2
  SHX4_2 = 1
  for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = SHX1_2.values
    SHX6_2[SHX5_2] = SHX5_2
    SHX6_2 = SHX1_2.positions
    SHX6_2[SHX5_2] = SHX5_2
    SHX6_2 = SHX1_2.directions
    SHX6_2[SHX5_2] = -1
  end
  return SHX1_2
end
JT = SHX1_1
function SHX1_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = SHX0_2.values
  SHX1_2 = #SHX1_2
  SHX2_2 = 1
  SHX3_2 = -1
  for SHX4_2 = SHX1_2, SHX2_2, SHX3_2 do
    SHX5_2 = SHX0_2.positions
    SHX5_2 = SHX5_2[SHX4_2]
    SHX6_2 = SHX0_2.directions
    SHX6_2 = SHX6_2[SHX4_2]
    SHX5_2 = SHX5_2 + SHX6_2
    if SHX5_2 >= 1 then
      SHX6_2 = SHX0_2.values
      SHX6_2 = #SHX6_2
      if SHX5_2 <= SHX6_2 then
        SHX6_2 = SHX0_2.values
        SHX6_2 = SHX6_2[SHX5_2]
        if SHX4_2 > SHX6_2 then
          return SHX4_2
        end
      end
    end
  end
  SHX1_2 = 0
  return SHX1_2
end
SHX0_1.largestMobile = SHX1_1
function SHX1_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX2_2 = SHX0_2
  SHX1_2 = SHX0_2.largestMobile
  SHX1_2 = SHX1_2(SHX2_2)
  if 0 == SHX1_2 then
    SHX2_2 = false
    return SHX2_2
  end
  SHX2_2 = SHX0_2.positions
  SHX2_2 = SHX2_2[SHX1_2]
  SHX3_2 = SHX0_2.directions
  SHX3_2 = SHX3_2[SHX1_2]
  SHX3_2 = SHX2_2 + SHX3_2
  SHX4_2 = SHX0_2.values
  SHX4_2 = SHX4_2[SHX3_2]
  SHX5_2 = SHX0_2.values
  SHX6_2 = SHX0_2.values
  SHX7_2 = SHX0_2.values
  SHX7_2 = SHX7_2[SHX2_2]
  SHX8_2 = SHX0_2.values
  SHX8_2 = SHX8_2[SHX3_2]
  SHX6_2[SHX2_2] = SHX8_2
  SHX5_2[SHX3_2] = SHX7_2
  SHX5_2 = SHX0_2.positions
  SHX6_2 = SHX0_2.positions
  SHX7_2 = SHX0_2.positions
  SHX7_2 = SHX7_2[SHX1_2]
  SHX8_2 = SHX0_2.positions
  SHX8_2 = SHX8_2[SHX4_2]
  SHX6_2[SHX1_2] = SHX8_2
  SHX5_2[SHX4_2] = SHX7_2
  SHX5_2 = SHX0_2.sign
  SHX5_2 = -SHX5_2
  SHX0_2.sign = SHX5_2
  SHX5_2 = SHX1_2 + 1
  SHX6_2 = SHX0_2.directions
  SHX6_2 = #SHX6_2
  SHX7_2 = 1
  for SHX8_2 = SHX5_2, SHX6_2, SHX7_2 do
    SHX9_2 = SHX0_2.directions
    SHX10_2 = SHX0_2.directions
    SHX10_2 = SHX10_2[SHX8_2]
    SHX10_2 = -SHX10_2
    SHX9_2[SHX8_2] = SHX10_2
  end
  SHX5_2 = true
  return SHX5_2
end
SHX0_1.next = SHX1_1
SHX1_1 = {}
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = setmetatable
  SHX2_2 = SHX0_2
  SHX3_2 = {}
  SHX4_2 = SHX1_1
  SHX3_2.__index = SHX4_2
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = #SHX0_2
  SHX0_2.rows = SHX1_2
  SHX1_2 = SHX0_2[1]
  SHX1_2 = #SHX1_2
  SHX0_2.cols = SHX1_2
  return SHX0_2
end
MTX = SHX2_1
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = ipairs
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = print
    SHX8_2 = table
    SHX8_2 = SHX8_2.unpack
    SHX9_2 = SHX6_2
    SHX8_2, SHX9_2 = SHX8_2(SHX9_2)
    SHX7_2(SHX8_2, SHX9_2)
  end
end
SHX1_1.dump = SHX2_1
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX2_2 = SHX0_2
  SHX1_2 = SHX0_2.det
  SHX3_2 = 1
  return SHX1_2(SHX2_2, SHX3_2)
end
SHX1_1.perm = SHX2_1
function SHX2_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX2_2 = 0
  SHX3_2 = JT
  SHX4_2 = SHX0_2.cols
  SHX3_2 = SHX3_2(SHX4_2)
  repeat
    SHX4_2 = SHX1_2 or SHX4_2
    if not SHX1_2 then
      SHX4_2 = SHX3_2.sign
    end
    SHX5_2 = ipairs
    SHX6_2 = SHX3_2.values
    SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
    for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
      SHX11_2 = SHX0_2[SHX9_2]
      SHX11_2 = SHX11_2[SHX10_2]
      SHX4_2 = SHX4_2 * SHX11_2
    end
    SHX2_2 = SHX2_2 + SHX4_2
    SHX6_2 = SHX3_2
    SHX5_2 = SHX3_2.next
    SHX5_2 = SHX5_2(SHX6_2)
  until not SHX5_2
  return SHX2_2
end
SHX1_1.det = SHX2_1
SHX2_1 = CMG
function SHX3_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX6_2 = MTX
  SHX7_2 = {}
  SHX8_2 = {}
  SHX9_2 = SHX0_2.x
  SHX10_2 = SHX1_2.x
  SHX11_2 = SHX2_2.x
  SHX12_2 = SHX3_2.x
  SHX8_2[1] = SHX9_2
  SHX8_2[2] = SHX10_2
  SHX8_2[3] = SHX11_2
  SHX8_2[4] = SHX12_2
  SHX9_2 = {}
  SHX10_2 = SHX0_2.y
  SHX11_2 = SHX1_2.y
  SHX12_2 = SHX2_2.y
  SHX13_2 = SHX3_2.y
  SHX9_2[1] = SHX10_2
  SHX9_2[2] = SHX11_2
  SHX9_2[3] = SHX12_2
  SHX9_2[4] = SHX13_2
  SHX10_2 = {}
  SHX11_2 = SHX0_2.z
  SHX12_2 = SHX1_2.z
  SHX13_2 = SHX2_2.z
  SHX14_2 = SHX3_2.z
  SHX10_2[1] = SHX11_2
  SHX10_2[2] = SHX12_2
  SHX10_2[3] = SHX13_2
  SHX10_2[4] = SHX14_2
  SHX11_2 = {}
  SHX12_2 = 1
  SHX13_2 = 1
  SHX14_2 = 1
  SHX15_2 = 1
  SHX16_2 = 1
  SHX11_2[1] = SHX12_2
  SHX11_2[2] = SHX13_2
  SHX11_2[3] = SHX14_2
  SHX11_2[4] = SHX15_2
  SHX11_2[5] = SHX16_2
  SHX7_2[1] = SHX8_2
  SHX7_2[2] = SHX9_2
  SHX7_2[3] = SHX10_2
  SHX7_2[4] = SHX11_2
  SHX6_2 = SHX6_2(SHX7_2)
  SHX7_2 = MTX
  SHX8_2 = {}
  SHX9_2 = {}
  SHX10_2 = SHX0_2.x
  SHX11_2 = SHX2_2.x
  SHX12_2 = SHX4_2.x
  SHX13_2 = SHX5_2.x
  SHX9_2[1] = SHX10_2
  SHX9_2[2] = SHX11_2
  SHX9_2[3] = SHX12_2
  SHX9_2[4] = SHX13_2
  SHX10_2 = {}
  SHX11_2 = SHX0_2.y
  SHX12_2 = SHX2_2.y
  SHX13_2 = SHX4_2.y
  SHX14_2 = SHX5_2.y
  SHX10_2[1] = SHX11_2
  SHX10_2[2] = SHX12_2
  SHX10_2[3] = SHX13_2
  SHX10_2[4] = SHX14_2
  SHX11_2 = {}
  SHX12_2 = SHX0_2.z
  SHX13_2 = SHX2_2.z
  SHX14_2 = SHX4_2.z
  SHX15_2 = SHX5_2.z
  SHX11_2[1] = SHX12_2
  SHX11_2[2] = SHX13_2
  SHX11_2[3] = SHX14_2
  SHX11_2[4] = SHX15_2
  SHX12_2 = {}
  SHX13_2 = 1
  SHX14_2 = 1
  SHX15_2 = 1
  SHX16_2 = 1
  SHX17_2 = 1
  SHX12_2[1] = SHX13_2
  SHX12_2[2] = SHX14_2
  SHX12_2[3] = SHX15_2
  SHX12_2[4] = SHX16_2
  SHX12_2[5] = SHX17_2
  SHX8_2[1] = SHX9_2
  SHX8_2[2] = SHX10_2
  SHX8_2[3] = SHX11_2
  SHX8_2[4] = SHX12_2
  SHX7_2 = SHX7_2(SHX8_2)
  SHX8_2 = math
  SHX8_2 = SHX8_2.abs
  SHX10_2 = SHX6_2
  SHX9_2 = SHX6_2.det
  SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2 = SHX9_2(SHX10_2)
  SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX9_2 = 0.1
  SHX8_2 = SHX8_2 < SHX9_2
  return SHX8_2
end
SHX2_1.isOnPlane = SHX3_1
