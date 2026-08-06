-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_skilltree"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = {}
SHX2_1 = false
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2 = {}
  SHX1_2 = pairs
  SHX2_2 = SHX0_1.skillCategories
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = table
    SHX7_2 = SHX7_2.copy
    SHX8_2 = SHX6_2
    SHX7_2 = SHX7_2(SHX8_2)
    SHX9_2 = SHX6_2.id
    SHX8_2 = SHX1_1
    SHX8_2 = SHX8_2[SHX9_2]
    SHX9_2 = SHX0_1.getMaxPerksInCategory
    SHX10_2 = SHX6_2.id
    SHX9_2 = SHX9_2(SHX10_2)
    SHX7_2.perksMax = SHX9_2
    SHX9_2 = SHX0_1.getLevelXP
    SHX10_2 = SHX8_2.level
    SHX9_2 = SHX9_2(SHX10_2)
    SHX7_2.xpMax = SHX9_2
    SHX9_2 = SHX8_2.level
    SHX7_2.level = SHX9_2
    SHX9_2 = SHX8_2.xp
    SHX7_2.xp = SHX9_2
    SHX9_2 = SHX8_2.skillPoints
    SHX7_2.skillPoints = SHX9_2
    SHX9_2 = SHX8_2.perksUnlocked
    SHX7_2.perksUnlocked = SHX9_2
    SHX9_2 = table
    SHX9_2 = SHX9_2.count
    SHX10_2 = SHX8_2.perksUnlocked
    SHX9_2 = SHX9_2(SHX10_2)
    SHX7_2.perksUsed = SHX9_2
    SHX9_2 = table
    SHX9_2 = SHX9_2.insert
    SHX10_2 = SHX0_2
    SHX11_2 = SHX7_2
    SHX9_2(SHX10_2, SHX11_2)
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.uiSendMessage
  SHX2_2 = {}
  SHX2_2.type = "SKILLTREE_MENU_SET"
  SHX3_2 = {}
  SHX3_2.skillCategories = SHX0_2
  SHX2_2.info = SHX3_2
  SHX1_2(SHX2_2)
end
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isHudVehicleCursorEnabled
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    return
  end
  SHX0_2 = SHX2_1
  if not SHX0_2 then
    SHX0_2 = tCMG
    SHX0_2 = SHX0_2.isInComa
    SHX0_2 = SHX0_2()
    if SHX0_2 then
      return
    end
  end
  SHX0_2 = SHX2_1
  SHX0_2 = not SHX0_2
  SHX2_1 = SHX0_2
  SHX0_2 = SHX2_1
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.hideHud
    SHX0_2()
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.uiSetFocus
    SHX1_2 = true
    SHX2_2 = true
    SHX3_2 = false
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = TriggerScreenblurFadeIn
    SHX1_2 = 0.0
    SHX0_2(SHX1_2)
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.uiSendMessage
    SHX1_2 = {}
    SHX1_2.type = "APP_TOGGLE"
    SHX1_2.app = "skilltree"
    SHX0_2(SHX1_2)
    SHX0_2 = SHX3_1
    SHX0_2()
  else
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.showHud
    SHX0_2()
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.uiSetFocus
    SHX1_2 = false
    SHX2_2 = false
    SHX3_2 = false
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = TriggerScreenblurFadeOut
    SHX1_2 = 0.0
    SHX0_2(SHX1_2)
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.uiSendMessage
    SHX1_2 = {}
    SHX1_2.type = "APP_TOGGLE"
    SHX1_2.app = ""
    SHX0_2(SHX1_2)
  end
end
SHX5_1 = RegisterCommand
SHX6_1 = "skilltree"
SHX7_1 = SHX4_1
SHX8_1 = false
SHX5_1(SHX6_1, SHX7_1, SHX8_1)
SHX5_1 = RegisterKeyMapping
SHX6_1 = "skilltree"
SHX7_1 = "Open Skill Tree"
SHX8_1 = "KEYBOARD"
SHX9_1 = "F1"
SHX5_1(SHX6_1, SHX7_1, SHX8_1, SHX9_1)
function SHX5_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  if "civilian" == SHX0_2 then
    SHX1_2 = "yellow"
    return SHX1_2
  end
  if "crime" == SHX0_2 then
    SHX1_2 = "red"
    return SHX1_2
  end
  if "factions" == SHX0_2 then
    SHX1_2 = "blue"
    return SHX1_2
  end
  SHX1_2 = "purple"
  return SHX1_2
