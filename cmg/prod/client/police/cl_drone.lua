-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1
SHX0_1 = 948655685
SHX1_1 = 190.0
SHX2_1 = TriggerEvent
SHX3_1 = "chat:addSuggestion"
SHX4_1 = "/drone"
SHX5_1 = "Create or delete a remote controlled drone"
SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX2_1 = {}
SHX2_1.active = false
SHX2_1.vehicleHandle = 0
SHX2_1.driverHandle = 0
SHX2_1.cameraEnabled = false
SHX2_1.cameraHandle = 0
SHX2_1.nightVisionEnabled = false
SHX2_1.thermalEnabled = false
SHX2_1.landing = false
SHX2_1.tablet = 0
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
SHX3_1.isPlayerInDrone = SHX4_1
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX2_1.cameraEnabled
  if SHX1_2 then
    SHX1_2 = DoesEntityExist
    SHX2_2 = SHX2_1.tablet
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = DeleteEntity
      SHX2_2 = SHX2_1.tablet
      SHX1_2(SHX2_2)
      SHX1_2 = ClearPedTasks
      SHX2_2 = SHX0_2
      SHX1_2(SHX2_2)
    end
    SHX1_2 = math
    SHX1_2 = SHX1_2.ceil
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.getPlayerCoords
    SHX2_2 = SHX2_2()
    SHX3_2 = GetEntityCoords
    SHX4_2 = SHX2_1.vehicleHandle
    SHX3_2 = SHX3_2(SHX4_2)
    SHX2_2 = SHX2_2 - SHX3_2
    SHX2_2 = #SHX2_2
    SHX2_2 = SHX2_2 / 10
    SHX1_2 = SHX1_2(SHX2_2)
    SHX1_2 = 500 * SHX1_2
    SHX2_2 = RenderScriptCams
    SHX3_2 = false
    SHX4_2 = false
    SHX5_2 = SHX1_2
    SHX6_2 = true
    SHX7_2 = false
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
    SHX2_2 = ClearTimecycleModifier
    SHX2_2()
    SHX2_2 = DoesCamExist
    SHX3_2 = SHX2_1.cameraHandle
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      SHX2_2 = DestroyCam
      SHX3_2 = SHX2_1.cameraHandle
      SHX4_2 = false
      SHX2_2(SHX3_2, SHX4_2)
    end
    SHX2_1.cameraEnabled = false
    SHX2_2 = SHX2_1.nightVisionEnabled
    if SHX2_2 then
      SHX2_2 = SetNightvision
      SHX3_2 = false
      SHX2_2(SHX3_2)
      SHX2_1.nightVisionEnabled = false
    end
    SHX2_2 = SHX2_1.thermalEnabled
    if SHX2_2 then
      SHX2_2 = SetSeethrough
      SHX3_2 = false
      SHX2_2(SHX3_2)
      SHX2_1.thermalEnabled = false
    end
    SHX2_2 = FreezeEntityPosition
    SHX3_2 = SHX0_2
    SHX4_2 = false
    SHX2_2(SHX3_2, SHX4_2)
  else
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.loadModel
    SHX2_2 = -1585232418
    SHX1_2 = SHX1_2(SHX2_2)
    if not SHX1_2 then
      return
    end
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.getPlayerCoords
    SHX2_2 = SHX2_2()
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.requestEntitySpawn
    SHX4_2 = "drone_tablet"
    SHX3_2(SHX4_2)
    SHX3_2 = CreateObject
    SHX4_2 = SHX1_2
    SHX5_2 = SHX2_2.x
    SHX6_2 = SHX2_2.y
    SHX7_2 = SHX2_2.z
    SHX8_2 = true
    SHX9_2 = false
    SHX10_2 = false
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    SHX2_1.tablet = SHX3_2
    SHX3_2 = SetModelAsNoLongerNeeded
    SHX4_2 = SHX1_2
    SHX3_2(SHX4_2)
    SHX3_2 = AttachEntityToEntity
    SHX4_2 = SHX2_1.tablet
    SHX5_2 = SHX0_2
    SHX6_2 = GetPedBoneIndex
    SHX7_2 = SHX0_2
    SHX8_2 = 28422
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
    SHX7_2 = -0.03
    SHX8_2 = 0.0
    SHX9_2 = 0.0
    SHX10_2 = 0.0
    SHX11_2 = 0.0
    SHX12_2 = 0.0
    SHX13_2 = true
    SHX14_2 = true
    SHX15_2 = false
    SHX16_2 = true
    SHX17_2 = 1
    SHX18_2 = true
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.loadAnimDict
    SHX4_2 = "amb@code_human_in_bus_passenger_idles@female@tablet@idle_a"
    SHX3_2(SHX4_2)
    SHX3_2 = TaskPlayAnim
    SHX4_2 = SHX0_2
    SHX5_2 = "amb@code_human_in_bus_passenger_idles@female@tablet@idle_a"
    SHX6_2 = "idle_a"
    SHX7_2 = 3.0
    SHX8_2 = -8
    SHX9_2 = -1
    SHX10_2 = 63
    SHX11_2 = 0
    SHX12_2 = false
    SHX13_2 = false
    SHX14_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX2_1.cameraEnabled = true
    SHX3_2 = CreateCam
    SHX4_2 = "DEFAULT_SCRIPTED_CAMERA"
    SHX5_2 = true
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
    SHX2_1.cameraHandle = SHX3_2
    SHX3_2 = {}
    SHX3_2.x = 0.0
    SHX3_2.z = 0.0
    SHX4_2 = 70.0
    SHX5_2 = AttachCamToEntity
    SHX6_2 = SHX2_1.cameraHandle
    SHX7_2 = SHX2_1.vehicleHandle
    SHX8_2 = 0.0
    SHX9_2 = 0.1
    SHX10_2 = -0.1
    SHX11_2 = true
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX5_2 = Citizen
    SHX5_2 = SHX5_2.CreateThread
    function SHX6_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3
      while true do
        SHX0_3 = DoesCamExist
        SHX1_3 = SHX2_1.cameraHandle
        SHX0_3 = SHX0_3(SHX1_3)
        if not SHX0_3 then
          break
        end
        SHX0_3 = GetEntityRotation
        SHX1_3 = SHX2_1.vehicleHandle
        SHX2_3 = 2
        SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
        SHX1_3 = DisableControlAction
        SHX2_3 = 0
        SHX3_3 = 32
        SHX4_3 = true
        SHX1_3(SHX2_3, SHX3_3, SHX4_3)
        SHX1_3 = DisableControlAction
        SHX2_3 = 0
        SHX3_3 = 33
        SHX4_3 = true
        SHX1_3(SHX2_3, SHX3_3, SHX4_3)
        SHX1_3 = DisableControlAction
        SHX2_3 = 0
        SHX3_3 = 34
        SHX4_3 = true
        SHX1_3(SHX2_3, SHX3_3, SHX4_3)
        SHX1_3 = DisableControlAction
        SHX2_3 = 0
        SHX3_3 = 35
        SHX4_3 = true
        SHX1_3(SHX2_3, SHX3_3, SHX4_3)
        SHX1_3 = DisableControlAction
        SHX2_3 = 0
        SHX3_3 = 157
        SHX4_3 = true
        SHX1_3(SHX2_3, SHX3_3, SHX4_3)
        SHX1_3 = DisableControlAction
        SHX2_3 = 0
        SHX3_3 = 158
        SHX4_3 = true
        SHX1_3(SHX2_3, SHX3_3, SHX4_3)
        SHX1_3 = IsDisabledControlPressed
        SHX2_3 = 0
        SHX3_3 = 32
        SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
        if SHX1_3 then
          SHX1_3 = SHX3_2.x
          SHX1_3 = SHX1_3 + 1.0
          SHX3_2.x = SHX1_3
        end
        SHX1_3 = IsDisabledControlPressed
        SHX2_3 = 0
        SHX3_3 = 33
        SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
        if SHX1_3 then
          SHX1_3 = SHX3_2.x
          SHX1_3 = SHX1_3 - 1.0
          SHX3_2.x = SHX1_3
        end
        SHX1_3 = IsDisabledControlPressed
        SHX2_3 = 0
        SHX3_3 = 34
        SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
        if SHX1_3 then
          SHX1_3 = SHX3_2.z
          SHX1_3 = SHX1_3 + 1.0
          SHX3_2.z = SHX1_3
        end
        SHX1_3 = IsDisabledControlPressed
        SHX2_3 = 0
        SHX3_3 = 35
        SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
        if SHX1_3 then
          SHX1_3 = SHX3_2.z
          SHX1_3 = SHX1_3 - 1.0
          SHX3_2.z = SHX1_3
        end
        SHX1_3 = DisableControlAction
        SHX2_3 = 0
        SHX3_3 = 45
        SHX4_3 = true
        SHX1_3(SHX2_3, SHX3_3, SHX4_3)
        SHX1_3 = DisableControlAction
        SHX2_3 = 0
        SHX3_3 = 51
        SHX4_3 = true
        SHX1_3(SHX2_3, SHX3_3, SHX4_3)
        SHX1_3 = IsDisabledControlPressed
        SHX2_3 = 0
        SHX3_3 = 45
        SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
        if SHX1_3 then
          SHX1_3 = math
          SHX1_3 = SHX1_3.max
          SHX2_3 = 20.0
          SHX3_3 = SHX4_2
          SHX4_3 = GetFrameTime
          SHX4_3 = SHX4_3()
          SHX4_3 = 100.0 * SHX4_3
          SHX3_3 = SHX3_3 - SHX4_3
          SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
          SHX4_2 = SHX1_3
        end
        SHX1_3 = IsDisabledControlPressed
        SHX2_3 = 0
        SHX3_3 = 49
        SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
        if SHX1_3 then
          SHX1_3 = math
          SHX1_3 = SHX1_3.min
          SHX2_3 = 70.0
          SHX3_3 = SHX4_2
          SHX4_3 = GetFrameTime
          SHX4_3 = SHX4_3()
          SHX4_3 = 100.0 * SHX4_3
          SHX3_3 = SHX3_3 + SHX4_3
          SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
          SHX4_2 = SHX1_3
        end
        SHX1_3 = SetCamRot
        SHX2_3 = SHX2_1.cameraHandle
        SHX3_3 = SHX0_3.x
        SHX4_3 = SHX3_2.x
        SHX3_3 = SHX3_3 + SHX4_3
        SHX4_3 = SHX0_3.y
        SHX5_3 = SHX0_3.z
        SHX6_3 = SHX3_2.z
        SHX5_3 = SHX5_3 + SHX6_3
        SHX6_3 = 2
        SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
        SHX1_3 = SetCamFov
        SHX2_3 = SHX2_1.cameraHandle
        SHX3_3 = SHX4_2
        SHX1_3(SHX2_3, SHX3_3)
        SHX1_3 = IsEntityPlayingAnim
        SHX2_3 = SHX0_2
        SHX3_3 = "amb@code_human_in_bus_passenger_idles@female@tablet@idle_a"
        SHX4_3 = "idle_a"
        SHX5_3 = 3
        SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3)
        if not SHX1_3 then
          SHX1_3 = TaskPlayAnim
          SHX2_3 = SHX0_2
          SHX3_3 = "amb@code_human_in_bus_passenger_idles@female@tablet@idle_a"
          SHX4_3 = "idle_a"
          SHX5_3 = 3.0
          SHX6_3 = -8
          SHX7_3 = -1
          SHX8_3 = 63
          SHX9_3 = 0
          SHX10_3 = false
          SHX11_3 = false
          SHX12_3 = false
          SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
        end
        SHX1_3 = Citizen
        SHX1_3 = SHX1_3.Wait
        SHX2_3 = 0
        SHX1_3(SHX2_3)
      end
      SHX0_3 = RemoveAnimDict
      SHX1_3 = "amb@code_human_in_bus_passenger_idles@female@tablet@idle_a"
      SHX0_3(SHX1_3)
      SHX0_3 = ClearPedTasks
      SHX1_3 = SHX0_2
      SHX0_3(SHX1_3)
    end
    SHX5_2(SHX6_2)
    SHX5_2 = math
    SHX5_2 = SHX5_2.ceil
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.getPlayerCoords
    SHX6_2 = SHX6_2()
    SHX7_2 = GetEntityCoords
    SHX8_2 = SHX2_1.vehicleHandle
    SHX7_2 = SHX7_2(SHX8_2)
    SHX6_2 = SHX6_2 - SHX7_2
    SHX6_2 = #SHX6_2
    SHX6_2 = SHX6_2 / 10
    SHX5_2 = SHX5_2(SHX6_2)
    SHX5_2 = 500 * SHX5_2
    SHX6_2 = RenderScriptCams
    SHX7_2 = true
    SHX8_2 = true
    SHX9_2 = SHX5_2
    SHX10_2 = true
    SHX11_2 = true
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX6_2 = Wait
    SHX7_2 = SHX5_2
    SHX6_2(SHX7_2)
    SHX6_2 = FreezeEntityPosition
    SHX7_2 = SHX0_2
    SHX8_2 = true
    SHX6_2(SHX7_2, SHX8_2)
    SHX6_2 = SetTimecycleModifier
    SHX7_2 = "scanline_cam_cheap"
    SHX6_2(SHX7_2)
    SHX6_2 = SetTimecycleModifierStrength
    SHX7_2 = 0.7
    SHX6_2(SHX7_2)
  end
