-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1
SHX0_1 = {}
SHX1_1 = "wheel_lf"
SHX2_1 = "wheel_rf"
SHX3_1 = "wheel_lr"
SHX4_1 = "wheel_rr"
SHX0_1[1] = SHX1_1
SHX0_1[2] = SHX2_1
SHX0_1[3] = SHX3_1
SHX0_1[4] = SHX4_1
SHX1_1 = false
function SHX2_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = GetGameTimer
  SHX2_2 = SHX2_2()
  while true do
    SHX3_2 = GetGameTimer
    SHX3_2 = SHX3_2()
    SHX3_2 = SHX3_2 - SHX2_2
    if not (SHX1_2 > SHX3_2) then
      break
    end
    SHX3_2 = GetEntitySpeed
    SHX4_2 = SHX0_2
    SHX3_2 = SHX3_2(SHX4_2)
    SHX4_2 = 0.2
    if SHX3_2 > SHX4_2 then
      SHX3_2 = true
      return SHX3_2
    end
    SHX3_2 = Citizen
    SHX3_2 = SHX3_2.Wait
    SHX4_2 = 0
    SHX3_2(SHX4_2)
  end
  SHX3_2 = false
  return SHX3_2
end
SHX3_1 = RegisterNetEvent
SHX4_1 = "b9a311db61"
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = SHX1_1
  if SHX0_2 then
    return
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getClosestVehicle
  SHX1_2 = 7.0
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX1_2 = NetworkGetEntityIsNetworked
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      goto SHX_LABEL_20
    end
  end
  SHX1_2 = notify
  SHX2_2 = "~r~No vehicle found."
  SHX1_2(SHX2_2)
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_20:: outside nested blocks until all 'goto SHX_LABEL_20' can see it
  ::SHX_LABEL_20::
  SHX1_2 = NetworkGetNetworkIdFromEntity
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if 0 == SHX1_2 then
    return
  end
  SHX2_2 = TriggerServerEvent
  SHX3_2 = "e6da6979c7"
  SHX4_2 = SHX1_2
  SHX5_2 = SHX0_2
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
end
SHX3_1(SHX4_1, SHX5_1)
SHX3_1 = RegisterNetEvent
SHX4_1 = "1b7e99a63d"
function SHX5_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerVehicle
  SHX2_2 = SHX2_2()
  if 0 ~= SHX2_2 then
    SHX2_2 = notify
    SHX3_2 = "~r~You can not clamp whilst in a vehicle."
    SHX2_2(SHX3_2)
    return
  end
  SHX2_2 = GetVehicleClass
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if 14 == SHX2_2 or 15 == SHX2_2 or 18 == SHX2_2 or 21 == SHX2_2 then
    SHX3_2 = notify
    SHX4_2 = "~r~You can not clamp this vehicle."
    SHX3_2(SHX4_2)
    return
  end
  SHX3_2 = GetEntitySpeed
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = 0.2
  if SHX3_2 > SHX4_2 then
    SHX3_2 = notify
    SHX4_2 = "~r~You can not clamp a moving vehicle."
    SHX3_2(SHX4_2)
    return
  end
  SHX3_2 = -1
  SHX4_2 = 1.5
  SHX5_2 = vector3
  SHX6_2 = 0.0
  SHX7_2 = 0.0
  SHX8_2 = 0.0
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.getPlayerCoords
  SHX6_2 = SHX6_2()
  SHX7_2 = pairs
  SHX8_2 = SHX0_1
  SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
  for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
    SHX13_2 = GetEntityBoneIndexByName
    SHX14_2 = SHX1_2
    SHX15_2 = SHX12_2
    SHX13_2 = SHX13_2(SHX14_2, SHX15_2)
    if -1 ~= SHX13_2 then
      SHX14_2 = GetWorldPositionOfEntityBone
      SHX15_2 = SHX1_2
      SHX16_2 = SHX13_2
      SHX14_2 = SHX14_2(SHX15_2, SHX16_2)
      SHX15_2 = SHX6_2 - SHX14_2
      SHX15_2 = #SHX15_2
      if SHX4_2 > SHX15_2 then
        SHX3_2 = SHX13_2
        SHX4_2 = SHX15_2
        SHX5_2 = SHX14_2
      end
    end
  end
  if -1 == SHX3_2 then
    SHX7_2 = notify
    SHX8_2 = "~r~You are not nearby to any wheel."
    SHX7_2(SHX8_2)
    return
  end
  SHX7_2 = true
  SHX1_1 = SHX7_2
  SHX7_2 = PlayerPedId
  SHX7_2 = SHX7_2()
  SHX8_2 = TaskTurnPedToFaceCoord
  SHX9_2 = SHX7_2
  SHX10_2 = SHX5_2.x
  SHX11_2 = SHX5_2.y
  SHX12_2 = SHX5_2.z
  SHX13_2 = 2000
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  while true do
    SHX8_2 = GetScriptTaskStatus
    SHX9_2 = SHX7_2
    SHX10_2 = 1464580341
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
    if 7 == SHX8_2 then
      break
    end
    SHX8_2 = Citizen
    SHX8_2 = SHX8_2.Wait
    SHX9_2 = 0
    SHX8_2(SHX9_2)
  end
  SHX8_2 = CMG
  SHX8_2 = SHX8_2.loadClipSet
  SHX9_2 = "move_ped_crouched"
  SHX8_2(SHX9_2)
  SHX8_2 = SetPedCanPlayAmbientAnims
  SHX9_2 = SHX7_2
  SHX10_2 = false
  SHX8_2(SHX9_2, SHX10_2)
  SHX8_2 = SetPedCanPlayAmbientBaseAnims
  SHX9_2 = SHX7_2
  SHX10_2 = false
  SHX8_2(SHX9_2, SHX10_2)
  SHX8_2 = SetPedMovementClipset
  SHX9_2 = SHX7_2
  SHX10_2 = "move_ped_crouched"
  SHX11_2 = 0.35
  SHX8_2(SHX9_2, SHX10_2, SHX11_2)
  SHX8_2 = SetPedStrafeClipset
  SHX9_2 = SHX7_2
  SHX10_2 = "move_ped_crouched_strafing"
  SHX8_2(SHX9_2, SHX10_2)
  SHX8_2 = RemoveClipSet
  SHX9_2 = "move_ped_crouched"
  SHX8_2(SHX9_2)
  SHX8_2 = tCMG
  SHX8_2 = SHX8_2.playAnim
  SHX9_2 = true
  SHX10_2 = {}
  SHX11_2 = {}
  SHX12_2 = "rcmextreme3"
  SHX13_2 = "idle"
  SHX14_2 = 1
  SHX11_2[1] = SHX12_2
  SHX11_2[2] = SHX13_2
  SHX11_2[3] = SHX14_2
  SHX10_2[1] = SHX11_2
  SHX11_2 = true
  SHX8_2(SHX9_2, SHX10_2, SHX11_2)
  SHX8_2 = CMG
  SHX8_2 = SHX8_2.loadModel
  SHX9_2 = -1099035225
  SHX8_2(SHX9_2)
  SHX8_2 = GetOffsetFromEntityInWorldCoords
  SHX9_2 = SHX7_2
  SHX10_2 = 0.0
  SHX11_2 = 0.2
  SHX12_2 = 0.0
  SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX9_2 = CMG
  SHX9_2 = SHX9_2.requestEntitySpawn
  SHX10_2 = "clamp_object"
  SHX9_2(SHX10_2)
  SHX9_2 = CreateObject
  SHX10_2 = -1099035225
  SHX11_2 = SHX8_2.x
  SHX12_2 = SHX8_2.y
  SHX13_2 = SHX8_2.z
  SHX14_2 = true
  SHX15_2 = true
  SHX16_2 = true
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX10_2 = SetModelAsNoLongerNeeded
  SHX11_2 = -1099035225
  SHX10_2(SHX11_2)
  SHX10_2 = PlaceObjectOnGroundProperly
  SHX11_2 = SHX9_2
  SHX10_2(SHX11_2)
  SHX10_2 = FreezeEntityPosition
  SHX11_2 = SHX9_2
  SHX12_2 = true
  SHX10_2(SHX11_2, SHX12_2)
  SHX10_2 = SetEntityRotation
  SHX11_2 = SHX9_2
  SHX12_2 = -90.0
  SHX13_2 = 0.0
  SHX14_2 = 0.0
  SHX15_2 = 2
  SHX16_2 = true
  SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX10_2 = SetEntityCollision
  SHX11_2 = SHX9_2
  SHX12_2 = false
  SHX13_2 = false
  SHX10_2(SHX11_2, SHX12_2, SHX13_2)
  SHX10_2 = SHX2_1
  SHX11_2 = SHX1_2
  SHX12_2 = 4000
  SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
  if not SHX10_2 then
    SHX11_2 = SetEntityCollision
    SHX12_2 = SHX9_2
    SHX13_2 = true
    SHX14_2 = true
    SHX11_2(SHX12_2, SHX13_2, SHX14_2)
    SHX11_2 = SetEntityHeading
    SHX12_2 = SHX9_2
    SHX13_2 = 0.0
    SHX11_2(SHX12_2, SHX13_2)
    SHX11_2 = SetEntityRotation
    SHX12_2 = SHX9_2
    SHX13_2 = 60.0
    SHX14_2 = 20.0
    SHX15_2 = 10.0
    SHX16_2 = 1
    SHX17_2 = true
    SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
    SHX11_2 = AttachEntityToEntity
    SHX12_2 = SHX9_2
    SHX13_2 = SHX1_2
    SHX14_2 = SHX3_2
    SHX15_2 = -0.1
    SHX16_2 = 0.15
    SHX17_2 = -0.3
    SHX18_2 = 180.0
    SHX19_2 = 200.0
    SHX20_2 = 90.0
    SHX21_2 = true
    SHX22_2 = true
    SHX23_2 = false
    SHX24_2 = false
    SHX25_2 = 2
    SHX26_2 = true
    SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
    SHX11_2 = SHX2_1
    SHX12_2 = SHX1_2
    SHX13_2 = 1000
    SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
    SHX10_2 = SHX11_2
  end
  SHX11_2 = tCMG
  SHX11_2 = SHX11_2.stopAnim
  SHX12_2 = true
  SHX11_2(SHX12_2)
  SHX11_2 = ResetPedStrafeClipset
  SHX12_2 = SHX7_2
  SHX11_2(SHX12_2)
  SHX11_2 = ResetPedMovementClipset
  SHX12_2 = SHX7_2
  SHX13_2 = 0.0
  SHX11_2(SHX12_2, SHX13_2)
  SHX11_2 = SetPedCanPlayAmbientAnims
  SHX12_2 = SHX7_2
  SHX13_2 = true
  SHX11_2(SHX12_2, SHX13_2)
  SHX11_2 = SetPedCanPlayAmbientBaseAnims
  SHX12_2 = SHX7_2
  SHX13_2 = true
  SHX11_2(SHX12_2, SHX13_2)
  if not SHX10_2 then
    SHX11_2 = CMG
    SHX11_2 = SHX11_2.getPlayerCoords
    SHX11_2 = SHX11_2()
    SHX11_2 = SHX11_2 - SHX5_2
    SHX11_2 = #SHX11_2
    if not (SHX11_2 > 5.0) then
      goto SHX_LABEL_265
    end
  end
  SHX11_2 = DeleteEntity
  SHX12_2 = SHX9_2
  SHX11_2(SHX12_2)
  SHX11_2 = notify
  SHX12_2 = "~r~Failed to place clamp on vehicle."
  SHX11_2(SHX12_2)
  SHX11_2 = false
  SHX1_1 = SHX11_2
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_265:: outside nested blocks until all 'goto SHX_LABEL_265' can see it
  ::SHX_LABEL_265::
  SHX11_2 = GetGameTimer
  SHX11_2 = SHX11_2()
  while true do
    SHX12_2 = NetworkGetEntityIsNetworked
    SHX13_2 = SHX9_2
    SHX12_2 = SHX12_2(SHX13_2)
    if SHX12_2 then
      SHX12_2 = NetworkGetNetworkIdFromEntity
      SHX13_2 = SHX9_2
      SHX12_2 = SHX12_2(SHX13_2)
      if 0 ~= SHX12_2 then
        break
      end
    end
    SHX12_2 = GetGameTimer
    SHX12_2 = SHX12_2()
    SHX12_2 = SHX12_2 - SHX11_2
    SHX13_2 = 3000
    if SHX12_2 > SHX13_2 then
      SHX12_2 = DeleteEntity
      SHX13_2 = SHX9_2
      SHX12_2(SHX13_2)
      SHX12_2 = false
      SHX1_1 = SHX12_2
      return
    end
    SHX12_2 = Citizen
    SHX12_2 = SHX12_2.Wait
    SHX13_2 = 0
    SHX12_2(SHX13_2)
  end
  SHX12_2 = NetworkGetNetworkIdFromEntity
  SHX13_2 = SHX9_2
  SHX12_2 = SHX12_2(SHX13_2)
  if 0 ~= SHX12_2 then
    SHX13_2 = TriggerServerEvent
    SHX14_2 = "da3b635d57"
    SHX15_2 = SHX0_2
    SHX16_2 = SHX12_2
    SHX13_2(SHX14_2, SHX15_2, SHX16_2)
    SHX13_2 = notify
    SHX14_2 = "~y~Vehicle clamped."
    SHX13_2(SHX14_2)
  end
  SHX13_2 = false
  SHX1_1 = SHX13_2
end
SHX3_1(SHX4_1, SHX5_1)
SHX3_1 = TriggerEvent
SHX4_1 = "chat:addSuggestion"
SHX5_1 = "/clamp"
SHX6_1 = "Clamp the nearest vehicle"
SHX3_1(SHX4_1, SHX5_1, SHX6_1)
SHX3_1 = RegisterNetEvent
SHX4_1 = "1f35d11d0c"
function SHX5_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = NetworkDoesNetworkIdExist
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    return
  end
  SHX2_2 = NetworkGetEntityFromNetworkId
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if not SHX3_2 then
    return
  end
  SHX3_2 = FreezeEntityPosition
  SHX4_2 = SHX2_2
  SHX5_2 = SHX1_2
  SHX3_2(SHX4_2, SHX5_2)
end
SHX3_1(SHX4_1, SHX5_1)