end
function SHX6_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX5_2 = {}
  SHX6_2 = 0
  SHX7_2 = SHX3_2 or SHX7_2
  if not SHX3_2 then
    SHX7_2 = 0
  end
  if SHX2_2 <= 0 then
    SHX8_2 = SHX5_2
    SHX9_2 = SHX0_2
    SHX10_2 = SHX1_2
    SHX11_2 = SHX6_2
    return SHX8_2, SHX9_2, SHX10_2, SHX11_2
  end
  while SHX2_2 > 0 do
    SHX8_2 = SHX0_1.getLevelXP
    SHX9_2 = SHX0_2
    SHX8_2 = SHX8_2(SHX9_2)
    SHX9_2 = SHX8_2 - SHX1_2
    if SHX2_2 >= SHX9_2 then
      if SHX4_2 > SHX7_2 then
        SHX10_2 = 1
        if SHX10_2 then
          goto SHX_LABEL_29
        end
      end
      SHX10_2 = 0
      -- [FIX IF ERROR] Move ::SHX_LABEL_29:: outside nested blocks until all 'goto SHX_LABEL_29' can see it
      ::SHX_LABEL_29::
      SHX11_2 = #SHX5_2
      SHX11_2 = SHX11_2 + 1
      SHX12_2 = {}
      SHX12_2.level = SHX0_2
      SHX12_2.xpFrom = SHX1_2
      SHX12_2.xpTo = SHX8_2
      SHX12_2.xpMax = SHX8_2
      SHX12_2.note = "LEVEL UP!"
      SHX12_2.awardPoints = SHX10_2
      SHX5_2[SHX11_2] = SHX12_2
      SHX2_2 = SHX2_2 - SHX9_2
      SHX0_2 = SHX0_2 + 1
      SHX1_2 = 0
      SHX7_2 = SHX7_2 + SHX10_2
      SHX6_2 = SHX6_2 + SHX10_2
    else
      SHX10_2 = #SHX5_2
      SHX10_2 = SHX10_2 + 1
      SHX11_2 = {}
      SHX11_2.level = SHX0_2
      SHX11_2.xpFrom = SHX1_2
      SHX12_2 = SHX1_2 + SHX2_2
      SHX11_2.xpTo = SHX12_2
      SHX11_2.xpMax = SHX8_2
      SHX5_2[SHX10_2] = SHX11_2
      SHX1_2 = SHX1_2 + SHX2_2
      SHX2_2 = 0
    end
  end
  SHX8_2 = SHX5_2
  SHX9_2 = SHX0_2
  SHX10_2 = SHX1_2
  SHX11_2 = SHX6_2
  return SHX8_2, SHX9_2, SHX10_2, SHX11_2
end
function SHX7_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX2_2 = SHX0_2.perksUnlocked
  if not SHX2_2 then
    SHX2_2 = {}
  end
  SHX3_2 = 0
  SHX4_2 = pairs
  SHX5_2 = SHX0_1.skills
  if not SHX5_2 then
    SHX5_2 = {}
  end
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
  for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    SHX10_2 = SHX9_2.skillCategory
    if SHX10_2 == SHX1_2 then
      SHX10_2 = SHX2_2[SHX8_2]
      if not SHX10_2 then
        SHX10_2 = SHX9_2.cost
        if not SHX10_2 then
          SHX10_2 = 1
        end
        SHX3_2 = SHX3_2 + SHX10_2
      end
    end
  end
  return SHX3_2
