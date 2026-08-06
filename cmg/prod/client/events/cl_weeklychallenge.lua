-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_weeklychallenge"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = {}
SHX2_1 = {}
SHX3_1 = {}
SHX4_1 = nil
SHX5_1 = 0
SHX6_1 = 0
function SHX7_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX3_1
  SHX2_2[SHX0_2] = SHX1_2
end
SHX8_1 = RegisterNetEvent
SHX9_1 = "3e20320f87"
function SHX10_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2
  SHX1_1 = SHX0_2
  SHX2_1 = SHX1_2
  SHX3_2 = GetGameTimer
  SHX3_2 = SHX3_2()
  SHX5_1 = SHX3_2
  SHX6_1 = SHX2_2
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = CMG
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = math
  SHX0_2 = SHX0_2.floor
  SHX1_2 = GetGameTimer
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX5_1
  SHX1_2 = SHX1_2 - SHX2_2
  SHX1_2 = SHX1_2 / 1000
  SHX0_2 = SHX0_2(SHX1_2)
  SHX1_2 = math
  SHX1_2 = SHX1_2.max
  SHX2_2 = SHX6_1
  SHX2_2 = SHX2_2 - SHX0_2
  SHX3_2 = 0
  return SHX1_2(SHX2_2, SHX3_2)
end
SHX8_1.getSecondsUntilChallengesReset = SHX9_1
function SHX8_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2
  SHX4_2 = pairs
  SHX5_2 = SHX2_2
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
  for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    SHX10_2 = SHX0_1.tasks
    SHX10_2 = SHX10_2[SHX8_2]
    SHX11_2 = SHX3_1
    SHX11_2 = SHX11_2[SHX8_2]
    if SHX11_2 then
      SHX12_2 = SHX0_2.tasks
      SHX12_2 = SHX12_2[SHX8_2]
      SHX13_2 = SHX11_2
      SHX14_2 = SHX12_2
      SHX15_2 = SHX9_2
      SHX13_2, SHX14_2 = SHX13_2(SHX14_2, SHX15_2)
      SHX15_2 = table
      SHX15_2 = SHX15_2.insert
      SHX16_2 = SHX1_2
      SHX17_2 = {}
      SHX18_2 = string
      SHX18_2 = SHX18_2.format
      SHX19_2 = SHX10_2.title
      SHX20_2 = table
      SHX20_2 = SHX20_2.unpack
      SHX21_2 = SHX9_2
      SHX20_2, SHX21_2 = SHX20_2(SHX21_2)
      SHX18_2 = SHX18_2(SHX19_2, SHX20_2, SHX21_2)
      SHX17_2.title = SHX18_2
      SHX17_2.numCompleted = SHX13_2
      SHX17_2.numRequired = SHX14_2
      SHX18_2 = getMoneyStringFormatted
      SHX19_2 = SHX3_2
      SHX18_2 = SHX18_2(SHX19_2)
      SHX17_2.rewardAmount = SHX18_2
      SHX18_2 = SHX0_2.completed
      SHX18_2 = SHX18_2[SHX8_2]
      if not SHX18_2 then
        SHX18_2 = false
      end
      SHX17_2.canClaim = SHX18_2
      SHX18_2 = SHX0_2.claimed
      SHX18_2 = SHX18_2[SHX8_2]
      if not SHX18_2 then
        SHX18_2 = false
      end
      SHX17_2.isClaimed = SHX18_2
      SHX17_2.taskId = SHX8_2
      SHX15_2(SHX16_2, SHX17_2)
    end
  end
end
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = SHX4_1
  if not SHX0_2 then
    return
  end
  SHX0_2 = {}
  SHX1_2 = {}
  SHX0_2.weeklyTasks = SHX1_2
  SHX1_2 = {}
  SHX0_2.dailyTasks = SHX1_2
  SHX1_2 = SHX8_1
  SHX2_2 = SHX4_1.weekly
  SHX3_2 = SHX0_2.weeklyTasks
  SHX4_2 = SHX1_1
  SHX5_2 = SHX0_1.rewardForEachTask
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX8_1
  SHX2_2 = SHX4_1.daily
  SHX3_2 = SHX0_2.dailyTasks
  SHX4_2 = SHX2_1
  SHX5_2 = SHX0_1.rewardForEachDailyTask
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.uiSendMessage
  SHX2_2 = {}
  SHX2_2.type = "PAUSE_MENU_SET_WEEKLY_CHALLENGES"
  SHX2_2.info = SHX0_2
  SHX1_2(SHX2_2)