end
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
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
  SHX0_2 = SHX2_1.cameraEnabled
  if SHX0_2 then
    SHX0_2 = SHX3_1
    SHX0_2()
  end
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.notify
  SHX1_2 = "Drone ~b~removed~w~."
  SHX0_2(SHX1_2)
end
function SHX5_1(SHX0_2)
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
  SHX2_2 = BeginScaleformMovieMethod
  SHX3_2 = SHX1_2
  SHX4_2 = "SET_DATA_SLOT"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = ScaleformMovieMethodAddParamInt
  SHX3_2 = 0
  SHX2_2(SHX3_2)
  SHX2_2 = Button
  SHX3_2 = GetControlInstructionalButton
  SHX4_2 = 0
  SHX5_2 = 44
  SHX6_2 = true
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = ButtonMessage
  SHX3_2 = "Up"
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
  SHX4_2 = 0
  SHX5_2 = 175
  SHX6_2 = true
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = ButtonMessage
  SHX3_2 = "Right"
  SHX2_2(SHX3_2)
  SHX2_2 = EndScaleformMovieMethod
  SHX2_2()
  SHX2_2 = BeginScaleformMovieMethod
  SHX3_2 = SHX1_2
  SHX4_2 = "SET_DATA_SLOT"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = ScaleformMovieMethodAddParamInt
  SHX3_2 = 2
  SHX2_2(SHX3_2)
  SHX2_2 = Button
  SHX3_2 = GetControlInstructionalButton
  SHX4_2 = 0
  SHX5_2 = 174
  SHX6_2 = true
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = ButtonMessage
  SHX3_2 = "Left"
  SHX2_2(SHX3_2)
  SHX2_2 = EndScaleformMovieMethod
  SHX2_2()
  SHX2_2 = BeginScaleformMovieMethod
  SHX3_2 = SHX1_2
  SHX4_2 = "SET_DATA_SLOT"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = ScaleformMovieMethodAddParamInt
  SHX3_2 = 3
  SHX2_2(SHX3_2)
  SHX2_2 = Button
  SHX3_2 = GetControlInstructionalButton
  SHX4_2 = 0
  SHX5_2 = 173
  SHX6_2 = true
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = ButtonMessage
  SHX3_2 = "Backward"
  SHX2_2(SHX3_2)
  SHX2_2 = EndScaleformMovieMethod
  SHX2_2()
  SHX2_2 = BeginScaleformMovieMethod
  SHX3_2 = SHX1_2
  SHX4_2 = "SET_DATA_SLOT"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = ScaleformMovieMethodAddParamInt
  SHX3_2 = 4
  SHX2_2(SHX3_2)
  SHX2_2 = Button
  SHX3_2 = GetControlInstructionalButton
  SHX4_2 = 0
  SHX5_2 = 172
  SHX6_2 = true
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = ButtonMessage
  SHX3_2 = "Forward"
  SHX2_2(SHX3_2)
  SHX2_2 = EndScaleformMovieMethod
  SHX2_2()
  SHX2_2 = BeginScaleformMovieMethod
  SHX3_2 = SHX1_2
  SHX4_2 = "SET_DATA_SLOT"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = ScaleformMovieMethodAddParamInt
  SHX3_2 = 5
  SHX2_2(SHX3_2)
  SHX2_2 = Button
  SHX3_2 = GetControlInstructionalButton
  SHX4_2 = 0
  SHX5_2 = 191
  SHX6_2 = true
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = ButtonMessage
  SHX3_2 = "Camera"
  SHX2_2(SHX3_2)
  SHX2_2 = EndScaleformMovieMethod
  SHX2_2()
  SHX2_2 = BeginScaleformMovieMethod
  SHX3_2 = SHX1_2
  SHX4_2 = "SET_DATA_SLOT"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = ScaleformMovieMethodAddParamInt
  SHX3_2 = 6
  SHX2_2(SHX3_2)
  SHX2_2 = Button
  SHX3_2 = GetControlInstructionalButton
  SHX4_2 = 0
  SHX5_2 = 158
  SHX6_2 = true
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = ButtonMessage
  SHX3_2 = "Night Vision"
  SHX2_2(SHX3_2)
  SHX2_2 = EndScaleformMovieMethod
  SHX2_2()
  SHX2_2 = BeginScaleformMovieMethod
  SHX3_2 = SHX1_2
  SHX4_2 = "SET_DATA_SLOT"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = ScaleformMovieMethodAddParamInt
  SHX3_2 = 7
  SHX2_2(SHX3_2)
  SHX2_2 = Button
  SHX3_2 = GetControlInstructionalButton
  SHX4_2 = 0
  SHX5_2 = 157
  SHX6_2 = true
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = ButtonMessage
  SHX3_2 = "Thermal"
  SHX2_2(SHX3_2)
  SHX2_2 = EndScaleformMovieMethod
  SHX2_2()
  SHX2_2 = BeginScaleformMovieMethod
  SHX3_2 = SHX1_2
  SHX4_2 = "SET_DATA_SLOT"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = ScaleformMovieMethodAddParamInt
  SHX3_2 = 8
  SHX2_2(SHX3_2)
  SHX2_2 = Button
  SHX3_2 = GetControlInstructionalButton
  SHX4_2 = 0
  SHX5_2 = 45
  SHX6_2 = true
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = ButtonMessage
  SHX3_2 = "Zoom In"
  SHX2_2(SHX3_2)
  SHX2_2 = EndScaleformMovieMethod
  SHX2_2()
  SHX2_2 = BeginScaleformMovieMethod
  SHX3_2 = SHX1_2
  SHX4_2 = "SET_DATA_SLOT"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = ScaleformMovieMethodAddParamInt
  SHX3_2 = 9
  SHX2_2(SHX3_2)
  SHX2_2 = Button
  SHX3_2 = GetControlInstructionalButton
  SHX4_2 = 0
  SHX5_2 = 49
  SHX6_2 = true
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = ButtonMessage
  SHX3_2 = "Zoom Out"
  SHX2_2(SHX3_2)
  SHX2_2 = EndScaleformMovieMethod
  SHX2_2()
  SHX2_2 = BeginScaleformMovieMethod
  SHX3_2 = SHX1_2
  SHX4_2 = "SET_DATA_SLOT"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = ScaleformMovieMethodAddParamInt
  SHX3_2 = 10
  SHX2_2(SHX3_2)
  SHX2_2 = Button
  SHX3_2 = GetControlInstructionalButton
  SHX4_2 = 0
  SHX5_2 = 121
  SHX6_2 = true
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = ButtonMessage
  SHX3_2 = "Land"
  SHX2_2(SHX3_2)
  SHX2_2 = EndScaleformMovieMethod
  SHX2_2()
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
SHX6_1 = Citizen
SHX6_1 = SHX6_1.CreateThread
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  SHX0_2 = SHX5_1
  SHX1_2 = "instructional_buttons"
  SHX0_2 = SHX0_2(SHX1_2)
  while true do
    SHX1_2 = SHX2_1.active
    if SHX1_2 then
      SHX1_2 = DrawScaleformMovieFullscreen
      SHX2_2 = SHX0_2
      SHX3_2 = 255
      SHX4_2 = 255
      SHX5_2 = 255
      SHX6_2 = 255
      SHX7_2 = 0
      SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
      SHX1_2 = NetworkHasControlOfEntity
      SHX2_2 = SHX2_1.driverHandle
      SHX1_2 = SHX1_2(SHX2_2)
      if SHX1_2 then
        SHX1_2 = NetworkHasControlOfEntity
        SHX2_2 = SHX2_1.vehicleHandle
        SHX1_2 = SHX1_2(SHX2_2)
        if SHX1_2 then
          goto SHX_LABEL_31
        end
      end
      SHX1_2 = tCMG
      SHX1_2 = SHX1_2.notify
      SHX2_2 = "You have ~b~lost control ~w~of the drone, after going out of range"
      SHX1_2(SHX2_2)
      SHX1_2 = SHX4_1
      SHX1_2()
      -- [FIX IF ERROR] Move ::SHX_LABEL_31:: outside nested blocks until all 'goto SHX_LABEL_31' can see it
      ::SHX_LABEL_31::
      SHX1_2 = DisableControlAction
      SHX2_2 = 0
      SHX3_2 = 172
      SHX4_2 = true
      SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      SHX1_2 = DisableControlAction
      SHX2_2 = 1
      SHX3_2 = 172
      SHX4_2 = true
      SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      SHX1_2 = DisableControlAction
      SHX2_2 = 0
      SHX3_2 = 300
      SHX4_2 = true
      SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      SHX1_2 = DisableControlAction
      SHX2_2 = 0
      SHX3_2 = 27
      SHX4_2 = true
      SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      SHX1_2 = DisableControlAction
      SHX2_2 = 1
      SHX3_2 = 27
      SHX4_2 = true
      SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      SHX1_2 = DisableControlAction
      SHX2_2 = 0
      SHX3_2 = 188
      SHX4_2 = true
      SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      SHX1_2 = DisableControlAction
      SHX2_2 = 1
      SHX3_2 = 188
      SHX4_2 = true
      SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      SHX1_2 = DisableControlAction
      SHX2_2 = 0
      SHX3_2 = 191
      SHX4_2 = true
      SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      SHX1_2 = DisableControlAction
      SHX2_2 = 0
      SHX3_2 = 208
      SHX4_2 = true
      SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      SHX1_2 = DisableControlAction
      SHX2_2 = 0
      SHX3_2 = 207
      SHX4_2 = true
      SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      SHX1_2 = DisableControlAction
      SHX2_2 = 0
      SHX3_2 = 174
      SHX4_2 = true
      SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      SHX1_2 = DisableControlAction
      SHX2_2 = 0
      SHX3_2 = 175
      SHX4_2 = true
      SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      SHX1_2 = DisableControlAction
      SHX2_2 = 0
      SHX3_2 = 173
      SHX4_2 = true
      SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      SHX1_2 = DisableControlAction
      SHX2_2 = 0
      SHX3_2 = 121
      SHX4_2 = true
      SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      SHX1_2 = GetEntityHeading
      SHX2_2 = SHX2_1.vehicleHandle
      SHX1_2 = SHX1_2(SHX2_2)
      SHX2_2 = GetEntityCoords
      SHX3_2 = SHX2_1.vehicleHandle
      SHX2_2 = SHX2_2(SHX3_2)
      SHX3_2 = 0
      SHX4_2 = IsDisabledControlPressed
      SHX5_2 = 0
      SHX6_2 = 44
      SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
      if SHX4_2 then
        SHX2_1.landing = false
        SHX3_2 = 3.0
      end
      SHX4_2 = IsDisabledControlPressed
      SHX5_2 = 0
      SHX6_2 = 48
      SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
      if SHX4_2 then
        SHX3_2 = -3.0
      end
      SHX4_2 = IsDisabledControlPressed
      SHX5_2 = 0
      SHX6_2 = 46
      SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
      if SHX4_2 then
        SHX3_2 = -3.0
      end
      SHX4_2 = IsDisabledControlPressed
      SHX5_2 = 0
      SHX6_2 = 172
      SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
      if SHX4_2 then
        SHX4_2 = GetOffsetFromEntityInWorldCoords
        SHX5_2 = SHX2_1.vehicleHandle
        SHX6_2 = 0.0
        SHX7_2 = 5.0
        SHX8_2 = 0.0
        SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
        SHX2_2 = SHX4_2
      end
      SHX4_2 = IsDisabledControlPressed
      SHX5_2 = 0
      SHX6_2 = 173
      SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
      if SHX4_2 then
        SHX4_2 = GetOffsetFromEntityInWorldCoords
        SHX5_2 = SHX2_1.vehicleHandle
        SHX6_2 = 0.0
        SHX7_2 = -5.0
        SHX8_2 = 0.0
        SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
        SHX2_2 = SHX4_2
      end
      SHX4_2 = IsDisabledControlPressed
      SHX5_2 = 0
      SHX6_2 = 174
      SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
      if SHX4_2 then
        SHX1_2 = SHX1_2 + 45.0
      end
      SHX4_2 = IsDisabledControlPressed
      SHX5_2 = 0
      SHX6_2 = 175
      SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
      if SHX4_2 then
        SHX1_2 = SHX1_2 - 45.0
        if SHX1_2 < 0.0 then
          SHX1_2 = 360.0
        end
      end
      SHX4_2 = SHX2_1.landing
      if not SHX4_2 then
        SHX4_2 = TaskHeliMission
        SHX5_2 = SHX2_1.driverHandle
        SHX6_2 = SHX2_1.vehicleHandle
        SHX7_2 = nil
        SHX8_2 = nil
        SHX9_2 = SHX2_2.x
        SHX10_2 = SHX2_2.y
        SHX11_2 = SHX2_2.z
        SHX11_2 = SHX11_2 + SHX3_2
        SHX12_2 = 4
        SHX13_2 = SHX1_1
        SHX14_2 = 1.0
        SHX15_2 = SHX1_2
        SHX16_2 = -1
        SHX17_2 = -1
        SHX18_2 = -1
        SHX19_2 = 0
        SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
      end
      SHX4_2 = IsDisabledControlJustPressed
      SHX5_2 = 0
      SHX6_2 = 121
      SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
      if SHX4_2 then
        SHX2_1.landing = true
        SHX4_2 = GetOffsetFromEntityInWorldCoords
        SHX5_2 = SHX2_1.driverHandle
        SHX6_2 = 0.0
        SHX7_2 = 3.0
        SHX8_2 = 0.0
        SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
        SHX5_2 = TaskHeliMission
        SHX6_2 = SHX2_1.driverHandle
        SHX7_2 = SHX2_1.vehicleHandle
        SHX8_2 = 0
        SHX9_2 = 0
        SHX10_2 = SHX4_2.x
        SHX11_2 = SHX4_2.y
        SHX12_2 = SHX4_2.z
        SHX12_2 = SHX12_2 + 2.0
        SHX13_2 = 20
        SHX14_2 = SHX1_1
        SHX15_2 = 10.0
        SHX16_2 = GetEntityHeading
        SHX17_2 = SHX2_1.driverHandle
        SHX16_2 = SHX16_2(SHX17_2)
        SHX17_2 = -1
        SHX18_2 = -1
        SHX19_2 = -1
        SHX20_2 = 32
        SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
      end
      SHX4_2 = IsDisabledControlJustPressed
      SHX5_2 = 0
      SHX6_2 = 158
      SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
      if SHX4_2 then
        SHX4_2 = SHX2_1.cameraEnabled
        if SHX4_2 then
          SHX4_2 = SHX2_1.nightVisionEnabled
          if SHX4_2 then
            SHX4_2 = SetNightvision
            SHX5_2 = false
            SHX4_2(SHX5_2)
            SHX2_1.nightVisionEnabled = false
          else
            SHX4_2 = SetNightvision
            SHX5_2 = true
            SHX4_2(SHX5_2)
            SHX2_1.nightVisionEnabled = true
          end
        end
      end
      SHX4_2 = IsDisabledControlJustPressed
      SHX5_2 = 0
      SHX6_2 = 157
      SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
      if SHX4_2 then
        SHX4_2 = SHX2_1.cameraEnabled
        if SHX4_2 then
          SHX4_2 = SHX2_1.thermalEnabled
          if SHX4_2 then
            SHX4_2 = SetSeethrough
            SHX5_2 = false
            SHX4_2(SHX5_2)
            SHX2_1.thermalEnabled = false
          else
            SHX4_2 = SetSeethrough
            SHX5_2 = true
            SHX4_2(SHX5_2)
            SHX2_1.thermalEnabled = true
          end
        end
      end
      SHX4_2 = IsDisabledControlJustPressed
      SHX5_2 = 0
      SHX6_2 = 191
      SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
      if SHX4_2 then
        SHX4_2 = SHX3_1
        SHX4_2()
      end
    end
    SHX1_2 = Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
  end
