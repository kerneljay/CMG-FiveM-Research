-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1
SHX0_1 = false
SHX1_1 = ""
SHX2_1 = ""
SHX3_1 = 0
SHX4_1 = vector3
SHX5_1 = 1117.671
SHX6_1 = 218.7382
SHX7_1 = -49.4
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX5_1 = false
SHX6_1 = 0
SHX7_1 = 0
SHX8_1 = CMG
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX0_1
  return SHX0_2
end
SHX8_1.isCarrying = SHX9_1
SHX8_1 = TriggerEvent
SHX9_1 = "chat:addSuggestion"
SHX10_1 = "/carry"
SHX11_1 = "Carry the nearest player"
SHX8_1(SHX9_1, SHX10_1, SHX11_1)
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isStaffedOnClient
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX0_2 = true
    return SHX0_2
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.inOrganHesit
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.inArena
    SHX0_2 = SHX0_2()
    if not SHX0_2 then
      goto SHX_LABEL_20
    end
  end
  SHX0_2 = false
  return SHX0_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_20:: outside nested blocks until all 'goto SHX_LABEL_20' can see it
  ::SHX_LABEL_20::
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isPlayerNearPrison
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.isEmergencyService
    return SHX0_2()
  end
  SHX0_2 = true
  return SHX0_2
end
SHX9_1 = RegisterCommand
SHX10_1 = "carry"
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = IsPedInAnyVehicle
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = true
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = drawNativeNotification
    SHX1_2 = "You cannot carry someone whilst you are in a vehicle!"
    SHX0_2(SHX1_2)
  else
    SHX0_2 = SHX8_1
    SHX0_2 = SHX0_2()
    if SHX0_2 then
      SHX0_2 = GetEntityHealth
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.getPlayerPed
      SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX1_2()
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      if not (SHX0_2 > 102) then
        goto SHX_LABEL_122
      end
      SHX0_2 = GetEntityCoords
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.getPlayerPed
      SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX1_2()
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      SHX1_2 = SHX4_1
      SHX1_2 = SHX0_2 - SHX1_2
      SHX1_2 = #SHX1_2
      SHX2_2 = SHX0_1
      if not SHX2_2 then
        SHX2_2 = 200
        if not (SHX1_2 > SHX2_2) then
          SHX2_2 = CMG
          SHX2_2 = SHX2_2.isStaffedOnClient
          SHX2_2 = SHX2_2()
          if not SHX2_2 then
            goto SHX_LABEL_88
          end
        end
        SHX2_2 = GetClosestPlayer
        SHX3_2 = 3
        SHX2_2 = SHX2_2(SHX3_2)
        if -1 ~= SHX2_2 then
          SHX3_2 = GetPlayerServerId
          SHX4_2 = SHX2_2
          SHX3_2 = SHX3_2(SHX4_2)
          SHX6_1 = SHX3_2
          SHX3_2 = GetEntityHealth
          SHX4_2 = GetPlayerPed
          SHX5_2 = SHX2_2
          SHX4_2, SHX5_2, SHX6_2 = SHX4_2(SHX5_2)
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
          if 0 ~= SHX3_2 then
            SHX3_2 = CMG
            SHX3_2 = SHX3_2.isStaffedOnClient
            SHX3_2 = SHX3_2()
            if not SHX3_2 then
              SHX3_2 = CMG
              SHX3_2 = SHX3_2.hasClientPermission
              SHX4_2 = "lfb.onduty.permission"
              SHX3_2 = SHX3_2(SHX4_2)
              if not SHX3_2 then
                SHX3_2 = TriggerServerEvent
                SHX4_2 = "CarryPeople:requestCarry"
                SHX5_2 = SHX6_1
                SHX3_2(SHX4_2, SHX5_2)
            end
            else
              SHX3_2 = TriggerServerEvent
              SHX4_2 = "CarryPeople:sync"
              SHX5_2 = SHX6_1
              SHX3_2(SHX4_2, SHX5_2)
            end
          else
            SHX3_2 = drawNativeNotification
            SHX4_2 = "Cannot carry dead people!"
            SHX3_2(SHX4_2)
          end
        else
          SHX3_2 = drawNativeNotification
          SHX4_2 = "No one nearby to carry!"
          SHX3_2(SHX4_2)
        end
      else
        -- [FIX IF ERROR] Move ::SHX_LABEL_88:: outside nested blocks until all 'goto SHX_LABEL_88' can see it
        ::SHX_LABEL_88::
        SHX2_2 = CMG
        SHX2_2 = SHX2_2.getPlayerPed
        SHX2_2 = SHX2_2()
        SHX3_2 = false
        SHX0_1 = SHX3_2
        SHX3_2 = ClearPedSecondaryTask
        SHX4_2 = SHX2_2
        SHX3_2(SHX4_2)
        SHX3_2 = DetachEntity
        SHX4_2 = SHX2_2
        SHX5_2 = true
        SHX6_2 = false
        SHX3_2(SHX4_2, SHX5_2, SHX6_2)
        SHX3_2 = GetClosestPlayer
        SHX4_2 = 3
        SHX3_2 = SHX3_2(SHX4_2)
        if SHX3_2 then
          SHX4_2 = GetPlayerServerId
          SHX5_2 = SHX3_2
          SHX4_2 = SHX4_2(SHX5_2)
          SHX6_1 = SHX4_2
          SHX4_2 = SHX6_1
          if 0 ~= SHX4_2 then
            SHX4_2 = TriggerServerEvent
            SHX5_2 = "CarryPeople:stop"
            SHX6_2 = SHX6_1
            SHX4_2(SHX5_2, SHX6_2)
          end
        end
      end
    else
      SHX0_2 = tCMG
      SHX0_2 = SHX0_2.notify
      SHX1_2 = "~r~You cannot carry in the prison."
      SHX0_2(SHX1_2)
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_122:: outside nested blocks until all 'goto SHX_LABEL_122' can see it
  ::SHX_LABEL_122::