end
SHX10_1 = RegisterNetEvent
SHX11_1 = "d957aef202"
function SHX12_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX4_1 = SHX0_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.isPauseMenuOpen
  SHX1_2 = SHX1_2()
  if SHX1_2 then
    SHX1_2 = SHX9_1
    SHX1_2()
  end
end
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = AddEventHandler
SHX11_1 = "7ad2e2f656"
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX9_1
  SHX0_2()
end
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = CMG
SHX10_1 = SHX10_1.uiRegisterCallback
SHX11_1 = "claimWeeklyRewards"
function SHX12_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX0_2.isDaily
  if SHX1_2 then
    SHX1_2 = TriggerServerEvent
    SHX2_2 = "bcd86a8e73"
    SHX3_2 = SHX0_2.taskId
    SHX1_2(SHX2_2, SHX3_2)
  else
    SHX1_2 = TriggerServerEvent
    SHX2_2 = "17a84553d6"
    SHX3_2 = SHX0_2.taskId
    SHX1_2(SHX2_2, SHX3_2)
  end
end
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = SHX7_1
SHX11_1 = "drive_distance"
function SHX12_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  if SHX0_2 then
    SHX2_2 = SHX0_2.distance
    if SHX2_2 then
      SHX2_2 = SHX0_2.distance
      if SHX2_2 then
        goto SHX_LABEL_10
      end
    end
  end
  SHX2_2 = 0
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX3_2 = SHX1_2[1]
  return SHX2_2, SHX3_2
end
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = SHX7_1
SHX11_1 = "kill_people"
function SHX12_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  if SHX0_2 then
    SHX2_2 = table
    SHX2_2 = SHX2_2.count
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      goto SHX_LABEL_10
    end
  end
  SHX2_2 = 0
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX3_2 = SHX1_2[1]
  return SHX2_2, SHX3_2
end
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = SHX7_1
SHX11_1 = "lockpick_vehicle"
function SHX12_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  if SHX0_2 then
    SHX2_2 = table
    SHX2_2 = SHX2_2.count
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      goto SHX_LABEL_10
    end
  end
  SHX2_2 = 0
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX3_2 = SHX1_2[1]
  return SHX2_2, SHX3_2
end
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = SHX7_1
SHX11_1 = "capture_turfs"
function SHX12_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  if SHX0_2 then
    SHX2_2 = SHX0_2.count
    if SHX2_2 then
      SHX2_2 = SHX0_2.count
      if SHX2_2 then
        goto SHX_LABEL_10
      end
    end
  end
  SHX2_2 = 0
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX3_2 = SHX1_2[1]
  return SHX2_2, SHX3_2
end
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = SHX7_1
SHX11_1 = "rob_store"
function SHX12_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  if SHX0_2 then
    SHX2_2 = SHX0_2.count
    if SHX2_2 then
      SHX2_2 = SHX0_2.count
      if SHX2_2 then
        goto SHX_LABEL_10
      end
    end
  end
  SHX2_2 = 0
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX3_2 = SHX1_2[1]
  return SHX2_2, SHX3_2
end
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = SHX7_1
SHX11_1 = "redzone_kills"
function SHX12_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  if SHX0_2 then
    SHX2_2 = table
    SHX2_2 = SHX2_2.count
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      goto SHX_LABEL_10
    end
  end
  SHX2_2 = 0
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX3_2 = SHX1_2[1]
  return SHX2_2, SHX3_2
end
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = SHX7_1
SHX11_1 = "cpr_revives"
function SHX12_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  if SHX0_2 then
    SHX2_2 = table
    SHX2_2 = SHX2_2.count
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      goto SHX_LABEL_10
    end
  end
  SHX2_2 = 0
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX3_2 = SHX1_2[1]
  return SHX2_2, SHX3_2
end
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = SHX7_1
SHX11_1 = "loot_airdrop"
function SHX12_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  if SHX0_2 then
    SHX2_2 = table
    SHX2_2 = SHX2_2.count
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      goto SHX_LABEL_10
    end
  end
  SHX2_2 = 0
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX3_2 = SHX1_2[1]
  return SHX2_2, SHX3_2
end
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = SHX7_1
SHX11_1 = "break_handcuffs"
function SHX12_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  if SHX0_2 then
    SHX2_2 = SHX0_2.count
    if SHX2_2 then
      SHX2_2 = SHX0_2.count
      if SHX2_2 then
        goto SHX_LABEL_10
      end
    end
  end
  SHX2_2 = 0
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX3_2 = SHX1_2[1]
  return SHX2_2, SHX3_2
