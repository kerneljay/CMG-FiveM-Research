-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_loginrewards"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = RMenu
SHX1_1 = SHX1_1.Add
SHX2_1 = "loginrewards"
SHX3_1 = "mainmenu"
SHX4_1 = RageUI
SHX4_1 = SHX4_1.CreateMenu
SHX5_1 = ""
SHX6_1 = "Main Menu"
SHX7_1 = CMG
SHX7_1 = SHX7_1.getRageUIMenuWidth
SHX7_1 = SHX7_1()
SHX8_1 = CMG
SHX8_1 = SHX8_1.getRageUIMenuHeight
SHX8_1 = SHX8_1()
SHX9_1 = "cmg_loginrewards"
SHX10_1 = "cmg_loginrewards"
SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1)
SHX1_1(SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1)
SHX1_1 = 0
SHX2_1 = 0
SHX3_1 = false
SHX4_1 = false
SHX5_1 = 0
SHX6_1 = SHX0_1.requiredPlaytimeMinutes
SHX6_1 = SHX6_1 * 60
SHX7_1 = 0
SHX8_1 = false
SHX9_1 = 0
SHX10_1 = false
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = 0
  SHX9_1 = SHX0_2
end
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerCoords
  SHX0_2 = SHX0_2()
  SHX1_2 = GetSoundId
  SHX1_2 = SHX1_2()
  SHX2_2 = PlaySoundFromCoord
  SHX3_2 = SHX1_2
  SHX4_2 = "Spin_Single_Ticks"
  SHX5_2 = SHX0_2.x
  SHX6_2 = SHX0_2.y
  SHX7_2 = SHX0_2.z
  SHX8_2 = "dlc_vw_casino_lucky_wheel_sounds"
  SHX9_2 = false
  SHX10_2 = 0
  SHX11_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX2_2 = SetTimeout
  SHX3_2 = 400
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = ReleaseSoundId
    SHX1_3 = SHX1_2
    SHX0_3(SHX1_3)
  end
  SHX2_2(SHX3_2, SHX4_2)
end
SHX13_1 = CMG
SHX13_1 = SHX13_1.uiRegisterCallback
SHX14_1 = "dailyRewardReelTick"
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX8_1
  if not SHX0_2 then
    SHX0_2 = {}
    return SHX0_2
  end
  SHX0_2 = GetGameTimer
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX9_1
  SHX1_2 = SHX0_2 - SHX1_2
  if SHX1_2 < 120 then
    SHX1_2 = {}
    return SHX1_2
  end
  SHX9_1 = SHX0_2
  SHX1_2 = SHX12_1
  SHX1_2()
  SHX1_2 = {}
  return SHX1_2
end
SHX13_1(SHX14_1, SHX15_1)
function SHX13_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = SHX1_2 or nil
  if not SHX1_2 then
    SHX2_2 = "You can claim this reward in"
  end
  SHX3_2 = SHX0_2.months
  if SHX3_2 then
    SHX3_2 = SHX0_2.months
    if SHX3_2 > 0 then
      SHX3_2 = SHX2_2
      SHX4_2 = " "
      SHX5_2 = tostring
      SHX6_2 = SHX0_2.months
      SHX5_2 = SHX5_2(SHX6_2)
      SHX6_2 = "m"
      SHX3_2 = SHX3_2 .. SHX4_2 .. SHX5_2 .. SHX6_2
      SHX2_2 = SHX3_2
    end
  end
  SHX3_2 = SHX0_2.days
  if SHX3_2 then
    SHX3_2 = SHX0_2.days
    if SHX3_2 > 0 then
      SHX3_2 = SHX2_2
      SHX4_2 = " "
      SHX5_2 = tostring
      SHX6_2 = SHX0_2.days
      SHX5_2 = SHX5_2(SHX6_2)
      SHX6_2 = "d"
      SHX3_2 = SHX3_2 .. SHX4_2 .. SHX5_2 .. SHX6_2
      SHX2_2 = SHX3_2
    end
  end
  SHX3_2 = SHX0_2.hours
  if SHX3_2 then
    SHX3_2 = SHX0_2.hours
    if SHX3_2 > 0 then
      SHX3_2 = SHX2_2
      SHX4_2 = " "
      SHX5_2 = tostring
      SHX6_2 = SHX0_2.hours
      SHX5_2 = SHX5_2(SHX6_2)
      SHX6_2 = "h"
      SHX3_2 = SHX3_2 .. SHX4_2 .. SHX5_2 .. SHX6_2
      SHX2_2 = SHX3_2
    end
  end
  SHX3_2 = SHX0_2.minutes
  if SHX3_2 then
    SHX3_2 = SHX0_2.minutes
    if SHX3_2 > 0 then
      SHX3_2 = SHX2_2
      SHX4_2 = " "
      SHX5_2 = tostring
      SHX6_2 = SHX0_2.minutes
      SHX5_2 = SHX5_2(SHX6_2)
      SHX6_2 = "m"
      SHX3_2 = SHX3_2 .. SHX4_2 .. SHX5_2 .. SHX6_2
      SHX2_2 = SHX3_2
    end
  end
  SHX3_2 = SHX0_2.seconds
  if SHX3_2 then
    SHX3_2 = SHX0_2.seconds
    if SHX3_2 > 0 then
      SHX3_2 = SHX2_2
      SHX4_2 = " "
      SHX5_2 = tostring
      SHX6_2 = SHX0_2.seconds
      SHX5_2 = SHX5_2(SHX6_2)
      SHX6_2 = "s"
      SHX3_2 = SHX3_2 .. SHX4_2 .. SHX5_2 .. SHX6_2
      SHX2_2 = SHX3_2
    end
  end
  SHX3_2 = SHX2_2
  SHX4_2 = "."
  SHX3_2 = SHX3_2 .. SHX4_2
  SHX2_2 = SHX3_2
  return SHX2_2
