-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_forcedequipment"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = CMG
function SHX2_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX3_2 = SHX0_1.types
  SHX3_2 = SHX3_2[SHX0_2]
  if not SHX3_2 then
    SHX3_2 = SHX0_1.types
    SHX4_2 = string
    SHX4_2 = SHX4_2.lower
    SHX5_2 = SHX0_2
    SHX4_2 = SHX4_2(SHX5_2)
    SHX3_2 = SHX3_2[SHX4_2]
  end
  if SHX3_2 then
    SHX4_2 = SHX3_2.label
    if SHX4_2 then
      goto SHX_LABEL_17
    end
  end
  SHX4_2 = SHX0_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_17:: outside nested blocks until all 'goto SHX_LABEL_17' can see it
  ::SHX_LABEL_17::
  SHX5_2 = nil
  if nil ~= SHX1_2 then
    SHX6_2 = math
    SHX6_2 = SHX6_2.max
    SHX7_2 = 0
    SHX8_2 = SHX1_2
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
    SHX5_2 = SHX6_2
  else
    SHX5_2 = SHX3_2.defaultDurationSeconds
  end
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.addHudDurationTimer
  SHX7_2 = SHX0_2
  SHX8_2 = SHX4_2
  SHX9_2 = SHX5_2
  SHX10_2 = SHX2_2
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
end
SHX1_1.addForcedEquipment = SHX2_1
SHX1_1 = CMG
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.removeHudTimer
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
SHX1_1.removeForcedEquipment = SHX2_1
SHX1_1 = CMG
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.isHudTimerActive
  SHX2_2 = SHX0_2
  return SHX1_2(SHX2_2)
end
SHX1_1.isForcedEquipment = SHX2_1
SHX1_1 = CMG
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getHudTimerRemainingSeconds
  SHX2_2 = SHX0_2
  return SHX1_2(SHX2_2)
end
SHX1_1.getForcedEquipmentRemaining = SHX2_1
