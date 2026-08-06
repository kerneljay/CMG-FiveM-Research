-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/events/cfg_dogfighting"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = nil
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = IsNewLoadSceneLoaded
  SHX1_2 = SHX1_2()
  SHX2_2 = HasModelLoaded
  SHX3_2 = SHX0_2.selectedVehicleModelHash
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    SHX3_2 = RequestModel
    SHX4_2 = SHX0_2.selectedVehicleModelHash
    SHX3_2(SHX4_2)
  end
  if SHX1_2 and SHX2_2 then
    SHX3_2 = SHX0_2.hasSentLoadedEvent
    if not SHX3_2 then
      SHX3_2 = TriggerServerEvent
      SHX4_2 = "394e95d641"
      SHX3_2(SHX4_2)
      SHX0_2.hasSentLoadedEvent = true
    end
  end
end
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = IsScreenFadedOut
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX0_2 = IsScreenFadingOut
    SHX0_2 = SHX0_2()
    if SHX0_2 then
      goto SHX_LABEL_14
    end
  end
  SHX0_2 = DoScreenFadeOut
  SHX1_2 = 500
  SHX0_2(SHX1_2)
  SHX0_2 = false
  return SHX0_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_14:: outside nested blocks until all 'goto SHX_LABEL_14' can see it
  ::SHX_LABEL_14::
  SHX0_2 = true
  return SHX0_2
end
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isEventSequenceRunning
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX0_2 = SHX3_1
    SHX0_2 = SHX0_2()
    if SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.stopEventSequence
      SHX0_2()
    end
  end
end
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = IsScreenFadedIn
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX0_2 = IsScreenFadingIn
    SHX0_2 = SHX0_2()
    if not SHX0_2 then
      SHX0_2 = DoScreenFadeIn
      SHX1_2 = 500
      SHX0_2(SHX1_2)
    end
  end
end
function SHX6_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = PlayerId
  SHX1_2 = SHX1_2()
  SHX2_2 = IsPlayerControlOn
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = SetPlayerControl
    SHX3_2 = SHX1_2
    SHX4_2 = false
    SHX5_2 = 0
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  end
  if SHX0_2 then
    SHX2_2 = DisableAllControlActions
    SHX3_2 = 0
    SHX2_2(SHX3_2)
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.hideAllDisplays
    SHX3_2 = "dogfighting"
    SHX2_2(SHX3_2)
  end
end
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX4_1
  SHX1_2()
  SHX1_2 = SHX2_1
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = SHX6_1
  SHX2_2 = true
  SHX1_2(SHX2_2)
end
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX4_1
  SHX0_2()
  SHX0_2 = SHX6_1
  SHX1_2 = true
  SHX0_2(SHX1_2)
end
function SHX9_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = pairs
  SHX2_2 = SHX0_1.teams
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.name
    if SHX7_2 == SHX0_2 then
      return SHX6_2
    end
  end
  SHX1_2 = nil
  return SHX1_2
end
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = SHX5_1
  SHX1_2()
  SHX1_2 = SHX6_1
  SHX2_2 = false
  SHX1_2(SHX2_2)
  SHX1_2 = SHX0_2.hasSetupCustomisation
  if SHX1_2 then
    return
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.startVehicleSelection
  SHX2_2 = SHX0_2.spawnPosition
  SHX2_2 = SHX2_2.xyz
  SHX3_2 = SHX0_2.spawnPosition
  SHX3_2 = SHX3_2.w
  SHX4_2 = {}
  SHX5_2 = SHX0_2.vehicleName
  SHX6_2 = {}
  SHX6_2.level = 0
  SHX7_2 = SHX0_2.selectedVehicleModelHash
  SHX6_2.model = SHX7_2
  SHX4_2[SHX5_2] = SHX6_2
  SHX5_2 = math
  SHX5_2 = SHX5_2.floor
  SHX6_2 = SHX0_1.customVehicleTimeMsec
  SHX6_2 = SHX6_2 / 1000
  SHX5_2 = SHX5_2(SHX6_2)
  function SHX6_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  function SHX7_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3, SHX3_3
    SHX1_3 = CMG
    SHX1_3 = SHX1_3.getEventLocalPlayer
    SHX1_3 = SHX1_3()
    if SHX1_3 then
      SHX2_3 = SHX1_3.data
      SHX2_3 = SHX2_3.teamName
      if SHX2_3 then
        SHX2_3 = SHX9_1
        SHX3_3 = SHX1_3.data
        SHX3_3 = SHX3_3.teamName
        SHX2_3 = SHX2_3(SHX3_3)
        if SHX2_3 then
          SHX3_3 = SHX2_3.vehicleColour
          SHX0_2.selectedVehicleColour = SHX3_3
          return
        end
      end
    end
    SHX0_2.selectedVehicleColour = SHX0_3
  end
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX0_2.hasSetupCustomisation = true
end
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.requestEntitySpawn
  SHX2_2 = "dogfighting"
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.spawnVehicle
  SHX2_2 = SHX0_2.selectedVehicleModelHash
  SHX3_2 = SHX0_2.spawnPosition
  SHX3_2 = SHX3_2.x
  SHX4_2 = SHX0_2.spawnPosition
  SHX4_2 = SHX4_2.y
  SHX5_2 = SHX0_2.spawnPosition
  SHX5_2 = SHX5_2.z
  SHX6_2 = SHX0_2.spawnPosition
  SHX6_2 = SHX6_2.w
  SHX7_2 = true
  SHX8_2 = true
  SHX9_2 = true
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX0_2.vehicle = SHX1_2
  SHX1_2 = FreezeEntityPosition
  SHX2_2 = SHX0_2.vehicle
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetVehicleEngineOn
  SHX2_2 = SHX0_2.vehicle
  SHX3_2 = true
  SHX4_2 = true
  SHX5_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SetHeliBladesFullSpeed
  SHX2_2 = SHX0_2.vehicle
  SHX1_2(SHX2_2)
  SHX1_2 = ControlLandingGear
  SHX2_2 = SHX0_2.vehicle
  SHX3_2 = 3
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetVehicleFlightNozzlePositionImmediate
  SHX2_2 = SHX0_2.vehicle
  SHX3_2 = 0.0
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetVehicleColours
  SHX2_2 = SHX0_2.vehicle
  SHX3_2 = SHX0_2.selectedVehicleColour
  SHX4_2 = SHX0_2.selectedVehicleColour
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = SHX0_2.spawnProtectEndTime
  if not SHX1_2 then
    SHX1_2 = 0
  end
  SHX2_2 = math
  SHX2_2 = SHX2_2.max
  SHX3_2 = GetNetworkTime
  SHX3_2 = SHX3_2()
  SHX4_2 = SHX0_1.respawnProtectionTimeMsec
  SHX3_2 = SHX3_2 + SHX4_2
  SHX4_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX0_2.spawnProtectEndTime = SHX2_2
  SHX0_2.isRequestVehicle = false
end
function SHX12_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = DoesEntityExist
  SHX2_2 = SHX0_2.vehicle
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = SHX0_2.isRequestVehicle
    if not SHX1_2 then
      SHX1_2 = Citizen
      SHX1_2 = SHX1_2.CreateThreadNow
      function SHX2_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3
        SHX0_3 = SHX11_1
        SHX1_3 = SHX0_2
        SHX0_3(SHX1_3)
      end
      SHX1_2(SHX2_2)
      SHX0_2.isRequestVehicle = true
    end
  end