end
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX3_1
  if not SHX0_2 then
    SHX0_2 = SHX5_1
    return SHX0_2
  end
  SHX0_2 = SHX5_1
  SHX1_2 = math
  SHX1_2 = SHX1_2.floor
  SHX2_2 = GetGameTimer
  SHX2_2 = SHX2_2()
  SHX3_2 = SHX7_1
  SHX2_2 = SHX2_2 - SHX3_2
  SHX2_2 = SHX2_2 / 1000
  SHX1_2 = SHX1_2(SHX2_2)
  SHX0_2 = SHX0_2 + SHX1_2
  return SHX0_2
end
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = math
  SHX0_2 = SHX0_2.max
  SHX1_2 = 0
  SHX2_2 = SHX6_1
  SHX3_2 = SHX14_1
  SHX3_2 = SHX3_2()
  SHX2_2 = SHX2_2 - SHX3_2
  return SHX0_2(SHX1_2, SHX2_2)
end
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX3_1
  if not SHX0_2 then
    SHX0_2 = "You have already opened today's crate!"
    return SHX0_2
  end
  SHX0_2 = SHX4_1
  if not SHX0_2 then
    SHX0_2 = SHX15_1
    SHX0_2 = SHX0_2()
    if not (SHX0_2 <= 0) then
      goto SHX_LABEL_15
    end
  end
  SHX0_2 = "Open your daily reward crate!"
  return SHX0_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_15:: outside nested blocks until all 'goto SHX_LABEL_15' can see it
  ::SHX_LABEL_15::
  SHX0_2 = SHX13_1
  SHX1_2 = formatTime
  SHX2_2 = SHX15_1
  SHX2_2 = SHX2_2()
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = "Play for"
  return SHX0_2(SHX1_2, SHX2_2)
end
function SHX17_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = SHX0_2 - 1
  SHX3_2 = SHX1_1
  SHX2_2 = SHX2_2 - SHX3_2
  SHX3_2 = SHX2_1
  SHX4_2 = GetGameTimer
  SHX4_2 = SHX4_2()
  SHX3_2 = SHX3_2 - SHX4_2
  SHX4_2 = SHX2_2 * 86400000
  SHX3_2 = SHX3_2 + SHX4_2
  if SHX3_2 <= 0 then
    SHX4_2 = SHX1_1
    if SHX4_2 > 0 then
      SHX4_2 = "Unlocks after midnight."
      return SHX4_2
    end
  end
  if SHX1_2 then
    SHX4_2 = "You must claim the previous reward first."
    return SHX4_2
  end
  SHX4_2 = formatTime
  SHX5_2 = SHX3_2 / 1000
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = SHX13_1
  SHX6_2 = SHX4_2
  return SHX5_2(SHX6_2)
end
function SHX18_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  if SHX1_2 then
    SHX2_2 = "CLAIMED"
    return SHX2_2
  end
  SHX2_2 = "LOOT CRATE"
  return SHX2_2
end
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX8_1
  if SHX0_2 then
    SHX0_2 = false
    return SHX0_2
  end
  SHX0_2 = SHX3_1
  if not SHX0_2 then
    SHX0_2 = false
    return SHX0_2
  end
  SHX0_2 = SHX4_1
  if SHX0_2 then
    SHX0_2 = true
    return SHX0_2
  end
  SHX0_2 = SHX15_1
  SHX0_2 = SHX0_2()
  SHX0_2 = SHX0_2 <= 0
  return SHX0_2