end
function SHX8_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX3_2 = SHX1_1
  SHX3_2 = SHX3_2[SHX0_2]
  SHX4_2 = SHX7_1
  SHX5_2 = SHX3_2
  SHX6_2 = SHX0_2
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX5_2 = SHX6_1
  SHX6_2 = SHX3_2.level
  SHX7_2 = SHX3_2.xp
  SHX8_2 = SHX1_2
  SHX9_2 = SHX3_2.skillPoints
  if not SHX9_2 then
    SHX9_2 = 0
  end
  SHX10_2 = SHX4_2
  SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX9_2 = SHX3_2.skillPoints
  SHX10_2 = SHX9_2 + SHX8_2
  SHX3_2.level = SHX6_2
  SHX3_2.xp = SHX7_2
  SHX3_2.skillPoints = SHX10_2
  if SHX2_2 then
    return
  end
  SHX11_2 = #SHX5_2
  if SHX11_2 > 0 then
    SHX11_2 = CMG
    SHX11_2 = SHX11_2.uiSendMessage
    SHX12_2 = {}
    SHX12_2.action = "XP_GAIN_STEPS"
    SHX13_2 = {}
    SHX13_2.label = SHX0_2
    SHX14_2 = SHX5_1
    SHX15_2 = SHX0_2
    SHX14_2 = SHX14_2(SHX15_2)
    SHX13_2.color = SHX14_2
    SHX13_2.gained = SHX1_2
    SHX13_2.pointsBefore = SHX9_2
    SHX13_2.pointsAfter = SHX10_2
    SHX13_2.steps = SHX5_2
    SHX12_2.payload = SHX13_2
    SHX11_2(SHX12_2)
  end
end
SHX9_1 = CMG
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = {}
  SHX0_2[1] = 5
  SHX0_2[2] = 10
  SHX0_2[3] = 15
  SHX0_2[4] = 20
  SHX0_2[5] = 30
  SHX0_2[6] = 40
  SHX0_2[7] = 50
  SHX1_2 = 7
  SHX2_2 = 1
  SHX3_2 = -1
  for SHX4_2 = SHX1_2, SHX2_2, SHX3_2 do
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.hasClientSkill
    SHX6_2 = "piloting_fuel_capacity_"
    SHX7_2 = SHX4_2
    SHX6_2 = SHX6_2 .. SHX7_2
    SHX5_2 = SHX5_2(SHX6_2)
    if SHX5_2 then
      SHX5_2 = SHX0_2[SHX4_2]
      return SHX5_2
    end
  end
  SHX1_2 = 0
  return SHX1_2
end
SHX9_1.getPilotingFuelCapacityPercent = SHX10_1
SHX9_1 = CMG
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = 5
  SHX1_2 = 1
  SHX2_2 = -1
  for SHX3_2 = SHX0_2, SHX1_2, SHX2_2 do
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.hasClientSkill
    SHX5_2 = "mechanic_fuel_usage_"
    SHX6_2 = SHX3_2
    SHX5_2 = SHX5_2 .. SHX6_2
    SHX4_2 = SHX4_2(SHX5_2)
    if SHX4_2 then
      SHX4_2 = SHX3_2 * 10
      return SHX4_2
    end
  end
  SHX0_2 = 0
  return SHX0_2
end
SHX9_1.getMechanicFuelUsageReductionPercent = SHX10_1
SHX9_1 = CMG
SHX10_1 = "getMechanicRepairStationSpeedPercentClient"
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = 5
  SHX1_2 = 1
  SHX2_2 = -1
  for SHX3_2 = SHX0_2, SHX1_2, SHX2_2 do
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.hasClientSkill
    SHX5_2 = "mechanic_repair_stations_speed_"
    SHX6_2 = SHX3_2
    SHX5_2 = SHX5_2 .. SHX6_2
    SHX4_2 = SHX4_2(SHX5_2)
    if SHX4_2 then
      SHX4_2 = SHX3_2 * 10
      return SHX4_2
    end
  end
  SHX0_2 = 0
  return SHX0_2
end
SHX9_1[SHX10_1] = SHX11_1
SHX9_1 = CMG
SHX10_1 = "getMoneyLaunderingBurnerPhoneDiscountPercentClient"
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = 5
  SHX1_2 = 1
  SHX2_2 = -1
  for SHX3_2 = SHX0_2, SHX1_2, SHX2_2 do
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.hasClientSkill
    SHX5_2 = "money_laundering_burner_phone_discount_"
    SHX6_2 = SHX3_2
    SHX5_2 = SHX5_2 .. SHX6_2
    SHX4_2 = SHX4_2(SHX5_2)
    if SHX4_2 then
      SHX4_2 = 5 * SHX3_2
      return SHX4_2
    end
  end
  SHX0_2 = 0
  return SHX0_2
end
SHX9_1[SHX10_1] = SHX11_1
SHX9_1 = CMG
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = 4
  SHX1_2 = 1
  SHX2_2 = -1
  for SHX3_2 = SHX0_2, SHX1_2, SHX2_2 do
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.hasClientSkill
    SHX5_2 = "trapper_supplies_discount_"
    SHX6_2 = SHX3_2
    SHX5_2 = SHX5_2 .. SHX6_2
    SHX4_2 = SHX4_2(SHX5_2)
    if SHX4_2 then
      SHX4_2 = SHX3_2 * 5
      return SHX4_2
    end
  end
  SHX0_2 = 0
  return SHX0_2
