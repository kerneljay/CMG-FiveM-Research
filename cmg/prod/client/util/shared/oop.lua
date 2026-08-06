-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1
SHX0_1 = {}
Luaoop = SHX0_1
SHX0_1 = string
SHX0_1 = SHX0_1.find
SHX1_1 = _VERSION
SHX2_1 = "5.1"
SHX0_1 = SHX0_1(SHX1_1, SHX2_1)
SHX0_1 = nil ~= SHX0_1
SHX1_1 = getmetatable
SHX2_1 = setmetatable
SHX3_1 = pairs
function SHX4_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX2_2 = SHX0_2.luaoop
  SHX2_2 = SHX2_2.custom
  if not SHX2_2 then
    SHX2_2 = {}
    SHX3_2 = SHX3_1
    SHX4_2 = SHX0_2
    SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
    for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
      SHX2_2[SHX7_2] = SHX8_2
    end
    SHX3_2 = {}
    SHX2_2.luaoop = SHX3_2
    SHX3_2 = SHX3_1
    SHX4_2 = SHX0_2.luaoop
    SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
    for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
      SHX9_2 = SHX2_2.luaoop
      SHX9_2[SHX7_2] = SHX8_2
    end
    SHX3_2 = SHX2_2.luaoop
    SHX3_2.custom = true
    SHX3_2 = SHX2_1
    SHX4_2 = SHX1_2
    SHX5_2 = SHX2_2
    SHX3_2(SHX4_2, SHX5_2)
    SHX0_2 = SHX2_2
  end
  SHX2_2 = SHX0_2
  SHX3_2 = SHX0_2.luaoop
  return SHX2_2, SHX3_2
end
function SHX5_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  if SHX0_2 then
    SHX1_2 = SHX1_1
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    SHX2_2 = nil
    if SHX1_2 then
      SHX2_2 = SHX1_2.luaoop
    end
    if SHX2_2 then
      SHX3_2 = SHX2_2.type
      if not SHX3_2 then
        SHX3_2 = SHX0_2
      end
      return SHX3_2
    end
  end
end
function SHX6_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  if SHX0_2 then
    SHX1_2 = SHX1_1
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    SHX2_2 = nil
    if SHX1_2 then
      SHX2_2 = SHX1_2.luaoop
    end
    if SHX2_2 then
      SHX3_2 = SHX2_2.name
      return SHX3_2
    end
  end
end
function SHX7_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX4_2 = SHX1_1
  SHX5_2 = SHX0_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = nil
  if SHX4_2 then
    SHX5_2 = SHX4_2.luaoop
  end
  if SHX5_2 then
    SHX6_2 = SHX5_2.type
    if SHX6_2 then
      SHX6_2 = nil
      SHX7_2 = nil
      if nil ~= SHX2_2 then
        SHX8_2 = SHX5_1
        SHX9_2 = SHX2_2
        SHX8_2 = SHX8_2(SHX9_2)
        SHX6_2 = SHX8_2
        if not SHX6_2 then
          SHX8_2 = type
          SHX9_2 = SHX2_2
          SHX8_2 = SHX8_2(SHX9_2)
          SHX6_2 = SHX8_2
        end
        SHX8_2 = SHX5_2.type
        SHX8_2 = SHX8_2[SHX1_2]
        SHX7_2 = SHX8_2[SHX6_2]
      else
        SHX8_2 = SHX5_2.type
        SHX7_2 = SHX8_2[SHX1_2]
      end
      if SHX7_2 then
        return SHX7_2
      elseif not SHX3_2 then
        SHX8_2 = nil
        if nil == SHX6_2 then
          SHX8_2 = "nil"
        else
          SHX9_2 = type
          SHX10_2 = SHX6_2
          SHX9_2 = SHX9_2(SHX10_2)
          if "string" == SHX9_2 then
            SHX8_2 = SHX6_2
          else
            SHX9_2 = SHX6_1
            SHX10_2 = SHX6_2
            SHX9_2 = SHX9_2(SHX10_2)
            SHX8_2 = SHX9_2
          end
        end
        SHX9_2 = error
        SHX10_2 = "operator <"
        SHX11_2 = SHX5_2.name
        SHX12_2 = "> ["
        SHX13_2 = string
        SHX13_2 = SHX13_2.sub
        SHX14_2 = SHX1_2
        SHX15_2 = 3
        SHX13_2 = SHX13_2(SHX14_2, SHX15_2)
        SHX14_2 = "] <"
        SHX15_2 = SHX8_2
        SHX16_2 = "> undefined"
        SHX10_2 = SHX10_2 .. SHX11_2 .. SHX12_2 .. SHX13_2 .. SHX14_2 .. SHX15_2 .. SHX16_2
        SHX9_2(SHX10_2)
      end
  end
  elseif not SHX3_2 then
    SHX6_2 = error
    SHX7_2 = "left operand for operator ["
    SHX8_2 = string
    SHX8_2 = SHX8_2.sub
    SHX9_2 = SHX1_2
    SHX10_2 = 3
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
    SHX9_2 = "] is not an instance"
    SHX7_2 = SHX7_2 .. SHX8_2 .. SHX9_2
    SHX6_2(SHX7_2)
  end