end
SHX6_1(SHX7_1)
SHX6_1 = 0
SHX7_1 = Citizen
SHX7_1 = SHX7_1.CreateThread
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  while true do
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerVehicle
    SHX0_2 = SHX0_2()
    if 0 ~= SHX0_2 then
      SHX1_2 = GetEntityModel
      SHX2_2 = SHX0_2
      SHX1_2 = SHX1_2(SHX2_2)
      SHX2_2 = SHX0_1
      if SHX1_2 == SHX2_2 then
        SHX2_2 = SHX6_1
        SHX2_2 = SHX2_2 + 1
        SHX6_1 = SHX2_2
        SHX2_2 = SHX6_1
        if SHX2_2 > 3 then
          SHX2_2 = tCMG
          SHX2_2 = SHX2_2.notify
          SHX3_2 = "~r~Access Denied~w~: Engaging defences in 3, 2, 1..."
          SHX2_2(SHX3_2)
          SHX2_2 = Wait
          SHX3_2 = 500
          SHX2_2(SHX3_2)
          SHX2_2 = CMG
          SHX2_2 = SHX2_2.getPlayerCoords
          SHX2_2 = SHX2_2()
          SHX3_2 = AddOwnedExplosion
          SHX4_2 = CMG
          SHX4_2 = SHX4_2.getPlayerPed
          SHX4_2 = SHX4_2()
          SHX5_2 = SHX2_2.x
          SHX6_2 = SHX2_2.y
          SHX7_2 = SHX2_2.z
          SHX8_2 = 4
          SHX9_2 = 17.0
          SHX10_2 = true
          SHX11_2 = false
          SHX12_2 = 10.0
          SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
          SHX3_2 = ExplodeVehicle
          SHX4_2 = SHX0_2
          SHX5_2 = true
          SHX6_2 = false
          SHX3_2(SHX4_2, SHX5_2, SHX6_2)
          SHX3_2 = PlaySoundFrontend
          SHX4_2 = -1
          SHX5_2 = "EMP_Blast"
          SHX6_2 = "DLC_HEISTS_BIOLAB_FINALE_SOUNDS"
          SHX7_2 = true
          SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          SHX3_2 = Wait
          SHX4_2 = 2000
          SHX3_2(SHX4_2)
          SHX3_2 = PlaySoundFrontend
          SHX4_2 = -1
          SHX5_2 = "Beep_Red"
          SHX6_2 = "DLC_HEIST_HACKING_SNAKE_SOUNDS"
          SHX7_2 = true
          SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          SHX3_2 = Wait
          SHX4_2 = 2000
          SHX3_2(SHX4_2)
          SHX3_2 = PlaySoundFrontend
          SHX4_2 = -1
          SHX5_2 = "Bed"
          SHX6_2 = "WastedSounds"
          SHX7_2 = true
          SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.getPlayerVehicle
          SHX3_2 = SHX3_2()
          if nil ~= SHX3_2 then
            SHX3_2 = DoesEntityExist
            SHX4_2 = CMG
            SHX4_2 = SHX4_2.getPlayerVehicle
            SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX4_2()
            SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
            if SHX3_2 then
              SHX3_2 = DeleteEntity
              SHX4_2 = CMG
              SHX4_2 = SHX4_2.getPlayerVehicle
              SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX4_2()
              SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
            end
          end
        end
      end
    end
    SHX1_2 = Wait
    SHX2_2 = 5000
    SHX1_2(SHX2_2)
  end