end
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getClientDateTime
  SHX0_2 = SHX0_2()
  SHX1_2 = string
  SHX1_2 = SHX1_2.format
  SHX2_2 = "daily_reward_eligible_%04d-%02d-%02d"
  SHX3_2 = SHX0_2.year
  SHX4_2 = SHX0_2.month
  SHX5_2 = SHX0_2.day
  return SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
function SHX21_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX10_1
  if SHX0_2 then
    return
  end
  SHX0_2 = SHX20_1
  SHX0_2 = SHX0_2()
  SHX1_2 = GetResourceKvpString
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if "1" == SHX1_2 then
    SHX1_2 = true
    SHX10_1 = SHX1_2
    return
  end
  SHX1_2 = true
  SHX10_1 = SHX1_2
  SHX1_2 = SetResourceKvp
  SHX2_2 = SHX0_2
  SHX3_2 = "1"
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.CreateThread
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.announceMpSmallMsg
    SHX1_3 = "DAILY REWARD"
    SHX2_3 = "You are now eligible! Use /daily to redeem your crate."
    SHX3_3 = 18
    SHX4_3 = 5000
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
  end
  SHX1_2(SHX2_2)
end
function SHX22_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX19_1
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX0_2 = SHX3_1
    if SHX0_2 then
      SHX0_2 = SHX21_1
      SHX0_2()
    end
  end
end
function SHX23_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = math
  SHX0_2 = SHX0_2.min
  SHX1_2 = SHX0_1.requiredPlaytimeMinutes
  SHX2_2 = math
  SHX2_2 = SHX2_2.floor
  SHX3_2 = SHX14_1
  SHX3_2 = SHX3_2()
  SHX3_2 = SHX3_2 / 60
  SHX2_2, SHX3_2, SHX4_2 = SHX2_2(SHX3_2)
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = string
  SHX1_2 = SHX1_2.format
  SHX2_2 = "Today's playtime: %d / %d mins"
  SHX3_2 = SHX0_2
  SHX4_2 = SHX0_1.requiredPlaytimeMinutes
  return SHX1_2(SHX2_2, SHX3_2, SHX4_2)
end
function SHX24_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX11_1
  SHX0_2()
  SHX0_2 = false
  SHX8_1 = SHX0_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSetFocus
  SHX1_2 = false
  SHX2_2 = false
  SHX3_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSendMessage
  SHX1_2 = {}
  SHX1_2.action = "DAILY_REWARD_CLOSE"
  SHX0_2(SHX1_2)
