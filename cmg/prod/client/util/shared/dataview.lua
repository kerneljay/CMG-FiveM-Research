-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1
SHX0_1 = setmetatable
SHX1_1 = {}
SHX1_1.EndBig = ">"
SHX1_1.EndLittle = "<"
SHX2_1 = {}
SHX3_1 = {}
SHX3_1.code = "i1"
SHX2_1.Int8 = SHX3_1
SHX3_1 = {}
SHX3_1.code = "I1"
SHX2_1.Uint8 = SHX3_1
SHX3_1 = {}
SHX3_1.code = "i2"
SHX2_1.Int16 = SHX3_1
SHX3_1 = {}
SHX3_1.code = "I2"
SHX2_1.Uint16 = SHX3_1
SHX3_1 = {}
SHX3_1.code = "i4"
SHX2_1.Int32 = SHX3_1
SHX3_1 = {}
SHX3_1.code = "I4"
SHX2_1.Uint32 = SHX3_1
SHX3_1 = {}
SHX3_1.code = "i8"
SHX2_1.Int64 = SHX3_1
SHX3_1 = {}
SHX3_1.code = "I8"
SHX2_1.Uint64 = SHX3_1
SHX3_1 = {}
SHX3_1.code = "f"
SHX3_1.size = 4
SHX2_1.Float32 = SHX3_1
SHX3_1 = {}
SHX3_1.code = "d"
SHX3_1.size = 8
SHX2_1.Float64 = SHX3_1
SHX3_1 = {}
SHX3_1.code = "j"
SHX2_1.LuaInt = SHX3_1
SHX3_1 = {}
SHX3_1.code = "J"
SHX2_1.UluaInt = SHX3_1
SHX3_1 = {}
SHX3_1.code = "n"
SHX2_1.LuaNum = SHX3_1
SHX3_1 = {}
SHX3_1.code = "z"
SHX3_1.size = -1
SHX2_1.String = SHX3_1
SHX1_1.Types = SHX2_1
SHX2_1 = {}
SHX3_1 = {}
SHX3_1.code = "c"
SHX2_1.String = SHX3_1
SHX3_1 = {}
SHX3_1.code = "i"
SHX2_1.Int = SHX3_1
SHX3_1 = {}
SHX3_1.code = "I"
SHX2_1.Uint = SHX3_1
SHX1_1.FixedTypes = SHX2_1
SHX2_1 = {}
function SHX3_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = DataView
  SHX2_2 = SHX2_2.ArrayBuffer
  SHX3_2 = SHX1_2
  return SHX2_2(SHX3_2)
end
SHX2_1.__call = SHX3_1
SHX0_1 = SHX0_1(SHX1_1, SHX2_1)
DataView = SHX0_1
SHX0_1 = DataView
SHX1_1 = DataView
SHX0_1.__index = SHX1_1
SHX0_1 = DataView
function SHX1_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = setmetatable
  SHX2_2 = {}
  SHX3_2 = string
  SHX3_2 = SHX3_2.blob
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX2_2.blob = SHX3_2
  SHX2_2.length = SHX0_2
  SHX2_2.offset = 1
  SHX2_2.cangrow = true
  SHX3_2 = DataView
  return SHX1_2(SHX2_2, SHX3_2)
end
SHX0_1.ArrayBuffer = SHX1_1
SHX0_1 = DataView
function SHX1_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = setmetatable
  SHX2_2 = {}
  SHX2_2.blob = SHX0_2
  SHX4_2 = SHX0_2
  SHX3_2 = SHX0_2.len
  SHX3_2 = SHX3_2(SHX4_2)
  SHX2_2.length = SHX3_2
  SHX2_2.offset = 1
  SHX2_2.cangrow = true
  SHX3_2 = DataView
  return SHX1_2(SHX2_2, SHX3_2)
end
SHX0_1.Wrap = SHX1_1
SHX0_1 = DataView
function SHX1_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX0_2.blob
  return SHX1_2
end
SHX0_1.Buffer = SHX1_1
SHX0_1 = DataView
function SHX1_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX0_2.length
  return SHX1_2
end
SHX0_1.ByteLength = SHX1_1
SHX0_1 = DataView
function SHX1_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX0_2.offset
  return SHX1_2
end
SHX0_1.ByteOffset = SHX1_1
SHX0_1 = DataView
function SHX1_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2
  SHX3_2 = setmetatable
  SHX4_2 = {}
  SHX5_2 = SHX0_2.blob
  SHX4_2.blob = SHX5_2
  SHX5_2 = SHX2_2 or SHX5_2
  if not SHX2_2 then
    SHX5_2 = SHX0_2.length
  end
  SHX4_2.length = SHX5_2
  SHX5_2 = 1 + SHX1_2
  SHX4_2.offset = SHX5_2
  SHX4_2.cangrow = false
  SHX5_2 = DataView
  return SHX3_2(SHX4_2, SHX5_2)