end
SHX7_1(SHX8_1)
function SHX7_1(SHX0_2)
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
ButtonMessage = SHX7_1
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
Button = SHX7_1
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.loadModel
  SHX1_2 = SHX0_1
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 then
    return
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadModel
  SHX2_2 = -1613485779
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    return
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = GetOffsetFromEntityInWorldCoords
  SHX4_2 = SHX2_2
  SHX5_2 = 0.0
  SHX6_2 = 4.0
  SHX7_2 = 0.0
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = GetEntityHeading
  SHX5_2 = SHX2_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.requestEntitySpawn
  SHX6_2 = "policedrone"
  SHX7_2 = SHX3_2
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.spawnVehicle
  SHX6_2 = SHX0_1
  SHX7_2 = SHX3_2.x
  SHX8_2 = SHX3_2.y
  SHX9_2 = SHX3_2.z
  SHX10_2 = SHX4_2
  SHX11_2 = false
  SHX12_2 = true
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX2_1.vehicleHandle = SHX5_2
  SHX5_2 = SetModelAsNoLongerNeeded
  SHX6_2 = SHX0_2
  SHX5_2(SHX6_2)
  SHX5_2 = SetEntityNoCollisionEntity
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.getPlayerPed
  SHX6_2 = SHX6_2()
  SHX7_2 = SHX2_1.vehicleHandle
  SHX8_2 = true
  SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = Wait
  SHX6_2 = 1000
  SHX5_2(SHX6_2)
  SHX5_2 = SetEntityAsMissionEntity
  SHX6_2 = SHX2_1.vehicleHandle
  SHX7_2 = true
  SHX8_2 = true
  SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = NetworkGetNetworkIdFromEntity
  SHX6_2 = SHX2_1.vehicleHandle
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = NetworkUseHighPrecisionBlending
  SHX7_2 = SHX5_2
  SHX8_2 = true
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = SetNetworkIdCanMigrate
  SHX7_2 = SHX5_2
  SHX8_2 = true
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = SetNetworkIdExistsOnAllMachines
  SHX7_2 = SHX5_2
  SHX8_2 = true
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.requestEntitySpawn
  SHX7_2 = "policedrone_ped"
  SHX8_2 = SHX3_2
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = CreatePed
  SHX7_2 = 4
  SHX8_2 = SHX1_2
  SHX9_2 = SHX3_2.x
  SHX10_2 = SHX3_2.y
  SHX11_2 = SHX3_2.z
  SHX12_2 = SHX4_2
  SHX13_2 = true
  SHX14_2 = false
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX2_1.driverHandle = SHX6_2
  while true do
    SHX6_2 = DoesEntityExist
    SHX7_2 = SHX2_1.driverHandle
    SHX6_2 = SHX6_2(SHX7_2)
    if SHX6_2 then
      break
    end
    SHX6_2 = Wait
    SHX7_2 = 0
    SHX6_2(SHX7_2)
  end
  SHX6_2 = SetModelAsNoLongerNeeded
  SHX7_2 = SHX1_2
  SHX6_2(SHX7_2)
  SHX6_2 = SetEntityInvincible
  SHX7_2 = SHX2_1.driverHandle
  SHX8_2 = true
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = SetEntityVisible
  SHX7_2 = SHX2_1.driverHandle
  SHX8_2 = false
  SHX9_2 = false
  SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX6_2 = FreezeEntityPosition
  SHX7_2 = SHX2_1.driverHandle
  SHX8_2 = true
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = SetPedAlertness
  SHX7_2 = SHX2_1.driverHandle
  SHX8_2 = 0.0
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = TaskWarpPedIntoVehicle
  SHX7_2 = SHX2_1.driverHandle
  SHX8_2 = SHX2_1.vehicleHandle
  SHX9_2 = -1
  SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX6_2 = SetVehicleDoorsLocked
  SHX7_2 = SHX2_1.vehicleHandle
  SHX8_2 = 2
  SHX6_2(SHX7_2, SHX8_2)
  while true do
    SHX6_2 = IsPedInVehicle
    SHX7_2 = SHX2_1.driverHandle
    SHX8_2 = SHX2_1.vehicleHandle
    SHX9_2 = false
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
    if SHX6_2 then
      break
    end
    SHX6_2 = Wait
    SHX7_2 = 0
    SHX6_2(SHX7_2)
  end
  SHX2_1.active = true
  SHX6_2 = tCMG
  SHX6_2 = SHX6_2.notify
  SHX7_2 = "Drone ~b~created~w~."
  SHX6_2(SHX7_2)
  SHX6_2 = Wait
  SHX7_2 = 1000
  SHX6_2(SHX7_2)
  SHX6_2 = tCMG
  SHX6_2 = SHX6_2.notify
  SHX7_2 = "To remove your drone, use ~b~/drone"
  SHX6_2(SHX7_2)
