-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1
SHX0_1 = -537896628
SHX1_1 = -1613485779
SHX2_1 = {}
SHX2_1.active = false
SHX2_1.vehicleHandle = 0
SHX2_1.driverHandle = 0
SHX2_1.cameraEnabled = false
SHX2_1.cameraHandle = 0
SHX2_1.nightVisionEnabled = false
SHX2_1.hoseEnabled = false
SHX2_1.thermal = false
SHX3_1 = CMG
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX2_1.active
  return SHX0_2
end
SHX3_1.isPlayerUsingRobot = SHX4_1
SHX3_1 = false
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = SHX2_1.cameraEnabled
  if SHX0_2 then
    SHX0_2 = math
    SHX0_2 = SHX0_2.ceil
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerCoords
    SHX1_2 = SHX1_2()
    SHX2_2 = GetEntityCoords
    SHX3_2 = SHX2_1.vehicleHandle
    SHX2_2 = SHX2_2(SHX3_2)
    SHX1_2 = SHX1_2 - SHX2_2
    SHX1_2 = #SHX1_2
    SHX1_2 = SHX1_2 / 10
    SHX0_2 = SHX0_2(SHX1_2)
    SHX0_2 = 500 * SHX0_2
    SHX1_2 = RenderScriptCams
    SHX2_2 = false
    SHX3_2 = true
    SHX4_2 = SHX0_2
    SHX5_2 = true
    SHX6_2 = false
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    SHX1_2 = ClearTimecycleModifier
    SHX1_2()
    SHX1_2 = DoesCamExist
    SHX2_2 = SHX2_1.cameraHandle
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = DestroyCam
      SHX2_2 = SHX2_1.cameraHandle
      SHX3_2 = false
      SHX1_2(SHX2_2, SHX3_2)
    end
    SHX2_1.cameraEnabled = false
    SHX1_2 = SHX2_1.nightVisionEnabled
    if SHX1_2 then
      SHX1_2 = SetNightvision
      SHX2_2 = false
      SHX1_2(SHX2_2)
      SHX2_1.nightVisionEnabled = false
    end
  else
    SHX0_2 = CreateCam
    SHX1_2 = "DEFAULT_SCRIPTED_CAMERA"
    SHX2_2 = true
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    SHX2_1.cameraHandle = SHX0_2
    SHX0_2 = AttachCamToEntity
    SHX1_2 = SHX2_1.cameraHandle
    SHX2_2 = SHX2_1.vehicleHandle
    SHX3_2 = -0.3
    SHX4_2 = 0.0
    SHX5_2 = 1.2
    SHX6_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    SHX0_2 = math
    SHX0_2 = SHX0_2.ceil
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerCoords
    SHX1_2 = SHX1_2()
    SHX2_2 = GetEntityCoords
    SHX3_2 = SHX2_1.vehicleHandle
    SHX2_2 = SHX2_2(SHX3_2)
    SHX1_2 = SHX1_2 - SHX2_2
    SHX1_2 = #SHX1_2
    SHX1_2 = SHX1_2 / 10
    SHX0_2 = SHX0_2(SHX1_2)
    SHX0_2 = 500 * SHX0_2
    SHX2_1.cameraEnabled = true
    SHX1_2 = RenderScriptCams
    SHX2_2 = true
    SHX3_2 = true
    SHX4_2 = SHX0_2
    SHX5_2 = true
    SHX6_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    SHX1_2 = Wait
    SHX2_2 = SHX0_2
    SHX1_2(SHX2_2)
    SHX1_2 = SetTimecycleModifier
    SHX2_2 = "scanline_cam_cheap"
    SHX1_2(SHX2_2)
    SHX1_2 = SetTimecycleModifierStrength
    SHX2_2 = 1.0
    SHX1_2(SHX2_2)
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.CreateThread
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3
      while true do
        SHX0_3 = DoesCamExist
        SHX1_3 = SHX2_1.cameraHandle
        SHX0_3 = SHX0_3(SHX1_3)
        if not SHX0_3 then
          break
        end
        SHX0_3 = Citizen
        SHX0_3 = SHX0_3.Wait
        SHX1_3 = 2
        SHX0_3(SHX1_3)
        SHX0_3 = GetEntityRotation
        SHX1_3 = SHX2_1.vehicleHandle
        SHX0_3 = SHX0_3(SHX1_3)
        SHX1_3 = SetCamRot
        SHX2_3 = SHX2_1.cameraHandle
        SHX3_3 = SHX0_3.x
        SHX4_3 = SHX0_3.y
        SHX5_3 = SHX0_3.z
        SHX6_3 = 2
        SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
      end
    end
    SHX1_2(SHX2_2)
  end