end
SHX25_1 = RageUI
SHX25_1 = SHX25_1.CreateWhile
SHX26_1 = 1.0
SHX27_1 = RMenu
SHX28_1 = SHX27_1
SHX27_1 = SHX27_1.Get
SHX29_1 = "loginrewards"
SHX30_1 = "mainmenu"
SHX27_1 = SHX27_1(SHX28_1, SHX29_1, SHX30_1)
SHX28_1 = nil
function SHX29_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "loginrewards"
  SHX4_2 = "mainmenu"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX3_2 = false
  SHX4_2 = true
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3
    SHX0_3 = SHX1_1
    if 0 == SHX0_3 then
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Separator
      SHX1_3 = "You have no login streak."
      SHX0_3(SHX1_3)
    else
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Separator
      SHX1_3 = string
      SHX1_3 = SHX1_3.format
      SHX2_3 = "Your login streak is %d %s."
      SHX3_3 = SHX1_1
      SHX4_3 = SHX1_1
      if SHX4_3 > 1 then
        SHX4_3 = "days"
        if SHX4_3 then
          goto SHX_LABEL_22
        end
      end
      SHX4_3 = "day"
      -- [FIX IF ERROR] Move ::SHX_LABEL_22:: outside nested blocks until all 'goto SHX_LABEL_22' can see it
      ::SHX_LABEL_22::
      SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3)
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3)
    end
    SHX0_3 = SHX3_1
    if SHX0_3 then
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Separator
      SHX1_3 = SHX23_1
      SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3 = SHX1_3()
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3)
    end
    SHX0_3 = SHX19_1
    SHX0_3 = SHX0_3()
    SHX1_3 = SHX3_1
    if SHX1_3 then
      SHX1_3 = SHX1_1
      SHX1_3 = SHX1_3 + 1
      if SHX1_3 then
        goto SHX_LABEL_43
      end
    end
    SHX1_3 = SHX1_1
    -- [FIX IF ERROR] Move ::SHX_LABEL_43:: outside nested blocks until all 'goto SHX_LABEL_43' can see it
    ::SHX_LABEL_43::
    if 0 == SHX1_3 then
      SHX1_3 = 1
    end
    SHX2_3 = RageUI
    SHX2_3 = SHX2_3.ButtonWithStyle
    SHX3_3 = string
    SHX3_3 = SHX3_3.format
    SHX4_3 = "Day %d Crate"
    SHX5_3 = SHX1_3
    SHX3_3 = SHX3_3(SHX4_3, SHX5_3)
    SHX4_3 = SHX16_1
    SHX4_3 = SHX4_3()
    SHX5_3 = {}
    SHX6_3 = SHX18_1
    SHX7_3 = SHX1_3
    SHX8_3 = SHX3_1
    SHX8_3 = not SHX0_3 and SHX8_3
    SHX6_3 = SHX6_3(SHX7_3, SHX8_3)
    SHX5_3.RightLabel = SHX6_3
    SHX6_3 = SHX0_3
    function SHX7_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4
      if SHX2_4 then
        SHX3_4 = RageUI
        SHX3_4 = SHX3_4.CloseAll
        SHX3_4()
        SHX3_4 = TriggerServerEvent
        SHX4_4 = "58fdce9920"
        SHX3_4(SHX4_4)
      end
    end
    SHX8_3 = nil
    SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
    SHX2_3 = RageUI
    SHX2_3 = SHX2_3.Separator
    SHX3_3 = "Upcoming Rewards"
    SHX2_3(SHX3_3)
    if SHX1_3 < 7 then
      SHX2_3 = 5
      if SHX2_3 then
        goto SHX_LABEL_82
      end
    end
    SHX2_3 = 3
    -- [FIX IF ERROR] Move ::SHX_LABEL_82:: outside nested blocks until all 'goto SHX_LABEL_82' can see it
    ::SHX_LABEL_82::
    SHX3_3 = SHX1_3 + 1
    SHX4_3 = SHX1_3 + SHX2_3
    SHX5_3 = 1
    for SHX6_3 = SHX3_3, SHX4_3, SHX5_3 do
      SHX7_3 = RageUI
      SHX7_3 = SHX7_3.ButtonWithStyle
      SHX8_3 = string
      SHX8_3 = SHX8_3.format
      SHX9_3 = "Day %d"
      SHX10_3 = SHX6_3
      SHX8_3 = SHX8_3(SHX9_3, SHX10_3)
      SHX9_3 = SHX17_1
      SHX10_3 = SHX6_3
      SHX11_3 = SHX0_3
      SHX9_3 = SHX9_3(SHX10_3, SHX11_3)
      SHX10_3 = {}
      SHX11_3 = SHX18_1
      SHX12_3 = SHX6_3
      SHX13_3 = false
      SHX11_3 = SHX11_3(SHX12_3, SHX13_3)
      SHX10_3.RightLabel = SHX11_3
      SHX11_3 = false
      function SHX12_3()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_4, SHX1_4
      end
      SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
    end
    if SHX1_3 < 55 then
      SHX3_3 = RageUI
      SHX3_3 = SHX3_3.ButtonWithStyle
      SHX4_3 = "Day 60"
      SHX5_3 = SHX17_1
      SHX6_3 = 60
      SHX7_3 = SHX0_3
      SHX5_3 = SHX5_3(SHX6_3, SHX7_3)
      SHX6_3 = {}
      SHX7_3 = SHX18_1
      SHX8_3 = 60
      SHX9_3 = false
      SHX7_3 = SHX7_3(SHX8_3, SHX9_3)
      SHX6_3.RightLabel = SHX7_3
      SHX7_3 = false
      function SHX8_3()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_4, SHX1_4
      end
      SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
    end
    if SHX1_3 < 115 then
      SHX3_3 = RageUI
      SHX3_3 = SHX3_3.ButtonWithStyle
      SHX4_3 = "Day 120"
      SHX5_3 = SHX17_1
      SHX6_3 = 120
      SHX7_3 = SHX0_3
      SHX5_3 = SHX5_3(SHX6_3, SHX7_3)
      SHX6_3 = {}
      SHX7_3 = SHX18_1
      SHX8_3 = 120
      SHX9_3 = false
      SHX7_3 = SHX7_3(SHX8_3, SHX9_3)
      SHX6_3.RightLabel = SHX7_3
      SHX7_3 = false
      function SHX8_3()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_4, SHX1_4
      end
      SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
    end
  end
  function SHX6_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