end
SHX8_1 = RegisterNetEvent
SHX9_1 = "toggleDrone"
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX2_1.active
  if not SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerVehicle
    SHX0_2 = SHX0_2()
    if 0 == SHX0_2 then
      SHX0_2 = tCMG
      SHX0_2 = SHX0_2.isInComa
      SHX0_2 = SHX0_2()
      if not SHX0_2 then
        SHX0_2 = TriggerServerEvent
        SHX1_2 = "2af187bc60"
        SHX2_2 = "Powered on their DJI Inspire Drone"
        SHX0_2(SHX1_2, SHX2_2)
        SHX0_2 = SHX7_1
        SHX0_2()
    end
    else
      SHX0_2 = tCMG
      SHX0_2 = SHX0_2.notify
      SHX1_2 = "You are not able to use a drone right now."
      SHX0_2(SHX1_2)
    end
  else
    SHX0_2 = TriggerServerEvent
    SHX1_2 = "2af187bc60"
    SHX2_2 = "Powered off their DJI Inspire Drone"
    SHX0_2(SHX1_2, SHX2_2)
    SHX0_2 = SHX4_1
    SHX0_2()
  end
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = nil
SHX9_1 = nil
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerVehicle
  SHX0_2 = SHX0_2()
  if 0 == SHX0_2 then
    SHX1_2 = SHX8_1
    if SHX1_2 then
      SHX1_2 = SHX8_1
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.getPlayerCoords
      SHX2_2 = SHX2_2()
      SHX1_2 = SHX1_2 - SHX2_2
      SHX1_2 = #SHX1_2
      if SHX1_2 > 20.0 then
        SHX1_2 = PlayerPedId
        SHX1_2 = SHX1_2()
        SHX2_2 = SetEntityCoordsNoOffset
        SHX3_2 = SHX1_2
        SHX4_2 = SHX8_1.x
        SHX5_2 = SHX8_1.y
        SHX6_2 = SHX8_1.z
        SHX7_2 = false
        SHX8_2 = false
        SHX9_2 = false
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
        SHX2_2 = ClearPedTasksImmediately
        SHX3_2 = SHX1_2
        SHX2_2(SHX3_2)
      end
      SHX1_2 = SetEntityVisible
      SHX2_2 = PlayerPedId
      SHX2_2 = SHX2_2()
      SHX3_2 = true
      SHX4_2 = false
      SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      SHX1_2 = nil
      SHX8_1 = SHX1_2
      SHX1_2 = RemoveBlip
      SHX2_2 = SHX9_1
      SHX1_2(SHX2_2)
    end
    return
  end
  SHX1_2 = GetEntityModel
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.isVehicleRemoteControlled
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    return
  end
  SHX2_2 = GetEntityCoords
  SHX3_2 = SHX0_2
  SHX4_2 = true
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = SHX8_1
  if not SHX3_2 then
    SHX8_1 = SHX2_2
    SHX3_2 = SetEntityVisible
    SHX4_2 = PlayerPedId
    SHX4_2 = SHX4_2()
    SHX5_2 = false
    SHX6_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    SHX3_2 = AddBlipForRadius
    SHX4_2 = SHX2_2.x
    SHX5_2 = SHX2_2.y
    SHX6_2 = SHX2_2.z
    SHX7_2 = 20.0
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
    SHX9_1 = SHX3_2
    SHX3_2 = SetBlipColour
    SHX4_2 = SHX9_1
    SHX5_2 = 5
    SHX3_2(SHX4_2, SHX5_2)
  end
  SHX3_2 = SHX8_1
  SHX3_2 = SHX3_2 - SHX2_2
  SHX3_2 = #SHX3_2
  if SHX3_2 > 20.0 then
    SHX3_2 = DisableControlAction
    SHX4_2 = 0
    SHX5_2 = 23
    SHX6_2 = true
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    SHX3_2 = DisableControlAction
    SHX4_2 = 0
    SHX5_2 = 75
    SHX6_2 = true
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    SHX3_2 = IsDisabledControlJustPressed
    SHX4_2 = 0
    SHX5_2 = 23
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
    if not SHX3_2 then
      SHX3_2 = IsDisabledControlJustPressed
      SHX4_2 = 0
      SHX5_2 = 75
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
      if not SHX3_2 then
        goto SHX_LABEL_110
      end
    end
    SHX3_2 = notify
    SHX4_2 = "You must be near the ~y~start position~w~ to exit."
    SHX3_2(SHX4_2)
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_110:: outside nested blocks until all 'goto SHX_LABEL_110' can see it
  ::SHX_LABEL_110::
end
SHX11_1 = CMG
SHX11_1 = SHX11_1.createThreadOnTick
SHX12_1 = SHX10_1
SHX13_1 = "Drones"
SHX11_1(SHX12_1, SHX13_1)
