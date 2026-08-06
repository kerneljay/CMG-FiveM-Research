-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1
SHX0_1 = {}
SHX1_1 = {}
SHX2_1 = {}
SHX3_1 = {}
SHX4_1 = {}
SHX5_1 = {}
SHX6_1 = nil
SHX7_1 = nil
SHX8_1 = false
SHX9_1 = RegisterNetEvent
SHX10_1 = "CMGUI:setStatistics"
function SHX11_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.uiSendMessage
  SHX4_2 = {}
  SHX4_2.type = "SET_STATS"
  SHX5_2 = {}
  SHX5_2.stats = SHX0_2
  SHX5_2.userId = SHX1_2
  SHX6_2 = math
  SHX6_2 = SHX6_2.ceil
  SHX7_2 = SHX2_2 / 15
  SHX6_2 = SHX6_2(SHX7_2)
  SHX5_2.pageCount = SHX6_2
  SHX4_2.info = SHX5_2
  SHX3_2(SHX4_2)
end
SHX9_1(SHX10_1, SHX11_1)
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX8_1
  SHX0_2 = not SHX0_2
  SHX8_1 = SHX0_2
  SHX0_2 = SHX8_1
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
    SHX1_2.app = "stats"
    SHX0_2(SHX1_2)
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
SHX10_1 = RegisterCommand
SHX11_1 = "openstats"
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isHudVehicleCursorEnabled
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    return
  end
  SHX0_2 = GetEntityHealth
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 <= 102 then
    return
  end
  SHX0_2 = SHX9_1
  SHX0_2()
end
SHX13_1 = false
SHX10_1(SHX11_1, SHX12_1, SHX13_1)
SHX10_1 = CMG
SHX10_1 = SHX10_1.uiRegisterCallback
SHX11_1 = "closeStatsMenu"
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
SHX10_1 = RegisterKeyMapping
SHX11_1 = "openstats"
SHX12_1 = "Open the stats menu"
SHX13_1 = "keyboard"
SHX14_1 = "F9"
SHX10_1(SHX11_1, SHX12_1, SHX13_1, SHX14_1)
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX8_1
  if SHX0_2 then
    SHX0_2 = DisableAllControlActions
    SHX1_2 = 0
    SHX0_2(SHX1_2)
    SHX0_2 = EnableControlAction
    SHX1_2 = 0
    SHX2_2 = 249
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.isNewPlayer
    SHX0_2 = SHX0_2()
    if SHX0_2 then
      SHX0_2 = drawNativeNotification
      SHX1_2 = "Press ~INPUT_DF5476D8~ to toggle the Statistics Menu."
      SHX0_2(SHX1_2)
    end
  end
end
SHX11_1 = CMG
SHX11_1 = SHX11_1.createThreadOnTick
SHX12_1 = SHX10_1
SHX13_1 = "Statistics Menu"
SHX11_1(SHX12_1, SHX13_1)
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX1_2 = {}
  SHX2_2 = pairs
  SHX3_2 = SHX0_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = table
    SHX8_2 = SHX8_2.insert
    SHX9_2 = SHX1_2
    SHX10_2 = {}
    SHX11_2 = SHX7_2[1]
    SHX10_2.user_id = SHX11_2
    SHX11_2 = SHX7_2[2]
    SHX10_2.name = SHX11_2
    SHX11_2 = SHX7_2[3]
    SHX10_2.playtime = SHX11_2
    SHX11_2 = SHX7_2[4]
    SHX10_2.kills = SHX11_2
    SHX11_2 = SHX7_2[5]
    SHX10_2.deaths = SHX11_2
    SHX11_2 = SHX7_2[6]
    SHX10_2.headshots = SHX11_2
    SHX11_2 = SHX7_2[7]
    SHX10_2.amount_robbed = SHX11_2
    SHX11_2 = SHX7_2[8]
    SHX10_2.jailed_time = SHX11_2
    SHX11_2 = SHX7_2[9]
    SHX10_2.arrests = SHX11_2
    SHX11_2 = SHX7_2[10]
    SHX10_2.searches = SHX11_2
    SHX11_2 = SHX7_2[11]
    SHX10_2.amount_fined = SHX11_2
    SHX11_2 = SHX7_2[12]
    SHX10_2.money_seized = SHX11_2
    SHX11_2 = SHX7_2[13]
    SHX10_2.revives = SHX11_2
    SHX11_2 = SHX7_2[14]
    SHX10_2.bodybagged = SHX11_2
    SHX11_2 = SHX7_2[15]
    SHX10_2.weed_sales = SHX11_2
    SHX11_2 = SHX7_2[16]
    SHX10_2.cocaine_sales = SHX11_2
    SHX11_2 = SHX7_2[17]
    SHX10_2.meth_sales = SHX11_2
    SHX11_2 = SHX7_2[18]
    SHX10_2.heroin_sales = SHX11_2
    SHX11_2 = SHX7_2[19]
    SHX10_2.lsd_sales = SHX11_2
    SHX11_2 = SHX7_2[20]
    SHX10_2.copper_sales = SHX11_2
    SHX11_2 = SHX7_2[21]
    SHX10_2.limestone_sales = SHX11_2
    SHX11_2 = SHX7_2[22]
    SHX10_2.gold_sales = SHX11_2
    SHX11_2 = SHX7_2[23]
    SHX10_2.diamond_sales = SHX11_2
    SHX11_2 = SHX7_2[24]
    SHX10_2.fish_sales = SHX11_2
    SHX11_2 = SHX7_2[25]
    SHX10_2.vigilante_money = SHX11_2
    SHX11_2 = SHX7_2[26]
    SHX10_2.vigilante_arrests = SHX11_2
    SHX11_2 = SHX7_2[27]
    SHX10_2.vigilante_largest_bounty = SHX11_2
    SHX11_2 = SHX7_2[28]
    SHX10_2.wager_kills = SHX11_2
    SHX11_2 = SHX7_2[29]
    SHX10_2.wager_deaths = SHX11_2
    SHX11_2 = SHX7_2[30]
    SHX10_2.black_market_sales = SHX11_2
    SHX11_2 = SHX7_2[31]
    SHX10_2.organ_kills = SHX11_2
    SHX11_2 = SHX7_2[32]
    SHX10_2.organ_num_played = SHX11_2
    SHX11_2 = SHX7_2[33]
    SHX10_2.organ_num_won = SHX11_2
    SHX11_2 = SHX7_2[34]
    SHX10_2.organ_earned = SHX11_2
    SHX11_2 = SHX7_2[35]
    SHX10_2.bloodmoney_kills = SHX11_2
    SHX11_2 = SHX7_2[36]
    SHX10_2.bloodmoney_deaths = SHX11_2
    SHX11_2 = SHX7_2[37]
    SHX10_2.bloodmoney_earned = SHX11_2
    SHX11_2 = SHX7_2[38]
    SHX10_2.koth_wins = SHX11_2
    SHX11_2 = SHX7_2[39]
    SHX10_2.koth_attempts = SHX11_2
    SHX11_2 = SHX7_2[40]
    SHX10_2.wager_elo = SHX11_2
    SHX8_2(SHX9_2, SHX10_2)
  end
  return SHX1_2