end
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX1_2 = SHX5_1
  SHX1_2()
  SHX1_2 = SHX6_1
  SHX2_2 = true
  SHX1_2(SHX2_2)
  SHX1_2 = GetGameTimer
  SHX1_2 = SHX1_2()
  SHX2_2 = GetFrameCount
  SHX2_2 = SHX2_2()
  SHX3_2 = SHX0_2.flyInStartTime
  if not SHX3_2 then
    SHX0_2.flyInStartTime = SHX1_2
  end
  SHX3_2 = SHX0_2.flyInStartTime
  SHX3_2 = SHX1_2 - SHX3_2
  SHX4_2 = SHX0_1.flyInIntroTimeMsec
  SHX4_2 = SHX4_2 / 2
  SHX4_2 = SHX3_2 < SHX4_2
  SHX5_2 = GetTogglePausedRenderphasesStatus
  SHX5_2 = SHX5_2()
  if SHX4_2 then
    SHX6_2 = 1
    if SHX6_2 then
      goto SHX_LABEL_32
    end
  end
  SHX6_2 = false
  -- [FIX IF ERROR] Move ::SHX_LABEL_32:: outside nested blocks until all 'goto SHX_LABEL_32' can see it
  ::SHX_LABEL_32::
  if SHX5_2 == SHX6_2 then
    SHX5_2 = TogglePausedRenderphases
    SHX6_2 = not SHX4_2
    SHX5_2(SHX6_2)
    SHX0_2.toggledRenderPhaseFrame = SHX2_2
  end
  SHX5_2 = SHX0_2.hasSetupCustomisation
  if SHX5_2 then
    SHX5_2 = SHX0_2.toggledRenderPhaseFrame
    if 0 ~= SHX5_2 then
      SHX5_2 = SHX0_2.toggledRenderPhaseFrame
      if SHX2_2 > SHX5_2 then
        SHX5_2 = CMG
        SHX5_2 = SHX5_2.endVehicleSelection
        SHX5_2()
        SHX5_2 = AnimpostfxPlay
        SHX6_2 = "SuccessNeutral"
        SHX7_2 = -1
        SHX8_2 = false
        SHX5_2(SHX6_2, SHX7_2, SHX8_2)
        SHX5_2 = PlaySoundFrontend
        SHX6_2 = -1
        SHX7_2 = "Become_Attacker"
        SHX8_2 = "DLC_IE_JN_Player_Sounds"
        SHX9_2 = false
        SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
        SHX0_2.hasSetupCustomisation = false
      end
    end
  end
  SHX5_2 = SHX12_1
  SHX6_2 = SHX0_2
  SHX5_2(SHX6_2)
  if SHX4_2 then
    return
  end
  SHX5_2 = AnimpostfxIsRunning
  SHX6_2 = "SuccessNeutral"
  SHX5_2 = SHX5_2(SHX6_2)
  if SHX5_2 then
    SHX5_2 = AnimpostfxStop
    SHX6_2 = "SuccessNeutral"
    SHX5_2(SHX6_2)
  end
  SHX5_2 = GetFrameTime
  SHX5_2 = SHX5_2()
  SHX6_2 = GetEntityMatrix
  SHX7_2 = SHX0_2.vehicle
  SHX6_2, SHX7_2 = SHX6_2(SHX7_2)
  SHX8_2 = GetEntityCoords
  SHX9_2 = SHX0_2.vehicle
  SHX10_2 = true
  SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
  SHX9_2 = SHX6_2 * 50.0
  SHX10_2 = SHX9_2 * SHX5_2
  SHX10_2 = SHX8_2 + SHX10_2
  SHX11_2 = SetEntityCoordsNoOffset
  SHX12_2 = SHX0_2.vehicle
  SHX13_2 = SHX10_2.x
  SHX14_2 = SHX10_2.y
  SHX15_2 = SHX10_2.z
  SHX16_2 = true
  SHX17_2 = false
  SHX18_2 = false
  SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  SHX11_2 = SetEntityVelocity
  SHX12_2 = SHX0_2.vehicle
  SHX13_2 = SHX9_2.x
  SHX14_2 = SHX9_2.y
  SHX15_2 = SHX9_2.z
  SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX11_2 = SHX0_2.flyInCamera
  if 0 ~= SHX11_2 then
    SHX11_2 = SHX0_2.easingFlyInCamera
    if not SHX11_2 then
      SHX11_2 = SHX0_2.flyInEndTime
      if SHX11_2 then
        SHX11_2 = SHX0_2.flyInEndTime
        SHX12_2 = GetNetworkTime
        SHX12_2 = SHX12_2()
        SHX11_2 = SHX11_2 - SHX12_2
        if SHX11_2 then
          goto SHX_LABEL_123
        end
      end
      SHX11_2 = 0
      -- [FIX IF ERROR] Move ::SHX_LABEL_123:: outside nested blocks until all 'goto SHX_LABEL_123' can see it
      ::SHX_LABEL_123::
      if SHX11_2 < 0 then
        SHX11_2 = 0
      end
      SHX12_2 = RenderScriptCams
      SHX13_2 = false
      SHX14_2 = true
      SHX15_2 = SHX11_2
      SHX16_2 = false
      SHX17_2 = false
      SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
      SHX0_2.easingFlyInCamera = true
    end
    return
  end
  SHX11_2 = CreateCam
  SHX12_2 = "DEFAULT_SCRIPTED_CAMERA"
  SHX13_2 = true
  SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
  SHX0_2.flyInCamera = SHX11_2
  SHX11_2 = SHX0_2.spawnPosition
  SHX11_2 = SHX11_2.xyz
  SHX12_2 = SHX6_2 * -30.0
  SHX11_2 = SHX11_2 + SHX12_2
  SHX12_2 = SHX7_2 * 20.0
  SHX11_2 = SHX11_2 + SHX12_2
  SHX12_2 = vector3
  SHX13_2 = 0.0
  SHX14_2 = 0.0
  SHX15_2 = 10.0
  SHX12_2 = SHX12_2(SHX13_2, SHX14_2, SHX15_2)
  SHX11_2 = SHX11_2 + SHX12_2
  SHX12_2 = SetCamCoord
  SHX13_2 = SHX0_2.flyInCamera
  SHX14_2 = SHX11_2.x
  SHX15_2 = SHX11_2.y
  SHX16_2 = SHX11_2.z
  SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX12_2 = PointCamAtEntity
  SHX13_2 = SHX0_2.flyInCamera
  SHX14_2 = SHX0_2.vehicle
  SHX15_2 = 0.0
  SHX16_2 = 0.0
  SHX17_2 = 0.0
  SHX18_2 = false
  SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  SHX12_2 = SetCamActive
  SHX13_2 = SHX0_2.flyInCamera
  SHX14_2 = true
  SHX12_2(SHX13_2, SHX14_2)
  SHX12_2 = RenderScriptCams
  SHX13_2 = true
  SHX14_2 = false
  SHX15_2 = 0
  SHX16_2 = false
  SHX17_2 = false
  SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
