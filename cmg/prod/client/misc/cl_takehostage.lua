-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1
SHX0_1 = {}
SHX1_1 = {}
SHX0_1.allowedWeapons = SHX1_1
SHX0_1.InProgress = false
SHX0_1.startTime = 0
SHX0_1.type = ""
SHX0_1.targetSrc = -1
SHX1_1 = {}
SHX1_1.animDict = "anim@gangops@hostage@"
SHX1_1.anim = "perp_idle"
SHX1_1.flag = 49
SHX0_1.agressor = SHX1_1
SHX1_1 = {}
SHX1_1.animDict = "anim@gangops@hostage@"
SHX1_1.anim = "victim_idle"
SHX1_1.attachX = -0.24
SHX1_1.attachY = 0.11
SHX1_1.attachZ = 0.0
SHX1_1.flag = 49
SHX0_1.hostage = SHX1_1
SHX1_1 = CMG
SHX1_1 = SHX1_1.loadModule
SHX2_1 = "cfg/weapons"
SHX1_1 = SHX1_1(SHX2_1)
SHX2_1 = Citizen
SHX2_1 = SHX2_1.CreateThread
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = pairs
  SHX1_2 = SHX1_1.weapons
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX5_2.class
    if "Pistol" == SHX6_2 then
      SHX6_2 = table
      SHX6_2 = SHX6_2.insert
      SHX7_2 = SHX0_1.allowedWeapons
      SHX8_2 = SHX5_2.hash
      SHX6_2(SHX7_2, SHX8_2)
    end
  end
end
SHX2_1(SHX3_1)
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX1_2 = GetActivePlayers
  SHX1_2 = SHX1_2()
  SHX2_2 = -1
  SHX3_2 = -1
  SHX4_2 = PlayerPedId
  SHX4_2 = SHX4_2()
  SHX5_2 = GetEntityCoords
  SHX6_2 = SHX4_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = ipairs
  SHX7_2 = SHX1_2
  SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
  for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
    SHX12_2 = GetPlayerPed
    SHX13_2 = SHX11_2
    SHX12_2 = SHX12_2(SHX13_2)
    if SHX12_2 ~= SHX4_2 then
      SHX13_2 = GetEntityCoords
      SHX14_2 = SHX12_2
      SHX13_2 = SHX13_2(SHX14_2)
      SHX14_2 = SHX13_2 - SHX5_2
      SHX14_2 = #SHX14_2
      if -1 == SHX2_2 or SHX2_2 > SHX14_2 then
        SHX3_2 = SHX11_2
        SHX2_2 = SHX14_2
      end
    end
  end
  if -1 ~= SHX2_2 and SHX0_2 >= SHX2_2 then
    return SHX3_2
  else
    SHX6_2 = nil
    return SHX6_2
  end
end
function SHX3_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = HasAnimDictLoaded
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = RequestAnimDict
    SHX2_2 = SHX0_2
    SHX1_2(SHX2_2)
    while true do
      SHX1_2 = HasAnimDictLoaded
      SHX2_2 = SHX0_2
      SHX1_2 = SHX1_2(SHX2_2)
      if SHX1_2 then
        break
      end
      SHX1_2 = Wait
      SHX2_2 = 0
      SHX1_2(SHX2_2)
    end
  end
  return SHX0_2