end
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = SHX7_1
  SHX2_2 = SHX0_2
  SHX3_2 = "__tostring"
  SHX4_2 = nil
  SHX5_2 = true
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  if SHX1_2 then
    SHX2_2 = SHX1_2
    SHX3_2 = SHX0_2
    return SHX2_2(SHX3_2)
  else
    SHX2_2 = SHX1_1
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    SHX2_2.__tostring = nil
    SHX3_2 = string
    SHX3_2 = SHX3_2.gsub
    SHX4_2 = tostring
    SHX5_2 = SHX0_2
    SHX4_2 = SHX4_2(SHX5_2)
    SHX5_2 = "table:"
    SHX6_2 = "instance<"
    SHX7_2 = SHX6_1
    SHX8_2 = SHX0_2
    SHX7_2 = SHX7_2(SHX8_2)
    SHX8_2 = ">:"
    SHX6_2 = SHX6_2 .. SHX7_2 .. SHX8_2
    SHX7_2 = 1
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
    SHX4_2 = SHX8_1
    SHX2_2.__tostring = SHX4_2
    return SHX3_2
  end
end
function SHX9_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = SHX7_1
  SHX3_2 = SHX0_2
  SHX4_2 = "__concat"
  SHX5_2 = SHX1_2
  SHX6_2 = true
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  if SHX2_2 then
    SHX3_2 = SHX2_2
    SHX4_2 = SHX0_2
    SHX5_2 = SHX1_2
    return SHX3_2(SHX4_2, SHX5_2)
  end
  SHX3_2 = SHX7_1
  SHX4_2 = SHX1_2
  SHX5_2 = "__concat"
  SHX6_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = SHX3_2
  if SHX2_2 then
    SHX3_2 = SHX2_2
    SHX4_2 = SHX1_2
    SHX5_2 = SHX0_2
    SHX6_2 = true
    return SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  end
end
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX7_1
  SHX2_2 = SHX0_2
  SHX3_2 = "__unm"
  SHX4_2 = nil
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  if SHX1_2 then
    SHX2_2 = SHX1_2
    SHX3_2 = SHX0_2
    return SHX2_2(SHX3_2)
  end
end
function SHX11_1(SHX0_2, ...)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX7_1
  SHX2_2 = SHX0_2
  SHX3_2 = "__call"
  SHX4_2 = nil
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  if SHX1_2 then
    SHX2_2 = SHX1_2
    SHX3_2 = SHX0_2
    SHX4_2 = ...
    return SHX2_2(SHX3_2, SHX4_2)
  end
end
function SHX12_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = SHX7_1
  SHX3_2 = SHX0_2
  SHX4_2 = "__add"
  SHX5_2 = SHX1_2
  SHX6_2 = true
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  if SHX2_2 then
    SHX3_2 = SHX2_2
    SHX4_2 = SHX0_2
    SHX5_2 = SHX1_2
    return SHX3_2(SHX4_2, SHX5_2)
  end
  SHX3_2 = SHX7_1
  SHX4_2 = SHX1_2
  SHX5_2 = "__add"
  SHX6_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = SHX3_2
  if SHX2_2 then
    SHX3_2 = SHX2_2
    SHX4_2 = SHX1_2
    SHX5_2 = SHX0_2
    return SHX3_2(SHX4_2, SHX5_2)
  end