end
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getClientEventData
  SHX2_2 = "DogFightingClientData"
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX0_2.timers
  SHX2_2 = SHX2_2.push
  SHX3_2 = "~y~PLAYERS"
  SHX4_2 = tostring
  SHX5_2 = SHX1_2.players
  SHX5_2 = #SHX5_2
  SHX4_2, SHX5_2, SHX6_2 = SHX4_2(SHX5_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getEventLocalPlayer
  SHX2_2 = SHX2_2()
  if not SHX2_2 then
    return
  end
  SHX3_2 = SHX0_2.timers
  SHX3_2 = SHX3_2.push
  SHX4_2 = "~r~LIVES"
  SHX5_2 = tostring
  SHX6_2 = SHX2_2.data
  SHX6_2 = SHX6_2.numLives
  SHX5_2, SHX6_2 = SHX5_2(SHX6_2)
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = SHX0_2.timers
  SHX3_2 = SHX3_2.push
  SHX4_2 = "~g~KILLS"
  SHX5_2 = tostring
  SHX6_2 = SHX2_2.data
  SHX6_2 = SHX6_2.numKills
  SHX5_2, SHX6_2 = SHX5_2(SHX6_2)
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
end
function SHX15_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = PlayerId
  SHX1_2 = SHX1_2()
  SHX2_2 = IsPlayerControlOn
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = SHX0_2.isRequestVehicle
  if SHX2_2 == SHX3_2 then
    SHX2_2 = SetPlayerControl
    SHX3_2 = SHX1_2
    SHX4_2 = SHX0_2.isRequestVehicle
    SHX4_2 = not SHX4_2
    SHX5_2 = 0
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = DisableAllControlActions
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
end
function SHX16_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = IsEntityPositionFrozen
  SHX2_2 = SHX0_2.vehicle
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = FreezeEntityPosition
    SHX2_2 = SHX0_2.vehicle
    SHX3_2 = false
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = GetEntityForwardVector
    SHX2_2 = SHX0_2.vehicle
    SHX1_2 = SHX1_2(SHX2_2)
    SHX1_2 = SHX1_2 * 50.0
    SHX2_2 = SetEntityVelocity
    SHX3_2 = SHX0_2.vehicle
    SHX4_2 = SHX1_2.x
    SHX5_2 = SHX1_2.y
    SHX6_2 = SHX1_2.z
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerVehicle
  SHX1_2 = SHX1_2()
  if 0 == SHX1_2 then
    SHX2_2 = DoesEntityExist
    SHX3_2 = SHX0_2.vehicle
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      SHX2_2 = GetVehicleEngineHealth
      SHX3_2 = SHX0_2.vehicle
      SHX2_2 = SHX2_2(SHX3_2)
      if SHX2_2 > 0 then
        SHX2_2 = SetPedIntoVehicle
        SHX3_2 = PlayerPedId
        SHX3_2 = SHX3_2()
        SHX4_2 = SHX0_2.vehicle
        SHX5_2 = -1
        SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      else
      end
    end
  end
end
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX0_2.allowGuns
  if not SHX2_2 then
    SHX2_2 = pairs
    SHX3_2 = SHX0_1.gunHashes
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
    for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
      SHX8_2 = DisableVehicleWeapon
      SHX9_2 = true
      SHX10_2 = SHX7_2
      SHX11_2 = SHX0_2.vehicle
      SHX12_2 = SHX1_2
      SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    end
  end
  SHX2_2 = SHX0_2.allowRockets
  if not SHX2_2 then
    SHX2_2 = pairs
    SHX3_2 = SHX0_1.missileHashes
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
    for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
      SHX8_2 = DisableVehicleWeapon
      SHX9_2 = true
      SHX10_2 = SHX7_2
      SHX11_2 = SHX0_2.vehicle
      SHX12_2 = SHX1_2
      SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    end
  end
end
function SHX18_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = SetEntityInvincible
  SHX3_2 = SHX1_2
  SHX4_2 = SHX0_2
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetEntityVisible
  SHX3_2 = SHX1_2
  SHX4_2 = not SHX0_2
  SHX5_2 = not SHX0_2
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = SetEntityProofs
  SHX3_2 = SHX1_2
  SHX4_2 = SHX0_2
  SHX5_2 = SHX0_2
  SHX6_2 = SHX0_2
  SHX7_2 = SHX0_2
  SHX8_2 = SHX0_2
  SHX9_2 = SHX0_2
  SHX10_2 = SHX0_2
  SHX11_2 = SHX0_2
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX2_2 = FreezeEntityPosition
  SHX3_2 = SHX1_2
  SHX4_2 = not SHX0_2
  SHX2_2(SHX3_2, SHX4_2)
end
function SHX19_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = SHX18_1
  SHX2_2 = SHX0_2.hasRespawned
  SHX1_2(SHX2_2)
  SHX1_2 = SHX0_2.hasRespawned
  if not SHX1_2 then
    SHX1_2 = SHX5_1
    SHX1_2()
    return
  end
  SHX1_2 = IsScreenFadedOut
  SHX1_2 = SHX1_2()
  if SHX1_2 then
    SHX1_2 = IsScreenFadingOut
    SHX1_2 = SHX1_2()
    if SHX1_2 then
      goto SHX_LABEL_21
    end
  end
  SHX1_2 = DoScreenFadeOut
  SHX2_2 = 500
  SHX1_2(SHX2_2)
  -- [FIX IF ERROR] Move ::SHX_LABEL_21:: outside nested blocks until all 'goto SHX_LABEL_21' can see it
  ::SHX_LABEL_21::
  SHX1_2 = SHX0_2.wantsNewVehicle
  if SHX1_2 then
    SHX1_2 = SHX0_2.isRequestVehicle
    if not SHX1_2 then
      SHX1_2 = IsScreenFadedOut
      SHX1_2 = SHX1_2()
      if not SHX1_2 then
        SHX1_2 = DoScreenFadeOut
        SHX2_2 = 0
        SHX1_2(SHX2_2)
      end
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.getEventKillCamera
      SHX1_2 = SHX1_2()
      if SHX1_2 then
        SHX2_2 = RenderScriptCams
        SHX3_2 = false
        SHX4_2 = false
        SHX5_2 = 0
        SHX6_2 = false
        SHX7_2 = false
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
        SHX2_2 = SetCamActive
        SHX3_2 = SHX1_2
        SHX4_2 = false
        SHX2_2(SHX3_2, SHX4_2)
        SHX2_2 = DestroyCam
        SHX3_2 = SHX1_2
        SHX4_2 = false
        SHX2_2(SHX3_2, SHX4_2)
      end
      SHX2_2 = Citizen
      SHX2_2 = SHX2_2.CreateThreadNow
      function SHX3_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3
        SHX0_3 = SHX11_1
        SHX1_3 = SHX0_2
        SHX0_3(SHX1_3)
        SHX0_2.hasRespawned = false
        SHX0_2.wantsNewVehicle = false
      end
      SHX2_2(SHX3_2)
      SHX0_2.isRequestVehicle = true
    end
  end
end
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX0_2.vehicle
  if 0 ~= SHX1_2 then
    SHX1_2 = DoesEntityExist
    SHX2_2 = SHX0_2.vehicle
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = DeleteEntity
      SHX2_2 = SHX0_2.vehicle
      SHX1_2(SHX2_2)
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
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 49
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 75
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
end
function SHX22_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getClientEventData
  SHX1_2 = "DogFightingClientData"
  SHX0_2 = SHX0_2(SHX1_2)
  SHX1_2 = pairs
  SHX2_2 = SHX0_2.players
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.blip
    if SHX7_2 then
      SHX7_2 = GetPlayerFromServerId
      SHX8_2 = SHX6_2.source
      SHX7_2 = SHX7_2(SHX8_2)
      if SHX7_2 >= 0 then
        SHX8_2 = GetPlayerPed
        SHX9_2 = SHX7_2
        SHX8_2 = SHX8_2(SHX9_2)
        if 0 ~= SHX8_2 then
          SHX9_2 = SetBlipSprite
          SHX10_2 = SHX6_2.blip
          SHX11_2 = 16
          SHX9_2(SHX10_2, SHX11_2)
          SHX9_2 = SetBlipRotation
          SHX10_2 = SHX6_2.blip
          SHX11_2 = math
          SHX11_2 = SHX11_2.ceil
          SHX12_2 = GetEntityHeading
          SHX13_2 = SHX8_2
          SHX12_2, SHX13_2 = SHX12_2(SHX13_2)
          SHX11_2, SHX12_2, SHX13_2 = SHX11_2(SHX12_2, SHX13_2)
          SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
          SHX9_2 = SHX9_1
          SHX10_2 = SHX6_2.data
          SHX10_2 = SHX10_2.teamName
          SHX9_2 = SHX9_2(SHX10_2)
          if SHX9_2 then
            SHX10_2 = SetBlipColour
            SHX11_2 = SHX6_2.blip
            SHX12_2 = SHX9_2.blipColour
            SHX10_2(SHX11_2, SHX12_2)
          end
        end
      end
    end
  end
end
function SHX23_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getEventLocalPlayer
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX0_1.defaultRelationshipHash
  if SHX0_2 then
    SHX2_2 = SHX0_2.data
    SHX2_2 = SHX2_2.teamName
    if SHX2_2 then
      SHX2_2 = SHX9_1
      SHX3_2 = SHX0_2.data
      SHX3_2 = SHX3_2.teamName
      SHX2_2 = SHX2_2(SHX3_2)
      if SHX2_2 then
        SHX1_2 = SHX2_2.relationshipHash
      end
    end
  end
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = SetPedRelationshipGroupHash
  SHX4_2 = SHX2_2
  SHX5_2 = SHX1_2
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SetPedConfigFlag
  SHX4_2 = SHX2_2
  SHX5_2 = 44
  SHX6_2 = true
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = SetPedConfigFlag
  SHX4_2 = SHX2_2
  SHX5_2 = 45
  SHX6_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
end
function SHX24_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2
  SHX1_2 = SHX0_1.locations
  SHX2_2 = SHX0_2.mapName
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerVehicle
  SHX2_2 = SHX2_2()
  if 0 == SHX2_2 then
    return
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerCoords
  SHX3_2 = SHX3_2()
  SHX4_2 = SHX1_2.centerPosition
  SHX3_2 = SHX3_2 - SHX4_2
  SHX3_2 = #SHX3_2
  SHX4_2 = SHX1_2.initialRadius
  SHX4_2 = SHX4_2 - SHX3_2
  SHX5_2 = SHX1_2.initialRadius
  SHX5_2 = SHX5_2 * 0.15
  if SHX4_2 >= SHX5_2 then
    return
  end
  SHX6_2 = DrawMarker
  SHX7_2 = 1
  SHX8_2 = SHX1_2.centerPosition
  SHX8_2 = SHX8_2.x
  SHX9_2 = SHX1_2.centerPosition
  SHX9_2 = SHX9_2.y
  SHX10_2 = 0.0
  SHX11_2 = 0.0
  SHX12_2 = 0.0
  SHX13_2 = 0.0
  SHX14_2 = 0.0
  SHX15_2 = 0.0
  SHX16_2 = 0.0
  SHX17_2 = SHX1_2.initialRadius
  SHX17_2 = SHX17_2 * 2.0
  SHX18_2 = SHX1_2.initialRadius
  SHX18_2 = SHX18_2 * 2.0
  SHX19_2 = SHX1_2.initialRadius
  SHX19_2 = SHX19_2 * 2.0
  SHX20_2 = 255
  SHX21_2 = 0
  SHX22_2 = 0
  SHX23_2 = 75
  SHX24_2 = false
  SHX25_2 = false
  SHX26_2 = 2
  SHX27_2 = false
  SHX28_2 = nil
  SHX29_2 = nil
  SHX30_2 = false
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2)
end
function SHX25_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.hideAllDisplays
  SHX2_2 = "dogfighting"
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.showDisplay
  SHX2_2 = "radar"
  SHX3_2 = "dogfighting"
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.showDisplay
  SHX2_2 = "compass"
  SHX3_2 = "dogfighting"
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.setPlayerCanOpenLeaderboard
  SHX2_2 = true
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getEventLocalPlayer
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX14_1
  SHX3_2 = SHX0_2
  SHX2_2(SHX3_2)
  SHX2_2 = SHX15_1
  SHX3_2 = SHX0_2
  SHX2_2(SHX3_2)
  SHX2_2 = SHX16_1
  SHX3_2 = SHX0_2
  SHX2_2(SHX3_2)
  SHX2_2 = SHX17_1
  SHX3_2 = SHX0_2
  SHX2_2(SHX3_2)
  if SHX1_2 then
    SHX2_2 = SHX1_2.active
    if SHX2_2 then
      SHX2_2 = SHX19_1
      SHX3_2 = SHX0_2
      SHX2_2(SHX3_2)
  end
  else
    SHX2_2 = SHX20_1
    SHX3_2 = SHX0_2
    SHX2_2(SHX3_2)
  end
  SHX2_2 = SHX22_1
  SHX2_2()
  SHX2_2 = SHX21_1
  SHX2_2()
  SHX2_2 = SHX23_1
  SHX2_2()
  SHX2_2 = SHX24_1
  SHX3_2 = SHX0_2
  SHX2_2(SHX3_2)
