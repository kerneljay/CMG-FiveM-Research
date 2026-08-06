-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/events/cfg_oneinchamber"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = nil
SHX2_1 = "xs_arena_interior"
SHX3_1 = vector3
SHX4_1 = 2800.0
SHX5_1 = -3800.0
SHX6_1 = 100.0
SHX3_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1)
SHX4_1 = 30000
SHX5_1 = 10000
SHX6_1 = 200
SHX7_1 = 103
SHX8_1 = false
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = SHX8_1
  if SHX0_2 then
    SHX0_2 = true
    return SHX0_2
  end
  SHX0_2 = RequestIpl
  SHX1_2 = SHX2_1
  SHX0_2(SHX1_2)
  SHX0_2 = GetGameTimer
  SHX0_2 = SHX0_2()
  while true do
    SHX1_2 = IsIplActive
    SHX2_2 = SHX2_1
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      break
    end
    SHX1_2 = GetGameTimer
    SHX1_2 = SHX1_2()
    SHX1_2 = SHX1_2 - SHX0_2
    SHX2_2 = SHX4_1
    if SHX1_2 >= SHX2_2 then
      SHX1_2 = false
      return SHX1_2
    end
    SHX1_2 = Wait
    SHX2_2 = 100
    SHX1_2(SHX2_2)
  end
  SHX1_2 = GetInteriorAtCoords
  SHX2_2 = SHX3_1.x
  SHX3_2 = SHX3_1.y
  SHX4_2 = SHX3_1.z
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  if 0 == SHX1_2 then
    SHX2_2 = false
    return SHX2_2
  end
  SHX2_2 = PinInteriorInMemory
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
  SHX2_2 = EnableInteriorProp
  SHX3_2 = SHX1_2
  SHX4_2 = "Set_Crowd_A"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = EnableInteriorProp
  SHX3_2 = SHX1_2
  SHX4_2 = "Set_Crowd_B"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = EnableInteriorProp
  SHX3_2 = SHX1_2
  SHX4_2 = "Set_Crowd_C"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = EnableInteriorProp
  SHX3_2 = SHX1_2
  SHX4_2 = "Set_Crowd_D"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = EnableInteriorProp
  SHX3_2 = SHX1_2
  SHX4_2 = "Set_Dystopian_Scene"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = EnableInteriorProp
  SHX3_2 = SHX1_2
  SHX4_2 = "Set_Dystopian_12"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = RefreshInterior
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
  SHX2_2 = true
  SHX8_1 = SHX2_2
  SHX2_2 = true
  return SHX2_2
end
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = RequestCollisionAtCoord
  SHX2_2 = SHX0_2.x
  SHX3_2 = SHX0_2.y
  SHX4_2 = SHX0_2.z
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = NewLoadSceneStartSphere
  SHX2_2 = SHX0_2.x
  SHX3_2 = SHX0_2.y
  SHX4_2 = SHX0_2.z
  SHX5_2 = 100.0
  SHX6_2 = 0
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX1_2 = GetGameTimer
  SHX1_2 = SHX1_2()
  while true do
    SHX2_2 = IsNewLoadSceneLoaded
    SHX2_2 = SHX2_2()
    if SHX2_2 then
      break
    end
    SHX2_2 = GetGameTimer
    SHX2_2 = SHX2_2()
    SHX2_2 = SHX2_2 - SHX1_2
    SHX3_2 = SHX5_1
    if SHX2_2 >= SHX3_2 then
      break
    end
    SHX2_2 = Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
  SHX2_2 = GetGameTimer
  SHX2_2 = SHX2_2()
  while true do
    SHX3_2 = HaveAllStreamingRequestsCompleted
    SHX4_2 = PlayerPedId
    SHX4_2, SHX5_2, SHX6_2 = SHX4_2()
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    if SHX3_2 then
      SHX3_2 = GetNumberOfStreamingRequests
      SHX3_2 = SHX3_2()
      if not (SHX3_2 > 0) then
        break
      end
    end
    SHX3_2 = GetGameTimer
    SHX3_2 = SHX3_2()
    SHX3_2 = SHX3_2 - SHX2_2
    SHX4_2 = SHX5_1
    if SHX3_2 >= SHX4_2 then
      break
    end
    SHX3_2 = Wait
    SHX4_2 = 0
    SHX3_2(SHX4_2)
  end
  SHX3_2 = NewLoadSceneStop
  SHX3_2()
