-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/events/cfg_ffa"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = {}
SHX2_1 = {}
SHX3_1 = AddRelationshipGroup
SHX4_1 = "FFA_FFA"
SHX3_1, SHX4_1 = SHX3_1(SHX4_1)
function SHX5_1()
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
SHX6_1 = Citizen
SHX6_1 = SHX6_1.CreateThread
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = "FFA"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3
    SHX1_1.state = "ended"
    SHX0_3 = {}
    SHX2_1 = SHX0_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.setSwitchGunEnabled
    SHX1_3 = true
    SHX0_3(SHX1_3)
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.cleanupRockstarMaps
    SHX0_3()
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.enableMinigamePlayerBlips
    SHX1_3 = false
    SHX0_3(SHX1_3)
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.clearAllPickups
    SHX0_3()
    SHX0_3 = SetRelationshipBetweenGroups
    SHX1_3 = 0
    SHX2_3 = SHX4_1
    SHX3_3 = SHX4_1
    SHX0_3(SHX1_3, SHX2_3, SHX3_3)
    SHX0_3 = SetPedRelationshipGroupHash
    SHX1_3 = PlayerPedId
    SHX1_3 = SHX1_3()
    SHX2_3 = 1862763509
    SHX0_3(SHX1_3, SHX2_3)
    SHX0_3 = SetLocalPlayerAsGhost
    SHX1_3 = false
    SHX0_3(SHX1_3)
    SHX0_3 = ResetGhostedEntityAlpha
    SHX0_3()
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.setEventRespawnPosition
    SHX0_3()
    SHX0_3 = BusyspinnerOff
    SHX0_3()
    SHX0_3 = SetPlayerControl
    SHX1_3 = PlayerId
    SHX1_3 = SHX1_3()
    SHX2_3 = true
    SHX3_3 = 0
    SHX0_3(SHX1_3, SHX2_3, SHX3_3)
  end
  SHX1_2(SHX2_2, SHX3_2)
end
SHX6_1(SHX7_1)
function SHX6_1(SHX0_2)
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
SHX7_1 = RegisterNetEvent
SHX8_1 = "1215413e36"
function SHX9_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX1_1.mapname = SHX0_2
  SHX1_1.state = "loading"
  SHX1_1.spawn = SHX2_2
  SHX1_1.singleWeaponMode = SHX5_2
  SHX7_2 = false
  SHX8_2 = SetTimeout
  SHX9_2 = 1000
  function SHX10_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = true
    SHX7_2 = SHX0_3
  end
  SHX8_2(SHX9_2, SHX10_2)
  if SHX1_2 then
    SHX8_2 = CMG
    SHX8_2 = SHX8_2.loadClientRockstarMap
    SHX9_2 = SHX1_2
    SHX10_2 = false
    SHX8_2(SHX9_2, SHX10_2)
  end
  SHX8_2 = PlayerPedId
  SHX8_2 = SHX8_2()
  SHX9_2 = CMG
  SHX9_2 = SHX9_2.setEventRespawnPosition
  SHX10_2 = SHX2_2
  SHX9_2(SHX10_2)
  SHX9_2 = SetEntityCoordsNoOffset
  SHX10_2 = SHX8_2
  SHX11_2 = SHX2_2.x
  SHX12_2 = SHX2_2.y
  SHX13_2 = SHX2_2.z
  SHX14_2 = true
  SHX15_2 = false
  SHX16_2 = false
  SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX9_2 = SetEntityHeading
  SHX10_2 = SHX8_2
  SHX11_2 = SHX2_2.w
  SHX9_2(SHX10_2, SHX11_2)
  SHX9_2 = FreezeEntityPosition
  SHX10_2 = SHX8_2
  SHX11_2 = true
  SHX9_2(SHX10_2, SHX11_2)
  SHX1_1.bounds = SHX3_2
  SHX9_2 = CMG
  SHX9_2 = SHX9_2.setMinigameBounds
  SHX10_2 = SHX3_2
  SHX9_2(SHX10_2)
  SHX9_2 = {}
  SHX1_1.pickups = SHX9_2
  SHX9_2 = SHX6_1
  SHX10_2 = SHX4_2
  SHX9_2(SHX10_2)
  if SHX6_2 then
    SHX9_2 = TriggerEvent
    SHX10_2 = "0b650ac58b"
    SHX9_2(SHX10_2)
    return
  end
  while not SHX7_2 do
    SHX9_2 = Wait
    SHX10_2 = 0
    SHX9_2(SHX10_2)
  end