end
function SHX26_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = SetLocalPlayerAsGhost
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
  SHX2_2 = SetNetworkVehicleAsGhost
  SHX3_2 = SHX0_2.vehicle
  SHX4_2 = SHX1_2
  SHX2_2(SHX3_2, SHX4_2)
end
function SHX27_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = SHX0_2.spawnProtectEndTime
  if SHX1_2 then
    SHX1_2 = SHX0_2.spawnProtectEndTime
    SHX2_2 = GetNetworkTime
    SHX2_2 = SHX2_2()
    SHX1_2 = SHX1_2 - SHX2_2
    if SHX1_2 >= 0 then
      SHX2_2 = SHX0_2.timers
      SHX2_2 = SHX2_2.push
      SHX3_2 = "~q~PROTECTION"
      SHX4_2 = tostring
      SHX5_2 = math
      SHX5_2 = SHX5_2.rounddp
      SHX6_2 = SHX1_2 / 1000.0
      SHX7_2 = 1
      SHX5_2, SHX6_2, SHX7_2 = SHX5_2(SHX6_2, SHX7_2)
      SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
      SHX2_2 = true
      return SHX2_2
    end
  end
  SHX1_2 = false
  return SHX1_2
end
function SHX28_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = drawNativeNotification
  SHX1_2 = [[
Press ~INPUT_VEH_FLY_ATTACK2~ to fire your weapon.
Press ~INPUT_VEH_SELECT_NEXT_WEAPON~ to switch weapons.
Press ~INPUT_VEH_ROOF~ to toggle stealth.
Hold ~INPUT_VEH_FLY_UNDERCARRIAGE~ to toggle VTOL.]]
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
end
function SHX29_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX25_1
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = SHX26_1
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SHX27_1
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = SHX28_1
  SHX1_2()
end
function SHX30_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2
  SHX1_2 = DrawMarker
  SHX2_2 = 6
  SHX3_2 = SHX0_2.x
  SHX4_2 = SHX0_2.y
  SHX5_2 = SHX0_2.z
  SHX6_2 = 0.0
  SHX7_2 = 0.0
  SHX8_2 = 0.0
  SHX9_2 = 0.0
  SHX10_2 = 0.0
  SHX11_2 = 0.0
  SHX12_2 = 20.0
  SHX13_2 = 20.0
  SHX14_2 = 20.0
  SHX15_2 = 255
  SHX16_2 = 255
  SHX17_2 = 0
  SHX18_2 = 180
  SHX19_2 = false
  SHX20_2 = true
  SHX21_2 = 2
  SHX22_2 = false
  SHX23_2 = nil
  SHX24_2 = nil
  SHX25_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