end
SHX12_1 = RegisterNetEvent
SHX13_1 = "a11a363123"
function SHX14_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX2_2 = SHX11_1
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = TriggerEvent
  SHX4_2 = "CMGUI:setStatistics"
  SHX5_2 = SHX2_2
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.getClientUserId
  SHX6_2 = SHX6_2()
  SHX7_2 = SHX1_2
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.uiSendMessage
  SHX4_2 = {}
  SHX4_2.type = "SET_USER_STATS"
  SHX5_2 = {}
  SHX6_2 = SHX6_1
  SHX5_2.totalUserStats = SHX6_2
  SHX6_2 = SHX7_1
  SHX5_2.monthlyUserStats = SHX6_2
  SHX4_2.info = SHX5_2
  SHX3_2(SHX4_2)
end
SHX12_1(SHX13_1, SHX14_1)
SHX12_1 = CMG
SHX12_1 = SHX12_1.uiRegisterCallback
SHX13_1 = "requestStatisticsPage"
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "8eb276deaa"
  SHX3_2 = SHX0_2.sortingBy
  SHX4_2 = SHX0_2.pageNumber
  SHX5_2 = SHX0_2.timeframe
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX12_1(SHX13_1, SHX14_1)
function SHX12_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = IsNamedRendertargetRegistered
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    SHX2_2 = RegisterNamedRendertarget
    SHX3_2 = SHX0_2
    SHX4_2 = false
    SHX2_2(SHX3_2, SHX4_2)
  end
  SHX2_2 = IsNamedRendertargetLinked
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    SHX2_2 = LinkNamedRendertarget
    SHX3_2 = SHX1_2
    SHX2_2(SHX3_2)
  end
  SHX2_2 = IsNamedRendertargetLinked
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = GetNamedRendertargetRenderId
    SHX3_2 = SHX0_2
    return SHX2_2(SHX3_2)
  else
    SHX2_2 = 0
    return SHX2_2
  end