end
function SHX4_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = BeginTextCommandPrint
  SHX2_2 = "STRING"
  SHX1_2(SHX2_2)
  SHX1_2 = AddTextComponentSubstringPlayerName
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = EndTextCommandPrint
  SHX2_2 = 1000
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
end
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.isInGreenzone
  SHX1_2 = false
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    return
  end
  SHX0_2 = ClearPedSecondaryTask
  SHX1_2 = PlayerPedId
  SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX1_2()
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX0_2 = DetachEntity
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = true
  SHX3_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = false
  SHX1_2 = nil
  SHX2_2 = 1
  SHX3_2 = SHX0_1.allowedWeapons
  SHX3_2 = #SHX3_2
  SHX4_2 = 1
  for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = HasPedGotWeapon
    SHX7_2 = PlayerPedId
    SHX7_2 = SHX7_2()
    SHX8_2 = SHX0_1.allowedWeapons
    SHX8_2 = SHX8_2[SHX5_2]
    SHX9_2 = false
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
    if SHX6_2 then
      SHX6_2 = GetAmmoInPedWeapon
      SHX7_2 = PlayerPedId
      SHX7_2 = SHX7_2()
      SHX8_2 = SHX0_1.allowedWeapons
      SHX8_2 = SHX8_2[SHX5_2]
      SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
      if SHX6_2 > 0 then
        SHX0_2 = true
        SHX6_2 = SHX0_1.allowedWeapons
        SHX1_2 = SHX6_2[SHX5_2]
        break
      end
    end
  end
  if not SHX0_2 or not SHX1_2 then
    SHX2_2 = drawNativeNotification
    SHX3_2 = "You need a pistol with ammo to take a hostage at gunpoint!"
    SHX2_2(SHX3_2)
  end
  SHX2_2 = SHX0_1.InProgress
  if not SHX2_2 and SHX0_2 and SHX1_2 then
    SHX2_2 = SHX2_1
    SHX3_2 = 2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      SHX3_2 = GetPlayerServerId
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if -1 ~= SHX3_2 then
        SHX4_2 = IsEntityPlayingAnim
        SHX5_2 = GetPlayerPed
        SHX6_2 = SHX2_2
        SHX5_2 = SHX5_2(SHX6_2)
        SHX6_2 = "missminuteman_1ig_2"
        SHX7_2 = "handsup_enter"
        SHX8_2 = 3
        SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
        if SHX4_2 then
          SHX5_2 = CMG
          SHX5_2 = SHX5_2.setWeapon
          SHX6_2 = PlayerPedId
          SHX6_2 = SHX6_2()
          SHX7_2 = SHX1_2
          SHX8_2 = true
          SHX5_2(SHX6_2, SHX7_2, SHX8_2)
          SHX0_1.InProgress = true
          SHX5_2 = GetGameTimer
          SHX5_2 = SHX5_2()
          SHX0_1.startTime = SHX5_2
          SHX0_1.targetSrc = SHX3_2
          SHX5_2 = TriggerServerEvent
          SHX6_2 = "4819e496d9"
          SHX7_2 = SHX3_2
          SHX5_2(SHX6_2, SHX7_2)
          SHX0_1.type = "agressor"
        else
          SHX5_2 = drawNativeNotification
          SHX6_2 = "Player must have his hands up!"
          SHX5_2(SHX6_2)
        end
      else
        SHX4_2 = drawNativeNotification
        SHX5_2 = "~r~No one nearby to take as hostage!"
        SHX4_2(SHX5_2)
      end
    else
      SHX3_2 = drawNativeNotification
      SHX4_2 = "~r~No one nearby to take as hostage!"
      SHX3_2(SHX4_2)
    end
  end
end
SHX6_1 = RegisterCommand
SHX7_1 = "takehostage"
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX5_1
  SHX0_2()
end
SHX9_1 = false
SHX6_1(SHX7_1, SHX8_1, SHX9_1)
SHX6_1 = RegisterCommand
SHX7_1 = "th"
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX5_1
  SHX0_2()
end
SHX9_1 = false
SHX6_1(SHX7_1, SHX8_1, SHX9_1)
SHX6_1 = RegisterNetEvent
SHX7_1 = "a44fcfdd31"
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX1_2 = GetPlayerPed
  SHX2_2 = GetPlayerFromServerId
  SHX3_2 = SHX0_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2 = SHX2_2(SHX3_2)
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX0_1.InProgress = true
  SHX2_2 = AttachEntityToEntity
  SHX3_2 = PlayerPedId
  SHX3_2 = SHX3_2()
  SHX4_2 = SHX1_2
  SHX5_2 = 0
  SHX6_2 = SHX0_1.hostage
  SHX6_2 = SHX6_2.attachX
  SHX7_2 = SHX0_1.hostage
  SHX7_2 = SHX7_2.attachY
  SHX8_2 = SHX0_1.hostage
  SHX8_2 = SHX8_2.attachZ
  SHX9_2 = 0.5
  SHX10_2 = 0.5
  SHX11_2 = 0.0
  SHX12_2 = false
  SHX13_2 = false
  SHX14_2 = false
  SHX15_2 = false
  SHX16_2 = 2
  SHX17_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX0_1.type = "hostage"