end
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerCoords
  SHX0_2 = SHX0_2()
  SHX1_2 = pairs
  SHX2_2 = GetGamePool
  SHX3_2 = "CObject"
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX2_2(SHX3_2)
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = GetEntityCoords
    SHX8_2 = SHX6_2
    SHX7_2 = SHX7_2(SHX8_2)
    SHX8_2 = SHX0_2 - SHX7_2
    SHX8_2 = #SHX8_2
    if SHX8_2 < 5.0 then
      SHX8_2 = FreezeEntityPosition
      SHX9_2 = SHX6_2
      SHX10_2 = true
      SHX8_2(SHX9_2, SHX10_2)
    end
  end
end
function SHX12_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX1_2 = SHX0_2.timers
  SHX1_2 = SHX1_2.push
  SHX2_2 = "~y~PLAYERS"
  SHX3_2 = tostring
  SHX4_2 = currentEvent
  SHX4_2 = SHX4_2.players
  SHX4_2 = #SHX4_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX3_2(SHX4_2)
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX1_2 = SHX11_1
  SHX1_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getLocalPlayerSrc
  SHX1_2 = SHX1_2()
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getClientEventData
  SHX3_2 = "OneInChamberClientData"
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = pairs
  SHX4_2 = SHX2_2.players
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = SHX8_2.source
    if SHX9_2 == SHX1_2 then
      SHX9_2 = SHX0_2.timers
      SHX9_2 = SHX9_2.push
      SHX10_2 = "~r~ATTEMPTS"
      SHX11_2 = tostring
      SHX12_2 = SHX8_2.data
      SHX12_2 = SHX12_2.numAttempts
      SHX11_2, SHX12_2 = SHX11_2(SHX12_2)
      SHX9_2(SHX10_2, SHX11_2, SHX12_2)
      SHX9_2 = SHX0_2.timers
      SHX9_2 = SHX9_2.push
      SHX10_2 = "~r~KILLS"
      SHX11_2 = tostring
      SHX12_2 = SHX8_2.data
      SHX12_2 = SHX12_2.numKills
      SHX11_2, SHX12_2 = SHX11_2(SHX12_2)
      SHX9_2(SHX10_2, SHX11_2, SHX12_2)
    end
  end
  SHX3_2 = SHX0_2.killerPlayerSrc
  if not SHX3_2 then
    SHX3_2 = drawNativeText
    SHX4_2 = "Waiting to select the first player."
    SHX3_2(SHX4_2)
    return
  end
  SHX3_2 = SHX0_2.killerPlayerSrc
  if SHX3_2 == SHX1_2 then
    SHX3_2 = drawNativeText
    SHX4_2 = "~y~You~w~ have the gun! Attempt to kill a ~r~target~w~."
    SHX3_2(SHX4_2)
  else
    SHX3_2 = GetPlayerFromServerId
    SHX4_2 = SHX0_2.killerPlayerSrc
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 >= 0 then
      SHX4_2 = drawNativeText
      SHX5_2 = string
      SHX5_2 = SHX5_2.format
      SHX6_2 = "~y~%s~w~ has the gun!"
      SHX7_2 = CMG
      SHX7_2 = SHX7_2.getPlayerName
      SHX8_2 = SHX3_2
      SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX7_2(SHX8_2)
      SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    end
  end
  SHX3_2 = GetNetworkTime
  SHX3_2 = SHX3_2()
  SHX4_2 = SHX0_2.lastUpdatedKiller
  SHX3_2 = SHX3_2 - SHX4_2
  SHX4_2 = math
  SHX4_2 = SHX4_2.max
  SHX5_2 = SHX0_1.delayBetweenGunMsec
  SHX5_2 = SHX5_2 - SHX3_2
  SHX6_2 = 0
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX5_2 = SHX0_2.timers
  SHX5_2 = SHX5_2.push
  SHX6_2 = "NEXT ROUND"
  SHX7_2 = tostring
  SHX8_2 = math
  SHX8_2 = SHX8_2.rounddp
  SHX9_2 = SHX4_2 / 1000.0
  SHX10_2 = 1
  SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX8_2(SHX9_2, SHX10_2)
  SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
end
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX1_1
  if SHX0_2 then
    SHX0_2 = SHX1_1.timers
    SHX0_2 = SHX0_2.reset
    SHX0_2()
    SHX0_2 = SHX12_1
    SHX1_2 = SHX1_1
    SHX0_2(SHX1_2)
    SHX0_2 = SHX1_1.timers
    SHX0_2 = SHX0_2.draw
    SHX0_2()
    return
  end