end
SHX13_1 = {}
SHX14_1 = {}
SHX15_1 = 255
SHX16_1 = 215
SHX17_1 = 0
SHX14_1[1] = SHX15_1
SHX14_1[2] = SHX16_1
SHX14_1[3] = SHX17_1
SHX15_1 = {}
SHX16_1 = 192
SHX17_1 = 192
SHX18_1 = 192
SHX15_1[1] = SHX16_1
SHX15_1[2] = SHX17_1
SHX15_1[3] = SHX18_1
SHX16_1 = {}
SHX17_1 = 140
SHX18_1 = 120
SHX19_1 = 83
SHX16_1[1] = SHX17_1
SHX16_1[2] = SHX18_1
SHX16_1[3] = SHX19_1
SHX17_1 = {}
SHX18_1 = 140
SHX19_1 = 120
SHX20_1 = 83
SHX17_1[1] = SHX18_1
SHX17_1[2] = SHX19_1
SHX17_1[3] = SHX20_1
SHX18_1 = {}
SHX19_1 = 140
SHX20_1 = 120
SHX21_1 = 83
SHX18_1[1] = SHX19_1
SHX18_1[2] = SHX20_1
SHX18_1[3] = SHX21_1
SHX19_1 = {}
SHX20_1 = 100
SHX21_1 = 65
SHX22_1 = 23
SHX19_1[1] = SHX20_1
SHX19_1[2] = SHX21_1
SHX19_1[3] = SHX22_1
SHX20_1 = {}
SHX21_1 = 100
SHX22_1 = 65
SHX23_1 = 23
SHX20_1[1] = SHX21_1
SHX20_1[2] = SHX22_1
SHX20_1[3] = SHX23_1
SHX21_1 = {}
SHX22_1 = 100
SHX23_1 = 65
SHX24_1 = 23
SHX21_1[1] = SHX22_1
SHX21_1[2] = SHX23_1
SHX21_1[3] = SHX24_1
SHX22_1 = {}
SHX23_1 = 100
SHX24_1 = 65
SHX25_1 = 23
SHX22_1[1] = SHX23_1
SHX22_1[2] = SHX24_1
SHX22_1[3] = SHX25_1
SHX23_1 = {}
SHX24_1 = 100
SHX25_1 = 65
SHX26_1 = 23
SHX23_1[1] = SHX24_1
SHX23_1[2] = SHX25_1
SHX23_1[3] = SHX26_1
SHX13_1[1] = SHX14_1
SHX13_1[2] = SHX15_1
SHX13_1[3] = SHX16_1
SHX13_1[4] = SHX17_1
SHX13_1[5] = SHX18_1
SHX13_1[6] = SHX19_1
SHX13_1[7] = SHX20_1
SHX13_1[8] = SHX21_1
SHX13_1[9] = SHX22_1
SHX13_1[10] = SHX23_1
SHX14_1 = vector3
SHX15_1 = 1602.1811181641
SHX16_1 = 6444.9092773438
SHX17_1 = 25.354776382446
SHX14_1 = SHX14_1(SHX15_1, SHX16_1, SHX17_1)
SHX15_1 = 305134324
SHX16_1 = 0
SHX17_1 = 0
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.loadModel
  SHX1_2 = SHX15_1
  SHX0_2(SHX1_2)
  SHX0_2 = CreateObject
  SHX1_2 = SHX15_1
  SHX2_2 = SHX14_1.x
  SHX3_2 = SHX14_1.y
  SHX4_2 = SHX14_1.z
  SHX5_2 = false
  SHX6_2 = false
  SHX7_2 = false
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX17_1 = SHX0_2
  SHX0_2 = SetModelAsNoLongerNeeded
  SHX1_2 = SHX15_1
  SHX0_2(SHX1_2)
  SHX0_2 = SetEntityHeading
  SHX1_2 = SHX17_1
  SHX2_2 = 300.0
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetEntityLodDist
  SHX1_2 = SHX17_1
  SHX2_2 = 75
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SHX12_1
  SHX1_2 = "cmgtv9"
  SHX2_2 = SHX15_1
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  SHX16_1 = SHX0_2
end
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = DeleteEntity
  SHX1_2 = SHX17_1
  SHX0_2(SHX1_2)
  SHX0_2 = 0
  SHX17_1 = SHX0_2
  SHX0_2 = ReleaseNamedRendertarget
  SHX1_2 = "cmgtv9"
  SHX0_2(SHX1_2)
  SHX0_2 = 0
  SHX16_1 = SHX0_2