end
SHX12_1 = false
SHX9_1(SHX10_1, SHX11_1, SHX12_1)
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.isInComa
  SHX1_2 = SHX1_2()
  if SHX1_2 then
    SHX1_2 = IsEntityDead
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    SHX1_2 = not SHX1_2
  end
  return SHX1_2
end
SHX10_1 = RegisterNetEvent
SHX11_1 = "CarryPeople:carryRequest"
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.inArena
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    return
  end
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.notify
  SHX1_2 = "Someone is trying to carry you, press (Y) to accept (L) to refuse"
  SHX0_2(SHX1_2)
  SHX0_2 = true
  SHX5_1 = SHX0_2
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.CreateThread
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3
    while true do
      SHX0_3 = SHX5_1
      if not SHX0_3 then
        break
      end
      SHX0_3 = IsControlJustPressed
      SHX1_3 = 0
      SHX2_3 = 246
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      if not SHX0_3 then
        SHX0_3 = SHX9_1
        SHX0_3 = SHX0_3()
        if not SHX0_3 then
          goto SHX_LABEL_24
        end
      end
      SHX0_3 = tCMG
      SHX0_3 = SHX0_3.notify
      SHX1_3 = "~g~Request Accepted"
      SHX0_3(SHX1_3)
      SHX0_3 = ExecuteCommand
      SHX1_3 = "carryaccept"
      SHX0_3(SHX1_3)
      SHX0_3 = false
      SHX5_1 = SHX0_3
      goto SHX_LABEL_39
      -- [FIX IF ERROR] Move ::SHX_LABEL_24:: outside nested blocks until all 'goto SHX_LABEL_24' can see it
      ::SHX_LABEL_24::
      SHX0_3 = IsControlJustPressed
      SHX1_3 = 0
      SHX2_3 = 182
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      if SHX0_3 then
        SHX0_3 = tCMG
        SHX0_3 = SHX0_3.notify
        SHX1_3 = "~g~Request Refused"
        SHX0_3(SHX1_3)
        SHX0_3 = ExecuteCommand
        SHX1_3 = "carryrefuse"
        SHX0_3(SHX1_3)
        SHX0_3 = false
        SHX5_1 = SHX0_3
      end
      -- [FIX IF ERROR] Move ::SHX_LABEL_39:: outside nested blocks until all 'goto SHX_LABEL_39' can see it
      ::SHX_LABEL_39::
      SHX0_3 = Wait
      SHX1_3 = 0
      SHX0_3(SHX1_3)
    end
  end
  SHX0_2(SHX1_2)
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.Wait
  SHX1_2 = 15000
  SHX0_2(SHX1_2)
  SHX0_2 = false
  SHX5_1 = SHX0_2
