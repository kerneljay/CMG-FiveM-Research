-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1
SHX0_1 = nil
SHX1_1 = nil
SHX2_1 = {}
SHX3_1 = vector3
SHX4_1 = 448.29037475586
SHX5_1 = -988.74841308594
SHX6_1 = 30.689607620239
SHX3_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1)
SHX4_1 = vector3
SHX5_1 = -1083.501953125
SHX6_1 = -828.93444824219
SHX7_1 = 5.4578394889832
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX5_1 = vector3
SHX6_1 = 1547.6666259766
SHX7_1 = 804.66296386719
SHX8_1 = 78.839279174805
SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1)
SHX2_1[1] = SHX3_1
SHX2_1[2] = SHX4_1
SHX2_1[3] = SHX5_1
SHX2_1[4] = SHX6_1
SHX2_1[5] = SHX7_1
SHX2_1[6] = SHX8_1
SHX2_1[7] = SHX9_1
SHX2_1[8] = SHX10_1
SHX2_1[9] = SHX11_1
SHX3_1 = false
SHX4_1 = 0
function SHX5_1(SHX0_2)
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
SHX6_1 = RegisterNetEvent
SHX7_1 = "447173e10e"
function SHX8_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX3_2 = tonumber
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  if not SHX3_2 then
    SHX3_2 = 60000
  end
  SHX4_2 = 1000
  if SHX3_2 < SHX4_2 then
    SHX3_2 = 60000
  end
  SHX4_2 = FreezeEntityPosition
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.getPlayerPed
  SHX5_2 = SHX5_2()
  SHX6_2 = true
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = RequestAnimDict
  SHX5_2 = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@"
  SHX4_2(SHX5_2)
  while true do
    SHX4_2 = HasAnimDictLoaded
    SHX5_2 = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@"
    SHX4_2 = SHX4_2(SHX5_2)
    if SHX4_2 then
      break
    end
    SHX4_2 = Citizen
    SHX4_2 = SHX4_2.Wait
    SHX5_2 = 0
    SHX4_2(SHX5_2)
  end
  SHX4_2 = true
  SHX5_2 = false
  SHX6_2 = GetGameTimer
  SHX6_2 = SHX6_2()
  SHX7_2 = tCMG
  SHX7_2 = SHX7_2.notify
  SHX8_2 = "~g~Lock Picking in progress, you can cancel with [Backspace]."
  SHX7_2(SHX8_2)
  SHX7_2 = Citizen
  SHX7_2 = SHX7_2.CreateThread
  function SHX8_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3
    while true do
      SHX0_3 = SHX4_2
      if not SHX0_3 then
        break
      end
      SHX0_3 = IsEntityPlayingAnim
      SHX1_3 = CMG
      SHX1_3 = SHX1_3.getPlayerPed
      SHX1_3 = SHX1_3()
      SHX2_3 = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@"
      SHX3_3 = "machinic_loop_mechandplayer"
      SHX4_3 = 3
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
      if not SHX0_3 then
        SHX0_3 = TaskPlayAnim
        SHX1_3 = CMG
        SHX1_3 = SHX1_3.getPlayerPed
        SHX1_3 = SHX1_3()
        SHX2_3 = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@"
        SHX3_3 = "machinic_loop_mechandplayer"
        SHX4_3 = 8.0
        SHX5_3 = -8.0
        SHX6_3 = -1
        SHX7_3 = 1
        SHX8_3 = 0
        SHX9_3 = false
        SHX10_3 = false
        SHX11_3 = false
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
      end
      SHX0_3 = math
      SHX0_3 = SHX0_3.floor
      SHX1_3 = GetGameTimer
      SHX1_3 = SHX1_3()
      SHX2_3 = SHX6_2
      SHX1_3 = SHX1_3 - SHX2_3
      SHX2_3 = SHX3_2
      SHX1_3 = SHX1_3 / SHX2_3
      SHX1_3 = SHX1_3 * 100
      SHX0_3 = SHX0_3(SHX1_3)
      SHX1_3 = SHX5_1
      SHX2_3 = "~y~Lock picking - "
      SHX3_3 = SHX0_3
      SHX4_3 = "%"
      SHX2_3 = SHX2_3 .. SHX3_3 .. SHX4_3
      SHX1_3(SHX2_3)
      SHX1_3 = EnableControlAction
      SHX2_3 = 0
      SHX3_3 = 177
      SHX4_3 = true
      SHX1_3(SHX2_3, SHX3_3, SHX4_3)
      SHX1_3 = IsControlJustPressed
      SHX2_3 = 0
      SHX3_3 = 177
      SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
      if not SHX1_3 then
        SHX1_3 = IsDisabledControlJustPressed
        SHX2_3 = 0
        SHX3_3 = 177
        SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
        if not SHX1_3 then
          goto SHX_LABEL_87
        end
      end
      SHX1_3 = tCMG
      SHX1_3 = SHX1_3.notify
      SHX2_3 = "~r~Lock Picking cancelled."
      SHX1_3(SHX2_3)
      SHX1_3 = false
      SHX4_2 = SHX1_3
      SHX1_3 = true
      SHX5_2 = SHX1_3
      SHX1_3 = ClearPedTasks
      SHX2_3 = CMG
      SHX2_3 = SHX2_3.getPlayerPed
      SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3 = SHX2_3()
      SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
      SHX1_3 = FreezeEntityPosition
      SHX2_3 = CMG
      SHX2_3 = SHX2_3.getPlayerPed
      SHX2_3 = SHX2_3()
      SHX3_3 = false
      SHX1_3(SHX2_3, SHX3_3)
      SHX1_3 = TriggerServerEvent
      SHX2_3 = "ed6628790e"
      SHX1_3(SHX2_3)
      -- [FIX IF ERROR] Move ::SHX_LABEL_87:: outside nested blocks until all 'goto SHX_LABEL_87' can see it
      ::SHX_LABEL_87::
      SHX1_3 = Wait
      SHX2_3 = 0
      SHX1_3(SHX2_3)
    end
    SHX0_3 = RemoveAnimDict
    SHX1_3 = "anim@amb@clubhouse@tutorial@bkr_tut_ig3@"
    SHX0_3(SHX1_3)
  end
  SHX7_2(SHX8_2)
  SHX7_2 = GetGameTimer
  SHX7_2 = SHX7_2()
  SHX7_2 = SHX7_2 + SHX3_2
  while true do
    SHX8_2 = GetGameTimer
    SHX8_2 = SHX8_2()
    if not (SHX7_2 > SHX8_2 and SHX4_2) then
      break
    end
    SHX8_2 = Wait
    SHX9_2 = 0
    SHX8_2(SHX9_2)
  end
  SHX4_2 = false
  SHX8_2 = FreezeEntityPosition
  SHX9_2 = CMG
  SHX9_2 = SHX9_2.getPlayerPed
  SHX9_2 = SHX9_2()
  SHX10_2 = false
  SHX8_2(SHX9_2, SHX10_2)
  SHX8_2 = ClearPedTasks
  SHX9_2 = CMG
  SHX9_2 = SHX9_2.getPlayerPed
  SHX9_2, SHX10_2 = SHX9_2()
  SHX8_2(SHX9_2, SHX10_2)
  if SHX0_2 and not SHX5_2 then
    SHX8_2 = TriggerServerEvent
    SHX9_2 = "b94b3a304e"
    SHX10_2 = SHX2_2
    SHX8_2(SHX9_2, SHX10_2)
  elseif not SHX0_2 and not SHX5_2 then
    SHX8_2 = tCMG
    SHX8_2 = SHX8_2.notify
    SHX9_2 = "~r~Failed to lockpick the door."
    SHX8_2(SHX9_2)
  end
