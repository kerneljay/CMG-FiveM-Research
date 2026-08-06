-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/events/cfg_tdm"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = {}
SHX2_1 = AddRelationshipGroup
SHX3_1 = "TDM_BLUE"
SHX2_1, SHX3_1 = SHX2_1(SHX3_1)
SHX4_1 = AddRelationshipGroup
SHX5_1 = "TDM_RED"
SHX4_1, SHX5_1 = SHX4_1(SHX5_1)
SHX6_1 = CMG
SHX6_1 = SHX6_1.createTimerBars
SHX6_1 = SHX6_1()
function SHX7_1()
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
  SHX2_2 = "2b8f1234ea"
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
  SHX1_2 = "buyWeaponsTDM"
  SHX2_2 = SHX9_1
  SHX0_2(SHX1_2, SHX2_2)
end
SHX10_1(SHX11_1)
SHX10_1 = Citizen
SHX10_1 = SHX10_1.CreateThread
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = "TDM"
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
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.setFriendlyFire
    SHX1_3 = true
    SHX0_3(SHX1_3)
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.enableDriveBy
    SHX1_3 = false
    SHX0_3(SHX1_3)
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
    SHX2_3 = SHX5_1
    SHX3_3 = SHX3_1
    SHX0_3(SHX1_3, SHX2_3, SHX3_3)
    SHX0_3 = SetRelationshipBetweenGroups
    SHX1_3 = 0
    SHX2_3 = SHX3_1
    SHX3_3 = SHX5_1
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
SHX10_1(SHX11_1)
function SHX10_1(SHX0_2)
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
SHX11_1 = RegisterNetEvent
SHX12_1 = "04c52f29ff"
function SHX13_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX1_1.mapname = SHX0_2
  SHX1_1.state = "loading"
  SHX1_1.team = SHX4_2
  SHX1_1.spawn = SHX2_2
  SHX1_1.spawnpoints = SHX3_2
  if SHX1_2 then
    SHX10_2 = CMG
    SHX10_2 = SHX10_2.loadClientRockstarMap
    SHX11_2 = SHX1_2
    SHX12_2 = false
    SHX10_2(SHX11_2, SHX12_2)
  end
  SHX10_2 = PlayerPedId
  SHX10_2 = SHX10_2()
  SHX11_2 = CMG
  SHX11_2 = SHX11_2.setEventRespawnPosition
  SHX12_2 = SHX2_2
  SHX11_2(SHX12_2)
  SHX11_2 = SetEntityCoordsNoOffset
  SHX12_2 = SHX10_2
  SHX13_2 = SHX2_2.x
  SHX14_2 = SHX2_2.y
  SHX15_2 = SHX2_2.z
  SHX16_2 = true
  SHX17_2 = false
  SHX18_2 = false
  SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  SHX11_2 = SetEntityHeading
  SHX12_2 = SHX10_2
  SHX13_2 = SHX2_2.w
  SHX11_2(SHX12_2, SHX13_2)
  SHX11_2 = FreezeEntityPosition
  SHX12_2 = SHX10_2
  SHX13_2 = true
  SHX11_2(SHX12_2, SHX13_2)
  if SHX6_2 then
    SHX11_2 = pairs
    SHX12_2 = SHX6_2
    SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX11_2(SHX12_2)
    for SHX15_2, SHX16_2 in SHX11_2, SHX12_2, SHX13_2, SHX14_2 do
      SHX17_2 = table
      SHX17_2 = SHX17_2.insert
      SHX18_2 = SHX5_2
      SHX19_2 = SHX16_2
      SHX17_2(SHX18_2, SHX19_2)
    end
    SHX1_1.bounds = SHX5_2
    SHX11_2 = CMG
    SHX11_2 = SHX11_2.setMinigameBounds
    SHX12_2 = SHX5_2
    SHX11_2(SHX12_2)
  else
    SHX1_1.bounds = SHX5_2
    SHX11_2 = CMG
    SHX11_2 = SHX11_2.setMinigameBounds
    SHX12_2 = SHX5_2
    SHX11_2(SHX12_2)
  end
  SHX11_2 = {}
  SHX1_1.pickups = SHX11_2
  SHX11_2 = SHX10_1
  SHX12_2 = SHX7_2
  SHX11_2(SHX12_2)
  if SHX8_2 then
    SHX11_2 = TriggerEvent
    SHX12_2 = "105e886dcc"
    SHX13_2 = SHX9_2
    SHX11_2(SHX12_2, SHX13_2)
    return
  end
end
SHX11_1(SHX12_1, SHX13_1)
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX1_1.team
  if "blue" == SHX0_2 then
    SHX0_2 = "red"
    return SHX0_2
  end
  SHX0_2 = "blue"
  return SHX0_2