end
function SHX31_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX1_2 = SHX0_1.locations
  SHX2_2 = SHX0_2.mapName
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerCoords
  SHX2_2 = SHX2_2()
  SHX3_2 = pairs
  SHX4_2 = SHX0_2.activeCollectableIndicies
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX8_2 = SHX1_2.collectableSpawns
    SHX8_2 = SHX8_2[SHX7_2]
    SHX9_2 = SHX30_1
    SHX10_2 = SHX8_2
    SHX9_2(SHX10_2)
    SHX9_2 = SHX2_2 - SHX8_2
    SHX9_2 = #SHX9_2
    if SHX9_2 < 20.0 then
      SHX9_2 = TriggerServerEvent
      SHX10_2 = "d6a062ef9a"
      SHX11_2 = SHX7_2
      SHX9_2(SHX10_2, SHX11_2)
    end
  end
end
function SHX32_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX25_1
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = SHX26_1
  SHX2_2 = SHX0_2
  SHX3_2 = SHX27_1
  SHX4_2 = SHX0_2
  SHX3_2, SHX4_2 = SHX3_2(SHX4_2)
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = SHX31_1
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = SHX0_2.isFirstGame
  if SHX1_2 then
    SHX1_2 = SHX28_1
    SHX1_2()
  end
end
function SHX33_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX1_1
  if not SHX0_2 then
    return
  end
  SHX0_2 = SHX1_1.timers
  SHX0_2 = SHX0_2.reset
  SHX0_2()
  SHX0_2 = SHX1_1.serverState
  if "SETUP" == SHX0_2 then
    SHX0_2 = SHX2_1
    SHX1_2 = SHX1_1
    SHX0_2(SHX1_2)
  else
    SHX0_2 = SHX1_1.serverState
    if "WAITING_FOR_PLAYERS" == SHX0_2 then
      SHX0_2 = SHX7_1
      SHX1_2 = SHX1_1
      SHX0_2(SHX1_2)
    else
      SHX0_2 = SHX1_1.serverState
      if "ASSIGN_PLAYER_TEAMS" == SHX0_2 then
        SHX0_2 = SHX8_1
        SHX0_2()
      else
        SHX0_2 = SHX1_1.serverState
        if "CUSTOMISE_VEHICLE" == SHX0_2 then
          SHX0_2 = SHX10_1
          SHX1_2 = SHX1_1
          SHX0_2(SHX1_2)
        else
          SHX0_2 = SHX1_1.serverState
          if "FLY_IN_INTRO" == SHX0_2 then
            SHX0_2 = SHX13_1
            SHX1_2 = SHX1_1
            SHX0_2(SHX1_2)
          else
            SHX0_2 = SHX1_1.serverState
            if "INITIAL_SPAWN_PROTECTION" == SHX0_2 then
              SHX0_2 = SHX29_1
              SHX1_2 = SHX1_1
              SHX0_2(SHX1_2)
            else
              SHX0_2 = SHX1_1.serverState
              if "MAIN_GAME_ZONE_STATIC" == SHX0_2 then
                SHX0_2 = SHX32_1
                SHX1_2 = SHX1_1
                SHX0_2(SHX1_2)
              end
            end
          end
        end
      end
    end
  end
  SHX0_2 = SHX1_1.timers
  SHX0_2 = SHX0_2.draw
  SHX0_2()
end
function SHX34_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = SHX1_1
  if not SHX1_2 then
    SHX1_2 = false
    return SHX1_2
  end
  SHX1_2 = SHX1_1.enableEnemyBlips
  if SHX1_2 then
    SHX1_2 = true
    return SHX1_2
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getEventLocalPlayer
  SHX1_2 = SHX1_2()
  if SHX1_2 then
    SHX2_2 = SHX1_2.data
    SHX2_2 = SHX2_2.teamName
    if SHX2_2 then
      goto SHX_LABEL_22
    end
  end
  SHX2_2 = false
  return SHX2_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_22:: outside nested blocks until all 'goto SHX_LABEL_22' can see it
  ::SHX_LABEL_22::
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getClientEventData
  SHX3_2 = "DogFightingClientData"
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = pairs
  SHX4_2 = SHX2_2.players
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = SHX8_2.source
    if SHX9_2 == SHX0_2 then
      SHX9_2 = SHX8_2.data
      SHX9_2 = SHX9_2.teamName
      SHX10_2 = SHX1_2.data
      SHX10_2 = SHX10_2.teamName
      if SHX9_2 == SHX10_2 then
        SHX9_2 = true
        return SHX9_2
      end
    end
  end
  SHX3_2 = false
  return SHX3_2
end
function SHX35_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getClientEventData
  SHX2_2 = "DogFightingClientData"
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = pairs
  SHX3_2 = SHX1_2.players
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX7_2.source
    if SHX8_2 == SHX0_2 then
      SHX8_2 = SHX7_2.data
      SHX8_2 = SHX8_2.teamName
      if SHX8_2 then
        SHX8_2 = SHX9_1
        SHX9_2 = SHX7_2.data
        SHX9_2 = SHX9_2.teamName
        SHX8_2 = SHX8_2(SHX9_2)
        if SHX8_2 then
          SHX9_2 = SHX8_2.tagColour
          return SHX9_2
        end
      end
    end
  end
  SHX2_2 = 0
  return SHX2_2