end
SHX14_1 = RegisterNetEvent
SHX15_1 = "26fd108ba4"
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.stopEventSequence
  SHX0_2()
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setPlayerCanOpenLeaderboard
  SHX1_2 = true
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getClientEventData
  SHX1_2 = "OneInChamberClientData"
  SHX0_2 = SHX0_2(SHX1_2)
  SHX1_2 = pairs
  SHX2_2 = SHX0_2.players
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.data
    SHX7_2.numKills = 0
    SHX7_2 = SHX6_2.data
    SHX7_2.numAttempts = 0
  end
  SHX1_2 = SHX9_1
  SHX1_2()
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = GetEntityCoords
  SHX3_2 = SHX1_2
  SHX4_2 = true
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = SHX10_1
  SHX4_2 = vector4
  SHX5_2 = SHX2_2.x
  SHX6_2 = SHX2_2.y
  SHX7_2 = SHX2_2.z
  SHX8_2 = 0.0
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX3_2 = SetEntityHealth
  SHX4_2 = SHX1_2
  SHX5_2 = SHX6_1
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = FreezeEntityPosition
  SHX4_2 = SHX1_2
  SHX5_2 = true
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SetLocalPlayerAsGhost
  SHX4_2 = true
  SHX3_2(SHX4_2)
  SHX3_2 = SetEntityAlpha
  SHX4_2 = SHX1_2
  SHX5_2 = 155
  SHX6_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = PlaySoundFrontend
  SHX4_2 = -1
  SHX5_2 = "5s"
  SHX6_2 = "MP_MISSION_COUNTDOWN_SOUNDSET"
  SHX7_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX3_2 = TriggerEvent
  SHX4_2 = "b3cbc4aca5"
  SHX5_2 = math
  SHX5_2 = SHX5_2.floor
  SHX6_2 = SHX0_1.startCountdownMsec
  SHX6_2 = SHX6_2 / 1000
  SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX3_2 = GetGameTimer
  SHX3_2 = SHX3_2()
  while true do
    SHX4_2 = GetGameTimer
    SHX4_2 = SHX4_2()
    SHX4_2 = SHX4_2 - SHX3_2
    SHX5_2 = SHX0_1.startCountdownMsec
    if not (SHX4_2 < SHX5_2) then
      break
    end
    SHX4_2 = SHX1_1
    if not SHX4_2 then
      return
    end
    SHX4_2 = Wait
    SHX5_2 = 0
    SHX4_2(SHX5_2)
  end
  SHX4_2 = SetEntityHealth
  SHX5_2 = SHX1_2
  SHX6_2 = SHX7_1
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = FreezeEntityPosition
  SHX5_2 = SHX1_2
  SHX6_2 = false
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SetLocalPlayerAsGhost
  SHX5_2 = false
  SHX4_2(SHX5_2)
  SHX4_2 = ResetEntityAlpha
  SHX5_2 = SHX1_2
  SHX4_2(SHX5_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.createThreadOnTick
  SHX5_2 = SHX13_1
  SHX6_2 = "One In The Chamber"
  SHX4_2(SHX5_2, SHX6_2)
end
SHX14_1(SHX15_1, SHX16_1)
SHX14_1 = RegisterNetEvent
SHX15_1 = "0fc9717b90"
function SHX16_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = CreateThread
  function SHX3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3
    SHX0_3 = SHX0_1.locations
    SHX1_3 = SHX0_2
    SHX0_3 = SHX0_3[SHX1_3]
    if not SHX0_3 then
      return
    end
    SHX1_3 = SHX0_3.spawnpoints
    SHX2_3 = SHX1_2
    SHX1_3 = SHX1_3[SHX2_3]
    if not SHX1_3 then
      return
    end
    SHX1_3 = CMG
    SHX1_3 = SHX1_3.enableMinigamePlayerBlips
    SHX2_3 = true
    SHX1_3(SHX2_3)
    SHX1_3 = CMG
    SHX1_3 = SHX1_3.enableMinigamePlayerTags
    SHX2_3 = true
    SHX3_3 = false
    SHX1_3(SHX2_3, SHX3_3)
    SHX1_3 = CMG
    SHX1_3 = SHX1_3.setMinigameBounds
    SHX2_3 = {}
    SHX3_3 = {}
    SHX4_3 = SHX0_3.bounds
    SHX4_3 = SHX4_3.min
    SHX5_3 = SHX0_3.bounds
    SHX5_3 = SHX5_3.max
    SHX3_3[1] = SHX4_3
    SHX3_3[2] = SHX5_3
    SHX2_3[1] = SHX3_3
    SHX1_3(SHX2_3)
    SHX1_3 = CMG
    SHX1_3 = SHX1_3.setSwitchGunEnabled
    SHX2_3 = false
    SHX1_3(SHX2_3)
    SHX1_3 = SHX9_1
    SHX1_3()
    SHX1_3 = PlayerPedId
    SHX1_3 = SHX1_3()
    SHX2_3 = SHX0_3.spawnpoints
    SHX3_3 = SHX1_2
    SHX2_3 = SHX2_3[SHX3_3]
    SHX3_3 = SHX10_1
    SHX4_3 = SHX2_3
    SHX3_3(SHX4_3)
    SHX3_3 = SetEntityCoordsNoOffset
    SHX4_3 = SHX1_3
    SHX5_3 = SHX2_3.x
    SHX6_3 = SHX2_3.y
    SHX7_3 = SHX2_3.z
    SHX8_3 = true
    SHX9_3 = false
    SHX10_3 = false
    SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3)
    SHX3_3 = SetEntityHeading
    SHX4_3 = SHX1_3
    SHX5_3 = SHX2_3.w
    SHX3_3(SHX4_3, SHX5_3)
    SHX3_3 = SetEntityHealth
    SHX4_3 = SHX1_3
    SHX5_3 = SHX6_1
    SHX3_3(SHX4_3, SHX5_3)
    SHX3_3 = FreezeEntityPosition
    SHX4_3 = SHX1_3
    SHX5_3 = true
    SHX3_3(SHX4_3, SHX5_3)
    SHX3_3 = {}
    SHX3_3.killerPlayerSrc = nil
    SHX3_3.lastUpdatedKiller = 0
    SHX4_3 = CMG
    SHX4_3 = SHX4_3.createTimerBars
    SHX4_3 = SHX4_3()
    SHX3_3.timers = SHX4_3
    SHX1_1 = SHX3_3
    SHX3_3 = currentEvent
    SHX3_3.drawPlayersTimeBar = false
  end
  SHX2_2(SHX3_2)