end
function SHX12_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = SHX1_1.blueteam
  if SHX1_2 then
    SHX1_2 = SHX1_1.redteam
    if SHX1_2 then
      goto SHX_LABEL_8
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_8:: outside nested blocks until all 'goto SHX_LABEL_8' can see it
  ::SHX_LABEL_8::
  SHX1_2 = ipairs
  SHX2_2 = SHX11_1
  SHX2_2 = SHX2_2()
  SHX3_2 = "team"
  SHX2_2 = SHX2_2 .. SHX3_2
  SHX3_2 = SHX1_1
  SHX2_2 = SHX3_2[SHX2_2]
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.source
    if SHX7_2 == SHX0_2 then
      SHX7_2 = 1
      return SHX7_2
    end
  end
  SHX1_2 = ipairs
  SHX2_2 = SHX1_1.team
  SHX3_2 = "team"
  SHX2_2 = SHX2_2 .. SHX3_2
  SHX3_2 = SHX1_1
  SHX2_2 = SHX3_2[SHX2_2]
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.source
    if SHX7_2 == SHX0_2 then
      SHX7_2 = 2
      return SHX7_2
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
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = SHX1_1.blueteam
  if SHX1_2 then
    SHX1_2 = SHX1_1.redteam
    if SHX1_2 then
      goto SHX_LABEL_8
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_8:: outside nested blocks until all 'goto SHX_LABEL_8' can see it
  ::SHX_LABEL_8::
  SHX1_2 = ipairs
  SHX2_2 = SHX1_1.team
  SHX3_2 = "team"
  SHX2_2 = SHX2_2 .. SHX3_2
  SHX3_2 = SHX1_1
  SHX2_2 = SHX3_2[SHX2_2]
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.source
    if SHX7_2 == SHX0_2 then
      SHX7_2 = true
      return SHX7_2
    end
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.hasPlayerShotInEvent
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = true
    return SHX1_2
  end
  SHX1_2 = false
  return SHX1_2
end
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = SHX1_1.blueteam
  if SHX1_2 then
    SHX1_2 = SHX1_1.redteam
    if SHX1_2 then
      goto SHX_LABEL_8
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_8:: outside nested blocks until all 'goto SHX_LABEL_8' can see it
  ::SHX_LABEL_8::
  SHX1_2 = ipairs
  SHX2_2 = SHX11_1
  SHX2_2 = SHX2_2()
  SHX3_2 = "team"
  SHX2_2 = SHX2_2 .. SHX3_2
  SHX3_2 = SHX1_1
  SHX2_2 = SHX3_2[SHX2_2]
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.source
    if SHX7_2 == SHX0_2 then
      SHX7_2 = 6
      return SHX7_2
    end
  end
  SHX1_2 = ipairs
  SHX2_2 = SHX1_1.team
  SHX3_2 = "team"
  SHX2_2 = SHX2_2 .. SHX3_2
  SHX3_2 = SHX1_1
  SHX2_2 = SHX3_2[SHX2_2]
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.source
    if SHX7_2 == SHX0_2 then
      SHX7_2 = 18
      return SHX7_2
    end
  end
end
SHX15_1 = RegisterNetEvent
SHX16_1 = "ece517541d"
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = CreateThread
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.announceMpBigMsg
    SHX1_3 = "~g~RC-XD deployed."
    SHX2_3 = ""
    SHX3_3 = 1000
    SHX4_3 = true
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
  end
  SHX1_2(SHX2_2)
  SHX1_2 = NetToVeh
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SetEntityVisible
  SHX3_2 = PlayerPedId
  SHX3_2 = SHX3_2()
  SHX4_2 = false
  SHX5_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = GetGameTimer
  SHX2_2 = SHX2_2()
  SHX1_1.rcxdTimer = SHX2_2
  while true do
    SHX2_2 = GetEntityHealth
    SHX3_2 = PlayerPedId
    SHX3_2, SHX4_2, SHX5_2 = SHX3_2()
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    if not (SHX2_2 > 100) then
      break
    end
    SHX2_2 = GetGameTimer
    SHX2_2 = SHX2_2()
    SHX3_2 = SHX1_1.rcxdTimer
    SHX2_2 = SHX2_2 - SHX3_2
    SHX3_2 = 20000
    if not (SHX2_2 < SHX3_2) then
      break
    end
    SHX2_2 = IsControlJustPressed
    SHX3_2 = 0
    SHX4_2 = 18
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if SHX2_2 then
      break
    end
    SHX2_2 = drawNativeText
    SHX3_2 = "Press ~g~SPACE~w~ to explode RC-XD"
    SHX2_2(SHX3_2)
    SHX2_2 = Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
  SHX1_1.rcxdTimer = nil
  SHX2_2 = DeleteVehicle
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
  SHX2_2 = SetEntityHealth
  SHX3_2 = PlayerPedId
  SHX3_2 = SHX3_2()
  SHX4_2 = 0
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = TriggerServerEvent
  SHX3_2 = "2f33bbb12c"
  SHX2_2(SHX3_2)