end
function SHX13_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = SHX7_1
  SHX3_2 = SHX0_2
  SHX4_2 = "__sub"
  SHX5_2 = SHX1_2
  SHX6_2 = true
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  if SHX2_2 then
    SHX3_2 = SHX2_2
    SHX4_2 = SHX0_2
    SHX5_2 = SHX1_2
    return SHX3_2(SHX4_2, SHX5_2)
  end
  SHX3_2 = SHX7_1
  SHX4_2 = SHX0_2
  SHX5_2 = "__add"
  SHX6_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = SHX3_2
  if SHX2_2 then
    SHX3_2 = SHX2_2
    SHX4_2 = SHX0_2
    SHX5_2 = -SHX1_2
    return SHX3_2(SHX4_2, SHX5_2)
  end
end
function SHX14_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = SHX7_1
  SHX3_2 = SHX0_2
  SHX4_2 = "__mul"
  SHX5_2 = SHX1_2
  SHX6_2 = true
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  if SHX2_2 then
    SHX3_2 = SHX2_2
    SHX4_2 = SHX0_2
    SHX5_2 = SHX1_2
    return SHX3_2(SHX4_2, SHX5_2)
  end
  SHX3_2 = SHX7_1
  SHX4_2 = SHX1_2
  SHX5_2 = "__mul"
  SHX6_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = SHX3_2
  if SHX2_2 then
    SHX3_2 = SHX2_2
    SHX4_2 = SHX1_2
    SHX5_2 = SHX0_2
    return SHX3_2(SHX4_2, SHX5_2)
  end
end
function SHX15_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = SHX7_1
  SHX3_2 = SHX0_2
  SHX4_2 = "__div"
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  if SHX2_2 then
    SHX3_2 = SHX2_2
    SHX4_2 = SHX0_2
    SHX5_2 = SHX1_2
    return SHX3_2(SHX4_2, SHX5_2)
  end
end
function SHX16_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = SHX7_1
  SHX3_2 = SHX0_2
  SHX4_2 = "__mod"
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  if SHX2_2 then
    SHX3_2 = SHX2_2
    SHX4_2 = SHX0_2
    SHX5_2 = SHX1_2
    return SHX3_2(SHX4_2, SHX5_2)
  end
end
function SHX17_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = SHX7_1
  SHX3_2 = SHX0_2
  SHX4_2 = "__pow"
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  if SHX2_2 then
    SHX3_2 = SHX2_2
    SHX4_2 = SHX0_2
    SHX5_2 = SHX1_2
    return SHX3_2(SHX4_2, SHX5_2)
  end
end
function SHX18_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = SHX7_1
  SHX3_2 = SHX0_2
  SHX4_2 = "__eq"
  SHX5_2 = SHX1_2
  SHX6_2 = true
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  if SHX2_2 then
    SHX3_2 = SHX2_2
    SHX4_2 = SHX0_2
    SHX5_2 = SHX1_2
    return SHX3_2(SHX4_2, SHX5_2)
  end
end
function SHX19_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = SHX7_1
  SHX3_2 = SHX0_2
  SHX4_2 = "__lt"
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  if SHX2_2 then
    SHX3_2 = SHX2_2
    SHX4_2 = SHX0_2
    SHX5_2 = SHX1_2
    return SHX3_2(SHX4_2, SHX5_2)
  end
end
function SHX20_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = SHX7_1
  SHX3_2 = SHX0_2
  SHX4_2 = "__le"
  SHX5_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  if SHX2_2 then
    SHX3_2 = SHX2_2
    SHX4_2 = SHX0_2
    SHX5_2 = SHX1_2
    return SHX3_2(SHX4_2, SHX5_2)
  end
