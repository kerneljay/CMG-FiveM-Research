-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1
SHX0_1 = RMenu
SHX0_1 = SHX0_1.Add
SHX1_1 = "policedog"
SHX2_1 = "main"
SHX3_1 = RageUI
SHX3_1 = SHX3_1.CreateMenu
SHX4_1 = "Dog Support Unit"
SHX5_1 = "~b~Dog Management"
SHX6_1 = CMG
SHX6_1 = SHX6_1.getRageUIMenuWidth
SHX6_1 = SHX6_1()
SHX7_1 = CMG
SHX7_1 = SHX7_1.getRageUIMenuHeight
SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1 = SHX7_1()
SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1)
SHX0_1(SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1)
SHX0_1 = false
SHX1_1 = {}
SHX1_1.Follow = 1
SHX1_1.Stay = 2
SHX1_1.Attack = 3
SHX1_1.Sit = 4
SHX1_1.Trick = 5
SHX1_1.SearchNearby = 6
SHX1_1.Indicate = 7
SHX1_1.SearchVehicle = 8
SHX2_1 = {}
SHX2_1.Success = 1
SHX2_1.Error = 2
SHX2_1.Alert = 3
SHX2_1.Info = 4
SHX2_1.Unknown = 5
SHX3_1 = {}
SHX3_1.active = false
SHX3_1.handle = 0
SHX4_1 = SHX1_1.Follow
SHX3_1.currentAction = SHX4_1
SHX3_1.insideVehicle = false
SHX3_1.insideVehicleHandle = 0
SHX3_1.isAttacking = false
SHX4_1 = {}
SHX5_1 = {}
SHX5_1.dict = "creatures@rottweiler@amb@world_dog_sitting@base"
SHX6_1 = {}
SHX6_1.base = "base"
SHX5_1.anims = SHX6_1
SHX4_1.Sit = SHX5_1
SHX5_1 = {}
SHX5_1.dict = "creatures@dog@move"
SHX6_1 = {}
SHX6_1.base = "beg_enter"
SHX5_1.anims = SHX6_1
SHX4_1.TrickBeg = SHX5_1
SHX5_1 = {}
SHX5_1.dict = "creatures@rottweiler@tricks@"
SHX6_1 = {}
SHX6_1.base = "paw_right_loop"
SHX5_1.anims = SHX6_1
SHX4_1.TrickPawRight = SHX5_1
SHX5_1 = RegisterKeyMapping
SHX6_1 = "k9attack"
SHX7_1 = "Police Dog Attack"
SHX8_1 = "keyboard"
SHX9_1 = "INSERT"
SHX5_1(SHX6_1, SHX7_1, SHX8_1, SHX9_1)
SHX5_1 = TriggerEvent
SHX6_1 = "chat:addSuggestion"
SHX7_1 = "/k9"
SHX8_1 = "Manage your Police Dog"
SHX5_1(SHX6_1, SHX7_1, SHX8_1)
SHX5_1 = TriggerEvent
SHX6_1 = "chat:addSuggestion"
SHX7_1 = "/k9attack"
SHX8_1 = "Start a police dog attack"
SHX5_1(SHX6_1, SHX7_1, SHX8_1)
SHX5_1 = RegisterNetEvent
SHX6_1 = "0ca8b17662"
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hasClientPermission
  SHX1_2 = "police.onduty.permission"
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.hasPoliceCallsign
    SHX0_2 = SHX0_2()
    if SHX0_2 then
      SHX0_2 = RMenu
      SHX1_2 = SHX0_2
      SHX0_2 = SHX0_2.Get
      SHX2_2 = "cmgscenemenu"
      SHX3_2 = "main"
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      SHX1_2 = SHX0_2
      SHX0_2 = SHX0_2.SetSubtitle
      SHX2_2 = "~b~MPD~w~: "
      SHX3_2 = CMG
      SHX3_2 = SHX3_2.getPoliceCallsign
      SHX3_2 = SHX3_2()
      SHX4_2 = " - "
      SHX5_2 = CMG
      SHX5_2 = SHX5_2.getPoliceRank
      SHX5_2 = SHX5_2()
      SHX6_2 = " - "
      SHX7_2 = CMG
      SHX7_2 = SHX7_2.getPlayerName
      SHX8_2 = PlayerId
      SHX8_2 = SHX8_2()
      SHX7_2 = SHX7_2(SHX8_2)
      SHX2_2 = SHX2_2 .. SHX3_2 .. SHX4_2 .. SHX5_2 .. SHX6_2 .. SHX7_2
      SHX0_2(SHX1_2, SHX2_2)
    end
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hasClientPermission
  SHX1_2 = "prisonguard.onduty.permission"
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.hasHmpCallsign
    SHX0_2 = SHX0_2()
    if SHX0_2 then
      SHX0_2 = RMenu
      SHX1_2 = SHX0_2
      SHX0_2 = SHX0_2.Get
      SHX2_2 = "cmgscenemenu"
      SHX3_2 = "main"
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      SHX1_2 = SHX0_2
      SHX0_2 = SHX0_2.SetSubtitle
      SHX2_2 = "~b~HMP~w~: "
      SHX3_2 = CMG
      SHX3_2 = SHX3_2.getHmpCallsign
      SHX3_2 = SHX3_2()
      SHX4_2 = " - "
      SHX5_2 = CMG
      SHX5_2 = SHX5_2.getHmpRank
      SHX5_2 = SHX5_2()
      SHX6_2 = " - "
      SHX7_2 = CMG
      SHX7_2 = SHX7_2.getPlayerName
      SHX8_2 = PlayerId
      SHX8_2 = SHX8_2()
      SHX7_2 = SHX7_2(SHX8_2)
      SHX2_2 = SHX2_2 .. SHX3_2 .. SHX4_2 .. SHX5_2 .. SHX6_2 .. SHX7_2
      SHX0_2(SHX1_2, SHX2_2)
    end
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hasClientPermission
  SHX1_2 = "borderforce.onduty.permission"
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.hasBorderForceCallsign
    SHX0_2 = SHX0_2()
    if SHX0_2 then
      SHX0_2 = RMenu
      SHX1_2 = SHX0_2
      SHX0_2 = SHX0_2.Get
      SHX2_2 = "cmgscenemenu"
      SHX3_2 = "main"
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      SHX1_2 = SHX0_2
      SHX0_2 = SHX0_2.SetSubtitle
      SHX2_2 = "~b~HMP~w~: "
      SHX3_2 = CMG
      SHX3_2 = SHX3_2.getBorderForceCallsign
      SHX3_2 = SHX3_2()
      SHX4_2 = " - "
      SHX5_2 = CMG
      SHX5_2 = SHX5_2.getBorderForceRank
      SHX5_2 = SHX5_2()
      SHX6_2 = " - "
      SHX7_2 = CMG
      SHX7_2 = SHX7_2.getPlayerName
      SHX8_2 = PlayerId
      SHX8_2 = SHX8_2()
      SHX7_2 = SHX7_2(SHX8_2)
      SHX2_2 = SHX2_2 .. SHX3_2 .. SHX4_2 .. SHX5_2 .. SHX6_2 .. SHX7_2
      SHX0_2(SHX1_2, SHX2_2)
    end
  end
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Visible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "policedog"
  SHX4_2 = "main"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
end
SHX5_1(SHX6_1, SHX7_1)
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = SHX3_1.active
  if not SHX0_2 then
    return
  end
  SHX0_2 = SHX3_1.currentAction
  SHX1_2 = SHX1_1.Follow
  if SHX0_2 ~= SHX1_2 then
    SHX0_2 = ClearPedTasks
    SHX1_2 = SHX3_1.handle
    SHX0_2(SHX1_2)
    SHX0_2 = TaskFollowToOffsetOfEntity
    SHX1_2 = SHX3_1.handle
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.getPlayerPed
    SHX2_2 = SHX2_2()
    SHX3_2 = 0.0
    SHX4_2 = 0.0
    SHX5_2 = 0.0
    SHX6_2 = 7.0
    SHX7_2 = -1
    SHX8_2 = 10.0
    SHX9_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    SHX0_2 = SHX1_1.Follow
    SHX3_1.currentAction = SHX0_2
  else
    SHX0_2 = ClearPedTasks
    SHX1_2 = SHX3_1.handle
    SHX0_2(SHX1_2)
    SHX0_2 = SHX1_1.Follow
    SHX3_1.currentAction = SHX0_2
    SHX0_2 = TaskFollowToOffsetOfEntity
    SHX1_2 = SHX3_1.handle
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.getPlayerPed
    SHX2_2 = SHX2_2()
    SHX3_2 = 0.0
    SHX4_2 = 0.0
    SHX5_2 = 0.0
    SHX6_2 = 7.0
    SHX7_2 = -1
    SHX8_2 = 10.0
    SHX9_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  end