end
SHX6_1(SHX7_1, SHX8_1)
SHX6_1 = RegisterNetEvent
SHX7_1 = "58a0527703"
function SHX8_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  SHX1_1 = SHX0_2
  SHX0_1 = SHX1_2
end
SHX6_1(SHX7_1, SHX8_1)
function SHX6_1()
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
  if not SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.hasClientPermission
    SHX1_2 = "nhs.onduty.permission"
    SHX0_2 = SHX0_2(SHX1_2)
    if not SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.hasClientPermission
      SHX1_2 = "prisonguard.onduty.permission"
      SHX0_2 = SHX0_2(SHX1_2)
      if not SHX0_2 then
        SHX0_2 = CMG
        SHX0_2 = SHX0_2.hasClientPermission
        SHX1_2 = "borderforce.onduty.permission"
        SHX0_2 = SHX0_2(SHX1_2)
      end
    end
  end
  return SHX0_2
end
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.hasClientPermission
  SHX2_2 = "aa.onduty.permission"
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = false
    return SHX1_2
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.hasClientSkill
  SHX2_2 = "lockpicking_police_door_lockpick"
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = false
    return SHX1_2
  end
  SHX2_2 = SHX0_2.doorHash
  SHX1_2 = SHX0_1
  SHX1_2 = SHX1_2[SHX2_2]
  if 4 ~= SHX1_2 then
    SHX1_2 = false
    return SHX1_2
  end
  SHX1_2 = true
  return SHX1_2