end
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = SHX7_1
SHX11_1 = "take_lsd"
function SHX12_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  if SHX0_2 then
    SHX2_2 = SHX0_2.count
    if SHX2_2 then
      SHX2_2 = SHX0_2.count
      if SHX2_2 then
        goto SHX_LABEL_10
      end
    end
  end
  SHX2_2 = 0
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX3_2 = SHX1_2[1]
  return SHX2_2, SHX3_2
end
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = SHX7_1
SHX11_1 = "repair_vehicles"
function SHX12_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  if SHX0_2 then
    SHX2_2 = SHX0_2.count
    if SHX2_2 then
      SHX2_2 = SHX0_2.count
      if SHX2_2 then
        goto SHX_LABEL_10
      end
    end
  end
  SHX2_2 = 0
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX3_2 = SHX1_2[1]
  return SHX2_2, SHX3_2
end
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = SHX7_1
SHX11_1 = "loot_bags"
function SHX12_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  if SHX0_2 then
    SHX2_2 = table
    SHX2_2 = SHX2_2.count
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      goto SHX_LABEL_10
    end
  end
  SHX2_2 = 0
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX3_2 = SHX1_2[1]
  return SHX2_2, SHX3_2
end
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = SHX7_1
SHX11_1 = "scuba_treasure"
function SHX12_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  if SHX0_2 then
    SHX2_2 = SHX0_2.count
    if SHX2_2 then
      SHX2_2 = SHX0_2.count
      if SHX2_2 then
        goto SHX_LABEL_10
      end
    end
  end
  SHX2_2 = 0
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX3_2 = SHX1_2[1]
  return SHX2_2, SHX3_2
end
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = SHX7_1
SHX11_1 = "wager_wins"
function SHX12_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  if SHX0_2 then
    SHX2_2 = SHX0_2.count
    if SHX2_2 then
      SHX2_2 = SHX0_2.count
      if SHX2_2 then
        goto SHX_LABEL_10
      end
    end
  end
  SHX2_2 = 0
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX3_2 = SHX1_2[1]
  return SHX2_2, SHX3_2
end
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = SHX7_1
SHX11_1 = "fire_kills"
function SHX12_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  if SHX0_2 then
    SHX2_2 = table
    SHX2_2 = SHX2_2.count
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      goto SHX_LABEL_10
    end
  end
  SHX2_2 = 0
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX3_2 = SHX1_2[1]
  return SHX2_2, SHX3_2
end
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = SHX7_1
SHX11_1 = "bolt_cut"
function SHX12_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  if SHX0_2 then
    SHX2_2 = table
    SHX2_2 = SHX2_2.count
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      goto SHX_LABEL_10
    end
  end
  SHX2_2 = 0
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX3_2 = SHX1_2[1]
  return SHX2_2, SHX3_2
end
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = SHX7_1
SHX11_1 = "shave_people"
function SHX12_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  if SHX0_2 then
    SHX2_2 = table
    SHX2_2 = SHX2_2.count
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      goto SHX_LABEL_10
    end
  end
  SHX2_2 = 0
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX3_2 = SHX1_2[1]
  return SHX2_2, SHX3_2
end
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = SHX7_1
SHX11_1 = "dumpster_dive"
function SHX12_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  if SHX0_2 then
    SHX2_2 = SHX0_2.count
    if SHX2_2 then
      SHX2_2 = SHX0_2.count
      if SHX2_2 then
        goto SHX_LABEL_10
      end
    end
  end
  SHX2_2 = 0
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX3_2 = SHX1_2[1]
  return SHX2_2, SHX3_2
end
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = SHX7_1
SHX11_1 = "clean_dirty_cash"
function SHX12_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  if SHX0_2 then
    SHX2_2 = SHX0_2.amount
    if SHX2_2 then
      SHX2_2 = SHX0_2.amount
      if SHX2_2 then
        goto SHX_LABEL_10
      end
    end
  end
  SHX2_2 = 0
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX3_2 = SHX1_2[1]
  return SHX2_2, SHX3_2
end
SHX10_1(SHX11_1, SHX12_1)
SHX10_1 = SHX7_1
SHX11_1 = "rob_atms"
function SHX12_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  if SHX0_2 then
    SHX2_2 = SHX0_2.count
    if SHX2_2 then
      SHX2_2 = SHX0_2.count
      if SHX2_2 then
        goto SHX_LABEL_10
      end
    end
  end
  SHX2_2 = 0
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX3_2 = SHX1_2[1]
  return SHX2_2, SHX3_2
end
SHX10_1(SHX11_1, SHX12_1)