end
SHX5_1 = {}
SHX6_1 = TriggerEvent
SHX7_1 = "chat:addSuggestion"
SHX8_1 = "/eod"
SHX9_1 = "Setup or remove an EOD robot."
SHX6_1(SHX7_1, SHX8_1, SHX9_1)
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX2_1.hoseEnabled
  if SHX0_2 then
    SHX0_2 = TriggerServerEvent
    SHX1_2 = "c8662fcaa0"
    SHX2_2 = VehToNet
    SHX3_2 = SHX2_1.vehicleHandle
    SHX2_2, SHX3_2 = SHX2_2(SHX3_2)
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  end
  SHX0_2 = Wait
  SHX1_2 = 500
  SHX0_2(SHX1_2)
  SHX2_1.active = false
  SHX0_2 = DeletePed
  SHX1_2 = SHX2_1.driverHandle
  SHX0_2(SHX1_2)
  SHX0_2 = SetEntityAsMissionEntity
  SHX1_2 = SHX2_1.vehicleHandle
  SHX2_2 = false
  SHX3_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DeleteEntity
  SHX1_2 = SHX2_1.vehicleHandle
  SHX0_2(SHX1_2)
  SHX0_2 = SetModelAsNoLongerNeeded
  SHX1_2 = SHX0_1
  SHX0_2(SHX1_2)
  SHX0_2 = SHX2_1.thermal
  if SHX0_2 then
    SHX0_2 = SetSeethrough
    SHX1_2 = false
    SHX0_2(SHX1_2)
  end
end
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.loadModel
  SHX1_2 = SHX0_1
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.loadModel
  SHX1_2 = SHX1_1
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = GetOffsetFromEntityInWorldCoords
  SHX2_2 = SHX0_2
  SHX3_2 = 0.0
  SHX4_2 = 4.0
  SHX5_2 = 0.0
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = GetEntityHeading
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.requestEntitySpawn
  SHX4_2 = "eod"
  SHX5_2 = SHX1_2
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.spawnVehicle
  SHX4_2 = SHX0_1
  SHX5_2 = SHX1_2.x
  SHX6_2 = SHX1_2.y
  SHX7_2 = SHX1_2.z
  SHX8_2 = SHX2_2
  SHX9_2 = false
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX2_1.vehicleHandle = SHX3_2
  SHX3_2 = Wait
  SHX4_2 = 1000
  SHX3_2(SHX4_2)
  SHX3_2 = SetEntityAsMissionEntity
  SHX4_2 = SHX2_1.vehicleHandle
  SHX5_2 = true
  SHX6_2 = true
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = NetworkGetNetworkIdFromEntity
  SHX4_2 = SHX2_1.vehicleHandle
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = NetworkUseHighPrecisionBlending
  SHX5_2 = SHX3_2
  SHX6_2 = true
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SetNetworkIdCanMigrate
  SHX5_2 = SHX3_2
  SHX6_2 = true
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SetNetworkIdExistsOnAllMachines
  SHX5_2 = SHX3_2
  SHX6_2 = true
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.requestEntitySpawn
  SHX5_2 = "eod_ped"
  SHX6_2 = SHX1_2
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = CreatePed
  SHX5_2 = 4
  SHX6_2 = SHX1_1
  SHX7_2 = SHX1_2.x
  SHX8_2 = SHX1_2.y
  SHX9_2 = SHX1_2.z
  SHX10_2 = SHX2_2
  SHX11_2 = true
  SHX12_2 = true
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX2_1.driverHandle = SHX4_2
  SHX4_2 = SetEntityInvincible
  SHX5_2 = SHX2_1.driverHandle
  SHX6_2 = true
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SetEntityVisible
  SHX5_2 = SHX2_1.driverHandle
  SHX6_2 = false
  SHX7_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = FreezeEntityPosition
  SHX5_2 = SHX2_1.driverHandle
  SHX6_2 = true
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SetPedAlertness
  SHX5_2 = SHX2_1.driverHandle
  SHX6_2 = 0.0
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = TaskWarpPedIntoVehicle
  SHX5_2 = SHX2_1.driverHandle
  SHX6_2 = SHX2_1.vehicleHandle
  SHX7_2 = -1
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  while true do
    SHX4_2 = IsPedInVehicle
    SHX5_2 = SHX2_1.driverHandle
    SHX6_2 = SHX2_1.vehicleHandle
    SHX7_2 = false
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    if SHX4_2 then
      break
    end
    SHX4_2 = Wait
    SHX5_2 = 0
    SHX4_2(SHX5_2)
  end
  SHX4_2 = SetVehicleDoorsLocked
  SHX5_2 = SHX2_1.vehicleHandle
  SHX6_2 = 2
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SetVehicleDoorsLockedForAllPlayers
  SHX5_2 = SHX2_1.vehicleHandle
  SHX6_2 = true
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SetModelAsNoLongerNeeded
  SHX5_2 = SHX0_1
  SHX4_2(SHX5_2)
  SHX4_2 = SetModelAsNoLongerNeeded
  SHX5_2 = SHX1_1
  SHX4_2(SHX5_2)
  SHX2_1.active = true