end
function SHX21_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2
  if SHX0_2 then
    SHX1_2 = SHX1_1
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    SHX2_2 = nil
    if SHX1_2 then
      SHX2_2 = SHX1_2.luaoop
    end
    if SHX2_2 then
      SHX3_2 = SHX2_2.type
      if not SHX3_2 then
        SHX3_2 = SHX2_2.build
        if not SHX3_2 then
          SHX3_2 = {}
          SHX2_2.build = SHX3_2
        end
        SHX3_2 = SHX3_1
        SHX4_2 = SHX2_2.build
        SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
        for SHX7_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
          SHX8_2 = SHX2_2.build
          SHX8_2[SHX7_2] = nil
        end
        SHX3_2 = SHX2_2.types
        if not SHX3_2 then
          SHX3_2 = {}
          SHX2_2.types = SHX3_2
        end
        SHX3_2 = SHX3_1
        SHX4_2 = SHX2_2.types
        SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
        for SHX7_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
          SHX8_2 = SHX2_2.types
          SHX8_2[SHX7_2] = nil
        end
        SHX3_2 = SHX2_2.instance_build
        if not SHX3_2 then
          SHX3_2 = {}
          SHX2_2.instance_build = SHX3_2
        end
        SHX3_2 = SHX3_1
        SHX4_2 = SHX2_2.instance_build
        SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
        for SHX7_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
          SHX8_2 = SHX2_2.instance_build
          SHX8_2[SHX7_2] = nil
        end
        SHX3_2 = ipairs
        SHX4_2 = SHX2_2.bases
        SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
        for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
          SHX9_2 = SHX1_1
          SHX10_2 = SHX8_2
          SHX9_2 = SHX9_2(SHX10_2)
          SHX9_2 = SHX9_2.luaoop
          SHX10_2 = SHX3_1
          SHX11_2 = SHX9_2.types
          SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX10_2(SHX11_2)
          for SHX14_2 in SHX10_2, SHX11_2, SHX12_2, SHX13_2 do
            SHX15_2 = SHX2_2.types
            SHX15_2[SHX14_2] = true
          end
          SHX10_2 = SHX3_1
          SHX11_2 = SHX9_2.build
          SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX10_2(SHX11_2)
          for SHX14_2, SHX15_2 in SHX10_2, SHX11_2, SHX12_2, SHX13_2 do
            SHX16_2 = type
            SHX17_2 = SHX15_2
            SHX16_2 = SHX16_2(SHX17_2)
            if "table" == SHX16_2 then
              SHX16_2 = string
              SHX16_2 = SHX16_2.sub
              SHX17_2 = SHX14_2
              SHX18_2 = 1
              SHX19_2 = 2
              SHX16_2 = SHX16_2(SHX17_2, SHX18_2, SHX19_2)
              if "__" == SHX16_2 then
                SHX16_2 = SHX2_2.build
                SHX16_2 = SHX16_2[SHX14_2]
                if not SHX16_2 then
                  SHX17_2 = {}
                  SHX16_2 = SHX17_2
                  SHX17_2 = SHX2_2.build
                  SHX17_2[SHX14_2] = SHX16_2
                end
                SHX17_2 = SHX3_1
                SHX18_2 = SHX15_2
                SHX17_2, SHX18_2, SHX19_2, SHX20_2 = SHX17_2(SHX18_2)
                for SHX21_2, SHX22_2 in SHX17_2, SHX18_2, SHX19_2, SHX20_2 do
                  SHX16_2[SHX21_2] = SHX22_2
                end
            end
            else
              SHX16_2 = SHX2_2.build
              SHX16_2[SHX14_2] = SHX15_2
            end
          end
          SHX10_2 = SHX3_1
          SHX11_2 = SHX8_2
          SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX10_2(SHX11_2)
          for SHX14_2, SHX15_2 in SHX10_2, SHX11_2, SHX12_2, SHX13_2 do
            SHX16_2 = type
            SHX17_2 = SHX15_2
            SHX16_2 = SHX16_2(SHX17_2)
            if "table" == SHX16_2 then
              SHX16_2 = string
              SHX16_2 = SHX16_2.sub
              SHX17_2 = SHX14_2
              SHX18_2 = 1
              SHX19_2 = 2
              SHX16_2 = SHX16_2(SHX17_2, SHX18_2, SHX19_2)
              if "__" == SHX16_2 then
                SHX16_2 = SHX2_2.build
                SHX16_2 = SHX16_2[SHX14_2]
                if not SHX16_2 then
                  SHX17_2 = {}
                  SHX16_2 = SHX17_2
                  SHX17_2 = SHX2_2.build
                  SHX17_2[SHX14_2] = SHX16_2
                end
                SHX17_2 = SHX3_1
                SHX18_2 = SHX15_2
                SHX17_2, SHX18_2, SHX19_2, SHX20_2 = SHX17_2(SHX18_2)
                for SHX21_2, SHX22_2 in SHX17_2, SHX18_2, SHX19_2, SHX20_2 do
                  SHX16_2[SHX21_2] = SHX22_2
                end
            end
            else
              SHX16_2 = SHX2_2.build
              SHX16_2[SHX14_2] = SHX15_2
            end
          end
        end
        SHX3_2 = SHX2_2.types
        SHX3_2[SHX0_2] = true
        SHX3_2 = SHX2_2.__postbuild
        if SHX3_2 then
          SHX3_2 = SHX2_2.__postbuild
          SHX4_2 = SHX0_2
          SHX5_2 = SHX2_2.build
          SHX3_2(SHX4_2, SHX5_2)
        end
        SHX3_2 = SHX3_1
        SHX4_2 = SHX2_2.build
        SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
        for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
          SHX9_2 = string
          SHX9_2 = SHX9_2.sub
          SHX10_2 = SHX7_2
          SHX11_2 = 1
          SHX12_2 = 2
          SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
          if "__" ~= SHX9_2 then
            SHX9_2 = SHX2_2.instance_build
            SHX9_2[SHX7_2] = SHX8_2
          end
        end
        SHX3_2 = SHX3_1
        SHX4_2 = SHX0_2
        SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
        for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
          SHX9_2 = string
          SHX9_2 = SHX9_2.sub
          SHX10_2 = SHX7_2
          SHX11_2 = 1
          SHX12_2 = 2
          SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
          if "__" ~= SHX9_2 then
            SHX9_2 = SHX2_2.instance_build
            SHX9_2[SHX7_2] = SHX8_2
          end
        end
        SHX3_2 = SHX2_2.meta
        if not SHX3_2 then
          SHX3_2 = {}
          SHX4_2 = SHX2_2.instance_build
          SHX3_2.__index = SHX4_2
          SHX4_2 = {}
          SHX5_2 = SHX2_2.name
          SHX4_2.name = SHX5_2
          SHX5_2 = SHX2_2.types
          SHX4_2.types = SHX5_2
          SHX4_2.type = SHX0_2
          SHX3_2.luaoop = SHX4_2
          SHX4_2 = SHX11_1
          SHX3_2.__call = SHX4_2
          SHX4_2 = SHX10_1
          SHX3_2.__unm = SHX4_2
          SHX4_2 = SHX12_1
          SHX3_2.__add = SHX4_2
          SHX4_2 = SHX13_1
          SHX3_2.__sub = SHX4_2
          SHX4_2 = SHX14_1
          SHX3_2.__mul = SHX4_2
          SHX4_2 = SHX15_1
          SHX3_2.__div = SHX4_2
          SHX4_2 = SHX17_1
          SHX3_2.__pow = SHX4_2
          SHX4_2 = SHX16_1
          SHX3_2.__mod = SHX4_2
          SHX4_2 = SHX18_1
          SHX3_2.__eq = SHX4_2
          SHX4_2 = SHX20_1
          SHX3_2.__le = SHX4_2
          SHX4_2 = SHX19_1
          SHX3_2.__lt = SHX4_2
          SHX4_2 = SHX8_1
          SHX3_2.__tostring = SHX4_2
          SHX4_2 = SHX9_1
          SHX3_2.__concat = SHX4_2
          SHX2_2.meta = SHX3_2
          SHX3_2 = SHX2_2.__postmeta
          if SHX3_2 then
            SHX3_2 = SHX2_2.__postmeta
            SHX4_2 = SHX0_2
            SHX5_2 = SHX2_2.meta
            SHX3_2(SHX4_2, SHX5_2)
          end
        end
        SHX3_2 = SHX2_2.build
        SHX1_2.__index = SHX3_2
        SHX3_2 = SHX3_1
        SHX4_2 = SHX0_2
        SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
        for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
          SHX9_2 = type
          SHX10_2 = SHX8_2
          SHX9_2 = SHX9_2(SHX10_2)
          if "table" == SHX9_2 then
            SHX9_2 = string
            SHX9_2 = SHX9_2.sub
            SHX10_2 = SHX7_2
            SHX11_2 = 1
            SHX12_2 = 2
            SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
            if "__" == SHX9_2 then
              SHX9_2 = SHX2_1
              SHX10_2 = SHX8_2
              SHX11_2 = {}
              SHX12_2 = SHX2_2.build
              SHX12_2 = SHX12_2[SHX7_2]
              SHX11_2.__index = SHX12_2
              SHX9_2(SHX10_2, SHX11_2)
            end
          end
        end
      end
    end
  end