end
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = RegisterNetEvent
SHX16_1 = "996718a935"
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX1_2 = 1
  SHX2_2 = 15
  SHX3_2 = 1
  for SHX4_2 = SHX1_2, SHX2_2, SHX3_2 do
    SHX5_2 = SHX0_2.x
    SHX6_2 = math
    SHX6_2 = SHX6_2.random
    SHX6_2 = SHX6_2()
    SHX6_2 = SHX6_2 - 0.5
    SHX6_2 = SHX6_2 * 4.0
    SHX5_2 = SHX5_2 + SHX6_2
    SHX6_2 = SHX0_2.y
    SHX7_2 = math
    SHX7_2 = SHX7_2.random
    SHX7_2 = SHX7_2()
    SHX7_2 = SHX7_2 - 0.5
    SHX7_2 = SHX7_2 * 4.0
    SHX6_2 = SHX6_2 + SHX7_2
    SHX7_2 = SHX0_2.z
    SHX8_2 = math
    SHX8_2 = SHX8_2.random
    SHX8_2 = SHX8_2()
    SHX8_2 = SHX8_2 - 0.5
    SHX8_2 = SHX8_2 * 2.0
    SHX7_2 = SHX7_2 + SHX8_2
    SHX8_2 = AddOwnedExplosion
    SHX9_2 = PlayerPedId
    SHX9_2 = SHX9_2()
    SHX10_2 = SHX5_2
    SHX11_2 = SHX6_2
    SHX12_2 = SHX7_2
    SHX13_2 = 2
    SHX14_2 = 1.0
    SHX15_2 = true
    SHX16_2 = false
    SHX17_2 = 5.0
    SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  end
end
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = RegisterNetEvent
SHX16_1 = "f03e895b72"
function SHX17_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  SHX1_1.chopperVehNetId = SHX0_2
  SHX1_1.chopperPedNetId = SHX1_2
end
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = RegisterNetEvent
SHX16_1 = "86e97f39ba"
function SHX17_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerCoords
  SHX0_2 = SHX0_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.clearMinigameBounds
  SHX1_2()
  SHX1_2 = CreateThread
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.announceMpBigMsg
    SHX1_3 = "~g~Chopper Gun deployed."
    SHX2_3 = ""
    SHX3_3 = 1000
    SHX4_3 = true
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
  end
  SHX1_2(SHX2_2)
  SHX1_1.isChopperShooter = true
  SHX1_2 = GetGameTimer
  SHX1_2 = SHX1_2()
  SHX1_1.chopperTimer = SHX1_2
  while true do
    SHX1_2 = GetEntityHealth
    SHX2_2 = PlayerPedId
    SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX2_2()
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    if not (SHX1_2 > 100) then
      break
    end
    SHX1_2 = GetGameTimer
    SHX1_2 = SHX1_2()
    SHX2_2 = SHX1_1.chopperTimer
    SHX1_2 = SHX1_2 - SHX2_2
    SHX2_2 = 60000
    if not (SHX1_2 < SHX2_2) then
      break
    end
    SHX1_2 = Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
  end
  SHX1_1.chopperTimer = nil
  SHX1_1.isChopperShooter = false
  SHX1_2 = ClearPedTasksImmediately
  SHX2_2 = PlayerPedId
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX2_2()
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX1_2 = SetEntityCoords
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = SHX0_2.x
  SHX4_2 = SHX0_2.y
  SHX5_2 = SHX0_2.z
  SHX6_2 = true
  SHX7_2 = false
  SHX8_2 = false
  SHX9_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.setMinigameBounds
  SHX2_2 = SHX1_1.bounds
  SHX1_2(SHX2_2)
end
SHX15_1(SHX16_1, SHX17_1)
function SHX15_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  if 0 == SHX0_2 then
    SHX1_2 = SHX0_1.locations
    SHX2_2 = SHX1_1.mapname
    SHX1_2 = SHX1_2[SHX2_2]
    SHX1_2 = SHX1_2.chopper
    SHX1_2 = SHX1_2.pos1
    return SHX1_2
  elseif 1 == SHX0_2 then
    SHX1_2 = SHX0_1.locations
    SHX2_2 = SHX1_1.mapname
    SHX1_2 = SHX1_2[SHX2_2]
    SHX1_2 = SHX1_2.chopper
    SHX1_2 = SHX1_2.pos2
    return SHX1_2
  elseif 2 == SHX0_2 then
    SHX1_2 = SHX0_1.locations
    SHX2_2 = SHX1_1.mapname
    SHX1_2 = SHX1_2[SHX2_2]
    SHX1_2 = SHX1_2.chopper
    SHX1_2 = SHX1_2.pos3
    return SHX1_2
  elseif 3 == SHX0_2 then
    SHX1_2 = SHX0_1.locations
    SHX2_2 = SHX1_1.mapname
    SHX1_2 = SHX1_2[SHX2_2]
    SHX1_2 = SHX1_2.chopper
    SHX1_2 = SHX1_2.pos4
    return SHX1_2
  end