end
SHX10_1(SHX11_1, SHX12_1)
function SHX10_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX3_2 = TriggerServerEvent
  SHX4_2 = "CarryPeople:stop"
  SHX5_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = false
  SHX0_1 = SHX3_2
  SHX3_2 = ClearPedTasks
  SHX4_2 = SHX0_2
  SHX3_2(SHX4_2)
  SHX3_2 = StopAnimTask
  SHX4_2 = SHX0_2
  SHX5_2 = "missfinale_c2mcs_1"
  SHX6_2 = "fin_c2_mcs_1_camman"
  SHX7_2 = 0
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX3_2 = GetEntityAttachedTo
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  if 0 ~= SHX3_2 then
    SHX3_2 = DetachEntity
    SHX4_2 = SHX0_2
    SHX5_2 = true
    SHX6_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    SHX3_2 = SetEntityVisible
    SHX4_2 = SHX0_2
    SHX5_2 = true
    SHX6_2 = true
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  end
  SHX3_2 = drawNativeNotification
  SHX4_2 = SHX1_2
  SHX3_2(SHX4_2)
end
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = SHX0_1
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerPed
    SHX0_2 = SHX0_2()
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerVehicle
    SHX1_2, SHX2_2 = SHX1_2()
    if 0 ~= SHX1_2 and SHX2_2 then
      SHX3_2 = SHX10_1
      SHX4_2 = SHX0_2
      SHX5_2 = "~r~You cannot carry someone whilst you are in a vehicle!"
      SHX6_2 = SHX6_1
      SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    end
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.isStaffedOnClient
    SHX3_2 = SHX3_2()
    if not SHX3_2 then
      SHX3_2 = IsPedFalling
      SHX4_2 = SHX0_2
      SHX3_2 = SHX3_2(SHX4_2)
      if SHX3_2 then
        SHX3_2 = SHX10_1
        SHX4_2 = SHX0_2
        SHX5_2 = "~r~You cannot carry someone whilst you are falling"
        SHX6_2 = SHX6_1
        SHX3_2(SHX4_2, SHX5_2, SHX6_2)
      end
    end
    SHX3_2 = GetEntityAttachedTo
    SHX4_2 = SHX0_2
    SHX3_2 = SHX3_2(SHX4_2)
    if 0 ~= SHX3_2 then
      SHX4_2 = IsEntityVisible
      SHX5_2 = SHX3_2
      SHX4_2 = SHX4_2(SHX5_2)
      if not SHX4_2 then
        SHX4_2 = CMG
        SHX4_2 = SHX4_2.clientGetPlayerIsStaff
        SHX5_2 = SHX7_1
        SHX4_2 = SHX4_2(SHX5_2)
        if not SHX4_2 then
          SHX4_2 = SHX10_1
          SHX5_2 = SHX0_2
          SHX6_2 = "~r~You cannot being carried whilst the player is not visible."
          SHX7_2 = SHX7_1
          SHX4_2(SHX5_2, SHX6_2, SHX7_2)
        end
      end
    end
  end
end
SHX12_1 = CMG
SHX12_1 = SHX12_1.createThreadOnTick
SHX13_1 = SHX11_1
SHX14_1 = "Carry Tick"
SHX12_1(SHX13_1, SHX14_1)
SHX12_1 = RegisterNetEvent
SHX13_1 = "CarryPeople:syncTarget"
function SHX14_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2
  SHX9_2 = CMG
  SHX9_2 = SHX9_2.getPlayerPed
  SHX9_2 = SHX9_2()
  SHX10_2 = GetPlayerPed
  SHX11_2 = GetPlayerFromServerId
  SHX12_2 = SHX0_2
  SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2 = SHX11_2(SHX12_2)
  SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
  SHX11_2 = true
  SHX0_1 = SHX11_2
  SHX7_1 = SHX0_2
  SHX11_2 = RequestAnimDict
  SHX12_2 = SHX1_2
  SHX11_2(SHX12_2)
  while true do
    SHX11_2 = HasAnimDictLoaded
    SHX12_2 = SHX1_2
    SHX11_2 = SHX11_2(SHX12_2)
    if SHX11_2 then
      break
    end
    SHX11_2 = Citizen
    SHX11_2 = SHX11_2.Wait
    SHX12_2 = 10
    SHX11_2(SHX12_2)
  end
  if nil == SHX7_2 then
    SHX7_2 = 180.0
  end
  SHX11_2 = AttachEntityToEntity
  SHX12_2 = CMG
  SHX12_2 = SHX12_2.getPlayerPed
  SHX12_2 = SHX12_2()
  SHX13_2 = SHX10_2
  SHX14_2 = 0
  SHX15_2 = SHX4_2
  SHX16_2 = SHX3_2
  SHX17_2 = SHX5_2
  SHX18_2 = 0.5
  SHX19_2 = 0.5
  SHX20_2 = SHX7_2
  SHX21_2 = false
  SHX22_2 = false
  SHX23_2 = false
  SHX24_2 = false
  SHX25_2 = 2
  SHX26_2 = false
  SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
  if nil == SHX8_2 then
    SHX8_2 = 0
  end
  SHX11_2 = TaskPlayAnim
  SHX12_2 = SHX9_2
  SHX13_2 = SHX1_2
  SHX14_2 = SHX2_2
  SHX15_2 = 8.0
  SHX16_2 = -8.0
  SHX17_2 = SHX6_2
  SHX18_2 = SHX8_2
  SHX19_2 = 0
  SHX20_2 = false
  SHX21_2 = false
  SHX22_2 = false
  SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
  SHX11_2 = RemoveAnimDict
  SHX12_2 = SHX1_2
  SHX11_2(SHX12_2)
  SHX1_1 = SHX2_2
  SHX2_1 = SHX1_2
  SHX3_1 = SHX8_2