end
SHX0_1.SubView = SHX1_1
function SHX0_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  if SHX0_2 then
    SHX1_2 = DataView
    SHX1_2 = SHX1_2.EndBig
    if SHX1_2 then
      goto SHX_LABEL_9
    end
  end
  SHX1_2 = DataView
  SHX1_2 = SHX1_2.EndLittle
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  return SHX1_2
end
function SHX1_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX4_2 = SHX0_2.blob
  SHX5_2 = SHX4_2
  SHX4_2 = SHX4_2.blob_pack
  SHX6_2 = SHX1_2
  SHX7_2 = SHX3_2
  SHX8_2 = SHX2_2
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = SHX0_2.cangrow
  if not SHX5_2 then
    SHX5_2 = SHX0_2.blob
    if SHX4_2 ~= SHX5_2 then
      goto SHX_LABEL_20
    end
  end
  SHX0_2.blob = SHX4_2
  SHX6_2 = SHX4_2
  SHX5_2 = SHX4_2.len
  SHX5_2 = SHX5_2(SHX6_2)
  SHX0_2.length = SHX5_2
  SHX5_2 = true
  return SHX5_2
  goto SHX_LABEL_22
  -- [FIX IF ERROR] Move ::SHX_LABEL_20:: outside nested blocks until all 'goto SHX_LABEL_20' can see it
  ::SHX_LABEL_20::
  SHX5_2 = false
  return SHX5_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_22:: outside nested blocks until all 'goto SHX_LABEL_22' can see it
  ::SHX_LABEL_22::
end
SHX2_1 = pairs
SHX3_1 = DataView
SHX3_1 = SHX3_1.Types
SHX2_1, SHX3_1, SHX4_1, SHX5_1 = SHX2_1(SHX3_1)
for SHX6_1, SHX7_1 in SHX2_1, SHX3_1, SHX4_1, SHX5_1 do
  SHX8_1 = SHX7_1.size
  if not SHX8_1 then
    SHX8_1 = string
    SHX8_1 = SHX8_1.packsize
    SHX9_1 = SHX7_1.code
    SHX8_1 = SHX8_1(SHX9_1)
    SHX7_1.size = SHX8_1
  else
    SHX8_1 = SHX7_1.size
    if SHX8_1 >= 0 then
      SHX8_1 = string
      SHX8_1 = SHX8_1.packsize
      SHX9_1 = SHX7_1.code
      SHX8_1 = SHX8_1(SHX9_1)
      SHX9_1 = SHX7_1.size
      if SHX8_1 ~= SHX9_1 then
        SHX8_1 = "Pack size of %s (%d) does not match cached length: (%d)"
        SHX9_1 = error
        SHX11_1 = SHX8_1
        SHX10_1 = SHX8_1.format
        SHX12_1 = SHX6_1
        SHX13_1 = string
        SHX13_1 = SHX13_1.packsize
        SHX14_1 = SHX7_1.code
        SHX13_1 = SHX13_1(SHX14_1)
        SHX14_1 = SHX7_1.size
        SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1 = SHX10_1(SHX11_1, SHX12_1, SHX13_1, SHX14_1)
        SHX9_1(SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1)
        SHX9_1 = nil
        return SHX9_1
      end
    end
  end
  SHX8_1 = DataView
  SHX9_1 = "Get"
  SHX10_1 = SHX6_1
  SHX9_1 = SHX9_1 .. SHX10_1
  function SHX10_1(SHX0_2, SHX1_2, SHX2_2)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
    if not SHX1_2 then
      SHX1_2 = 0
    end
    if SHX1_2 >= 0 then
      SHX3_2 = SHX0_2.offset
      SHX3_2 = SHX3_2 + SHX1_2
      SHX4_2 = SHX0_2.blob
      SHX5_2 = SHX4_2
      SHX4_2 = SHX4_2.blob_unpack
      SHX6_2 = SHX3_2
      SHX7_2 = SHX0_1
      SHX8_2 = SHX2_2
      SHX7_2 = SHX7_2(SHX8_2)
      SHX8_2 = SHX7_1.code
      SHX7_2 = SHX7_2 .. SHX8_2
      SHX4_2, SHX5_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
      return SHX4_2
    end
    SHX3_2 = nil
    return SHX3_2
  end
  SHX8_1[SHX9_1] = SHX10_1
  SHX8_1 = DataView
  SHX9_1 = "Set"
  SHX10_1 = SHX6_1
  SHX9_1 = SHX9_1 .. SHX10_1
  function SHX10_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
    if SHX1_2 >= 0 and SHX2_2 then
      SHX4_2 = SHX0_2.offset
      SHX4_2 = SHX4_2 + SHX1_2
      SHX5_2 = SHX7_1.size
      if SHX5_2 < 0 then
        SHX6_2 = SHX2_2
        SHX5_2 = SHX2_2.len
        SHX5_2 = SHX5_2(SHX6_2)
        if SHX5_2 then
          goto SHX_LABEL_16
        end
      end
      SHX5_2 = SHX7_1.size
      -- [FIX IF ERROR] Move ::SHX_LABEL_16:: outside nested blocks until all 'goto SHX_LABEL_16' can see it
      ::SHX_LABEL_16::
      SHX6_2 = SHX0_2.cangrow
      if not SHX6_2 then
        SHX6_2 = SHX5_2 - 1
        SHX6_2 = SHX4_2 + SHX6_2
        SHX7_2 = SHX0_2.length
        if not (SHX6_2 <= SHX7_2) then
          goto SHX_LABEL_42
        end
      end
      SHX6_2 = SHX1_1
      SHX7_2 = SHX0_2
      SHX8_2 = SHX4_2
      SHX9_2 = SHX2_2
      SHX10_2 = SHX0_1
      SHX11_2 = SHX3_2
      SHX10_2 = SHX10_2(SHX11_2)
      SHX11_2 = SHX7_1.code
      SHX10_2 = SHX10_2 .. SHX11_2
      SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
      if not SHX6_2 then
        SHX6_2 = error
        SHX7_2 = "cannot grow subview"
        SHX6_2(SHX7_2)
        goto SHX_LABEL_45
        -- [FIX IF ERROR] Move ::SHX_LABEL_42:: outside nested blocks until all 'goto SHX_LABEL_42' can see it
        ::SHX_LABEL_42::
        SHX6_2 = error
        SHX7_2 = "cannot grow dataview"
        SHX6_2(SHX7_2)
      end
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_45:: outside nested blocks until all 'goto SHX_LABEL_45' can see it
    ::SHX_LABEL_45::
    return SHX0_2
  end
  SHX8_1[SHX9_1] = SHX10_1