end
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX3_1.active
  if not SHX0_2 then
    return
  end
  SHX0_2 = ClearPedTasks
  SHX1_2 = SHX3_1.handle
  SHX0_2(SHX1_2)
  SHX0_2 = SHX1_1.Stay
  SHX3_1.currentAction = SHX0_2
end
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = SHX3_1.active
  if not SHX0_2 then
    return
  end
  SHX0_2 = ClearPedTasks
  SHX1_2 = SHX3_1.handle
  SHX0_2(SHX1_2)
  SHX0_2 = SHX4_1.Sit
  SHX0_2 = SHX0_2.dict
  SHX1_2 = SHX4_1.Sit
  SHX1_2 = SHX1_2.anims
  SHX1_2 = SHX1_2.base
  SHX2_2 = RequestAnimDict
  SHX3_2 = SHX0_2
  SHX2_2(SHX3_2)
  while true do
    SHX2_2 = HasAnimDictLoaded
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      break
    end
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
  SHX2_2 = TaskPlayAnim
  SHX3_2 = SHX3_1.handle
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  SHX6_2 = 8.0
  SHX7_2 = -8.0
  SHX8_2 = -1
  SHX9_2 = 2
  SHX10_2 = 0.0
  SHX11_2 = false
  SHX12_2 = false
  SHX13_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX2_2 = RemoveAnimDict
  SHX3_2 = SHX0_2
  SHX2_2(SHX3_2)
  SHX2_2 = SHX1_1.Sit
  SHX3_1.currentAction = SHX2_2
end
function SHX8_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = notify
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
end
function SHX9_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX1_2 = SHX1_1.Trick
  SHX3_1.currentAction = SHX1_2
  SHX1_2 = ClearPedTasks
  SHX2_2 = SHX3_1.handle
  SHX1_2(SHX2_2)
  SHX1_2 = SHX0_2.dict
  SHX2_2 = SHX0_2.anims
  SHX2_2 = SHX2_2.base
  SHX3_2 = RequestAnimDict
  SHX4_2 = SHX1_2
  SHX3_2(SHX4_2)
  while true do
    SHX3_2 = HasAnimDictLoaded
    SHX4_2 = SHX1_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      break
    end
    SHX3_2 = Citizen
    SHX3_2 = SHX3_2.Wait
    SHX4_2 = 0
    SHX3_2(SHX4_2)
  end
  SHX3_2 = TaskPlayAnim
  SHX4_2 = SHX3_1.handle
  SHX5_2 = SHX1_2
  SHX6_2 = SHX2_2
  SHX7_2 = 8.0
  SHX8_2 = -8.0
  SHX9_2 = -1
  SHX10_2 = 2
  SHX11_2 = 0.0
  SHX12_2 = false
  SHX13_2 = false
  SHX14_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX3_2 = RemoveAnimDict
  SHX4_2 = SHX1_2
  SHX3_2(SHX4_2)
end
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = GetEntityCoords
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = true
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  SHX1_2 = SetEntityCoords
  SHX2_2 = SHX3_1.handle
  SHX3_2 = SHX0_2.x
  SHX4_2 = SHX0_2.y
  SHX5_2 = SHX0_2.z
  SHX5_2 = SHX5_2 - 1.0
  SHX6_2 = false
  SHX7_2 = false
  SHX8_2 = false
  SHX9_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
end
SHX11_1 = {}
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = SHX3_1.currentAction
  SHX1_2 = SHX1_1.SearchNearby
  if SHX0_2 == SHX1_2 then
    return
  end
  SHX0_2 = SHX1_1.SearchNearby
  SHX3_1.currentAction = SHX0_2
  while true do
    SHX0_2 = SHX3_1.currentAction
    SHX1_2 = SHX1_1.SearchNearby
    if SHX0_2 ~= SHX1_2 then
      break
    end
    SHX0_2 = DoesEntityExist
    SHX1_2 = SHX3_1.handle
    SHX0_2 = SHX0_2(SHX1_2)
    if not SHX0_2 then
      break
    end
    SHX0_2 = {}
    SHX1_2 = GetEntityCoords
    SHX2_2 = SHX3_1.handle
    SHX3_2 = true
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    SHX2_2 = GetScriptTaskStatus
    SHX3_2 = SHX3_1.handle
    SHX4_2 = 1056466932
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if 7 == SHX2_2 then
      SHX2_2 = TaskFollowToOffsetOfEntity
      SHX3_2 = SHX3_1.handle
      SHX4_2 = PlayerPedId
      SHX4_2 = SHX4_2()
      SHX5_2 = 0.0
      SHX6_2 = 0.0
      SHX7_2 = 0.0
      SHX8_2 = 7.0
      SHX9_2 = -1
      SHX10_2 = 2.0
      SHX11_2 = true
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    end
    SHX2_2 = pairs
    SHX3_2 = GetActivePlayers
    SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX3_2()
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
      SHX8_2 = GetPlayerPed
      SHX9_2 = SHX7_2
      SHX8_2 = SHX8_2(SHX9_2)
      SHX9_2 = GetVehiclePedIsUsing
      SHX10_2 = SHX8_2
      SHX9_2 = SHX9_2(SHX10_2)
      if 0 == SHX9_2 then
        SHX9_2 = IsEntityVisible
        SHX10_2 = SHX8_2
        SHX9_2 = SHX9_2(SHX10_2)
        if SHX9_2 then
          SHX9_2 = GetEntityCoords
          SHX10_2 = SHX8_2
          SHX11_2 = true
          SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
          SHX9_2 = SHX9_2 - SHX1_2
          SHX9_2 = #SHX9_2
          if SHX9_2 < 5.0 then
            SHX9_2 = GetPlayerServerId
            SHX10_2 = SHX7_2
            SHX9_2 = SHX9_2(SHX10_2)
            SHX10_2 = CMG
            SHX10_2 = SHX10_2.clientGetUserIdFromSource
            SHX11_2 = SHX9_2
            SHX10_2 = SHX10_2(SHX11_2)
            SHX11_2 = CMG
            SHX11_2 = SHX11_2.getJobType
            SHX12_2 = SHX10_2
            SHX11_2 = SHX11_2(SHX12_2)
            if "" == SHX11_2 then
              SHX11_2 = table
              SHX11_2 = SHX11_2.insert
              SHX12_2 = SHX0_2
              SHX13_2 = {}
              SHX13_2.source = SHX9_2
              SHX13_2.ped = SHX8_2
              SHX11_2(SHX12_2, SHX13_2)
            end
          end
        end
      end
    end
    SHX2_2 = #SHX0_2
    if SHX2_2 > 0 then
      SHX2_2 = nil
      SHX3_2 = pairs
      SHX4_2 = SHX0_2
      SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
      for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
        SHX10_2 = SHX8_2.source
        SHX9_2 = SHX11_1
        SHX9_2 = SHX9_2[SHX10_2]
        if not SHX9_2 then
          SHX2_2 = SHX8_2
          break
        end
      end
      if not SHX2_2 then
        SHX3_2 = math
        SHX3_2 = SHX3_2.random
        SHX4_2 = 1
        SHX5_2 = #SHX0_2
        SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
        SHX2_2 = SHX0_2[SHX3_2]
      end
      SHX4_2 = SHX2_2.source
      SHX3_2 = SHX11_1
      SHX3_2 = SHX3_2[SHX4_2]
      if not SHX3_2 then
        SHX3_2 = notify
        SHX4_2 = "~y~Dog is smelling a nearby pedestrian..."
        SHX3_2(SHX4_2)
        SHX4_2 = SHX2_2.source
        SHX3_2 = SHX11_1
        SHX3_2[SHX4_2] = true
        SHX3_2 = Citizen
        SHX3_2 = SHX3_2.CreateThread
        function SHX4_2()
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX0_3, SHX1_3
          SHX0_3 = Citizen
          SHX0_3 = SHX0_3.Wait
          SHX1_3 = 30000
          SHX0_3(SHX1_3)
          SHX1_3 = SHX2_2.source
          SHX0_3 = SHX11_1
          SHX0_3[SHX1_3] = nil
        end
        SHX3_2(SHX4_2)
        SHX3_2 = TaskFollowToOffsetOfEntity
        SHX4_2 = SHX3_1.handle
        SHX5_2 = SHX2_2.ped
        SHX6_2 = 0.0
        SHX7_2 = 0.0
        SHX8_2 = 0.0
        SHX9_2 = 7.0
        SHX10_2 = 4500
        SHX11_2 = 1.0
        SHX12_2 = false
        SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      end
      SHX3_2 = tCMG
      SHX3_2 = SHX3_2.isInGreenzone
      SHX4_2 = false
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = TriggerServerEvent
        SHX4_2 = "a6a898d91c"
        SHX5_2 = SHX2_2.source
        SHX3_2(SHX4_2, SHX5_2)
      end
    end
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = 5000
    SHX2_2(SHX3_2)
  end