end
function SHX22_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX1_1
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX1_2.destructor
  SHX3_2 = SHX1_2.instance
  SHX2_2(SHX3_2)
end
function SHX23_1(SHX0_2, ...)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX1_2 = SHX1_1
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = nil
  if SHX1_2 then
    SHX2_2 = SHX1_2.luaoop
  end
  if SHX2_2 then
    SHX3_2 = SHX2_2.type
    if not SHX3_2 then
      SHX3_2 = SHX2_2.build
      if not SHX3_2 then
        SHX3_2 = SHX21_1
        SHX4_2 = SHX0_2
        SHX3_2(SHX4_2)
      end
      SHX3_2 = SHX2_2.__instantiate
      if SHX3_2 then
        SHX4_2 = SHX3_2
        SHX5_2 = SHX0_2
        SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = ...
        return SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      else
        SHX4_2 = SHX2_1
        SHX5_2 = {}
        SHX6_2 = SHX2_2.meta
        SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
        SHX5_2 = SHX0_2.__construct
        SHX6_2 = SHX0_2.__destruct
        if SHX6_2 then
          SHX7_2 = SHX4_1
          SHX8_2 = SHX2_2.meta
          SHX9_2 = SHX4_2
          SHX7_2, SHX8_2 = SHX7_2(SHX8_2, SHX9_2)
          SHX9_2 = SHX0_1
          if SHX9_2 then
            SHX9_2 = newproxy
            SHX10_2 = true
            SHX9_2 = SHX9_2(SHX10_2)
            SHX10_2 = SHX1_1
            SHX11_2 = SHX9_2
            SHX10_2 = SHX10_2(SHX11_2)
            SHX11_2 = SHX22_1
            SHX10_2.__gc = SHX11_2
            SHX10_2.destructor = SHX6_2
            SHX10_2.instance = SHX4_2
            SHX8_2.proxy = SHX9_2
          else
            SHX9_2 = SHX2_1
            SHX10_2 = {}
            SHX11_2 = {}
            SHX12_2 = SHX22_1
            SHX11_2.__gc = SHX12_2
            SHX11_2.instance = SHX4_2
            SHX11_2.destructor = SHX6_2
            SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
            SHX8_2.proxy = SHX9_2
          end
        end
        if SHX5_2 then
          SHX7_2 = SHX5_2
          SHX8_2 = SHX4_2
          SHX9_2, SHX10_2, SHX11_2, SHX12_2 = ...
          SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
        end
        return SHX4_2
      end
    end
  end