end
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2
  SHX1_2 = SHX0_2.distance
  if SHX1_2 > 50.0 then
    return
  end
  SHX1_2 = SetTextRenderId
  SHX2_2 = SHX16_1
  SHX1_2(SHX2_2)
  SHX1_2 = SetScriptGfxDrawOrder
  SHX2_2 = 4
  SHX1_2(SHX2_2)
  SHX1_2 = SetScriptGfxDrawBehindPausemenu
  SHX2_2 = true
  SHX1_2(SHX2_2)
  SHX1_2 = GetConvar
  SHX2_2 = "statsDisplayDeaths"
  SHX3_2 = "0"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = "1" == SHX1_2
  if SHX1_2 then
    SHX2_2 = DrawAdvancedText
    SHX3_2 = 0.6
    SHX4_2 = 0.0
    SHX5_2 = 0.005
    SHX6_2 = 0.0028
    SHX7_2 = 1.12
    SHX8_2 = "Top Deaths This Month"
    SHX9_2 = 248
    SHX10_2 = 246
    SHX11_2 = 240
    SHX12_2 = 200
    SHX13_2 = 4
    SHX14_2 = 0
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  else
    SHX2_2 = DrawAdvancedText
    SHX3_2 = 0.6
    SHX4_2 = 0.0
    SHX5_2 = 0.005
    SHX6_2 = 0.0028
    SHX7_2 = 1.12
    SHX8_2 = "Top Fraggers This Month"
    SHX9_2 = 248
    SHX10_2 = 246
    SHX11_2 = 240
    SHX12_2 = 200
    SHX13_2 = 4
    SHX14_2 = 0
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  end
  SHX2_2 = DrawAdvancedText
  SHX3_2 = 0.15
  SHX4_2 = 0.27
  SHX5_2 = 0.005
  SHX6_2 = 0.0028
  SHX7_2 = 0.5
  SHX8_2 = "Name"
  SHX9_2 = 248
  SHX10_2 = 246
  SHX11_2 = 240
  SHX12_2 = 255
  SHX13_2 = 4
  SHX14_2 = 1
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX2_2 = DrawAdvancedText
  SHX3_2 = 0.5
  SHX4_2 = 0.27
  SHX5_2 = 0.005
  SHX6_2 = 0.0028
  SHX7_2 = 0.5
  SHX8_2 = "Perm ID"
  SHX9_2 = 248
  SHX10_2 = 246
  SHX11_2 = 240
  SHX12_2 = 255
  SHX13_2 = 4
  SHX14_2 = 1
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX2_2 = DrawAdvancedText
  SHX3_2 = 0.72
  SHX4_2 = 0.27
  SHX5_2 = 0.005
  SHX6_2 = 0.0028
  SHX7_2 = 0.5
  if SHX1_2 then
    SHX8_2 = "Deaths"
    if SHX8_2 then
      goto SHX_LABEL_93
    end
  end
  SHX8_2 = "Kills"
  -- [FIX IF ERROR] Move ::SHX_LABEL_93:: outside nested blocks until all 'goto SHX_LABEL_93' can see it
  ::SHX_LABEL_93::
  SHX9_2 = 248
  SHX10_2 = 246
  SHX11_2 = 240
  SHX12_2 = 255
  SHX13_2 = 4
  SHX14_2 = 1
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX2_2 = DrawAdvancedText
  SHX3_2 = 0.9
  SHX4_2 = 0.27
  SHX5_2 = 0.005
  SHX6_2 = 0.0028
  SHX7_2 = 0.5
  SHX8_2 = "KD"
  SHX9_2 = 248
  SHX10_2 = 246
  SHX11_2 = 240
  SHX12_2 = 255
  SHX13_2 = 4
  SHX14_2 = 1
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX2_2 = DrawRect
  SHX3_2 = 0.5
  SHX4_2 = 0.38
  SHX5_2 = 0.95
  SHX6_2 = 0.005
  SHX7_2 = 248
  SHX8_2 = 246
  SHX9_2 = 240
  SHX10_2 = 255
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  if SHX1_2 then
    SHX2_2 = SHX1_1
    if SHX2_2 then
      goto SHX_LABEL_130
    end
  end
  SHX2_2 = SHX0_1
  -- [FIX IF ERROR] Move ::SHX_LABEL_130:: outside nested blocks until all 'goto SHX_LABEL_130' can see it
  ::SHX_LABEL_130::
  SHX3_2 = pairs
  SHX4_2 = SHX2_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = SHX13_1
    SHX9_2 = SHX9_2[SHX7_2]
    if SHX9_2 and SHX8_2 then
      SHX10_2 = DrawAdvancedText
      SHX11_2 = 0.15
      SHX12_2 = 0.1 * SHX7_2
      SHX12_2 = 0.291 + SHX12_2
      SHX13_2 = 0.005
      SHX14_2 = 0.0028
      SHX15_2 = 0.5
      SHX16_2 = SHX8_2[1]
      SHX17_2 = SHX9_2[1]
      SHX18_2 = SHX9_2[2]
      SHX19_2 = SHX9_2[3]
      SHX20_2 = 255
      SHX21_2 = 4
      SHX22_2 = 1
      SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
      SHX10_2 = DrawAdvancedText
      SHX11_2 = 0.5
      SHX12_2 = 0.1 * SHX7_2
      SHX12_2 = 0.291 + SHX12_2
      SHX13_2 = 0.005
      SHX14_2 = 0.0028
      SHX15_2 = 0.5
      SHX16_2 = SHX8_2[2]
      SHX17_2 = SHX9_2[1]
      SHX18_2 = SHX9_2[2]
      SHX19_2 = SHX9_2[3]
      SHX20_2 = 255
      SHX21_2 = 4
      SHX22_2 = 1
      SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
      SHX10_2 = DrawAdvancedText
      SHX11_2 = 0.72
      SHX12_2 = 0.1 * SHX7_2
      SHX12_2 = 0.291 + SHX12_2
      SHX13_2 = 0.005
      SHX14_2 = 0.0028
      SHX15_2 = 0.5
      SHX16_2 = SHX8_2[3]
      SHX17_2 = SHX9_2[1]
      SHX18_2 = SHX9_2[2]
      SHX19_2 = SHX9_2[3]
      SHX20_2 = 255
      SHX21_2 = 4
      SHX22_2 = 1
      SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
      SHX10_2 = DrawAdvancedText
      SHX11_2 = 0.9
      SHX12_2 = 0.1 * SHX7_2
      SHX12_2 = 0.291 + SHX12_2
      SHX13_2 = 0.005
      SHX14_2 = 0.0028
      SHX15_2 = 0.5
      SHX16_2 = SHX8_2[4]
      SHX17_2 = SHX9_2[1]
      SHX18_2 = SHX9_2[2]
      SHX19_2 = SHX9_2[3]
      SHX20_2 = 255
      SHX21_2 = 4
      SHX22_2 = 1
      SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
    end
  end
  SHX3_2 = SetTextRenderId
  SHX4_2 = GetDefaultScriptRendertargetRenderId
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2 = SHX4_2()
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
  SHX3_2 = SetScriptGfxDrawBehindPausemenu
  SHX4_2 = false
  SHX3_2(SHX4_2)
  SHX3_2 = SHX0_2.distance
  SHX4_2 = 2.5
  if SHX3_2 < SHX4_2 then
    SHX3_2 = drawNativeNotification
    SHX4_2 = "Press ~INPUT_CONTEXT~ to switch to "
    if SHX1_2 then
      SHX5_2 = "kills"
      if SHX5_2 then
        goto SHX_LABEL_230
      end
    end
    SHX5_2 = "deaths"
    -- [FIX IF ERROR] Move ::SHX_LABEL_230:: outside nested blocks until all 'goto SHX_LABEL_230' can see it
    ::SHX_LABEL_230::
    SHX4_2 = SHX4_2 .. SHX5_2
    SHX3_2(SHX4_2)
    SHX3_2 = IsControlJustPressed
    SHX4_2 = 0
    SHX5_2 = 51
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
    if SHX3_2 then
      SHX3_2 = TriggerServerEvent
      SHX4_2 = "db58871c70"
      SHX3_2(SHX4_2)
    end
  end
end
SHX21_1 = CMG
SHX21_1 = SHX21_1.createArea
SHX22_1 = "rebelTopFraggersTV"
SHX23_1 = SHX14_1
SHX24_1 = 100.0
SHX25_1 = 500.0
SHX26_1 = SHX18_1
SHX27_1 = SHX19_1
SHX28_1 = SHX20_1
SHX29_1 = {}
SHX21_1(SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1)
SHX21_1 = RegisterNetEvent
SHX22_1 = "e1fbddf59d"
function SHX23_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  SHX0_1 = SHX0_2
  SHX1_1 = SHX1_2