end
SHX9_1.getTrapperSupplyDiscountPercentClient = SHX10_1
SHX9_1 = exports
SHX10_1 = "getTrapperSupplyDiscountPercentClient"
SHX11_1 = CMG
SHX11_1 = SHX11_1.getTrapperSupplyDiscountPercentClient
SHX9_1(SHX10_1, SHX11_1)
SHX9_1 = CMG
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = {}
  SHX0_2[1] = 2
  SHX0_2[2] = 5
  SHX0_2[3] = 7
  SHX0_2[4] = 10
  SHX0_2[5] = 12
  SHX0_2[6] = 15
  SHX0_2[7] = 20
  SHX1_2 = 7
  SHX2_2 = 1
  SHX3_2 = -1
  for SHX4_2 = SHX1_2, SHX2_2, SHX3_2 do
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.hasClientSkill
    SHX6_2 = "trucking_max_speed_"
    SHX7_2 = SHX4_2
    SHX6_2 = SHX6_2 .. SHX7_2
    SHX5_2 = SHX5_2(SHX6_2)
    if SHX5_2 then
      SHX5_2 = SHX0_2[SHX4_2]
      return SHX5_2
    end
  end
  SHX1_2 = 0
  return SHX1_2
end
SHX9_1.getTruckingMaxSpeedBonusMph = SHX10_1
SHX9_1 = CMG
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = {}
  SHX0_2[1] = 2
  SHX0_2[2] = 5
  SHX0_2[3] = 7
  SHX0_2[4] = 10
  SHX0_2[5] = 12
  SHX0_2[6] = 15
  SHX0_2[7] = 20
  SHX1_2 = 7
  SHX2_2 = 1
  SHX3_2 = -1
  for SHX4_2 = SHX1_2, SHX2_2, SHX3_2 do
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.hasClientSkill
    SHX6_2 = "garbage_max_speed_"
    SHX7_2 = SHX4_2
    SHX6_2 = SHX6_2 .. SHX7_2
    SHX5_2 = SHX5_2(SHX6_2)
    if SHX5_2 then
      SHX5_2 = SHX0_2[SHX4_2]
      return SHX5_2
    end
  end
  SHX1_2 = 0
  return SHX1_2
end
SHX9_1.getGarbageMaxSpeedBonusMph = SHX10_1
SHX9_1 = CMG
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  if not SHX0_2 or "" == SHX0_2 then
    SHX1_2 = false
    return SHX1_2
  end
  SHX1_2 = pairs
  SHX2_2 = SHX1_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.perksUnlocked
    if SHX7_2 then
      SHX7_2 = SHX6_2.perksUnlocked
      SHX7_2 = SHX7_2[SHX0_2]
      if SHX7_2 then
        SHX7_2 = true
        return SHX7_2
      end
    end
  end
  SHX1_2 = false
  return SHX1_2
end
SHX9_1.hasClientSkill = SHX10_1
SHX9_1 = RegisterNetEvent
SHX10_1 = "e298dff343"
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_1 = SHX0_2
end
SHX9_1(SHX10_1, SHX11_1)
SHX9_1 = RegisterNetEvent
SHX10_1 = "9ec6bde351"
function SHX11_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX3_2 = SHX8_1
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  SHX6_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
end
SHX9_1(SHX10_1, SHX11_1)
SHX9_1 = CMG
SHX9_1 = SHX9_1.uiRegisterCallback
SHX10_1 = "skilltreeClose"
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX4_1
  SHX0_2()
