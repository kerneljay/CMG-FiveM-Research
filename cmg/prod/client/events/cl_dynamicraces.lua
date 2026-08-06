-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/events/cfg_dynamicraces"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = {}
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = {}
  SHX0_2.state = "none"
  SHX0_2.elapsedSeconds = 0
  SHX0_2.elapsedMinutes = 0
  SHX0_2.currentPosition = 1
  SHX0_2.currentCheckpoint = 0
  SHX1_2 = {}
  SHX0_2.checkpoints = SHX1_2
  SHX1_2 = {}
  SHX0_2.checkpointsUUIDs = SHX1_2
  SHX0_2.maxCheckpoints = 0
  SHX0_2.distanceToNextCheckpoint = 10
  SHX0_2.vehicle = ""
  SHX0_2.collisionDisabled = false
  SHX0_2.vehicleId = ""
  SHX0_2.vehicleColour = 1
  SHX0_2.startPosition = -1
  SHX0_2.disableVehicleWeapons = true
  SHX0_2.currentVehicleSpawned = 0
  SHX0_2.holdingF = 0
  SHX0_2.currentLap = 1
  SHX0_2.maxLaps = 1
  SHX0_2.finished = false
  SHX0_2.racePositionScaleform = nil
  SHX1_1 = SHX0_2
end
SHX3_1 = SHX2_1
SHX3_1()
SHX3_1 = Citizen
SHX3_1 = SHX3_1.CreateThread
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = "Races"
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.registerMinigameCleanupHandler
  SHX2_2 = SHX0_2
  function SHX3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
    SHX0_3 = Citizen
    SHX0_3 = SHX0_3.InvokeNative
    SHX1_3 = 6917136782320038191
    SHX2_3 = false
    SHX0_3(SHX1_3, SHX2_3)
    SHX0_3 = SetNetworkVehicleAsGhost
    SHX1_3 = SHX1_1.currentVehicleSpawned
    SHX2_3 = false
    SHX0_3(SHX1_3, SHX2_3)
    SHX0_3 = DeleteVehicle
    SHX1_3 = SHX1_1.currentVehicleSpawned
    SHX0_3(SHX1_3)
    SHX0_3 = pairs
    SHX1_3 = SHX1_1.checkpointsUUIDs
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
    for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      SHX6_3 = CMG
      SHX6_3 = SHX6_3.deleteCheckpoint
      SHX7_3 = "rockstar_races"
      SHX8_3 = SHX5_3
      SHX6_3(SHX7_3, SHX8_3)
    end
    SHX0_3 = SetPlayerFallDistance
    SHX1_3 = PlayerId
    SHX1_3 = SHX1_3()
    SHX2_3 = 5.0
    SHX0_3(SHX1_3, SHX2_3)
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.cleanupRockstarMaps
    SHX0_3()
    SHX0_3 = TriggerMusicEvent
    SHX1_3 = "BST_STOP"
    SHX0_3(SHX1_3)
    SHX0_3 = SHX2_1
    SHX0_3()
  end
  SHX1_2(SHX2_2, SHX3_2)
end
SHX3_1(SHX4_1)
SHX3_1 = RegisterNetEvent
SHX4_1 = "a662d70c86"
function SHX5_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2
  SHX3_2 = PlayerPedId
  SHX3_2 = SHX3_2()
  SHX4_2 = SetEntityCoords
  SHX5_2 = SHX3_2
  SHX6_2 = SHX2_2.x
  SHX7_2 = SHX2_2.y
  SHX8_2 = SHX2_2.z
  SHX9_2 = true
  SHX10_2 = false
  SHX11_2 = false
  SHX12_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX4_2 = FreezeEntityPosition
  SHX5_2 = PlayerPedId
  SHX5_2 = SHX5_2()
  SHX6_2 = true
  SHX4_2(SHX5_2, SHX6_2)
  SHX1_1.state = "waiting"
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.setEventMusic
  SHX5_2 = "FAM2_CHASE_RT"
  SHX4_2(SHX5_2)
  SHX4_2 = {}
  SHX1_1.checkpointData = SHX4_2
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.loadClientRockstarMap
  SHX5_2 = SHX1_2
  SHX6_2 = true
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SHX1_2.repairCheckpoints
  if SHX4_2 then
    SHX4_2 = 1
    SHX5_2 = SHX1_2.repairCheckpoints
    SHX5_2 = #SHX5_2
    SHX6_2 = 1
    for SHX7_2 = SHX4_2, SHX5_2, SHX6_2 do
      SHX8_2 = SHX1_2.repairCheckpoints
      SHX8_2 = SHX8_2[SHX7_2]
      SHX9_2 = CMG
      SHX9_2 = SHX9_2.createCheckpoint
      SHX10_2 = "rockstar_races"
      SHX11_2 = 5
      SHX12_2 = SHX8_2.x
      SHX13_2 = SHX8_2.y
      SHX14_2 = SHX8_2.z
      SHX15_2 = 0.0
      SHX16_2 = 0.0
      SHX17_2 = 0.0
      SHX18_2 = 10.0
      SHX19_2 = 255
      SHX20_2 = 255
      SHX21_2 = 0
      SHX22_2 = 127
      SHX23_2 = 0
      function SHX24_2(SHX0_3)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
        SHX1_3 = PlaySoundFrontend
        SHX2_3 = -1
        SHX3_3 = "RACE_PLACED"
        SHX4_3 = "HUD_AWARDS"
        SHX5_3 = false
        SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3)
        SHX1_3 = AnimpostfxPlay
        SHX2_3 = "SuccessNeutral"
        SHX3_3 = 0
        SHX4_3 = false
        SHX1_3(SHX2_3, SHX3_3, SHX4_3)
        SHX1_3 = CMG
        SHX1_3 = SHX1_3.deleteCheckpoint
        SHX2_3 = "rockstar_races"
        SHX3_3 = SHX0_3
        SHX1_3(SHX2_3, SHX3_3)
        SHX1_3 = SetVehicleEngineHealth
        SHX2_3 = SHX1_1.currentVehicleSpawned
        SHX3_3 = 1000.0
        SHX1_3(SHX2_3, SHX3_3)
        SHX1_3 = SetVehicleBodyHealth
        SHX2_3 = SHX1_1.currentVehicleSpawned
        SHX3_3 = 1000.0
        SHX1_3(SHX2_3, SHX3_3)
        SHX1_3 = SetVehicleDeformationFixed
        SHX2_3 = SHX1_1.currentVehicleSpawned
        SHX1_3(SHX2_3)
        SHX1_3 = SetVehicleFixed
        SHX2_3 = SHX1_1.currentVehicleSpawned
        SHX1_3(SHX2_3)
      end
      SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
    end
  end
end
SHX3_1(SHX4_1, SHX5_1)
SHX3_1 = RegisterNetEvent
SHX4_1 = "ca51537e29"
function SHX5_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX2_2 = currentEvent
  SHX2_2.drawPlayersTimeBar = false
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.stopEventSequence
  SHX2_2()
  SHX2_2 = Citizen
  SHX2_2 = SHX2_2.Wait
  SHX3_2 = 0
  SHX2_2(SHX3_2)
  SHX2_2 = SHX0_1.dynamicRaces
  SHX2_2 = SHX2_2[SHX0_2]
  SHX3_2 = BusyspinnerOff
  SHX3_2()
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.startVehicleSelection
  SHX4_2 = SHX1_2.xyz
  SHX5_2 = SHX1_2.w
  SHX6_2 = SHX2_2.vehicleOptions
  SHX7_2 = 20
  function SHX8_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3
    SHX1_3 = currentEvent
    SHX1_3 = SHX1_3.data
    SHX1_3 = SHX1_3.customSpawncode
    if SHX1_3 then
      SHX1_3 = currentEvent
      SHX1_3 = SHX1_3.data
      SHX1_3 = SHX1_3.customSpawncode
      SHX1_1.vehicleId = SHX1_3
    else
      SHX1_3 = SHX2_2.vehicleOptions
      SHX1_3 = SHX1_3[SHX0_3]
      if SHX1_3 then
        SHX1_3 = SHX2_2.vehicleOptions
        SHX1_3 = SHX1_3[SHX0_3]
        SHX1_3 = SHX1_3.model
        SHX1_1.vehicleId = SHX1_3
      end
    end
  end
  function SHX9_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3
    SHX1_1.vehicleColour = SHX0_3
  end
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
end
SHX3_1(SHX4_1, SHX5_1)
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX1_1.spawnProtection = true
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.InvokeNative
  SHX1_2 = 6917136782320038191
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetNetworkVehicleAsGhost
  SHX1_2 = SHX1_1.currentVehicleSpawned
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetEntityAlpha
  SHX1_2 = SHX1_1.currentVehicleSpawned
  SHX2_2 = 155
  SHX3_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = SetTimeout
  SHX1_2 = 3000
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3
    SHX0_3 = Citizen
    SHX0_3 = SHX0_3.InvokeNative
    SHX1_3 = 6917136782320038191
    SHX2_3 = false
    SHX0_3(SHX1_3, SHX2_3)
    SHX0_3 = SetNetworkVehicleAsGhost
    SHX1_3 = SHX1_1.currentVehicleSpawned
    SHX2_3 = false
    SHX0_3(SHX1_3, SHX2_3)
    SHX0_3 = SetEntityAlpha
    SHX1_3 = SHX1_1.currentVehicleSpawned
    SHX2_3 = 255
    SHX3_3 = false
    SHX0_3(SHX1_3, SHX2_3, SHX3_3)
    SHX1_1.spawnProtection = false
  end
  SHX0_2(SHX1_2, SHX2_2)