end
SHX14_1(SHX15_1, SHX16_1)
SHX14_1 = RegisterNetEvent
SHX15_1 = "bee9494620"
function SHX16_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX1_1
  if SHX2_2 then
    SHX1_1.killerPlayerSrc = SHX0_2
    SHX1_1.lastUpdatedKiller = SHX1_2
  end
end
SHX14_1(SHX15_1, SHX16_1)
SHX14_1 = CMG
SHX14_1 = SHX14_1.registerMinigameCleanupHandler
SHX15_1 = SHX0_1.minigameName
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.deleteThreadOnTick
  SHX1_2 = SHX13_1
  SHX0_2(SHX1_2)
  SHX0_2 = false
  SHX8_1 = SHX0_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = SetLocalPlayerAsGhost
  SHX2_2 = false
  SHX1_2(SHX2_2)
  SHX1_2 = ResetEntityAlpha
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = FreezeEntityPosition
  SHX2_2 = SHX0_2
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.enableMinigamePlayerBlips
  SHX2_2 = false
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.enableMinigamePlayerTags
  SHX2_2 = false
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.clearMinigameBounds
  SHX1_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.setSwitchGunEnabled
  SHX2_2 = true
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.setPlayerCanOpenLeaderboard
  SHX2_2 = false
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.stopEventSequence
  SHX1_2()
end
SHX14_1(SHX15_1, SHX16_1)
SHX14_1 = RegisterNetEvent
SHX15_1 = "80947f33ff"
function SHX16_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getClientEventData
  SHX3_2 = "OneInChamberClientData"
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
SHX14_1(SHX15_1, SHX16_1)
SHX14_1 = RegisterNetEvent
SHX15_1 = "9209f7b849"
function SHX16_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getClientEventData
  SHX3_2 = "OneInChamberClientData"
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = pairs
  SHX4_2 = SHX2_2.players
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = SHX8_2.source
    if SHX9_2 == SHX0_2 then
      SHX9_2 = SHX8_2.data
      SHX9_2.numAttempts = SHX1_2
      break
    end
  end
end
SHX14_1(SHX15_1, SHX16_1)
SHX14_1 = RegisterNetEvent
SHX15_1 = "3836478e4b"
function SHX16_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
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
SHX14_1(SHX15_1, SHX16_1)