end
function SHX24_1(SHX0_2, ...)
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
  if "string" == SHX1_2 then
    SHX1_2 = {}
    SHX2_2 = {}
    SHX1_2.__add = SHX2_2
    SHX2_2 = {}
    SHX1_2.__sub = SHX2_2
    SHX2_2 = {}
    SHX1_2.__mul = SHX2_2
    SHX2_2 = {}
    SHX1_2.__div = SHX2_2
    SHX2_2 = {}
    SHX1_2.__pow = SHX2_2
    SHX2_2 = {}
    SHX1_2.__mod = SHX2_2
    SHX2_2 = {}
    SHX1_2.__eq = SHX2_2
    SHX2_2 = {}
    SHX1_2.__le = SHX2_2
    SHX2_2 = {}
    SHX1_2.__lt = SHX2_2
    SHX2_2 = {}
    SHX1_2.__concat = SHX2_2
    SHX2_2 = {}
    SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = ...
    SHX2_2[1] = SHX3_2
    SHX2_2[2] = SHX4_2
    SHX2_2[3] = SHX5_2
    SHX2_2[4] = SHX6_2
    SHX2_2[5] = SHX7_2
    SHX2_2[6] = SHX8_2
    SHX2_2[7] = SHX9_2
    SHX2_2[8] = SHX10_2
    SHX2_2[9] = SHX11_2
    SHX2_2[10] = SHX12_2
    SHX2_2[11] = SHX13_2
    SHX3_2 = SHX3_1
    SHX4_2 = SHX2_2
    SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
    for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
      SHX9_2 = SHX1_1
      SHX10_2 = SHX8_2
      SHX9_2 = SHX9_2(SHX10_2)
      SHX10_2 = nil
      if SHX9_2 then
        SHX10_2 = SHX9_2.luaoop
      end
      if SHX10_2 then
        SHX11_2 = SHX10_2.type
        if not SHX11_2 then
          goto SHX_LABEL_64
        end
      end
      SHX11_2 = error
      SHX12_2 = "invalid base class #"
      SHX13_2 = SHX7_2
      SHX12_2 = SHX12_2 .. SHX13_2
      SHX11_2(SHX12_2)
      -- [FIX IF ERROR] Move ::SHX_LABEL_64:: outside nested blocks until all 'goto SHX_LABEL_64' can see it
      ::SHX_LABEL_64::
      SHX11_2 = SHX10_2.build
      if not SHX11_2 then
        SHX11_2 = SHX21_1
        SHX12_2 = SHX8_2
        SHX11_2(SHX12_2)
      end
    end
    SHX3_2 = string
    SHX3_2 = SHX3_2.gsub
    SHX4_2 = tostring
    SHX5_2 = SHX1_2
    SHX4_2 = SHX4_2(SHX5_2)
    SHX5_2 = "table:"
    SHX6_2 = "class<"
    SHX7_2 = SHX0_2
    SHX8_2 = ">:"
    SHX6_2 = SHX6_2 .. SHX7_2 .. SHX8_2
    SHX7_2 = 1
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
    SHX4_2 = SHX2_1
    SHX5_2 = SHX1_2
    SHX6_2 = {}
    SHX7_2 = {}
    SHX7_2.bases = SHX2_2
    SHX7_2.name = SHX0_2
    SHX6_2.luaoop = SHX7_2
    SHX7_2 = SHX23_1
    SHX6_2.__call = SHX7_2
    function SHX7_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3
      SHX1_3 = SHX3_2
      return SHX1_3
    end
    SHX6_2.__tostring = SHX7_2
    return SHX4_2(SHX5_2, SHX6_2)
  else
    SHX1_2 = error
    SHX2_2 = "class name is not a string"
    SHX1_2(SHX2_2)
  end