end
SHX7_1(SHX8_1, SHX9_1)
SHX7_1 = RegisterNetEvent
SHX8_1 = "0b650ac58b"
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX0_2 = SetLocalPlayerAsGhost
  SHX1_2 = true
  SHX0_2(SHX1_2)
  SHX0_2 = SetEntityAlpha
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = 155
  SHX3_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setSwitchGunEnabled
  SHX1_2 = false
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.stopEventSequence
  SHX0_2()
  SHX0_2 = currentEvent
  SHX0_2.drawPlayersTimeBar = false
  SHX1_1.state = "choosingcharacter"
  SHX0_2 = BusyspinnerOff
  SHX0_2()
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = GetEntityMatrix
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  SHX5_2 = SHX1_2 * 2.0
  SHX6_2 = SHX2_2 * 0.0
  SHX5_2 = SHX5_2 + SHX6_2
  SHX6_2 = SHX3_2 * 0.5
  SHX5_2 = SHX5_2 + SHX6_2
  SHX5_2 = SHX5_2 + SHX4_2
  SHX6_2 = CreateCamWithParams
  SHX7_2 = "DEFAULT_SCRIPTED_CAMERA"
  SHX8_2 = SHX5_2.x
  SHX9_2 = SHX5_2.y
  SHX10_2 = SHX5_2.z
  SHX11_2 = 0.0
  SHX12_2 = 0.0
  SHX13_2 = 0.0
  SHX14_2 = 70.0
  SHX15_2 = false
  SHX16_2 = 2
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX1_1.camera = SHX6_2
  SHX6_2 = SetCamActive
  SHX7_2 = SHX1_1.camera
  SHX8_2 = true
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = PointCamAtCoord
  SHX7_2 = SHX1_1.camera
  SHX8_2 = SHX1_1.spawn
  SHX8_2 = SHX8_2.x
  SHX9_2 = SHX1_1.spawn
  SHX9_2 = SHX9_2.y
  SHX10_2 = SHX1_1.spawn
  SHX10_2 = SHX10_2.z
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX6_2 = RenderScriptCams
  SHX7_2 = true
  SHX8_2 = false
  SHX9_2 = 0
  SHX10_2 = false
  SHX11_2 = false
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.loadAnimDict
  SHX7_2 = "mini@triathlon"
  SHX6_2(SHX7_2)
  SHX6_2 = TaskPlayAnim
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.getPlayerPed
  SHX7_2 = SHX7_2()
  SHX8_2 = "mini@triathlon"
  SHX9_2 = "idle_"
  SHX10_2 = SHX5_1
  SHX10_2 = SHX10_2()
  SHX9_2 = SHX9_2 .. SHX10_2
  SHX10_2 = 8.0
  SHX11_2 = 8.0
  SHX12_2 = -1
  SHX13_2 = 1
  SHX14_2 = 0.2
  SHX15_2 = false
  SHX16_2 = false
  SHX17_2 = false
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX6_2 = PlaySoundFrontend
  SHX7_2 = -1
  SHX8_2 = "5s"
  SHX9_2 = "MP_MISSION_COUNTDOWN_SOUNDSET"
  SHX10_2 = false
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX6_2 = TriggerEvent
  SHX7_2 = "b3cbc4aca5"
  SHX8_2 = 3
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = Wait
  SHX7_2 = 4000
  SHX6_2(SHX7_2)
  SHX6_2 = SHX1_1.state
  if "choosingcharacter" ~= SHX6_2 then
    return
  end
  SHX1_1.state = "started"
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.setPlayerCanOpenLeaderboard
  SHX7_2 = true
  SHX6_2(SHX7_2)
  SHX6_2 = ClearPedTasks
  SHX7_2 = PlayerPedId
  SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2 = SHX7_2()
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX6_2 = SetCamActive
  SHX7_2 = SHX1_1.camera
  SHX8_2 = false
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = RenderScriptCams
  SHX7_2 = false
  SHX8_2 = false
  SHX9_2 = 0
  SHX10_2 = false
  SHX11_2 = false
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX6_2 = DestroyCam
  SHX7_2 = SHX1_1.camera
  SHX8_2 = false
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = DestroyCam
  SHX7_2 = SHX1_1.camera2
  SHX8_2 = false
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.enableMinigamePlayerBlips
  SHX7_2 = true
  SHX6_2(SHX7_2)
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.enableMinigamePlayerTags
  SHX7_2 = true
  SHX8_2 = true
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = SetPedRelationshipGroupHash
  SHX7_2 = PlayerPedId
  SHX7_2 = SHX7_2()
  SHX8_2 = SHX4_1
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = SetRelationshipBetweenGroups
  SHX7_2 = 5
  SHX8_2 = SHX4_1
  SHX9_2 = SHX4_1
  SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX6_2 = FreezeEntityPosition
  SHX7_2 = PlayerPedId
  SHX7_2 = SHX7_2()
  SHX8_2 = false
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = SetTimeout
  SHX7_2 = 3000
  function SHX8_2()
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
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = CreateThread
  function SHX7_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
    SHX0_3 = SHX1_1.singleWeaponMode
    if not SHX0_3 then
      SHX0_3 = IsUsingKeyboard
      SHX1_3 = 0
      SHX0_3 = SHX0_3(SHX1_3)
      if SHX0_3 then
        SHX0_3 = CMG
        SHX0_3 = SHX0_3.announceMpBigMsg
        SHX1_3 = "PRESS B TO OPEN BUY MENU"
        SHX2_3 = ""
        SHX3_3 = 5000
        SHX4_3 = true
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
      else
        SHX0_3 = CMG
        SHX0_3 = SHX0_3.announceMpBigMsg
        SHX1_3 = "PRESS R1 TO OPEN BUY MENU"
        SHX2_3 = ""
        SHX3_3 = 5000
        SHX4_3 = true
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
      end
    else
      SHX0_3 = CMG
      SHX0_3 = SHX0_3.TriggerServerCallback
      SHX1_3 = "29d4ac1c5d"
      SHX0_3(SHX1_3)
    end
  end
  SHX6_2(SHX7_2)
  while true do
    SHX6_2 = SHX1_1.state
    if "started" ~= SHX6_2 then
      break
    end
    SHX6_2 = IsUsingKeyboard
    SHX7_2 = 0
    SHX6_2 = SHX6_2(SHX7_2)
    if SHX6_2 then
      SHX6_2 = 29
      if SHX6_2 then
        goto SHX_LABEL_182
      end
    end
    SHX6_2 = 44
    -- [FIX IF ERROR] Move ::SHX_LABEL_182:: outside nested blocks until all 'goto SHX_LABEL_182' can see it
    ::SHX_LABEL_182::
    SHX7_2 = IsControlJustPressed
    SHX8_2 = 0
    SHX9_2 = SHX6_2
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
    if SHX7_2 then
      SHX7_2 = SHX1_1.singleWeaponMode
      if not SHX7_2 then
        SHX7_2 = CMG
        SHX7_2 = SHX7_2.openRadialMenu
        SHX8_2 = "buyWeaponsFFA"
        SHX7_2(SHX8_2)
      end
    end
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.disableMeleeControls
    SHX7_2()
    SHX7_2 = DisableFirstPersonCamThisFrame
    SHX7_2()
    SHX7_2 = DisableControlAction
    SHX8_2 = 0
    SHX9_2 = 23
    SHX10_2 = false
    SHX7_2(SHX8_2, SHX9_2, SHX10_2)
    SHX7_2 = DisableControlAction
    SHX8_2 = 0
    SHX9_2 = 75
    SHX10_2 = false
    SHX7_2(SHX8_2, SHX9_2, SHX10_2)
    SHX7_2 = Citizen
    SHX7_2 = SHX7_2.Wait
    SHX8_2 = 0
    SHX7_2(SHX8_2)
  end
