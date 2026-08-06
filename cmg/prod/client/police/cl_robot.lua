-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1
SHX0_1 = 0
SHX1_1 = 0
SHX2_1 = -1
SHX3_1 = -1
SHX4_1 = false
SHX5_1 = nil
SHX6_1 = 0
SHX7_1 = CMG
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX0_1
  SHX0_2 = 0 ~= SHX0_2
  return SHX0_2
end
SHX7_1.isUsingPoliceRobot = SHX8_1
function SHX7_1(SHX0_2)
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
function SHX8_1(SHX0_2)
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
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = RequestScaleformMovie
  SHX1_2 = "instructional_buttons"
  SHX0_2 = SHX0_2(SHX1_2)
  SHX3_1 = SHX0_2
  while true do
    SHX0_2 = HasScaleformMovieLoaded
    SHX1_2 = SHX3_1
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      break
    end
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
  SHX0_2 = BeginScaleformMovieMethod
  SHX1_2 = SHX3_1
  SHX2_2 = "CLEAR_ALL"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = EndScaleformMovieMethod
  SHX0_2()
  SHX0_2 = BeginScaleformMovieMethod
  SHX1_2 = SHX3_1
  SHX2_2 = "SET_CLEAR_SPACE"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = ScaleformMovieMethodAddParamInt
  SHX1_2 = 200
  SHX0_2(SHX1_2)
  SHX0_2 = EndScaleformMovieMethod
  SHX0_2()
  SHX0_2 = BeginScaleformMovieMethod
  SHX1_2 = SHX3_1
  SHX2_2 = "SET_DATA_SLOT"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = ScaleformMovieMethodAddParamInt
  SHX1_2 = 1
  SHX0_2(SHX1_2)
  SHX0_2 = SHX7_1
  SHX1_2 = GetControlInstructionalButton
  SHX2_2 = 0
  SHX3_2 = 121
  SHX4_2 = true
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = SHX8_1
  SHX1_2 = "Camera Stream"
  SHX0_2(SHX1_2)
  SHX0_2 = EndScaleformMovieMethod
  SHX0_2()
  SHX0_2 = BeginScaleformMovieMethod
  SHX1_2 = SHX3_1
  SHX2_2 = "SET_DATA_SLOT"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = ScaleformMovieMethodAddParamInt
  SHX1_2 = 2
  SHX0_2(SHX1_2)
  SHX0_2 = SHX7_1
  SHX1_2 = GetControlInstructionalButton
  SHX2_2 = 0
  SHX3_2 = 178
  SHX4_2 = true
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = SHX8_1
  SHX1_2 = "Thermal Vision"
  SHX0_2(SHX1_2)
  SHX0_2 = EndScaleformMovieMethod
  SHX0_2()
  SHX0_2 = BeginScaleformMovieMethod
  SHX1_2 = SHX3_1
  SHX2_2 = "SET_DATA_SLOT"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = ScaleformMovieMethodAddParamInt
  SHX1_2 = 3
  SHX0_2(SHX1_2)
  SHX0_2 = SHX7_1
  SHX1_2 = GetControlInstructionalButton
  SHX2_2 = 0
  SHX3_2 = 175
  SHX4_2 = true
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = SHX8_1
  SHX1_2 = "Right"
  SHX0_2(SHX1_2)
  SHX0_2 = EndScaleformMovieMethod
  SHX0_2()
  SHX0_2 = BeginScaleformMovieMethod
  SHX1_2 = SHX3_1
  SHX2_2 = "SET_DATA_SLOT"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = ScaleformMovieMethodAddParamInt
  SHX1_2 = 4
  SHX0_2(SHX1_2)
  SHX0_2 = SHX7_1
  SHX1_2 = GetControlInstructionalButton
  SHX2_2 = 0
  SHX3_2 = 174
  SHX4_2 = true
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = SHX8_1
  SHX1_2 = "Left"
  SHX0_2(SHX1_2)
  SHX0_2 = EndScaleformMovieMethod
  SHX0_2()
  SHX0_2 = BeginScaleformMovieMethod
  SHX1_2 = SHX3_1
  SHX2_2 = "SET_DATA_SLOT"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = ScaleformMovieMethodAddParamInt
  SHX1_2 = 5
  SHX0_2(SHX1_2)
  SHX0_2 = SHX7_1
  SHX1_2 = GetControlInstructionalButton
  SHX2_2 = 0
  SHX3_2 = 173
  SHX4_2 = true
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = SHX8_1
  SHX1_2 = "Backwards"
  SHX0_2(SHX1_2)
  SHX0_2 = EndScaleformMovieMethod
  SHX0_2()
  SHX0_2 = BeginScaleformMovieMethod
  SHX1_2 = SHX3_1
  SHX2_2 = "SET_DATA_SLOT"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = ScaleformMovieMethodAddParamInt
  SHX1_2 = 6
  SHX0_2(SHX1_2)
  SHX0_2 = SHX7_1
  SHX1_2 = GetControlInstructionalButton
  SHX2_2 = 0
  SHX3_2 = 172
  SHX4_2 = true
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = SHX8_1
  SHX1_2 = "Forward"
  SHX0_2(SHX1_2)
  SHX0_2 = EndScaleformMovieMethod
  SHX0_2()
  SHX0_2 = BeginScaleformMovieMethod
  SHX1_2 = SHX3_1
  SHX2_2 = "DRAW_INSTRUCTIONAL_BUTTONS"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = EndScaleformMovieMethod
  SHX0_2()
  SHX0_2 = BeginScaleformMovieMethod
  SHX1_2 = SHX3_1
  SHX2_2 = "SET_BACKGROUND_COLOUR"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = ScaleformMovieMethodAddParamInt
  SHX1_2 = 0
  SHX0_2(SHX1_2)
  SHX0_2 = ScaleformMovieMethodAddParamInt
  SHX1_2 = 0
  SHX0_2(SHX1_2)
  SHX0_2 = ScaleformMovieMethodAddParamInt
  SHX1_2 = 0
  SHX0_2(SHX1_2)
  SHX0_2 = ScaleformMovieMethodAddParamInt
  SHX1_2 = 80
  SHX0_2(SHX1_2)
  SHX0_2 = EndScaleformMovieMethod
  SHX0_2()