end
SHX2_1 = pairs
SHX3_1 = DataView
SHX3_1 = SHX3_1.FixedTypes
SHX2_1, SHX3_1, SHX4_1, SHX5_1 = SHX2_1(SHX3_1)
for SHX6_1, SHX7_1 in SHX2_1, SHX3_1, SHX4_1, SHX5_1 do
  SHX7_1.size = -1
  SHX8_1 = DataView
  SHX9_1 = "GetFixed"
  SHX10_1 = SHX6_1
  SHX9_1 = SHX9_1 .. SHX10_1
  function SHX10_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
    if SHX1_2 >= 0 then
      SHX4_2 = SHX0_2.offset
      SHX4_2 = SHX4_2 + SHX1_2
      SHX5_2 = SHX2_2 - 1
      SHX5_2 = SHX4_2 + SHX5_2
      SHX6_2 = SHX0_2.length
      if SHX5_2 <= SHX6_2 then
        SHX5_2 = SHX0_1
        SHX6_2 = SHX3_2
        SHX5_2 = SHX5_2(SHX6_2)
        SHX6_2 = "c"
        SHX7_2 = tostring
        SHX8_2 = SHX2_2
        SHX7_2 = SHX7_2(SHX8_2)
        SHX5_2 = SHX5_2 .. SHX6_2 .. SHX7_2
        SHX6_2 = SHX0_2.blob
        SHX7_2 = SHX6_2
        SHX6_2 = SHX6_2.blob_unpack
        SHX8_2 = SHX4_2
        SHX9_2 = SHX5_2
        SHX6_2, SHX7_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
        return SHX6_2
      end
    end
    SHX4_2 = nil
    return SHX4_2
  end
  SHX8_1[SHX9_1] = SHX10_1
  SHX8_1 = DataView
  SHX9_1 = "SetFixed"
  SHX10_1 = SHX6_1
  SHX9_1 = SHX9_1 .. SHX10_1
  function SHX10_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
    if SHX1_2 >= 0 and SHX3_2 then
      SHX5_2 = SHX0_2.offset
      SHX5_2 = SHX5_2 + SHX1_2
      SHX6_2 = SHX0_2.cangrow
      if not SHX6_2 then
        SHX6_2 = SHX2_2 - 1
        SHX6_2 = SHX5_2 + SHX6_2
        SHX7_2 = SHX0_2.length
        if not (SHX6_2 <= SHX7_2) then
          goto SHX_LABEL_38
        end
      end
      SHX6_2 = SHX0_1
      SHX7_2 = SHX4_2
      SHX6_2 = SHX6_2(SHX7_2)
      SHX7_2 = "c"
      SHX8_2 = tostring
      SHX9_2 = SHX2_2
      SHX8_2 = SHX8_2(SHX9_2)
      SHX6_2 = SHX6_2 .. SHX7_2 .. SHX8_2
      SHX7_2 = SHX1_1
      SHX8_2 = SHX0_2
      SHX9_2 = SHX5_2
      SHX10_2 = SHX3_2
      SHX11_2 = SHX6_2
      SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
      if not SHX7_2 then
        SHX7_2 = error
        SHX8_2 = "cannot grow subview"
        SHX7_2(SHX8_2)
        goto SHX_LABEL_41
        -- [FIX IF ERROR] Move ::SHX_LABEL_38:: outside nested blocks until all 'goto SHX_LABEL_38' can see it
        ::SHX_LABEL_38::
        SHX6_2 = error
        SHX7_2 = "cannot grow dataview"
        SHX6_2(SHX7_2)
      end
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_41:: outside nested blocks until all 'goto SHX_LABEL_41' can see it
    ::SHX_LABEL_41::
    return SHX0_2
  end
  SHX8_1[SHX9_1] = SHX10_1
end