end
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX0_2 = NetworkDoesEntityExistWithNetworkId
  SHX1_2 = SHX1_1.chopperVehNetId
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX0_2 = NetworkDoesEntityExistWithNetworkId
    SHX1_2 = SHX1_1.chopperPedNetId
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      goto SHX_LABEL_12
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_12:: outside nested blocks until all 'goto SHX_LABEL_12' can see it
  ::SHX_LABEL_12::
  SHX0_2 = NetworkGetEntityFromNetworkId
  SHX1_2 = SHX1_1.chopperVehNetId
  SHX0_2 = SHX0_2(SHX1_2)
  SHX1_2 = NetworkGetEntityFromNetworkId
  SHX2_2 = SHX1_1.chopperPedNetId
  SHX1_2 = SHX1_2(SHX2_2)
  if 0 == SHX0_2 or 0 == SHX1_2 then
    return
  end
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = SHX1_1.isChopperShooter
  if SHX3_2 then
    SHX3_2 = GetPedInVehicleSeat
    SHX4_2 = SHX0_2
    SHX5_2 = 1
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
    if SHX3_2 ~= SHX2_2 then
      SHX3_2 = SetPedIntoVehicle
      SHX4_2 = SHX2_2
      SHX5_2 = SHX0_2
      SHX6_2 = 1
      SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    end
  end
  SHX3_2 = NetworkHasControlOfEntity
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  if not SHX3_2 then
    return
  end
  SHX3_2 = SetEntityInvincible
  SHX4_2 = SHX1_2
  SHX5_2 = true
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SetBlockingOfNonTemporaryEvents
  SHX4_2 = SHX1_2
  SHX5_2 = true
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SetPedKeepTask
  SHX4_2 = SHX1_2
  SHX5_2 = true
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = GetPedInVehicleSeat
  SHX4_2 = SHX0_2
  SHX5_2 = -1
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  if SHX3_2 ~= SHX1_2 then
    SHX3_2 = SetPedIntoVehicle
    SHX4_2 = SHX1_2
    SHX5_2 = SHX0_2
    SHX6_2 = -1
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  end
  SHX3_2 = SetVehicleEngineOn
  SHX4_2 = SHX0_2
  SHX5_2 = true
  SHX6_2 = true
  SHX7_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX3_2 = SetHeliBladesFullSpeed
  SHX4_2 = SHX0_2
  SHX3_2(SHX4_2)
  SHX3_2 = Entity
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX3_2 = SHX3_2.state
  SHX3_2 = SHX3_2.stage
  SHX4_2 = Entity
  SHX5_2 = SHX1_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX4_2 = SHX4_2.state
  SHX4_2 = SHX4_2.lastChanged
  if 0 == SHX3_2 then
    SHX5_2 = SHX15_1
    SHX6_2 = 0
    SHX5_2 = SHX5_2(SHX6_2)
    SHX6_2 = SetEntityCoordsNoOffset
    SHX7_2 = SHX0_2
    SHX8_2 = SHX5_2.x
    SHX9_2 = SHX5_2.y
    SHX10_2 = SHX5_2.z
    SHX11_2 = true
    SHX12_2 = false
    SHX13_2 = false
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  end
  SHX5_2 = false
  SHX6_2 = GetNetworkTime
  SHX6_2 = SHX6_2()
  SHX7_2 = SHX4_2 or SHX7_2
  if not SHX4_2 then
    SHX7_2 = GetNetworkTime
    SHX7_2 = SHX7_2()
  end
  SHX6_2 = SHX6_2 - SHX7_2
  SHX7_2 = 15000
  if SHX6_2 > SHX7_2 then
    SHX3_2 = SHX3_2 + 1
    SHX6_2 = Entity
    SHX7_2 = SHX1_2
    SHX6_2 = SHX6_2(SHX7_2)
    SHX6_2 = SHX6_2.state
    SHX7_2 = SHX6_2
    SHX6_2 = SHX6_2.set
    SHX8_2 = "stage"
    SHX9_2 = SHX3_2
    SHX10_2 = true
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    SHX6_2 = Entity
    SHX7_2 = SHX1_2
    SHX6_2 = SHX6_2(SHX7_2)
    SHX6_2 = SHX6_2.state
    SHX7_2 = SHX6_2
    SHX6_2 = SHX6_2.set
    SHX8_2 = "lastChanged"
    SHX9_2 = GetNetworkTime
    SHX9_2 = SHX9_2()
    SHX10_2 = true
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    SHX5_2 = true
  end
  if not SHX5_2 then
    SHX6_2 = GetScriptTaskStatus
    SHX7_2 = SHX1_2
    SHX8_2 = 2477085294
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
    if 7 ~= SHX6_2 then
      goto SHX_LABEL_161
    end
  end
  SHX6_2 = SHX15_1
  SHX7_2 = SHX3_2
  SHX6_2 = SHX6_2(SHX7_2)
  if SHX6_2 then
    SHX7_2 = TaskVehicleDriveToCoord
    SHX8_2 = SHX1_2
    SHX9_2 = SHX0_2
    SHX10_2 = SHX6_2.x
    SHX11_2 = SHX6_2.y
    SHX12_2 = SHX6_2.z
    SHX13_2 = 20.0
    SHX14_2 = 0
    SHX15_2 = 1543134283
    SHX16_2 = 262144
    SHX17_2 = 1.0
    SHX18_2 = -1.0
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_161:: outside nested blocks until all 'goto SHX_LABEL_161' can see it
  ::SHX_LABEL_161::