end
SHX4_1 = nil
function SHX5_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = SHX1_1.checkpoints
  SHX2_2 = SHX2_2[1]
  if SHX1_2 == SHX2_2 then
    SHX2_2 = PlaySoundFrontend
    SHX3_2 = -1
    SHX4_2 = "RACE_PLACED"
    SHX5_2 = "HUD_AWARDS"
    SHX6_2 = false
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.deleteCheckpoint
    SHX3_2 = "rockstar_races"
    SHX4_2 = SHX0_2
    SHX2_2(SHX3_2, SHX4_2)
    SHX2_2 = SHX1_1.currentCheckpoint
    SHX2_2 = SHX2_2 + 1
    SHX1_1.currentCheckpoint = SHX2_2
    SHX2_2 = SHX1_1.currentLocalCheckpoint
    SHX2_2 = SHX2_2 + 1
    SHX1_1.currentLocalCheckpoint = SHX2_2
    SHX2_2 = table
    SHX2_2 = SHX2_2.remove
    SHX3_2 = SHX1_1.checkpoints
    SHX4_2 = 1
    SHX2_2(SHX3_2, SHX4_2)
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "6ca31d93b3"
    SHX4_2 = currentEvent
    SHX4_2 = SHX4_2.minigameId
    SHX5_2 = SHX1_1.currentLap
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX1_1.disableVehicleWeapons = false
    SHX2_2 = SHX1_1.currentCheckpoint
    SHX3_2 = SHX1_1.numOfCheckpointsPerLap
    SHX4_2 = SHX1_1.currentLap
    SHX3_2 = SHX3_2 * SHX4_2
    if SHX2_2 == SHX3_2 then
      SHX2_2 = SHX1_1.currentLap
      SHX3_2 = SHX1_1.maxLaps
      if SHX2_2 < SHX3_2 then
        SHX2_2 = SHX1_1.currentLap
        SHX2_2 = SHX2_2 + 1
        SHX1_1.currentLap = SHX2_2
        SHX1_1.currentLocalCheckpoint = 0
      end
    end
    SHX2_2 = 0
    SHX3_2 = SHX1_1.currentCheckpoint
    SHX3_2 = SHX3_2 + 1
    SHX4_2 = SHX1_1.maxCheckpoints
    if SHX3_2 == SHX4_2 then
      SHX2_2 = 4
    else
      SHX3_2 = SHX1_1.currentCheckpoint
      SHX3_2 = SHX3_2 + 1
      SHX4_2 = SHX1_1.maxCheckpoints
      if SHX3_2 >= SHX4_2 then
        return
      end
    end
    SHX3_2 = SHX4_1
    SHX4_2 = SHX1_1.currentLocalCheckpoint
    SHX4_2 = SHX4_2 + 1
    SHX5_2 = SHX1_1.raceData
    SHX6_2 = SHX2_2
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  else
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.announceMpSmallMsg
    SHX3_2 = "Wrong checkpoint!"
    SHX4_2 = ""
    SHX5_2 = 6
    SHX6_2 = 2000
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  end
end
function SHX6_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  SHX3_2 = SHX1_2.customCheckpoints
  SHX3_2 = SHX3_2[SHX0_2]
  SHX4_2 = SHX1_1.checkpointData
  SHX4_2[SHX0_2] = SHX3_2
  SHX4_2 = nil
  SHX5_2 = SHX1_2.customCheckpoints
  SHX6_2 = SHX0_2 + 1
  SHX5_2 = SHX5_2[SHX6_2]
  if SHX5_2 then
    SHX5_2 = SHX1_2.customCheckpoints
    SHX6_2 = SHX0_2 + 1
    SHX4_2 = SHX5_2[SHX6_2]
  else
    SHX4_2 = SHX3_2
  end
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.createCheckpoint
  SHX6_2 = "rockstar_races"
  SHX7_2 = SHX2_2
  SHX8_2 = SHX3_2.x
  SHX9_2 = SHX3_2.y
  SHX10_2 = SHX3_2.z
  SHX11_2 = SHX4_2.x
  SHX12_2 = SHX4_2.y
  SHX13_2 = SHX4_2.z
  SHX14_2 = 10.0
  SHX15_2 = 255
  SHX16_2 = 255
  SHX17_2 = 0
  SHX18_2 = 50
  SHX19_2 = 0
  function SHX20_2(SHX0_3, SHX1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX2_3, SHX3_3, SHX4_3
    SHX2_3 = SHX5_1
    SHX3_3 = SHX0_3
    SHX4_3 = SHX1_3
    SHX2_3(SHX3_3, SHX4_3)
  end
  SHX5_2, SHX6_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
  SHX7_2 = table
  SHX7_2 = SHX7_2.insert
  SHX8_2 = SHX1_1.checkpoints
  SHX9_2 = SHX5_2
  SHX7_2(SHX8_2, SHX9_2)
  SHX7_2 = table
  SHX7_2 = SHX7_2.insert
  SHX8_2 = SHX1_1.checkpointsUUIDs
  SHX9_2 = SHX6_2
  SHX7_2(SHX8_2, SHX9_2)
  SHX7_2 = SetCheckpointCylinderHeight
  SHX8_2 = SHX5_2
  SHX9_2 = 25.0
  SHX10_2 = 25.0
  SHX11_2 = 10.0
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
end
function SHX7_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX3_2 = SHX6_1
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  SHX6_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
end
SHX4_1 = SHX7_1
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX1_1.vehicleId
  if "" == SHX0_2 then
    SHX0_2 = drawNativeNotification
    SHX1_2 = "Hold ~INPUT_ENTER~ to reset your player to the previous checkpoint."
    SHX0_2(SHX1_2)
  else
    SHX0_2 = drawNativeNotification
    SHX1_2 = "Hold ~INPUT_ENTER~ to reset your vehicle to the previous checkpoint."
    SHX0_2(SHX1_2)
  end
end
SHX8_1 = RegisterNetEvent
SHX9_1 = "b36ed93333"
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX1_1.raceData = SHX0_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.setPlayerCanOpenLeaderboard
  SHX2_2 = true
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.enableMinigamePlayerBlips
  SHX2_2 = true
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.enableMinigamePlayerTags
  SHX2_2 = true
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.endVehicleSelection
  SHX1_2()
  SHX1_2 = print
  SHX2_2 = "[CMG] Waiting for eventMap to load."
  SHX1_2(SHX2_2)
  while true do
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.hasEventMapLoaded
    SHX1_2 = SHX1_2()
    if false ~= SHX1_2 then
      break
    end
    SHX1_2 = Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
  end
  SHX1_2 = print
  SHX2_2 = "[CMG] eventMap loaded."
  SHX1_2(SHX2_2)
  SHX1_2 = SHX1_1.vehicleId
  if "" == SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.stopEventSequence
    SHX1_2()
    SHX1_2 = currentEvent
    SHX1_2.drawPlayersTimeBar = false
    SHX1_2 = BusyspinnerOff
    SHX1_2()
  end
  SHX1_2 = SHX7_1
  SHX1_2()
  SHX1_2 = SHX0_2.startPosition
  SHX2_2 = SHX0_2.collisionDisabled
  SHX1_1.collisionDisabled = SHX2_2
  SHX2_2 = SHX0_2.maxLaps
  SHX1_1.maxLaps = SHX2_2
  SHX2_2 = SHX0_2.maxCheckpoints
  SHX2_2 = SHX2_2 - 1
  SHX1_1.numOfCheckpointsPerLap = SHX2_2
  SHX2_2 = SHX1_1.numOfCheckpointsPerLap
  SHX3_2 = SHX1_1.maxLaps
  SHX2_2 = SHX2_2 * SHX3_2
  SHX2_2 = SHX2_2 + 1
  SHX1_1.maxCheckpoints = SHX2_2
  SHX2_2 = SHX0_2.christmasWeather
  if SHX2_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.setWeather
    SHX3_2 = "XMAS"
    SHX2_2(SHX3_2)
  end
  SHX2_2 = SHX6_1
  SHX3_2 = 1
  SHX4_2 = SHX0_2
  SHX5_2 = 0
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = SetEntityCoords
  SHX4_2 = SHX2_2
  SHX5_2 = SHX1_2.x
  SHX6_2 = SHX1_2.y
  SHX7_2 = SHX1_2.z
  SHX8_2 = true
  SHX9_2 = false
  SHX10_2 = false
  SHX11_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX3_2 = SHX1_1.checkpointData
  SHX3_2[0] = SHX1_2
  SHX3_2 = SHX1_1.vehicleId
  if "" ~= SHX3_2 then
    SHX1_1.startPosition = SHX1_2
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.TriggerServerCallback
    SHX4_2 = "d6bf609f5c"
    SHX5_2 = SHX1_1.vehicleId
    SHX6_2 = SHX1_2
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.getObjectId
    SHX5_2 = SHX3_2
    SHX6_2 = "races first spawn"
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
    SHX1_1.currentVehicleSpawned = SHX4_2
    SHX5_2 = SetVehicleColours
    SHX6_2 = SHX1_1.currentVehicleSpawned
    SHX7_2 = SHX1_1.vehicleColour
    SHX8_2 = SHX1_1.vehicleColour
    SHX5_2(SHX6_2, SHX7_2, SHX8_2)
    SHX5_2 = SetVehicleOnGroundProperly
    SHX6_2 = SHX1_1.currentVehicleSpawned
    SHX5_2(SHX6_2)
    SHX5_2 = SetEntityHeading
    SHX6_2 = SHX1_1.currentVehicleSpawned
    SHX7_2 = SHX1_2.w
    SHX5_2(SHX6_2, SHX7_2)
    SHX5_2 = SHX3_1
    SHX5_2()
  else
    SHX3_2 = SetEntityHeading
    SHX4_2 = SHX2_2
    SHX5_2 = SHX1_2.w
    SHX3_2(SHX4_2, SHX5_2)
  end
  SHX1_1.state = "racing"
  SHX3_2 = PlaySoundFrontend
  SHX4_2 = -1
  SHX5_2 = "5s"
  SHX6_2 = "MP_MISSION_COUNTDOWN_SOUNDSET"
  SHX7_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX3_2 = TriggerEvent
  SHX4_2 = "b3cbc4aca5"
  SHX5_2 = 5
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = GetGameTimer
  SHX3_2 = SHX3_2()
  while true do
    SHX4_2 = GetGameTimer
    SHX4_2 = SHX4_2()
    SHX4_2 = SHX4_2 - SHX3_2
    SHX5_2 = 5000
    if not (SHX4_2 < SHX5_2) then
      break
    end
    SHX4_2 = FreezeEntityPosition
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.getPlayerVehicle
    SHX5_2 = SHX5_2()
    SHX6_2 = true
    SHX4_2(SHX5_2, SHX6_2)
    SHX4_2 = FreezeEntityPosition
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.getPlayerPed
    SHX5_2 = SHX5_2()
    SHX6_2 = true
    SHX4_2(SHX5_2, SHX6_2)
    SHX4_2 = Wait
    SHX5_2 = 0
    SHX4_2(SHX5_2)
  end
  SHX4_2 = SHX1_1.vehicleId
  if "" ~= SHX4_2 then
    SHX4_2 = FreezeEntityPosition
    SHX5_2 = PlayerPedId
    SHX5_2 = SHX5_2()
    SHX6_2 = false
    SHX4_2(SHX5_2, SHX6_2)
    SHX4_2 = FreezeEntityPosition
    SHX5_2 = SHX1_1.currentVehicleSpawned
    SHX6_2 = false
    SHX4_2(SHX5_2, SHX6_2)
    SHX4_2 = SetVehicleIsRacing
    SHX5_2 = SHX1_1.currentVehicleSpawned
    SHX6_2 = true
    SHX4_2(SHX5_2, SHX6_2)
  else
    SHX4_2 = FreezeEntityPosition
    SHX5_2 = SHX2_2
    SHX6_2 = false
    SHX4_2(SHX5_2, SHX6_2)
  end
  SHX4_2 = GetGameTimer
  SHX4_2 = SHX4_2()
  SHX1_1.startTime = SHX4_2
  SHX4_2 = 0
  while true do
    SHX5_2 = SHX1_1.state
    if "racing" ~= SHX5_2 then
      break
    end
    SHX4_2 = SHX4_2 + 1
    SHX5_2 = SHX1_1.elapsedSeconds
    if 59 == SHX5_2 then
      SHX1_1.elapsedSeconds = 0
      SHX5_2 = SHX1_1.elapsedMinutes
      SHX5_2 = SHX5_2 + 1
      SHX1_1.elapsedMinutes = SHX5_2
    else
      SHX5_2 = SHX1_1.elapsedSeconds
      SHX5_2 = SHX5_2 + 1
      SHX1_1.elapsedSeconds = SHX5_2
    end
    SHX5_2 = SHX4_2 % 5
    if 0 == SHX5_2 then
      SHX1_1.holdingF = 0
    end
    SHX5_2 = Wait
    SHX6_2 = 1000
    SHX5_2(SHX6_2)
  end
  SHX1_1.elapsedSeconds = 0
  SHX1_1.elapsedMinutes = 0
end
SHX8_1(SHX9_1, SHX10_1)
function SHX8_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2
  SHX4_2 = ClearTimecycleModifier
  SHX4_2()
  SHX4_2 = {}
  SHX5_2 = Scaleform
  SHX6_2 = "MP_CELEBRATION"
  SHX5_2 = SHX5_2(SHX6_2)
  SHX4_2.handle = SHX5_2
  SHX5_2 = Scaleform
  SHX6_2 = "MP_CELEBRATION_BG"
  SHX5_2 = SHX5_2(SHX6_2)
  SHX4_2.handle2 = SHX5_2
  SHX5_2 = Scaleform
  SHX6_2 = "MP_CELEBRATION_FG"
  SHX5_2 = SHX5_2(SHX6_2)
  SHX4_2.handle3 = SHX5_2
  SHX5_2 = pairs
  SHX6_2 = SHX4_2
  SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
  for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
    SHX11_2 = SHX10_2.RunFunction
    SHX12_2 = "CLEANUP"
    SHX13_2 = {}
    SHX14_2 = "WINNER"
    SHX13_2[1] = SHX14_2
    SHX11_2(SHX12_2, SHX13_2)
    SHX11_2 = SHX10_2.RunFunction
    SHX12_2 = "CREATE_STAT_WALL"
    SHX13_2 = {}
    SHX14_2 = "WINNER"
    SHX15_2 = "HUD_COLOUR_BLACK"
    SHX16_2 = "70.0"
    SHX13_2[1] = SHX14_2
    SHX13_2[2] = SHX15_2
    SHX13_2[3] = SHX16_2
    SHX11_2(SHX12_2, SHX13_2)
    SHX11_2 = SHX10_2.RunFunction
    SHX12_2 = "SET_PAUSE_DURATION"
    SHX13_2 = {}
    function SHX14_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = ScaleformMovieMethodAddParamFloat
      SHX1_3 = 2.5
      SHX0_3(SHX1_3)
    end
    SHX13_2[1] = SHX14_2
    SHX11_2(SHX12_2, SHX13_2)
    SHX11_2 = SHX10_2.RunFunction
    SHX12_2 = "ADD_TIME_TO_WALL"
    SHX13_2 = {}
    SHX14_2 = "WINNER"
    SHX15_2 = SHX2_2
    SHX16_2 = "CELEB_TIME"
    SHX13_2[1] = SHX14_2
    SHX13_2[2] = SHX15_2
    SHX13_2[3] = SHX16_2
    SHX11_2(SHX12_2, SHX13_2)
    SHX11_2 = SHX10_2.RunFunction
    SHX12_2 = "ADD_POSITION_TO_WALL"
    SHX13_2 = {}
    SHX14_2 = "WINNER"
    SHX15_2 = SHX1_2
    SHX16_2 = "1ST"
    SHX17_2 = false
    SHX18_2 = false
    SHX13_2[1] = SHX14_2
    SHX13_2[2] = SHX15_2
    SHX13_2[3] = SHX16_2
    SHX13_2[4] = SHX17_2
    SHX13_2[5] = SHX18_2
    SHX11_2(SHX12_2, SHX13_2)
    if 0 ~= SHX3_2 then
      SHX11_2 = SHX10_2.RunFunction
      SHX12_2 = "ADD_CASH_TO_WALL"
      SHX13_2 = {}
      SHX14_2 = "WINNER"
      SHX15_2 = SHX3_2
      SHX16_2 = true
      SHX13_2[1] = SHX14_2
      SHX13_2[2] = SHX15_2
      SHX13_2[3] = SHX16_2
      SHX11_2(SHX12_2, SHX13_2)
    end
    SHX11_2 = SHX10_2.RunFunction
    SHX12_2 = "ADD_WINNER_TO_WALL"
    SHX13_2 = {}
    SHX14_2 = "WINNER"
    SHX15_2 = "CELEB_WINNER"
    SHX16_2 = SHX0_2
    SHX17_2 = ""
    SHX18_2 = 0
    SHX19_2 = false
    SHX20_2 = ""
    SHX21_2 = false
    SHX13_2[1] = SHX14_2
    SHX13_2[2] = SHX15_2
    SHX13_2[3] = SHX16_2
    SHX13_2[4] = SHX17_2
    SHX13_2[5] = SHX18_2
    SHX13_2[6] = SHX19_2
    SHX13_2[7] = SHX20_2
    SHX13_2[8] = SHX21_2
    SHX11_2(SHX12_2, SHX13_2)
    SHX11_2 = SHX10_2.RunFunction
    SHX12_2 = "ADD_BACKGROUND_TO_WALL"
    SHX13_2 = {}
    SHX14_2 = "WINNER"
    SHX15_2 = 75
    SHX16_2 = 0
    SHX13_2[1] = SHX14_2
    SHX13_2[2] = SHX15_2
    SHX13_2[3] = SHX16_2
    SHX11_2(SHX12_2, SHX13_2)
    SHX11_2 = SHX10_2.RunFunction
    SHX12_2 = "SHOW_STAT_WALL"
    SHX13_2 = {}
    SHX14_2 = "WINNER"
    SHX13_2[1] = SHX14_2
    SHX11_2(SHX12_2, SHX13_2)
  end
  SHX5_2 = SHX4_2.handle
  SHX6_2 = SHX4_2.handle2
  SHX7_2 = SHX4_2.handle3
  return SHX5_2, SHX6_2, SHX7_2
end
SHX9_1 = RegisterNetEvent
SHX10_1 = "0820e8681f"
function SHX11_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX1_1.state = "end"
  SHX2_2 = GetGameTimer
  SHX2_2 = SHX2_2()
  SHX1_1.endTime = SHX2_2
  SHX2_2 = SHX1_1.endTime
  SHX3_2 = SHX1_1.startTime
  SHX2_2 = SHX2_2 - SHX3_2
  SHX3_2 = SHX8_1
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_1.currentPosition
  SHX6_2 = SHX2_2
  SHX7_2 = SHX1_2
  SHX3_2, SHX4_2, SHX5_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX6_2 = true
  SHX7_2 = SetTimeout
  SHX8_2 = 15000
  function SHX9_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = false
    SHX6_2 = SHX0_3
  end
  SHX7_2(SHX8_2, SHX9_2)
  while SHX6_2 do
    SHX7_2 = Wait
    SHX8_2 = 0
    SHX7_2(SHX8_2)
    SHX7_2 = HideHudAndRadarThisFrame
    SHX7_2()
    SHX7_2 = DrawScaleformMovieFullscreenMasked
    SHX8_2 = SHX4_2.Handle
    SHX9_2 = SHX5_2.Handle
    SHX10_2 = 255
    SHX11_2 = 255
    SHX12_2 = 255
    SHX13_2 = 255
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX7_2 = SHX3_2.Render2D
    SHX7_2()
  end
end
SHX9_1(SHX10_1, SHX11_1)
function SHX9_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX2_2 = ClearTimecycleModifier
  SHX2_2()
  SHX2_2 = SHX1_1.racePositionScaleform
  if not SHX2_2 then
    SHX3_2 = Scaleform
    SHX4_2 = "RACE_POSITION"
    SHX3_2 = SHX3_2(SHX4_2)
    SHX2_2 = SHX3_2
    SHX1_1.racePositionScaleform = SHX2_2
  end
  SHX3_2 = SHX2_2.RunFunction
  SHX4_2 = "SET_GATES_POSITION"
  SHX5_2 = {}
  SHX6_2 = SHX0_2
  SHX7_2 = SHX1_2
  SHX5_2[1] = SHX6_2
  SHX5_2[2] = SHX7_2
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SHX2_2.RunFunction
  SHX4_2 = "SHOW_RACE_MODULE"
  SHX5_2 = {}
  SHX6_2 = 0
  SHX7_2 = false
  SHX5_2[1] = SHX6_2
  SHX5_2[2] = SHX7_2
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SHX2_2.RunFunction
  SHX4_2 = "SHOW_RACE_MODULE"
  SHX5_2 = {}
  SHX6_2 = 1
  SHX7_2 = false
  SHX5_2[1] = SHX6_2
  SHX5_2[2] = SHX7_2
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SHX2_2.RunFunction
  SHX4_2 = "SHOW_RACE_MODULE"
  SHX5_2 = {}
  SHX6_2 = 2
  SHX7_2 = false
  SHX5_2[1] = SHX6_2
  SHX5_2[2] = SHX7_2
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SHX2_2.Render2D
  SHX3_2()
end
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = SHX0_2 / 1000
  SHX1_2 = SHX1_2 % 60
  SHX2_2 = SHX0_2 / 60000
  SHX2_2 = SHX2_2 % 60
  SHX3_2 = SHX0_2 / 3600000
  SHX3_2 = SHX3_2 % 24
  SHX4_2 = string
  SHX4_2 = SHX4_2.sub
  SHX5_2 = tostring
  SHX6_2 = math
  SHX6_2 = SHX6_2.floor
  SHX7_2 = SHX1_2
  SHX6_2 = SHX6_2(SHX7_2)
  SHX6_2 = SHX1_2 - SHX6_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = 3
  SHX7_2 = 5
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX5_2 = SHX4_2
  SHX4_2 = SHX4_2.gsub
  SHX6_2 = "%."
  SHX7_2 = ""
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX5_2 = string
  SHX5_2 = SHX5_2.gsub
  SHX6_2 = SHX4_2
  SHX7_2 = "%."
  SHX8_2 = ""
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX4_2 = SHX5_2
  SHX5_2 = string
  SHX5_2 = SHX5_2.len
  SHX6_2 = SHX4_2
  SHX5_2 = SHX5_2(SHX6_2)
  if 1 == SHX5_2 then
    SHX5_2 = SHX4_2
    SHX6_2 = "00"
    SHX5_2 = SHX5_2 .. SHX6_2
    SHX4_2 = SHX5_2
  else
    SHX5_2 = string
    SHX5_2 = SHX5_2.len
    SHX6_2 = SHX4_2
    SHX5_2 = SHX5_2(SHX6_2)
    if 2 == SHX5_2 then
      SHX5_2 = SHX4_2
      SHX6_2 = "0"
      SHX5_2 = SHX5_2 .. SHX6_2
      SHX4_2 = SHX5_2
    end
  end
  SHX5_2 = string
  SHX5_2 = SHX5_2.format
  SHX6_2 = "%02d:%02d:%02d.%s"
  SHX7_2 = math
  SHX7_2 = SHX7_2.floor
  SHX8_2 = SHX3_2
  SHX7_2 = SHX7_2(SHX8_2)
  SHX8_2 = math
  SHX8_2 = SHX8_2.floor
  SHX9_2 = SHX2_2
  SHX8_2 = SHX8_2(SHX9_2)
  SHX9_2 = math
  SHX9_2 = SHX9_2.floor
  SHX10_2 = SHX1_2
  SHX9_2 = SHX9_2(SHX10_2)
  SHX10_2 = SHX4_2
  return SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
end
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX1_1.startTime
  if SHX1_2 then
    if not SHX0_2 then
      SHX1_2 = GetGameTimer
      SHX1_2 = SHX1_2()
      SHX0_2 = SHX1_2
    end
    SHX1_2 = SHX1_1.startTime
    SHX1_2 = SHX0_2 - SHX1_2
    SHX2_2 = SHX10_1
    SHX3_2 = SHX1_2
    return SHX2_2(SHX3_2)
  else
    SHX1_2 = "00:00:00"
    return SHX1_2
  end
end
SHX12_1 = CreateThread
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX0_2 = TriggerMusicEvent
  SHX1_2 = "BST_STOP"
  SHX0_2(SHX1_2)
  while true do
    SHX0_2 = SHX1_1.state
    if "waiting" == SHX0_2 then
      SHX0_2 = FreezeEntityPosition
      SHX1_2 = PlayerPedId
      SHX1_2 = SHX1_2()
      SHX2_2 = true
      SHX0_2(SHX1_2, SHX2_2)
    else
      SHX0_2 = SHX1_1.state
      if "racing" == SHX0_2 then
        SHX0_2 = CMG
        SHX0_2 = SHX0_2.createTimerBars
        SHX0_2 = SHX0_2()
        SHX1_2 = SHX0_2.push
        SHX2_2 = "~y~DISTANCE:~w~"
        SHX3_2 = string
        SHX3_2 = SHX3_2.format
        SHX4_2 = "%dm"
        SHX5_2 = math
        SHX5_2 = SHX5_2.floor
        SHX6_2 = SHX1_1.distanceToNextCheckpoint
        SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2 = SHX5_2(SHX6_2)
        SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
        SHX1_2 = SHX0_2.push
        SHX2_2 = "~y~LAP:~w~"
        SHX3_2 = string
        SHX3_2 = SHX3_2.format
        SHX4_2 = "%d/%d"
        SHX5_2 = SHX1_1.currentLap
        SHX6_2 = SHX1_1.maxLaps
        SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
        SHX1_2 = SHX0_2.push
        SHX2_2 = "~y~CHECKPOINT:~w~"
        SHX3_2 = string
        SHX3_2 = SHX3_2.format
        SHX4_2 = "%d/%d"
        SHX5_2 = SHX1_1.currentCheckpoint
        SHX6_2 = SHX1_1.maxCheckpoints
        SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
        SHX1_2 = SHX0_2.push
        SHX2_2 = "~y~TIME:~w~"
        SHX3_2 = string
        SHX3_2 = SHX3_2.format
        SHX4_2 = "~y~%02d:%02d"
        SHX5_2 = SHX1_1.elapsedMinutes
        SHX6_2 = SHX1_1.elapsedSeconds
        SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
        SHX1_2 = SHX1_1.dnfTimer
        if SHX1_2 then
          SHX1_2 = SHX0_2.push
          SHX2_2 = "~r~DNF:~w~"
          SHX3_2 = string
          SHX3_2 = SHX3_2.format
          SHX4_2 = "~r~%d"
          SHX5_2 = SHX1_1.dnfTimer
          SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2 = SHX3_2(SHX4_2, SHX5_2)
          SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
        end
        SHX1_2 = SHX0_2.draw
        SHX1_2()
        SHX1_2 = PlayerPedId
        SHX1_2 = SHX1_2()
        SHX2_2 = GetEntityCoords
        SHX3_2 = SHX1_2
        SHX2_2 = SHX2_2(SHX3_2)
        SHX3_2 = GetVehiclePedIsIn
        SHX4_2 = SHX1_2
        SHX5_2 = false
        SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
        SHX4_2 = 0
        if 0 ~= SHX3_2 then
          SHX5_2 = GetEntityRoll
          SHX6_2 = SHX3_2
          SHX5_2 = SHX5_2(SHX6_2)
          SHX4_2 = SHX5_2
          SHX5_2 = SetPedRagdollOnCollision
          SHX6_2 = SHX1_2
          SHX7_2 = false
          SHX5_2(SHX6_2, SHX7_2)
          SHX5_2 = SetPedCanRagdollFromPlayerImpact
          SHX6_2 = SHX1_2
          SHX7_2 = false
          SHX5_2(SHX6_2, SHX7_2)
          SHX5_2 = SetPedCanRagdoll
          SHX6_2 = SHX1_2
          SHX7_2 = false
          SHX5_2(SHX6_2, SHX7_2)
          SHX5_2 = SetPedCanBeKnockedOffVehicle
          SHX6_2 = SHX1_2
          SHX7_2 = 1
          SHX5_2(SHX6_2, SHX7_2)
          SHX5_2 = SetVehicleColours
          SHX6_2 = SHX1_1.currentVehicleSpawned
          SHX7_2 = SHX1_1.vehicleColour
          SHX8_2 = SHX1_1.vehicleColour
          SHX5_2(SHX6_2, SHX7_2, SHX8_2)
          SHX5_2 = SetVehicleEngineOn
          SHX6_2 = SHX1_1.currentVehicleSpawned
          SHX7_2 = true
          SHX8_2 = true
          SHX9_2 = false
          SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
        else
          SHX5_2 = SetCurrentPedWeapon
          SHX6_2 = SHX1_2
          SHX7_2 = -1569615261
          SHX8_2 = true
          SHX5_2(SHX6_2, SHX7_2, SHX8_2)
          SHX5_2 = SetPlayerFallDistance
          SHX6_2 = PlayerId
          SHX6_2 = SHX6_2()
          SHX7_2 = 50.0
          SHX5_2(SHX6_2, SHX7_2)
        end
        SHX5_2 = SHX1_1.currentCheckpoint
        SHX6_2 = SHX1_1.currentLap
        SHX6_2 = SHX6_2 - 1
        SHX7_2 = SHX1_1.numOfCheckpointsPerLap
        SHX6_2 = SHX6_2 * SHX7_2
        SHX5_2 = SHX5_2 - SHX6_2
        SHX1_1.currentLocalCheckpoint = SHX5_2
        SHX6_2 = SHX1_1.checkpointData
        SHX7_2 = SHX5_2 + 1
        SHX6_2 = SHX6_2[SHX7_2]
        SHX7_2 = SHX1_1.checkpointData
        SHX7_2 = SHX7_2[SHX5_2]
        SHX8_2 = CMG
        SHX8_2 = SHX8_2.setEventRespawnPosition
        SHX9_2 = SHX7_2
        SHX8_2(SHX9_2)
        if SHX6_2 then
          SHX8_2 = vector3
          SHX9_2 = SHX6_2.x
          SHX10_2 = SHX6_2.y
          SHX11_2 = SHX6_2.z
          SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2)
          SHX9_2 = vector3
          SHX10_2 = SHX7_2.x
          SHX11_2 = SHX7_2.y
          SHX12_2 = SHX7_2.z
          SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
          SHX8_2 = SHX8_2 - SHX9_2
          SHX8_2 = #SHX8_2
          SHX9_2 = vector3
          SHX10_2 = SHX6_2.x
          SHX11_2 = SHX6_2.y
          SHX12_2 = SHX6_2.z
          SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
          SHX9_2 = SHX2_2 - SHX9_2
          SHX9_2 = #SHX9_2
          SHX1_1.distanceToNextCheckpoint = SHX9_2
          if SHX9_2 > 25 then
            SHX10_2 = SHX8_2 * 2.0
            if SHX9_2 > SHX10_2 and 0 ~= SHX5_2 then
              SHX10_2 = DoScreenFadeOut
              SHX11_2 = 1500
              SHX10_2(SHX11_2)
              SHX10_2 = NetworkFadeOutEntity
              SHX11_2 = SHX1_2
              SHX12_2 = true
              SHX13_2 = false
              SHX10_2(SHX11_2, SHX12_2, SHX13_2)
              SHX10_2 = Wait
              SHX11_2 = 1500
              SHX10_2(SHX11_2)
              if 0 == SHX3_2 then
                SHX10_2 = SetEntityCoords
                SHX11_2 = SHX1_2
                SHX12_2 = SHX7_2.x
                SHX13_2 = SHX7_2.y
                SHX14_2 = SHX7_2.z
                SHX15_2 = false
                SHX16_2 = false
                SHX17_2 = false
                SHX18_2 = false
                SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
                SHX10_2 = SetEntityHeading
                SHX11_2 = SHX1_1.currentVehicleSpawned
                SHX12_2 = SHX7_2.w
                SHX10_2(SHX11_2, SHX12_2)
              else
                SHX10_2 = SetEntityCoords
                SHX11_2 = SHX3_2
                SHX12_2 = SHX7_2.x
                SHX13_2 = SHX7_2.y
                SHX14_2 = SHX7_2.z
                SHX15_2 = false
                SHX16_2 = false
                SHX17_2 = false
                SHX18_2 = false
                SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
                SHX10_2 = SetEntityHeading
                SHX11_2 = SHX1_1.currentVehicleSpawned
                SHX12_2 = SHX7_2.w
                SHX10_2(SHX11_2, SHX12_2)
                SHX10_2 = SetVehicleEngineHealth
                SHX11_2 = SHX3_2
                SHX12_2 = 1000.0
                SHX10_2(SHX11_2, SHX12_2)
              end
              SHX10_2 = NetworkFadeInEntity
              SHX11_2 = SHX1_2
              SHX12_2 = false
              SHX10_2(SHX11_2, SHX12_2)
              SHX10_2 = SHX3_1
              SHX10_2()
              SHX10_2 = DoScreenFadeIn
              SHX11_2 = 1500
              SHX10_2(SHX11_2)
              SHX10_2 = Wait
              SHX11_2 = 1500
              SHX10_2(SHX11_2)
              SHX10_2 = SHX7_1
              SHX10_2()
          end
          else
            SHX10_2 = GetEntityHealth
            SHX11_2 = SHX1_2
            SHX10_2 = SHX10_2(SHX11_2)
            if SHX10_2 <= 100 then
              SHX10_2 = DoScreenFadeOut
              SHX11_2 = 1500
              SHX10_2(SHX11_2)
              SHX10_2 = NetworkFadeOutEntity
              SHX11_2 = SHX1_2
              SHX12_2 = true
              SHX13_2 = false
              SHX10_2(SHX11_2, SHX12_2, SHX13_2)
              SHX10_2 = Wait
              SHX11_2 = 1500
              SHX10_2(SHX11_2)
              SHX10_2 = TriggerEvent
              SHX11_2 = "193ee4e15e"
              SHX10_2(SHX11_2)
              SHX10_2 = Wait
              SHX11_2 = 1500
              SHX10_2(SHX11_2)
              SHX10_2 = SHX1_1.vehicleId
              if "" ~= SHX10_2 then
                SHX10_2 = DeleteVehicle
                SHX11_2 = SHX1_1.currentVehicleSpawned
                SHX10_2(SHX11_2)
                SHX10_2 = CMG
                SHX10_2 = SHX10_2.TriggerServerCallback
                SHX11_2 = "d6bf609f5c"
                SHX12_2 = SHX1_1.vehicleId
                SHX13_2 = SHX7_2
                SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
                SHX11_2 = CMG
                SHX11_2 = SHX11_2.getObjectId
                SHX12_2 = SHX10_2
                SHX13_2 = "races re-spawn #1"
                SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
                SHX1_1.currentVehicleSpawned = SHX11_2
                SHX12_2 = SetVehicleColours
                SHX13_2 = SHX1_1.currentVehicleSpawned
                SHX14_2 = SHX1_1.vehicleColour
                SHX15_2 = SHX1_1.vehicleColour
                SHX12_2(SHX13_2, SHX14_2, SHX15_2)
                SHX12_2 = SetEntityHeading
                SHX13_2 = SHX1_1.currentVehicleSpawned
                SHX14_2 = SHX7_2.w
                SHX12_2(SHX13_2, SHX14_2)
                SHX12_2 = SHX3_1
                SHX12_2()
              else
                SHX10_2 = SetEntityCoords
                SHX11_2 = SHX1_2
                SHX12_2 = SHX7_2.x
                SHX13_2 = SHX7_2.y
                SHX14_2 = SHX7_2.z
                SHX15_2 = false
                SHX16_2 = false
                SHX17_2 = false
                SHX18_2 = false
                SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
                SHX10_2 = SetEntityHeading
                SHX11_2 = SHX1_2
                SHX12_2 = SHX7_2.w
                SHX10_2(SHX11_2, SHX12_2)
              end
              SHX10_2 = NetworkFadeInEntity
              SHX11_2 = SHX1_2
              SHX12_2 = false
              SHX10_2(SHX11_2, SHX12_2)
              SHX10_2 = DoScreenFadeIn
              SHX11_2 = 1500
              SHX10_2(SHX11_2)
              SHX10_2 = Wait
              SHX11_2 = 1500
              SHX10_2(SHX11_2)
              SHX10_2 = SHX7_1
              SHX10_2()
            else
              if 0 == SHX3_2 then
                SHX10_2 = SHX1_1.vehicleId
                if "" ~= SHX10_2 then
                  SHX10_2 = DoScreenFadeOut
                  SHX11_2 = 1500
                  SHX10_2(SHX11_2)
                  SHX10_2 = NetworkFadeOutEntity
                  SHX11_2 = SHX1_2
                  SHX12_2 = true
                  SHX13_2 = false
                  SHX10_2(SHX11_2, SHX12_2, SHX13_2)
                  SHX10_2 = Wait
                  SHX11_2 = 1500
                  SHX10_2(SHX11_2)
                  SHX10_2 = TriggerEvent
                  SHX11_2 = "193ee4e15e"
                  SHX10_2(SHX11_2)
                  SHX10_2 = Wait
                  SHX11_2 = 1500
                  SHX10_2(SHX11_2)
                  SHX10_2 = DeleteVehicle
                  SHX11_2 = SHX1_1.currentVehicleSpawned
                  SHX10_2(SHX11_2)
                  SHX10_2 = CMG
                  SHX10_2 = SHX10_2.TriggerServerCallback
                  SHX11_2 = "d6bf609f5c"
                  SHX12_2 = SHX1_1.vehicleId
                  SHX13_2 = SHX7_2
                  SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
                  SHX11_2 = CMG
                  SHX11_2 = SHX11_2.getObjectId
                  SHX12_2 = SHX10_2
                  SHX13_2 = "races re-spawn #2"
                  SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
                  SHX1_1.currentVehicleSpawned = SHX11_2
                  SHX12_2 = SetVehicleColours
                  SHX13_2 = SHX1_1.currentVehicleSpawned
                  SHX14_2 = SHX1_1.vehicleColour
                  SHX15_2 = SHX1_1.vehicleColour
                  SHX12_2(SHX13_2, SHX14_2, SHX15_2)
                  SHX12_2 = SetEntityHeading
                  SHX13_2 = SHX1_1.currentVehicleSpawned
                  SHX14_2 = SHX7_2.w
                  SHX12_2(SHX13_2, SHX14_2)
                  SHX12_2 = SHX3_1
                  SHX12_2()
                  SHX12_2 = NetworkFadeInEntity
                  SHX13_2 = SHX1_2
                  SHX14_2 = false
                  SHX12_2(SHX13_2, SHX14_2)
                  SHX12_2 = DoScreenFadeIn
                  SHX13_2 = 1500
                  SHX12_2(SHX13_2)
                  SHX12_2 = Wait
                  SHX13_2 = 1500
                  SHX12_2(SHX13_2)
                  SHX12_2 = SHX7_1
                  SHX12_2()
              end
              else
                SHX10_2 = 178
                if SHX4_2 > SHX10_2 then
                  SHX10_2 = 182
                  if SHX4_2 < SHX10_2 then
                    goto SHX_LABEL_389
                  end
                end
                SHX10_2 = -178
                if SHX4_2 < SHX10_2 then
                  SHX10_2 = -182
                  -- [FIX IF ERROR] Move ::SHX_LABEL_389:: outside nested blocks until all 'goto SHX_LABEL_389' can see it
                  ::SHX_LABEL_389::
                  if SHX4_2 > SHX10_2 then
                    SHX10_2 = GetEntitySpeed
                    SHX11_2 = SHX1_1.currentVehicleSpawned
                    SHX10_2 = SHX10_2(SHX11_2)
                    if SHX10_2 < 5 then
                      SHX10_2 = DoScreenFadeOut
                      SHX11_2 = 1500
                      SHX10_2(SHX11_2)
                      SHX10_2 = NetworkFadeOutEntity
                      SHX11_2 = SHX1_2
                      SHX12_2 = true
                      SHX13_2 = false
                      SHX10_2(SHX11_2, SHX12_2, SHX13_2)
                      SHX10_2 = Wait
                      SHX11_2 = 1500
                      SHX10_2(SHX11_2)
                      SHX10_2 = SHX3_1
                      SHX10_2()
                      SHX10_2 = SetEntityCoords
                      SHX11_2 = SHX1_1.currentVehicleSpawned
                      SHX12_2 = SHX7_2.x
                      SHX13_2 = SHX7_2.y
                      SHX14_2 = SHX7_2.z
                      SHX15_2 = false
                      SHX16_2 = false
                      SHX17_2 = false
                      SHX18_2 = false
                      SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
                      SHX10_2 = SetEntityHeading
                      SHX11_2 = SHX1_1.currentVehicleSpawned
                      SHX12_2 = SHX7_2.w
                      SHX10_2(SHX11_2, SHX12_2)
                      SHX10_2 = SetVehicleEngineHealth
                      SHX11_2 = SHX1_1.currentVehicleSpawned
                      SHX12_2 = 1000.0
                      SHX10_2(SHX11_2, SHX12_2)
                      SHX10_2 = SetVehicleBodyHealth
                      SHX11_2 = SHX1_1.currentVehicleSpawned
                      SHX12_2 = 1000.0
                      SHX10_2(SHX11_2, SHX12_2)
                      SHX10_2 = SetVehicleDeformationFixed
                      SHX11_2 = SHX1_1.currentVehicleSpawned
                      SHX10_2(SHX11_2)
                      SHX10_2 = NetworkFadeInEntity
                      SHX11_2 = SHX1_2
                      SHX12_2 = false
                      SHX10_2(SHX11_2, SHX12_2)
                      SHX10_2 = DoScreenFadeIn
                      SHX11_2 = 1500
                      SHX10_2(SHX11_2)
                      SHX10_2 = Wait
                      SHX11_2 = 1500
                      SHX10_2(SHX11_2)
                      SHX10_2 = SHX7_1
                      SHX10_2()
                    end
                  end
                end
              end
            end
          end
        end
        SHX8_2 = SetPlayerControl
        SHX9_2 = PlayerId
        SHX9_2 = SHX9_2()
        SHX10_2 = true
        SHX11_2 = 0
        SHX8_2(SHX9_2, SHX10_2, SHX11_2)
        if 0 == SHX3_2 then
          SHX8_2 = DisableFirstPersonCamThisFrame
          SHX8_2()
        end
        SHX8_2 = SHX9_1
        SHX9_2 = SHX1_1.currentPosition
        SHX10_2 = currentEvent
        SHX10_2 = SHX10_2.players
        SHX10_2 = #SHX10_2
        SHX8_2(SHX9_2, SHX10_2)
        SHX8_2 = SHX1_1.collisionDisabled
        if SHX8_2 then
          SHX8_2 = Citizen
          SHX8_2 = SHX8_2.InvokeNative
          SHX9_2 = 6917136782320038191
          SHX10_2 = true
          SHX8_2(SHX9_2, SHX10_2)
          SHX8_2 = SHX1_1.currentVehicleSpawned
          if 0 ~= SHX8_2 then
            SHX8_2 = DoesEntityExist
            SHX9_2 = SHX1_1.currentVehicleSpawned
            SHX8_2 = SHX8_2(SHX9_2)
            if SHX8_2 then
              SHX8_2 = SetNetworkVehicleAsGhost
              SHX9_2 = SHX1_1.currentVehicleSpawned
              SHX10_2 = true
              SHX8_2(SHX9_2, SHX10_2)
              SHX8_2 = SetEntityAlpha
              SHX9_2 = SHX1_1.currentVehicleSpawned
              SHX10_2 = 255
              SHX11_2 = false
              SHX8_2(SHX9_2, SHX10_2, SHX11_2)
            end
          end
          SHX8_2 = SetEntityAlpha
          SHX9_2 = SHX1_2
          SHX10_2 = 255
          SHX11_2 = false
          SHX8_2(SHX9_2, SHX10_2, SHX11_2)
          SHX8_2 = pairs
          SHX9_2 = CMG
          SHX9_2 = SHX9_2.getAllVehicles
          SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2 = SHX9_2()
          SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
          for SHX12_2, SHX13_2 in SHX8_2, SHX9_2, SHX10_2, SHX11_2 do
            SHX14_2 = SetEntityAlpha
            SHX15_2 = SHX13_2
            SHX16_2 = 255
            SHX17_2 = false
            SHX14_2(SHX15_2, SHX16_2, SHX17_2)
          end
          SHX8_2 = GetActivePlayers
          SHX8_2 = SHX8_2()
          SHX9_2 = pairs
          SHX10_2 = SHX8_2
          SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX9_2(SHX10_2)
          for SHX13_2, SHX14_2 in SHX9_2, SHX10_2, SHX11_2, SHX12_2 do
            SHX15_2 = GetPlayerPed
            SHX16_2 = SHX14_2
            SHX15_2 = SHX15_2(SHX16_2)
            SHX16_2 = SetEntityAlpha
            SHX17_2 = SHX15_2
            SHX18_2 = 255
            SHX19_2 = false
            SHX16_2(SHX17_2, SHX18_2, SHX19_2)
          end
        end
        SHX8_2 = SetCheckpointRgba
        SHX9_2 = SHX1_1.checkpoints
        SHX9_2 = SHX9_2[1]
        SHX10_2 = 144
        SHX11_2 = 238
        SHX12_2 = 144
        SHX13_2 = 150
        SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
        SHX8_2 = IsDisabledControlPressed
        SHX9_2 = 0
        SHX10_2 = 23
        SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
        if SHX8_2 then
          SHX8_2 = SHX1_1.holdingF
          SHX8_2 = SHX8_2 + 1
          SHX1_1.holdingF = SHX8_2
          SHX8_2 = SHX1_1.holdingF
          if SHX8_2 >= 60 then
            SHX1_1.holdingF = 0
            SHX8_2 = DoScreenFadeOut
            SHX9_2 = 1500
            SHX8_2(SHX9_2)
            SHX8_2 = NetworkFadeOutEntity
            SHX9_2 = SHX1_2
            SHX10_2 = true
            SHX11_2 = false
            SHX8_2(SHX9_2, SHX10_2, SHX11_2)
            SHX8_2 = Wait
            SHX9_2 = 1500
            SHX8_2(SHX9_2)
            SHX8_2 = TriggerEvent
            SHX9_2 = "193ee4e15e"
            SHX8_2(SHX9_2)
            SHX8_2 = Wait
            SHX9_2 = 1500
            SHX8_2(SHX9_2)
            SHX8_2 = SHX1_1.vehicleId
            if "" ~= SHX8_2 then
              SHX8_2 = DeleteVehicle
              SHX9_2 = SHX1_1.currentVehicleSpawned
              SHX8_2(SHX9_2)
              SHX8_2 = CMG
              SHX8_2 = SHX8_2.TriggerServerCallback
              SHX9_2 = "d6bf609f5c"
              SHX10_2 = SHX1_1.vehicleId
              SHX11_2 = SHX7_2
              SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2)
              SHX9_2 = CMG
              SHX9_2 = SHX9_2.getObjectId
              SHX10_2 = SHX8_2
              SHX11_2 = "races re-spawn #3"
              SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
              SHX1_1.currentVehicleSpawned = SHX9_2
              SHX10_2 = SetVehicleColours
              SHX11_2 = SHX1_1.currentVehicleSpawned
              SHX12_2 = SHX1_1.vehicleColour
              SHX13_2 = SHX1_1.vehicleColour
              SHX10_2(SHX11_2, SHX12_2, SHX13_2)
              SHX10_2 = SetEntityHeading
              SHX11_2 = SHX1_1.currentVehicleSpawned
              SHX12_2 = SHX7_2.w
              SHX10_2(SHX11_2, SHX12_2)
              SHX10_2 = SHX3_1
              SHX10_2()
            else
              SHX8_2 = SetEntityCoords
              SHX9_2 = SHX1_2
              SHX10_2 = SHX7_2.x
              SHX11_2 = SHX7_2.y
              SHX12_2 = SHX7_2.z
              SHX13_2 = false
              SHX14_2 = false
              SHX15_2 = false
              SHX16_2 = false
              SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
              SHX8_2 = SetEntityHeading
              SHX9_2 = SHX1_2
              SHX10_2 = SHX7_2.w
              SHX8_2(SHX9_2, SHX10_2)
            end
            SHX8_2 = NetworkFadeInEntity
            SHX9_2 = SHX1_2
            SHX10_2 = false
            SHX8_2(SHX9_2, SHX10_2)
            SHX8_2 = DoScreenFadeIn
            SHX9_2 = 1500
            SHX8_2(SHX9_2)
            SHX8_2 = Wait
            SHX9_2 = 1500
            SHX8_2(SHX9_2)
            SHX8_2 = SHX7_1
            SHX8_2()
          end
        end
        SHX8_2 = pairs
        SHX9_2 = currentEvent
        SHX9_2 = SHX9_2.players
        SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX8_2(SHX9_2)
        for SHX12_2, SHX13_2 in SHX8_2, SHX9_2, SHX10_2, SHX11_2 do
          SHX14_2 = CMG
          SHX14_2 = SHX14_2.updateScoreboard
          SHX15_2 = SHX13_2.source
          SHX16_2 = 6
          SHX17_2 = SHX11_1
          SHX18_2 = SHX13_2.finishTime
          SHX17_2, SHX18_2, SHX19_2 = SHX17_2(SHX18_2)
          SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
        end
      end
    end
    SHX0_2 = Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