end
SHX21_1(SHX22_1, SHX23_1)
SHX21_1 = RegisterNetEvent
SHX22_1 = "3c185160b0"
function SHX23_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX5_1 = SHX0_2
end
SHX21_1(SHX22_1, SHX23_1)
function SHX21_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadModel
  SHX2_2 = SHX15_1
  SHX1_2(SHX2_2)
  SHX1_2 = CreateObject
  SHX2_2 = SHX15_1
  SHX3_2 = SHX0_2.position
  SHX3_2 = SHX3_2.x
  SHX4_2 = SHX0_2.position
  SHX4_2 = SHX4_2.y
  SHX5_2 = SHX0_2.position
  SHX5_2 = SHX5_2.z
  SHX6_2 = false
  SHX7_2 = false
  SHX8_2 = false
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX17_1 = SHX1_2
  SHX1_2 = SetModelAsNoLongerNeeded
  SHX2_2 = SHX15_1
  SHX1_2(SHX2_2)
  SHX1_2 = SetEntityHeading
  SHX2_2 = SHX17_1
  SHX3_2 = SHX0_2.position
  SHX3_2 = SHX3_2.w
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetEntityLodDist
  SHX2_2 = SHX17_1
  SHX3_2 = 75
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SHX12_1
  SHX2_2 = "cmgtv9"
  SHX3_2 = SHX15_1
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX16_1 = SHX1_2
end
function SHX22_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = DeleteEntity
  SHX1_2 = SHX17_1
  SHX0_2(SHX1_2)
  SHX0_2 = 0
  SHX17_1 = SHX0_2
  SHX0_2 = ReleaseNamedRendertarget
  SHX1_2 = "cmgtv9"
  SHX0_2(SHX1_2)
  SHX0_2 = 0
  SHX16_1 = SHX0_2
end
function SHX23_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  SHX1_2 = SHX0_2.distance
  if not (SHX1_2 > 50.0) then
    SHX2_2 = SHX0_2.type
    SHX1_2 = SHX5_1
    SHX1_2 = SHX1_2[SHX2_2]
    if SHX1_2 then
      goto SHX_LABEL_10
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX1_2 = SetTextRenderId
  SHX2_2 = SHX16_1
  SHX1_2(SHX2_2)
  SHX1_2 = SetScriptGfxDrawOrder
  SHX2_2 = 4
  SHX1_2(SHX2_2)
  SHX1_2 = SetScriptGfxDrawBehindPausemenu
  SHX2_2 = true
  SHX1_2(SHX2_2)
  SHX1_2 = DrawAdvancedText
  SHX2_2 = 0.6
  SHX3_2 = 0.0
  SHX4_2 = 0.005
  SHX5_2 = 0.0028
  SHX6_2 = 0.7
  SHX7_2 = "Committed Employees"
  SHX8_2 = 248
  SHX9_2 = 246
  SHX10_2 = 240
  SHX11_2 = 200
  SHX12_2 = 4
  SHX13_2 = 0
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX1_2 = DrawAdvancedText
  SHX2_2 = 0.15
  SHX3_2 = 0.17
  SHX4_2 = 0.005
  SHX5_2 = 0.0028
  SHX6_2 = 0.4
  SHX7_2 = "Name"
  SHX8_2 = 248
  SHX9_2 = 246
  SHX10_2 = 240
  SHX11_2 = 255
  SHX12_2 = 4
  SHX13_2 = 1
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX1_2 = DrawAdvancedText
  SHX2_2 = 0.5
  SHX3_2 = 0.17
  SHX4_2 = 0.005
  SHX5_2 = 0.0028
  SHX6_2 = 0.4
  SHX7_2 = "Perm ID"
  SHX8_2 = 248
  SHX9_2 = 246
  SHX10_2 = 240
  SHX11_2 = 255
  SHX12_2 = 4
  SHX13_2 = 1
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX1_2 = DrawAdvancedText
  SHX2_2 = 0.72
  SHX3_2 = 0.17
  SHX4_2 = 0.005
  SHX5_2 = 0.0028
  SHX6_2 = 0.4
  SHX7_2 = "Level"
  SHX8_2 = 248
  SHX9_2 = 246
  SHX10_2 = 240
  SHX11_2 = 255
  SHX12_2 = 4
  SHX13_2 = 1
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX1_2 = DrawAdvancedText
  SHX2_2 = 0.9
  SHX3_2 = 0.17
  SHX4_2 = 0.005
  SHX5_2 = 0.0028
  SHX6_2 = 0.4
  SHX7_2 = "Current XP"
  SHX8_2 = 248
  SHX9_2 = 246
  SHX10_2 = 240
  SHX11_2 = 255
  SHX12_2 = 4
  SHX13_2 = 1
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX1_2 = DrawRect
  SHX2_2 = 0.5
  SHX3_2 = 0.26
  SHX4_2 = 0.95
  SHX5_2 = 0.005
  SHX6_2 = 248
  SHX7_2 = 246
  SHX8_2 = 240
  SHX9_2 = 255
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX1_2 = pairs
  SHX3_2 = SHX0_2.type
  SHX2_2 = SHX5_1
  SHX2_2 = SHX2_2[SHX3_2]
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX13_1
    SHX7_2 = SHX7_2[SHX5_2]
    if SHX7_2 and SHX6_2 then
      SHX8_2 = DrawAdvancedText
      SHX9_2 = 0.15
      SHX10_2 = 0.07 * SHX5_2
      SHX10_2 = 0.205 + SHX10_2
      SHX11_2 = 0.005
      SHX12_2 = 0.0028
      SHX13_2 = 0.34
      SHX14_2 = SHX6_2[1]
      SHX15_2 = SHX7_2[1]
      SHX16_2 = SHX7_2[2]
      SHX17_2 = SHX7_2[3]
      SHX18_2 = 255
      SHX19_2 = 4
      SHX20_2 = 1
      SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
      SHX8_2 = DrawAdvancedText
      SHX9_2 = 0.5
      SHX10_2 = 0.07 * SHX5_2
      SHX10_2 = 0.205 + SHX10_2
      SHX11_2 = 0.005
      SHX12_2 = 0.0028
      SHX13_2 = 0.35
      SHX14_2 = SHX6_2[2]
      SHX15_2 = SHX7_2[1]
      SHX16_2 = SHX7_2[2]
      SHX17_2 = SHX7_2[3]
      SHX18_2 = 255
      SHX19_2 = 4
      SHX20_2 = 1
      SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
      SHX8_2 = DrawAdvancedText
      SHX9_2 = 0.72
      SHX10_2 = 0.07 * SHX5_2
      SHX10_2 = 0.205 + SHX10_2
      SHX11_2 = 0.005
      SHX12_2 = 0.0028
      SHX13_2 = 0.35
      SHX14_2 = SHX6_2[3]
      SHX15_2 = SHX7_2[1]
      SHX16_2 = SHX7_2[2]
      SHX17_2 = SHX7_2[3]
      SHX18_2 = 255
      SHX19_2 = 4
      SHX20_2 = 1
      SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
      SHX8_2 = DrawAdvancedText
      SHX9_2 = 0.9
      SHX10_2 = 0.07 * SHX5_2
      SHX10_2 = 0.205 + SHX10_2
      SHX11_2 = 0.005
      SHX12_2 = 0.0028
      SHX13_2 = 0.35
      SHX14_2 = getMoneyStringFormatted
      SHX15_2 = SHX6_2[4]
      SHX14_2 = SHX14_2(SHX15_2)
      SHX15_2 = SHX7_2[1]
      SHX16_2 = SHX7_2[2]
      SHX17_2 = SHX7_2[3]
      SHX18_2 = 255
      SHX19_2 = 4
      SHX20_2 = 1
      SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
    end
  end
  SHX1_2 = SetTextRenderId
  SHX2_2 = GetDefaultScriptRendertargetRenderId
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2 = SHX2_2()
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
  SHX1_2 = SetScriptGfxDrawBehindPausemenu
  SHX2_2 = false
  SHX1_2(SHX2_2)