end
function SHX25_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  if SHX0_2 then
    SHX2_2 = SHX1_1
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    SHX3_2 = nil
    if SHX2_2 then
      SHX3_2 = SHX2_2.luaoop
    end
    if SHX3_2 then
      SHX4_2 = SHX3_2.type
      if not SHX4_2 then
        SHX4_2 = SHX3_2.types
        if not SHX4_2 then
          SHX4_2 = SHX21_1
          SHX5_2 = SHX0_2
          SHX4_2(SHX5_2)
        end
      end
      SHX4_2 = SHX3_2.types
      SHX4_2 = SHX4_2[SHX1_2]
      return SHX4_2
    end
  end
end
function SHX26_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  if SHX0_2 then
    SHX1_2 = SHX1_1
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    SHX2_2 = nil
    if SHX1_2 then
      SHX2_2 = SHX1_2.luaoop
    end
    if SHX2_2 then
      SHX3_2 = SHX2_2.types
      if not SHX3_2 then
        SHX3_2 = SHX2_2.type
        if not SHX3_2 then
          SHX3_2 = SHX21_1
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
      end
      SHX3_2 = {}
      SHX4_2 = SHX3_1
      SHX5_2 = SHX2_2.types
      SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
      for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
        SHX3_2[SHX8_2] = SHX9_2
      end
      return SHX3_2
    end
  end
end
function SHX27_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  if SHX0_2 then
    SHX1_2 = SHX1_1
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    SHX2_2 = nil
    if SHX1_2 then
      SHX2_2 = SHX1_2.luaoop
    end
    if SHX2_2 then
      SHX3_2 = SHX2_2.type
      if not SHX3_2 then
        SHX3_2 = SHX2_2.build
        if not SHX3_2 then
          SHX3_2 = SHX21_1
          SHX4_2 = SHX0_2
          SHX3_2(SHX4_2)
        end
        SHX3_2 = SHX2_2.meta
        return SHX3_2
      end
    end
  end
end
SHX28_1 = SHX2_1
SHX29_1 = {}
SHX29_1.new = SHX24_1
SHX29_1.name = SHX6_1
SHX29_1.type = SHX5_1
SHX29_1.is = SHX25_1
SHX29_1.types = SHX26_1
SHX29_1.meta = SHX27_1
SHX29_1.instantiate = SHX23_1
SHX29_1.build = SHX21_1
SHX29_1.getop = SHX7_1
SHX30_1 = {}
function SHX31_1(SHX0_2, SHX1_2, ...)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = SHX24_1
  SHX3_2 = SHX1_2
  SHX4_2 = ...
  return SHX2_2(SHX3_2, SHX4_2)
end
SHX30_1.__call = SHX31_1
SHX28_1 = SHX28_1(SHX29_1, SHX30_1)
class = SHX28_1
SHX28_1 = Luaoop
SHX29_1 = class
SHX28_1.class = SHX29_1