end
SHX12_1(SHX13_1)
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX1_1.state
  if "waiting" ~= SHX0_2 then
    SHX0_2 = SHX1_1.state
    if "racing" ~= SHX0_2 then
      goto SHX_LABEL_75
    end
  end
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 75
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 49
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
  SHX2_2 = 24
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 25
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = SHX1_1.disableVehicleWeapons
  if SHX0_2 then
    SHX0_2 = DisableControlAction
    SHX1_2 = 0
    SHX2_2 = 68
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = DisableControlAction
    SHX1_2 = 0
    SHX2_2 = 70
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_75:: outside nested blocks until all 'goto SHX_LABEL_75' can see it
  ::SHX_LABEL_75::
end
SHX13_1 = CMG
SHX13_1 = SHX13_1.createThreadOnTick
SHX14_1 = SHX12_1
SHX15_1 = "Race Controls"
SHX13_1(SHX14_1, SHX15_1)
SHX13_1 = RegisterNetEvent
SHX14_1 = "5339e115ec"
function SHX15_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX1_1.finished
  if not SHX1_2 then
    SHX1_1.currentPosition = SHX0_2
  end
end
SHX13_1(SHX14_1, SHX15_1)
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = pairs
  SHX2_2 = currentEvent
  SHX2_2 = SHX2_2.players
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.source
    if SHX0_2 == SHX7_2 then
      return SHX6_2
    end
  end
  SHX1_2 = {}
  SHX1_2.name = "N/A"
  return SHX1_2