end
SHX36_1 = RegisterNetEvent
SHX37_1 = "7b173da89d"
function SHX38_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX8_2 = SHX0_1.locations
  SHX8_2 = SHX8_2[SHX0_2]
  SHX9_2 = SHX8_2.spawnPositions
  SHX9_2 = SHX9_2[SHX2_2]
  SHX10_2 = AddBlipForRadius
  SHX11_2 = SHX8_2.centerPosition
  SHX11_2 = SHX11_2.x
  SHX12_2 = SHX8_2.centerPosition
  SHX12_2 = SHX12_2.y
  SHX13_2 = SHX8_2.centerPosition
  SHX13_2 = SHX13_2.z
  SHX14_2 = SHX8_2.initialRadius
  SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX11_2 = SetBlipColour
  SHX12_2 = SHX10_2
  SHX13_2 = 1
  SHX11_2(SHX12_2, SHX13_2)
  SHX11_2 = SetBlipAlpha
  SHX12_2 = SHX10_2
  SHX13_2 = 75
  SHX11_2(SHX12_2, SHX13_2)
  SHX11_2 = {}
  SHX11_2.mapName = SHX0_2
  SHX12_2 = GetHashKey
  SHX13_2 = SHX1_2
  SHX12_2 = SHX12_2(SHX13_2)
  SHX11_2.selectedVehicleModelHash = SHX12_2
  SHX11_2.hasSentLoadedEvent = false
  SHX11_2.spawnPosition = SHX9_2
  SHX11_2.serverState = "SETUP"
  SHX11_2.vehicleName = SHX3_2
  SHX11_2.hasSetupCustomisation = false
  SHX11_2.selectedVehicleColour = 0
  SHX11_2.vehicle = 0
  SHX11_2.isRequestVehicle = false
  SHX11_2.toggledRenderPhaseFrame = 0
  SHX11_2.flyInCamera = 0
  SHX11_2.easingFlyInCamera = false
  SHX12_2 = CMG
  SHX12_2 = SHX12_2.createTimerBars
  SHX12_2 = SHX12_2()
  SHX11_2.timers = SHX12_2
  SHX11_2.hasRespawned = false
  SHX11_2.wantsNewVehicle = false
  SHX11_2.enableEnemyBlips = SHX4_2
  SHX11_2.allowGuns = SHX5_2
  SHX11_2.allowRockets = SHX6_2
  SHX12_2 = {}
  SHX11_2.activeCollectableIndicies = SHX12_2
  SHX12_2 = GetResourceKvpInt
  SHX13_2 = "cmg_has_played_dogfighting"
  SHX12_2 = SHX12_2(SHX13_2)
  SHX12_2 = 1 ~= SHX12_2
  SHX11_2.isFirstGame = SHX12_2
  SHX11_2.areaBlip = SHX10_2
  SHX1_1 = SHX11_2
  SHX11_2 = CMG
  SHX11_2 = SHX11_2.getClientEventData
  SHX12_2 = "DogFightingClientData"
  SHX11_2 = SHX11_2(SHX12_2)
  SHX11_2.drawPlayersTimeBar = false
  SHX12_2 = CMG
  SHX12_2 = SHX12_2.enableDriveBy
  SHX13_2 = true
  SHX12_2(SHX13_2)
  SHX12_2 = CMG
  SHX12_2 = SHX12_2.setEventsUsingNetworkResurrect
  SHX13_2 = true
  SHX12_2(SHX13_2)
  SHX12_2 = CMG
  SHX12_2 = SHX12_2.setIgnoreEventRespawns
  SHX13_2 = true
  SHX12_2(SHX13_2)
  SHX12_2 = CMG
  SHX12_2 = SHX12_2.enableMinigamePlayerBlips
  SHX13_2 = true
  SHX14_2 = nil
  SHX15_2 = SHX34_1
  SHX16_2 = true
  SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX12_2 = CMG
  SHX12_2 = SHX12_2.enableMinigamePlayerTags
  SHX13_2 = true
  SHX14_2 = false
  SHX15_2 = SHX35_1
  SHX12_2(SHX13_2, SHX14_2, SHX15_2)
  SHX12_2 = CMG
  SHX12_2 = SHX12_2.setFriendlyFire
  SHX13_2 = SHX7_2 <= 1
  SHX12_2(SHX13_2)
  SHX12_2 = NewLoadSceneStartSphere
  SHX13_2 = SHX9_2.x
  SHX14_2 = SHX9_2.y
  SHX15_2 = SHX9_2.z
  SHX16_2 = 100.0
  SHX17_2 = 0
  SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX12_2 = CMG
  SHX12_2 = SHX12_2.createThreadOnTick
  SHX13_2 = SHX33_1
  SHX14_2 = "Dog Fighting"
  SHX12_2(SHX13_2, SHX14_2)
end
SHX36_1(SHX37_1, SHX38_1)
SHX36_1 = RegisterNetEvent
SHX37_1 = "5dbce82101"
function SHX38_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX1_1
  if SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.isDevMode
    SHX1_2 = SHX1_2()
    if SHX1_2 then
      SHX1_2 = print
      SHX2_2 = string
      SHX2_2 = SHX2_2.format
      SHX3_2 = "[Dog Fighting] Server state updated to %s"
      SHX4_2 = SHX0_2
      SHX2_2, SHX3_2, SHX4_2 = SHX2_2(SHX3_2, SHX4_2)
      SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    end
    SHX1_1.serverState = SHX0_2
  end
end
SHX36_1(SHX37_1, SHX38_1)
SHX36_1 = RegisterNetEvent
SHX37_1 = "a66ea189a9"
function SHX38_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX1_1
  if SHX1_2 then
    SHX1_1.flyInEndTime = SHX0_2
  end
end
SHX36_1(SHX37_1, SHX38_1)
SHX36_1 = RegisterNetEvent
SHX37_1 = "c43761eb3c"
function SHX38_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX1_1
  if SHX1_2 then
    SHX1_1.spawnProtectEndTime = SHX0_2
  end
end
SHX36_1(SHX37_1, SHX38_1)
SHX36_1 = RegisterNetEvent
SHX37_1 = "65bce35065"
function SHX38_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getClientEventData
  SHX3_2 = "DogFightingClientData"
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = pairs
  SHX4_2 = SHX2_2.players
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = SHX8_2.data
    SHX10_2 = SHX8_2.source
    SHX10_2 = SHX0_2[SHX10_2]
    SHX9_2.teamName = SHX10_2
    SHX9_2 = SHX8_2.data
    SHX9_2.numLives = SHX1_2
    SHX9_2 = SHX8_2.data
    SHX9_2.numKills = 0
  end
end
SHX36_1(SHX37_1, SHX38_1)
SHX36_1 = CMG
SHX36_1 = SHX36_1.registerMinigameCleanupHandler
SHX37_1 = "Dog Fighting"
function SHX38_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.deleteThreadOnTick
  SHX1_2 = SHX33_1
  SHX0_2(SHX1_2)
  SHX0_2 = SHX1_1
  if not SHX0_2 then
    return
  end
  SHX0_2 = RemoveBlip
  SHX1_2 = SHX1_1.areaBlip
  SHX0_2(SHX1_2)
  SHX0_2 = SHX1_1.hasSetupCustomisation
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.endVehicleSelection
    SHX0_2()
  end
  SHX0_2 = SetPedRelationshipGroupHash
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = 1862763509
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetModelAsNoLongerNeeded
  SHX1_2 = SHX1_1.selectedVehicleModelHash
  SHX0_2(SHX1_2)
  SHX0_2 = NewLoadSceneStop
  SHX0_2()
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.enableDriveBy
  SHX1_2 = false
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setEventsUsingNetworkResurrect
  SHX1_2 = false
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.enableMinigamePlayerBlips
  SHX1_2 = false
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.enableMinigamePlayerTags
  SHX1_2 = false
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setFriendlyFire
  SHX1_2 = true
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setPlayerCanOpenLeaderboard
  SHX1_2 = false
  SHX0_2(SHX1_2)
  SHX0_2 = SetResourceKvpInt
  SHX1_2 = "cmg_has_played_dogfighting"
  SHX2_2 = 1
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = IsScreenFadedIn
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX0_2 = IsScreenFadedOut
    SHX0_2 = SHX0_2()
    if not SHX0_2 then
      goto SHX_LABEL_68
    end
  end
  SHX0_2 = DoScreenFadeIn
  SHX1_2 = 500
  SHX0_2(SHX1_2)
  -- [FIX IF ERROR] Move ::SHX_LABEL_68:: outside nested blocks until all 'goto SHX_LABEL_68' can see it
  ::SHX_LABEL_68::
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.showAllDisplays
  SHX1_2 = "dogfighting"
  SHX0_2(SHX1_2)
  SHX0_2 = nil
  SHX1_1 = SHX0_2
