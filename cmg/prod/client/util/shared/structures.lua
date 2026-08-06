-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1
SHX0_1 = CMG
function SHX1_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX2_2 = {}
  SHX3_2 = {}
  SHX2_2.data = SHX3_2
  SHX3_2 = 1
  SHX4_2 = SHX0_2
  SHX5_2 = 1
  for SHX6_2 = SHX3_2, SHX4_2, SHX5_2 do
    SHX7_2 = type
    SHX8_2 = SHX1_2
    SHX7_2 = SHX7_2(SHX8_2)
    if "table" == SHX7_2 then
      SHX7_2 = table
      SHX7_2 = SHX7_2.insert
      SHX8_2 = SHX2_2.data
      SHX9_2 = table
      SHX9_2 = SHX9_2.copy
      SHX10_2 = SHX1_2
      SHX9_2, SHX10_2 = SHX9_2(SHX10_2)
      SHX7_2(SHX8_2, SHX9_2, SHX10_2)
    else
      SHX7_2 = table
      SHX7_2 = SHX7_2.insert
      SHX8_2 = SHX2_2.data
      SHX9_2 = 0
      SHX7_2(SHX8_2, SHX9_2)
    end
  end
  SHX2_2.head = 1
  function SHX3_2(...)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
    SHX0_3 = {}
    SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3 = ...
    SHX0_3[1] = SHX1_3
    SHX0_3[2] = SHX2_3
    SHX0_3[3] = SHX3_3
    SHX0_3[4] = SHX4_3
    SHX0_3[5] = SHX5_3
    SHX0_3[6] = SHX6_3
    SHX0_3[7] = SHX7_3
    SHX0_3[8] = SHX8_3
    SHX1_3 = #SHX0_3
    if 1 == SHX1_3 then
      SHX1_3 = type
      SHX2_3 = SHX0_3[1]
      SHX1_3 = SHX1_3(SHX2_3)
      if "table" ~= SHX1_3 then
        SHX1_3 = SHX2_2.data
        SHX2_3 = SHX2_2.head
        SHX3_3 = SHX0_3[1]
        SHX1_3[SHX2_3] = SHX3_3
    end
    else
      SHX1_3 = assert
      SHX2_3 = #SHX0_3
      SHX3_3 = SHX1_2
      SHX3_3 = #SHX3_3
      SHX2_3 = SHX2_3 == SHX3_3
      SHX1_3(SHX2_3)
      SHX1_3 = SHX2_2.data
      SHX2_3 = SHX2_2.head
      SHX1_3 = SHX1_3[SHX2_3]
      SHX2_3 = pairs
      SHX3_3 = SHX0_3
      SHX2_3, SHX3_3, SHX4_3, SHX5_3 = SHX2_3(SHX3_3)
      for SHX6_3, SHX7_3 in SHX2_3, SHX3_3, SHX4_3, SHX5_3 do
        SHX1_3[SHX6_3] = SHX7_3
      end
    end
    SHX1_3 = SHX2_2.head
    SHX1_3 = SHX1_3 + 1
    SHX2_2.head = SHX1_3
    SHX1_3 = SHX2_2.head
    SHX2_3 = SHX0_2
    if SHX1_3 > SHX2_3 then
      SHX2_2.head = 1
    end
  end
  SHX2_2.put = SHX3_2
  function SHX3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = SHX2_2.head
    SHX0_3 = SHX0_3 - 1
    if 0 == SHX0_3 then
      SHX0_3 = SHX0_2
    end
    SHX1_3 = SHX2_2.data
    SHX1_3 = SHX1_3[SHX0_3]
    return SHX1_3
  end
  SHX2_2.get = SHX3_2
  function SHX3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3
    SHX0_3 = 0
    SHX1_3 = SHX2_2.head
    function SHX2_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4, SHX2_4
      SHX0_4 = SHX1_3
      SHX0_4 = SHX0_4 - 1
      SHX1_3 = SHX0_4
      SHX0_4 = SHX1_3
      if 0 == SHX0_4 then
        SHX0_4 = SHX0_2
        SHX1_3 = SHX0_4
      end
      SHX0_4 = SHX0_3
      SHX0_4 = SHX0_4 + 1
      SHX0_3 = SHX0_4
      SHX0_4 = SHX0_3
      SHX1_4 = SHX0_2
      if SHX0_4 <= SHX1_4 then
        SHX0_4 = SHX0_3
        SHX1_4 = SHX2_2.data
        SHX2_4 = SHX1_3
        SHX1_4 = SHX1_4[SHX2_4]
        return SHX0_4, SHX1_4
      else
        SHX0_4 = nil
        return SHX0_4
      end
    end
    return SHX2_3
  end
  SHX2_2.iterator = SHX3_2
  return SHX2_2
end
SHX0_1.createCircularBuffer = SHX1_1