end
SHX8_1 = RegisterNetEvent
SHX9_1 = "6303abd345"
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX2_1.active
  if not SHX0_2 then
    SHX0_2 = SHX7_1
    SHX0_2()
  else
    SHX0_2 = SHX6_1
    SHX0_2()
  end
end
SHX8_1(SHX9_1, SHX10_1)
function SHX8_1()
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
    SHX0_3 = PlaySoundFrontend
    SHX1_3 = -1
    SHX2_3 = "5s_To_Event_Start_Countdown"
    SHX3_3 = "GTAO_FM_Events_Soundset"
    SHX4_3 = true
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
    SHX0_3 = drawNativeNotification
    SHX1_3 = "Press ~INPUT_FRONTEND_LT~ to cancel."
    SHX0_3(SHX1_3)
    SHX0_3 = Wait
    SHX1_3 = 8000
    SHX0_3(SHX1_3)
    SHX0_3 = SHX3_1
    if not SHX0_3 then
      SHX0_3 = SetEntityInvincible
      SHX1_3 = SHX2_1.vehicleHandle
      SHX2_3 = true
      SHX0_3(SHX1_3, SHX2_3)
      SHX0_3 = GetOffsetFromEntityInWorldCoords
      SHX1_3 = SHX2_1.vehicleHandle
      SHX2_3 = 0.0
      SHX3_3 = 2.0
      SHX4_3 = 0.1
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
      SHX1_3 = TriggerServerEvent
      SHX2_3 = "a2c6350ee0"
      SHX3_3 = SHX0_3
      SHX1_3(SHX2_3, SHX3_3)
      SHX1_3 = SetVehicleFixed
      SHX2_3 = SHX2_1.vehicleHandle
      SHX1_3(SHX2_3)
      SHX1_3 = PlaySoundFrontend
      SHX2_3 = -1
      SHX3_3 = "Bomb_Disarmed"
      SHX4_3 = "GTAO_Speed_Convoy_Soundset"
      SHX5_3 = true
      SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3)
      SHX1_3 = Wait
      SHX2_3 = 1000
      SHX1_3(SHX2_3)
      SHX1_3 = PlaySoundFrontend
      SHX2_3 = -1
      SHX3_3 = "BASE_JUMP_PASSED"
      SHX4_3 = "HUD_AWARDS"
      SHX5_3 = true
      SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    end
    SHX0_3 = false
    SHX3_1 = SHX0_3
  end
  SHX0_2(SHX1_2)