end
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getClosestVehicle
  SHX1_2 = 5.0
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 then
    SHX1_2 = notify
    SHX2_2 = "~r~No nearby vehicle to search"
    SHX1_2(SHX2_2)
    return
  end
  SHX1_2 = NetworkGetNetworkIdFromEntity
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 > 0 then
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "ca94823c64"
    SHX4_2 = SHX1_2
    SHX2_2(SHX3_2, SHX4_2)
  end
end
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.getNearestVehicle
  SHX1_2 = 7.0
  SHX0_2 = SHX0_2(SHX1_2)
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.Trace
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  if -1 ~= SHX0_2 and nil ~= SHX0_2 and 0 ~= SHX0_2 then
    SHX1_2 = ClearPedTasks
    SHX2_2 = SHX3_1.handle
    SHX1_2(SHX2_2)
    SHX1_2 = GetEntityBoneIndexByName
    SHX2_2 = SHX0_2
    SHX3_2 = "seat_dside_r"
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    if -1 == SHX1_2 then
      SHX2_2 = GetEntityBoneIndexByName
      SHX3_2 = SHX0_2
      SHX4_2 = "seat_pside_f"
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
      SHX1_2 = SHX2_2
    end
    SHX2_2 = SHX1_1.Sit
    SHX3_1.currentAction = SHX2_2
    SHX2_2 = SHX7_1
    SHX2_2()
    SHX2_2 = AttachEntityToEntity
    SHX3_2 = SHX3_1.handle
    SHX4_2 = SHX0_2
    SHX5_2 = SHX1_2
    SHX6_2 = 0.0
    SHX7_2 = -0.1
    SHX8_2 = 0.4
    SHX9_2 = 0.0
    SHX10_2 = 0.0
    SHX11_2 = 0.0
    SHX12_2 = false
    SHX13_2 = false
    SHX14_2 = false
    SHX15_2 = true
    SHX16_2 = 0
    SHX17_2 = true
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
    SHX3_1.insideVehicle = true
    SHX3_1.insideVehicleHandle = SHX0_2
    SHX2_2 = SHX8_1
    SHX3_2 = SHX2_1.Info
    SHX4_2 = "Dog is now inside the vehicle"
    SHX2_2(SHX3_2, SHX4_2)
  else
    SHX1_2 = SHX8_1
    SHX2_2 = SHX2_1.Error
    SHX3_2 = "No nearby vehicle found."
    SHX1_2(SHX2_2, SHX3_2)
  end
end
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = IsPedInAnyVehicle
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = true
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = SHX8_1
    SHX1_2 = SHX2_1.Error
    SHX2_2 = "You must be outside the vehicle."
    SHX0_2(SHX1_2, SHX2_2)
  else
    SHX0_2 = ClearPedTasks
    SHX1_2 = SHX3_1.handle
    SHX0_2(SHX1_2)
    SHX0_2 = GetEntityCoords
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerPed
    SHX1_2 = SHX1_2()
    SHX2_2 = true
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    SHX1_2 = DetachEntity
    SHX2_2 = SHX3_1.handle
    SHX3_2 = true
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = SetEntityCoords
    SHX2_2 = SHX3_1.handle
    SHX3_2 = SHX0_2.x
    SHX4_2 = SHX0_2.y
    SHX5_2 = SHX0_2.z
    SHX5_2 = SHX5_2 - 1.0
    SHX6_2 = false
    SHX7_2 = false
    SHX8_2 = false
    SHX9_2 = false
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    SHX3_1.insideVehicle = false
    SHX3_1.insideVehicleHandle = 0
    SHX1_2 = SHX1_1.Follow
    SHX3_1.currentAction = SHX1_2
    SHX1_2 = SHX5_1
    SHX1_2()
  end
end
SHX16_1 = {}
SHX17_1 = "Shepherd"
SHX18_1 = "Husky"
SHX16_1[1] = SHX17_1
SHX16_1[2] = SHX18_1
SHX17_1 = {}
SHX18_1 = "a_c_shepherd"
SHX19_1 = "a_c_husky"
SHX17_1[1] = SHX18_1
SHX17_1[2] = SHX19_1
SHX18_1 = {}
SHX18_1.breed = 1
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = GetResourceKvpString
  SHX1_2 = "cmg_policedog_customisations"
  SHX0_2 = SHX0_2(SHX1_2)
  if nil ~= SHX0_2 and "" ~= SHX0_2 and "null" ~= SHX0_2 then
    SHX1_2 = json
    SHX1_2 = SHX1_2.decode
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX3_2 = SHX18_1.breed
      SHX2_2 = SHX16_1
      SHX2_2 = SHX2_2[SHX3_2]
      SHX3_2 = SHX1_2[SHX2_2]
      if nil ~= SHX3_2 then
        SHX3_2 = SHX1_2[SHX2_2]
        return SHX3_2
      end
    end
  end
  SHX1_2 = {}
  SHX1_2.furColour = 0
  SHX1_2.vestColour = 0
  SHX1_2.vestDesign = 0
  return SHX1_2
end
function SHX20_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = IsPedInAnyPoliceVehicle
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if not SHX3_2 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.loadModel
    SHX4_2 = SHX0_2
    SHX3_2 = SHX3_2(SHX4_2)
    if not SHX3_2 then
      return
    end
    SHX4_2 = GetOffsetFromEntityInWorldCoords
    SHX5_2 = SHX2_2
    SHX6_2 = 0.0
    SHX7_2 = 1.0
    SHX8_2 = 0.0
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX5_2 = GetEntityHeading
    SHX6_2 = SHX2_2
    SHX5_2 = SHX5_2(SHX6_2)
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.requestEntitySpawn
    SHX7_2 = "policedog_ped"
    SHX8_2 = SHX4_2
    SHX9_2 = SHX3_2
    SHX6_2(SHX7_2, SHX8_2, SHX9_2)
    SHX6_2 = CreatePed
    SHX7_2 = 28
    SHX8_2 = SHX3_2
    SHX9_2 = SHX4_2.x
    SHX10_2 = SHX4_2.y
    SHX11_2 = SHX4_2.z
    SHX12_2 = SHX5_2
    SHX13_2 = true
    SHX14_2 = true
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX3_1.handle = SHX6_2
    SHX6_2 = SetModelAsNoLongerNeeded
    SHX7_2 = SHX3_2
    SHX6_2(SHX7_2)
    SHX6_2 = Wait
    SHX7_2 = 2000
    SHX6_2(SHX7_2)
    SHX6_2 = DoesEntityExist
    SHX7_2 = SHX3_1.handle
    SHX6_2 = SHX6_2(SHX7_2)
    if SHX6_2 then
      SHX3_1.active = true
      SHX6_2 = SetBlockingOfNonTemporaryEvents
      SHX7_2 = SHX3_1.handle
      SHX8_2 = true
      SHX6_2(SHX7_2, SHX8_2)
      SHX6_2 = SetPedMoveRateOverride
      SHX7_2 = SHX3_1.handle
      SHX8_2 = 60.0
      SHX6_2(SHX7_2, SHX8_2)
      SHX6_2 = GiveWeaponToPed
      SHX7_2 = SHX3_1.handle
      SHX8_2 = -100946242
      SHX9_2 = 200
      SHX10_2 = true
      SHX11_2 = true
      SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
      SHX6_2 = SetCanAttackFriendly
      SHX7_2 = SHX3_1.handle
      SHX8_2 = false
      SHX9_2 = false
      SHX6_2(SHX7_2, SHX8_2, SHX9_2)
      SHX6_2 = {}
      SHX7_2 = 0
      SHX8_2 = 3
      SHX9_2 = 5
      SHX10_2 = 46
      SHX6_2[1] = SHX7_2
      SHX6_2[2] = SHX8_2
      SHX6_2[3] = SHX9_2
      SHX6_2[4] = SHX10_2
      SHX7_2 = pairs
      SHX8_2 = SHX6_2
      SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
      for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
        SHX13_2 = SetPedFleeAttributes
        SHX14_2 = SHX3_1.handle
        SHX15_2 = SHX12_2
        SHX16_2 = true
        SHX13_2(SHX14_2, SHX15_2, SHX16_2)
      end
      SHX7_2 = ClearPedTasks
      SHX8_2 = SHX3_1.handle
      SHX7_2(SHX8_2)
      SHX7_2 = SHX5_1
      SHX7_2()
      SHX7_2 = AddBlipForEntity
      SHX8_2 = SHX3_1.handle
      SHX7_2 = SHX7_2(SHX8_2)
      SHX8_2 = 61
      SHX9_2 = SetBlipSprite
      SHX10_2 = SHX7_2
      SHX11_2 = 526
      SHX9_2(SHX10_2, SHX11_2)
      SHX9_2 = SetBlipColour
      SHX10_2 = SHX7_2
      SHX11_2 = SHX8_2
      SHX9_2(SHX10_2, SHX11_2)
      SHX9_2 = SetBlipScale
      SHX10_2 = SHX7_2
      SHX11_2 = 1.0
      SHX9_2(SHX10_2, SHX11_2)
      SHX9_2 = BeginTextCommandSetBlipName
      SHX10_2 = "STRING"
      SHX9_2(SHX10_2)
      SHX9_2 = AddTextComponentSubstringPlayerName
      SHX10_2 = "Police Dog"
      SHX9_2(SHX10_2)
      SHX9_2 = EndTextCommandSetBlipName
      SHX10_2 = SHX7_2
      SHX9_2(SHX10_2)
      SHX9_2 = SetBlipAsFriendly
      SHX10_2 = SHX7_2
      SHX11_2 = true
      SHX9_2(SHX10_2, SHX11_2)
      SHX9_2 = SetBlipBright
      SHX10_2 = SHX7_2
      SHX11_2 = true
      SHX9_2(SHX10_2, SHX11_2)
      SHX9_2 = SHX19_1
      SHX9_2 = SHX9_2()
      SHX10_2 = SetPedComponentVariation
      SHX11_2 = SHX3_1.handle
      SHX12_2 = 0
      SHX13_2 = 0
      SHX14_2 = SHX9_2.furColour
      SHX15_2 = 0
      SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
      SHX10_2 = SetPedComponentVariation
      SHX11_2 = SHX3_1.handle
      SHX12_2 = 3
      SHX13_2 = 0
      SHX14_2 = SHX9_2.vestColour
      SHX15_2 = 0
      SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
      SHX10_2 = SetPedComponentVariation
      SHX11_2 = SHX3_1.handle
      SHX12_2 = 8
      SHX13_2 = 0
      SHX14_2 = SHX9_2.vestDesign
      SHX15_2 = 0
      SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
      SHX10_2 = SHX5_1
      SHX10_2()
      SHX10_2 = SHX8_1
      SHX11_2 = SHX2_1.Success
      SHX12_2 = "Police Dog has been created. Breed: "
      SHX13_2 = SHX1_2
      SHX12_2 = SHX12_2 .. SHX13_2
      SHX10_2(SHX11_2, SHX12_2)
      SHX10_2 = TriggerServerEvent
      SHX11_2 = "9c88f7070e"
      SHX12_2 = "Created a new police dog"
      SHX10_2(SHX11_2, SHX12_2)
    end
  end