end
SHX17_1 = RegisterNetEvent
SHX18_1 = "1985159cca"
function SHX19_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  SHX1_1.redteam = SHX0_2
  SHX1_1.blueteam = SHX1_2
end
SHX17_1(SHX18_1, SHX19_1)
SHX17_1 = RegisterNetEvent
SHX18_1 = "105e886dcc"
function SHX19_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.enableDriveBy
  SHX2_2 = true
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.setSwitchGunEnabled
  SHX2_2 = false
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.stopEventSequence
  SHX1_2()
  SHX1_2 = currentEvent
  SHX1_2.drawPlayersTimeBar = false
  SHX1_1.state = "choosingcharacter"
  SHX1_2 = BusyspinnerOff
  SHX1_2()
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = GetEntityMatrix
  SHX3_2 = SHX1_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  SHX6_2 = SHX2_2 * 2.0
  SHX7_2 = SHX3_2 * 0.0
  SHX6_2 = SHX6_2 + SHX7_2
  SHX7_2 = SHX4_2 * 0.5
  SHX6_2 = SHX6_2 + SHX7_2
  SHX6_2 = SHX6_2 + SHX5_2
  SHX7_2 = CreateCamWithParams
  SHX8_2 = "DEFAULT_SCRIPTED_CAMERA"
  SHX9_2 = SHX6_2.x
  SHX10_2 = SHX6_2.y
  SHX11_2 = SHX6_2.z
  SHX12_2 = 0.0
  SHX13_2 = 0.0
  SHX14_2 = 0.0
  SHX15_2 = 70.0
  SHX16_2 = false
  SHX17_2 = 2
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX1_1.camera = SHX7_2
  SHX7_2 = SetCamActive
  SHX8_2 = SHX1_1.camera
  SHX9_2 = true
  SHX7_2(SHX8_2, SHX9_2)
  SHX7_2 = PointCamAtCoord
  SHX8_2 = SHX1_1.camera
  SHX9_2 = SHX1_1.spawn
  SHX9_2 = SHX9_2.x
  SHX10_2 = SHX1_1.spawn
  SHX10_2 = SHX10_2.y
  SHX11_2 = SHX1_1.spawn
  SHX11_2 = SHX11_2.z
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX7_2 = RenderScriptCams
  SHX8_2 = true
  SHX9_2 = false
  SHX10_2 = 0
  SHX11_2 = false
  SHX12_2 = false
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.loadAnimDict
  SHX8_2 = "mini@triathlon"
  SHX7_2(SHX8_2)
  SHX7_2 = TaskPlayAnim
  SHX8_2 = CMG
  SHX8_2 = SHX8_2.getPlayerPed
  SHX8_2 = SHX8_2()
  SHX9_2 = "mini@triathlon"
  SHX10_2 = "idle_"
  SHX11_2 = SHX7_1
  SHX11_2 = SHX11_2()
  SHX10_2 = SHX10_2 .. SHX11_2
  SHX11_2 = 8.0
  SHX12_2 = 8.0
  SHX13_2 = -1
  SHX14_2 = 1
  SHX15_2 = 0.2
  SHX16_2 = false
  SHX17_2 = false
  SHX18_2 = false
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  SHX1_1.currentMinigameId = SHX0_2
  SHX7_2 = PlaySoundFrontend
  SHX8_2 = -1
  SHX9_2 = "5s"
  SHX10_2 = "MP_MISSION_COUNTDOWN_SOUNDSET"
  SHX11_2 = false
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX7_2 = TriggerEvent
  SHX8_2 = "b3cbc4aca5"
  SHX9_2 = 3
  SHX7_2(SHX8_2, SHX9_2)
  SHX7_2 = Wait
  SHX8_2 = 4000
  SHX7_2(SHX8_2)
  SHX7_2 = SHX1_1.state
  if "choosingcharacter" ~= SHX7_2 then
    return
  end
  SHX1_1.state = "started"
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.setPlayerCanOpenLeaderboard
  SHX8_2 = true
  SHX7_2(SHX8_2)
  SHX7_2 = ClearPedTasks
  SHX8_2 = PlayerPedId
  SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2 = SHX8_2()
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  SHX7_2 = SetCamActive
  SHX8_2 = SHX1_1.camera
  SHX9_2 = false
  SHX7_2(SHX8_2, SHX9_2)
  SHX7_2 = RenderScriptCams
  SHX8_2 = false
  SHX9_2 = false
  SHX10_2 = 0
  SHX11_2 = false
  SHX12_2 = false
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX7_2 = DestroyCam
  SHX8_2 = SHX1_1.camera
  SHX9_2 = false
  SHX7_2(SHX8_2, SHX9_2)
  SHX7_2 = DestroyCam
  SHX8_2 = SHX1_1.camera2
  SHX9_2 = false
  SHX7_2(SHX8_2, SHX9_2)
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.enableMinigamePlayerBlips
  SHX8_2 = true
  SHX9_2 = SHX12_1
  SHX10_2 = SHX13_1
  SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.enableMinigamePlayerTags
  SHX8_2 = true
  SHX9_2 = true
  SHX10_2 = SHX14_1
  SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  SHX7_2 = SetRelationshipBetweenGroups
  SHX8_2 = 5
  SHX9_2 = SHX3_1
  SHX10_2 = SHX5_1
  SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  SHX7_2 = SetRelationshipBetweenGroups
  SHX8_2 = 5
  SHX9_2 = SHX5_1
  SHX10_2 = SHX3_1
  SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  SHX7_2 = SHX1_1.team
  if "blue" == SHX7_2 then
    SHX7_2 = SetPedRelationshipGroupHash
    SHX8_2 = PlayerPedId
    SHX8_2 = SHX8_2()
    SHX9_2 = SHX3_1
    SHX7_2(SHX8_2, SHX9_2)
  else
    SHX7_2 = SetPedRelationshipGroupHash
    SHX8_2 = PlayerPedId
    SHX8_2 = SHX8_2()
    SHX9_2 = SHX5_1
    SHX7_2(SHX8_2, SHX9_2)
  end
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.setFriendlyFire
  SHX8_2 = false
  SHX7_2(SHX8_2)
  SHX7_2 = FreezeEntityPosition
  SHX8_2 = PlayerPedId
  SHX8_2 = SHX8_2()
  SHX9_2 = false
  SHX7_2(SHX8_2, SHX9_2)
  SHX7_2 = CreateThread
  function SHX8_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
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
  end
  SHX7_2(SHX8_2)
  while true do
    SHX7_2 = SHX1_1.state
    if "started" ~= SHX7_2 then
      break
    end
    SHX7_2 = IsUsingKeyboard
    SHX8_2 = 0
    SHX7_2 = SHX7_2(SHX8_2)
    if SHX7_2 then
      SHX7_2 = 29
      if SHX7_2 then
        goto SHX_LABEL_195
      end
    end
    SHX7_2 = 44
    -- [FIX IF ERROR] Move ::SHX_LABEL_195:: outside nested blocks until all 'goto SHX_LABEL_195' can see it
    ::SHX_LABEL_195::
    SHX8_2 = IsControlJustPressed
    SHX9_2 = 0
    SHX10_2 = SHX7_2
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
    if SHX8_2 then
      SHX8_2 = CMG
      SHX8_2 = SHX8_2.openRadialMenu
      SHX9_2 = "buyWeaponsTDM"
      SHX8_2(SHX9_2)
    else
      SHX8_2 = IsControlJustPressed
      SHX9_2 = 0
      SHX10_2 = 188
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
      if SHX8_2 then
        SHX8_2 = SHX1_1.hasRCXD
        if SHX8_2 then
          SHX1_1.hasRCXD = false
          SHX8_2 = TriggerServerEvent
          SHX9_2 = "7640517054"
          SHX8_2(SHX9_2)
        else
          SHX8_2 = SHX1_1.hasChopper
          if SHX8_2 then
            SHX8_2 = SHX1_1.chopperVehNetId
            if SHX8_2 then
              SHX8_2 = notify
              SHX9_2 = "~r~The airspace is full."
              SHX8_2(SHX9_2)
            else
              SHX1_1.hasChopper = false
              SHX8_2 = TriggerServerEvent
              SHX9_2 = "00ef526aa7"
              SHX8_2(SHX9_2)
            end
          end
        end
      end
    end
    SHX8_2 = CMG
    SHX8_2 = SHX8_2.disableMeleeControls
    SHX8_2()
    SHX8_2 = DisableFirstPersonCamThisFrame
    SHX8_2()
    SHX8_2 = DisableControlAction
    SHX9_2 = 0
    SHX10_2 = 23
    SHX11_2 = false
    SHX8_2(SHX9_2, SHX10_2, SHX11_2)
    SHX8_2 = DisableControlAction
    SHX9_2 = 0
    SHX10_2 = 75
    SHX11_2 = false
    SHX8_2(SHX9_2, SHX10_2, SHX11_2)
    SHX8_2 = SHX16_1
    SHX8_2()
    SHX8_2 = Citizen
    SHX8_2 = SHX8_2.Wait
    SHX9_2 = 0
    SHX8_2(SHX9_2)
  end