end
SHX24_1 = {}
SHX25_1 = {}
SHX26_1 = "cmg_trucking"
SHX27_1 = vector4
SHX28_1 = 857.7736328125
SHX29_1 = -3190.0515625
SHX30_1 = 5.593408203125
SHX31_1 = 89.6220703125
SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1 = SHX27_1(SHX28_1, SHX29_1, SHX30_1, SHX31_1)
SHX25_1[1] = SHX26_1
SHX25_1[2] = SHX27_1
SHX25_1[3] = SHX28_1
SHX25_1[4] = SHX29_1
SHX25_1[5] = SHX30_1
SHX25_1[6] = SHX31_1
SHX25_1[7] = SHX32_1
SHX25_1[8] = SHX33_1
SHX25_1[9] = SHX34_1
SHX25_1[10] = SHX35_1
SHX25_1[11] = SHX36_1
SHX25_1[12] = SHX37_1
SHX25_1[13] = SHX38_1
SHX25_1[14] = SHX39_1
SHX25_1[15] = SHX40_1
SHX26_1 = {}
SHX27_1 = "cmg_pilot"
SHX28_1 = vector4
SHX29_1 = -989.87800292969
SHX30_1 = -2945.5913085938
SHX31_1 = 13.9296875
SHX32_1 = 60.27952575684
SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1, SHX32_1)
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX26_1[4] = SHX30_1
SHX26_1[5] = SHX31_1
SHX26_1[6] = SHX32_1
SHX26_1[7] = SHX33_1
SHX26_1[8] = SHX34_1
SHX26_1[9] = SHX35_1
SHX26_1[10] = SHX36_1
SHX26_1[11] = SHX37_1
SHX26_1[12] = SHX38_1
SHX26_1[13] = SHX39_1
SHX26_1[14] = SHX40_1
SHX24_1[1] = SHX25_1
SHX24_1[2] = SHX26_1
SHX25_1 = pairs
SHX26_1 = SHX24_1
SHX25_1, SHX26_1, SHX27_1, SHX28_1 = SHX25_1(SHX26_1)
for SHX29_1, SHX30_1 in SHX25_1, SHX26_1, SHX27_1, SHX28_1 do
  SHX31_1 = CMG
  SHX31_1 = SHX31_1.createArea
  SHX32_1 = "level_tv_"
  SHX33_1 = tostring
  SHX34_1 = SHX29_1
  SHX33_1 = SHX33_1(SHX34_1)
  SHX32_1 = SHX32_1 .. SHX33_1
  SHX33_1 = SHX30_1[2]
  SHX33_1 = SHX33_1.xyz
  SHX34_1 = 100.0
  SHX35_1 = 500.0
  SHX36_1 = SHX21_1
  SHX37_1 = SHX22_1
  SHX38_1 = SHX23_1
  SHX39_1 = {}
  SHX40_1 = SHX30_1[1]
  SHX39_1.type = SHX40_1
  SHX40_1 = SHX30_1[2]
  SHX39_1.position = SHX40_1
  SHX31_1(SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1)
end
SHX25_1 = AddEventHandler
SHX26_1 = "onResourceStop"
function SHX27_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = GetCurrentResourceName
  SHX1_2 = SHX1_2()
  if SHX0_2 == SHX1_2 then
    SHX1_2 = DoesEntityExist
    SHX2_2 = SHX17_1
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = DeleteEntity
      SHX2_2 = SHX17_1
      SHX1_2(SHX2_2)
    end
  end