end
function SHX21_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = DeleteEntity
  SHX1_2 = SHX3_1.handle
  SHX0_2(SHX1_2)
  SHX3_1.active = false
  SHX3_1.handle = 0
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "9c88f7070e"
  SHX2_2 = "Deleted dog"
  SHX0_2(SHX1_2, SHX2_2)
end
SHX22_1 = RegisterNetEvent
SHX23_1 = "21403d7958"
function SHX24_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = SetPedToRagdoll
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = 12000
  SHX3_2 = 12000
  SHX4_2 = 0
  SHX5_2 = false
  SHX6_2 = false
  SHX7_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX0_2 = SHX8_1
  SHX1_2 = "~y~~h~Alert~h~~s~: "
  SHX2_2 = "You have been bitten by a police dog."
  SHX1_2 = SHX1_2 .. SHX2_2
  SHX0_2(SHX1_2)
end
SHX22_1(SHX23_1, SHX24_1)
SHX22_1 = nil
SHX23_1 = RegisterNetEvent
SHX24_1 = "3d3cfdde5b"
function SHX25_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX3_1.active
  if SHX0_2 then
    SHX0_2 = SHX3_1.currentAction
    SHX1_2 = SHX1_1.Attack
    if SHX0_2 ~= SHX1_2 then
      SHX0_2 = SHX22_1
      SHX0_2()
    end
  end