end
SHX17_1(SHX18_1, SHX19_1)
SHX17_1 = {}
SHX18_1 = RegisterNetEvent
SHX19_1 = "14c5e345a1"
function SHX20_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = PlaySoundFrontend
  SHX3_2 = -1
  SHX4_2 = "Weapon_Upgrade"
  SHX5_2 = "DLC_GR_Weapon_Upgrade_Soundset"
  SHX6_2 = true
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = table
  SHX2_2 = SHX2_2.insert
  SHX3_2 = SHX17_1
  SHX4_2 = {}
  SHX4_2.name = SHX0_2
  SHX4_2.source = SHX1_2
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetTimeout
  SHX3_2 = 2000
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
    SHX0_3 = pairs
    SHX1_3 = SHX17_1
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
    for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      SHX6_3 = SHX1_2
      SHX7_3 = SHX5_3.source
      if SHX6_3 == SHX7_3 then
        SHX6_3 = table
        SHX6_3 = SHX6_3.remove
        SHX7_3 = SHX17_1
        SHX8_3 = SHX4_3
        SHX6_3(SHX7_3, SHX8_3)
      end
    end
  end
  SHX2_2(SHX3_2, SHX4_2)
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = CreateThread
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  while true do
    SHX0_2 = SHX1_1.state
    if "started" == SHX0_2 then
      SHX0_2 = SHX6_1.reset
      SHX0_2()
      SHX0_2 = SHX6_1.push
      SHX1_2 = "~b~BLUE TEAM~w~"
      SHX2_2 = GlobalState
      SHX3_2 = SHX1_1.currentMinigameId
      SHX4_2 = "_bluepoints"
      SHX3_2 = SHX3_2 .. SHX4_2
      SHX2_2 = SHX2_2[SHX3_2]
      SHX3_2 = "/50"
      SHX2_2 = SHX2_2 .. SHX3_2
      SHX0_2(SHX1_2, SHX2_2)
      SHX0_2 = SHX6_1.push
      SHX1_2 = "~r~RED TEAM~w~"
      SHX2_2 = GlobalState
      SHX3_2 = SHX1_1.currentMinigameId
      SHX4_2 = "_redpoints"
      SHX3_2 = SHX3_2 .. SHX4_2
      SHX2_2 = SHX2_2[SHX3_2]
      SHX3_2 = "/50"
      SHX2_2 = SHX2_2 .. SHX3_2
      SHX0_2(SHX1_2, SHX2_2)
      SHX0_2 = SHX1_1.rcxdTimer
      if SHX0_2 then
        SHX0_2 = SHX6_1.push
        SHX1_2 = "~b~EXPLODES IN~y~"
        SHX2_2 = tostring
        SHX3_2 = math
        SHX3_2 = SHX3_2.floor
        SHX4_2 = GetGameTimer
        SHX4_2 = SHX4_2()
        SHX5_2 = SHX1_1.rcxdTimer
        SHX4_2 = SHX4_2 - SHX5_2
        SHX4_2 = SHX4_2 / 1000
        SHX3_2 = SHX3_2(SHX4_2)
        SHX4_2 = 20
        SHX3_2 = SHX4_2 - SHX3_2
        SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2 = SHX2_2(SHX3_2)
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
      end
      SHX0_2 = SHX1_1.chopperTimer
      if SHX0_2 then
        SHX0_2 = SHX6_1.push
        SHX1_2 = "~b~RETURN IN~y~"
        SHX2_2 = tostring
        SHX3_2 = math
        SHX3_2 = SHX3_2.floor
        SHX4_2 = GetGameTimer
        SHX4_2 = SHX4_2()
        SHX5_2 = SHX1_1.chopperTimer
        SHX4_2 = SHX4_2 - SHX5_2
        SHX4_2 = SHX4_2 / 1000
        SHX3_2 = SHX3_2(SHX4_2)
        SHX4_2 = 60
        SHX3_2 = SHX4_2 - SHX3_2
        SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2 = SHX2_2(SHX3_2)
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
      end
      SHX0_2 = SHX1_1.hasRCXD
      if SHX0_2 then
        SHX0_2 = SHX6_1.push
        SHX1_2 = "~b~KILLSTREAK~w~"
        SHX2_2 = "RCXD"
        SHX3_2 = 0.3
        SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      end
      SHX0_2 = SHX1_1.hasChopper
      if SHX0_2 then
        SHX0_2 = SHX6_1.push
        SHX1_2 = "~b~KILLSTREAK~w~"
        SHX2_2 = "Chopper"
        SHX3_2 = 0.3
        SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      end
      SHX0_2 = SHX6_1.draw
      SHX0_2()
    end
    SHX0_2 = pairs
    SHX1_2 = SHX17_1
    SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
    for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
      SHX6_2 = DrawAdvancedTextNoOutline
      SHX7_2 = 0.6
      SHX8_2 = 0.025 * SHX4_2
      SHX8_2 = 0.5 + SHX8_2
      SHX9_2 = 0.005
      SHX10_2 = 0.0028
      SHX11_2 = 0.45
      SHX12_2 = "Killed "
      SHX13_2 = CMG
      SHX13_2 = SHX13_2.getPlayerColour
      SHX14_2 = SHX5_2.source
      SHX13_2 = SHX13_2(SHX14_2)
      SHX14_2 = SHX5_2.name
      SHX12_2 = SHX12_2 .. SHX13_2 .. SHX14_2
      SHX13_2 = 255
      SHX14_2 = 255
      SHX15_2 = 255
      SHX16_2 = 255
      SHX17_2 = CMG
      SHX17_2 = SHX17_2.getFontId
      SHX18_2 = "Akrobat-Regular"
      SHX17_2 = SHX17_2(SHX18_2)
      SHX18_2 = 1
      SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
    end
    SHX0_2 = Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