end
SHX6_1(SHX7_1, SHX8_1)
SHX6_1 = RegisterNetEvent
SHX7_1 = "61a80b5faf"
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_1.InProgress = false
  SHX0_1.type = ""
  SHX0_2 = DetachEntity
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = true
  SHX3_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = SHX3_1
  SHX1_2 = "reaction@shove"
  SHX0_2(SHX1_2)
  SHX0_2 = TaskPlayAnim
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = "reaction@shove"
  SHX3_2 = "shoved_back"
  SHX4_2 = 8.0
  SHX5_2 = -8.0
  SHX6_2 = -1
  SHX7_2 = 0
  SHX8_2 = 0
  SHX9_2 = false
  SHX10_2 = false
  SHX11_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX0_2 = RemoveAnimDict
  SHX1_2 = "reaction@shove"
  SHX0_2(SHX1_2)
  SHX0_2 = Wait
  SHX1_2 = 250
  SHX0_2(SHX1_2)
  SHX0_2 = ClearPedSecondaryTask
  SHX1_2 = PlayerPedId
  SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX1_2()
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
end
SHX6_1(SHX7_1, SHX8_1)
SHX6_1 = RegisterNetEvent
SHX7_1 = "f9b5306773"
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_1.InProgress = false
  SHX0_1.type = ""
  SHX0_2 = SetEntityHealth
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = 0
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = DetachEntity
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = true
  SHX3_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = SHX3_1
  SHX1_2 = "anim@gangops@hostage@"
  SHX0_2(SHX1_2)
  SHX0_2 = TaskPlayAnim
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = "anim@gangops@hostage@"
  SHX3_2 = "victim_fail"
  SHX4_2 = 8.0
  SHX5_2 = -8.0
  SHX6_2 = -1
  SHX7_2 = 168
  SHX8_2 = 0
  SHX9_2 = false
  SHX10_2 = false
  SHX11_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX0_2 = RemoveAnimDict
  SHX1_2 = "anim@gangops@hostage@"
  SHX0_2(SHX1_2)
end
SHX6_1(SHX7_1, SHX8_1)
SHX6_1 = RegisterNetEvent
SHX7_1 = "1283193220"
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_1.InProgress = false
  SHX0_1.type = ""
  SHX0_2 = ClearPedSecondaryTask
  SHX1_2 = PlayerPedId
  SHX1_2, SHX2_2, SHX3_2 = SHX1_2()
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DetachEntity
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = true
  SHX3_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
end
SHX6_1(SHX7_1, SHX8_1)
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2 = SHX0_1.type
  if "agressor" == SHX0_2 then
    SHX0_2 = IsEntityPlayingAnim
    SHX1_2 = PlayerPedId
    SHX1_2 = SHX1_2()
    SHX2_2 = SHX0_1.agressor
    SHX2_2 = SHX2_2.animDict
    SHX3_2 = SHX0_1.agressor
    SHX3_2 = SHX3_2.anim
    SHX4_2 = 3
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
    if not SHX0_2 then
      SHX0_2 = SHX3_1
      SHX1_2 = SHX0_1.agressor
      SHX1_2 = SHX1_2.animDict
      SHX0_2(SHX1_2)
      SHX0_2 = TaskPlayAnim
      SHX1_2 = PlayerPedId
      SHX1_2 = SHX1_2()
      SHX2_2 = SHX0_1.agressor
      SHX2_2 = SHX2_2.animDict
      SHX3_2 = SHX0_1.agressor
      SHX3_2 = SHX3_2.anim
      SHX4_2 = 8.0
      SHX5_2 = -8.0
      SHX6_2 = 100000
      SHX7_2 = SHX0_1.agressor
      SHX7_2 = SHX7_2.flag
      SHX8_2 = 0
      SHX9_2 = false
      SHX10_2 = false
      SHX11_2 = false
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
      SHX0_2 = RemoveAnimDict
      SHX1_2 = SHX0_1.agressor
      SHX1_2 = SHX1_2.animDict
      SHX0_2(SHX1_2)
    end
  else
    SHX0_2 = SHX0_1.type
    if "hostage" == SHX0_2 then
      SHX0_2 = IsEntityPlayingAnim
      SHX1_2 = PlayerPedId
      SHX1_2 = SHX1_2()
      SHX2_2 = SHX0_1.hostage
      SHX2_2 = SHX2_2.animDict
      SHX3_2 = SHX0_1.hostage
      SHX3_2 = SHX3_2.anim
      SHX4_2 = 3
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
      if not SHX0_2 then
        SHX0_2 = SHX3_1
        SHX1_2 = SHX0_1.hostage
        SHX1_2 = SHX1_2.animDict
        SHX0_2(SHX1_2)
        SHX0_2 = TaskPlayAnim
        SHX1_2 = PlayerPedId
        SHX1_2 = SHX1_2()
        SHX2_2 = SHX0_1.hostage
        SHX2_2 = SHX2_2.animDict
        SHX3_2 = SHX0_1.hostage
        SHX3_2 = SHX3_2.anim
        SHX4_2 = 8.0
        SHX5_2 = -8.0
        SHX6_2 = 100000
        SHX7_2 = SHX0_1.hostage
        SHX7_2 = SHX7_2.flag
        SHX8_2 = 0
        SHX9_2 = false
        SHX10_2 = false
        SHX11_2 = false
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
        SHX0_2 = RemoveAnimDict
        SHX1_2 = SHX0_1.hostage
        SHX1_2 = SHX1_2.animDict
        SHX0_2(SHX1_2)
      end
    end
  end