end
SHX23_1(SHX24_1, SHX25_1)
function SHX23_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = {}
  SHX2_2 = GetResourceKvpString
  SHX3_2 = "cmg_policedog_customisations"
  SHX2_2 = SHX2_2(SHX3_2)
  if nil ~= SHX2_2 and "" ~= SHX2_2 and "null" ~= SHX2_2 then
    SHX3_2 = json
    SHX3_2 = SHX3_2.decode
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    SHX1_2 = SHX3_2 or SHX1_2
    if not SHX3_2 then
      SHX3_2 = {}
      SHX1_2 = SHX3_2
    end
  end
  SHX4_2 = SHX18_1.breed
  SHX3_2 = SHX16_1
  SHX3_2 = SHX3_2[SHX4_2]
  SHX1_2[SHX3_2] = SHX0_2
  SHX4_2 = SetResourceKvp
  SHX5_2 = "cmg_policedog_customisations"
  SHX6_2 = json
  SHX6_2 = SHX6_2.encode
  SHX7_2 = SHX1_2
  SHX6_2, SHX7_2 = SHX6_2(SHX7_2)
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
end
SHX24_1 = 0
SHX25_1 = RageUI
SHX25_1 = SHX25_1.CreateWhile
SHX26_1 = 1.0
SHX27_1 = RMenu
SHX28_1 = SHX27_1
SHX27_1 = SHX27_1.Get
SHX29_1 = "policedog"
SHX30_1 = "main"
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
  SHX3_2 = "policedog"
  SHX4_2 = "main"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3
    SHX0_3 = SHX0_1
    if false == SHX0_3 then
      SHX0_3 = true
      SHX0_1 = SHX0_3
      SHX0_3 = SHX8_1
      SHX1_3 = SHX2_1.Info
      SHX2_3 = "Press INSERT to attack another player without having the menu open."
      SHX0_3(SHX1_3, SHX2_3)
    end
    SHX0_3 = SHX3_1.active
    if not SHX0_3 then
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.List
      SHX1_3 = "Select Breed"
      SHX2_3 = SHX16_1
      SHX3_3 = SHX18_1.breed
      SHX4_3 = nil
      SHX5_3 = {}
      SHX6_3 = true
      function SHX7_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX4_4, SHX5_4
        if SHX2_4 then
          SHX4_4 = Citizen
          SHX4_4 = SHX4_4.Trace
          SHX5_4 = SHX16_1
          SHX5_4 = SHX5_4[SHX3_4]
          SHX4_4(SHX5_4)
        end
        if SHX1_4 then
          SHX18_1.breed = SHX3_4
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Button
      SHX1_3 = "Create Dog"
      SHX2_3 = "Create a police dog"
      SHX3_3 = true
      function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4, SHX6_4
        if SHX2_4 then
          SHX3_4 = GetGameTimer
          SHX3_4 = SHX3_4()
          SHX4_4 = SHX24_1
          SHX3_4 = SHX3_4 - SHX4_4
          SHX4_4 = 10000
          if SHX3_4 > SHX4_4 then
            SHX3_4 = GetGameTimer
            SHX3_4 = SHX3_4()
            SHX24_1 = SHX3_4
            SHX3_4 = SHX20_1
            SHX5_4 = SHX18_1.breed
            SHX4_4 = SHX17_1
            SHX4_4 = SHX4_4[SHX5_4]
            SHX6_4 = SHX18_1.breed
            SHX5_4 = SHX16_1
            SHX5_4 = SHX5_4[SHX6_4]
            SHX3_4(SHX4_4, SHX5_4)
          else
            SHX3_4 = notify
            SHX4_4 = "~r~Please wait 10 seconds before spawning another dog."
            SHX3_4(SHX4_4)
          end
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
    else
      SHX0_3 = SHX3_1.insideVehicle
      if not SHX0_3 then
        SHX0_3 = SHX3_1.currentAction
        SHX1_3 = SHX1_1.Follow
        if SHX0_3 ~= SHX1_3 then
          SHX0_3 = RageUI
          SHX0_3 = SHX0_3.Button
          SHX1_3 = "Follow"
          SHX2_3 = "Dog will follow you"
          SHX3_3 = true
          function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX3_4, SHX4_4, SHX5_4
            if SHX2_4 then
              SHX3_4 = SHX8_1
              SHX4_4 = SHX2_1.Info
              SHX5_4 = "Dog is now following."
              SHX3_4(SHX4_4, SHX5_4)
              SHX3_4 = SHX5_1
              SHX3_4()
            end
          end
          SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
        end
        SHX0_3 = SHX3_1.currentAction
        SHX1_3 = SHX1_1.Stay
        if SHX0_3 ~= SHX1_3 then
          SHX0_3 = RageUI
          SHX0_3 = SHX0_3.Button
          SHX1_3 = "Stay"
          SHX2_3 = "Dog will stay"
          SHX3_3 = true
          function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX3_4, SHX4_4, SHX5_4
            if SHX2_4 then
              SHX3_4 = SHX8_1
              SHX4_4 = SHX2_1.Info
              SHX5_4 = "Dog is now staying."
              SHX3_4(SHX4_4, SHX5_4)
              SHX3_4 = SHX6_1
              SHX3_4()
            end
          end
          SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
        end
        SHX0_3 = SHX3_1.currentAction
        SHX1_3 = SHX1_1.Sit
        if SHX0_3 ~= SHX1_3 then
          SHX0_3 = RageUI
          SHX0_3 = SHX0_3.Button
          SHX1_3 = "Sit"
          SHX2_3 = "Dog will sit"
          SHX3_3 = true
          function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX3_4, SHX4_4, SHX5_4
            if SHX2_4 then
              SHX3_4 = SHX8_1
              SHX4_4 = SHX2_1.Info
              SHX5_4 = "Dog is now sitting."
              SHX3_4(SHX4_4, SHX5_4)
              SHX3_4 = SHX7_1
              SHX3_4()
            end
          end
          SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
        end
        SHX0_3 = SHX3_1.currentAction
        SHX1_3 = SHX1_1.Attack
        if SHX0_3 ~= SHX1_3 then
          SHX0_3 = RageUI
          SHX0_3 = SHX0_3.Button
          SHX1_3 = "Attack"
          SHX2_3 = "Begin a dog attack"
          SHX3_3 = true
          function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX3_4
            if SHX2_4 then
              SHX3_4 = SHX22_1
              SHX3_4()
            end
          end
          SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
        else
          SHX0_3 = RageUI
          SHX0_3 = SHX0_3.Button
          SHX1_3 = "Stop Attack"
          SHX2_3 = "Stop the current attack"
          SHX3_3 = true
          function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX3_4, SHX4_4, SHX5_4
            if SHX2_4 then
              SHX3_4 = SHX8_1
              SHX4_4 = SHX2_1.Alert
              SHX5_4 = "The attack has been cancelled."
              SHX3_4(SHX4_4, SHX5_4)
              SHX3_4 = ClearPedTasks
              SHX4_4 = SHX3_1.handle
              SHX3_4(SHX4_4)
              SHX3_4 = SHX1_1.Follow
              SHX3_1.currentAction = SHX3_4
              SHX3_4 = SHX8_1
              SHX4_4 = SHX2_1.Info
              SHX5_4 = "Dog is now following."
              SHX3_4(SHX4_4, SHX5_4)
              SHX3_4 = SHX5_1
              SHX3_4()
            end
          end
          SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
        end
      else
        SHX0_3 = RageUI
        SHX0_3 = SHX0_3.Button
        SHX1_3 = "Remove from vehicle"
        SHX2_3 = "Remove the dog from the vehicle"
        SHX3_3 = true
        function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX3_4, SHX4_4, SHX5_4
          if SHX2_4 then
            SHX3_4 = SHX8_1
            SHX4_4 = SHX2_1.Info
            SHX5_4 = "Dog is now out of the vehicle."
            SHX3_4(SHX4_4, SHX5_4)
            SHX3_4 = SHX15_1
            SHX3_4()
          end
        end
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
      end
      SHX0_3 = SHX3_1.insideVehicle
      if not SHX0_3 then
        SHX0_3 = RageUI
        SHX0_3 = SHX0_3.Button
        SHX1_3 = "Put in vehicle"
        SHX2_3 = "Put the dog in a vehicle"
        SHX3_3 = true
        function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX3_4
          if SHX2_4 then
            SHX3_4 = SHX14_1
            SHX3_4()
          end
        end
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
        SHX0_3 = RageUI
        SHX0_3 = SHX0_3.Button
        SHX1_3 = "Paw Trick"
        SHX2_3 = "Perform the paw trick"
        SHX3_3 = true
        function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX3_4, SHX4_4
          if SHX2_4 then
            SHX3_4 = SHX9_1
            SHX4_4 = SHX4_1.TrickPawRight
            SHX3_4(SHX4_4)
          end
        end
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
        SHX0_3 = RageUI
        SHX0_3 = SHX0_3.Button
        SHX1_3 = "Beg Trick"
        SHX2_3 = "Perform the beg trick"
        SHX3_3 = true
        function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX3_4, SHX4_4
          if SHX2_4 then
            SHX3_4 = SHX9_1
            SHX4_4 = SHX4_1.TrickBeg
            SHX3_4(SHX4_4)
          end
        end
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
        SHX0_3 = RageUI
        SHX0_3 = SHX0_3.Button
        SHX1_3 = "Search Nearby"
        SHX2_3 = "Dog will follow and sniff close pedestrians"
        SHX3_3 = true
        function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX3_4, SHX4_4, SHX5_4
          if SHX2_4 then
            SHX3_4 = SHX8_1
            SHX4_4 = SHX2_1.Info
            SHX5_4 = "Dog is now searching."
            SHX3_4(SHX4_4, SHX5_4)
            SHX3_4 = Citizen
            SHX3_4 = SHX3_4.CreateThread
            SHX4_4 = SHX12_1
            SHX3_4(SHX4_4)
          end
        end
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
        SHX0_3 = RageUI
        SHX0_3 = SHX0_3.Button
        SHX1_3 = "Search Nearby Vehicle"
        SHX2_3 = "Dog will search the nearest vehicle. This does not include people inside vehicle."
        SHX3_3 = true
        function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX3_4, SHX4_4
          if SHX2_4 then
            SHX3_4 = Citizen
            SHX3_4 = SHX3_4.CreateThread
            SHX4_4 = SHX13_1
            SHX3_4(SHX4_4)
          end
        end
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
        SHX0_3 = RageUI
        SHX0_3 = SHX0_3.Button
        SHX1_3 = "Teleport Dog"
        SHX2_3 = "Teleport the dog to you"
        SHX3_3 = true
        function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX3_4, SHX4_4, SHX5_4
          if SHX2_4 then
            SHX3_4 = SHX8_1
            SHX4_4 = SHX2_1.Success
            SHX5_4 = "Dog has now been teleported"
            SHX3_4(SHX4_4, SHX5_4)
            SHX3_4 = SHX10_1
            SHX3_4()
          end
        end
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
        SHX0_3 = RageUI
        SHX0_3 = SHX0_3.Button
        SHX1_3 = "Change Fur Colour"
        SHX2_3 = "Cycle through colours"
        SHX3_3 = true
        function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4
          if SHX2_4 then
            SHX3_4 = GetPedTextureVariation
            SHX4_4 = SHX3_1.handle
            SHX5_4 = 0
            SHX3_4 = SHX3_4(SHX4_4, SHX5_4)
            SHX4_4 = GetNumberOfPedTextureVariations
            SHX5_4 = SHX3_1.handle
            SHX6_4 = 0
            SHX7_4 = 0
            SHX4_4 = SHX4_4(SHX5_4, SHX6_4, SHX7_4)
            SHX5_4 = SHX19_1
            SHX5_4 = SHX5_4()
            SHX6_4 = SHX3_4 + 1
            if SHX4_4 > SHX6_4 then
              SHX6_4 = SetPedComponentVariation
              SHX7_4 = SHX3_1.handle
              SHX8_4 = 0
              SHX9_4 = 0
              SHX10_4 = SHX3_4 + 1
              SHX11_4 = 0
              SHX6_4(SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4)
              SHX6_4 = SHX3_4 + 1
              SHX5_4.furColour = SHX6_4
            else
              SHX6_4 = SHX3_4 + 1
              if SHX6_4 == SHX4_4 then
                SHX6_4 = SetPedComponentVariation
                SHX7_4 = SHX3_1.handle
                SHX8_4 = 0
                SHX9_4 = 0
                SHX10_4 = 0
                SHX11_4 = 0
                SHX6_4(SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4)
                SHX5_4.furColour = 0
              end
            end
            SHX6_4 = SHX23_1
            SHX7_4 = SHX5_4
            SHX6_4(SHX7_4)
          end
        end
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
        SHX0_3 = SHX18_1.breed
        if 1 == SHX0_3 then
          SHX0_3 = RageUI
          SHX0_3 = SHX0_3.Button
          SHX1_3 = "Change Vest Colour"
          SHX2_3 = "Cycle through colours"
          SHX3_3 = true
          function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4
            if SHX2_4 then
              SHX3_4 = GetPedTextureVariation
              SHX4_4 = SHX3_1.handle
              SHX5_4 = 3
              SHX3_4 = SHX3_4(SHX4_4, SHX5_4)
              SHX4_4 = GetNumberOfPedTextureVariations
              SHX5_4 = SHX3_1.handle
              SHX6_4 = 3
              SHX7_4 = 0
              SHX4_4 = SHX4_4(SHX5_4, SHX6_4, SHX7_4)
              SHX5_4 = SHX19_1
              SHX5_4 = SHX5_4()
              SHX6_4 = SHX3_4 + 1
              if SHX4_4 > SHX6_4 then
                SHX6_4 = SetPedComponentVariation
                SHX7_4 = SHX3_1.handle
                SHX8_4 = 3
                SHX9_4 = 0
                SHX10_4 = SHX3_4 + 1
                SHX11_4 = 0
                SHX6_4(SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4)
                SHX6_4 = SHX3_4 + 1
                SHX5_4.vestColour = SHX6_4
              else
                SHX6_4 = SHX3_4 + 1
                if SHX6_4 == SHX4_4 then
                  SHX6_4 = SetPedComponentVariation
                  SHX7_4 = SHX3_1.handle
                  SHX8_4 = 3
                  SHX9_4 = 0
                  SHX10_4 = 0
                  SHX11_4 = 0
                  SHX6_4(SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4)
                  SHX5_4.vestColour = 0
                end
              end
              SHX6_4 = SHX23_1
              SHX7_4 = SHX5_4
              SHX6_4(SHX7_4)
            end
          end
          SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
          SHX0_3 = RageUI
          SHX0_3 = SHX0_3.Button
          SHX1_3 = "Change Vest Design"
          SHX2_3 = "Cycle through designs"
          SHX3_3 = true
          function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4
            if SHX2_4 then
              SHX3_4 = GetPedTextureVariation
              SHX4_4 = SHX3_1.handle
              SHX5_4 = 8
              SHX3_4 = SHX3_4(SHX4_4, SHX5_4)
              SHX4_4 = GetNumberOfPedTextureVariations
              SHX5_4 = SHX3_1.handle
              SHX6_4 = 8
              SHX7_4 = 0
              SHX4_4 = SHX4_4(SHX5_4, SHX6_4, SHX7_4)
              SHX5_4 = SHX19_1
              SHX5_4 = SHX5_4()
              SHX6_4 = SHX3_4 + 1
              if SHX4_4 > SHX6_4 then
                SHX6_4 = SetPedComponentVariation
                SHX7_4 = SHX3_1.handle
                SHX8_4 = 8
                SHX9_4 = 0
                SHX10_4 = SHX3_4 + 1
                SHX11_4 = 0
                SHX6_4(SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4)
                SHX6_4 = SHX3_4 + 1
                SHX5_4.vestDesign = SHX6_4
              else
                SHX6_4 = SHX3_4 + 1
                if SHX6_4 == SHX4_4 then
                  SHX6_4 = SetPedComponentVariation
                  SHX7_4 = SHX3_1.handle
                  SHX8_4 = 8
                  SHX9_4 = 0
                  SHX10_4 = 0
                  SHX11_4 = 0
                  SHX6_4(SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4)
                  SHX5_4.vestDesign = 0
                end
              end
              SHX6_4 = SHX23_1
              SHX7_4 = SHX5_4
              SHX6_4(SHX7_4)
            end
          end
          SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
        end
        SHX0_3 = RageUI
        SHX0_3 = SHX0_3.Button
        SHX1_3 = "Delete Dog"
        SHX2_3 = "Delete the dog"
        SHX3_3 = true
        function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX3_4, SHX4_4, SHX5_4
          if SHX2_4 then
            SHX3_4 = SHX8_1
            SHX4_4 = SHX2_1.Success
            SHX5_4 = "Dog has now been deleted."
            SHX3_4(SHX4_4, SHX5_4)
            SHX3_4 = SHX21_1
            SHX3_4()
          end
        end
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
      else
      end
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
function SHX25_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = BeginTextCommandScaleformString
  SHX2_2 = "STRING"
  SHX1_2(SHX2_2)
  SHX1_2 = AddTextComponentSubstringKeyboardDisplay
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = EndTextCommandScaleformString
  SHX1_2()