end
SHX9_1 = Citizen
SHX9_1 = SHX9_1.CreateThread
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  while true do
    SHX0_2 = SHX2_1.active
    if SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.getPlayerCoords
      SHX0_2 = SHX0_2()
      SHX1_2 = GetEntityCoords
      SHX2_2 = SHX2_1.vehicleHandle
      SHX3_2 = true
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
      SHX2_2 = SHX0_2 - SHX1_2
      SHX2_2 = #SHX2_2
      SHX3_2 = 1000.0
      if SHX2_2 <= SHX3_2 then
        SHX3_2 = NetworkHasControlOfEntity
        SHX4_2 = SHX2_1.driverHandle
        SHX3_2 = SHX3_2(SHX4_2)
        if not SHX3_2 then
          SHX3_2 = NetworkRequestControlOfEntity
          SHX4_2 = SHX2_1.driverHandle
          SHX3_2(SHX4_2)
        else
          SHX3_2 = NetworkHasControlOfEntity
          SHX4_2 = SHX2_1.vehicleHandle
          SHX3_2 = SHX3_2(SHX4_2)
          if not SHX3_2 then
            SHX3_2 = NetworkRequestControlOfEntity
            SHX4_2 = SHX2_1.vehicleHandle
            SHX3_2(SHX4_2)
          end
        end
      else
        SHX3_2 = TaskVehicleTempAction
        SHX4_2 = SHX2_1.driverHandle
        SHX5_2 = SHX2_1.vehicleHandle
        SHX6_2 = 6
        SHX7_2 = 2500
        SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
      end
      SHX3_2 = DisableControlAction
      SHX4_2 = 0
      SHX5_2 = 172
      SHX6_2 = true
      SHX3_2(SHX4_2, SHX5_2, SHX6_2)
      SHX3_2 = DisableControlAction
      SHX4_2 = 1
      SHX5_2 = 172
      SHX6_2 = true
      SHX3_2(SHX4_2, SHX5_2, SHX6_2)
      SHX3_2 = DisableControlAction
      SHX4_2 = 0
      SHX5_2 = 300
      SHX6_2 = true
      SHX3_2(SHX4_2, SHX5_2, SHX6_2)
      SHX3_2 = DisableControlAction
      SHX4_2 = 0
      SHX5_2 = 27
      SHX6_2 = true
      SHX3_2(SHX4_2, SHX5_2, SHX6_2)
      SHX3_2 = DisableControlAction
      SHX4_2 = 1
      SHX5_2 = 27
      SHX6_2 = true
      SHX3_2(SHX4_2, SHX5_2, SHX6_2)
      SHX3_2 = DisableControlAction
      SHX4_2 = 0
      SHX5_2 = 188
      SHX6_2 = true
      SHX3_2(SHX4_2, SHX5_2, SHX6_2)
      SHX3_2 = DisableControlAction
      SHX4_2 = 1
      SHX5_2 = 188
      SHX6_2 = true
      SHX3_2(SHX4_2, SHX5_2, SHX6_2)
      SHX3_2 = IsDisabledControlPressed
      SHX4_2 = 0
      SHX5_2 = 172
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
      if SHX3_2 then
        SHX3_2 = IsControlPressed
        SHX4_2 = 0
        SHX5_2 = 173
        SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
        if not SHX3_2 then
          SHX3_2 = TaskVehicleTempAction
          SHX4_2 = SHX2_1.driverHandle
          SHX5_2 = SHX2_1.vehicleHandle
          SHX6_2 = 9
          SHX7_2 = 1
          SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
        end
      end
      SHX3_2 = IsDisabledControlJustReleased
      SHX4_2 = 0
      SHX5_2 = 172
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
      if not SHX3_2 then
        SHX3_2 = IsControlJustReleased
        SHX4_2 = 0
        SHX5_2 = 173
        SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
        if not SHX3_2 then
          goto SHX_LABEL_112
        end
      end
      SHX3_2 = TaskVehicleTempAction
      SHX4_2 = SHX2_1.driverHandle
      SHX5_2 = SHX2_1.vehicleHandle
      SHX6_2 = 6
      SHX7_2 = 2500
      SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
      -- [FIX IF ERROR] Move ::SHX_LABEL_112:: outside nested blocks until all 'goto SHX_LABEL_112' can see it
      ::SHX_LABEL_112::
      SHX3_2 = IsControlPressed
      SHX4_2 = 0
      SHX5_2 = 173
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
      if SHX3_2 then
        SHX3_2 = IsDisabledControlPressed
        SHX4_2 = 0
        SHX5_2 = 172
        SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
        if not SHX3_2 then
          SHX3_2 = TaskVehicleTempAction
          SHX4_2 = SHX2_1.driverHandle
          SHX5_2 = SHX2_1.vehicleHandle
          SHX6_2 = 22
          SHX7_2 = 1
          SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
        end
      end
      SHX3_2 = IsControlPressed
      SHX4_2 = 0
      SHX5_2 = 174
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
      if SHX3_2 then
        SHX3_2 = IsControlPressed
        SHX4_2 = 0
        SHX5_2 = 173
        SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
        if SHX3_2 then
          SHX3_2 = TaskVehicleTempAction
          SHX4_2 = SHX2_1.driverHandle
          SHX5_2 = SHX2_1.vehicleHandle
          SHX6_2 = 13
          SHX7_2 = 1
          SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
        end
      end
      SHX3_2 = IsControlPressed
      SHX4_2 = 0
      SHX5_2 = 175
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
      if SHX3_2 then
        SHX3_2 = IsControlPressed
        SHX4_2 = 0
        SHX5_2 = 173
        SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
        if SHX3_2 then
          SHX3_2 = TaskVehicleTempAction
          SHX4_2 = SHX2_1.driverHandle
          SHX5_2 = SHX2_1.vehicleHandle
          SHX6_2 = 14
          SHX7_2 = 1
          SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
        end
      end
      SHX3_2 = IsDisabledControlPressed
      SHX4_2 = 0
      SHX5_2 = 172
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
      if SHX3_2 then
        SHX3_2 = IsControlPressed
        SHX4_2 = 0
        SHX5_2 = 173
        SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
        if SHX3_2 then
          SHX3_2 = TaskVehicleTempAction
          SHX4_2 = SHX2_1.driverHandle
          SHX5_2 = SHX2_1.vehicleHandle
          SHX6_2 = 30
          SHX7_2 = 100
          SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
        end
      end
      SHX3_2 = IsControlPressed
      SHX4_2 = 0
      SHX5_2 = 174
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
      if SHX3_2 then
        SHX3_2 = IsDisabledControlPressed
        SHX4_2 = 0
        SHX5_2 = 172
        SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
        if SHX3_2 then
          SHX3_2 = TaskVehicleTempAction
          SHX4_2 = SHX2_1.driverHandle
          SHX5_2 = SHX2_1.vehicleHandle
          SHX6_2 = 7
          SHX7_2 = 1
          SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
        end
      end
      SHX3_2 = IsControlPressed
      SHX4_2 = 0
      SHX5_2 = 175
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
      if SHX3_2 then
        SHX3_2 = IsDisabledControlPressed
        SHX4_2 = 0
        SHX5_2 = 172
        SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
        if SHX3_2 then
          SHX3_2 = TaskVehicleTempAction
          SHX4_2 = SHX2_1.driverHandle
          SHX5_2 = SHX2_1.vehicleHandle
          SHX6_2 = 8
          SHX7_2 = 1
          SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
        end
      end
      SHX3_2 = IsControlPressed
      SHX4_2 = 0
      SHX5_2 = 174
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
      if SHX3_2 then
        SHX3_2 = IsDisabledControlPressed
        SHX4_2 = 0
        SHX5_2 = 172
        SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
        if not SHX3_2 then
          SHX3_2 = IsControlPressed
          SHX4_2 = 0
          SHX5_2 = 173
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
          if not SHX3_2 then
            SHX3_2 = TaskVehicleTempAction
            SHX4_2 = SHX2_1.driverHandle
            SHX5_2 = SHX2_1.vehicleHandle
            SHX6_2 = 4
            SHX7_2 = 1
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          end
        end
      end
      SHX3_2 = IsControlPressed
      SHX4_2 = 0
      SHX5_2 = 175
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
      if SHX3_2 then
        SHX3_2 = IsDisabledControlPressed
        SHX4_2 = 0
        SHX5_2 = 172
        SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
        if not SHX3_2 then
          SHX3_2 = IsControlPressed
          SHX4_2 = 0
          SHX5_2 = 173
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
          if not SHX3_2 then
            SHX3_2 = TaskVehicleTempAction
            SHX4_2 = SHX2_1.driverHandle
            SHX5_2 = SHX2_1.vehicleHandle
            SHX6_2 = 5
            SHX7_2 = 1
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          end
        end
      end
      SHX3_2 = IsControlJustPressed
      SHX4_2 = 0
      SHX5_2 = 121
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
      if SHX3_2 then
        SHX3_2 = SHX4_1
        SHX3_2()
      end
      SHX3_2 = IsControlJustPressed
      SHX4_2 = 0
      SHX5_2 = 178
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
      if SHX3_2 then
        SHX3_2 = SHX2_1.cameraEnabled
        if SHX3_2 then
          SHX3_2 = SHX2_1.thermal
          if SHX3_2 then
            SHX3_2 = SetSeethrough
            SHX4_2 = false
            SHX3_2(SHX4_2)
            SHX2_1.thermal = false
          else
            SHX3_2 = SetSeethrough
            SHX4_2 = true
            SHX3_2(SHX4_2)
            SHX2_1.thermal = true
          end
        end
      end
      SHX3_2 = IsControlJustPressed
      SHX4_2 = 0
      SHX5_2 = 212
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
      if SHX3_2 then
        SHX3_2 = SHX2_1.cameraEnabled
        if SHX3_2 then
          SHX3_2 = SHX2_1.nightVisionEnabled
          if SHX3_2 then
            SHX3_2 = SetNightvision
            SHX4_2 = false
            SHX3_2(SHX4_2)
            SHX2_1.nightVisionEnabled = false
          else
            SHX3_2 = SetNightvision
            SHX4_2 = true
            SHX3_2(SHX4_2)
            SHX2_1.nightVisionEnabled = true
          end
        end
      end
      SHX3_2 = IsControlJustPressed
      SHX4_2 = 0
      SHX5_2 = 208
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
      if SHX3_2 then
        SHX3_2 = SHX8_1
        SHX3_2()
      end
      SHX3_2 = IsControlJustPressed
      SHX4_2 = 0
      SHX5_2 = 207
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
      if SHX3_2 then
        SHX3_2 = true
        SHX3_1 = SHX3_2
        SHX3_2 = drawNativeNotification
        SHX4_2 = "Explosion cancelled"
        SHX3_2(SHX4_2)
      end
      SHX3_2 = SHX2_1.hoseEnabled
      if not SHX3_2 then
        SHX3_2 = IsControlPressed
        SHX4_2 = 1
        SHX5_2 = 74
        SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
        if SHX3_2 then
          SHX2_1.hoseEnabled = true
          SHX3_2 = PlaySoundFrontend
          SHX4_2 = -1
          SHX5_2 = "EDIT"
          SHX6_2 = "HUD_DEATHMATCH_SOUNDSET"
          SHX7_2 = true
          SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          SHX3_2 = TriggerServerEvent
          SHX4_2 = "620bb841c2"
          SHX5_2 = NetworkGetNetworkIdFromEntity
          SHX6_2 = SHX2_1.vehicleHandle
          SHX5_2, SHX6_2, SHX7_2 = SHX5_2(SHX6_2)
          SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          while true do
            SHX3_2 = IsControlJustReleased
            SHX4_2 = 1
            SHX5_2 = 74
            SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
            if SHX3_2 then
              SHX3_2 = SHX2_1.hoseEnabled
              if SHX3_2 then
                break
              end
            end
            SHX3_2 = DisableControlAction
            SHX4_2 = 0
            SHX5_2 = 172
            SHX6_2 = true
            SHX3_2(SHX4_2, SHX5_2, SHX6_2)
            SHX3_2 = DisableControlAction
            SHX4_2 = 1
            SHX5_2 = 172
            SHX6_2 = true
            SHX3_2(SHX4_2, SHX5_2, SHX6_2)
            SHX3_2 = DisableControlAction
            SHX4_2 = 0
            SHX5_2 = 300
            SHX6_2 = true
            SHX3_2(SHX4_2, SHX5_2, SHX6_2)
            SHX3_2 = DisableControlAction
            SHX4_2 = 0
            SHX5_2 = 27
            SHX6_2 = true
            SHX3_2(SHX4_2, SHX5_2, SHX6_2)
            SHX3_2 = DisableControlAction
            SHX4_2 = 1
            SHX5_2 = 27
            SHX6_2 = true
            SHX3_2(SHX4_2, SHX5_2, SHX6_2)
            SHX3_2 = DisableControlAction
            SHX4_2 = 0
            SHX5_2 = 188
            SHX6_2 = true
            SHX3_2(SHX4_2, SHX5_2, SHX6_2)
            SHX3_2 = DisableControlAction
            SHX4_2 = 1
            SHX5_2 = 188
            SHX6_2 = true
            SHX3_2(SHX4_2, SHX5_2, SHX6_2)
            SHX3_2 = IsDisabledControlPressed
            SHX4_2 = 0
            SHX5_2 = 172
            SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
            if SHX3_2 then
              SHX3_2 = IsControlPressed
              SHX4_2 = 0
              SHX5_2 = 173
              SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
              if not SHX3_2 then
                SHX3_2 = TaskVehicleTempAction
                SHX4_2 = SHX2_1.driverHandle
                SHX5_2 = SHX2_1.vehicleHandle
                SHX6_2 = 9
                SHX7_2 = 1
                SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
              end
            end
            SHX3_2 = IsDisabledControlJustReleased
            SHX4_2 = 0
            SHX5_2 = 172
            SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
            if not SHX3_2 then
              SHX3_2 = IsControlJustReleased
              SHX4_2 = 0
              SHX5_2 = 173
              SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
              if not SHX3_2 then
                goto SHX_LABEL_439
              end
            end
            SHX3_2 = TaskVehicleTempAction
            SHX4_2 = SHX2_1.driverHandle
            SHX5_2 = SHX2_1.vehicleHandle
            SHX6_2 = 6
            SHX7_2 = 2500
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
            -- [FIX IF ERROR] Move ::SHX_LABEL_439:: outside nested blocks until all 'goto SHX_LABEL_439' can see it
            ::SHX_LABEL_439::
            SHX3_2 = IsControlPressed
            SHX4_2 = 0
            SHX5_2 = 173
            SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
            if SHX3_2 then
              SHX3_2 = IsDisabledControlPressed
              SHX4_2 = 0
              SHX5_2 = 172
              SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
              if not SHX3_2 then
                SHX3_2 = TaskVehicleTempAction
                SHX4_2 = SHX2_1.driverHandle
                SHX5_2 = SHX2_1.vehicleHandle
                SHX6_2 = 22
                SHX7_2 = 1
                SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
              end
            end
            SHX3_2 = IsControlPressed
            SHX4_2 = 0
            SHX5_2 = 174
            SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
            if SHX3_2 then
              SHX3_2 = IsControlPressed
              SHX4_2 = 0
              SHX5_2 = 173
              SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
              if SHX3_2 then
                SHX3_2 = TaskVehicleTempAction
                SHX4_2 = SHX2_1.driverHandle
                SHX5_2 = SHX2_1.vehicleHandle
                SHX6_2 = 13
                SHX7_2 = 1
                SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
              end
            end
            SHX3_2 = IsControlPressed
            SHX4_2 = 0
            SHX5_2 = 175
            SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
            if SHX3_2 then
              SHX3_2 = IsControlPressed
              SHX4_2 = 0
              SHX5_2 = 173
              SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
              if SHX3_2 then
                SHX3_2 = TaskVehicleTempAction
                SHX4_2 = SHX2_1.driverHandle
                SHX5_2 = SHX2_1.vehicleHandle
                SHX6_2 = 14
                SHX7_2 = 1
                SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
              end
            end
            SHX3_2 = IsDisabledControlPressed
            SHX4_2 = 0
            SHX5_2 = 172
            SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
            if SHX3_2 then
              SHX3_2 = IsControlPressed
              SHX4_2 = 0
              SHX5_2 = 173
              SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
              if SHX3_2 then
                SHX3_2 = TaskVehicleTempAction
                SHX4_2 = SHX2_1.driverHandle
                SHX5_2 = SHX2_1.vehicleHandle
                SHX6_2 = 30
                SHX7_2 = 100
                SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
              end
            end
            SHX3_2 = IsControlPressed
            SHX4_2 = 0
            SHX5_2 = 174
            SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
            if SHX3_2 then
              SHX3_2 = IsDisabledControlPressed
              SHX4_2 = 0
              SHX5_2 = 172
              SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
              if SHX3_2 then
                SHX3_2 = TaskVehicleTempAction
                SHX4_2 = SHX2_1.driverHandle
                SHX5_2 = SHX2_1.vehicleHandle
                SHX6_2 = 7
                SHX7_2 = 1
                SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
              end
            end
            SHX3_2 = IsControlPressed
            SHX4_2 = 0
            SHX5_2 = 175
            SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
            if SHX3_2 then
              SHX3_2 = IsDisabledControlPressed
              SHX4_2 = 0
              SHX5_2 = 172
              SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
              if SHX3_2 then
                SHX3_2 = TaskVehicleTempAction
                SHX4_2 = SHX2_1.driverHandle
                SHX5_2 = SHX2_1.vehicleHandle
                SHX6_2 = 8
                SHX7_2 = 1
                SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
              end
            end
            SHX3_2 = IsControlPressed
            SHX4_2 = 0
            SHX5_2 = 174
            SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
            if SHX3_2 then
              SHX3_2 = IsDisabledControlPressed
              SHX4_2 = 0
              SHX5_2 = 172
              SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
              if not SHX3_2 then
                SHX3_2 = IsControlPressed
                SHX4_2 = 0
                SHX5_2 = 173
                SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
                if not SHX3_2 then
                  SHX3_2 = TaskVehicleTempAction
                  SHX4_2 = SHX2_1.driverHandle
                  SHX5_2 = SHX2_1.vehicleHandle
                  SHX6_2 = 4
                  SHX7_2 = 1
                  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
                end
              end
            end
            SHX3_2 = IsControlPressed
            SHX4_2 = 0
            SHX5_2 = 175
            SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
            if SHX3_2 then
              SHX3_2 = IsDisabledControlPressed
              SHX4_2 = 0
              SHX5_2 = 172
              SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
              if not SHX3_2 then
                SHX3_2 = IsControlPressed
                SHX4_2 = 0
                SHX5_2 = 173
                SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
                if not SHX3_2 then
                  SHX3_2 = TaskVehicleTempAction
                  SHX4_2 = SHX2_1.driverHandle
                  SHX5_2 = SHX2_1.vehicleHandle
                  SHX6_2 = 5
                  SHX7_2 = 1
                  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
                end
              end
            end
            SHX3_2 = IsControlJustPressed
            SHX4_2 = 0
            SHX5_2 = 178
            SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
            if SHX3_2 then
              SHX3_2 = SHX2_1.cameraEnabled
              if SHX3_2 then
                SHX3_2 = SHX2_1.thermal
                if SHX3_2 then
                  SHX3_2 = SetSeethrough
                  SHX4_2 = false
                  SHX3_2(SHX4_2)
                  SHX2_1.thermal = false
                else
                  SHX3_2 = SetSeethrough
                  SHX4_2 = true
                  SHX3_2(SHX4_2)
                  SHX2_1.thermal = true
                end
              end
            end
            SHX3_2 = IsControlJustPressed
            SHX4_2 = 0
            SHX5_2 = 212
            SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
            if SHX3_2 then
              SHX3_2 = SHX2_1.cameraEnabled
              if SHX3_2 then
                SHX3_2 = SHX2_1.nightVisionEnabled
                if SHX3_2 then
                  SHX3_2 = SetNightvision
                  SHX4_2 = false
                  SHX3_2(SHX4_2)
                  SHX2_1.nightVisionEnabled = false
                else
                  SHX3_2 = SetNightvision
                  SHX4_2 = true
                  SHX3_2(SHX4_2)
                  SHX2_1.nightVisionEnabled = true
                end
              end
            end
            SHX3_2 = IsControlJustPressed
            SHX4_2 = 0
            SHX5_2 = 208
            SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
            if SHX3_2 then
              SHX3_2 = SHX8_1
              SHX3_2()
            end
            SHX3_2 = IsControlJustPressed
            SHX4_2 = 0
            SHX5_2 = 207
            SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
            if SHX3_2 then
              SHX3_2 = true
              SHX3_1 = SHX3_2
            end
            SHX3_2 = Wait
            SHX4_2 = 0
            SHX3_2(SHX4_2)
          end
          SHX3_2 = SHX2_1.hoseEnabled
          if SHX3_2 then
            SHX3_2 = TriggerServerEvent
            SHX4_2 = "c8662fcaa0"
            SHX5_2 = NetworkGetNetworkIdFromEntity
            SHX6_2 = SHX2_1.vehicleHandle
            SHX5_2, SHX6_2, SHX7_2 = SHX5_2(SHX6_2)
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
            SHX2_1.hoseEnabled = false
          end
        end
      end
    end
    SHX0_2 = Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