end
SHX7_1(SHX8_1, SHX9_1)
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = pairs
  SHX2_2 = SHX2_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.source
    if SHX7_2 == SHX0_2 then
      return SHX5_2
    end
  end
end
SHX8_1 = RegisterNetEvent
SHX9_1 = "a90bb588a8"
function SHX10_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX3_2 = SHX7_1
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX4_2 = SHX2_1
    SHX4_2 = SHX4_2[SHX3_2]
    SHX4_2.points = SHX2_2
  else
    SHX4_2 = table
    SHX4_2 = SHX4_2.insert
    SHX5_2 = SHX2_1
    SHX6_2 = {}
    SHX6_2.source = SHX0_2
    SHX6_2.points = SHX2_2
    SHX6_2.name = SHX1_2
    SHX4_2(SHX5_2, SHX6_2)
  end
  SHX4_2 = table
  SHX4_2 = SHX4_2.sort
  SHX5_2 = SHX2_1
  function SHX6_2(SHX0_3, SHX1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX2_3, SHX3_3
    SHX2_3 = SHX0_3.points
    SHX3_3 = SHX1_3.points
    SHX2_3 = SHX2_3 > SHX3_3
    return SHX2_3
  end
  SHX4_2(SHX5_2, SHX6_2)
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = RegisterNetEvent
SHX9_1 = "c07ea3b157"
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX7_1
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX2_2 = table
    SHX2_2 = SHX2_2.remove
    SHX3_2 = SHX2_1
    SHX4_2 = SHX1_2
    SHX2_2(SHX3_2, SHX4_2)
  end
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = CreateThread
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  while true do
    SHX0_2 = SHX1_1.state
    if "started" == SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.createTimerBars
      SHX0_2 = SHX0_2()
      SHX1_2 = 3
      SHX2_2 = 1
      SHX3_2 = -1
      for SHX4_2 = SHX1_2, SHX2_2, SHX3_2 do
        SHX5_2 = SHX2_1
        SHX5_2 = SHX5_2[SHX4_2]
        if SHX5_2 then
          SHX5_2 = SHX0_2.push
          SHX6_2 = CMG
          SHX6_2 = SHX6_2.getPlayerColour
          SHX7_2 = SHX2_1
          SHX7_2 = SHX7_2[SHX4_2]
          SHX7_2 = SHX7_2.source
          SHX6_2 = SHX6_2(SHX7_2)
          SHX7_2 = SHX2_1
          SHX7_2 = SHX7_2[SHX4_2]
          SHX7_2 = SHX7_2.name
          SHX8_2 = "~w~"
          SHX6_2 = SHX6_2 .. SHX7_2 .. SHX8_2
          SHX7_2 = SHX2_1
          SHX7_2 = SHX7_2[SHX4_2]
          SHX7_2 = SHX7_2.points
          SHX8_2 = "/20"
          SHX7_2 = SHX7_2 .. SHX8_2
          SHX5_2(SHX6_2, SHX7_2)
        end
      end
      SHX1_2 = SHX0_2.draw
      SHX1_2()
    end
    SHX0_2 = Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
end
SHX8_1(SHX9_1)
SHX8_1 = nil
function SHX9_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX8_1 = SHX0_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.TriggerServerCallback
  SHX2_2 = "29d4ac1c5d"
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
end
SHX10_1 = Citizen
SHX10_1 = SHX10_1.CreateThread
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.addRadialMenuHandler
  SHX1_2 = "buyWeaponsFFA"
  SHX2_2 = SHX9_1
  SHX0_2(SHX1_2, SHX2_2)
end
SHX10_1(SHX11_1)
SHX10_1 = AddEventHandler
SHX11_1 = "5dac3d7c66"
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX1_1.state
  if "started" == SHX0_2 then
    SHX0_2 = ClearTimecycleModifier
    SHX0_2()
    SHX0_2 = SHX1_1.singleWeaponMode
    if not SHX0_2 then
      SHX0_2 = notify
      SHX1_2 = "~b~Press [B] to open the buy menu"
      SHX0_2(SHX1_2)
    end
    SHX0_2 = Wait
    SHX1_2 = 1000
    SHX0_2(SHX1_2)
    SHX0_2 = SHX1_1.singleWeaponMode
    if SHX0_2 then
      SHX0_2 = SHX9_1
      SHX0_2()
    else
      SHX0_2 = SHX8_1
      if SHX0_2 then
        SHX0_2 = SHX9_1
        SHX1_2 = SHX8_1
        SHX0_2(SHX1_2)
      end
    end
    SHX0_2 = SetLocalPlayerAsGhost
    SHX1_2 = true
    SHX0_2(SHX1_2)
    SHX0_2 = Wait
    SHX1_2 = 3000
    SHX0_2(SHX1_2)
    SHX0_2 = SetLocalPlayerAsGhost
    SHX1_2 = false
    SHX0_2(SHX1_2)
    SHX0_2 = ResetGhostedEntityAlpha
    SHX0_2()
    SHX0_2 = SHX0_1.locations
    SHX1_2 = SHX1_1.mapname
    SHX0_2 = SHX0_2[SHX1_2]
    SHX0_2 = SHX0_2.spawnpoints
    SHX1_2 = math
    SHX1_2 = SHX1_2.random
    SHX2_2 = 1
    SHX3_2 = #SHX0_2
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX0_2[SHX1_2]
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.setEventRespawnPosition
    SHX3_2 = SHX1_2
    SHX2_2(SHX3_2)
  end
end
SHX10_1(SHX11_1, SHX12_1)