end
ButtonMessage = SHX25_1
function SHX25_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = _ENV
  SHX2_2 = "ScaleformMovieMethodAddParamPlayerNameString"
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
Button = SHX25_1
SHX25_1 = CMG
function SHX26_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = RequestScaleformMovie
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  while true do
    SHX2_2 = HasScaleformMovieLoaded
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      break
    end
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
  SHX2_2 = BeginScaleformMovieMethod
  SHX3_2 = SHX1_2
  SHX4_2 = "CLEAR_ALL"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = EndScaleformMovieMethod
  SHX2_2()
  SHX2_2 = BeginScaleformMovieMethod
  SHX3_2 = SHX1_2
  SHX4_2 = "SET_CLEAR_SPACE"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = ScaleformMovieMethodAddParamInt
  SHX3_2 = 200
  SHX2_2(SHX3_2)
  SHX2_2 = EndScaleformMovieMethod
  SHX2_2()
  SHX2_2 = SHX3_1.isAttacking
  if SHX2_2 then
    SHX2_2 = BeginScaleformMovieMethod
    SHX3_2 = SHX1_2
    SHX4_2 = "SET_DATA_SLOT"
    SHX2_2(SHX3_2, SHX4_2)
    SHX2_2 = ScaleformMovieMethodAddParamInt
    SHX3_2 = 1
    SHX2_2(SHX3_2)
    SHX2_2 = Button
    SHX3_2 = GetControlInstructionalButton
    SHX4_2 = 1
    SHX5_2 = 178
    SHX6_2 = true
    SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    SHX2_2 = ButtonMessage
    SHX3_2 = "Cancel Attack"
    SHX2_2(SHX3_2)
    SHX2_2 = EndScaleformMovieMethod
    SHX2_2()
  else
    SHX2_2 = BeginScaleformMovieMethod
    SHX3_2 = SHX1_2
    SHX4_2 = "SET_DATA_SLOT"
    SHX2_2(SHX3_2, SHX4_2)
    SHX2_2 = ScaleformMovieMethodAddParamInt
    SHX3_2 = 0
    SHX2_2(SHX3_2)
    SHX2_2 = Button
    SHX3_2 = GetControlInstructionalButton
    SHX4_2 = 2
    SHX5_2 = 191
    SHX6_2 = true
    SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    SHX2_2 = ButtonMessage
    SHX3_2 = "Select Target"
    SHX2_2(SHX3_2)
    SHX2_2 = EndScaleformMovieMethod
    SHX2_2()
    SHX2_2 = BeginScaleformMovieMethod
    SHX3_2 = SHX1_2
    SHX4_2 = "SET_DATA_SLOT"
    SHX2_2(SHX3_2, SHX4_2)
    SHX2_2 = ScaleformMovieMethodAddParamInt
    SHX3_2 = 1
    SHX2_2(SHX3_2)
    SHX2_2 = Button
    SHX3_2 = GetControlInstructionalButton
    SHX4_2 = 1
    SHX5_2 = 178
    SHX6_2 = true
    SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    SHX2_2 = ButtonMessage
    SHX3_2 = "Cancel Attack"
    SHX2_2(SHX3_2)
    SHX2_2 = EndScaleformMovieMethod
    SHX2_2()
  end
  SHX2_2 = BeginScaleformMovieMethod
  SHX3_2 = SHX1_2
  SHX4_2 = "DRAW_INSTRUCTIONAL_BUTTONS"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = EndScaleformMovieMethod
  SHX2_2()
  SHX2_2 = BeginScaleformMovieMethod
  SHX3_2 = SHX1_2
  SHX4_2 = "SET_BACKGROUND_COLOUR"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = ScaleformMovieMethodAddParamInt
  SHX3_2 = 0
  SHX2_2(SHX3_2)
  SHX2_2 = ScaleformMovieMethodAddParamInt
  SHX3_2 = 0
  SHX2_2(SHX3_2)
  SHX2_2 = ScaleformMovieMethodAddParamInt
  SHX3_2 = 0
  SHX2_2(SHX3_2)
  SHX2_2 = ScaleformMovieMethodAddParamInt
  SHX3_2 = 80
  SHX2_2(SHX3_2)
  SHX2_2 = EndScaleformMovieMethod
  SHX2_2()
  return SHX1_2
end
SHX25_1.setupDogScaleform = SHX26_1
function SHX25_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = {}
  SHX2_2 = GetGameTimer
  SHX2_2 = SHX2_2()
  SHX2_2 = SHX2_2 / 200
  SHX3_2 = math
  SHX3_2 = SHX3_2.floor
  SHX4_2 = math
  SHX4_2 = SHX4_2.sin
  SHX5_2 = SHX2_2 * SHX0_2
  SHX5_2 = SHX5_2 + 0
  SHX4_2 = SHX4_2(SHX5_2)
  SHX4_2 = SHX4_2 * 127
  SHX4_2 = SHX4_2 + 128
  SHX3_2 = SHX3_2(SHX4_2)
  SHX1_2.r = SHX3_2
  SHX3_2 = math
  SHX3_2 = SHX3_2.floor
  SHX4_2 = math
  SHX4_2 = SHX4_2.sin
  SHX5_2 = SHX2_2 * SHX0_2
  SHX5_2 = SHX5_2 + 2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX4_2 = SHX4_2 * 127
  SHX4_2 = SHX4_2 + 128
  SHX3_2 = SHX3_2(SHX4_2)
  SHX1_2.g = SHX3_2
  SHX3_2 = math
  SHX3_2 = SHX3_2.floor
  SHX4_2 = math
  SHX4_2 = SHX4_2.sin
  SHX5_2 = SHX2_2 * SHX0_2
  SHX5_2 = SHX5_2 + 4
  SHX4_2 = SHX4_2(SHX5_2)
  SHX4_2 = SHX4_2 * 127
  SHX4_2 = SHX4_2 + 128
  SHX3_2 = SHX3_2(SHX4_2)
  SHX1_2.b = SHX3_2
  return SHX1_2
