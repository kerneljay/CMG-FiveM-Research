-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_jobs"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = {}
SHX2_1 = {}
SHX3_1 = CMG
function SHX4_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX1_1
  SHX1_2 = SHX1_2[SHX0_2]
  if not SHX1_2 then
    SHX1_2 = false
  end
  return SHX1_2
end
SHX3_1.hasClientGroup = SHX4_1
SHX3_1 = CMG
function SHX4_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX2_1
  SHX1_2 = SHX1_2[SHX0_2]
  if not SHX1_2 then
    SHX1_2 = false
  end
  return SHX1_2
end
SHX3_1.hasClientPermission = SHX4_1
SHX3_1 = RegisterNetEvent
SHX4_1 = "db10f68228"
function SHX5_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX1_1 = SHX0_2
  SHX2_1 = SHX1_2
  SHX2_2 = TriggerEvent
  SHX3_2 = "b51e08118b"
  SHX2_2(SHX3_2)
end
SHX3_1(SHX4_1, SHX5_1)
SHX3_1 = RegisterNetEvent
SHX4_1 = "003eadf2da"
function SHX5_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX1_1
  SHX1_2[SHX0_2] = true
end
SHX3_1(SHX4_1, SHX5_1)
SHX3_1 = RegisterNetEvent
SHX4_1 = "f1dae6cf3d"
function SHX5_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX1_1
  SHX1_2[SHX0_2] = nil
end
SHX3_1(SHX4_1, SHX5_1)
SHX3_1 = RegisterNetEvent
SHX4_1 = "9b5a446f85"
function SHX5_1(SHX0_2)
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
    SHX7_2 = SHX2_1
    SHX7_2[SHX6_2] = true
  end
  SHX1_2 = TriggerEvent
  SHX2_2 = "b51e08118b"
  SHX1_2(SHX2_2)
end
SHX3_1(SHX4_1, SHX5_1)
SHX3_1 = RegisterNetEvent
SHX4_1 = "989c4097ae"
function SHX5_1(SHX0_2)
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
    SHX7_2 = SHX2_1
    SHX7_2[SHX6_2] = nil
  end
  SHX1_2 = TriggerEvent
  SHX2_2 = "b51e08118b"
  SHX1_2(SHX2_2)
end
SHX3_1(SHX4_1, SHX5_1)
function SHX3_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = pairs
  SHX2_2 = SHX1_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = SHX0_1.jobs
    SHX6_2 = SHX6_2[SHX5_2]
    if SHX6_2 then
      SHX7_2 = SHX6_2._config
      if SHX7_2 then
        SHX7_2 = SHX6_2._config
        SHX7_2 = SHX7_2.gtype
        if SHX7_2 then
          SHX7_2 = SHX6_2._config
          SHX7_2 = SHX7_2.gtype
          if SHX7_2 == SHX0_2 then
            return SHX5_2
          end
        end
      end
    end
  end
  SHX1_2 = nil
  return SHX1_2
end
SHX4_1 = CMG
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX3_1
  SHX1_2 = "job"
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 then
    SHX0_2 = "Unemployed"
  end
  return SHX0_2
end
SHX4_1.getClientJob = SHX5_1
SHX4_1 = CMG
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hasClientPermission
  SHX1_2 = "police.onduty.permission"
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX0_2 = "Police"
    return SHX0_2
  else
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.hasClientPermission
    SHX1_2 = "nhs.onduty.permission"
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      SHX0_2 = "Health Service"
      return SHX0_2
    else
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.hasClientPermission
      SHX1_2 = "prisonguard.onduty.permission"
      SHX0_2 = SHX0_2(SHX1_2)
      if SHX0_2 then
        SHX0_2 = "HMP"
        return SHX0_2
      end
    end
  end
end
SHX4_1.getClientFaction = SHX5_1
SHX4_1 = CMG
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getClientJob
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX1_2 = 0
    return SHX1_2
  end
  SHX1_2 = SHX0_1.jobs
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX2_2 = SHX1_2._config
    SHX2_2 = SHX2_2.grade
    if not SHX2_2 then
      SHX2_2 = 0
    end
    return SHX2_2
  end
  SHX2_2 = 0
  return SHX2_2
end
SHX4_1.getClientJobGrade = SHX5_1
