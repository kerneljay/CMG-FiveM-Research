-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/events/cfg_manhunt"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = {}
SHX2_1 = CMG
SHX2_1 = SHX2_1.createTimerBars
SHX2_1 = SHX2_1()
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = SetPedIntoVehicle
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX1_1.vehicle
  SHX3_2 = -1
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = GetGameTimer
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX1_1
  while true do
    SHX2_2 = NetworkHasControlOfEntity
    SHX3_2 = SHX1_1.vehicle
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      break
    end
    SHX2_2 = GetGameTimer
    SHX2_2 = SHX2_2()
    SHX2_2 = SHX2_2 - SHX0_2
    SHX3_2 = 2000
    if not (SHX2_2 < SHX3_2) then
      break
    end
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
    SHX2_2 = SHX1_1
    if SHX1_2 ~= SHX2_2 then
      return
    end
  end
  SHX2_2 = SHX1_1.position
  if nil == SHX2_2 then
    SHX2_2 = print
    SHX3_2 = "[Manhunt] Deleting vehicle on spawn, no position was set."
    SHX2_2(SHX3_2)
    SHX2_2 = DeleteEntity
    SHX3_2 = SHX1_1.vehicle
    SHX2_2(SHX3_2)
    return
  end
  SHX2_2 = SetEntityCoordsNoOffset
  SHX3_2 = SHX1_1.vehicle
  SHX4_2 = SHX1_1.position
  SHX4_2 = SHX4_2.x
  SHX5_2 = SHX1_1.position
  SHX5_2 = SHX5_2.y
  SHX6_2 = SHX1_1.position
  SHX6_2 = SHX6_2.z
  SHX7_2 = true
  SHX8_2 = false
  SHX9_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX2_2 = SetVehicleOnGroundProperly
  SHX3_2 = SHX1_1.vehicle
  SHX2_2(SHX3_2)
  SHX2_2 = FreezeEntityPosition
  SHX3_2 = SHX1_1.vehicle
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetVehRadioStation
  SHX3_2 = SHX1_1.vehicle
  SHX4_2 = "OFF"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetVehicleRadioEnabled
  SHX3_2 = SHX1_1.vehicle
  SHX4_2 = false
  SHX2_2(SHX3_2, SHX4_2)
end
function SHX4_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = 0
  SHX2_2 = pairs
  SHX3_2 = currentEvent
  SHX3_2 = SHX3_2.players
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX7_2.team
    if SHX8_2 == SHX0_2 then
      SHX1_2 = SHX1_2 + 1
    end
  end
  return SHX1_2
end
SHX5_1 = RegisterNetEvent
SHX6_1 = "e69f053374"
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX1_1
  while true do
    SHX2_2 = DoesEntityExist
    SHX3_2 = SHX1_1.vehicle
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      break
    end
    SHX2_2 = NetworkDoesEntityExistWithNetworkId
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      SHX2_2 = NetworkGetEntityFromNetworkId
      SHX3_2 = SHX0_2
      SHX2_2 = SHX2_2(SHX3_2)
      SHX1_1.vehicle = SHX2_2
    end
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
    SHX2_2 = SHX1_1
    if SHX1_2 ~= SHX2_2 then
      return
    end
  end
  SHX2_2 = SHX3_1
  SHX2_2()