end
SHX25_1(SHX26_1, SHX27_1, SHX28_1, SHX29_1)
SHX25_1 = RegisterNetEvent
SHX26_1 = "dcdc8aedbe"
function SHX27_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX1_1 = SHX0_2
  SHX3_1 = SHX1_2
  SHX4_1 = SHX2_2
  SHX5_1 = SHX4_2
  SHX6_1 = SHX5_2
  SHX6_2 = GetGameTimer
  SHX6_2 = SHX6_2()
  SHX7_1 = SHX6_2
  if SHX1_2 and SHX2_2 then
    SHX6_2 = GetGameTimer
    SHX6_2 = SHX6_2()
    SHX6_2 = SHX6_2 - 1
    SHX2_1 = SHX6_2
  else
    SHX6_2 = GetGameTimer
    SHX6_2 = SHX6_2()
    SHX7_2 = SHX3_2 * 1000
    SHX6_2 = SHX6_2 + SHX7_2
    SHX2_1 = SHX6_2
  end
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.getTunableValue
  SHX7_2 = "motd"
  SHX6_2 = SHX6_2(SHX7_2)
  SHX7_2 = #SHX6_2
  if SHX7_2 > 1 then
    SHX7_2 = GetResourceKvpString
    SHX8_2 = "last_motd"
    SHX7_2 = SHX7_2(SHX8_2)
    if not SHX7_2 or SHX7_2 ~= SHX6_2 then
      SHX8_2 = notify
      SHX9_2 = [[
~h~Message of the day:
~h~~y~]]
      SHX10_2 = SHX6_2
      SHX11_2 = "~w~"
      SHX9_2 = SHX9_2 .. SHX10_2 .. SHX11_2
      SHX8_2(SHX9_2)
      SHX8_2 = SetResourceKvp
      SHX9_2 = "last_motd"
      SHX10_2 = SHX6_2
      SHX8_2(SHX9_2, SHX10_2)
    end
  end
  SHX7_2 = SHX22_1
  SHX7_2()
end
SHX25_1(SHX26_1, SHX27_1)
SHX25_1 = RegisterNetEvent
SHX26_1 = "6de51e7a96"
function SHX27_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = true
  SHX8_1 = SHX1_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.uiSetFocus
  SHX2_2 = true
  SHX3_2 = true
  SHX4_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.uiSendMessage
  SHX2_2 = {}
  SHX2_2.action = "DAILY_REWARD_OPEN"
  SHX2_2.payload = SHX0_2
  SHX1_2(SHX2_2)
end
SHX25_1(SHX26_1, SHX27_1)
SHX25_1 = CMG
SHX25_1 = SHX25_1.uiRegisterCallback
SHX26_1 = "dailyRewardLootboxClose"
function SHX27_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX24_1
  SHX0_2()
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "102e276787"
  SHX0_2(SHX1_2)
  SHX0_2 = {}
  return SHX0_2
end
SHX25_1(SHX26_1, SHX27_1)
function SHX25_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "90f1f4ffc8"
  SHX0_2(SHX1_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Visible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "loginrewards"
  SHX4_2 = "mainmenu"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
end
SHX26_1 = RegisterCommand
SHX27_1 = "dailyrewards"
SHX28_1 = SHX25_1
SHX29_1 = false
SHX26_1(SHX27_1, SHX28_1, SHX29_1)
SHX26_1 = RegisterCommand
SHX27_1 = "daily"
SHX28_1 = SHX25_1
SHX29_1 = false
SHX26_1(SHX27_1, SHX28_1, SHX29_1)
SHX26_1 = Citizen
SHX26_1 = SHX26_1.CreateThread
function SHX27_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  while true do
    SHX0_2 = SHX22_1
    SHX0_2()
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 6000
    SHX0_2(SHX1_2)
  end
end
SHX26_1(SHX27_1)
SHX26_1 = Citizen
SHX26_1 = SHX26_1.CreateThread
function SHX27_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  while true do
    SHX0_2 = RageUI
    SHX0_2 = SHX0_2.Visible
    SHX1_2 = RMenu
    SHX2_2 = SHX1_2
    SHX1_2 = SHX1_2.Get
    SHX3_2 = "loginrewards"
    SHX4_2 = "mainmenu"
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
    if SHX0_2 then
      SHX0_2 = TriggerServerEvent
      SHX1_2 = "90f1f4ffc8"
      SHX0_2(SHX1_2)
      SHX0_2 = Citizen
      SHX0_2 = SHX0_2.Wait
      SHX1_2 = 30000
      SHX0_2(SHX1_2)
    else
      SHX0_2 = Citizen
      SHX0_2 = SHX0_2.Wait
      SHX1_2 = 1000
      SHX0_2(SHX1_2)
    end
  end
end
SHX26_1(SHX27_1)