end
SHX18_1(SHX19_1)
SHX18_1 = false
SHX19_1 = CMG
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = true
  SHX18_1 = SHX0_2
  SHX0_2 = SetSpecialAbility
  SHX1_2 = PlayerId
  SHX1_2 = SHX1_2()
  SHX2_2 = 2
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SpecialAbilityActivate
  SHX1_2 = PlayerId
  SHX1_2, SHX2_2 = SHX1_2()
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = Wait
  SHX1_2 = 1000
  SHX0_2(SHX1_2)
  SHX0_2 = false
  SHX18_1 = SHX0_2
  SHX0_2 = SpecialAbilityDeplete
  SHX1_2 = PlayerId
  SHX1_2, SHX2_2 = SHX1_2()
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.InvokeNative
  SHX1_2 = -4466441394195262849
  SHX2_2 = PlayerId
  SHX2_2 = SHX2_2()
  SHX0_2(SHX1_2, SHX2_2)
end
SHX19_1.activateSlowMo = SHX20_1
SHX19_1 = CMG
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX18_1
  return SHX0_2
end
SHX19_1.isInSlowMo = SHX20_1
SHX19_1 = RegisterNetEvent
SHX20_1 = "f8de0cdabc"
function SHX21_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  if 5 == SHX0_2 then
    SHX1_2 = SetTimecycleModifier
    SHX2_2 = "MP_Killstreak"
    SHX1_2(SHX2_2)
    SHX1_2 = SetTimecycleModifierStrength
    SHX2_2 = 0.5
    SHX1_2(SHX2_2)
    SHX1_1.hasRCXD = true
    SHX1_2 = notify
    SHX2_2 = "~g~RX-CD kill streak awarded, use up arrow for deploy."
    SHX1_2(SHX2_2)
  elseif 10 == SHX0_2 then
    SHX1_2 = SetTimecycleModifier
    SHX2_2 = "BeastIntro01"
    SHX1_2(SHX2_2)
    SHX1_2 = SetTimecycleModifierStrength
    SHX2_2 = 0.5
    SHX1_2(SHX2_2)
    SHX1_1.hasChopper = true
    SHX1_2 = notify
    SHX2_2 = "~g~Chopper kill streak awarded, use up arrow for deploy."
    SHX1_2(SHX2_2)
  end