end
SHX25_1(SHX26_1, SHX27_1)
SHX25_1 = vector3
SHX26_1 = 1460.5463867188
SHX27_1 = 3573.5065429688
SHX28_1 = 36.305820770264
SHX25_1 = SHX25_1(SHX26_1, SHX27_1, SHX28_1)
SHX26_1 = 0
SHX27_1 = 0
function SHX28_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.loadModel
  SHX1_2 = SHX15_1
  SHX0_2(SHX1_2)
  SHX0_2 = CreateObject
  SHX1_2 = SHX15_1
  SHX2_2 = SHX25_1.x
  SHX3_2 = SHX25_1.y
  SHX4_2 = SHX25_1.z
  SHX5_2 = false
  SHX6_2 = false
  SHX7_2 = false
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX27_1 = SHX0_2
  SHX0_2 = SetModelAsNoLongerNeeded
  SHX1_2 = SHX15_1
  SHX0_2(SHX1_2)
  SHX0_2 = SetEntityHeading
  SHX1_2 = SHX27_1
  SHX2_2 = 21.0
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetEntityLodDist
  SHX1_2 = SHX27_1
  SHX2_2 = 75
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SHX12_1
  SHX1_2 = "cmgtv9"
  SHX2_2 = SHX15_1
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  SHX26_1 = SHX0_2
end
function SHX29_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = DeleteEntity
  SHX1_2 = SHX27_1
  SHX0_2(SHX1_2)
  SHX0_2 = 0
  SHX27_1 = SHX0_2
  SHX0_2 = ReleaseNamedRendertarget
  SHX1_2 = "cmgtv9"
  SHX0_2(SHX1_2)
  SHX0_2 = 0
  SHX26_1 = SHX0_2