end
SHX36_1(SHX37_1, SHX38_1)
SHX36_1 = {}
SHX36_1.vehicleCategoryIndex = 1
SHX36_1.vehicleSpawncodeIndex = 1
SHX36_1.numTeams = 1
SHX36_1.vehicleWeaponIndex = 1
SHX36_1.startFlying = true
SHX36_1.numLives = 3
SHX36_1.enableCollectables = true
SHX36_1.enableEnemyBlips = true
SHX37_1 = CMG
SHX37_1 = SHX37_1.registerMinigameOptionsHandler
SHX38_1 = "Dog Fighting"
function SHX39_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.List
  SHX1_2 = "Aircraft Category"
  SHX2_2 = SHX0_1.categoryNames
  SHX3_2 = SHX36_1.vehicleCategoryIndex
  SHX4_2 = "The category of aircraft to use. When changed, will reset the option below."
  SHX5_2 = {}
  SHX6_2 = true
  function SHX7_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX4_3
    SHX4_3 = SHX36_1.vehicleCategoryIndex
    if SHX3_3 ~= SHX4_3 then
      SHX36_1.vehicleCategoryIndex = SHX3_3
      SHX36_1.vehicleSpawncodeIndex = 1
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX0_2 = SHX0_1.categoryNames
  SHX1_2 = SHX36_1.vehicleCategoryIndex
  SHX0_2 = SHX0_2[SHX1_2]
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.List
  SHX2_2 = "Aircraft Type"
  SHX3_2 = SHX0_1.categoryVehicleNames
  SHX3_2 = SHX3_2[SHX0_2]
  SHX4_2 = SHX36_1.vehicleSpawncodeIndex
  SHX5_2 = "The specific aircraft to use from the above category."
  SHX6_2 = {}
  SHX7_2 = true
  function SHX8_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX4_3
    SHX4_3 = SHX36_1.vehicleSpawncodeIndex
    if SHX3_3 ~= SHX4_3 then
      SHX36_1.vehicleSpawncodeIndex = SHX3_3
    end
  end
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.List
  SHX2_2 = "Num Teams"
  SHX3_2 = SHX0_1.numTeamsList
  SHX4_2 = SHX36_1.numTeams
  SHX5_2 = "The number of teams to have. If set to one, it will be every player vs every player."
  SHX6_2 = {}
  SHX7_2 = true
  function SHX8_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX4_3
    SHX4_3 = SHX36_1.numTeams
    if SHX3_3 ~= SHX4_3 then
      SHX36_1.numTeams = SHX3_3
    end
  end
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.List
  SHX2_2 = "Allowed Weapons"
  SHX3_2 = SHX0_1.vehicleWeaponsList
  SHX4_2 = SHX36_1.vehicleWeaponIndex
  SHX5_2 = "The weapons which are allowed to be used in fighting."
  SHX6_2 = {}
  SHX7_2 = true
  function SHX8_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX4_3
    SHX4_3 = SHX36_1.vehicleWeaponIndex
    if SHX3_3 ~= SHX4_3 then
      SHX36_1.vehicleWeaponIndex = SHX3_3
    end
  end
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.List
  SHX2_2 = "Num Lives"
  SHX3_2 = SHX0_1.numLivesList
  SHX4_2 = SHX36_1.numLives
  SHX5_2 = "The amount of lives each player should have. When killed, if having extra lives they will respawn in another aircraft."
  SHX6_2 = {}
  SHX7_2 = true
  function SHX8_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX4_3
    SHX4_3 = SHX36_1.numLives
    if SHX3_3 ~= SHX4_3 then
      SHX36_1.numLives = SHX3_3
    end
  end
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.Checkbox
  SHX2_2 = "Enable Collectables"
  SHX3_2 = "Enables mid air collectables which can be flown through to collect and receive special effects."
  SHX4_2 = SHX36_1.enableCollectables
  SHX5_2 = {}
  function SHX6_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    SHX36_1.enableCollectables = SHX3_3
  end
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.Checkbox
  SHX2_2 = "Show Enemy Blips"
  SHX3_2 = "Whether to show the blips of enemy aircraft. Your own teams blip will always be shown."
  SHX4_2 = SHX36_1.enableEnemyBlips
  SHX5_2 = {}
  function SHX6_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    SHX36_1.enableEnemyBlips = SHX3_3
  end
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX1_2 = SHX36_1
  return SHX1_2
end
SHX37_1(SHX38_1, SHX39_1)
SHX37_1 = CMG
SHX37_1 = SHX37_1.registerDevMenuState
SHX38_1 = "Dog Fighting"
SHX39_1 = {}
SHX39_1.drawMaps = false
SHX37_1 = SHX37_1(SHX38_1, SHX39_1)
SHX38_1 = CMG
SHX38_1 = SHX38_1.registerDevMenuItems
SHX39_1 = "Events/Dog Fighting"
function SHX40_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Checkbox
  SHX1_2 = "Draw Maps"
  SHX2_2 = "Draw debug information for each location."
  SHX3_2 = SHX37_1.drawMaps
  SHX4_2 = {}
  function SHX5_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    SHX37_1.drawMaps = SHX3_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX38_1(SHX39_1, SHX40_1)
SHX38_1 = CMG
SHX38_1 = SHX38_1.registerDevMenuThread
SHX39_1 = "Dog Fighting"
function SHX40_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2
  SHX0_2 = SHX37_1.drawMaps
  if SHX0_2 then
    SHX0_2 = pairs
    SHX1_2 = SHX0_1.locations
    SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
    for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
      SHX6_2 = DrawMarker
      SHX7_2 = 28
      SHX8_2 = SHX5_2.centerPosition
      SHX8_2 = SHX8_2.x
      SHX9_2 = SHX5_2.centerPosition
      SHX9_2 = SHX9_2.y
      SHX10_2 = SHX5_2.centerPosition
      SHX10_2 = SHX10_2.z
      SHX11_2 = 0.0
      SHX12_2 = 0.0
      SHX13_2 = 0.0
      SHX14_2 = 0.0
      SHX15_2 = 0.0
      SHX16_2 = 0.0
      SHX17_2 = 10.0
      SHX18_2 = 10.0
      SHX19_2 = 10.0
      SHX20_2 = 0
      SHX21_2 = 0
      SHX22_2 = 255
      SHX23_2 = 180
      SHX24_2 = false
      SHX25_2 = false
      SHX26_2 = 2
      SHX27_2 = false
      SHX28_2 = nil
      SHX29_2 = nil
      SHX30_2 = false
      SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2)
      SHX6_2 = DrawMarker
      SHX7_2 = 1
      SHX8_2 = SHX5_2.centerPosition
      SHX8_2 = SHX8_2.x
      SHX9_2 = SHX5_2.centerPosition
      SHX9_2 = SHX9_2.y
      SHX10_2 = 0.0
      SHX11_2 = 0.0
      SHX12_2 = 0.0
      SHX13_2 = 0.0
      SHX14_2 = 0.0
      SHX15_2 = 0.0
      SHX16_2 = 0.0
      SHX17_2 = SHX5_2.initialRadius
      SHX17_2 = SHX17_2 * 2.0
      SHX18_2 = SHX5_2.initialRadius
      SHX18_2 = SHX18_2 * 2.0
      SHX19_2 = SHX5_2.initialRadius
      SHX19_2 = SHX19_2 * 2.0
      SHX20_2 = 255
      SHX21_2 = 0
      SHX22_2 = 0
      SHX23_2 = 75
      SHX24_2 = false
      SHX25_2 = false
      SHX26_2 = 2
      SHX27_2 = false
      SHX28_2 = nil
      SHX29_2 = nil
      SHX30_2 = false
      SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2)
      SHX6_2 = pairs
      SHX7_2 = SHX5_2.spawnPositions
      SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
      for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
        SHX12_2 = DrawMarker
        SHX13_2 = 28
        SHX14_2 = SHX11_2.x
        SHX15_2 = SHX11_2.y
        SHX16_2 = SHX11_2.z
        SHX17_2 = 0.0
        SHX18_2 = 0.0
        SHX19_2 = 0.0
        SHX20_2 = 0.0
        SHX21_2 = 0.0
        SHX22_2 = 0.0
        SHX23_2 = 10.0
        SHX24_2 = 10.0
        SHX25_2 = 10.0
        SHX26_2 = 0
        SHX27_2 = 255
        SHX28_2 = 0
        SHX29_2 = 180
        SHX30_2 = false
        SHX31_2 = false
        SHX32_2 = 2
        SHX33_2 = false
        SHX34_2 = nil
        SHX35_2 = nil
        SHX36_2 = false
        SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2)
        SHX12_2 = CMG
        SHX12_2 = SHX12_2.drawHeadingFromPoint
        SHX13_2 = SHX11_2.xyz
        SHX14_2 = math
        SHX14_2 = SHX14_2.rad
        SHX15_2 = SHX11_2.w
        SHX14_2 = SHX14_2(SHX15_2)
        SHX15_2 = 50.0
        SHX12_2(SHX13_2, SHX14_2, SHX15_2)
      end
      SHX6_2 = pairs
      SHX7_2 = SHX5_2.collectableSpawns
      SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
      for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
        SHX12_2 = SHX30_1
        SHX13_2 = SHX11_2
        SHX12_2(SHX13_2)
      end
    end
  end
