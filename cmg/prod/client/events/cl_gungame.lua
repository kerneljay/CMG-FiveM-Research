-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/events/cfg_gg"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = {}
SHX2_1 = 1
SHX3_1 = 0
SHX4_1 = AddRelationshipGroup
SHX5_1 = "GG_FFA"
SHX4_1, SHX5_1 = SHX4_1(SHX5_1)
SHX6_1 = CMG
SHX6_1 = SHX6_1.registerHudTimerBarProvider
SHX7_1 = "gungame"
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX1_1.state
  if "started" ~= SHX1_2 then
    return
  end
  SHX1_2 = SHX0_2.push
  SHX2_2 = "~b~WEAPON TIER~w~"
  SHX3_2 = SHX2_1
  SHX4_2 = "/10"
  SHX3_2 = SHX3_2 .. SHX4_2
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SHX0_2.push
  SHX2_2 = "~b~PROGRESS~w~"
  SHX3_2 = SHX3_1
  SHX4_2 = "/2"
  SHX3_2 = SHX3_2 .. SHX4_2
  SHX1_2(SHX2_2, SHX3_2)
end
SHX6_1(SHX7_1, SHX8_1)
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = math
  SHX0_2 = SHX0_2.random
  SHX1_2 = 1
  SHX2_2 = 5
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  SHX1_2 = string
  SHX1_2 = SHX1_2.char
  SHX2_2 = 96 + SHX0_2
  return SHX1_2(SHX2_2)
end
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = #SHX0_2
  if SHX1_2 > 0 then
    SHX1_2 = CreateThread
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3
      while true do
        SHX0_3 = SHX1_1.pickups
        if not SHX0_3 then
          break
        end
        SHX0_3 = SHX1_1.state
        if "ended" == SHX0_3 then
          break
        end
        SHX0_3 = pairs
        SHX1_3 = SHX1_1.pickups
        SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
        for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
          SHX6_3 = CMG
          SHX6_3 = SHX6_3.deletePickup
          SHX7_3 = SHX5_3
          SHX6_3(SHX7_3)
        end
        SHX0_3 = {}
        SHX1_1.pickups = SHX0_3
        SHX0_3 = pairs
        SHX1_3 = SHX0_2
        SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
        for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
          SHX6_3 = table
          SHX6_3 = SHX6_3.insert
          SHX7_3 = SHX1_1.pickups
          SHX8_3 = CMG
          SHX8_3 = SHX8_3.createPickup
          SHX9_3 = SHX5_3.hash
          SHX10_3 = SHX5_3.position
          SHX8_3, SHX9_3, SHX10_3 = SHX8_3(SHX9_3, SHX10_3)
          SHX6_3(SHX7_3, SHX8_3, SHX9_3, SHX10_3)
        end
        SHX0_3 = Wait
        SHX1_3 = 60000
        SHX0_3(SHX1_3)
      end
    end
    SHX1_2(SHX2_2)
  end