end
SHX9_1(SHX10_1, SHX11_1)
SHX9_1 = CMG
SHX9_1 = SHX9_1.uiRegisterCallback
SHX10_1 = "skilltreeBuyNode"
function SHX11_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.TriggerServerCallback
  SHX3_2 = "d25f6f2387"
  SHX4_2 = SHX0_2.skillCategory
  SHX5_2 = SHX0_2.nodeId
  SHX2_2, SHX3_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  if not SHX2_2 then
    if SHX1_2 then
      SHX4_2 = SHX1_2
      SHX5_2 = {}
      SHX5_2.ok = false
      SHX4_2(SHX5_2)
    end
    return
  end
  SHX5_2 = SHX0_2.skillCategory
  SHX4_2 = SHX1_1
  SHX4_2 = SHX4_2[SHX5_2]
  SHX4_2.skillPoints = SHX3_2
  SHX5_2 = SHX0_2.skillCategory
  SHX4_2 = SHX1_1
  SHX4_2 = SHX4_2[SHX5_2]
  SHX4_2 = SHX4_2.perksUnlocked
  SHX5_2 = SHX0_2.nodeId
  SHX4_2[SHX5_2] = true
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.uiSendMessage
  SHX5_2 = {}
  SHX5_2.action = "SKILLTREE_UPDATE_TREE"
  SHX6_2 = {}
  SHX6_2.points = SHX3_2
  SHX7_2 = {}
  SHX8_2 = {}
  SHX9_2 = SHX0_2.nodeId
  SHX8_2.id = SHX9_2
  SHX8_2.unlocked = true
  SHX7_2[1] = SHX8_2
  SHX6_2.nodes = SHX7_2
  SHX5_2.payload = SHX6_2
  SHX4_2(SHX5_2)
  SHX4_2 = type
  SHX5_2 = SHX0_2.nodeId
  SHX4_2 = SHX4_2(SHX5_2)
  if "string" == SHX4_2 then
    SHX4_2 = SHX0_2.nodeId
    SHX5_2 = SHX4_2
    SHX4_2 = SHX4_2.sub
    SHX6_2 = 1
    SHX7_2 = 8
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    if "hacking_" == SHX4_2 then
      SHX4_2 = TriggerServerEvent
      SHX5_2 = "CMG:hackingPhoneRequestCapabilities"
      SHX4_2(SHX5_2)
    end
  end
  if SHX1_2 then
    SHX4_2 = SHX1_2
    SHX5_2 = {}
    SHX5_2.ok = true
    SHX4_2(SHX5_2)
  end
end
SHX9_1(SHX10_1, SHX11_1)
SHX9_1 = CMG
SHX9_1 = SHX9_1.uiRegisterCallback
SHX10_1 = "skilltreeSelectNode"
function SHX11_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  if SHX1_2 then
    SHX2_2 = SHX1_2
    SHX3_2 = {}
    SHX3_2.ok = true
    SHX2_2(SHX3_2)
  end