end
SHX7_1 = CMG
SHX7_1 = SHX7_1.createThreadOnTick
SHX8_1 = SHX6_1
SHX9_1 = "Hostage Animation"
SHX7_1(SHX8_1, SHX9_1)
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2 = SHX0_1.type
  if "agressor" == SHX0_2 then
    SHX0_2 = DisableControlAction
    SHX1_2 = 0
    SHX2_2 = 24
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = DisableControlAction
    SHX1_2 = 0
    SHX2_2 = 25
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = DisableControlAction
    SHX1_2 = 0
    SHX2_2 = 47
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = DisableControlAction
    SHX1_2 = 0
    SHX2_2 = 58
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = DisableControlAction
    SHX1_2 = 0
    SHX2_2 = 21
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = DisablePlayerFiring
    SHX1_2 = PlayerId
    SHX1_2 = SHX1_2()
    SHX2_2 = true
    SHX0_2(SHX1_2, SHX2_2)
    SHX0_2 = SHX4_1
    SHX1_2 = "Press [G] to release, [H] to kill"
    SHX0_2(SHX1_2)
    SHX0_2 = IsEntityDead
    SHX1_2 = PlayerPedId
    SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX1_2()
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    if SHX0_2 then
      SHX0_1.type = ""
      SHX0_1.InProgress = false
      SHX0_2 = SHX3_1
      SHX1_2 = "reaction@shove"
      SHX0_2(SHX1_2)
      SHX0_2 = TaskPlayAnim
      SHX1_2 = PlayerPedId
      SHX1_2 = SHX1_2()
      SHX2_2 = "reaction@shove"
      SHX3_2 = "shove_var_a"
      SHX4_2 = 8.0
      SHX5_2 = -8.0
      SHX6_2 = -1
      SHX7_2 = 168
      SHX8_2 = 0
      SHX9_2 = false
      SHX10_2 = false
      SHX11_2 = false
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
      SHX0_2 = RemoveAnimDict
      SHX1_2 = "reaction@shove"
      SHX0_2(SHX1_2)
      SHX0_2 = TriggerServerEvent
      SHX1_2 = "61a80b5faf"
      SHX2_2 = SHX0_1.targetSrc
      SHX0_2(SHX1_2, SHX2_2)
    end
    SHX0_2 = IsDisabledControlJustPressed
    SHX1_2 = 0
    SHX2_2 = 47
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if SHX0_2 then
      SHX0_1.type = ""
      SHX0_1.InProgress = false
      SHX0_2 = SHX3_1
      SHX1_2 = "reaction@shove"
      SHX0_2(SHX1_2)
      SHX0_2 = TaskPlayAnim
      SHX1_2 = PlayerPedId
      SHX1_2 = SHX1_2()
      SHX2_2 = "reaction@shove"
      SHX3_2 = "shove_var_a"
      SHX4_2 = 8.0
      SHX5_2 = -8.0
      SHX6_2 = -1
      SHX7_2 = 168
      SHX8_2 = 0
      SHX9_2 = false
      SHX10_2 = false
      SHX11_2 = false
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
      SHX0_2 = RemoveAnimDict
      SHX1_2 = "reaction@shove"
      SHX0_2(SHX1_2)
      SHX0_2 = TriggerServerEvent
      SHX1_2 = "61a80b5faf"
      SHX2_2 = SHX0_1.targetSrc
      SHX0_2(SHX1_2, SHX2_2)
    else
      SHX0_2 = IsDisabledControlJustPressed
      SHX1_2 = 0
      SHX2_2 = 74
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
      if SHX0_2 then
        SHX0_2 = GetGameTimer
        SHX0_2 = SHX0_2()
        SHX1_2 = SHX0_1.startTime
        SHX0_2 = SHX0_2 - SHX1_2
        SHX1_2 = 4000
        if SHX0_2 > SHX1_2 then
          SHX0_1.type = ""
          SHX0_1.InProgress = false
          SHX0_2 = SHX3_1
          SHX1_2 = "anim@gangops@hostage@"
          SHX0_2(SHX1_2)
          SHX0_2 = TaskPlayAnim
          SHX1_2 = PlayerPedId
          SHX1_2 = SHX1_2()
          SHX2_2 = "anim@gangops@hostage@"
          SHX3_2 = "perp_fail"
          SHX4_2 = 8.0
          SHX5_2 = -8.0
          SHX6_2 = -1
          SHX7_2 = 168
          SHX8_2 = 0
          SHX9_2 = false
          SHX10_2 = false
          SHX11_2 = false
          SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
          SHX0_2 = RemoveAnimDict
          SHX1_2 = "anim@gangops@hostage@"
          SHX0_2(SHX1_2)
          SHX0_2 = TriggerServerEvent
          SHX1_2 = "f9b5306773"
          SHX2_2 = SHX0_1.targetSrc
          SHX0_2(SHX1_2, SHX2_2)
          SHX0_2 = Wait
          SHX1_2 = 100
          SHX0_2(SHX1_2)
          SHX0_2 = SetPedShootsAtCoord
          SHX1_2 = PlayerPedId
          SHX1_2 = SHX1_2()
          SHX2_2 = 0.0
          SHX3_2 = 0.0
          SHX4_2 = 0.0
          SHX5_2 = false
          SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
        end
      end
    end
  else
    SHX0_2 = SHX0_1.type
    if "hostage" == SHX0_2 then
      SHX0_2 = DisableControlAction
      SHX1_2 = 0
      SHX2_2 = 21
      SHX3_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      SHX0_2 = DisableControlAction
      SHX1_2 = 0
      SHX2_2 = 24
      SHX3_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      SHX0_2 = DisableControlAction
      SHX1_2 = 0
      SHX2_2 = 25
      SHX3_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      SHX0_2 = DisableControlAction
      SHX1_2 = 0
      SHX2_2 = 47
      SHX3_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      SHX0_2 = DisableControlAction
      SHX1_2 = 0
      SHX2_2 = 58
      SHX3_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      SHX0_2 = DisableControlAction
      SHX1_2 = 0
      SHX2_2 = 263
      SHX3_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      SHX0_2 = DisableControlAction
      SHX1_2 = 0
      SHX2_2 = 264
      SHX3_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      SHX0_2 = DisableControlAction
      SHX1_2 = 0
      SHX2_2 = 257
      SHX3_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      SHX0_2 = DisableControlAction
      SHX1_2 = 0
      SHX2_2 = 140
      SHX3_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      SHX0_2 = DisableControlAction
      SHX1_2 = 0
      SHX2_2 = 141
      SHX3_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      SHX0_2 = DisableControlAction
      SHX1_2 = 0
      SHX2_2 = 142
      SHX3_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      SHX0_2 = DisableControlAction
      SHX1_2 = 0
      SHX2_2 = 143
      SHX3_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      SHX0_2 = DisableControlAction
      SHX1_2 = 0
      SHX2_2 = 75
      SHX3_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      SHX0_2 = DisableControlAction
      SHX1_2 = 27
      SHX2_2 = 75
      SHX3_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      SHX0_2 = DisableControlAction
      SHX1_2 = 0
      SHX2_2 = 22
      SHX3_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      SHX0_2 = DisableControlAction
      SHX1_2 = 0
      SHX2_2 = 32
      SHX3_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      SHX0_2 = DisableControlAction
      SHX1_2 = 0
      SHX2_2 = 268
      SHX3_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      SHX0_2 = DisableControlAction
      SHX1_2 = 0
      SHX2_2 = 33
      SHX3_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      SHX0_2 = DisableControlAction
      SHX1_2 = 0
      SHX2_2 = 269
      SHX3_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      SHX0_2 = DisableControlAction
      SHX1_2 = 0
      SHX2_2 = 34
      SHX3_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      SHX0_2 = DisableControlAction
      SHX1_2 = 0
      SHX2_2 = 270
      SHX3_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      SHX0_2 = DisableControlAction
      SHX1_2 = 0
      SHX2_2 = 35
      SHX3_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      SHX0_2 = DisableControlAction
      SHX1_2 = 0
      SHX2_2 = 271
      SHX3_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    end
  end
end
SHX8_1 = CMG
SHX8_1 = SHX8_1.createThreadOnTick
SHX9_1 = SHX7_1
SHX10_1 = "Host Animations"
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = CMG
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX0_1.InProgress
  return SHX0_2
end
SHX8_1.takeHostageInProgress = SHX9_1
SHX8_1 = CMG
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX0_1.targetSrc
  SHX1_2 = SHX0_1.type
  return SHX0_2, SHX1_2
end
SHX8_1.getTakeHostagePlayerAndType = SHX9_1