end
SHX8_1 = RegisterNetEvent
SHX9_1 = "7892140796"
function SHX10_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX1_1.state = "loading"
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.loadClientRockstarMap
  SHX6_2 = SHX1_2
  SHX7_2 = false
  SHX5_2(SHX6_2, SHX7_2)
  SHX1_1.name = SHX0_2
  SHX5_2 = {}
  SHX1_1.pickups = SHX5_2
  SHX5_2 = PlayerPedId
  SHX5_2 = SHX5_2()
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.setEventRespawnPosition
  SHX7_2 = SHX2_2
  SHX6_2(SHX7_2)
  SHX6_2 = SetEntityCoordsNoOffset
  SHX7_2 = SHX5_2
  SHX8_2 = SHX2_2.x
  SHX9_2 = SHX2_2.y
  SHX10_2 = SHX2_2.z
  SHX11_2 = true
  SHX12_2 = false
  SHX13_2 = false
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX6_2 = SetEntityHeading
  SHX7_2 = SHX5_2
  SHX8_2 = SHX2_2.w
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = FreezeEntityPosition
  SHX7_2 = SHX5_2
  SHX8_2 = true
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = SHX7_1
  SHX7_2 = SHX3_2
  SHX6_2(SHX7_2)
  if SHX4_2 then
    SHX6_2 = TriggerEvent
    SHX7_2 = "9d8183a5b9"
    SHX6_2(SHX7_2)
    return
  end
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = RegisterNetEvent
SHX9_1 = "9d8183a5b9"
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2 = SetLocalPlayerAsGhost
  SHX1_2 = true
  SHX0_2(SHX1_2)
  SHX0_2 = SetEntityAlpha
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = 155
  SHX3_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = SetPedRelationshipGroupHash
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX5_1
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetRelationshipBetweenGroups
  SHX1_2 = 5
  SHX2_2 = SHX5_1
  SHX3_2 = SHX5_1
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.loadAnimDict
  SHX1_2 = "mini@triathlon"
  SHX0_2(SHX1_2)
  SHX0_2 = TaskPlayAnim
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = "mini@triathlon"
  SHX3_2 = "idle_"
  SHX4_2 = SHX6_1
  SHX4_2 = SHX4_2()
  SHX3_2 = SHX3_2 .. SHX4_2
  SHX4_2 = 8.0
  SHX5_2 = 8.0
  SHX6_2 = -1
  SHX7_2 = 1
  SHX8_2 = 0.2
  SHX9_2 = false
  SHX10_2 = false
  SHX11_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setPlayerCanOpenLeaderboard
  SHX1_2 = true
  SHX0_2(SHX1_2)
  SHX0_2 = SetEntityHealth
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = 200
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = BusyspinnerOff
  SHX0_2()
  SHX0_2 = PlaySoundFrontend
  SHX1_2 = -1
  SHX2_2 = "5s"
  SHX3_2 = "MP_MISSION_COUNTDOWN_SOUNDSET"
  SHX4_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = TriggerEvent
  SHX1_2 = "b3cbc4aca5"
  SHX2_2 = 5
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setSwitchGunEnabled
  SHX1_2 = false
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.stopEventSequence
  SHX0_2()
  SHX0_2 = currentEvent
  SHX0_2.drawPlayersTimeBar = false
  SHX0_2 = GetGameTimer
  SHX0_2 = SHX0_2()
  while true do
    SHX1_2 = GetGameTimer
    SHX1_2 = SHX1_2()
    SHX1_2 = SHX1_2 - SHX0_2
    SHX2_2 = 5000
    if not (SHX1_2 < SHX2_2) then
      break
    end
    SHX1_2 = next
    SHX2_2 = SHX1_1
    SHX1_2 = SHX1_2(SHX2_2)
    if not SHX1_2 then
      SHX1_2 = ClearPedTasks
      SHX2_2 = PlayerPedId
      SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX2_2()
      SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
      SHX1_2 = SetCamActive
      SHX2_2 = SHX1_1.camera
      SHX3_2 = false
      SHX1_2(SHX2_2, SHX3_2)
      SHX1_2 = RenderScriptCams
      SHX2_2 = false
      SHX3_2 = false
      SHX4_2 = 0
      SHX5_2 = false
      SHX6_2 = false
      SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      SHX1_2 = DestroyCam
      SHX2_2 = SHX1_1.camera
      SHX3_2 = false
      SHX1_2(SHX2_2, SHX3_2)
      SHX1_2 = DestroyCam
      SHX2_2 = SHX1_1.camera2
      SHX3_2 = false
      SHX1_2(SHX2_2, SHX3_2)
      SHX1_2 = PlayerPedId
      SHX1_2 = SHX1_2()
      SHX2_2 = FreezeEntityPosition
      SHX3_2 = SHX1_2
      SHX4_2 = false
      SHX2_2(SHX3_2, SHX4_2)
      return
    end
    SHX1_2 = Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
  end
  SHX1_1.state = "started"
  SHX1_2 = ClearPedTasks
  SHX2_2 = PlayerPedId
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX2_2()
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX1_2 = SetCamActive
  SHX2_2 = SHX1_1.camera
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = RenderScriptCams
  SHX2_2 = false
  SHX3_2 = false
  SHX4_2 = 0
  SHX5_2 = false
  SHX6_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX1_2 = DestroyCam
  SHX2_2 = SHX1_1.camera
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = DestroyCam
  SHX2_2 = SHX1_1.camera2
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.enableMinigamePlayerBlips
  SHX2_2 = true
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.enableMinigamePlayerTags
  SHX2_2 = true
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.setMinigameBounds
  SHX2_2 = SHX0_1.locations
  SHX3_2 = SHX1_1.name
  SHX2_2 = SHX2_2[SHX3_2]
  SHX2_2 = SHX2_2.bounds
  SHX1_2(SHX2_2)
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = FreezeEntityPosition
  SHX3_2 = SHX1_2
  SHX4_2 = false
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetTimeout
  SHX3_2 = 3000
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = SetLocalPlayerAsGhost
    SHX1_3 = false
    SHX0_3(SHX1_3)
    SHX0_3 = ResetEntityAlpha
    SHX1_3 = PlayerPedId
    SHX1_3 = SHX1_3()
    SHX0_3(SHX1_3)
  end
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.setHudTimerBarProviderActive
  SHX3_2 = "gungame"
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
  while true do
    SHX2_2 = SHX1_1.state
    if "started" ~= SHX2_2 then
      break
    end
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.disableMeleeControls
    SHX2_2()
    SHX2_2 = DisableFirstPersonCamThisFrame
    SHX2_2()
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.setHudTimerBarProviderActive
  SHX3_2 = "gungame"
  SHX4_2 = false
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.setEventRespawnPosition
  SHX2_2()
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = Citizen
SHX8_1 = SHX8_1.CreateThread
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = "Gungame"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.setSwitchGunEnabled
    SHX1_3 = true
    SHX0_3(SHX1_3)
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.enableMinigamePlayerBlips
    SHX1_3 = false
    SHX0_3(SHX1_3)
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.cleanupRockstarMaps
    SHX0_3()
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.clearAllPickups
    SHX0_3()
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.setEventRespawnPosition
    SHX0_3()
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.clearMinigameBounds
    SHX0_3()
    SHX0_3 = RemoveAllPedWeapons
    SHX1_3 = PlayerPedId
    SHX1_3 = SHX1_3()
    SHX2_3 = false
    SHX0_3(SHX1_3, SHX2_3)
    SHX0_3 = BusyspinnerOff
    SHX0_3()
    SHX0_3 = SetPlayerControl
    SHX1_3 = PlayerId
    SHX1_3 = SHX1_3()
    SHX2_3 = true
    SHX3_3 = 0
    SHX0_3(SHX1_3, SHX2_3, SHX3_3)
    SHX0_3 = SetRelationshipBetweenGroups
    SHX1_3 = 0
    SHX2_3 = SHX5_1
    SHX3_3 = SHX5_1
    SHX0_3(SHX1_3, SHX2_3, SHX3_3)
    SHX0_3 = SetPedRelationshipGroupHash
    SHX1_3 = PlayerPedId
    SHX1_3 = SHX1_3()
    SHX2_3 = 1862763509
    SHX0_3(SHX1_3, SHX2_3)
    SHX0_3 = SHX1_1.pickups
    if SHX0_3 then
      SHX0_3 = pairs
      SHX1_3 = SHX1_1.pickups
      SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
      for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
        SHX6_3 = CMG
        SHX6_3 = SHX6_3.deletePickup
        SHX7_3 = SHX5_3
        SHX6_3(SHX7_3)
      end
    end
    SHX0_3 = 1
    SHX2_1 = SHX0_3
    SHX0_3 = 0
    SHX3_1 = SHX0_3
    SHX0_3 = {}
    SHX1_1 = SHX0_3
  end
  SHX1_2(SHX2_2, SHX3_2)
