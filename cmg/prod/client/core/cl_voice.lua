-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1
SHX0_1 = AddStateBagChangeHandler
SHX1_1 = "isMuted"
SHX2_1 = nil
function SHX3_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX3_2 = GetResourceState
  SHX4_2 = "pma-voice"
  SHX3_2 = SHX3_2(SHX4_2)
  if "started" == SHX3_2 then
    SHX3_2 = tonumber
    SHX4_2 = stringsplit
    SHX5_2 = SHX0_2
    SHX6_2 = ":"
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
    SHX4_2 = SHX4_2[2]
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX2_2 then
      SHX4_2 = exports
      SHX4_2 = SHX4_2["pma-voice"]
      SHX5_2 = SHX4_2
      SHX4_2 = SHX4_2.mutePlayer
      SHX6_2 = SHX3_2
      SHX7_2 = true
      SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    else
      SHX4_2 = exports
      SHX4_2 = SHX4_2["pma-voice"]
      SHX5_2 = SHX4_2
      SHX4_2 = SHX4_2.mutePlayer
      SHX6_2 = SHX3_2
      SHX7_2 = false
      SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    end
  end
end
SHX0_1(SHX1_1, SHX2_1, SHX3_1)
SHX0_1 = RegisterNetEvent
SHX1_1 = "onPlayerDropped"
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = GetResourceState
  SHX2_2 = "pma-voice"
  SHX1_2 = SHX1_2(SHX2_2)
  if "started" == SHX1_2 then
    SHX1_2 = exports
    SHX1_2 = SHX1_2["pma-voice"]
    SHX2_2 = SHX1_2
    SHX1_2 = SHX1_2.mutePlayer
    SHX3_2 = SHX0_2
    SHX4_2 = false
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  end
end
SHX0_1(SHX1_1, SHX2_1)