end
function SHX30_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2
  SHX1_2 = SHX0_2.distance
  if SHX1_2 > 50.0 then
    return
  end
  SHX1_2 = SetTextRenderId
  SHX2_2 = SHX26_1
  SHX1_2(SHX2_2)
  SHX1_2 = SetScriptGfxDrawOrder
  SHX2_2 = 4
  SHX1_2(SHX2_2)
  SHX1_2 = SetScriptGfxDrawBehindPausemenu
  SHX2_2 = true
  SHX1_2(SHX2_2)
  SHX1_2 = GetConvar
  SHX2_2 = "statsWagersDisplayElo"
  SHX3_2 = "0"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = "1" == SHX1_2
  SHX2_2 = not SHX1_2
  SHX3_2 = nil
  SHX4_2 = nil
  SHX5_2 = nil
  if SHX1_2 then
    SHX3_2 = "Top ELO This Month"
    SHX4_2 = "ELO"
    SHX5_2 = "kills"
  elseif SHX2_2 then
    SHX3_2 = "Top Deaths This Month"
    SHX4_2 = "Deaths"
    SHX5_2 = "ELO"
  else
    SHX3_2 = "Top Kills This Month"
    SHX4_2 = "Kills"
    SHX5_2 = "deaths"
  end
  SHX6_2 = DrawAdvancedText
  SHX7_2 = 0.6
  SHX8_2 = 0.0
  SHX9_2 = 0.005
  SHX10_2 = 0.0028
  SHX11_2 = 1.12
  SHX12_2 = SHX3_2
  SHX13_2 = 248
  SHX14_2 = 246
  SHX15_2 = 240
  SHX16_2 = 200
  SHX17_2 = 4
  SHX18_2 = 0
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  SHX6_2 = DrawAdvancedText
  SHX7_2 = 0.15
  SHX8_2 = 0.27
  SHX9_2 = 0.005
  SHX10_2 = 0.0028
  SHX11_2 = 0.5
  SHX12_2 = "Name"
  SHX13_2 = 248
  SHX14_2 = 246
  SHX15_2 = 240
  SHX16_2 = 255
  SHX17_2 = 4
  SHX18_2 = 1
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  SHX6_2 = DrawAdvancedText
  SHX7_2 = 0.5
  SHX8_2 = 0.27
  SHX9_2 = 0.005
  SHX10_2 = 0.0028
  SHX11_2 = 0.5
  SHX12_2 = "Perm ID"
  SHX13_2 = 248
  SHX14_2 = 246
  SHX15_2 = 240
  SHX16_2 = 255
  SHX17_2 = 4
  SHX18_2 = 1
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  SHX6_2 = DrawAdvancedText
  if SHX1_2 then
    SHX7_2 = 0.85
    if SHX7_2 then
      goto SHX_LABEL_97
    end
  end
  SHX7_2 = 0.72
  -- [FIX IF ERROR] Move ::SHX_LABEL_97:: outside nested blocks until all 'goto SHX_LABEL_97' can see it
  ::SHX_LABEL_97::
  SHX8_2 = 0.27
  SHX9_2 = 0.005
  SHX10_2 = 0.0028
  SHX11_2 = 0.5
  SHX12_2 = SHX4_2
  SHX13_2 = 248
  SHX14_2 = 246
  SHX15_2 = 240
  SHX16_2 = 255
  SHX17_2 = 4
  SHX18_2 = 1
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  if not SHX1_2 then
    SHX6_2 = DrawAdvancedText
    SHX7_2 = 0.9
    SHX8_2 = 0.27
    SHX9_2 = 0.005
    SHX10_2 = 0.0028
    SHX11_2 = 0.5
    SHX12_2 = "KD"
    SHX13_2 = 248
    SHX14_2 = 246
    SHX15_2 = 240
    SHX16_2 = 255
    SHX17_2 = 4
    SHX18_2 = 1
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  end
  SHX6_2 = DrawRect
  SHX7_2 = 0.5
  SHX8_2 = 0.38
  SHX9_2 = 0.95
  SHX10_2 = 0.005
  SHX11_2 = 248
  SHX12_2 = 246
  SHX13_2 = 240
  SHX14_2 = 255
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX6_2 = nil
  if SHX1_2 then
    SHX6_2 = SHX4_1
  elseif SHX2_2 then
    SHX6_2 = SHX3_1
  else
    SHX6_2 = SHX2_1
  end
  SHX7_2 = pairs
  SHX8_2 = SHX6_2
  SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
  for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
    SHX13_2 = SHX13_1
    SHX13_2 = SHX13_2[SHX11_2]
    if SHX13_2 and SHX12_2 then
      SHX14_2 = DrawAdvancedText
      SHX15_2 = 0.15
      SHX16_2 = 0.1 * SHX11_2
      SHX16_2 = 0.291 + SHX16_2
      SHX17_2 = 0.005
      SHX18_2 = 0.0028
      SHX19_2 = 0.5
      SHX20_2 = SHX12_2[1]
      SHX21_2 = SHX13_2[1]
      SHX22_2 = SHX13_2[2]
      SHX23_2 = SHX13_2[3]
      SHX24_2 = 255
      SHX25_2 = 4
      SHX26_2 = 1
      SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
      SHX14_2 = DrawAdvancedText
      SHX15_2 = 0.5
      SHX16_2 = 0.1 * SHX11_2
      SHX16_2 = 0.291 + SHX16_2
      SHX17_2 = 0.005
      SHX18_2 = 0.0028
      SHX19_2 = 0.5
      SHX20_2 = SHX12_2[2]
      SHX21_2 = SHX13_2[1]
      SHX22_2 = SHX13_2[2]
      SHX23_2 = SHX13_2[3]
      SHX24_2 = 255
      SHX25_2 = 4
      SHX26_2 = 1
      SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
      SHX14_2 = DrawAdvancedText
      if SHX1_2 then
        SHX15_2 = 0.85
        if SHX15_2 then
          goto SHX_LABEL_196
        end
      end
      SHX15_2 = 0.72
      -- [FIX IF ERROR] Move ::SHX_LABEL_196:: outside nested blocks until all 'goto SHX_LABEL_196' can see it
      ::SHX_LABEL_196::
      SHX16_2 = 0.1 * SHX11_2
      SHX16_2 = 0.291 + SHX16_2
      SHX17_2 = 0.005
      SHX18_2 = 0.0028
      SHX19_2 = 0.5
      SHX20_2 = SHX12_2[3]
      SHX21_2 = SHX13_2[1]
      SHX22_2 = SHX13_2[2]
      SHX23_2 = SHX13_2[3]
      SHX24_2 = 255
      SHX25_2 = 4
      SHX26_2 = 1
      SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
      if not SHX1_2 then
        SHX14_2 = DrawAdvancedText
        SHX15_2 = 0.9
        SHX16_2 = 0.1 * SHX11_2
        SHX16_2 = 0.291 + SHX16_2
        SHX17_2 = 0.005
        SHX18_2 = 0.0028
        SHX19_2 = 0.5
        SHX20_2 = SHX12_2[4]
        SHX21_2 = SHX13_2[1]
        SHX22_2 = SHX13_2[2]
        SHX23_2 = SHX13_2[3]
        SHX24_2 = 255
        SHX25_2 = 4
        SHX26_2 = 1
        SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
      end
    end
  end
  SHX7_2 = SetTextRenderId
  SHX8_2 = GetDefaultScriptRendertargetRenderId
  SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2 = SHX8_2()
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
  SHX7_2 = SetScriptGfxDrawBehindPausemenu
  SHX8_2 = false
  SHX7_2(SHX8_2)
  SHX7_2 = SHX0_2.distance
  SHX8_2 = 2.5
  if SHX7_2 < SHX8_2 then
    SHX7_2 = drawNativeNotification
    SHX8_2 = "Press ~INPUT_CONTEXT~ to switch to "
    SHX9_2 = SHX5_2
    SHX8_2 = SHX8_2 .. SHX9_2
    SHX7_2(SHX8_2)
    SHX7_2 = IsControlJustPressed
    SHX8_2 = 0
    SHX9_2 = 51
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
    if SHX7_2 then
      SHX7_2 = TriggerServerEvent
      SHX8_2 = "056ad3eab8"
      SHX7_2(SHX8_2)
    end
  end
end
SHX31_1 = CMG
SHX31_1 = SHX31_1.createArea
SHX32_1 = "wagerTopFraggersTV"
SHX33_1 = SHX25_1
SHX34_1 = 100.0
SHX35_1 = 500.0
SHX36_1 = SHX28_1
SHX37_1 = SHX29_1
SHX38_1 = SHX30_1
SHX39_1 = {}
SHX31_1(SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1)
SHX31_1 = RegisterNetEvent
SHX32_1 = "bcc476284c"
function SHX33_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2
  SHX2_1 = SHX0_2
  SHX3_1 = SHX1_2
  SHX3_2 = SHX2_2 or SHX3_2
  if not SHX2_2 then
    SHX3_2 = {}
  end
  SHX4_1 = SHX3_2
end
SHX31_1(SHX32_1, SHX33_1)
SHX31_1 = RegisterNetEvent
SHX32_1 = "ca1eb91cc9"
function SHX33_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  SHX6_1 = SHX0_2
  SHX7_1 = SHX1_2
end
SHX31_1(SHX32_1, SHX33_1)