end
SHX8_1(SHX9_1)
SHX8_1 = RegisterNetEvent
SHX9_1 = "9aa187d545"
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX1_1.state = "waiting"
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.enableMinigamePlayerBlips
  SHX1_2 = false
  SHX0_2(SHX1_2)
  SHX0_2 = RemoveAllPedWeapons
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = RegisterNetEvent
SHX9_1 = "aaefc4fa92"
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CreateThread
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3
    SHX0_3 = SetSpecialAbility
    SHX1_3 = PlayerId
    SHX1_3 = SHX1_3()
    SHX2_3 = 2
    SHX0_3(SHX1_3, SHX2_3)
    SHX0_3 = SpecialAbilityActivate
    SHX1_3 = PlayerId
    SHX1_3, SHX2_3 = SHX1_3()
    SHX0_3(SHX1_3, SHX2_3)
    SHX0_3 = Wait
    SHX1_3 = 10000
    SHX0_3(SHX1_3)
    SHX0_3 = SetSpecialAbility
    SHX1_3 = PlayerId
    SHX1_3 = SHX1_3()
    SHX2_3 = 3
    SHX0_3(SHX1_3, SHX2_3)
    SHX0_3 = SpecialAbilityActivate
    SHX1_3 = PlayerId
    SHX1_3, SHX2_3 = SHX1_3()
    SHX0_3(SHX1_3, SHX2_3)
  end
  SHX0_2(SHX1_2)
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = RegisterNetEvent
SHX9_1 = "c58a0272ff"
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = PlaySoundFrontend
  SHX1_2 = -1
  SHX2_2 = "Weapon_Upgrade"
  SHX3_2 = "DLC_GR_Weapon_Upgrade_Soundset"
  SHX4_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.announceMpBigMsg
  SHX1_2 = "~y~WEAPON UPGRADE"
  SHX2_2 = ""
  SHX3_2 = 1000
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = 0
  SHX3_1 = SHX0_2
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = AddEventHandler
SHX9_1 = "5dac3d7c66"
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX1_1.state
  if "started" == SHX0_2 then
    SHX0_2 = SetLocalPlayerAsGhost
    SHX1_2 = true
    SHX0_2(SHX1_2)
    SHX0_2 = Wait
    SHX1_2 = 4000
    SHX0_2(SHX1_2)
    SHX0_2 = IsPedArmed
    SHX1_2 = PlayerPedId
    SHX1_2 = SHX1_2()
    SHX2_2 = 5
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if not SHX0_2 then
      SHX0_2 = TriggerServerEvent
      SHX1_2 = "dfc4f9e64d"
      SHX0_2(SHX1_2)
    end
    SHX0_2 = Wait
    SHX1_2 = 1000
    SHX0_2(SHX1_2)
    SHX0_2 = SetLocalPlayerAsGhost
    SHX1_2 = false
    SHX0_2(SHX1_2)
    SHX0_2 = ResetGhostedEntityAlpha
    SHX0_2()
  end
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = RegisterNetEvent
SHX9_1 = "f38733e8a1"
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX2_1 = SHX0_2
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = RegisterNetEvent
SHX9_1 = "985340403d"
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX3_1
  SHX0_2 = SHX0_2 + 1
  SHX3_1 = SHX0_2
end
SHX8_1(SHX9_1, SHX10_1)
