-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1
SHX0_1 = false
SHX1_1 = ""
SHX2_1 = ""
SHX3_1 = 0
SHX4_1 = false
SHX5_1 = 0
SHX6_1 = CMG
function SHX7_1()
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
SHX6_1.isPiggyBackActive = SHX7_1
SHX6_1 = RegisterCommand
SHX7_1 = "piggyback"
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isPlayerNearPrison
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerPed
    SHX0_2 = SHX0_2()
    SHX1_2 = IsPedInAnyVehicle
    SHX2_2 = SHX0_2
    SHX3_2 = false
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    if SHX1_2 then
      SHX1_2 = drawNativeNotification
      SHX2_2 = "Can't piggy back someone whilst your in a vehicle"
      SHX1_2(SHX2_2)
    else
      SHX1_2 = GetEntityHealth
      SHX2_2 = SHX0_2
      SHX1_2 = SHX1_2(SHX2_2)
      if SHX1_2 > 102 then
        SHX1_2 = CMG
        SHX1_2 = SHX1_2.isInsideDiamondCasino
        SHX1_2 = SHX1_2()
        if not SHX1_2 then
          SHX1_2 = SHX0_1
          if not SHX1_2 then
            SHX1_2 = GetClosestPlayer
            SHX2_2 = 3
            SHX1_2 = SHX1_2(SHX2_2)
            if SHX1_2 then
              SHX2_2 = GetPlayerServerId
              SHX3_2 = SHX1_2
              SHX2_2 = SHX2_2(SHX3_2)
              SHX5_1 = SHX2_2
              if SHX1_2 and -1 ~= SHX1_2 then
                SHX2_2 = TriggerServerEvent
                SHX3_2 = "ec6a9d5fc5"
                SHX4_2 = SHX5_1
                SHX2_2(SHX3_2, SHX4_2)
              else
                SHX2_2 = drawNativeNotification
                SHX3_2 = "No one nearby to piggyback!"
                SHX2_2(SHX3_2)
              end
            end
          else
            SHX1_2 = false
            SHX0_1 = SHX1_2
            SHX1_2 = ClearPedSecondaryTask
            SHX2_2 = SHX0_2
            SHX1_2(SHX2_2)
            SHX1_2 = DetachEntity
            SHX2_2 = SHX0_2
            SHX3_2 = true
            SHX4_2 = false
            SHX1_2(SHX2_2, SHX3_2, SHX4_2)
            SHX1_2 = GetClosestPlayer
            SHX2_2 = 3
            SHX1_2 = SHX1_2(SHX2_2)
            if SHX1_2 then
              SHX2_2 = GetPlayerServerId
              SHX3_2 = SHX1_2
              SHX2_2 = SHX2_2(SHX3_2)
              SHX5_1 = SHX2_2
              SHX2_2 = SHX5_1
              if 0 ~= SHX2_2 then
                SHX2_2 = TriggerServerEvent
                SHX3_2 = "5f28fea3a6"
                SHX4_2 = SHX5_1
                SHX2_2(SHX3_2, SHX4_2)
              end
            end
          end
        end
      end
    end
  else
    SHX0_2 = tCMG
    SHX0_2 = SHX0_2.notify
    SHX1_2 = "~r~You cannot do this in prison."
    SHX0_2(SHX1_2)
  end
end
SHX9_1 = false
SHX6_1(SHX7_1, SHX8_1, SHX9_1)
SHX6_1 = RegisterNetEvent
SHX7_1 = "109bbe09c8"
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.notify
  SHX1_2 = "Someone is trying to piggyback you, press (Y) to accept (L) to refuse"
  SHX0_2(SHX1_2)
  SHX0_2 = true
  SHX4_1 = SHX0_2
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
      SHX0_3 = SHX4_1
      if not SHX0_3 then
        break
      end
      SHX0_3 = IsControlJustPressed
      SHX1_3 = 0
      SHX2_3 = 246
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      if SHX0_3 then
        SHX0_3 = tCMG
        SHX0_3 = SHX0_3.notify
        SHX1_3 = "~g~Request Accepted"
        SHX0_3(SHX1_3)
        SHX0_3 = ExecuteCommand
        SHX1_3 = "pbaccept"
        SHX0_3(SHX1_3)
        SHX0_3 = false
        SHX4_1 = SHX0_3
      else
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
          SHX1_3 = "pbrefuse"
          SHX0_3(SHX1_3)
          SHX0_3 = false
          SHX4_1 = SHX0_3
        end
      end
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
  SHX4_1 = SHX0_2
end
SHX6_1(SHX7_1, SHX8_1)
function SHX6_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX1_2 = SHX0_1
  if SHX1_2 then
    SHX1_2 = IsPedGettingIntoAVehicle
    SHX2_2 = SHX0_2.playerPed
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = TriggerServerEvent
      SHX2_2 = "5f28fea3a6"
      SHX3_2 = SHX5_1
      SHX1_2(SHX2_2, SHX3_2)
      SHX1_2 = false
      SHX0_1 = SHX1_2
      SHX1_2 = ClearPedTasks
      SHX2_2 = SHX0_2.playerPed
      SHX1_2(SHX2_2)
      SHX1_2 = drawNativeNotification
      SHX2_2 = "Can't piggy back someone whilst your in a vehicle"
      SHX1_2(SHX2_2)
    end
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
SHX7_1 = CMG
SHX7_1 = SHX7_1.createThreadOnTick
SHX8_1 = SHX6_1
SHX9_1 = "Piggyback Vehicle"
SHX7_1(SHX8_1, SHX9_1)
SHX7_1 = RegisterNetEvent
SHX8_1 = "c3a48ab060"
function SHX9_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
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
  SHX11_2 = RequestAnimDict
  SHX12_2 = SHX1_2
  SHX11_2(SHX12_2)
  SHX11_2 = true
  SHX0_1 = SHX11_2
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
  SHX12_2 = SHX9_2
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
SHX7_1(SHX8_1, SHX9_1)
SHX7_1 = RegisterNetEvent
SHX8_1 = "df18a9b49e"
function SHX9_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
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
  SHX5_2 = RequestAnimDict
  SHX6_2 = SHX0_2
  SHX5_2(SHX6_2)
  SHX5_2 = true
  SHX0_1 = SHX5_2
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
SHX7_1(SHX8_1, SHX9_1)
SHX7_1 = RegisterNetEvent
SHX8_1 = "a238ed7b34"
function SHX9_1()
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
SHX7_1(SHX8_1, SHX9_1)