end
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.CreateThread
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3, SHX27_3, SHX28_3, SHX29_3
    SHX0_3 = SHX1_1.Attack
    SHX3_1.currentAction = SHX0_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.setupDogScaleform
    SHX1_3 = "instructional_buttons"
    SHX0_3 = SHX0_3(SHX1_3)
    SHX1_3 = SHX8_1
    SHX2_3 = SHX2_1.Info
    SHX3_3 = "Aim at the ~b~target ~s~and press ENTER to begin the attack."
    SHX1_3(SHX2_3, SHX3_3)
    while true do
      SHX1_3 = SHX3_1.currentAction
      SHX2_3 = SHX1_1.Attack
      if SHX1_3 == SHX2_3 then
        SHX1_3 = GetEntityPlayerIsFreeAimingAt
        SHX2_3 = PlayerId
        SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3, SHX27_3, SHX28_3, SHX29_3 = SHX2_3()
        SHX1_3, SHX2_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3, SHX27_3, SHX28_3, SHX29_3)
        if SHX1_3 then
          SHX3_3 = IsEntityAPed
          SHX4_3 = SHX2_3
          SHX3_3 = SHX3_3(SHX4_3)
          if SHX3_3 then
            SHX3_3 = SHX3_1.handle
            if SHX2_3 ~= SHX3_3 then
              SHX3_3 = DrawScaleformMovieFullscreen
              SHX4_3 = SHX0_3
              SHX5_3 = 255
              SHX6_3 = 255
              SHX7_3 = 255
              SHX8_3 = 255
              SHX9_3 = 0
              SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
              SHX3_3 = GetEntityCoords
              SHX4_3 = SHX2_3
              SHX5_3 = true
              SHX3_3 = SHX3_3(SHX4_3, SHX5_3)
              SHX4_3 = SHX25_1
              SHX5_3 = 0.5
              SHX4_3 = SHX4_3(SHX5_3)
              SHX5_3 = DrawMarker
              SHX6_3 = 1
              SHX7_3 = SHX3_3.x
              SHX8_3 = SHX3_3.y
              SHX9_3 = SHX3_3.z
              SHX9_3 = SHX9_3 - 1.02
              SHX10_3 = 0
              SHX11_3 = 0
              SHX12_3 = 0
              SHX13_3 = 0
              SHX14_3 = 0
              SHX15_3 = 0
              SHX16_3 = 0.7
              SHX17_3 = 0.7
              SHX18_3 = 1.5
              SHX19_3 = SHX4_3.r
              SHX20_3 = SHX4_3.g
              SHX21_3 = SHX4_3.b
              SHX22_3 = 200
              SHX23_3 = false
              SHX24_3 = false
              SHX25_3 = 2
              SHX26_3 = false
              SHX27_3 = nil
              SHX28_3 = nil
              SHX29_3 = false
              SHX5_3(SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3, SHX27_3, SHX28_3, SHX29_3)
              SHX5_3 = IsControlJustPressed
              SHX6_3 = 1
              SHX7_3 = 18
              SHX5_3 = SHX5_3(SHX6_3, SHX7_3)
              if SHX5_3 then
                SHX5_3 = SetCanAttackFriendly
                SHX6_3 = SHX3_1.handle
                SHX7_3 = true
                SHX8_3 = true
                SHX5_3(SHX6_3, SHX7_3, SHX8_3)
                SHX5_3 = TaskCombatPed
                SHX6_3 = SHX3_1.handle
                SHX7_3 = SHX2_3
                SHX8_3 = 0
                SHX9_3 = 16
                SHX5_3(SHX6_3, SHX7_3, SHX8_3, SHX9_3)
                SHX3_1.isAttacking = true
                SHX5_3 = CMG
                SHX5_3 = SHX5_3.setupDogScaleform
                SHX6_3 = "instructional_buttons"
                SHX5_3 = SHX5_3(SHX6_3)
                SHX0_3 = SHX5_3
                SHX5_3 = SHX8_1
                SHX6_3 = SHX2_1.Info
                SHX7_3 = "Attack has started, press ~b~DEL ~s~to stop the attack."
                SHX5_3(SHX6_3, SHX7_3)
                SHX1_3 = false
                while true do
                  SHX5_3 = DrawScaleformMovieFullscreen
                  SHX6_3 = SHX0_3
                  SHX7_3 = 255
                  SHX8_3 = 255
                  SHX9_3 = 255
                  SHX10_3 = 255
                  SHX11_3 = 0
                  SHX5_3(SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
                  if false == SHX1_3 then
                    SHX5_3 = GetEntityCoords
                    SHX6_3 = SHX2_3
                    SHX7_3 = true
                    SHX5_3 = SHX5_3(SHX6_3, SHX7_3)
                    SHX6_3 = GetEntityCoords
                    SHX7_3 = SHX3_1.handle
                    SHX8_3 = true
                    SHX6_3 = SHX6_3(SHX7_3, SHX8_3)
                    SHX7_3 = SHX6_3 - SHX5_3
                    SHX7_3 = #SHX7_3
                    if SHX7_3 < 2.0 then
                      SHX8_3 = GetActivePlayers
                      SHX8_3 = SHX8_3()
                      SHX9_3 = pairs
                      SHX10_3 = SHX8_3
                      SHX9_3, SHX10_3, SHX11_3, SHX12_3 = SHX9_3(SHX10_3)
                      for SHX13_3, SHX14_3 in SHX9_3, SHX10_3, SHX11_3, SHX12_3 do
                        SHX15_3 = GetPlayerPed
                        SHX16_3 = SHX14_3
                        SHX15_3 = SHX15_3(SHX16_3)
                        if SHX2_3 == SHX15_3 then
                          SHX15_3 = GetPlayerServerId
                          SHX16_3 = SHX14_3
                          SHX15_3 = SHX15_3(SHX16_3)
                          SHX16_3 = TriggerServerEvent
                          SHX17_3 = "9c88f7070e"
                          SHX18_3 = "Instructed dog to attack ID: "
                          SHX19_3 = SHX15_3
                          SHX18_3 = SHX18_3 .. SHX19_3
                          SHX16_3(SHX17_3, SHX18_3)
                          SHX16_3 = TriggerServerEvent
                          SHX17_3 = "d033961afd"
                          SHX18_3 = SHX15_3
                          SHX16_3(SHX17_3, SHX18_3)
                          SHX1_3 = true
                          SHX16_3 = Wait
                          SHX17_3 = 1000
                          SHX16_3(SHX17_3)
                          SHX16_3 = ClearPedTasksImmediately
                          SHX17_3 = SHX3_1.handle
                          SHX16_3(SHX17_3)
                          SHX16_3 = SHX1_1.Follow
                          SHX3_1.currentAction = SHX16_3
                          SHX16_3 = SHX5_1
                          SHX16_3()
                          SHX16_3 = SHX8_1
                          SHX17_3 = SHX2_1.Alert
                          SHX18_3 = "The attack has successfully finished."
                          SHX16_3(SHX17_3, SHX18_3)
                          break
                        end
                      end
                    end
                  end
                  SHX5_3 = IsControlJustPressed
                  SHX6_3 = 1
                  SHX7_3 = 178
                  SHX5_3 = SHX5_3(SHX6_3, SHX7_3)
                  if SHX5_3 then
                    SHX5_3 = ClearPedTasksImmediately
                    SHX6_3 = SHX3_1.handle
                    SHX5_3(SHX6_3)
                    SHX5_3 = SHX8_1
                    SHX6_3 = SHX2_1.Alert
                    SHX7_3 = "You have now stopped the attack."
                    SHX5_3(SHX6_3, SHX7_3)
                    SHX5_3 = SHX1_1.Follow
                    SHX3_1.currentAction = SHX5_3
                    SHX5_3 = SHX5_1
                    SHX5_3()
                    break
                  end
                  SHX5_3 = Wait
                  SHX6_3 = 0
                  SHX5_3(SHX6_3)
                end
                SHX5_3 = SetCanAttackFriendly
                SHX6_3 = SHX3_1.handle
                SHX7_3 = false
                SHX8_3 = false
                SHX5_3(SHX6_3, SHX7_3, SHX8_3)
                SHX3_1.isAttacking = false
                break
              else
                SHX5_3 = IsControlJustPressed
                SHX6_3 = 1
                SHX7_3 = 178
                SHX5_3 = SHX5_3(SHX6_3, SHX7_3)
                if SHX5_3 then
                  SHX5_3 = SHX5_1
                  SHX5_3()
                  break
                end
              end
            end
          end
        end
      else
        break
      end
      SHX1_3 = Wait
      SHX2_3 = 0
      SHX1_3(SHX2_3)
    end
  end
  SHX0_2(SHX1_2)
end
SHX22_1 = SHX26_1
SHX26_1 = RegisterNetEvent
SHX27_1 = "f89085dfdd"
function SHX28_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX1_2 = GetPlayerFromServerId
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if -1 == SHX1_2 then
    return
  end
  SHX2_2 = GetPlayerPed
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if 0 == SHX2_2 then
    return
  end
  SHX3_2 = SHX3_1.active
  if SHX3_2 then
    SHX3_2 = DoesEntityExist
    SHX4_2 = SHX3_1.handle
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      goto SHX_LABEL_22
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_22:: outside nested blocks until all 'goto SHX_LABEL_22' can see it
  ::SHX_LABEL_22::
  SHX3_2 = SHX3_1.currentAction
  SHX4_2 = SHX1_1.SearchNearby
  if SHX3_2 ~= SHX4_2 then
    return
  end
  SHX3_2 = SHX1_1.Indicate
  SHX3_1.currentAction = SHX3_2
  SHX3_2 = notify
  SHX4_2 = "~b~Your dog starts indicating."
  SHX3_2(SHX4_2)
  SHX3_2 = ClearPedTasks
  SHX4_2 = SHX3_1.handle
  SHX3_2(SHX4_2)
  SHX3_2 = 0
  while true do
    SHX4_2 = SHX3_1.currentAction
    SHX5_2 = SHX1_1.Indicate
    if SHX4_2 ~= SHX5_2 then
      break
    end
    SHX4_2 = DoesEntityExist
    SHX5_2 = SHX2_2
    SHX4_2 = SHX4_2(SHX5_2)
    if not SHX4_2 then
      break
    end
    SHX4_2 = GetEntityCoords
    SHX5_2 = SHX2_2
    SHX6_2 = true
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
    SHX5_2 = GetEntityCoords
    SHX6_2 = SHX3_1.handle
    SHX7_2 = true
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
    SHX4_2 = SHX4_2 - SHX5_2
    SHX4_2 = #SHX4_2
    SHX5_2 = 1.5
    if SHX4_2 > SHX5_2 then
      SHX5_2 = GetScriptTaskStatus
      SHX6_2 = SHX3_1.handle
      SHX7_2 = 1056466932
      SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
      if 7 == SHX5_2 then
        SHX5_2 = TaskFollowToOffsetOfEntity
        SHX6_2 = SHX3_1.handle
        SHX7_2 = SHX2_2
        SHX8_2 = 0.0
        SHX9_2 = 0.0
        SHX10_2 = 0.0
        SHX11_2 = 7.0
        SHX12_2 = -1
        SHX13_2 = 2.0
        SHX14_2 = true
        SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
        SHX3_2 = 0
      end
    else
      SHX5_2 = GetGameTimer
      SHX5_2 = SHX5_2()
      SHX5_2 = SHX5_2 - SHX3_2
      SHX6_2 = 3500
      if SHX5_2 > SHX6_2 then
        SHX5_2 = IsEntityPlayingAnim
        SHX6_2 = SHX3_1.handle
        SHX7_2 = SHX4_1.Sit
        SHX7_2 = SHX7_2.dict
        SHX8_2 = SHX4_1.Sit
        SHX8_2 = SHX8_2.anims
        SHX8_2 = SHX8_2.base
        SHX9_2 = 3
        SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
        if not SHX5_2 then
          SHX5_2 = CMG
          SHX5_2 = SHX5_2.loadAnimDict
          SHX6_2 = SHX4_1.Sit
          SHX6_2 = SHX6_2.dict
          SHX5_2(SHX6_2)
          SHX5_2 = TaskPlayAnim
          SHX6_2 = SHX3_1.handle
          SHX7_2 = SHX4_1.Sit
          SHX7_2 = SHX7_2.dict
          SHX8_2 = SHX4_1.Sit
          SHX8_2 = SHX8_2.anims
          SHX8_2 = SHX8_2.base
          SHX9_2 = 8.0
          SHX10_2 = -8.0
          SHX11_2 = -1
          SHX12_2 = 2
          SHX13_2 = 0.0
          SHX14_2 = false
          SHX15_2 = false
          SHX16_2 = false
          SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
          SHX5_2 = RemoveAnimDict
          SHX6_2 = SHX4_1.Sit
          SHX6_2 = SHX6_2.dict
          SHX5_2(SHX6_2)
        end
      else
        SHX5_2 = GetScriptTaskStatus
        SHX6_2 = SHX3_1.handle
        SHX7_2 = -875674219
        SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
        if 7 == SHX5_2 then
          SHX5_2 = TaskTurnPedToFaceEntity
          SHX6_2 = SHX3_1.handle
          SHX7_2 = SHX2_2
          SHX8_2 = 4000
          SHX5_2(SHX6_2, SHX7_2, SHX8_2)
          SHX5_2 = GetGameTimer
          SHX5_2 = SHX5_2()
          SHX3_2 = SHX5_2
        end
      end
    end
    SHX5_2 = Citizen
    SHX5_2 = SHX5_2.Wait
    SHX6_2 = 0
    SHX5_2(SHX6_2)
  end
end
SHX26_1(SHX27_1, SHX28_1)
SHX26_1 = RegisterNetEvent
SHX27_1 = "d63a2502ab"
function SHX28_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX3_2 = SHX1_1.SearchVehicle
  SHX3_1.currentAction = SHX3_2
  SHX3_2 = NetworkDoesNetworkIdExist
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  if not SHX3_2 then
    return
  end
  SHX3_2 = NetworkGetEntityFromNetworkId
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  if 0 == SHX3_2 then
    return
  end
  SHX4_2 = SHX3_1
  if SHX4_2 then
    SHX4_2 = SHX3_1.active
    if SHX4_2 then
      SHX4_2 = DoesEntityExist
      SHX5_2 = SHX3_1.handle
      SHX4_2 = SHX4_2(SHX5_2)
      if SHX4_2 then
        goto SHX_LABEL_27
      end
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_27:: outside nested blocks until all 'goto SHX_LABEL_27' can see it
  ::SHX_LABEL_27::
  SHX4_2 = SHX8_1
  SHX5_2 = SHX2_1.Info
  SHX6_2 = "Your dog is now searching the vehicle."
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = TaskFollowToOffsetOfEntity
  SHX5_2 = SHX3_1.handle
  SHX6_2 = SHX3_2
  SHX7_2 = 0.0
  SHX8_2 = 0.0
  SHX9_2 = 0.0
  SHX10_2 = 7.0
  SHX11_2 = -1
  SHX12_2 = 2.0
  SHX13_2 = true
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX4_2 = Citizen
  SHX4_2 = SHX4_2.Wait
  SHX5_2 = 8000
  SHX4_2(SHX5_2)
  SHX4_2 = SHX3_1
  if SHX4_2 then
    SHX4_2 = SHX3_1.active
    if SHX4_2 then
      SHX4_2 = DoesEntityExist
      SHX5_2 = SHX3_1.handle
      SHX4_2 = SHX4_2(SHX5_2)
      if SHX4_2 then
        goto SHX_LABEL_58
      end
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_58:: outside nested blocks until all 'goto SHX_LABEL_58' can see it
  ::SHX_LABEL_58::
  if SHX1_2 or SHX2_2 then
    SHX4_2 = SHX8_1
    SHX5_2 = SHX2_1.Alert
    SHX6_2 = "Your dog is indicating!"
    SHX4_2(SHX5_2, SHX6_2)
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.loadAnimDict
    SHX5_2 = SHX4_1.Sit
    SHX5_2 = SHX5_2.dict
    SHX4_2(SHX5_2)
    SHX4_2 = TaskPlayAnim
    SHX5_2 = SHX3_1.handle
    SHX6_2 = SHX4_1.Sit
    SHX6_2 = SHX6_2.dict
    SHX7_2 = SHX4_1.Sit
    SHX7_2 = SHX7_2.anims
    SHX7_2 = SHX7_2.base
    SHX8_2 = 8.0
    SHX9_2 = -8.0
    SHX10_2 = -1
    SHX11_2 = 2
    SHX12_2 = 0.0
    SHX13_2 = false
    SHX14_2 = false
    SHX15_2 = false
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    SHX4_2 = RemoveAnimDict
    SHX5_2 = SHX4_1.Sit
    SHX5_2 = SHX5_2.dict
    SHX4_2(SHX5_2)
  else
    SHX4_2 = SHX8_1
    SHX5_2 = SHX2_1.Info
    SHX6_2 = "Your dog did not indicate."
    SHX4_2(SHX5_2, SHX6_2)
    SHX4_2 = ClearPedTasks
    SHX5_2 = SHX3_1.handle
    SHX4_2(SHX5_2)
  end
end
SHX26_1(SHX27_1, SHX28_1)