end
SHX9_1(SHX10_1)
SHX9_1 = RegisterNetEvent
SHX10_1 = "baeeded899"
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerCoords
  SHX1_2 = SHX1_2()
  SHX1_2 = SHX0_2 - SHX1_2
  SHX1_2 = #SHX1_2
  SHX2_2 = 150.0
  if SHX1_2 < SHX2_2 then
    SHX2_2 = AddOwnedExplosion
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.getPlayerPed
    SHX3_2 = SHX3_2()
    SHX4_2 = SHX0_2.x
    SHX5_2 = SHX0_2.y
    SHX6_2 = SHX0_2.z
    SHX7_2 = 4
    SHX8_2 = 17.0
    SHX9_2 = true
    SHX10_2 = false
    SHX11_2 = 6.0
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  end
end
SHX9_1(SHX10_1, SHX11_1)
SHX9_1 = RegisterNetEvent
SHX10_1 = "620bb841c2"
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadPtfx
  SHX2_2 = "core"
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getObjectId
  SHX2_2 = SHX0_2
  SHX3_2 = "eodActivateHose"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if not SHX1_2 then
    return
  end
  SHX2_2 = SHX5_1
  SHX3_2 = {}
  SHX4_2 = SHX1_2
  SHX5_2 = SHX1_2
  SHX3_2[1] = SHX4_2
  SHX3_2[2] = SHX5_2
  SHX2_2[SHX1_2] = SHX3_2
  SHX2_2 = UseParticleFxAsset
  SHX3_2 = "core"
  SHX2_2(SHX3_2)
  SHX2_2 = SetParticleFxShootoutBoat
  SHX3_2 = 1
  SHX2_2(SHX3_2)
  SHX2_2 = StartParticleFxLoopedOnEntity
  SHX3_2 = "water_cannon_jet"
  SHX4_2 = SHX1_2
  SHX5_2 = 0.0
  SHX6_2 = 0.19
  SHX7_2 = 1.1
  SHX8_2 = 0.0
  SHX9_2 = 0.0
  SHX10_2 = -0.7
  SHX11_2 = 0.7
  SHX12_2 = false
  SHX13_2 = false
  SHX14_2 = false
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  while true do
    SHX3_2 = SHX5_1
    SHX3_2 = SHX3_2[SHX1_2]
    if nil == SHX3_2 then
      break
    end
    SHX3_2 = Wait
    SHX4_2 = 100
    SHX3_2(SHX4_2)
  end
  SHX3_2 = StopParticleFxLooped
  SHX4_2 = SHX2_2
  SHX5_2 = false
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = RemoveNamedPtfxAsset
  SHX4_2 = "core"
  SHX3_2(SHX4_2)