end
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = SHX6_1
  SHX1_2 = SHX1_2()
  if not SHX1_2 then
    return
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerVehicle
  SHX1_2, SHX2_2 = SHX1_2()
  if 0 == SHX1_2 or not SHX2_2 then
    return
  end
  SHX3_2 = GetGameTimer
  SHX3_2 = SHX3_2()
  SHX4_2 = SHX4_1
  SHX4_2 = SHX3_2 - SHX4_2
  SHX5_2 = 2500
  if SHX4_2 < SHX5_2 then
    return
  end
  SHX4_1 = SHX3_2
  SHX4_2 = TriggerServerEvent
  SHX5_2 = "7ce743191c"
  SHX6_2 = SHX0_2.doorHash
  SHX7_2 = 5
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
end
SHX9_1 = AddEventHandler
SHX10_1 = "CMG:onClientSpawn"
function SHX11_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2
  if SHX1_2 then
    while true do
      SHX2_2 = SHX0_1
      if nil ~= SHX2_2 then
        SHX2_2 = SHX1_1
        if nil ~= SHX2_2 then
          break
        end
      end
      SHX2_2 = Citizen
      SHX2_2 = SHX2_2.Wait
      SHX3_2 = 1000
      SHX2_2(SHX3_2)
    end
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX3_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX4_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
      SHX1_3 = ""
      SHX2_3 = SHX6_1
      SHX2_3 = SHX2_3()
      if not SHX2_3 then
        SHX2_3 = SHX0_3.isAllowlisted
        if SHX2_3 then
          SHX2_3 = SHX3_1
          if SHX2_3 then
            goto SHX_LABEL_17
          end
        end
        SHX2_3 = CMG
        SHX2_3 = SHX2_3.isStaffedOnClient
        SHX2_3 = SHX2_3()
        if not SHX2_3 then
          goto SHX_LABEL_18
        end
      end
      -- [FIX IF ERROR] Move ::SHX_LABEL_17:: outside nested blocks until all 'goto SHX_LABEL_17' can see it
      ::SHX_LABEL_17::
      SHX1_3 = " (E to toggle lock)"
      -- [FIX IF ERROR] Move ::SHX_LABEL_18:: outside nested blocks until all 'goto SHX_LABEL_18' can see it
      ::SHX_LABEL_18::
      SHX2_3 = ""
      SHX3_3 = SHX7_1
      SHX4_3 = SHX0_3
      SHX3_3 = SHX3_3(SHX4_3)
      if SHX3_3 then
        SHX2_3 = " (G to lockpick)"
      end
      SHX4_3 = SHX0_3.doorHash
      SHX3_3 = SHX0_1
      SHX3_3 = SHX3_3[SHX4_3]
      if 5 ~= SHX3_3 then
        SHX4_3 = SHX0_3.doorHash
        SHX3_3 = SHX0_1
        SHX3_3 = SHX3_3[SHX4_3]
        if 0 ~= SHX3_3 then
          goto SHX_LABEL_46
        end
      end
      SHX3_3 = CMG
      SHX3_3 = SHX3_3.DrawText3D
      SHX4_3 = SHX0_3.position
      SHX5_3 = "\240\159\148\147"
      SHX6_3 = SHX1_3
      SHX7_3 = SHX2_3
      SHX5_3 = SHX5_3 .. SHX6_3 .. SHX7_3
      SHX6_3 = 0.45
      SHX7_3 = 4
      SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3)
      goto SHX_LABEL_56
      -- [FIX IF ERROR] Move ::SHX_LABEL_46:: outside nested blocks until all 'goto SHX_LABEL_46' can see it
      ::SHX_LABEL_46::
      SHX3_3 = CMG
      SHX3_3 = SHX3_3.DrawText3D
      SHX4_3 = SHX0_3.position
      SHX5_3 = "\240\159\148\146"
      SHX6_3 = SHX1_3
      SHX7_3 = SHX2_3
      SHX5_3 = SHX5_3 .. SHX6_3 .. SHX7_3
      SHX6_3 = 0.45
      SHX7_3 = 4
      SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3)
      -- [FIX IF ERROR] Move ::SHX_LABEL_56:: outside nested blocks until all 'goto SHX_LABEL_56' can see it
      ::SHX_LABEL_56::
      SHX3_3 = IsControlJustPressed
      SHX4_3 = 0
      SHX5_3 = 47
      SHX3_3 = SHX3_3(SHX4_3, SHX5_3)
      if SHX3_3 then
        SHX3_3 = SHX7_1
        SHX4_3 = SHX0_3
        SHX3_3 = SHX3_3(SHX4_3)
        if SHX3_3 then
          SHX3_3 = CMG
          SHX3_3 = SHX3_3.setIgnoreRadialInputThisFrame
          SHX3_3()
          SHX3_3 = tCMG
          SHX3_3 = SHX3_3.isInGreenzone
          SHX4_3 = false
          SHX3_3 = SHX3_3(SHX4_3)
          if SHX3_3 then
            SHX3_3 = tCMG
            SHX3_3 = SHX3_3.notify
            SHX4_3 = "~r~You can not lockpick in a greenzone"
            SHX3_3(SHX4_3)
          else
            SHX3_3 = CMG
            SHX3_3 = SHX3_3.getSelectedEntity
            SHX3_3, SHX4_3 = SHX3_3()
            if not SHX3_3 or 1 ~= SHX4_3 then
              SHX5_3 = TriggerServerEvent
              SHX6_3 = "f98fb692bf"
              SHX7_3 = SHX0_3.doorHash
              SHX5_3(SHX6_3, SHX7_3)
            end
          end
        end
      end
      SHX3_3 = IsControlJustPressed
      SHX4_3 = 0
      SHX5_3 = 38
      SHX3_3 = SHX3_3(SHX4_3, SHX5_3)
      if SHX3_3 then
        SHX3_3 = SHX6_1
        SHX3_3 = SHX3_3()
        if not SHX3_3 then
          SHX3_3 = SHX0_3.isAllowlisted
          if SHX3_3 then
            SHX3_3 = SHX3_1
            if SHX3_3 then
              goto SHX_LABEL_113
            end
          end
          SHX3_3 = CMG
          SHX3_3 = SHX3_3.isStaffedOnClient
          SHX3_3 = SHX3_3()
          if not SHX3_3 then
            goto SHX_LABEL_147
          end
        end
        -- [FIX IF ERROR] Move ::SHX_LABEL_113:: outside nested blocks until all 'goto SHX_LABEL_113' can see it
        ::SHX_LABEL_113::
        SHX3_3 = CMG
        SHX3_3 = SHX3_3.setIgnoreRadialInputThisFrame
        SHX3_3()
        SHX3_3 = CMG
        SHX3_3 = SHX3_3.getSelectedEntity
        SHX3_3, SHX4_3 = SHX3_3()
        if not SHX3_3 or 1 ~= SHX4_3 then
          SHX5_3 = CMG
          SHX5_3 = SHX5_3.loadAnimDict
          SHX6_3 = "anim@heists@keycard@"
          SHX5_3(SHX6_3)
          SHX5_3 = Citizen
          SHX5_3 = SHX5_3.CreateThread
          function SHX6_3()
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX0_4, SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4
            SHX0_4 = TaskPlayAnim
            SHX1_4 = PlayerPedId
            SHX1_4 = SHX1_4()
            SHX2_4 = "anim@heists@keycard@"
            SHX3_4 = "exit"
            SHX4_4 = 5.0
            SHX5_4 = 1.0
            SHX6_4 = -1
            SHX7_4 = 48
            SHX8_4 = 0
            SHX9_4 = false
            SHX10_4 = false
            SHX11_4 = false
            SHX0_4(SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4)
            SHX0_4 = Wait
            SHX1_4 = 1200
            SHX0_4(SHX1_4)
            SHX0_4 = ClearPedTasks
            SHX1_4 = PlayerPedId
            SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4 = SHX1_4()
            SHX0_4(SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4)
            SHX0_4 = RemoveAnimDict
            SHX1_4 = "anim@heists@keycard@"
            SHX0_4(SHX1_4)
          end
          SHX5_3(SHX6_3)
          SHX6_3 = SHX0_3.doorHash
          SHX5_3 = SHX0_1
          SHX5_3 = SHX5_3[SHX6_3]
          if 4 == SHX5_3 then
            SHX5_3 = TriggerServerEvent
            SHX6_3 = "7ce743191c"
            SHX7_3 = SHX0_3.doorHash
            SHX8_3 = 5
            SHX5_3(SHX6_3, SHX7_3, SHX8_3)
          else
            SHX5_3 = TriggerServerEvent
            SHX6_3 = "7ce743191c"
            SHX7_3 = SHX0_3.doorHash
            SHX8_3 = 4
            SHX5_3(SHX6_3, SHX7_3, SHX8_3)
          end
        end
      end
      -- [FIX IF ERROR] Move ::SHX_LABEL_147:: outside nested blocks until all 'goto SHX_LABEL_147' can see it
      ::SHX_LABEL_147::
    end
    SHX5_2 = 1
    SHX6_2 = SHX1_1
    SHX6_2 = #SHX6_2
    SHX7_2 = 1
    for SHX8_2 = SHX5_2, SHX6_2, SHX7_2 do
      SHX9_2 = {}
      SHX10_2 = SHX1_1
      SHX10_2 = SHX10_2[SHX8_2]
      SHX10_2 = SHX10_2.doorHash
      SHX9_2.doorHash = SHX10_2
      SHX10_2 = SHX1_1
      SHX10_2 = SHX10_2[SHX8_2]
      SHX10_2 = SHX10_2.position
      SHX9_2.position = SHX10_2
      SHX10_2 = SHX1_1
      SHX10_2 = SHX10_2[SHX8_2]
      SHX10_2 = SHX10_2.isAllowlisted
      SHX9_2.isAllowlisted = SHX10_2
      SHX10_2 = CMG
      SHX10_2 = SHX10_2.createArea
      SHX11_2 = "openPoliceDoor_"
      SHX12_2 = SHX1_1
      SHX12_2 = SHX12_2[SHX8_2]
      SHX12_2 = SHX12_2.doorHash
      SHX11_2 = SHX11_2 .. SHX12_2
      SHX12_2 = SHX1_1
      SHX12_2 = SHX12_2[SHX8_2]
      SHX12_2 = SHX12_2.position
      SHX13_2 = 1.5
      SHX14_2 = 5
      SHX15_2 = SHX2_2
      SHX16_2 = SHX3_2
      SHX17_2 = SHX4_2
      SHX18_2 = SHX9_2
      SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
      SHX10_2 = SHX1_1
      SHX10_2 = SHX10_2[SHX8_2]
      SHX10_2 = SHX10_2.autoVehiclePositions
      if SHX10_2 then
        SHX10_2 = pairs
        SHX11_2 = SHX1_1
        SHX11_2 = SHX11_2[SHX8_2]
        SHX11_2 = SHX11_2.autoVehiclePositions
        SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX10_2(SHX11_2)
        for SHX14_2, SHX15_2 in SHX10_2, SHX11_2, SHX12_2, SHX13_2 do
          SHX16_2 = "openPoliceDoorAuto_"
          SHX17_2 = tostring
          SHX18_2 = SHX1_1
          SHX18_2 = SHX18_2[SHX8_2]
          SHX18_2 = SHX18_2.doorHash
          SHX17_2 = SHX17_2(SHX18_2)
          SHX18_2 = "_"
          SHX19_2 = tostring
          SHX20_2 = SHX14_2
          SHX19_2 = SHX19_2(SHX20_2)
          SHX16_2 = SHX16_2 .. SHX17_2 .. SHX18_2 .. SHX19_2
          SHX17_2 = CMG
          SHX17_2 = SHX17_2.createArea
          SHX18_2 = SHX16_2
          SHX19_2 = SHX15_2
          SHX20_2 = 7.5
          SHX21_2 = 10.0
          function SHX22_2()
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX0_3, SHX1_3
          end
          function SHX23_2()
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX0_3, SHX1_3
          end
          SHX24_2 = SHX8_1
          SHX25_2 = SHX9_2
          SHX17_2(SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
        end
      end
    end
    SHX5_2 = 1
    SHX6_2 = SHX1_1
    SHX6_2 = #SHX6_2
    SHX7_2 = 1
    for SHX8_2 = SHX5_2, SHX6_2, SHX7_2 do
      SHX9_2 = AddDoorToSystem
      SHX10_2 = SHX1_1
      SHX10_2 = SHX10_2[SHX8_2]
      SHX10_2 = SHX10_2.doorHash
      SHX11_2 = SHX1_1
      SHX11_2 = SHX11_2[SHX8_2]
      SHX11_2 = SHX11_2.modelHash
      SHX12_2 = SHX1_1
      SHX12_2 = SHX12_2[SHX8_2]
      SHX12_2 = SHX12_2.position
      SHX12_2 = SHX12_2.x
      SHX13_2 = SHX1_1
      SHX13_2 = SHX13_2[SHX8_2]
      SHX13_2 = SHX13_2.position
      SHX13_2 = SHX13_2.y
      SHX14_2 = SHX1_1
      SHX14_2 = SHX14_2[SHX8_2]
      SHX14_2 = SHX14_2.position
      SHX14_2 = SHX14_2.z
      SHX15_2 = false
      SHX16_2 = false
      SHX17_2 = false
      SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
      SHX9_2 = DoorSystemSetDoorState
      SHX10_2 = SHX1_1
      SHX10_2 = SHX10_2[SHX8_2]
      SHX10_2 = SHX10_2.doorHash
      SHX11_2 = SHX1_1
      SHX11_2 = SHX11_2[SHX8_2]
      SHX12_2 = SHX11_2.doorHash
      SHX11_2 = SHX0_1
      SHX11_2 = SHX11_2[SHX12_2]
      SHX12_2 = false
      SHX13_2 = false
      SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    end
    function SHX5_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3
      SHX0_3 = CMG
      SHX0_3 = SHX0_3.TriggerServerCallback
      SHX1_3 = "599ba2320e"
      SHX0_3 = SHX0_3(SHX1_3)
      SHX0_1 = SHX0_3
      SHX0_3 = pairs
      SHX1_3 = SHX0_1
      SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
      for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
        SHX6_3 = DoorSystemSetDoorState
        SHX7_3 = SHX4_3
        SHX8_3 = SHX5_3
        SHX9_3 = false
        SHX10_3 = false
        SHX6_3(SHX7_3, SHX8_3, SHX9_3, SHX10_3)
        if 0 == SHX5_3 or 5 == SHX5_3 then
          SHX6_3 = DoorSystemSetHoldOpen
          SHX7_3 = SHX4_3
          SHX8_3 = true
          SHX6_3(SHX7_3, SHX8_3)
        else
          SHX6_3 = DoorSystemSetHoldOpen
          SHX7_3 = SHX4_3
          SHX8_3 = false
          SHX6_3(SHX7_3, SHX8_3)
        end
      end
    end
    SHX6_2 = 1
    SHX7_2 = SHX2_1
    SHX7_2 = #SHX7_2
    SHX8_2 = 1
    for SHX9_2 = SHX6_2, SHX7_2, SHX8_2 do
      SHX10_2 = CMG
      SHX10_2 = SHX10_2.createArea
      SHX11_2 = "policeSyncDoorsOnAreaEnter"
      SHX12_2 = SHX2_1
      SHX12_2 = SHX12_2[SHX9_2]
      SHX13_2 = 250
      SHX14_2 = 250
      SHX15_2 = SHX5_2
      function SHX16_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3
      end
      function SHX17_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3
      end
      SHX18_2 = {}
      SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
    end
  end
end
SHX9_1(SHX10_1, SHX11_1)
SHX9_1 = RegisterNetEvent
SHX10_1 = "f620b4350e"
function SHX11_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = DoorSystemSetDoorState
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX5_2 = false
  SHX6_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  if 0 == SHX1_2 or 5 == SHX1_2 then
    SHX2_2 = DoorSystemSetHoldOpen
    SHX3_2 = SHX0_2
    SHX4_2 = true
    SHX2_2(SHX3_2, SHX4_2)
  else
    SHX2_2 = DoorSystemSetHoldOpen
    SHX3_2 = SHX0_2
    SHX4_2 = false
    SHX2_2(SHX3_2, SHX4_2)
  end
  SHX2_2 = SHX0_1
  if SHX2_2 then
    SHX2_2 = SHX0_1
    SHX2_2 = SHX2_2[SHX0_2]
    if nil ~= SHX2_2 then
      SHX2_2 = SHX0_1
      SHX2_2[SHX0_2] = SHX1_2
    end
  end
end
SHX9_1(SHX10_1, SHX11_1)
SHX9_1 = RegisterNetEvent
SHX10_1 = "9827691fb7"
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = true
  SHX3_1 = SHX0_2
end
SHX9_1(SHX10_1, SHX11_1)