end
SHX12_1(SHX13_1, SHX14_1)
SHX12_1 = RegisterNetEvent
SHX13_1 = "CarryPeople:syncMe"
function SHX14_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getPlayerPed
  SHX4_2 = SHX4_2()
  SHX5_2 = true
  SHX0_1 = SHX5_2
  SHX5_2 = RequestAnimDict
  SHX6_2 = SHX0_2
  SHX5_2(SHX6_2)
  while true do
    SHX5_2 = HasAnimDictLoaded
    SHX6_2 = SHX0_2
    SHX5_2 = SHX5_2(SHX6_2)
    if SHX5_2 then
      break
    end
    SHX5_2 = Citizen
    SHX5_2 = SHX5_2.Wait
    SHX6_2 = 10
    SHX5_2(SHX6_2)
  end
  SHX5_2 = Wait
  SHX6_2 = 500
  SHX5_2(SHX6_2)
  if nil == SHX3_2 then
    SHX3_2 = 0
  end
  SHX5_2 = TaskPlayAnim
  SHX6_2 = SHX4_2
  SHX7_2 = SHX0_2
  SHX8_2 = SHX1_2
  SHX9_2 = 8.0
  SHX10_2 = -8.0
  SHX11_2 = SHX2_2
  SHX12_2 = SHX3_2
  SHX13_2 = 0
  SHX14_2 = false
  SHX15_2 = false
  SHX16_2 = false
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX5_2 = RemoveAnimDict
  SHX6_2 = SHX0_2
  SHX5_2(SHX6_2)
  SHX1_1 = SHX1_2
  SHX2_1 = SHX0_2
  SHX3_1 = SHX3_2
end
SHX12_1(SHX13_1, SHX14_1)
SHX12_1 = RegisterNetEvent
SHX13_1 = "CarryPeople:cl_stop"
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX0_1
  if SHX0_2 then
    SHX0_2 = false
    SHX0_1 = SHX0_2
    SHX0_2 = ClearPedSecondaryTask
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerPed
    SHX1_2, SHX2_2, SHX3_2 = SHX1_2()
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = DetachEntity
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerPed
    SHX1_2 = SHX1_2()
    SHX2_2 = true
    SHX3_2 = false
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  end
end
SHX12_1(SHX13_1, SHX14_1)
function SHX12_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX1_2 = SHX0_1
  if SHX1_2 then
    SHX1_2 = DisablePlayerFiring
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.getPlayerId
    SHX2_2 = SHX2_2()
    SHX3_2 = true
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = IsEntityPlayingAnim
    SHX2_2 = SHX0_2.playerPed
    SHX3_2 = SHX2_1
    SHX4_2 = SHX1_1
    SHX5_2 = 3
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
    if not SHX1_2 then
      SHX1_2 = TaskPlayAnim
      SHX2_2 = SHX0_2.playerPed
      SHX3_2 = SHX2_1
      SHX4_2 = SHX1_1
      SHX5_2 = 8.0
      SHX6_2 = -8.0
      SHX7_2 = 100000
      SHX8_2 = SHX3_1
      SHX9_2 = 0
      SHX10_2 = false
      SHX11_2 = false
      SHX12_2 = false
      SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    end
  end
end
SHX13_1 = CMG
SHX13_1 = SHX13_1.createThreadOnTick
SHX14_1 = SHX12_1
SHX15_1 = "Carry Animation Tick"
SHX13_1(SHX14_1, SHX15_1)
SHX13_1 = CMG
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX0_1
  if SHX0_2 then
    SHX0_2 = SHX6_1
    if SHX0_2 then
      goto SHX_LABEL_8
    end
  end
  SHX0_2 = 0
  -- [FIX IF ERROR] Move ::SHX_LABEL_8:: outside nested blocks until all 'goto SHX_LABEL_8' can see it
  ::SHX_LABEL_8::
  return SHX0_2
end
SHX13_1.getCarryingPlayerSrc = SHX14_1