end
SHX9_1(SHX10_1, SHX11_1)
SHX9_1 = RegisterNetEvent
SHX10_1 = "c8662fcaa0"
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getObjectId
  SHX2_2 = SHX0_2
  SHX3_2 = "eodDeactivateHose"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if not SHX1_2 then
    return
  end
  SHX2_2 = SHX5_1
  SHX2_2[SHX1_2] = nil
end
SHX9_1(SHX10_1, SHX11_1)
SHX9_1 = RegisterNetEvent
SHX10_1 = "879e33c266"
function SHX11_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerCoords
  SHX3_2 = SHX3_2()
  SHX3_2 = SHX0_2 - SHX3_2
  SHX3_2 = #SHX3_2
  if SHX3_2 < 30.0 then
    SHX4_2 = PlaySoundFrontend
    SHX5_2 = -1
    SHX6_2 = SHX1_2
    SHX7_2 = SHX2_2
    SHX8_2 = true
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  end
end
SHX9_1(SHX10_1, SHX11_1)
SHX9_1 = RegisterCommand
SHX10_1 = "eodvisorup"
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getClientUserId
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.isDeveloper
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = SetPedPropIndex
      SHX2_2 = PlayerPedId
      SHX2_2 = SHX2_2()
      SHX3_2 = 0
      SHX4_2 = 191
      SHX5_2 = 0
      SHX6_2 = true
      SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    end
  end
end
SHX12_1 = false
SHX9_1(SHX10_1, SHX11_1, SHX12_1)
SHX9_1 = RegisterCommand
SHX10_1 = "eodvisordown"
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getClientUserId
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.isDeveloper
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = SetPedPropIndex
      SHX2_2 = PlayerPedId
      SHX2_2 = SHX2_2()
      SHX3_2 = 0
      SHX4_2 = 190
      SHX5_2 = 0
      SHX6_2 = true
      SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    end
  end
end
SHX12_1 = false
SHX9_1(SHX10_1, SHX11_1, SHX12_1)