end
SHX10_1 = RegisterNetEvent
SHX11_1 = "b1b3d23e07"
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = GetEntityCoords
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX2_2 = GetEntityForwardVector
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX2_2 = SHX2_2 * 2.0
  SHX1_2 = SHX1_2 + SHX2_2
  SHX2_2 = GetEntityHeading
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.requestEntitySpawn
  SHX4_2 = "policerobot"
  SHX5_2 = SHX1_2
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.spawnVehicle
  SHX4_2 = 1376629136
  SHX5_2 = SHX1_2.x
  SHX6_2 = SHX1_2.y
  SHX7_2 = SHX1_2.z
  SHX8_2 = SHX2_2
  SHX9_2 = false
  SHX10_2 = true
  SHX11_2 = true
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX0_1 = SHX3_2
  SHX3_2 = SetVehicleDoorsLocked
  SHX4_2 = SHX0_1
  SHX5_2 = 2
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SetVehicleDoorsLockedForAllPlayers
  SHX4_2 = SHX0_1
  SHX5_2 = true
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.loadModel
  SHX4_2 = -1613485779
  SHX3_2(SHX4_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.requestEntitySpawn
  SHX4_2 = "policerobot_ped"
  SHX5_2 = SHX1_2
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = CreatePedInsideVehicle
  SHX4_2 = SHX0_1
  SHX5_2 = 0
  SHX6_2 = -1613485779
  SHX7_2 = -1
  SHX8_2 = true
  SHX9_2 = true
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX4_2 = SetModelAsNoLongerNeeded
  SHX5_2 = -1613485779
  SHX4_2(SHX5_2)
  SHX4_2 = SetEntityCanBeDamaged
  SHX5_2 = SHX3_2
  SHX6_2 = false
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SetEntityInvincible
  SHX5_2 = SHX3_2
  SHX6_2 = true
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SetEntityVisible
  SHX5_2 = SHX3_2
  SHX6_2 = false
  SHX7_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = FreezeEntityPosition
  SHX5_2 = SHX3_2
  SHX6_2 = true
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SetPedAlertness
  SHX5_2 = SHX3_2
  SHX6_2 = 0.0
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SetBlockingOfNonTemporaryEvents
  SHX5_2 = SHX3_2
  SHX6_2 = true
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SHX9_1
  SHX4_2()
  while true do
    SHX4_2 = NetworkGetEntityIsNetworked
    SHX5_2 = SHX0_1
    SHX4_2 = SHX4_2(SHX5_2)
    if SHX4_2 then
      SHX4_2 = NetworkGetNetworkIdFromEntity
      SHX5_2 = SHX0_1
      SHX4_2 = SHX4_2(SHX5_2)
      if 0 ~= SHX4_2 then
        break
      end
    end
    SHX4_2 = Citizen
    SHX4_2 = SHX4_2.Wait
    SHX5_2 = 0
    SHX4_2(SHX5_2)
  end
  SHX4_2 = Citizen
  SHX4_2 = SHX4_2.Wait
  SHX5_2 = 1000
  SHX4_2(SHX5_2)
  SHX4_2 = NetworkGetNetworkIdFromEntity
  SHX5_2 = SHX0_1
  SHX4_2 = SHX4_2(SHX5_2)
  SHX1_1 = SHX4_2
  SHX4_2 = TriggerServerEvent
  SHX5_2 = "b1b3d23e07"
  SHX6_2 = SHX1_1
  SHX4_2(SHX5_2, SHX6_2)
end
SHX10_1(SHX11_1, SHX12_1)
function SHX10_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  if SHX2_2 then
    SHX3_2 = 200
    if SHX3_2 then
      goto SHX_LABEL_7
    end
  end
  SHX3_2 = 1
  -- [FIX IF ERROR] Move ::SHX_LABEL_7:: outside nested blocks until all 'goto SHX_LABEL_7' can see it
  ::SHX_LABEL_7::
  SHX4_2 = GetPedInVehicleSeat
  SHX5_2 = SHX1_2
  SHX6_2 = -1
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  if "forward" == SHX0_2 then
    SHX5_2 = TaskVehicleTempAction
    SHX6_2 = SHX4_2
    SHX7_2 = SHX1_2
    SHX8_2 = 9
    SHX9_2 = SHX3_2
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  elseif "brake" == SHX0_2 then
    SHX5_2 = TaskVehicleTempAction
    SHX6_2 = SHX4_2
    SHX7_2 = SHX1_2
    SHX8_2 = 6
    SHX9_2 = 2500
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  elseif "reverse" == SHX0_2 then
    SHX5_2 = TaskVehicleTempAction
    SHX6_2 = SHX4_2
    SHX7_2 = SHX1_2
    SHX8_2 = 22
    SHX9_2 = SHX3_2
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  elseif "rightReverse" == SHX0_2 then
    SHX5_2 = TaskVehicleTempAction
    SHX6_2 = SHX4_2
    SHX7_2 = SHX1_2
    SHX8_2 = 13
    SHX9_2 = SHX3_2
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  elseif "leftReverse" == SHX0_2 then
    SHX5_2 = TaskVehicleTempAction
    SHX6_2 = SHX4_2
    SHX7_2 = SHX1_2
    SHX8_2 = 14
    SHX9_2 = SHX3_2
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  elseif "burnout" == SHX0_2 then
    SHX5_2 = TaskVehicleTempAction
    SHX6_2 = SHX4_2
    SHX7_2 = SHX1_2
    SHX8_2 = 30
    if SHX2_2 then
      SHX9_2 = 200
      if SHX9_2 then
        goto SHX_LABEL_68
      end
    end
    SHX9_2 = 100
    -- [FIX IF ERROR] Move ::SHX_LABEL_68:: outside nested blocks until all 'goto SHX_LABEL_68' can see it
    ::SHX_LABEL_68::
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  elseif "leftForward" == SHX0_2 then
    SHX5_2 = TaskVehicleTempAction
    SHX6_2 = SHX4_2
    SHX7_2 = SHX1_2
    SHX8_2 = 7
    SHX9_2 = SHX3_2
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  elseif "rightForward" == SHX0_2 then
    SHX5_2 = TaskVehicleTempAction
    SHX6_2 = SHX4_2
    SHX7_2 = SHX1_2
    SHX8_2 = 8
    SHX9_2 = SHX3_2
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  elseif "rotateLeft" == SHX0_2 then
    SHX5_2 = TaskVehicleTempAction
    SHX6_2 = SHX4_2
    SHX7_2 = SHX1_2
    SHX8_2 = 4
    SHX9_2 = SHX3_2
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  elseif "rotateRight" == SHX0_2 then
    SHX5_2 = TaskVehicleTempAction
    SHX6_2 = SHX4_2
    SHX7_2 = SHX1_2
    SHX8_2 = 5
    SHX9_2 = SHX3_2
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  end
end
SHX11_1 = RegisterNetEvent
SHX12_1 = "b7edeadea5"
function SHX13_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = NetworkDoesEntityExistWithNetworkId
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = NetworkGetEntityFromNetworkId
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if 0 ~= SHX2_2 then
      SHX3_2 = NetworkHasControlOfEntity
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if SHX3_2 then
        SHX3_2 = SHX10_1
        SHX4_2 = SHX0_2
        SHX5_2 = SHX2_2
        SHX6_2 = true
        SHX3_2(SHX4_2, SHX5_2, SHX6_2)
      end
    end
  end
end
SHX11_1(SHX12_1, SHX13_1)
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = NetworkHasControlOfEntity
  SHX2_2 = SHX0_1
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = SHX10_1
    SHX2_2 = SHX0_2
    SHX3_2 = SHX0_1
    SHX4_2 = false
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  else
    SHX1_2 = GetGameTimer
    SHX1_2 = SHX1_2()
    SHX2_2 = SHX6_1
    SHX2_2 = SHX1_2 - SHX2_2
    SHX3_2 = 150
    if not (SHX2_2 > SHX3_2) then
      SHX2_2 = SHX5_1
      if SHX2_2 == SHX0_2 then
        goto SHX_LABEL_29
      end
    end
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "b7edeadea5"
    SHX4_2 = SHX0_2
    SHX2_2(SHX3_2, SHX4_2)
    SHX5_1 = SHX0_2
    SHX6_1 = SHX1_2
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_29:: outside nested blocks until all 'goto SHX_LABEL_29' can see it
  ::SHX_LABEL_29::
end
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = SHX2_1
  if -1 == SHX0_2 then
    SHX0_2 = CreateCam
    SHX1_2 = "DEFAULT_SCRIPTED_CAMERA"
    SHX2_2 = true
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    SHX2_1 = SHX0_2
    SHX0_2 = AttachCamToEntity
    SHX1_2 = SHX2_1
    SHX2_2 = SHX0_1
    SHX3_2 = -0.3
    SHX4_2 = 0.0
    SHX5_2 = 0.5
    SHX6_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    SHX0_2 = SetCamActive
    SHX1_2 = SHX2_1
    SHX2_2 = true
    SHX0_2(SHX1_2, SHX2_2)
    SHX0_2 = RenderScriptCams
    SHX1_2 = true
    SHX2_2 = true
    SHX3_2 = 0
    SHX4_2 = true
    SHX5_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
    SHX0_2 = SetTimecycleModifier
    SHX1_2 = "scanline_cam_cheap"
    SHX0_2(SHX1_2)
    SHX0_2 = SetTimecycleModifierStrength
    SHX1_2 = 1.0
    SHX0_2(SHX1_2)
  else
    SHX0_2 = ClearTimecycleModifier
    SHX0_2()
    SHX0_2 = SetSeethrough
    SHX1_2 = false
    SHX0_2(SHX1_2)
    SHX0_2 = RenderScriptCams
    SHX1_2 = false
    SHX2_2 = false
    SHX3_2 = 0
    SHX4_2 = false
    SHX5_2 = false
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
    SHX0_2 = SetCamActive
    SHX1_2 = SHX2_1
    SHX2_2 = false
    SHX0_2(SHX1_2, SHX2_2)
    SHX0_2 = DestroyCam
    SHX1_2 = SHX2_1
    SHX2_2 = false
    SHX0_2(SHX1_2, SHX2_2)
    SHX0_2 = -1
    SHX2_1 = SHX0_2
    SHX0_2 = false
    SHX4_1 = SHX0_2
  end
end
SHX13_1 = RegisterNetEvent
SHX14_1 = "71c20e82b7"
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX2_1
  if -1 ~= SHX0_2 then
    SHX0_2 = SHX12_1
    SHX0_2()
  end
  SHX0_2 = SHX3_1
  if -1 ~= SHX0_2 then
    SHX0_2 = SetScaleformMovieAsNoLongerNeeded
    SHX1_2 = SHX3_1
    SHX0_2(SHX1_2)
    SHX0_2 = -1
    SHX3_1 = SHX0_2
  end
  SHX0_2 = 0
  SHX0_1 = SHX0_2
  SHX0_2 = 0
  SHX1_1 = SHX0_2
end
SHX13_1(SHX14_1, SHX15_1)
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = SHX0_1
  if 0 == SHX0_2 then
    return
  end
  SHX0_2 = DoesEntityExist
  SHX1_2 = SHX0_1
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 then
    SHX0_2 = SHX2_1
    if -1 ~= SHX0_2 then
      SHX0_2 = SHX12_1
      SHX0_2()
    else
      SHX0_2 = NetworkDoesEntityExistWithNetworkId
      SHX1_2 = SHX1_1
      SHX0_2 = SHX0_2(SHX1_2)
      if SHX0_2 then
        SHX0_2 = NetworkGetEntityFromNetworkId
        SHX1_2 = SHX1_1
        SHX0_2 = SHX0_2(SHX1_2)
        SHX0_1 = SHX0_2
      end
    end
    return
  end
  SHX0_2 = IsControlPressed
  SHX1_2 = 0
  SHX2_2 = 172
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = IsControlPressed
    SHX1_2 = 0
    SHX2_2 = 173
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if not SHX0_2 then
      SHX0_2 = SHX11_1
      SHX1_2 = "forward"
      SHX0_2(SHX1_2)
    end
  end
  SHX0_2 = IsControlJustReleased
  SHX1_2 = 0
  SHX2_2 = 172
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if not SHX0_2 then
    SHX0_2 = IsControlJustReleased
    SHX1_2 = 0
    SHX2_2 = 173
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if not SHX0_2 then
      goto SHX_LABEL_56
    end
  end
  SHX0_2 = SHX11_1
  SHX1_2 = "brake"
  SHX0_2(SHX1_2)
  -- [FIX IF ERROR] Move ::SHX_LABEL_56:: outside nested blocks until all 'goto SHX_LABEL_56' can see it
  ::SHX_LABEL_56::
  SHX0_2 = IsControlPressed
  SHX1_2 = 0
  SHX2_2 = 173
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = IsControlPressed
    SHX1_2 = 0
    SHX2_2 = 172
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if not SHX0_2 then
      SHX0_2 = SHX11_1
      SHX1_2 = "reverse"
      SHX0_2(SHX1_2)
    end
  end
  SHX0_2 = IsControlPressed
  SHX1_2 = 0
  SHX2_2 = 174
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = IsControlPressed
    SHX1_2 = 0
    SHX2_2 = 173
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if SHX0_2 then
      SHX0_2 = SHX11_1
      SHX1_2 = "rightReverse"
      SHX0_2(SHX1_2)
    end
  end
  SHX0_2 = IsControlPressed
  SHX1_2 = 0
  SHX2_2 = 175
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = IsControlPressed
    SHX1_2 = 0
    SHX2_2 = 173
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if SHX0_2 then
      SHX0_2 = SHX11_1
      SHX1_2 = "rightReverse"
      SHX0_2(SHX1_2)
    end
  end
  SHX0_2 = IsControlPressed
  SHX1_2 = 0
  SHX2_2 = 172
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = IsControlPressed
    SHX1_2 = 0
    SHX2_2 = 173
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if SHX0_2 then
      SHX0_2 = SHX11_1
      SHX1_2 = "burnout"
      SHX0_2(SHX1_2)
    end
  end
  SHX0_2 = IsControlPressed
  SHX1_2 = 0
  SHX2_2 = 174
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = IsControlPressed
    SHX1_2 = 0
    SHX2_2 = 172
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if SHX0_2 then
      SHX0_2 = SHX11_1
      SHX1_2 = "leftForward"
      SHX0_2(SHX1_2)
    end
  end
  SHX0_2 = IsControlPressed
  SHX1_2 = 0
  SHX2_2 = 175
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = IsControlPressed
    SHX1_2 = 0
    SHX2_2 = 172
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if SHX0_2 then
      SHX0_2 = SHX11_1
      SHX1_2 = "rightForward"
      SHX0_2(SHX1_2)
    end
  end
  SHX0_2 = IsControlPressed
  SHX1_2 = 0
  SHX2_2 = 174
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = IsControlPressed
    SHX1_2 = 0
    SHX2_2 = 172
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if not SHX0_2 then
      SHX0_2 = IsControlPressed
      SHX1_2 = 0
      SHX2_2 = 173
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
      if not SHX0_2 then
        SHX0_2 = SHX11_1
        SHX1_2 = "rotateLeft"
        SHX0_2(SHX1_2)
      end
    end
  end
  SHX0_2 = IsControlPressed
  SHX1_2 = 0
  SHX2_2 = 175
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = IsControlPressed
    SHX1_2 = 0
    SHX2_2 = 172
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if not SHX0_2 then
      SHX0_2 = IsControlPressed
      SHX1_2 = 0
      SHX2_2 = 173
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
      if not SHX0_2 then
        SHX0_2 = SHX11_1
        SHX1_2 = "rotateRight"
        SHX0_2(SHX1_2)
      end
    end
  end
  SHX0_2 = IsControlJustPressed
  SHX1_2 = 0
  SHX2_2 = 121
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = SHX12_1
    SHX0_2()
  end
  SHX0_2 = SHX2_1
  if -1 ~= SHX0_2 then
    SHX0_2 = GetEntityRotation
    SHX1_2 = SHX0_1
    SHX0_2 = SHX0_2(SHX1_2)
    SHX1_2 = SetCamRot
    SHX2_2 = SHX2_1
    SHX3_2 = SHX0_2.x
    SHX4_2 = SHX0_2.y
    SHX5_2 = SHX0_2.z
    SHX6_2 = 2
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    SHX1_2 = IsControlJustPressed
    SHX2_2 = 0
    SHX3_2 = 178
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    if SHX1_2 then
      SHX1_2 = SHX4_1
      SHX1_2 = not SHX1_2
      SHX4_1 = SHX1_2
      SHX1_2 = SHX4_1
      if SHX1_2 then
        SHX1_2 = SetSeethrough
        SHX2_2 = true
        SHX1_2(SHX2_2)
      else
        SHX1_2 = SetSeethrough
        SHX2_2 = false
        SHX1_2(SHX2_2)
      end
    end
  end
  SHX0_2 = DrawScaleformMovieFullscreen
  SHX1_2 = SHX3_1
  SHX2_2 = 255
  SHX3_2 = 255
  SHX4_2 = 255
  SHX5_2 = 255
  SHX6_2 = 0
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
end
SHX14_1 = CMG
SHX14_1 = SHX14_1.createThreadOnTick
SHX15_1 = SHX13_1
SHX16_1 = "Robot Controls"
SHX14_1(SHX15_1, SHX16_1)