end
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX1_2 = {}
  SHX2_2 = {}
  SHX3_2 = "Position"
  SHX4_2 = "Name"
  SHX5_2 = "Time"
  SHX2_2[1] = SHX3_2
  SHX2_2[2] = SHX4_2
  SHX2_2[3] = SHX5_2
  SHX1_2.columns = SHX2_2
  SHX2_2 = {}
  SHX1_2.rows = SHX2_2
  SHX1_2.sortColumn = 1
  SHX1_2.sortAscending = true
  SHX1_2.formatPlace = true
  SHX2_2 = ipairs
  SHX3_2 = SHX0_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = table
    SHX8_2 = SHX8_2.insert
    SHX9_2 = SHX1_2.rows
    SHX10_2 = {}
    SHX11_2 = SHX6_2
    SHX12_2 = ""
    SHX13_2 = ""
    SHX14_2 = false
    SHX15_2 = SHX13_1
    SHX16_2 = SHX7_2
    SHX15_2 = SHX15_2(SHX16_2)
    SHX15_2 = SHX15_2.name
    SHX16_2 = SHX11_1
    SHX16_2 = SHX16_2()
    SHX10_2.playerSrc = SHX7_2
    SHX10_2[1] = SHX11_2
    SHX10_2[2] = SHX12_2
    SHX10_2[3] = SHX13_2
    SHX10_2[4] = SHX14_2
    SHX10_2[5] = SHX15_2
    SHX10_2[6] = SHX16_2
    SHX8_2(SHX9_2, SHX10_2)
  end
  return SHX1_2