end
SHX9_1(SHX10_1, SHX11_1)
SHX9_1 = CMG
SHX9_1 = SHX9_1.uiRegisterCallback
SHX10_1 = "skilltreeSelectSkillCategory"
function SHX11_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  SHX2_2 = SHX0_2 or nil
  if SHX0_2 then
    SHX2_2 = SHX0_2.skillCategory
  end
  if not SHX2_2 then
    if SHX1_2 then
      SHX3_2 = SHX1_2
      SHX4_2 = {}
      SHX4_2.ok = false
      SHX4_2.error = "missing specialization"
      SHX3_2(SHX4_2)
    end
    return
  end
  SHX3_2 = nil
  SHX4_2 = pairs
  SHX5_2 = SHX0_1.skillCategories
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
  for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    SHX10_2 = SHX9_2.id
    if SHX10_2 == SHX2_2 then
      SHX3_2 = SHX9_2
      break
    end
  end
  if not SHX3_2 then
    if SHX1_2 then
      SHX4_2 = SHX1_2
      SHX5_2 = {}
      SHX5_2.ok = false
      SHX5_2.error = "unknown category"
      SHX4_2(SHX5_2)
    end
    return
  end
  SHX4_2 = SHX0_1.skillTrees
  if SHX4_2 then
    SHX4_2 = SHX0_1.skillTrees
    SHX4_2 = SHX4_2[SHX2_2]
  end
  SHX5_2 = {}
  SHX6_2 = {}
  SHX7_2 = nil
  SHX8_2 = SHX1_1
  SHX8_2 = SHX8_2[SHX2_2]
  if SHX8_2 then
    SHX9_2 = SHX8_2.perksUnlocked
    if SHX9_2 then
      goto SHX_LABEL_58
    end
  end
  SHX9_2 = {}
  -- [FIX IF ERROR] Move ::SHX_LABEL_58:: outside nested blocks until all 'goto SHX_LABEL_58' can see it
  ::SHX_LABEL_58::
  if SHX8_2 then
    SHX10_2 = SHX8_2.skillPoints
    if SHX10_2 then
      goto SHX_LABEL_64
    end
  end
  SHX10_2 = 0
  -- [FIX IF ERROR] Move ::SHX_LABEL_64:: outside nested blocks until all 'goto SHX_LABEL_64' can see it
  ::SHX_LABEL_64::
  SHX11_2 = pairs
  SHX12_2 = SHX0_1.skills
  if not SHX12_2 then
    SHX12_2 = {}
  end
  SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX11_2(SHX12_2)
  for SHX15_2, SHX16_2 in SHX11_2, SHX12_2, SHX13_2, SHX14_2 do
    SHX17_2 = SHX16_2.skillCategory
    if SHX17_2 ~= SHX2_2 then
    else
      SHX17_2 = SHX9_2[SHX15_2]
      SHX17_2 = true == SHX17_2
      if not SHX7_2 then
        SHX7_2 = SHX15_2
      end
      SHX18_2 = #SHX5_2
      SHX18_2 = SHX18_2 + 1
      SHX19_2 = {}
      SHX19_2.id = SHX15_2
      SHX20_2 = SHX16_2.name
      if not SHX20_2 then
        SHX20_2 = SHX15_2
      end
      SHX19_2.title = SHX20_2
      SHX20_2 = SHX16_2.description
      SHX19_2.desc = SHX20_2
      SHX20_2 = SHX16_2.cost
      if not SHX20_2 then
        SHX20_2 = 1
      end
      SHX19_2.cost = SHX20_2
      SHX19_2.unlocked = SHX17_2
      SHX20_2 = SHX16_2.icon
      if not SHX20_2 then
        SHX20_2 = "bolt"
      end
      SHX19_2.icon = SHX20_2
      SHX20_2 = SHX16_2.implemented
      SHX20_2 = false ~= SHX20_2
      SHX19_2.implemented = SHX20_2
      SHX5_2[SHX18_2] = SHX19_2
    end
  end
  SHX11_2 = table
  SHX11_2 = SHX11_2.sort
  SHX12_2 = SHX5_2
  function SHX13_2(SHX0_3, SHX1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX2_3, SHX3_3
    SHX2_3 = SHX0_3.id
    SHX3_3 = SHX1_3.id
    SHX2_3 = SHX2_3 < SHX3_3
    return SHX2_3
  end
  SHX11_2(SHX12_2, SHX13_2)
  if SHX4_2 then
    SHX11_2 = SHX4_2.edges
    if SHX11_2 then
      SHX11_2 = ipairs
      SHX12_2 = SHX4_2.edges
      SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX11_2(SHX12_2)
      for SHX15_2, SHX16_2 in SHX11_2, SHX12_2, SHX13_2, SHX14_2 do
        SHX17_2 = #SHX6_2
        SHX17_2 = SHX17_2 + 1
        SHX18_2 = {}
        SHX19_2 = SHX16_2.from
        SHX18_2.from = SHX19_2
        SHX19_2 = SHX16_2.to
        SHX18_2.to = SHX19_2
        SHX6_2[SHX17_2] = SHX18_2
      end
    end
  end
  SHX11_2 = CMG
  SHX11_2 = SHX11_2.uiSendMessage
  SHX12_2 = {}
  SHX12_2.action = "SKILLTREE_OPEN_TREE"
  SHX13_2 = {}
  SHX14_2 = SHX3_2.skillType
  if not SHX14_2 then
    SHX14_2 = "civilian"
  end
  SHX13_2.skillType = SHX14_2
  SHX13_2.skillCategory = SHX2_2
  SHX14_2 = SHX3_2.title
  if not SHX14_2 then
    SHX14_2 = SHX2_2
  end
  SHX13_2.skillCategoryTitle = SHX14_2
  SHX13_2.points = SHX10_2
  SHX13_2.selectedNodeId = SHX7_2
  SHX13_2.nodes = SHX5_2
  SHX13_2.edges = SHX6_2
  SHX12_2.payload = SHX13_2
  SHX11_2(SHX12_2)
  if SHX1_2 then
    SHX11_2 = SHX1_2
    SHX12_2 = {}
    SHX12_2.ok = true
    SHX11_2(SHX12_2)
  end
end
SHX9_1(SHX10_1, SHX11_1)