end
SHX5_1(SHX6_1, SHX7_1)
SHX5_1 = RegisterNetEvent
SHX6_1 = "ea7595f298"
function SHX7_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX3_2 = {}
  SHX1_1 = SHX3_2
  SHX3_2 = currentEvent
  SHX3_2.drawPlayersTimeBar = false
  SHX3_2 = SetPlayerControl
  SHX4_2 = PlayerId
  SHX4_2 = SHX4_2()
  SHX5_2 = false
  SHX6_2 = 0
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = SHX0_1.locations
  SHX3_2 = SHX3_2[SHX0_2]
  SHX4_2 = SHX3_2.vehicles
  SHX1_1.vehicles = SHX4_2
  SHX4_2 = SHX3_2.bounds
  SHX1_1.bounds = SHX4_2
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.setEventMusic
  SHX5_2 = "AH3B_EVADE_COPS_RT"
  SHX4_2(SHX5_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.loadClientRockstarMap
  SHX5_2 = SHX1_2
  SHX4_2(SHX5_2)
  SHX4_2 = PlayerPedId
  SHX4_2 = SHX4_2()
  SHX5_2 = SetEntityCoordsNoOffset
  SHX6_2 = SHX4_2
  SHX7_2 = SHX2_2.x
  SHX8_2 = SHX2_2.y
  SHX9_2 = SHX2_2.z
  SHX10_2 = true
  SHX11_2 = false
  SHX12_2 = false
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX5_2 = SetEntityHeading
  SHX6_2 = SHX4_2
  SHX7_2 = SHX2_2.w
  SHX5_2(SHX6_2, SHX7_2)
end
SHX5_1(SHX6_1, SHX7_1)
SHX5_1 = RegisterNetEvent
SHX6_1 = "29ff279987"
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.stopEventSequence
  SHX1_2()
  SHX1_2 = BusyspinnerOff
  SHX1_2()
  SHX1_2 = SetPlayerControl
  SHX2_2 = PlayerId
  SHX2_2 = SHX2_2()
  SHX3_2 = true
  SHX4_2 = 0
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.startVehicleSelection
  SHX2_2 = SHX0_2.xyz
  SHX3_2 = SHX0_2.w
  SHX4_2 = SHX1_1.vehicles
  SHX5_2 = 20
  function SHX6_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3, SHX3_3
    SHX1_3 = TriggerServerEvent
    SHX2_3 = "5d4175e240"
    SHX3_3 = SHX0_3
    SHX1_3(SHX2_3, SHX3_3)
  end
  SHX7_2 = nil
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX1_1.state = "SELECT"
  SHX1_1.position = SHX0_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.setEventRespawnPosition
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
SHX5_1(SHX6_1, SHX7_1)
function SHX5_1(SHX0_2)
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
      SHX7_2 = SHX6_2.team
      if "civilian" == SHX7_2 then
        SHX7_2 = 3
        return SHX7_2
      else
        SHX7_2 = 1
        return SHX7_2
      end
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
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = pairs
  SHX2_2 = currentEvent
  SHX2_2 = SHX2_2.players
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.source
    if SHX7_2 == SHX0_2 then
      SHX7_2 = SHX6_2.team
      if "civilian" == SHX7_2 then
        SHX7_2 = 9
        return SHX7_2
      else
        SHX7_2 = 6
        return SHX7_2
      end
    end
  end
end
SHX7_1 = RegisterNetEvent
SHX8_1 = "821e2325c4"
function SHX9_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.endVehicleSelection
  SHX1_2()
  SHX1_2 = SetFollowPedCamViewMode
  SHX2_2 = 2
  SHX1_2(SHX2_2)
  SHX1_2 = ExecuteCommand
  SHX2_2 = "showui"
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.enableMinigamePlayerBlips
  SHX2_2 = true
  SHX3_2 = SHX5_1
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.enableMinigamePlayerTags
  SHX2_2 = true
  SHX3_2 = false
  SHX4_2 = SHX6_1
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_1.state = "BEFORE_START"
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.showCountdownTimer
  SHX2_2 = 3
  SHX1_2(SHX2_2)
  SHX1_2 = SHX1_1.state
  if "BEFORE_START" ~= SHX1_2 then
    return
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.setPlayerCanOpenLeaderboard
  SHX2_2 = true
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.setMinigameBounds
  SHX2_2 = SHX1_1.bounds
  SHX1_2(SHX2_2)
  SHX1_1.state = "START"
  SHX1_2 = GetGameTimer
  SHX1_2 = SHX1_2()
  SHX1_1.startTime = SHX1_2
  SHX1_1.gameTime = SHX0_2
end
SHX7_1(SHX8_1, SHX9_1)
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = GetPlayerFromServerId
  SHX2_2 = SHX0_2.source
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX1_1.state
  if "START" ~= SHX2_2 or -1 == SHX1_2 then
    return
  end
  SHX2_2 = GetPlayerPed
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if 0 == SHX2_2 then
    return
  end
  SHX3_2 = GetVehiclePedIsUsing
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if 0 == SHX3_2 then
    return
  end
  SHX4_2 = Citizen
  SHX4_2 = SHX4_2.CreateThreadNow
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.loadPtfx
    SHX1_3 = "scr_as_trans"
    SHX0_3(SHX1_3)
    SHX0_3 = UseParticleFxAsset
    SHX1_3 = "scr_as_trans"
    SHX0_3(SHX1_3)
    SHX0_3 = StartParticleFxLoopedOnEntity
    SHX1_3 = "scr_as_trans_smoke"
    SHX2_3 = SHX3_2
    SHX3_3 = 0.0
    SHX4_3 = 0.0
    SHX5_3 = 0.0
    SHX6_3 = 0.0
    SHX7_3 = 0.0
    SHX8_3 = 0.0
    SHX9_3 = 2.0
    SHX10_3 = false
    SHX11_3 = false
    SHX12_3 = false
    SHX0_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
    SHX1_3 = SetParticleFxLoopedColour
    SHX2_3 = SHX0_3
    SHX3_3 = 1.0
    SHX4_3 = 0.0
    SHX5_3 = 0.0
    SHX6_3 = false
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
    SHX1_3 = Citizen
    SHX1_3 = SHX1_3.Wait
    SHX2_3 = 3000
    SHX1_3(SHX2_3)
    SHX1_3 = StopParticleFxLooped
    SHX2_3 = SHX0_3
    SHX3_3 = false
    SHX1_3(SHX2_3, SHX3_3)
    SHX1_3 = RemoveNamedPtfxAsset
    SHX2_3 = "scr_as_trans"
    SHX1_3(SHX2_3)
  end
  SHX4_2(SHX5_2)
end
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX0_2.blip
  if SHX1_2 then
    SHX1_2 = RemoveBlip
    SHX2_2 = SHX0_2.blip
    SHX1_2(SHX2_2)
    SHX0_2.blip = nil
  end
  SHX1_2 = SHX0_2.tag
  if SHX1_2 then
    SHX1_2 = RemoveMpGamerTag
    SHX2_2 = SHX0_2.tag
    SHX1_2(SHX2_2)
    SHX0_2.tag = nil
  end
end
SHX9_1 = RegisterNetEvent
SHX10_1 = "893a2a1aff"
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = pairs
  SHX2_2 = currentEvent
  SHX2_2 = SHX2_2.players
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = table
    SHX7_2 = SHX7_2.has
    SHX8_2 = SHX0_2
    SHX9_2 = SHX6_2.source
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
    if SHX7_2 then
      SHX7_2 = SHX6_2.team
      if "hunter" ~= SHX7_2 then
        SHX6_2.team = "hunter"
        SHX7_2 = SHX8_1
        SHX8_2 = SHX6_2
        SHX7_2(SHX8_2)
        SHX7_2 = SHX7_1
        SHX8_2 = SHX6_2
        SHX7_2(SHX8_2)
      end
    else
      SHX7_2 = SHX6_2.team
      if "civilian" ~= SHX7_2 then
        SHX6_2.team = "civilian"
        SHX7_2 = SHX8_1
        SHX8_2 = SHX6_2
        SHX7_2(SHX8_2)
        SHX7_2 = SHX7_1
        SHX8_2 = SHX6_2
        SHX7_2(SHX8_2)
      end
    end
  end
end
SHX9_1(SHX10_1, SHX11_1)
SHX9_1 = RegisterNetEvent
SHX10_1 = "c387394ea4"
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_1.gameTime = SHX0_2
end
SHX9_1(SHX10_1, SHX11_1)
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SetCurrentPedWeapon
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = -1569615261
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 21
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 23
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
  SHX2_2 = 75
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
  SHX2_2 = 257
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
end
function SHX10_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX2_2 = SHX0_2.team
  if "civilian" == SHX2_2 then
    SHX2_2 = SetVehicleColours
    SHX3_2 = SHX1_2
    SHX4_2 = 64
    SHX5_2 = 64
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  else
    SHX2_2 = SetVehicleColours
    SHX3_2 = SHX1_2
    SHX4_2 = 29
    SHX5_2 = 29
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  end
  SHX2_2 = SHX1_1.state
  if "START" ~= SHX2_2 then
    SHX2_2 = FreezeEntityPosition
    SHX3_2 = SHX1_2
    SHX4_2 = true
    SHX2_2(SHX3_2, SHX4_2)
  else
    SHX2_2 = SHX0_2.team
    if "civilian" == SHX2_2 then
      SHX2_2 = FreezeEntityPosition
      SHX3_2 = SHX1_2
      SHX4_2 = false
      SHX2_2(SHX3_2, SHX4_2)
    else
      SHX2_2 = GetGameTimer
      SHX2_2 = SHX2_2()
      SHX3_2 = SHX1_1.startTime
      SHX2_2 = SHX2_2 - SHX3_2
      SHX3_2 = 20000
      if SHX2_2 > SHX3_2 then
        SHX2_2 = FreezeEntityPosition
        SHX3_2 = SHX1_2
        SHX4_2 = false
        SHX2_2(SHX3_2, SHX4_2)
      else
        SHX2_2 = FreezeEntityPosition
        SHX3_2 = SHX1_2
        SHX4_2 = true
        SHX2_2(SHX3_2, SHX4_2)
      end
    end
  end
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = SetEntityProofs
  SHX4_2 = SHX2_2
  SHX5_2 = true
  SHX6_2 = true
  SHX7_2 = true
  SHX8_2 = true
  SHX9_2 = true
  SHX10_2 = true
  SHX11_2 = true
  SHX12_2 = true
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX3_2 = SetVehicleEngineOn
  SHX4_2 = SHX1_2
  SHX5_2 = true
  SHX6_2 = true
  SHX7_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
end
function SHX11_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = HasEntityBeenDamagedByEntity
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX5_2 = true
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  if not SHX2_2 then
    SHX2_2 = HasEntityBeenDamagedByEntity
    SHX3_2 = SHX1_2
    SHX4_2 = SHX0_2
    SHX5_2 = true
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    if not SHX2_2 then
      SHX2_2 = IsEntityTouchingEntity
      SHX3_2 = SHX0_2
      SHX4_2 = SHX1_2
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
      if not SHX2_2 then
        SHX2_2 = IsEntityTouchingEntity
        SHX3_2 = SHX1_2
        SHX4_2 = SHX0_2
        SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
      end
    end
  end
  return SHX2_2
end
function SHX12_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX0_2.lastCaptured
  if not SHX1_2 then
    SHX1_2 = true
    return SHX1_2
  else
    SHX1_2 = GetGameTimer
    SHX1_2 = SHX1_2()
    SHX2_2 = SHX0_2.lastCaptured
    SHX1_2 = SHX1_2 - SHX2_2
    SHX2_2 = 1000
    SHX1_2 = SHX1_2 > SHX2_2
    return SHX1_2
  end
end
function SHX13_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX2_2 = SHX0_2.team
  if "civilian" == SHX2_2 then
    SHX2_2 = SHX12_1
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      goto SHX_LABEL_10
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX2_2 = GetPlayerFromServerId
  SHX3_2 = SHX0_2.source
  SHX2_2 = SHX2_2(SHX3_2)
  if -1 == SHX2_2 then
    return
  end
  SHX3_2 = GetPlayerPed
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if 0 == SHX3_2 then
    return
  end
  SHX4_2 = GetVehiclePedIsUsing
  SHX5_2 = SHX3_2
  SHX4_2 = SHX4_2(SHX5_2)
  if 0 == SHX4_2 then
    return
  end
  SHX5_2 = SHX11_1
  SHX6_2 = SHX4_2
  SHX7_2 = SHX1_2
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
  if not SHX5_2 then
    return
  end
  SHX5_2 = ClearEntityLastDamageEntity
  SHX6_2 = SHX4_2
  SHX5_2(SHX6_2)
  SHX5_2 = ClearEntityLastDamageEntity
  SHX6_2 = SHX1_2
  SHX5_2(SHX6_2)
  SHX5_2 = TriggerServerEvent
  SHX6_2 = "3e5fdec374"
  SHX7_2 = SHX0_2.source
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = GetGameTimer
  SHX5_2 = SHX5_2()
  SHX0_2.lastCaptured = SHX5_2
end
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = pairs
  SHX2_2 = currentEvent
  SHX2_2 = SHX2_2.players
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX13_1
    SHX8_2 = SHX6_2
    SHX9_2 = SHX0_2
    SHX7_2(SHX8_2, SHX9_2)
  end
end
function SHX15_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX2_2 = SHX1_1.countdownScaleform
  if not SHX2_2 then
    SHX2_2 = RequestScaleformMovie
    SHX3_2 = "mp_big_message_freemode"
    SHX2_2 = SHX2_2(SHX3_2)
    SHX1_1.countdownScaleform = SHX2_2
  else
    SHX2_2 = HasScaleformMovieLoaded
    SHX3_2 = SHX1_1.countdownScaleform
    SHX2_2 = SHX2_2(SHX3_2)
    if not SHX2_2 then
      return
    end
  end
  SHX2_2 = SHX0_1.startHunterDelay
  SHX3_2 = math
  SHX3_2 = SHX3_2.floor
  SHX4_2 = SHX1_2 / 1000
  SHX3_2 = SHX3_2(SHX4_2)
  SHX2_2 = SHX2_2 - SHX3_2
  SHX3_2 = BeginScaleformMovieMethod
  SHX4_2 = SHX1_1.countdownScaleform
  SHX5_2 = "SHOW_SHARD_WASTED_MP_MESSAGE"
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SHX0_2.team
  if "hunter" == SHX3_2 then
    SHX3_2 = _ENV
    SHX4_2 = "ScaleformMovieMethodAddParamTextureNameString"
    SHX3_2 = SHX3_2[SHX4_2]
    SHX4_2 = "~r~YOU ARE A HUNTER"
    SHX3_2(SHX4_2)
    SHX3_2 = _ENV
    SHX4_2 = "ScaleformMovieMethodAddParamTextureNameString"
    SHX3_2 = SHX3_2[SHX4_2]
    SHX4_2 = string
    SHX4_2 = SHX4_2.format
    SHX5_2 = "Chase begins in %d seconds"
    SHX6_2 = SHX2_2
    SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX4_2(SHX5_2, SHX6_2)
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  else
    SHX3_2 = _ENV
    SHX4_2 = "ScaleformMovieMethodAddParamTextureNameString"
    SHX3_2 = SHX3_2[SHX4_2]
    SHX4_2 = "~r~GET READY"
    SHX3_2(SHX4_2)
    SHX3_2 = _ENV
    SHX4_2 = "ScaleformMovieMethodAddParamTextureNameString"
    SHX3_2 = SHX3_2[SHX4_2]
    SHX4_2 = string
    SHX4_2 = SHX4_2.format
    SHX5_2 = "Hunters released in %d seconds"
    SHX6_2 = SHX2_2
    SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX4_2(SHX5_2, SHX6_2)
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  end
  SHX3_2 = ScaleformMovieMethodAddParamInt
  SHX4_2 = 7
  SHX3_2(SHX4_2)
  SHX3_2 = EndScaleformMovieMethod
  SHX3_2()
  SHX3_2 = DrawScaleformMovieFullscreen
  SHX4_2 = SHX1_1.countdownScaleform
  SHX5_2 = 255
  SHX6_2 = 255
  SHX7_2 = 255
  SHX8_2 = 255
  SHX9_2 = 0
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
end
function SHX16_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SetScaleformMovieAsNoLongerNeeded
  SHX2_2 = SHX1_1.countdownScaleform
  SHX1_2(SHX2_2)
  SHX1_1.countdownScaleform = nil
  SHX1_2 = SHX0_2.team
  if "civilian" == SHX1_2 then
    SHX1_2 = notify
    SHX2_2 = "The hunters have now been released, be on the lookout!"
    SHX1_2(SHX2_2)
  else
    SHX1_2 = notify
    SHX2_2 = "The chase begins, you can now hunt people down!"
    SHX1_2(SHX2_2)
  end
end
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX0_2.team
  if "civilian" == SHX1_2 then
    SHX1_2 = SHX4_1
    SHX2_2 = "hunter"
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 > 1 then
      SHX1_2 = "hunters"
      if SHX1_2 then
        goto SHX_LABEL_13
      end
    end
    SHX1_2 = "hunter"
    -- [FIX IF ERROR] Move ::SHX_LABEL_13:: outside nested blocks until all 'goto SHX_LABEL_13' can see it
    ::SHX_LABEL_13::
    SHX2_2 = drawNativeText
    SHX3_2 = string
    SHX3_2 = SHX3_2.format
    SHX4_2 = "Escape the ~r~%s~w~"
    SHX5_2 = SHX1_2
    SHX3_2, SHX4_2, SHX5_2 = SHX3_2(SHX4_2, SHX5_2)
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  else
    SHX1_2 = drawNativeText
    SHX2_2 = "You are a ~r~hunter~w~. Hit a player to kill them"
    SHX1_2(SHX2_2)
  end
end
function SHX18_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = math
  SHX1_2 = SHX1_2.floor
  SHX2_2 = SHX0_2 / 60
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 > 0 then
    SHX2_2 = string
    SHX2_2 = SHX2_2.format
    SHX3_2 = "%02d:%02d"
    SHX4_2 = SHX1_2
    SHX5_2 = SHX1_2 * 60
    SHX5_2 = SHX0_2 - SHX5_2
    return SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  else
    SHX2_2 = string
    SHX2_2 = SHX2_2.format
    SHX3_2 = "%02d"
    SHX4_2 = SHX0_2
    return SHX2_2(SHX3_2, SHX4_2)
  end
end
function SHX19_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = SHX1_1.winnerFound
  if SHX1_2 then
    return
  end
  SHX1_2 = SHX2_1.reset
  SHX1_2()
  SHX1_2 = GetGameTimer
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX1_1.startTime
  SHX1_2 = SHX1_2 - SHX2_2
  SHX2_2 = 20000
  if SHX1_2 < SHX2_2 then
    SHX2_2 = SHX15_1
    SHX3_2 = SHX0_2
    SHX4_2 = SHX1_2
    SHX2_2(SHX3_2, SHX4_2)
  else
    SHX2_2 = SHX1_1.countdownScaleform
    if SHX2_2 then
      SHX2_2 = SHX16_1
      SHX3_2 = SHX0_2
      SHX2_2(SHX3_2)
    else
      SHX2_2 = SHX17_1
      SHX3_2 = SHX0_2
      SHX2_2(SHX3_2)
    end
  end
  SHX2_2 = SHX2_1.push
  SHX3_2 = "~b~CIVILIANS~w~"
  SHX4_2 = tostring
  SHX5_2 = SHX4_1
  SHX6_2 = "civilian"
  SHX5_2, SHX6_2 = SHX5_2(SHX6_2)
  SHX4_2, SHX5_2, SHX6_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = SHX2_1.push
  SHX3_2 = "~r~HUNTERS~w~"
  SHX4_2 = tostring
  SHX5_2 = SHX4_1
  SHX6_2 = "hunter"
  SHX5_2, SHX6_2 = SHX5_2(SHX6_2)
  SHX4_2, SHX5_2, SHX6_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = SHX1_1.gameTime
  SHX3_2 = math
  SHX3_2 = SHX3_2.floor
  SHX4_2 = GetGameTimer
  SHX4_2 = SHX4_2()
  SHX5_2 = SHX1_1.startTime
  SHX4_2 = SHX4_2 - SHX5_2
  SHX4_2 = SHX4_2 / 1000
  SHX3_2 = SHX3_2(SHX4_2)
  SHX2_2 = SHX2_2 - SHX3_2
  if SHX2_2 < 0 then
    SHX2_2 = 0
  end
  SHX3_2 = SHX2_1.push
  SHX4_2 = "~y~TIME LEFT~w~"
  SHX5_2 = SHX18_1
  SHX6_2 = SHX2_2
  SHX5_2, SHX6_2 = SHX5_2(SHX6_2)
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = SHX2_1.draw
  SHX3_2()
end
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = table
  SHX0_2 = SHX0_2.count
  SHX1_2 = SHX1_1
  SHX0_2 = SHX0_2(SHX1_2)
  if 0 == SHX0_2 then
    return
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getEventLocalPlayer
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    return
  end
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = GetVehiclePedIsUsing
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if 0 ~= SHX2_2 then
    SHX3_2 = SHX10_1
    SHX4_2 = SHX0_2
    SHX5_2 = SHX2_2
    SHX3_2(SHX4_2, SHX5_2)
  end
  SHX3_2 = SHX9_1
  SHX3_2()
  SHX3_2 = SHX1_1.state
  if "START" == SHX3_2 then
    SHX3_2 = SetPlayerControl
    SHX4_2 = PlayerId
    SHX4_2 = SHX4_2()
    SHX5_2 = true
    SHX6_2 = 0
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    SHX3_2 = SHX19_1
    SHX4_2 = SHX0_2
    SHX3_2(SHX4_2)
    if 0 ~= SHX2_2 then
      SHX3_2 = SHX14_1
      SHX4_2 = SHX2_2
      SHX3_2(SHX4_2)
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
  
  local SHX0_2, SHX1_2, SHX2_2
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
  SHX0_2 = SHX0_2.setPlayerCanOpenLeaderboard
  SHX1_2 = false
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.cleanupRockstarMaps
  SHX0_2()
  SHX0_2 = TriggerMusicEvent
  SHX1_2 = "BST_STOP"
  SHX0_2(SHX1_2)
  SHX0_2 = {}
  SHX1_1 = SHX0_2
end
SHX22_1 = Citizen
SHX22_1 = SHX22_1.CreateThread
function SHX23_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = "Manhunt"
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.registerMinigameCleanupHandler
  SHX2_2 = SHX0_2
  SHX3_2 = SHX21_1
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.createThreadOnTick
  SHX2_2 = SHX20_1
  SHX3_2 = "Manhunt"
  SHX1_2(SHX2_2, SHX3_2)
end
SHX22_1(SHX23_1)