end
SHX15_1 = RegisterNetEvent
SHX16_1 = "da8b82fb88"
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.isLeaderboardSetup
  SHX1_2 = SHX1_2()
  if not SHX1_2 then
    SHX1_2 = SHX14_1
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    SHX2_2 = TriggerEvent
    SHX3_2 = "a8ac0d4162"
    SHX4_2 = SHX1_2
    SHX2_2(SHX3_2, SHX4_2)
  else
    SHX1_2 = pairs
    SHX2_2 = SHX0_2
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
    for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
      SHX7_2 = pairs
      SHX8_2 = currentEvent
      SHX8_2 = SHX8_2.players
      SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
      for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
        SHX13_2 = SHX12_2.source
        if SHX13_2 == SHX6_2 then
          SHX13_2 = CMG
          SHX13_2 = SHX13_2.updateScoreboard
          SHX14_2 = SHX6_2
          SHX15_2 = 1
          SHX16_2 = SHX5_2
          SHX13_2(SHX14_2, SHX15_2, SHX16_2)
          break
        end
      end
    end
  end
end
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = RegisterNetEvent
SHX16_1 = "40d3587c5a"
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_1.finished = true
  SHX1_2 = PlaySound
  SHX2_2 = -1
  SHX3_2 = "CHECKPOINT_PERFECT"
  SHX4_2 = "HUD_MINI_GAME_SOUNDSET"
  SHX5_2 = false
  SHX6_2 = 0
  SHX7_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  if SHX0_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.announceMpBigMsg
    SHX2_2 = "~g~You have won the race!"
    SHX3_2 = "Race will end in 30 seconds, or if all competitors finish."
    SHX4_2 = 5000
    SHX5_2 = false
    SHX6_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  else
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.announceMpBigMsg
    SHX2_2 = "~g~You have finished the race!"
    SHX3_2 = "Race will end in 30 seconds, or if all competitors finish."
    SHX4_2 = 5000
    SHX5_2 = false
    SHX6_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  end