end
SHX19_1(SHX20_1, SHX21_1)
SHX19_1 = AddEventHandler
SHX20_1 = "5dac3d7c66"
function SHX21_1()
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
    SHX0_2 = notify
    SHX1_2 = "~b~Press [B] to open the buy menu"
    SHX0_2(SHX1_2)
    SHX0_2 = Wait
    SHX1_2 = 1000
    SHX0_2(SHX1_2)
    SHX0_2 = SHX8_1
    if SHX0_2 then
      SHX0_2 = SHX9_1
      SHX1_2 = SHX8_1
      SHX0_2(SHX1_2)
    end
    SHX0_2 = SetLocalPlayerAsGhost
    SHX1_2 = true
    SHX0_2(SHX1_2)
    SHX0_2 = Wait
    SHX1_2 = 5000
    SHX0_2(SHX1_2)
    SHX0_2 = SetLocalPlayerAsGhost
    SHX1_2 = false
    SHX0_2(SHX1_2)
    SHX0_2 = ResetGhostedEntityAlpha
    SHX0_2()
    SHX0_2 = SHX1_1.spawnpoints
    SHX1_2 = math
    SHX1_2 = SHX1_2.random
    SHX2_2 = 1
    SHX3_2 = SHX1_1.spawnpoints
    SHX3_2 = #SHX3_2
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    SHX0_2 = SHX0_2[SHX1_2]
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.setEventRespawnPosition
    SHX2_2 = SHX0_2
    SHX1_2(SHX2_2)
  end
end
SHX19_1(SHX20_1, SHX21_1)