end
SHX38_1(SHX39_1, SHX40_1)
function SHX38_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX0_2.vehicle
  if 0 == SHX1_2 then
    return
  end
  SHX1_2 = SetEntityAsNoLongerNeeded
  SHX2_2 = SHX0_2.vehicle
  SHX1_2(SHX2_2)
  SHX1_2 = NetworkGetNetworkIdFromEntity
  SHX2_2 = SHX0_2.vehicle
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = NetworkDoesNetworkIdExist
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    return
  end
  SHX2_2 = TriggerServerEvent
  SHX3_2 = "3ab272a10d"
  SHX4_2 = SHX1_2
  SHX2_2(SHX3_2, SHX4_2)
end
SHX39_1 = AddEventHandler
SHX40_1 = "5dac3d7c66"
function SHX41_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = SHX1_1
  if SHX0_2 then
    SHX0_2 = SHX38_1
    SHX1_2 = SHX1_1
    SHX0_2(SHX1_2)
    SHX0_2 = SetEntityCoordsNoOffset
    SHX1_2 = PlayerPedId
    SHX1_2 = SHX1_2()
    SHX2_2 = 0.0
    SHX3_2 = 0.0
    SHX4_2 = 0.0
    SHX5_2 = true
    SHX6_2 = false
    SHX7_2 = false
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
    SHX0_2 = SHX18_1
    SHX1_2 = true
    SHX0_2(SHX1_2)
    SHX1_1.hasRespawned = true
  end
end
SHX39_1(SHX40_1, SHX41_1)
SHX39_1 = RegisterNetEvent
SHX40_1 = "546310b6b7"
function SHX41_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX1_1
  if SHX0_2 then
    SHX0_2 = SHX38_1
    SHX1_2 = SHX1_1
    SHX0_2(SHX1_2)
    SHX1_1.wantsNewVehicle = true
  end
end
SHX39_1(SHX40_1, SHX41_1)
SHX39_1 = RegisterNetEvent
SHX40_1 = "4960beeb90"
function SHX41_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getClientEventData
  SHX3_2 = "DogFightingClientData"
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = pairs
  SHX4_2 = SHX2_2.players
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = SHX8_2.source
    if SHX9_2 == SHX0_2 then
      SHX9_2 = SHX8_2.data
      SHX9_2.numLives = SHX1_2
      break
    end
  end
end
SHX39_1(SHX40_1, SHX41_1)
SHX39_1 = RegisterNetEvent
SHX40_1 = "ae38cbb08d"
function SHX41_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getClientEventData
  SHX3_2 = "DogFightingClientData"
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = pairs
  SHX4_2 = SHX2_2.players
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = SHX8_2.source
    if SHX9_2 == SHX0_2 then
      SHX9_2 = SHX8_2.data
      SHX9_2.numKills = SHX1_2
      break
    end
  end
end
SHX39_1(SHX40_1, SHX41_1)
SHX39_1 = RegisterNetEvent
SHX40_1 = "c7b4793225"
function SHX41_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX1_1
  if SHX1_2 then
    SHX1_2 = SHX1_1.activeCollectableIndicies
    SHX1_2[SHX0_2] = true
  end
end
SHX39_1(SHX40_1, SHX41_1)
SHX39_1 = RegisterNetEvent
SHX40_1 = "0544b9386d"
function SHX41_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX1_1
  if SHX1_2 then
    SHX1_2 = SHX1_1.activeCollectableIndicies
    SHX1_2[SHX0_2] = nil
  end
end
SHX39_1(SHX40_1, SHX41_1)
SHX39_1 = AddRelationshipGroup
SHX40_1 = SHX0_1.defaultRelationshipName
SHX39_1(SHX40_1)
SHX39_1 = pairs
SHX40_1 = SHX0_1.teams
SHX39_1, SHX40_1, SHX41_1, SHX42_1 = SHX39_1(SHX40_1)
for SHX43_1, SHX44_1 in SHX39_1, SHX40_1, SHX41_1, SHX42_1 do
  SHX45_1 = AddRelationshipGroup
  SHX46_1 = SHX44_1.relationshipName
  SHX45_1(SHX46_1)
  SHX45_1 = pairs
  SHX46_1 = SHX0_1.teams
  SHX45_1, SHX46_1, SHX47_1, SHX48_1 = SHX45_1(SHX46_1)
  for SHX49_1, SHX50_1 in SHX45_1, SHX46_1, SHX47_1, SHX48_1 do
    SHX51_1 = SHX44_1.relationshipHash
    SHX52_1 = SHX50_1.relationshipHash
    if SHX51_1 == SHX52_1 then
      SHX51_1 = SetRelationshipBetweenGroups
      SHX52_1 = 0
      SHX53_1 = SHX44_1.relationshipHash
      SHX54_1 = SHX50_1.relationshipHash
      SHX51_1(SHX52_1, SHX53_1, SHX54_1)
    else
      SHX51_1 = SetRelationshipBetweenGroups
      SHX52_1 = 5
      SHX53_1 = SHX44_1.relationshipHash
      SHX54_1 = SHX50_1.relationshipHash
      SHX51_1(SHX52_1, SHX53_1, SHX54_1)
    end
  end
  SHX45_1 = SetRelationshipBetweenGroups
  SHX46_1 = 5
  SHX47_1 = SHX44_1.relationshipHash
  SHX48_1 = SHX0_1.defaultRelationshipHash
  SHX45_1(SHX46_1, SHX47_1, SHX48_1)
  SHX45_1 = SetRelationshipBetweenGroups
  SHX46_1 = 5
  SHX47_1 = SHX0_1.defaultRelationshipHash
  SHX48_1 = SHX44_1.relationshipHash
  SHX45_1(SHX46_1, SHX47_1, SHX48_1)
end
SHX39_1 = RegisterNetEvent
SHX40_1 = "c229477440"
function SHX41_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX4_2 = string
  SHX4_2 = SHX4_2.format
  SHX5_2 = "%s%s~w~ has killed %s%s~w~"
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.getPlayerColour
  SHX7_2 = SHX1_2
  SHX6_2 = SHX6_2(SHX7_2)
  SHX7_2 = SHX3_2
  SHX8_2 = CMG
  SHX8_2 = SHX8_2.getPlayerColour
  SHX9_2 = SHX0_2
  SHX8_2 = SHX8_2(SHX9_2)
  SHX9_2 = SHX2_2
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX5_2 = notify
  SHX6_2 = SHX4_2
  SHX5_2(SHX6_2)
end
SHX39_1(SHX40_1, SHX41_1)