end
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = RegisterNetEvent
SHX16_1 = "f5bcb71e25"
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = pairs
  SHX2_2 = currentEvent
  SHX2_2 = SHX2_2.players
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.source
    if SHX7_2 == SHX0_2 then
      SHX7_2 = GetGameTimer
      SHX7_2 = SHX7_2()
      SHX6_2.finishTime = SHX7_2
      break
    end
  end
end
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = RegisterNetEvent
SHX16_1 = "b64c417a11"
function SHX17_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_1.dnfTimer = 30
  while true do
    SHX0_2 = SHX1_1.state
    if "racing" ~= SHX0_2 then
      break
    end
    SHX0_2 = SHX1_1.dnfTimer
    if SHX0_2 >= 1 then
      SHX0_2 = SHX1_1.dnfTimer
      SHX0_2 = SHX0_2 - 1
      SHX1_1.dnfTimer = SHX0_2
      SHX0_2 = SHX1_1.dnfTimer
      if SHX0_2 <= 5 then
        SHX0_2 = PlaySoundFrontend
        SHX1_2 = -1
        SHX2_2 = "Checkpoint_Buzz"
        SHX3_2 = "DLC_AW_Frontend_Sounds"
        SHX4_2 = false
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
      end
    end
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 1000
    SHX0_2(SHX1_2)
  end
end
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = AddEventHandler
SHX16_1 = "b3cbc4aca5"
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.showCountdownTimer
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
SHX15_1(SHX16_1, SHX17_1)
