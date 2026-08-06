-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1, SHX78_1, SHX79_1, SHX80_1, SHX81_1, SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_arena"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = SHX0_1.roundCountdown
if not SHX1_1 then
  SHX1_1 = {}
end
SHX2_1 = SHX1_1.stepMs
if not SHX2_1 then
  SHX2_1 = 600
end
SHX3_1 = SHX1_1.roundTitleMs
if not SHX3_1 then
  SHX3_1 = 500
end
SHX4_1 = SHX1_1.goDisplayMs
if not SHX4_1 then
  SHX4_1 = 400
end
SHX5_1 = SHX0_1.prepareMatch
if not SHX5_1 then
  SHX5_1 = {}
end
SHX6_1 = SHX0_1.arenaOob
if not SHX6_1 then
  SHX6_1 = {}
end
SHX7_1 = SHX0_1.spectate
if SHX7_1 then
  SHX7_1 = SHX0_1.spectate
  SHX7_1 = SHX7_1.freeCamMargin
  if SHX7_1 then
    goto SHX_LABEL_41
  end
end
SHX7_1 = 50.0
-- [FIX IF ERROR] Move ::SHX_LABEL_41:: outside nested blocks until all 'goto SHX_LABEL_41' can see it
::SHX_LABEL_41::
SHX8_1 = 25.0
SHX9_1 = 5000
SHX10_1 = 5000
function SHX11_1(SHX0_2, ...)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = SHX0_1.strings
  if not SHX1_2 then
    return SHX0_2
  end
  SHX2_2 = string
  SHX2_2 = SHX2_2.gmatch
  SHX3_2 = SHX0_2
  SHX4_2 = "[^.]+"
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2, SHX4_2)
  for SHX6_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX1_2 = SHX1_2[SHX6_2]
    if nil == SHX1_2 then
      return SHX0_2
    end
  end
  SHX2_2 = type
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if "string" ~= SHX2_2 then
    return SHX0_2
  end
  SHX2_2 = select
  SHX3_2 = "#"
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = ...
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  if SHX2_2 > 0 then
    SHX2_2 = string
    SHX2_2 = SHX2_2.format
    SHX3_2 = SHX1_2
    SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = ...
    return SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  end
  return SHX1_2
end
SHX12_1 = AddRelationshipGroup
SHX13_1 = "CMGARENA_TEAM1"
SHX12_1, SHX13_1 = SHX12_1(SHX13_1)
SHX14_1 = AddRelationshipGroup
SHX15_1 = "CMGARENA_TEAM2"
SHX14_1, SHX15_1 = SHX14_1(SHX15_1)
SHX16_1 = AddRelationshipGroup
SHX17_1 = "CMGARENA_SPECTATOR"
SHX16_1, SHX17_1 = SHX16_1(SHX17_1)
SHX18_1 = 1862763509
SHX19_1 = {}
SHX19_1.appOpen = false
SHX19_1.lastSync = nil
SHX19_1.myRank = nil
SHX19_1.lobbyId = nil
SHX19_1.match = nil
SHX19_1.fighting = false
SHX20_1 = {}
SHX20_1.fingerprint = nil
SHX20_1.ctx = nil
SHX19_1.combat = SHX20_1
SHX19_1.spectate = nil
SHX19_1.warmup = nil
SHX19_1.preview = false
SHX19_1.forfeitOpen = false
SHX19_1.forfeitWatchRunning = false
SHX19_1.coverPeekWatchRunning = false
SHX19_1.preRoundLockActive = false
SHX19_1.preRoundLockTickRunning = false
SHX19_1.pendingTournamentNav = nil
SHX19_1.awaitingHubReturn = false
SHX19_1.lastWagerEndedAt = 0
SHX20_1 = {}
SHX19_1.loadedIpls = SHX20_1
SHX20_1 = {}
SHX19_1.spawnedProps = SHX20_1
SHX20_1 = {}
SHX19_1.adminTicketIpls = SHX20_1
SHX19_1.hopOutVehicle = nil
SHX19_1.aiBots = nil
SHX20_1 = {}
SHX19_1.botPeds = SHX20_1
SHX20_1 = {}
SHX19_1.botReported = SHX20_1
SHX19_1.botWatchRunning = false
SHX20_1 = false
SHX21_1 = false
function SHX22_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX19_1.fighting
  if not SHX0_2 then
    SHX0_2 = SHX19_1.warmup
    SHX0_2 = nil ~= SHX0_2
  end
  if SHX0_2 then
    SHX1_2 = SHX20_1
    if not SHX1_2 then
      SHX1_2 = tCMG
      SHX1_2 = SHX1_2.setCanAnim
      SHX2_2 = false
      SHX1_2(SHX2_2)
      SHX1_2 = true
      SHX20_1 = SHX1_2
  end
  elseif not SHX0_2 then
    SHX1_2 = SHX20_1
    if SHX1_2 then
      SHX1_2 = tCMG
      SHX1_2 = SHX1_2.setCanAnim
      SHX2_2 = true
      SHX1_2(SHX2_2)
      SHX1_2 = false
      SHX20_1 = SHX1_2
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
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX19_1.fighting
  if SHX0_2 then
    SHX1_2 = SHX21_1
    if not SHX1_2 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.setCanOpenPhone
      SHX2_2 = false
      SHX1_2(SHX2_2)
      SHX1_2 = true
      SHX21_1 = SHX1_2
  end
  elseif not SHX0_2 then
    SHX1_2 = SHX21_1
    if SHX1_2 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.setCanOpenPhone
      SHX2_2 = true
      SHX1_2(SHX2_2)
      SHX1_2 = false
      SHX21_1 = SHX1_2
    end
  end
end
function SHX24_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX19_1.fighting
  if not SHX0_2 then
    SHX0_2 = SHX19_1.warmup
    SHX0_2 = nil ~= SHX0_2
  end
  if SHX0_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.setGreenzonesDisabled
    SHX2_2 = true
    SHX1_2(SHX2_2)
    return
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.inEvent
  SHX1_2 = SHX1_2()
  if not SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.isLbRacingActive
    SHX1_2 = SHX1_2()
    if not SHX1_2 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.setGreenzonesDisabled
      SHX2_2 = false
      SHX1_2(SHX2_2)
    end
  end
end
function SHX25_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.uiSendMessage
  SHX3_2 = {}
  SHX3_2.action = SHX0_2
  SHX3_2.payload = SHX1_2
  SHX2_2(SHX3_2)
end
SHX26_1 = "cmg_arena_create_prefs"
SHX27_1 = "cmg_arena_maps_prefs"
function SHX28_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = GetResourceKvpString
  SHX1_2 = SHX26_1
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 or "" == SHX0_2 then
    SHX1_2 = nil
    return SHX1_2
  end
  SHX1_2 = pcall
  SHX2_2 = json
  SHX2_2 = SHX2_2.decode
  SHX3_2 = SHX0_2
  SHX1_2, SHX2_2 = SHX1_2(SHX2_2, SHX3_2)
  if SHX1_2 then
    SHX3_2 = type
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    if "table" == SHX3_2 then
      return SHX2_2
    end
  end
  SHX3_2 = nil
  return SHX3_2
end
function SHX29_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = type
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if "table" ~= SHX1_2 then
    return
  end
  SHX1_2 = {}
  SHX2_2 = SHX0_2.mode
  SHX1_2.mode = SHX2_2
  SHX2_2 = SHX0_2.map
  SHX1_2.map = SHX2_2
  SHX2_2 = SHX0_2.weaponCategory
  SHX1_2.weaponCategory = SHX2_2
  SHX2_2 = SHX0_2.weaponId
  SHX1_2.weaponId = SHX2_2
  SHX2_2 = SHX0_2.bestOf
  SHX1_2.bestOf = SHX2_2
  SHX2_2 = SHX0_2.stake
  SHX1_2.stake = SHX2_2
  SHX2_2 = SHX0_2.useArmour
  SHX1_2.useArmour = SHX2_2
  SHX2_2 = SHX0_2.allowCrouchShoot
  SHX1_2.allowCrouchShoot = SHX2_2
  SHX2_2 = SHX0_2.disableCoverPeek
  SHX1_2.disableCoverPeek = SHX2_2
  SHX2_2 = SHX0_2.siphon
  SHX1_2.siphon = SHX2_2
  SHX2_2 = SHX0_2.isPrivate
  SHX1_2.isPrivate = SHX2_2
  SHX2_2 = SHX0_2.password
  SHX1_2.password = SHX2_2
  SHX2_2 = SHX0_2.botCount
  SHX1_2.botCount = SHX2_2
  SHX2_2 = pcall
  SHX3_2 = json
  SHX3_2 = SHX3_2.encode
  SHX4_2 = SHX1_2
  SHX2_2, SHX3_2 = SHX2_2(SHX3_2, SHX4_2)
  if SHX2_2 and SHX3_2 then
    SHX4_2 = SetResourceKvp
    SHX5_2 = SHX26_1
    SHX6_2 = SHX3_2
    SHX4_2(SHX5_2, SHX6_2)
    SHX4_2 = SHX25_1
    SHX5_2 = "ARENA_CREATE_PREFS"
    SHX6_2 = SHX1_2
    SHX4_2(SHX5_2, SHX6_2)
  end
end
function SHX30_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX28_1
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX1_2 = SHX25_1
    SHX2_2 = "ARENA_CREATE_PREFS"
    SHX3_2 = SHX0_2
    SHX1_2(SHX2_2, SHX3_2)
  end
end
function SHX31_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = type
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if "table" ~= SHX1_2 then
    SHX1_2 = {}
    return SHX1_2
  end
  SHX1_2 = {}
  SHX2_2 = {}
  SHX3_2 = ipairs
  SHX4_2 = SHX0_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = tostring
    SHX10_2 = SHX8_2 or SHX10_2
    if not SHX8_2 then
      SHX10_2 = ""
    end
    SHX9_2 = SHX9_2(SHX10_2)
    SHX8_2 = SHX9_2
    if "" ~= SHX8_2 then
      SHX9_2 = SHX2_2[SHX8_2]
      if not SHX9_2 then
        SHX2_2[SHX8_2] = true
        SHX9_2 = #SHX1_2
        SHX9_2 = SHX9_2 + 1
        SHX1_2[SHX9_2] = SHX8_2
      end
    end
  end
  return SHX1_2
end
function SHX32_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = GetResourceKvpString
  SHX1_2 = SHX27_1
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 or "" == SHX0_2 then
    SHX1_2 = nil
    return SHX1_2
  end
  SHX1_2 = pcall
  SHX2_2 = json
  SHX2_2 = SHX2_2.decode
  SHX3_2 = SHX0_2
  SHX1_2, SHX2_2 = SHX1_2(SHX2_2, SHX3_2)
  if SHX1_2 then
    SHX3_2 = type
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    if "table" == SHX3_2 then
      SHX3_2 = SHX31_1
      SHX4_2 = SHX2_2.favourites
      SHX3_2 = SHX3_2(SHX4_2)
      SHX2_2.favourites = SHX3_2
      return SHX2_2
    end
  end
  SHX3_2 = nil
  return SHX3_2
end
function SHX33_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = type
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if "table" ~= SHX1_2 then
    return
  end
  SHX1_2 = SHX32_1
  SHX1_2 = SHX1_2()
  if not SHX1_2 then
    SHX1_2 = {}
  end
  SHX2_2 = {}
  SHX3_2 = SHX1_2.favouritesOnly
  SHX3_2 = true == SHX3_2
  SHX2_2.favouritesOnly = SHX3_2
  SHX3_2 = SHX1_2.favourites
  if not SHX3_2 then
    SHX3_2 = {}
  end
  SHX2_2.favourites = SHX3_2
  SHX3_2 = SHX0_2.favouritesOnly
  if nil ~= SHX3_2 then
    SHX3_2 = SHX0_2.favouritesOnly
    SHX3_2 = true == SHX3_2
    SHX2_2.favouritesOnly = SHX3_2
  end
  SHX3_2 = type
  SHX4_2 = SHX0_2.favourites
  SHX3_2 = SHX3_2(SHX4_2)
  if "table" == SHX3_2 then
    SHX3_2 = SHX31_1
    SHX4_2 = SHX0_2.favourites
    SHX3_2 = SHX3_2(SHX4_2)
    SHX2_2.favourites = SHX3_2
  end
  SHX3_2 = pcall
  SHX4_2 = json
  SHX4_2 = SHX4_2.encode
  SHX5_2 = SHX2_2
  SHX3_2, SHX4_2 = SHX3_2(SHX4_2, SHX5_2)
  if SHX3_2 and SHX4_2 then
    SHX5_2 = SetResourceKvp
    SHX6_2 = SHX27_1
    SHX7_2 = SHX4_2
    SHX5_2(SHX6_2, SHX7_2)
    SHX5_2 = SHX25_1
    SHX6_2 = "ARENA_MAPS_PREFS"
    SHX7_2 = SHX2_2
    SHX5_2(SHX6_2, SHX7_2)
  end
end
function SHX34_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX32_1
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX1_2 = SHX25_1
    SHX2_2 = "ARENA_MAPS_PREFS"
    SHX3_2 = SHX0_2
    SHX1_2(SHX2_2, SHX3_2)
  end
end
function SHX35_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX19_1.appOpen
  if SHX0_2 then
    return
  end
  SHX19_1.appOpen = true
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hideHud
  SHX0_2()
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSetFocus
  SHX1_2 = true
  SHX2_2 = true
  SHX3_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSendMessage
  SHX1_2 = {}
  SHX1_2.type = "APP_TOGGLE"
  SHX1_2.app = "Arena"
  SHX0_2(SHX1_2)
  SHX0_2 = SHX19_1.lastSync
  if SHX0_2 then
    SHX0_2 = SHX25_1
    SHX1_2 = "ARENA_SYNC"
    SHX2_2 = SHX19_1.lastSync
    SHX0_2(SHX1_2, SHX2_2)
  end
  SHX0_2 = SHX30_1
  SHX0_2()
  SHX0_2 = SHX34_1
  SHX0_2()
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "65d1e65933"
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "37d8fd04c4"
  SHX0_2(SHX1_2)
end
function SHX36_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX19_1.appOpen
  if not SHX0_2 then
    return
  end
  SHX19_1.appOpen = false
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.showHud
  SHX0_2()
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSetFocus
  SHX1_2 = false
  SHX2_2 = false
  SHX3_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSendMessage
  SHX1_2 = {}
  SHX1_2.type = "APP_TOGGLE"
  SHX1_2.app = ""
  SHX0_2(SHX1_2)
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "65d1e65933"
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
end
function SHX37_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX19_1.forfeitOpen
  if not SHX0_2 then
    SHX0_2 = SHX19_1.match
    if SHX0_2 then
      goto SHX_LABEL_8
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_8:: outside nested blocks until all 'goto SHX_LABEL_8' can see it
  ::SHX_LABEL_8::
  SHX19_1.forfeitOpen = true
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSetFocus
  SHX1_2 = true
  SHX2_2 = true
  SHX3_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = SHX25_1
  SHX1_2 = "ARENA_FORFEIT_PROMPT"
  SHX2_2 = {}
  SHX2_2.show = true
  SHX0_2(SHX1_2, SHX2_2)
end
function SHX38_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX19_1.forfeitOpen
  if not SHX0_2 then
    return
  end
  SHX19_1.forfeitOpen = false
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.uiSetFocus
  SHX1_2 = false
  SHX2_2 = false
  SHX3_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = SHX25_1
  SHX1_2 = "ARENA_FORFEIT_PROMPT"
  SHX2_2 = {}
  SHX2_2.show = false
  SHX0_2(SHX1_2, SHX2_2)
end
function SHX39_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX19_1.coverPeekWatchRunning
  if SHX0_2 then
    return
  end
  SHX19_1.coverPeekWatchRunning = true
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.CreateThread
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3
    while true do
      SHX0_3 = SHX19_1.fighting
      if not SHX0_3 then
        break
      end
      SHX0_3 = SHX19_1.match
      if not SHX0_3 then
        break
      end
      SHX0_3 = SHX19_1.match
      SHX0_3 = SHX0_3.flags
      if SHX0_3 then
        SHX0_3 = SHX19_1.match
        SHX0_3 = SHX0_3.flags
        SHX0_3 = SHX0_3.disableCoverPeek
        if SHX0_3 then
          SHX0_3 = PlayerId
          SHX0_3 = SHX0_3()
          SHX1_3 = PlayerPedId
          SHX1_3 = SHX1_3()
          SHX2_3 = SetPlayerCanUseCover
          SHX3_3 = SHX0_3
          SHX4_3 = false
          SHX2_3(SHX3_3, SHX4_3)
          SHX2_3 = SetPedConfigFlag
          SHX3_3 = SHX1_3
          SHX4_3 = 427
          SHX5_3 = false
          SHX2_3(SHX3_3, SHX4_3, SHX5_3)
          SHX2_3 = ipairs
          SHX3_3 = {}
          SHX4_3 = 0
          SHX5_3 = 1
          SHX6_3 = 2
          SHX3_3[1] = SHX4_3
          SHX3_3[2] = SHX5_3
          SHX3_3[3] = SHX6_3
          SHX2_3, SHX3_3, SHX4_3, SHX5_3 = SHX2_3(SHX3_3)
          for SHX6_3, SHX7_3 in SHX2_3, SHX3_3, SHX4_3, SHX5_3 do
            SHX8_3 = DisableControlAction
            SHX9_3 = SHX7_3
            SHX10_3 = 44
            SHX11_3 = true
            SHX8_3(SHX9_3, SHX10_3, SHX11_3)
          end
          SHX2_3 = IsPedInCover
          SHX3_3 = SHX1_3
          SHX4_3 = false
          SHX2_3 = SHX2_3(SHX3_3, SHX4_3)
          if SHX2_3 then
            SHX2_3 = ClearPedTasks
            SHX3_3 = SHX1_3
            SHX2_3(SHX3_3)
          end
        end
      end
      SHX0_3 = Wait
      SHX1_3 = 0
      SHX0_3(SHX1_3)
    end
    SHX0_3 = SetPlayerCanUseCover
    SHX1_3 = PlayerId
    SHX1_3 = SHX1_3()
    SHX2_3 = true
    SHX0_3(SHX1_3, SHX2_3)
    SHX19_1.coverPeekWatchRunning = false
  end
  SHX0_2(SHX1_2)
end
function SHX40_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX19_1.forfeitWatchRunning
  if SHX0_2 then
    return
  end
  SHX19_1.forfeitWatchRunning = true
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.CreateThread
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3
    while true do
      SHX0_3 = SHX19_1.fighting
      if not SHX0_3 then
        break
      end
      SHX0_3 = SHX19_1.match
      if not SHX0_3 then
        break
      end
      SHX0_3 = SHX19_1.forfeitOpen
      if not SHX0_3 then
        SHX0_3 = IsPauseMenuActive
        SHX0_3 = SHX0_3()
        if not SHX0_3 then
          SHX0_3 = DisableControlAction
          SHX1_3 = 0
          SHX2_3 = 199
          SHX3_3 = true
          SHX0_3(SHX1_3, SHX2_3, SHX3_3)
          SHX0_3 = DisableControlAction
          SHX1_3 = 0
          SHX2_3 = 200
          SHX3_3 = true
          SHX0_3(SHX1_3, SHX2_3, SHX3_3)
          SHX0_3 = IsDisabledControlJustPressed
          SHX1_3 = 0
          SHX2_3 = 200
          SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
          if not SHX0_3 then
            SHX0_3 = IsDisabledControlJustPressed
            SHX1_3 = 0
            SHX2_3 = 199
            SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
            if not SHX0_3 then
              goto SHX_LABEL_38
            end
          end
          SHX0_3 = SHX37_1
          SHX0_3()
        end
      end
      -- [FIX IF ERROR] Move ::SHX_LABEL_38:: outside nested blocks until all 'goto SHX_LABEL_38' can see it
      ::SHX_LABEL_38::
      SHX0_3 = Wait
      SHX1_3 = 0
      SHX0_3(SHX1_3)
    end
    SHX19_1.forfeitWatchRunning = false
    SHX0_3 = SHX38_1
    SHX0_3()
  end
  SHX0_2(SHX1_2)
end
function SHX41_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  if SHX1_2 then
    SHX2_2 = SetRelationshipBetweenGroups
    SHX3_2 = 5
    SHX4_2 = SHX13_1
    SHX5_2 = SHX13_1
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = SetRelationshipBetweenGroups
    SHX3_2 = 5
    SHX4_2 = SHX13_1
    SHX5_2 = SHX15_1
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = SetRelationshipBetweenGroups
    SHX3_2 = 5
    SHX4_2 = SHX15_1
    SHX5_2 = SHX13_1
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = SetPedRelationshipGroupHash
    SHX3_2 = PlayerPedId
    SHX3_2 = SHX3_2()
    SHX4_2 = SHX13_1
    SHX2_2(SHX3_2, SHX4_2)
  else
    SHX2_2 = SetRelationshipBetweenGroups
    SHX3_2 = 5
    SHX4_2 = SHX13_1
    SHX5_2 = SHX15_1
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = SetRelationshipBetweenGroups
    SHX3_2 = 5
    SHX4_2 = SHX15_1
    SHX5_2 = SHX13_1
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = SetPedRelationshipGroupHash
    SHX3_2 = PlayerPedId
    SHX3_2 = SHX3_2()
    if 1 == SHX0_2 then
      SHX4_2 = SHX13_1
      if SHX4_2 then
        goto SHX_LABEL_43
      end
    end
    SHX4_2 = SHX15_1
    -- [FIX IF ERROR] Move ::SHX_LABEL_43:: outside nested blocks until all 'goto SHX_LABEL_43' can see it
    ::SHX_LABEL_43::
    SHX2_2(SHX3_2, SHX4_2)
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.setFriendlyFire
  SHX3_2 = false
  SHX2_2(SHX3_2)
end
function SHX42_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = ClearRelationshipBetweenGroups
  SHX1_2 = 5
  SHX2_2 = SHX13_1
  SHX3_2 = SHX15_1
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = ClearRelationshipBetweenGroups
  SHX1_2 = 5
  SHX2_2 = SHX15_1
  SHX3_2 = SHX13_1
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = ClearRelationshipBetweenGroups
  SHX1_2 = 5
  SHX2_2 = SHX13_1
  SHX3_2 = SHX13_1
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = SetPedRelationshipGroupHash
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX18_1
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setFriendlyFire
  SHX1_2 = true
  SHX0_2(SHX1_2)
end
function SHX43_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = GetCurrentPedWeapon
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX1_2, SHX2_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX3_2 = table
  SHX3_2 = SHX3_2.concat
  SHX4_2 = {}
  SHX5_2 = tostring
  SHX6_2 = SHX2_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = tostring
  SHX7_2 = GetEntityMaxHealth
  SHX8_2 = SHX0_2
  SHX7_2, SHX8_2, SHX9_2 = SHX7_2(SHX8_2)
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX7_2 = tostring
  SHX8_2 = GetPedRelationshipGroupHash
  SHX9_2 = SHX0_2
  SHX8_2, SHX9_2 = SHX8_2(SHX9_2)
  SHX7_2, SHX8_2, SHX9_2 = SHX7_2(SHX8_2, SHX9_2)
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX4_2[4] = SHX8_2
  SHX4_2[5] = SHX9_2
  SHX5_2 = "|"
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX4_2 = GetHashKey
  SHX5_2 = SHX3_2
  return SHX4_2(SHX5_2)
end
function SHX44_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  if not SHX1_2 or "" == SHX1_2 then
    return
  end
  if not SHX0_2 then
    SHX2_2 = PlayerPedId
    SHX2_2 = SHX2_2()
    SHX0_2 = SHX2_2
  end
  SHX2_2 = GetHashKey
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = HasWeaponAssetLoaded
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if not SHX3_2 then
    SHX3_2 = RequestWeaponAsset
    SHX4_2 = SHX2_2
    SHX5_2 = 31
    SHX6_2 = 0
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    SHX3_2 = 0
    while true do
      SHX4_2 = HasWeaponAssetLoaded
      SHX5_2 = SHX2_2
      SHX4_2 = SHX4_2(SHX5_2)
      if not (not SHX4_2 and SHX3_2 < 100) then
        break
      end
      SHX4_2 = Wait
      SHX5_2 = 0
      SHX4_2(SHX5_2)
      SHX3_2 = SHX3_2 + 1
    end
  end
  SHX3_2 = HasPedGotWeapon
  SHX4_2 = SHX0_2
  SHX5_2 = SHX2_2
  SHX6_2 = false
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  if not SHX3_2 then
    SHX3_2 = GiveWeaponToPed
    SHX4_2 = SHX0_2
    SHX5_2 = SHX2_2
    SHX6_2 = SHX0_1.defaultWeaponAmmo
    if not SHX6_2 then
      SHX6_2 = 250
    end
    SHX7_2 = false
    SHX8_2 = true
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  end
  SHX3_2 = SetCurrentPedWeapon
  SHX4_2 = SHX0_2
  SHX5_2 = SHX2_2
  SHX6_2 = true
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = SetPedInfiniteAmmo
  SHX4_2 = SHX0_2
  SHX5_2 = true
  SHX6_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
end
function SHX45_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  if not SHX0_2 then
    SHX2_2 = PlayerPedId
    SHX2_2 = SHX2_2()
    SHX0_2 = SHX2_2
  end
  if SHX1_2 and "" ~= SHX1_2 then
    SHX2_2 = SetPedInfiniteAmmo
    SHX3_2 = SHX0_2
    SHX4_2 = false
    SHX5_2 = GetHashKey
    SHX6_2 = SHX1_2
    SHX5_2, SHX6_2 = SHX5_2(SHX6_2)
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  end
  SHX2_2 = SetPedInfiniteAmmoClip
  SHX3_2 = SHX0_2
  SHX4_2 = false
  SHX2_2(SHX3_2, SHX4_2)
end
function SHX46_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = PlayerId
  SHX0_2 = SHX0_2()
  SHX1_2 = DisablePlayerFiring
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = DisableControlAction
  SHX2_2 = 0
  SHX3_2 = 24
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = DisableControlAction
  SHX2_2 = 0
  SHX3_2 = 25
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = DisableControlAction
  SHX2_2 = 0
  SHX3_2 = 37
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = DisableControlAction
  SHX2_2 = 0
  SHX3_2 = 47
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = DisableControlAction
  SHX2_2 = 0
  SHX3_2 = 58
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = DisableControlAction
  SHX2_2 = 0
  SHX3_2 = 140
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = DisableControlAction
  SHX2_2 = 0
  SHX3_2 = 141
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = DisableControlAction
  SHX2_2 = 0
  SHX3_2 = 142
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = DisableControlAction
  SHX2_2 = 0
  SHX3_2 = 257
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = DisableControlAction
  SHX2_2 = 0
  SHX3_2 = 263
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
end
function SHX47_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX19_1.preRoundLockActive
  if SHX0_2 then
    return
  end
  SHX19_1.preRoundLockActive = true
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = FreezeEntityPosition
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SHX19_1.hopOutVehicle
  if SHX1_2 then
    SHX1_2 = DoesEntityExist
    SHX2_2 = SHX19_1.hopOutVehicle
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = FreezeEntityPosition
      SHX2_2 = SHX19_1.hopOutVehicle
      SHX3_2 = true
      SHX1_2(SHX2_2, SHX3_2)
    end
  end
  SHX1_2 = SHX19_1.preRoundLockTickRunning
  if SHX1_2 then
    return
  end
  SHX19_1.preRoundLockTickRunning = true
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.CreateThread
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    while true do
      SHX0_3 = SHX19_1.preRoundLockActive
      if not SHX0_3 then
        break
      end
      SHX0_3 = SHX46_1
      SHX0_3()
      SHX0_3 = Wait
      SHX1_3 = 0
      SHX0_3(SHX1_3)
    end
    SHX19_1.preRoundLockTickRunning = false
  end
  SHX1_2(SHX2_2)
end
function SHX48_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX19_1.preRoundLockActive
  if not SHX0_2 then
    return
  end
  SHX19_1.preRoundLockActive = false
  SHX0_2 = FreezeEntityPosition
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SHX19_1.hopOutVehicle
  if SHX0_2 then
    SHX0_2 = DoesEntityExist
    SHX1_2 = SHX19_1.hopOutVehicle
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      SHX0_2 = FreezeEntityPosition
      SHX1_2 = SHX19_1.hopOutVehicle
      SHX2_2 = false
      SHX0_2(SHX1_2, SHX2_2)
    end
  end
  SHX0_2 = SHX19_1.combat
  SHX0_2 = SHX0_2.ctx
  if SHX0_2 then
    SHX0_2 = SHX19_1.combat
    SHX0_2 = SHX0_2.ctx
    SHX0_2 = SHX0_2.weaponModel
    if SHX0_2 then
      SHX0_2 = SHX44_1
      SHX1_2 = PlayerPedId
      SHX1_2 = SHX1_2()
      SHX2_2 = SHX19_1.combat
      SHX2_2 = SHX2_2.ctx
      SHX2_2 = SHX2_2.weaponModel
      SHX0_2(SHX1_2, SHX2_2)
    end
  end
end
function SHX49_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX19_1.combat
  SHX2_2.ctx = SHX0_2
  SHX2_2 = SHX0_2.clearSpectator
  if SHX2_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.setEventSpectatorMode
    SHX3_2 = false
    SHX2_2(SHX3_2)
    SHX2_2 = PlayerPedId
    SHX2_2 = SHX2_2()
    SHX1_2 = SHX2_2
  end
  SHX2_2 = SHX19_1.hopOutVehicle
  SHX3_2 = SHX0_2.worldMode
  SHX3_2 = SHX2_2 or SHX3_2
  if SHX3_2 and SHX2_2 then
    SHX3_2 = DoesEntityExist
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      SHX3_2 = GetVehiclePedIsIn
      SHX4_2 = SHX1_2
      SHX5_2 = false
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
      SHX3_2 = SHX3_2 == SHX2_2
    end
  end
  SHX4_2 = SHX0_2.spawn
  if SHX4_2 then
    SHX4_2 = SHX0_2.clearSpectator
    if SHX4_2 and not SHX3_2 then
      SHX4_2 = IsEntityDead
      SHX5_2 = SHX1_2
      SHX4_2 = SHX4_2(SHX5_2)
      if SHX4_2 then
        SHX4_2 = NetworkResurrectLocalPlayer
        SHX5_2 = SHX0_2.spawn
        SHX5_2 = SHX5_2.x
        SHX6_2 = SHX0_2.spawn
        SHX6_2 = SHX6_2.y
        SHX7_2 = SHX0_2.spawn
        SHX7_2 = SHX7_2.z
        SHX8_2 = SHX0_2.spawn
        SHX8_2 = SHX8_2.w
        if not SHX8_2 then
          SHX8_2 = 0.0
        end
        SHX9_2 = true
        SHX10_2 = false
        SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
        SHX4_2 = SetPlayerInvincible
        SHX5_2 = PlayerId
        SHX5_2 = SHX5_2()
        SHX6_2 = false
        SHX4_2(SHX5_2, SHX6_2)
        SHX4_2 = PlayerPedId
        SHX4_2 = SHX4_2()
        SHX1_2 = SHX4_2
      end
      SHX4_2 = SetEntityCoords
      SHX5_2 = SHX1_2
      SHX6_2 = SHX0_2.spawn
      SHX6_2 = SHX6_2.x
      SHX7_2 = SHX0_2.spawn
      SHX7_2 = SHX7_2.y
      SHX8_2 = SHX0_2.spawn
      SHX8_2 = SHX8_2.z
      SHX9_2 = false
      SHX10_2 = false
      SHX11_2 = false
      SHX12_2 = false
      SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX4_2 = SetEntityHeading
      SHX5_2 = SHX1_2
      SHX6_2 = SHX0_2.spawn
      SHX6_2 = SHX6_2.w
      if not SHX6_2 then
        SHX6_2 = 0.0
      end
      SHX4_2(SHX5_2, SHX6_2)
      SHX4_2 = PlayerPedId
      SHX4_2 = SHX4_2()
      SHX1_2 = SHX4_2
  end
  else
    SHX4_2 = IsEntityDead
    SHX5_2 = SHX1_2
    SHX4_2 = SHX4_2(SHX5_2)
    if SHX4_2 then
      SHX4_2 = SHX0_2.spawn
      SHX5_2 = nil
      SHX6_2 = nil
      SHX7_2 = nil
      SHX8_2 = nil
      if SHX4_2 then
        SHX9_2 = SHX4_2.x
        SHX10_2 = SHX4_2.y
        SHX11_2 = SHX4_2.z
        SHX12_2 = SHX4_2.w
        SHX8_2 = SHX12_2 or SHX8_2
        if not SHX12_2 then
          SHX8_2 = 0.0
        end
        SHX7_2 = SHX11_2
        SHX6_2 = SHX10_2
        SHX5_2 = SHX9_2
      else
        SHX9_2 = GetEntityCoords
        SHX10_2 = SHX1_2
        SHX9_2 = SHX9_2(SHX10_2)
        SHX10_2 = SHX9_2.x
        SHX11_2 = SHX9_2.y
        SHX12_2 = SHX9_2.z
        SHX13_2 = GetEntityHeading
        SHX14_2 = SHX1_2
        SHX13_2 = SHX13_2(SHX14_2)
        SHX8_2 = SHX13_2
        SHX7_2 = SHX12_2
        SHX6_2 = SHX11_2
        SHX5_2 = SHX10_2
      end
      SHX9_2 = NetworkResurrectLocalPlayer
      SHX10_2 = SHX5_2
      SHX11_2 = SHX6_2
      SHX12_2 = SHX7_2
      SHX13_2 = SHX8_2
      SHX14_2 = true
      SHX15_2 = false
      SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
      SHX9_2 = SetPlayerInvincible
      SHX10_2 = PlayerId
      SHX10_2 = SHX10_2()
      SHX11_2 = false
      SHX9_2(SHX10_2, SHX11_2)
      SHX9_2 = PlayerPedId
      SHX9_2 = SHX9_2()
      SHX1_2 = SHX9_2
    end
  end
  if not SHX3_2 then
    SHX4_2 = ClearPedTasksImmediately
    SHX5_2 = SHX1_2
    SHX4_2(SHX5_2)
  end
  SHX4_2 = ClearPedBloodDamage
  SHX5_2 = SHX1_2
  SHX4_2(SHX5_2)
  SHX4_2 = 200
  SHX5_2 = SetEntityMaxHealth
  SHX6_2 = SHX1_2
  SHX7_2 = SHX4_2
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = SetEntityHealth
  SHX6_2 = SHX1_2
  SHX7_2 = SHX4_2
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = SHX0_2.useArmour
  if SHX5_2 then
    SHX5_2 = SetPedArmour
    SHX6_2 = SHX1_2
    SHX7_2 = 100
    SHX5_2(SHX6_2, SHX7_2)
  else
    SHX5_2 = SetPedArmour
    SHX6_2 = SHX1_2
    SHX7_2 = 0
    SHX5_2(SHX6_2, SHX7_2)
  end
  SHX5_2 = SetPlayerHealthRechargeMultiplier
  SHX6_2 = PlayerId
  SHX6_2 = SHX6_2()
  SHX7_2 = 0.0
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = SetPlayerWeaponDamageModifier
  SHX6_2 = PlayerId
  SHX6_2 = SHX6_2()
  SHX7_2 = 1.0
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = SetPlayerWeaponDefenseModifier
  SHX6_2 = PlayerId
  SHX6_2 = SHX6_2()
  SHX7_2 = 1.0
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = SetPlayerMeleeWeaponDamageModifier
  SHX6_2 = PlayerId
  SHX6_2 = SHX6_2()
  SHX7_2 = 1.0
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = SetEntityProofs
  SHX6_2 = SHX1_2
  SHX7_2 = false
  SHX8_2 = false
  SHX9_2 = false
  SHX10_2 = false
  SHX11_2 = false
  SHX12_2 = false
  SHX13_2 = false
  SHX14_2 = false
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX5_2 = SHX41_1
  SHX6_2 = SHX0_2.team
  SHX7_2 = SHX0_2.isFFA
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = TriggerEvent
  SHX6_2 = "259d5b120c"
  SHX5_2(SHX6_2)
  SHX5_2 = SetCanAttackFriendly
  SHX6_2 = SHX1_2
  SHX7_2 = false
  SHX8_2 = false
  SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = SetPlayerCanDoDriveBy
  SHX6_2 = PlayerId
  SHX6_2 = SHX6_2()
  SHX7_2 = SHX0_2.worldMode
  SHX7_2 = true == SHX7_2
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = SHX0_2.disableCoverPeek
  if SHX5_2 then
    SHX5_2 = SetPlayerCanUseCover
    SHX6_2 = PlayerId
    SHX6_2 = SHX6_2()
    SHX7_2 = false
    SHX5_2(SHX6_2, SHX7_2)
    SHX5_2 = SetPedConfigFlag
    SHX6_2 = SHX1_2
    SHX7_2 = 427
    SHX8_2 = false
    SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  else
    SHX5_2 = SetPlayerCanUseCover
    SHX6_2 = PlayerId
    SHX6_2 = SHX6_2()
    SHX7_2 = true
    SHX5_2(SHX6_2, SHX7_2)
  end
  SHX5_2 = SetPedPathCanUseLadders
  SHX6_2 = SHX1_2
  SHX7_2 = false
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = RefillAmmoInstantly
  SHX6_2 = SHX1_2
  SHX5_2(SHX6_2)
  SHX5_2 = SHX0_2.weaponModel
  if SHX5_2 then
    SHX5_2 = SHX44_1
    SHX6_2 = SHX1_2
    SHX7_2 = SHX0_2.weaponModel
    SHX5_2(SHX6_2, SHX7_2)
  end
  SHX5_2 = SHX19_1.combat
  SHX6_2 = SHX43_1
  SHX6_2 = SHX6_2()
  SHX5_2.fingerprint = SHX6_2
  SHX5_2 = TriggerServerEvent
  SHX6_2 = "27d78c6395"
  SHX7_2 = SHX0_2.matchId
  SHX8_2 = SHX19_1.combat
  SHX8_2 = SHX8_2.fingerprint
  SHX5_2(SHX6_2, SHX7_2, SHX8_2)
end
SHX50_1 = CMG
function SHX51_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX19_1.fighting
  return SHX0_2
end
SHX50_1.inArena = SHX51_1
SHX50_1 = CMG
function SHX51_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX19_1.warmup
  SHX0_2 = nil ~= SHX0_2
  return SHX0_2
end
SHX50_1.inArenaWarmup = SHX51_1
SHX50_1 = CMG
function SHX51_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX19_1.preview
  return SHX0_2
end
SHX50_1.inArenaMapPreview = SHX51_1
SHX50_1 = CMG
function SHX51_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = SHX19_1.match
  if not SHX0_2 then
    SHX0_2 = {}
    return SHX0_2
  end
  SHX0_2 = {}
  SHX1_2 = pairs
  SHX2_2 = SHX19_1.match
  SHX2_2 = SHX2_2.players
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.alive
    if false ~= SHX7_2 then
      SHX7_2 = #SHX0_2
      SHX7_2 = SHX7_2 + 1
      SHX8_2 = {}
      SHX8_2.source = SHX5_2
      SHX9_2 = SHX6_2.team
      SHX8_2.team = SHX9_2
      SHX9_2 = SHX6_2.name
      SHX8_2.name = SHX9_2
      SHX8_2.alive = true
      SHX0_2[SHX7_2] = SHX8_2
    end
  end
  return SHX0_2
end
SHX50_1.getPlayersInWager = SHX51_1
SHX50_1 = CMG
function SHX51_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX19_1.match
  if not SHX0_2 then
    return
  end
  SHX0_2 = GetPlayerServerId
  SHX1_2 = PlayerId
  SHX1_2 = SHX1_2()
  SHX0_2 = SHX0_2(SHX1_2)
  SHX1_2 = SHX19_1.match
  SHX1_2 = SHX1_2.players
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX1_2 = SHX19_1.match
    SHX1_2 = SHX1_2.players
    SHX1_2 = SHX1_2[SHX0_2]
    SHX1_2.alive = false
  end
end
SHX50_1.markArenaPlayerDead = SHX51_1
SHX50_1 = CMG
function SHX51_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX19_1.spectate
  SHX0_2 = nil ~= SHX0_2
  return SHX0_2
end
SHX50_1.isArenaSpectating = SHX51_1
SHX50_1 = CMG
function SHX51_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX19_1.lastWagerEndedAt
  if SHX0_2 > 0 then
    SHX0_2 = GetGameTimer
    SHX0_2 = SHX0_2()
    SHX1_2 = SHX19_1.lastWagerEndedAt
    SHX0_2 = SHX0_2 - SHX1_2
    SHX1_2 = SHX10_1
    if SHX0_2 < SHX1_2 then
      SHX0_2 = true
      return SHX0_2
    end
  end
  SHX0_2 = SHX19_1.fighting
  if not SHX0_2 then
    SHX0_2 = SHX19_1.warmup
    SHX0_2 = nil ~= SHX0_2
  end
  return SHX0_2
end
SHX50_1.shouldSuppressCombatTimer = SHX51_1
SHX50_1 = CMG
function SHX51_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX19_1.fighting
  if not SHX0_2 then
    SHX0_2 = SHX19_1.warmup
    SHX0_2 = nil ~= SHX0_2
  end
  return SHX0_2
end
SHX50_1.shouldSkipSavedPosition = SHX51_1
SHX50_1 = CMG
function SHX51_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX7_1
  return SHX0_2
end
SHX50_1.getArenaSpectatePedOffsetZ = SHX51_1
SHX50_1 = CMG
function SHX51_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX19_1.spectate
  if SHX0_2 then
    SHX0_2 = SHX19_1.spectate
    SHX0_2 = SHX0_2.players
    if SHX0_2 then
      goto SHX_LABEL_11
    end
  end
  SHX0_2 = {}
  return SHX0_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_11:: outside nested blocks until all 'goto SHX_LABEL_11' can see it
  ::SHX_LABEL_11::
  SHX0_2 = SHX19_1.spectate
  SHX0_2 = SHX0_2.players
  return SHX0_2
end
SHX50_1.getArenaSpectatePlayers = SHX51_1
SHX50_1 = CMG
function SHX51_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX19_1.match
  if not SHX1_2 then
    SHX1_2 = nil
    return SHX1_2
  end
  SHX1_2 = SHX19_1.match
  SHX1_2 = SHX1_2.flags
  SHX1_2 = SHX1_2[SHX0_2]
  return SHX1_2
end
SHX50_1.getCurrentWagerFlag = SHX51_1
SHX50_1 = 0
SHX51_1 = CMG
function SHX52_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX50_1
  SHX0_2 = SHX0_2 > 0
  return SHX0_2
end
SHX51_1.isAtArenaWagerHub = SHX52_1
function SHX51_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX50_1
  SHX0_2 = SHX0_2 + 1
  SHX50_1 = SHX0_2
end
function SHX52_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = math
  SHX0_2 = SHX0_2.max
  SHX1_2 = 0
  SHX2_2 = SHX50_1
  SHX2_2 = SHX2_2 - 1
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  SHX50_1 = SHX0_2
  SHX0_2 = SHX36_1
  SHX0_2()
end
function SHX53_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2
  SHX0_2 = ipairs
  SHX1_2 = SHX0_1.wagerMarkers
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX5_2.blip
    if SHX6_2 then
      SHX6_2 = tCMG
      SHX6_2 = SHX6_2.addBlip
      SHX7_2 = SHX5_2.coords
      SHX7_2 = SHX7_2.x
      SHX8_2 = SHX5_2.coords
      SHX8_2 = SHX8_2.y
      SHX9_2 = SHX5_2.coords
      SHX9_2 = SHX9_2.z
      SHX10_2 = SHX5_2.blip
      SHX10_2 = SHX10_2.sprite
      if not SHX10_2 then
        SHX10_2 = 437
      end
      SHX11_2 = SHX5_2.blip
      SHX11_2 = SHX11_2.colour
      SHX12_2 = SHX5_2.label
      SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    end
    SHX6_2 = tCMG
    SHX6_2 = SHX6_2.addMarker
    SHX7_2 = SHX5_2.coords
    SHX7_2 = SHX7_2.x
    SHX8_2 = SHX5_2.coords
    SHX8_2 = SHX8_2.y
    SHX9_2 = SHX5_2.coords
    SHX9_2 = SHX9_2.z
    SHX9_2 = SHX9_2 - 1.0
    SHX10_2 = 5.5
    SHX11_2 = 5.5
    SHX12_2 = 2.291666666666667
    SHX13_2 = 74
    SHX14_2 = 144
    SHX15_2 = 245
    SHX16_2 = 110
    SHX17_2 = 150
    SHX18_2 = 1
    SHX19_2 = false
    SHX20_2 = false
    SHX21_2 = false
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
    SHX6_2 = 0
    function SHX7_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
      SHX0_3 = SHX19_1.fighting
      if not SHX0_3 then
        SHX0_3 = SHX19_1.spectate
        if not SHX0_3 then
          goto SHX_LABEL_8
        end
      end
      return
      -- [FIX IF ERROR] Move ::SHX_LABEL_8:: outside nested blocks until all 'goto SHX_LABEL_8' can see it
      ::SHX_LABEL_8::
      SHX0_3 = SHX5_2.permission
      if SHX0_3 then
        SHX0_3 = CMG
        SHX0_3 = SHX0_3.hasClientPermission
        SHX1_3 = SHX5_2.permission
        SHX0_3 = SHX0_3(SHX1_3)
        if not SHX0_3 then
          return
        end
      end
      SHX0_3 = GetGameTimer
      SHX0_3 = SHX0_3()
      SHX1_3 = SHX6_2
      SHX1_3 = SHX0_3 - SHX1_3
      SHX2_3 = 2000
      if SHX1_3 > SHX2_3 then
        SHX1_3 = BeginTextCommandDisplayHelp
        SHX2_3 = "STRING"
        SHX1_3(SHX2_3)
        SHX1_3 = AddTextComponentSubstringPlayerName
        SHX2_3 = SHX11_1
        SHX3_3 = "client.hubOpenMenu"
        SHX2_3, SHX3_3, SHX4_3, SHX5_3 = SHX2_3(SHX3_3)
        SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3)
        SHX1_3 = EndTextCommandDisplayHelp
        SHX2_3 = 0
        SHX3_3 = false
        SHX4_3 = false
        SHX5_3 = -1
        SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3)
        SHX6_2 = SHX0_3
      end
      SHX1_3 = IsControlJustPressed
      SHX2_3 = 0
      SHX3_3 = 38
      SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
      if SHX1_3 then
        SHX1_3 = SHX35_1
        SHX1_3()
      end
    end
    SHX8_2 = CMG
    SHX8_2 = SHX8_2.createArea
    SHX9_2 = "arena_hub_"
    SHX10_2 = SHX5_2.id
    SHX9_2 = SHX9_2 .. SHX10_2
    SHX10_2 = SHX5_2.coords
    SHX11_2 = 2.9
    SHX12_2 = 5.0
    SHX13_2 = SHX51_1
    SHX14_2 = SHX52_1
    SHX15_2 = SHX7_2
    SHX16_2 = nil
    SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
    SHX8_2 = SHX5_2.spectatorMarkers
    if SHX8_2 then
      SHX8_2 = ipairs
      SHX9_2 = SHX5_2.spectatorMarkers
      SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX8_2(SHX9_2)
      for SHX12_2, SHX13_2 in SHX8_2, SHX9_2, SHX10_2, SHX11_2 do
        SHX14_2 = tCMG
        SHX14_2 = SHX14_2.addMarker
        SHX15_2 = SHX13_2.x
        SHX16_2 = SHX13_2.y
        SHX17_2 = SHX13_2.z
        SHX17_2 = SHX17_2 - 1.0
        SHX18_2 = 3.5
        SHX19_2 = 3.5
        SHX20_2 = 1.4583333333333335
        SHX21_2 = 108
        SHX22_2 = 164
        SHX23_2 = 250
        SHX24_2 = 90
        SHX25_2 = 120
        SHX26_2 = 1
        SHX27_2 = false
        SHX28_2 = false
        SHX29_2 = false
        SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2)
        SHX14_2 = 0
        function SHX15_2()
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
          SHX0_3 = SHX19_1.fighting
          if not SHX0_3 then
            SHX0_3 = SHX19_1.spectate
            if not SHX0_3 then
              goto SHX_LABEL_8
            end
          end
          return
          -- [FIX IF ERROR] Move ::SHX_LABEL_8:: outside nested blocks until all 'goto SHX_LABEL_8' can see it
          ::SHX_LABEL_8::
          SHX0_3 = SHX5_2.permission
          if SHX0_3 then
            SHX0_3 = CMG
            SHX0_3 = SHX0_3.hasClientPermission
            SHX1_3 = SHX5_2.permission
            SHX0_3 = SHX0_3(SHX1_3)
            if not SHX0_3 then
              return
            end
          end
          SHX0_3 = GetGameTimer
          SHX0_3 = SHX0_3()
          SHX1_3 = SHX14_2
          SHX1_3 = SHX0_3 - SHX1_3
          SHX2_3 = 2000
          if SHX1_3 > SHX2_3 then
            SHX1_3 = BeginTextCommandDisplayHelp
            SHX2_3 = "STRING"
            SHX1_3(SHX2_3)
            SHX1_3 = AddTextComponentSubstringPlayerName
            SHX2_3 = SHX11_1
            SHX3_3 = "client.spectateMarkerOpen"
            SHX2_3, SHX3_3, SHX4_3, SHX5_3 = SHX2_3(SHX3_3)
            SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3)
            SHX1_3 = EndTextCommandDisplayHelp
            SHX2_3 = 0
            SHX3_3 = false
            SHX4_3 = false
            SHX5_3 = -1
            SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3)
            SHX14_2 = SHX0_3
          end
          SHX1_3 = IsControlJustPressed
          SHX2_3 = 0
          SHX3_3 = 38
          SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
          if SHX1_3 then
            SHX1_3 = SHX35_1
            SHX1_3()
          end
        end
        SHX16_2 = CMG
        SHX16_2 = SHX16_2.createArea
        SHX17_2 = "arena_spectate_"
        SHX18_2 = SHX5_2.id
        SHX19_2 = "_"
        SHX20_2 = SHX12_2
        SHX17_2 = SHX17_2 .. SHX18_2 .. SHX19_2 .. SHX20_2
        SHX18_2 = SHX13_2
        SHX19_2 = 2.2
        SHX20_2 = 4.0
        SHX21_2 = SHX51_1
        SHX22_2 = SHX52_1
        SHX23_2 = SHX15_2
        SHX24_2 = nil
        SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
      end
    end
  end
end
function SHX54_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.refreshNearbyMarkers
  SHX0_2()
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.forceNearbyAreasReload
  SHX0_2()
end
SHX55_1 = Citizen
SHX55_1 = SHX55_1.CreateThread
function SHX56_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX53_1
  SHX0_2()
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.createNoVehicleZone
  SHX1_2 = SHX0_1.arenaCentre
  SHX2_2 = 31.0
  SHX3_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
end
SHX55_1(SHX56_1)
SHX55_1 = nil
SHX56_1 = vector2
SHX57_1 = 8.0
SHX58_1 = 8.0
SHX56_1 = SHX56_1(SHX57_1, SHX58_1)
SHX57_1 = 0
function SHX58_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX1_2 = SHX55_1
  if not SHX1_2 then
    SHX1_2 = Scaleform
    SHX2_2 = "mp_mission_name_freemode"
    SHX1_2 = SHX1_2(SHX2_2)
  end
  SHX55_1 = SHX1_2
  SHX2_2 = SHX1_2.RunFunction
  SHX3_2 = "SET_MISSION_INFO"
  SHX4_2 = {}
  SHX5_2 = ""
  SHX6_2 = SHX11_1
  SHX7_2 = "client.hubMarkerTitle"
  SHX6_2 = SHX6_2(SHX7_2)
  SHX7_2 = ""
  SHX8_2 = ""
  SHX9_2 = ""
  SHX10_2 = ""
  SHX11_2 = SHX0_2
  SHX12_2 = "0"
  SHX13_2 = ""
  SHX14_2 = ""
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX4_2[4] = SHX8_2
  SHX4_2[5] = SHX9_2
  SHX4_2[6] = SHX10_2
  SHX4_2[7] = SHX11_2
  SHX4_2[8] = SHX12_2
  SHX4_2[9] = SHX13_2
  SHX4_2[10] = SHX14_2
  SHX2_2(SHX3_2, SHX4_2)
  return SHX1_2
end
function SHX59_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX55_1
  if not SHX0_2 then
    SHX0_2 = SHX58_1
    SHX1_2 = SHX57_1
    SHX0_2(SHX1_2)
  end
  SHX0_2 = SHX55_1
  return SHX0_2
end
SHX60_1 = RegisterNetEvent
SHX61_1 = "e0468ae598"
function SHX62_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = tonumber
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = 0
  end
  SHX57_1 = SHX1_2
  SHX1_2 = SHX58_1
  SHX2_2 = SHX57_1
  SHX1_2(SHX2_2)
end
SHX60_1(SHX61_1, SHX62_1)
function SHX60_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = SHX1_2 - SHX0_2
  SHX3_2 = SHX2_2.x
  if SHX3_2 > 0.0 then
    SHX3_2 = math
    SHX3_2 = SHX3_2.atan
    SHX4_2 = SHX2_2.y
    SHX5_2 = SHX2_2.x
    SHX4_2 = SHX4_2 / SHX5_2
    SHX3_2 = SHX3_2(SHX4_2)
    SHX4_2 = math
    SHX4_2 = SHX4_2.pi
    SHX5_2 = 180.0
    SHX4_2 = SHX5_2 / SHX4_2
    SHX3_2 = SHX3_2 * SHX4_2
    SHX4_2 = 270.0
    SHX3_2 = SHX4_2 - SHX3_2
    return SHX3_2
  else
    SHX3_2 = SHX2_2.x
    if SHX3_2 < 0.0 then
      SHX3_2 = math
      SHX3_2 = SHX3_2.atan
      SHX4_2 = SHX2_2.y
      SHX5_2 = SHX2_2.x
      SHX5_2 = -SHX5_2
      SHX4_2 = SHX4_2 / SHX5_2
      SHX3_2 = SHX3_2(SHX4_2)
      SHX4_2 = math
      SHX4_2 = SHX4_2.pi
      SHX5_2 = 180.0
      SHX4_2 = SHX5_2 / SHX4_2
      SHX3_2 = SHX3_2 * SHX4_2
      SHX3_2 = SHX3_2 + 90.0
      return SHX3_2
    end
  end
  SHX3_2 = 0.0
  return SHX3_2
end
SHX61_1 = Citizen
SHX61_1 = SHX61_1.CreateThread
function SHX62_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  while true do
    SHX0_2 = 1000
    SHX1_2 = SHX19_1.fighting
    if not SHX1_2 then
      SHX1_2 = SHX19_1.spectate
      if not SHX1_2 then
        SHX1_2 = SHX19_1.warmup
        if not SHX1_2 then
          SHX1_2 = GetEntityCoords
          SHX2_2 = PlayerPedId
          SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2 = SHX2_2()
          SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
          SHX2_2 = nil
          SHX3_2 = ipairs
          SHX4_2 = SHX0_1.wagerMarkers
          SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
          for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
            SHX9_2 = SHX8_2.coords
            SHX9_2 = SHX1_2 - SHX9_2
            SHX9_2 = #SHX9_2
            if SHX9_2 < 25.0 then
              SHX0_2 = 0
              if not SHX2_2 then
                SHX9_2 = SHX59_1
                SHX9_2 = SHX9_2()
                SHX2_2 = SHX9_2
              end
              SHX9_2 = vector3
              SHX10_2 = SHX8_2.coords
              SHX10_2 = SHX10_2.x
              SHX11_2 = SHX8_2.coords
              SHX11_2 = SHX11_2.y
              SHX12_2 = SHX8_2.coords
              SHX12_2 = SHX12_2.z
              SHX12_2 = SHX12_2 - 0.5
              SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
              SHX10_2 = SHX60_1
              SHX11_2 = SHX9_2
              SHX12_2 = SHX1_2
              SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
              SHX11_2 = SHX2_2.Render3D
              SHX12_2 = SHX9_2
              SHX13_2 = vector3
              SHX14_2 = 0.0
              SHX15_2 = 0.0
              SHX16_2 = SHX10_2
              SHX13_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2)
              SHX14_2 = SHX56_1
              SHX11_2(SHX12_2, SHX13_2, SHX14_2)
            end
          end
        end
      end
    end
    SHX1_2 = Wait
    SHX2_2 = SHX0_2
    SHX1_2(SHX2_2)
  end
end
SHX61_1(SHX62_1)
SHX61_1 = CMG
SHX61_1 = SHX61_1.uiRegisterCallback
SHX62_1 = "arenaClose"
function SHX63_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX36_1
  SHX0_2()
end
SHX61_1(SHX62_1, SHX63_1)
SHX61_1 = CMG
SHX61_1 = SHX61_1.uiRegisterCallback
SHX62_1 = "arenaRequestSync"
function SHX63_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "37d8fd04c4"
  SHX0_2(SHX1_2)
end
SHX61_1(SHX62_1, SHX63_1)
SHX61_1 = CMG
SHX61_1 = SHX61_1.uiRegisterCallback
SHX62_1 = "arenaRequestLeaderboard"
function SHX63_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "2f0b74a153"
  SHX0_2(SHX1_2)
end
SHX61_1(SHX62_1, SHX63_1)
SHX61_1 = CMG
SHX61_1 = SHX61_1.uiRegisterCallback
SHX62_1 = "arenaRequestTournamentHistory"
function SHX63_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "0cd5c10b96"
  SHX0_2(SHX1_2)
end
SHX61_1(SHX62_1, SHX63_1)
SHX61_1 = CMG
SHX61_1 = SHX61_1.uiRegisterCallback
SHX62_1 = "arenaRequestTournamentHistoryDetail"
function SHX63_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "62ee4806be"
  SHX3_2 = SHX0_2 or SHX3_2
  if SHX0_2 then
    SHX3_2 = SHX0_2.id
  end
  SHX1_2(SHX2_2, SHX3_2)
end
SHX61_1(SHX62_1, SHX63_1)
SHX61_1 = CMG
SHX61_1 = SHX61_1.uiRegisterCallback
SHX62_1 = "arenaSaveCreatePrefs"
function SHX63_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX29_1
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
SHX61_1(SHX62_1, SHX63_1)
SHX61_1 = CMG
SHX61_1 = SHX61_1.uiRegisterCallback
SHX62_1 = "arenaPropose"
function SHX63_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX29_1
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "e37d8c11ce"
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
end
SHX61_1(SHX62_1, SHX63_1)
SHX61_1 = CMG
SHX61_1 = SHX61_1.uiRegisterCallback
SHX62_1 = "arenaSaveMapsPrefs"
function SHX63_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX33_1
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
SHX61_1(SHX62_1, SHX63_1)
SHX61_1 = CMG
SHX61_1 = SHX61_1.uiRegisterCallback
SHX62_1 = "arenaJoin"
function SHX63_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "ff4c695c54"
  SHX3_2 = SHX0_2.lobbyId
  SHX4_2 = SHX0_2.team
  SHX5_2 = SHX0_2.password
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX61_1(SHX62_1, SHX63_1)
SHX61_1 = CMG
SHX61_1 = SHX61_1.uiRegisterCallback
SHX62_1 = "arenaLeave"
function SHX63_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "da3a5c87e9"
  SHX0_2(SHX1_2)
end
SHX61_1(SHX62_1, SHX63_1)
SHX61_1 = CMG
SHX61_1 = SHX61_1.uiRegisterCallback
SHX62_1 = "arenaSetReady"
function SHX63_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "982370d572"
  SHX3_2 = SHX0_2 or SHX3_2
  if SHX0_2 then
    SHX3_2 = SHX0_2.ready
    SHX3_2 = true == SHX3_2
  end
  SHX1_2(SHX2_2, SHX3_2)
end
SHX61_1(SHX62_1, SHX63_1)
SHX61_1 = CMG
SHX61_1 = SHX61_1.uiRegisterCallback
SHX62_1 = "arenaSetAllowUneven"
function SHX63_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "5cfc0fc0db"
  SHX3_2 = SHX0_2 or SHX3_2
  if SHX0_2 then
    SHX3_2 = SHX0_2.flag
    SHX3_2 = true == SHX3_2
  end
  SHX1_2(SHX2_2, SHX3_2)
end
SHX61_1(SHX62_1, SHX63_1)
SHX61_1 = CMG
SHX61_1 = SHX61_1.uiRegisterCallback
SHX62_1 = "arenaKick"
function SHX63_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "960630ff5b"
  SHX3_2 = SHX0_2.targetUid
  SHX1_2(SHX2_2, SHX3_2)
end
SHX61_1(SHX62_1, SHX63_1)
SHX61_1 = CMG
SHX61_1 = SHX61_1.uiRegisterCallback
SHX62_1 = "arenaRandomiseTeams"
function SHX63_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "f23608a75f"
  SHX0_2(SHX1_2)
end
SHX61_1(SHX62_1, SHX63_1)
SHX61_1 = CMG
SHX61_1 = SHX61_1.uiRegisterCallback
SHX62_1 = "arenaCancel"
function SHX63_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "51e5dd4f86"
  SHX0_2(SHX1_2)
end
SHX61_1(SHX62_1, SHX63_1)
SHX61_1 = CMG
SHX61_1 = SHX61_1.uiRegisterCallback
SHX62_1 = "arenaForceStart"
function SHX63_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "ead9a2f7c1"
  SHX0_2(SHX1_2)
end
SHX61_1(SHX62_1, SHX63_1)
SHX61_1 = CMG
SHX61_1 = SHX61_1.uiRegisterCallback
SHX62_1 = "arenaStartAiTest"
function SHX63_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX29_1
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "964ff47d86"
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
end
SHX61_1(SHX62_1, SHX63_1)
SHX61_1 = CMG
SHX61_1 = SHX61_1.uiRegisterCallback
SHX62_1 = "arenaQueueRanked"
function SHX63_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "7c3f412810"
  SHX3_2 = SHX0_2 or SHX3_2
  if SHX0_2 then
    SHX3_2 = SHX0_2.mode
  end
  SHX1_2(SHX2_2, SHX3_2)
end
SHX61_1(SHX62_1, SHX63_1)
SHX61_1 = CMG
SHX61_1 = SHX61_1.uiRegisterCallback
SHX62_1 = "arenaLeaveQueue"
function SHX63_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "ad9560f394"
  SHX0_2(SHX1_2)
end
SHX61_1(SHX62_1, SHX63_1)
SHX61_1 = CMG
SHX61_1 = SHX61_1.uiRegisterCallback
SHX62_1 = "arenaSpectate"
function SHX63_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "8b568e2353"
  SHX3_2 = SHX0_2.matchId
  SHX1_2(SHX2_2, SHX3_2)
end
SHX61_1(SHX62_1, SHX63_1)
SHX61_1 = CMG
SHX61_1 = SHX61_1.uiRegisterCallback
SHX62_1 = "arenaStopSpectate"
function SHX63_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "7d900d0299"
  SHX0_2(SHX1_2)
end
SHX61_1(SHX62_1, SHX63_1)
SHX61_1 = CMG
SHX61_1 = SHX61_1.uiRegisterCallback
SHX62_1 = "arenaToggleFavourite"
function SHX63_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "0b7db7ef96"
  SHX3_2 = SHX0_2.map
  SHX1_2(SHX2_2, SHX3_2)
end
SHX61_1(SHX62_1, SHX63_1)
SHX61_1 = CMG
SHX61_1 = SHX61_1.uiRegisterCallback
SHX62_1 = "arenaCreateTournament"
function SHX63_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "cd1e60d311"
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
end
SHX61_1(SHX62_1, SHX63_1)
SHX61_1 = CMG
SHX61_1 = SHX61_1.uiRegisterCallback
SHX62_1 = "arenaStartAiTestTournament"
function SHX63_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "d2792e55c1"
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
end
SHX61_1(SHX62_1, SHX63_1)
SHX61_1 = CMG
SHX61_1 = SHX61_1.uiRegisterCallback
SHX62_1 = "arenaTournamentSignup"
function SHX63_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "ad6f1ed6de"
  SHX3_2 = SHX0_2.id
  SHX1_2(SHX2_2, SHX3_2)
end
SHX61_1(SHX62_1, SHX63_1)
SHX61_1 = CMG
SHX61_1 = SHX61_1.uiRegisterCallback
SHX62_1 = "arenaTournamentLeave"
function SHX63_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "3699f0344c"
  SHX3_2 = SHX0_2.id
  SHX1_2(SHX2_2, SHX3_2)
end
SHX61_1(SHX62_1, SHX63_1)
SHX61_1 = CMG
SHX61_1 = SHX61_1.uiRegisterCallback
SHX62_1 = "arenaTournamentReady"
function SHX63_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "7c5c6b46a5"
  SHX3_2 = SHX0_2.id
  SHX1_2(SHX2_2, SHX3_2)
end
SHX61_1(SHX62_1, SHX63_1)
SHX61_1 = CMG
SHX61_1 = SHX61_1.uiRegisterCallback
SHX62_1 = "arenaTournamentBanMap"
function SHX63_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "d37a4a5018"
  SHX3_2 = SHX0_2 or SHX3_2
  if SHX0_2 then
    SHX3_2 = SHX0_2.id
  end
  SHX4_2 = SHX0_2 or SHX4_2
  if SHX0_2 then
    SHX4_2 = SHX0_2.map
  end
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
end
SHX61_1(SHX62_1, SHX63_1)
SHX61_1 = CMG
SHX61_1 = SHX61_1.uiRegisterCallback
SHX62_1 = "arenaTeamCreate"
function SHX63_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "d852716b1b"
  SHX3_2 = SHX0_2.id
  SHX4_2 = SHX0_2.name
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
end
SHX61_1(SHX62_1, SHX63_1)
SHX61_1 = CMG
SHX61_1 = SHX61_1.uiRegisterCallback
SHX62_1 = "arenaTeamInvite"
function SHX63_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "aca0bcc361"
  SHX3_2 = SHX0_2.id
  SHX4_2 = SHX0_2.targetUid
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
end
SHX61_1(SHX62_1, SHX63_1)
SHX61_1 = CMG
SHX61_1 = SHX61_1.uiRegisterCallback
SHX62_1 = "arenaTeamAccept"
function SHX63_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "a5e84468f0"
  SHX3_2 = SHX0_2.id
  SHX1_2(SHX2_2, SHX3_2)
end
SHX61_1(SHX62_1, SHX63_1)
SHX61_1 = CMG
SHX61_1 = SHX61_1.uiRegisterCallback
SHX62_1 = "arenaTeamDecline"
function SHX63_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "3b31d48e60"
  SHX3_2 = SHX0_2.id
  SHX1_2(SHX2_2, SHX3_2)
end
SHX61_1(SHX62_1, SHX63_1)
SHX61_1 = CMG
SHX61_1 = SHX61_1.uiRegisterCallback
SHX62_1 = "arenaTeamLeave"
function SHX63_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "9b4169b569"
  SHX3_2 = SHX0_2.id
  SHX1_2(SHX2_2, SHX3_2)
end
SHX61_1(SHX62_1, SHX63_1)
SHX61_1 = CMG
SHX61_1 = SHX61_1.uiRegisterCallback
SHX62_1 = "arenaTeamKick"
function SHX63_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "9dc55ae45d"
  SHX3_2 = SHX0_2.id
  SHX4_2 = SHX0_2.targetUid
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
end
SHX61_1(SHX62_1, SHX63_1)
SHX61_1 = CMG
SHX61_1 = SHX61_1.uiRegisterCallback
SHX62_1 = "arenaStartTournament"
function SHX63_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "91edec2c38"
  SHX3_2 = SHX0_2.id
  SHX1_2(SHX2_2, SHX3_2)
end
SHX61_1(SHX62_1, SHX63_1)
SHX61_1 = CMG
SHX61_1 = SHX61_1.uiRegisterCallback
SHX62_1 = "arenaCancelTournament"
function SHX63_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "3521b0b97b"
  SHX3_2 = SHX0_2.id
  SHX1_2(SHX2_2, SHX3_2)
end
SHX61_1(SHX62_1, SHX63_1)
SHX61_1 = CMG
SHX61_1 = SHX61_1.uiRegisterCallback
SHX62_1 = "arenaJoinWarmup"
function SHX63_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "5a7f5f8b12"
  SHX0_2(SHX1_2)
end
SHX61_1(SHX62_1, SHX63_1)
SHX61_1 = CMG
SHX61_1 = SHX61_1.uiRegisterCallback
SHX62_1 = "arenaPreviewMap"
function SHX63_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "e6ed8d0b17"
  SHX3_2 = SHX0_2 or SHX3_2
  if SHX0_2 then
    SHX3_2 = SHX0_2.map
  end
  SHX1_2(SHX2_2, SHX3_2)
end
SHX61_1(SHX62_1, SHX63_1)
SHX61_1 = CMG
SHX61_1 = SHX61_1.uiRegisterCallback
SHX62_1 = "arenaForfeit"
function SHX63_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX38_1
  SHX0_2()
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "43967a02a0"
  SHX0_2(SHX1_2)
end
SHX61_1(SHX62_1, SHX63_1)
SHX61_1 = CMG
SHX61_1 = SHX61_1.uiRegisterCallback
SHX62_1 = "arenaForfeitCancel"
function SHX63_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX38_1
  SHX0_2()
end
SHX61_1(SHX62_1, SHX63_1)
SHX61_1 = CMG
SHX61_1 = SHX61_1.uiRegisterCallback
SHX62_1 = "arenaOpenSettings"
function SHX63_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX38_1
  SHX0_2()
  SHX0_2 = ActivateFrontendMenu
  SHX1_2 = GetHashKey
  SHX2_2 = "FE_MENU_VERSION_SP_PAUSE"
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = false
  SHX3_2 = -1
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
end
SHX61_1(SHX62_1, SHX63_1)
SHX61_1 = RegisterNetEvent
SHX62_1 = "c15b8fcdc0"
function SHX63_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX19_1.lastSync = SHX0_2
  SHX1_2 = SHX0_2.myRank
  SHX19_1.myRank = SHX1_2
  SHX1_2 = type
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if "table" == SHX1_2 then
    SHX1_2 = type
    SHX2_2 = SHX0_2.favourites
    SHX1_2 = SHX1_2(SHX2_2)
    if "table" == SHX1_2 then
      SHX1_2 = SHX33_1
      SHX2_2 = {}
      SHX3_2 = SHX0_2.favourites
      SHX2_2.favourites = SHX3_2
      SHX1_2(SHX2_2)
    end
  end
  SHX1_2 = SHX19_1.appOpen
  if SHX1_2 then
    SHX1_2 = SHX25_1
    SHX2_2 = "ARENA_SYNC"
    SHX3_2 = SHX0_2
    SHX1_2(SHX2_2, SHX3_2)
  end
end
SHX61_1(SHX62_1, SHX63_1)
SHX61_1 = RegisterNetEvent
SHX62_1 = "82b1a5ab63"
function SHX63_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX19_1.lobbyId = SHX0_2
end
SHX61_1(SHX62_1, SHX63_1)
SHX61_1 = RegisterNetEvent
SHX62_1 = "542eed18ed"
function SHX63_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX19_1.lobbyId = nil
  if "kicked" == SHX0_2 then
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.notify
    SHX2_2 = SHX11_1
    SHX3_2 = "client.leftLobbyRemoved"
    SHX2_2, SHX3_2 = SHX2_2(SHX3_2)
    SHX1_2(SHX2_2, SHX3_2)
  end
end
SHX61_1(SHX62_1, SHX63_1)
SHX61_1 = RegisterNetEvent
SHX62_1 = "c5774316e0"
function SHX63_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = type
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if "table" == SHX1_2 then
    SHX1_2 = SHX0_2.type
    if "bad" == SHX1_2 then
      SHX1_2 = "~r~"
      if SHX1_2 then
        goto SHX_LABEL_19
      end
    end
    SHX1_2 = SHX0_2.type
    if "good" == SHX1_2 then
      SHX1_2 = "~g~"
      if SHX1_2 then
        goto SHX_LABEL_19
      end
    end
    SHX1_2 = "~y~"
    -- [FIX IF ERROR] Move ::SHX_LABEL_19:: outside nested blocks until all 'goto SHX_LABEL_19' can see it
    ::SHX_LABEL_19::
    SHX2_2 = SHX0_2.msg
    if SHX2_2 then
      SHX2_2 = tCMG
      SHX2_2 = SHX2_2.notify
      SHX3_2 = SHX1_2
      SHX4_2 = SHX0_2.msg
      SHX3_2 = SHX3_2 .. SHX4_2
      SHX2_2(SHX3_2)
    end
    SHX2_2 = SHX19_1.appOpen
    if SHX2_2 then
      SHX2_2 = SHX25_1
      SHX3_2 = "ARENA_NOTIFY"
      SHX4_2 = SHX0_2
      SHX2_2(SHX3_2, SHX4_2)
    end
  end
end
SHX61_1(SHX62_1, SHX63_1)
SHX61_1 = SHX0_1.tournament
if SHX61_1 then
  SHX61_1 = SHX0_1.tournament
  SHX61_1 = SHX61_1.startCountdownSec
  if SHX61_1 then
    goto SHX_LABEL_418
  end
end
SHX61_1 = 300
-- [FIX IF ERROR] Move ::SHX_LABEL_418:: outside nested blocks until all 'goto SHX_LABEL_418' can see it
::SHX_LABEL_418::
function SHX62_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX1_2 = type
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if "table" ~= SHX1_2 then
    return
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getClientUserId
  SHX1_2 = SHX1_2()
  if not SHX1_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.removeHudTimer
    SHX3_2 = "arenaTournamentStart"
    SHX2_2(SHX3_2)
    return
  end
  SHX2_2 = nil
  SHX3_2 = nil
  SHX4_2 = ipairs
  SHX5_2 = SHX0_2.tournaments
  if not SHX5_2 then
    SHX5_2 = {}
  end
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
  for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    if not SHX2_2 then
      SHX10_2 = SHX9_2.serverNow
      if SHX10_2 then
        SHX2_2 = SHX9_2.serverNow
      end
    end
    SHX10_2 = SHX9_2.status
    if "signup" == SHX10_2 then
      SHX10_2 = SHX9_2.startsAt
      if SHX10_2 then
        SHX10_2 = SHX9_2.startsAt
        if SHX10_2 > 0 then
          SHX10_2 = false
          SHX11_2 = ipairs
          SHX12_2 = SHX9_2.signups
          if not SHX12_2 then
            SHX12_2 = {}
          end
          SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX11_2(SHX12_2)
          for SHX15_2, SHX16_2 in SHX11_2, SHX12_2, SHX13_2, SHX14_2 do
            SHX17_2 = SHX16_2.uid
            if SHX17_2 == SHX1_2 then
              SHX10_2 = true
              break
            end
          end
          if SHX10_2 then
            SHX11_2 = SHX2_2 or SHX11_2
            if not SHX2_2 then
              SHX11_2 = CMG
              SHX11_2 = SHX11_2.getEstimatedServerOsTime
              SHX11_2 = SHX11_2()
            end
            SHX12_2 = SHX9_2.startsAt
            SHX12_2 = SHX12_2 - SHX11_2
            if SHX12_2 > 0 then
              SHX13_2 = SHX61_1
              if SHX12_2 <= SHX13_2 and (not SHX3_2 or SHX3_2 > SHX12_2) then
                SHX3_2 = SHX12_2
              end
            end
          end
        end
      end
    end
  end
  if SHX3_2 then
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.addHudDurationTimer
    SHX5_2 = "arenaTournamentStart"
    SHX6_2 = SHX11_1
    SHX7_2 = "client.tournamentStartsIn"
    SHX6_2 = SHX6_2(SHX7_2)
    SHX7_2 = SHX3_2
    SHX8_2 = nil
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  else
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.removeHudTimer
    SHX5_2 = "arenaTournamentStart"
    SHX4_2(SHX5_2)
  end
end
SHX63_1 = RegisterNetEvent
SHX64_1 = "3c33249acd"
function SHX65_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX19_1.appOpen
  if SHX1_2 then
    SHX1_2 = SHX25_1
    SHX2_2 = "ARENA_TOURNAMENT_STATE"
    SHX3_2 = SHX0_2
    SHX1_2(SHX2_2, SHX3_2)
  end
  SHX1_2 = SHX62_1
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
SHX63_1(SHX64_1, SHX65_1)
SHX63_1 = RegisterNetEvent
SHX64_1 = "b8045c5c1d"
function SHX65_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX25_1
  SHX2_2 = "ARENA_LEADERBOARD"
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
end
SHX63_1(SHX64_1, SHX65_1)
SHX63_1 = RegisterNetEvent
SHX64_1 = "7896cbfe43"
function SHX65_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX25_1
  SHX2_2 = "ARENA_TOURNAMENT_HISTORY"
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
end
SHX63_1(SHX64_1, SHX65_1)
SHX63_1 = RegisterNetEvent
SHX64_1 = "b128d3a788"
function SHX65_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX25_1
  SHX2_2 = "ARENA_TOURNAMENT_HISTORY_DETAIL"
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
end
SHX63_1(SHX64_1, SHX65_1)
function SHX63_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = ipairs
  SHX1_2 = SHX19_1.loadedIpls
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = RemoveIpl
    SHX7_2 = SHX5_2
    SHX6_2(SHX7_2)
  end
  SHX0_2 = {}
  SHX19_1.loadedIpls = SHX0_2
  SHX0_2 = ipairs
  SHX1_2 = SHX19_1.spawnedProps
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = DoesEntityExist
    SHX7_2 = SHX5_2
    SHX6_2 = SHX6_2(SHX7_2)
    if SHX6_2 then
      SHX6_2 = DeleteEntity
      SHX7_2 = SHX5_2
      SHX6_2(SHX7_2)
    end
  end
  SHX0_2 = {}
  SHX19_1.spawnedProps = SHX0_2
  SHX0_2 = SHX19_1.hopOutVehicle
  if SHX0_2 then
    SHX0_2 = DoesEntityExist
    SHX1_2 = SHX19_1.hopOutVehicle
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      SHX0_2 = DeleteEntity
      SHX1_2 = SHX19_1.hopOutVehicle
      SHX0_2(SHX1_2)
    end
  end
  SHX19_1.hopOutVehicle = nil
end
function SHX64_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.setEventSpectatorMode
  SHX2_2 = false
  SHX1_2(SHX2_2)
  SHX1_2 = SHX19_1.spectate
  if SHX1_2 then
    SHX19_1.spectate = nil
    SHX1_2 = SHX25_1
    SHX2_2 = "ARENA_SPECTATE_STATE"
    SHX3_2 = {}
    SHX3_2.active = false
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX25_1
    SHX2_2 = "ARENA_MATCH_HUD"
    SHX3_2 = false
    SHX1_2(SHX2_2, SHX3_2)
  end
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = FreezeEntityPosition
  SHX3_2 = SHX1_2
  SHX4_2 = false
  SHX2_2(SHX3_2, SHX4_2)
  if SHX0_2 then
    SHX2_2 = SHX0_2.x
    if SHX2_2 then
      SHX2_2 = SHX0_2.y
      if SHX2_2 then
        SHX2_2 = SHX0_2.z
        if SHX2_2 then
          SHX2_2 = SetEntityCoords
          SHX3_2 = SHX1_2
          SHX4_2 = SHX0_2.x
          SHX5_2 = SHX0_2.y
          SHX6_2 = SHX0_2.z
          SHX6_2 = SHX6_2 - 1.0
          SHX7_2 = false
          SHX8_2 = false
          SHX9_2 = false
          SHX10_2 = false
          SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
          SHX2_2 = vector3
          SHX3_2 = SHX0_2.x
          SHX4_2 = SHX0_2.y
          SHX5_2 = SHX0_2.z
          SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
          SHX3_2 = GetGameTimer
          SHX3_2 = SHX3_2()
          SHX4_2 = SHX9_1
          SHX3_2 = SHX3_2 + SHX4_2
          while true do
            SHX4_2 = GetGameTimer
            SHX4_2 = SHX4_2()
            if not (SHX3_2 > SHX4_2) then
              break
            end
            SHX4_2 = PlayerPedId
            SHX4_2 = SHX4_2()
            SHX1_2 = SHX4_2
            SHX4_2 = GetEntityCoords
            SHX5_2 = SHX1_2
            SHX4_2 = SHX4_2(SHX5_2)
            SHX5_2 = SHX4_2 - SHX2_2
            SHX5_2 = #SHX5_2
            SHX6_2 = SHX8_1
            if SHX5_2 <= SHX6_2 then
              SHX5_2 = HasCollisionLoadedAroundEntity
              SHX6_2 = SHX1_2
              SHX5_2 = SHX5_2(SHX6_2)
              if SHX5_2 then
                break
              end
            end
            SHX5_2 = RequestCollisionAtCoord
            SHX6_2 = SHX0_2.x
            SHX7_2 = SHX0_2.y
            SHX8_2 = SHX0_2.z
            SHX5_2(SHX6_2, SHX7_2, SHX8_2)
            SHX5_2 = Wait
            SHX6_2 = 50
            SHX5_2(SHX6_2)
          end
      end
    end
  end
  else
    SHX2_2 = Wait
    SHX3_2 = 150
    SHX2_2(SHX3_2)
  end
  SHX2_2 = SHX24_1
  SHX2_2()
end
function SHX65_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  if not SHX0_2 then
    return
  end
  SHX1_2 = {}
  SHX2_2 = ipairs
  SHX3_2 = SHX0_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX1_2[SHX7_2] = true
  end
  SHX2_2 = {}
  SHX3_2 = ipairs
  SHX4_2 = SHX19_1.loadedIpls
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = SHX1_2[SHX8_2]
    if SHX9_2 then
      SHX9_2 = #SHX2_2
      SHX9_2 = SHX9_2 + 1
      SHX2_2[SHX9_2] = SHX8_2
    else
      SHX9_2 = RemoveIpl
      SHX10_2 = SHX8_2
      SHX9_2(SHX10_2)
    end
  end
  SHX19_1.loadedIpls = SHX2_2
  SHX3_2 = ipairs
  SHX4_2 = SHX0_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = IsIplActive
    SHX10_2 = SHX8_2
    SHX9_2 = SHX9_2(SHX10_2)
    if not SHX9_2 then
      SHX9_2 = RequestIpl
      SHX10_2 = SHX8_2
      SHX9_2(SHX10_2)
    end
    SHX9_2 = false
    SHX10_2 = ipairs
    SHX11_2 = SHX19_1.loadedIpls
    SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX10_2(SHX11_2)
    for SHX14_2, SHX15_2 in SHX10_2, SHX11_2, SHX12_2, SHX13_2 do
      if SHX15_2 == SHX8_2 then
        SHX9_2 = true
        break
      end
    end
    if not SHX9_2 then
      SHX10_2 = SHX19_1.loadedIpls
      SHX11_2 = SHX19_1.loadedIpls
      SHX11_2 = #SHX11_2
      SHX11_2 = SHX11_2 + 1
      SHX10_2[SHX11_2] = SHX8_2
    end
  end
end
function SHX66_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  if not SHX0_2 then
    return
  end
  SHX1_2 = ipairs
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.loadModel
    SHX8_2 = SHX6_2.model
    SHX7_2(SHX8_2)
    SHX7_2 = CreateObjectNoOffset
    SHX8_2 = SHX6_2.model
    SHX9_2 = SHX6_2.pos
    SHX9_2 = SHX9_2.x
    SHX10_2 = SHX6_2.pos
    SHX10_2 = SHX10_2.y
    SHX11_2 = SHX6_2.pos
    SHX11_2 = SHX11_2.z
    SHX12_2 = false
    SHX13_2 = false
    SHX14_2 = false
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX8_2 = SetEntityHeading
    SHX9_2 = SHX7_2
    SHX10_2 = SHX6_2.heading
    if not SHX10_2 then
      SHX10_2 = 0.0
    end
    SHX8_2(SHX9_2, SHX10_2)
    SHX8_2 = FreezeEntityPosition
    SHX9_2 = SHX7_2
    SHX10_2 = true
    SHX8_2(SHX9_2, SHX10_2)
    SHX8_2 = SetModelAsNoLongerNeeded
    SHX9_2 = SHX6_2.model
    SHX8_2(SHX9_2)
    SHX8_2 = SHX19_1.spawnedProps
    SHX9_2 = SHX19_1.spawnedProps
    SHX9_2 = #SHX9_2
    SHX9_2 = SHX9_2 + 1
    SHX8_2[SHX9_2] = SHX7_2
  end
end
function SHX67_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  if not SHX0_2 then
    SHX1_2 = nil
    return SHX1_2
  end
  SHX1_2 = SHX19_1.hopOutVehicle
  if SHX1_2 then
    SHX1_2 = DoesEntityExist
    SHX2_2 = SHX19_1.hopOutVehicle
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = DeleteEntity
      SHX2_2 = SHX19_1.hopOutVehicle
      SHX1_2(SHX2_2)
    end
  end
  SHX19_1.hopOutVehicle = nil
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = GetEntityCoords
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = GetEntityHeading
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = GetHashKey
  SHX5_2 = SHX0_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = RequestModel
  SHX6_2 = SHX4_2
  SHX5_2(SHX6_2)
  SHX5_2 = GetGameTimer
  SHX5_2 = SHX5_2()
  SHX5_2 = SHX5_2 + 5000
  while true do
    SHX6_2 = HasModelLoaded
    SHX7_2 = SHX4_2
    SHX6_2 = SHX6_2(SHX7_2)
    if SHX6_2 then
      break
    end
    SHX6_2 = GetGameTimer
    SHX6_2 = SHX6_2()
    if not (SHX5_2 > SHX6_2) then
      break
    end
    SHX6_2 = Wait
    SHX7_2 = 10
    SHX6_2(SHX7_2)
  end
  SHX6_2 = HasModelLoaded
  SHX7_2 = SHX4_2
  SHX6_2 = SHX6_2(SHX7_2)
  if not SHX6_2 then
    SHX6_2 = nil
    return SHX6_2
  end
  SHX6_2 = GetGameTimer
  SHX6_2 = SHX6_2()
  SHX6_2 = SHX6_2 + 2000
  while true do
    SHX7_2 = HasCollisionLoadedAroundEntity
    SHX8_2 = SHX1_2
    SHX7_2 = SHX7_2(SHX8_2)
    if SHX7_2 then
      break
    end
    SHX7_2 = GetGameTimer
    SHX7_2 = SHX7_2()
    if not (SHX6_2 > SHX7_2) then
      break
    end
    SHX7_2 = RequestCollisionAtCoord
    SHX8_2 = SHX2_2.x
    SHX9_2 = SHX2_2.y
    SHX10_2 = SHX2_2.z
    SHX7_2(SHX8_2, SHX9_2, SHX10_2)
    SHX7_2 = Wait
    SHX8_2 = 10
    SHX7_2(SHX8_2)
  end
  SHX7_2 = GetGroundZFor_3dCoord
  SHX8_2 = SHX2_2.x
  SHX9_2 = SHX2_2.y
  SHX10_2 = SHX2_2.z
  SHX10_2 = SHX10_2 + 5.0
  SHX11_2 = false
  SHX7_2, SHX8_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX9_2 = SHX8_2 or SHX9_2
  if not SHX7_2 or not SHX8_2 then
    SHX9_2 = SHX2_2.z
  end
  SHX9_2 = SHX9_2 + 1.0
  SHX10_2 = pcall
  SHX11_2 = CMG
  SHX11_2 = SHX11_2.requestEntitySpawn
  SHX12_2 = "arena_hopout"
  SHX10_2(SHX11_2, SHX12_2)
  SHX10_2 = CreateVehicle
  SHX11_2 = SHX4_2
  SHX12_2 = SHX2_2.x
  SHX13_2 = SHX2_2.y
  SHX14_2 = SHX9_2
  SHX15_2 = SHX3_2
  SHX16_2 = true
  SHX17_2 = false
  SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX11_2 = SetVehicleOnGroundProperly
  SHX12_2 = SHX10_2
  SHX11_2(SHX12_2)
  SHX11_2 = SetPedIntoVehicle
  SHX12_2 = SHX1_2
  SHX13_2 = SHX10_2
  SHX14_2 = -1
  SHX11_2(SHX12_2, SHX13_2, SHX14_2)
  SHX11_2 = SetVehicleEngineOn
  SHX12_2 = SHX10_2
  SHX13_2 = true
  SHX14_2 = true
  SHX15_2 = false
  SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX11_2 = SetEntityAsMissionEntity
  SHX12_2 = SHX10_2
  SHX13_2 = true
  SHX14_2 = true
  SHX11_2(SHX12_2, SHX13_2, SHX14_2)
  SHX11_2 = FreezeEntityPosition
  SHX12_2 = SHX10_2
  SHX13_2 = true
  SHX11_2(SHX12_2, SHX13_2)
  SHX11_2 = SetModelAsNoLongerNeeded
  SHX12_2 = SHX4_2
  SHX11_2(SHX12_2)
  SHX19_1.hopOutVehicle = SHX10_2
  SHX11_2 = SHX19_1.combat
  SHX11_2 = SHX11_2.ctx
  if SHX11_2 then
    SHX11_2 = SHX19_1.match
    if SHX11_2 then
      SHX11_2 = SHX19_1.combat
      SHX12_2 = SHX43_1
      SHX12_2 = SHX12_2()
      SHX11_2.fingerprint = SHX12_2
      SHX11_2 = TriggerServerEvent
      SHX12_2 = "27d78c6395"
      SHX13_2 = SHX19_1.match
      SHX13_2 = SHX13_2.id
      SHX14_2 = SHX19_1.combat
      SHX14_2 = SHX14_2.fingerprint
      SHX11_2(SHX12_2, SHX13_2, SHX14_2)
    end
  end
  return SHX10_2
end
function SHX68_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX1_2 = {}
  SHX2_2 = SHX0_2.players
  if SHX2_2 then
    SHX2_2 = pairs
    SHX3_2 = SHX0_2.players
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
    for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
      SHX8_2 = GetPlayerFromServerId
      SHX9_2 = SHX6_2
      SHX8_2 = SHX8_2(SHX9_2)
      SHX9_2 = {}
      SHX9_2.team = SHX7_2
      if -1 ~= SHX8_2 then
        SHX10_2 = CMG
        SHX10_2 = SHX10_2.getPlayerName
        SHX11_2 = SHX8_2
        SHX10_2 = SHX10_2(SHX11_2)
        if SHX10_2 then
          goto SHX_LABEL_27
        end
      end
      SHX10_2 = "#"
      SHX11_2 = SHX6_2
      SHX10_2 = SHX10_2 .. SHX11_2
      -- [FIX IF ERROR] Move ::SHX_LABEL_27:: outside nested blocks until all 'goto SHX_LABEL_27' can see it
      ::SHX_LABEL_27::
      SHX9_2.name = SHX10_2
      SHX9_2.alive = true
      SHX1_2[SHX6_2] = SHX9_2
    end
  end
  SHX2_2 = SHX0_2.aiBots
  SHX19_1.aiBots = SHX2_2
  SHX2_2 = {}
  SHX19_1.botPeds = SHX2_2
  SHX2_2 = {}
  SHX19_1.botReported = SHX2_2
  SHX19_1.botWatchRunning = false
  SHX2_2 = {}
  SHX3_2 = SHX0_2.matchId
  SHX2_2.id = SHX3_2
  SHX3_2 = SHX0_2.mapName
  SHX2_2.map = SHX3_2
  SHX3_2 = SHX0_2.mode
  SHX2_2.mode = SHX3_2
  SHX3_2 = SHX0_2.worldMode
  SHX2_2.worldMode = SHX3_2
  SHX3_2 = SHX0_2.vehicleModel
  SHX2_2.vehicleModel = SHX3_2
  SHX2_2.isFFA = false
  SHX3_2 = SHX0_2.team
  SHX2_2.team = SHX3_2
  SHX2_2.players = SHX1_2
  SHX3_2 = SHX0_2.movement
  if not SHX3_2 then
    SHX3_2 = {}
  end
  SHX2_2.movement = SHX3_2
  SHX3_2 = {}
  SHX4_2 = SHX0_2.allowCrouchShoot
  SHX3_2.allowCrouchShoot = SHX4_2
  SHX4_2 = SHX0_2.disableCoverPeek
  SHX4_2 = true == SHX4_2
  SHX3_2.disableCoverPeek = SHX4_2
  SHX2_2.flags = SHX3_2
  SHX3_2 = {}
  SHX2_2.score = SHX3_2
  SHX2_2.roundNo = 1
  SHX3_2 = SHX0_2.bestOf
  SHX2_2.bestOf = SHX3_2
  SHX2_2.startTime = 0
  SHX3_2 = SHX0_1.roundTime
  SHX3_2 = SHX3_2 * 60
  SHX2_2.roundTime = SHX3_2
  SHX2_2.oobWarningRunning = false
  SHX2_2.tickRunning = false
  SHX2_2.roundOver = false
  SHX2_2.spectatorCount = 0
  SHX19_1.match = SHX2_2
end
SHX69_1 = RegisterNetEvent
SHX70_1 = "83f418a3d7"
function SHX71_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX19_1.fighting = true
  SHX1_2 = SHX22_1
  SHX1_2()
  SHX1_2 = SHX23_1
  SHX1_2()
  SHX1_2 = SHX24_1
  SHX1_2()
  SHX1_2 = SHX36_1
  SHX1_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.setSwitchGunEnabled
  SHX2_2 = false
  SHX1_2(SHX2_2)
  SHX1_2 = DoScreenFadeOut
  SHX2_2 = SHX5_1.fadeOutMs
  if not SHX2_2 then
    SHX2_2 = 400
  end
  SHX1_2(SHX2_2)
  SHX1_2 = Wait
  SHX2_2 = SHX5_1.postFadeOutWaitMs
  if not SHX2_2 then
    SHX2_2 = 350
  end
  SHX1_2(SHX2_2)
  SHX1_2 = SHX63_1
  SHX1_2()
  SHX1_2 = SHX68_1
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = SHX65_1
  SHX2_2 = SHX0_2.ipls
  SHX1_2(SHX2_2)
  SHX1_2 = SHX66_1
  SHX2_2 = SHX0_2.propLayout
  SHX1_2(SHX2_2)
  SHX1_2 = FreezeEntityPosition
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = Wait
  SHX2_2 = SHX5_1.postLoadWaitMs
  if not SHX2_2 then
    SHX2_2 = 150
  end
  SHX1_2(SHX2_2)
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "19a079869c"
  SHX3_2 = SHX0_2.matchId
  SHX1_2(SHX2_2, SHX3_2)
end
SHX69_1(SHX70_1, SHX71_1)
SHX69_1 = RegisterNetEvent
SHX70_1 = "e7197c297a"
function SHX71_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = SHX19_1.fighting
  if SHX1_2 then
    SHX1_2 = type
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if "table" == SHX1_2 then
      goto SHX_LABEL_10
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX1_2 = SHX0_2.health
  SHX2_2 = type
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if "number" ~= SHX2_2 or SHX1_2 <= 0 then
    return
  end
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = SetEntityHealth
  SHX4_2 = SHX2_2
  SHX5_2 = math
  SHX5_2 = SHX5_2.min
  SHX6_2 = GetEntityHealth
  SHX7_2 = SHX2_2
  SHX6_2 = SHX6_2(SHX7_2)
  SHX6_2 = SHX6_2 + SHX1_2
  SHX7_2 = 200
  SHX5_2, SHX6_2, SHX7_2 = SHX5_2(SHX6_2, SHX7_2)
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
end
SHX69_1(SHX70_1, SHX71_1)
SHX69_1 = RegisterNetEvent
SHX70_1 = "09e09c8df2"
function SHX71_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX19_1.match
  if SHX1_2 then
    SHX1_2 = SHX19_1.match
    SHX2_2 = SHX0_2.isFFA
    SHX1_2.isFFA = SHX2_2
    SHX1_2 = SHX19_1.match
    SHX2_2 = SHX0_2.team
    SHX1_2.team = SHX2_2
    SHX1_2 = SHX19_1.match
    SHX1_2 = SHX1_2.flags
    SHX2_2 = SHX0_2.allowCrouchShoot
    SHX1_2.allowCrouchShoot = SHX2_2
    SHX1_2 = SHX19_1.match
    SHX1_2 = SHX1_2.flags
    SHX2_2 = SHX0_2.disableCoverPeek
    SHX2_2 = true == SHX2_2
    SHX1_2.disableCoverPeek = SHX2_2
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.isSpectatingEvent
  SHX1_2 = SHX1_2()
  if SHX1_2 then
    SHX1_2 = SHX0_2.clearSpectator
    if not SHX1_2 then
      return
    end
  end
  SHX1_2 = SHX49_1
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = SHX0_2.clearSpectator
  if SHX1_2 then
    SHX1_2 = SHX47_1
    SHX1_2()
    SHX1_2 = SHX0_2.weaponModel
    if SHX1_2 then
      SHX1_2 = SHX0_2.weaponModel
      SHX2_2 = Citizen
      SHX2_2 = SHX2_2.CreateThread
      function SHX3_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3
        SHX0_3 = 1
        SHX1_3 = 50
        SHX2_3 = 1
        for SHX3_3 = SHX0_3, SHX1_3, SHX2_3 do
          SHX4_3 = SHX19_1.preRoundLockActive
          if SHX4_3 then
            SHX4_3 = SHX19_1.combat
            SHX4_3 = SHX4_3.ctx
            if SHX4_3 then
              SHX4_3 = SHX19_1.combat
              SHX4_3 = SHX4_3.ctx
              SHX4_3 = SHX4_3.weaponModel
              SHX5_3 = SHX1_2
              if SHX4_3 == SHX5_3 then
                goto SHX_LABEL_19
              end
            end
          end
          return
          -- [FIX IF ERROR] Move ::SHX_LABEL_19:: outside nested blocks until all 'goto SHX_LABEL_19' can see it
          ::SHX_LABEL_19::
          SHX4_3 = SHX44_1
          SHX5_3 = PlayerPedId
          SHX5_3 = SHX5_3()
          SHX6_3 = SHX1_2
          SHX4_3(SHX5_3, SHX6_3)
          SHX4_3 = Wait
          SHX5_3 = 0
          SHX4_3(SHX5_3)
        end
      end
      SHX2_2(SHX3_2)
    end
  end
end
SHX69_1(SHX70_1, SHX71_1)
SHX69_1 = RegisterNetEvent
SHX70_1 = "09b6fc624a"
function SHX71_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.isSpectatingEvent
  SHX1_2 = SHX1_2()
  if SHX1_2 then
    return
  end
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "dea1e43c91"
  SHX3_2 = SHX0_2
  SHX4_2 = SHX43_1
  SHX4_2 = SHX4_2()
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
end
SHX69_1(SHX70_1, SHX71_1)
SHX69_1 = RegisterNetEvent
SHX70_1 = "48abfe6163"
function SHX71_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = DoScreenFadeOut
  SHX2_2 = 200
  SHX1_2(SHX2_2)
  SHX1_2 = Wait
  SHX2_2 = 250
  SHX1_2(SHX2_2)
  SHX1_2 = SHX49_1
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = DoScreenFadeIn
  SHX2_2 = 200
  SHX1_2(SHX2_2)
end
SHX69_1(SHX70_1, SHX71_1)
SHX69_1 = 31086
function SHX70_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  if not SHX1_2 then
    SHX3_2 = false
    return SHX3_2
  end
  SHX3_2 = SHX1_2.hasInteriorCheck
  if SHX3_2 then
    SHX3_2 = GetInteriorFromEntity
    SHX4_2 = SHX0_2
    SHX3_2 = SHX3_2(SHX4_2)
    if 0 == SHX3_2 then
      SHX3_2 = true
      return SHX3_2
    end
  end
  SHX3_2 = SHX2_2.bounds
  if not SHX3_2 then
    SHX3_2 = SHX1_2.bounds
  end
  if SHX3_2 then
    SHX4_2 = SHX3_2[1]
    if SHX4_2 then
      SHX4_2 = SHX3_2[2]
      if SHX4_2 then
        SHX4_2 = IsEntityInArea
        SHX5_2 = SHX0_2
        SHX6_2 = SHX3_2[1]
        SHX6_2 = SHX6_2.x
        SHX7_2 = SHX3_2[1]
        SHX7_2 = SHX7_2.y
        SHX8_2 = SHX3_2[1]
        SHX8_2 = SHX8_2.z
        SHX9_2 = SHX3_2[2]
        SHX9_2 = SHX9_2.x
        SHX10_2 = SHX3_2[2]
        SHX10_2 = SHX10_2.y
        SHX11_2 = SHX3_2[2]
        SHX11_2 = SHX11_2.z
        SHX12_2 = false
        SHX13_2 = true
        SHX14_2 = 0
        SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
        if not SHX4_2 then
          SHX4_2 = true
          return SHX4_2
        end
      end
    end
  end
  SHX4_2 = false
  return SHX4_2
end
function SHX71_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX19_1.match
  if SHX0_2 then
    SHX0_2 = SHX19_1.match
    SHX0_2 = SHX0_2.oobWarningRunning
    if not SHX0_2 then
      goto SHX_LABEL_9
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  SHX0_2 = SHX19_1.match
  SHX0_2.oobWarningRunning = true
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.CreateThread
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3
    SHX0_3 = SHX6_1.graceSeconds
    if not SHX0_3 then
      SHX0_3 = 3
    end
    SHX1_3 = SHX0_3 * 1000
    SHX2_3 = GetGameTimer
    SHX2_3 = SHX2_3()
    SHX3_3 = SHX0_3
    SHX4_3 = AnimpostfxPlay
    SHX5_3 = "MP_race_crash"
    SHX6_3 = SHX1_3
    SHX7_3 = false
    SHX4_3(SHX5_3, SHX6_3, SHX7_3)
    SHX4_3 = GetSoundId
    SHX4_3 = SHX4_3()
    SHX5_3 = PlaySound
    SHX6_3 = SHX4_3
    SHX7_3 = "OOB_Timer_Dynamic"
    SHX8_3 = "GTAO_FM_Events_Soundset"
    SHX9_3 = false
    SHX10_3 = false
    SHX11_3 = false
    SHX5_3(SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
    while true do
      SHX5_3 = SHX19_1.fighting
      if not SHX5_3 then
        break
      end
      SHX5_3 = SHX19_1.match
      if not SHX5_3 then
        break
      end
      SHX5_3 = PlayerPedId
      SHX5_3 = SHX5_3()
      SHX6_3 = SHX0_1.maps
      SHX7_3 = SHX19_1.match
      SHX7_3 = SHX7_3.map
      SHX6_3 = SHX6_3[SHX7_3]
      SHX7_3 = SHX19_1.match
      SHX7_3 = SHX7_3.movement
      if not SHX7_3 then
        SHX7_3 = {}
      end
      SHX8_3 = IsEntityDead
      SHX9_3 = SHX5_3
      SHX8_3 = SHX8_3(SHX9_3)
      if SHX8_3 then
        break
      end
      SHX8_3 = CMG
      SHX8_3 = SHX8_3.isSpectatingEvent
      SHX8_3 = SHX8_3()
      if SHX8_3 then
        break
      end
      SHX8_3 = CMG
      SHX8_3 = SHX8_3.isArenaSpectating
      SHX8_3 = SHX8_3()
      if SHX8_3 then
        break
      end
      SHX8_3 = SHX70_1
      SHX9_3 = SHX5_3
      SHX10_3 = SHX6_3
      SHX11_3 = SHX7_3
      SHX8_3 = SHX8_3(SHX9_3, SHX10_3, SHX11_3)
      if not SHX8_3 then
        break
      end
      SHX8_3 = GetGameTimer
      SHX8_3 = SHX8_3()
      SHX8_3 = SHX8_3 - SHX2_3
      if SHX1_3 <= SHX8_3 then
        break
      end
      SHX8_3 = CMG
      SHX8_3 = SHX8_3.announceMpBigMsg
      SHX9_3 = SHX11_1
      SHX10_3 = "client.oobTitle"
      SHX9_3 = SHX9_3(SHX10_3)
      SHX10_3 = string
      SHX10_3 = SHX10_3.format
      SHX11_3 = SHX11_1
      SHX12_3 = "client.oobReturnMessage"
      SHX11_3 = SHX11_3(SHX12_3)
      SHX12_3 = SHX3_3
      SHX10_3 = SHX10_3(SHX11_3, SHX12_3)
      SHX11_3 = 1000
      SHX8_3(SHX9_3, SHX10_3, SHX11_3)
      SHX3_3 = SHX3_3 - 1
    end
    SHX5_3 = StopSound
    SHX6_3 = SHX4_3
    SHX5_3(SHX6_3)
    SHX5_3 = ReleaseSoundId
    SHX6_3 = SHX4_3
    SHX5_3(SHX6_3)
    SHX5_3 = AnimpostfxStopAll
    SHX5_3()
    SHX5_3 = SHX19_1.fighting
    if SHX5_3 then
      SHX5_3 = SHX19_1.match
      if SHX5_3 then
        SHX5_3 = PlayerPedId
        SHX5_3 = SHX5_3()
        SHX6_3 = SHX0_1.maps
        SHX7_3 = SHX19_1.match
        SHX7_3 = SHX7_3.map
        SHX6_3 = SHX6_3[SHX7_3]
        SHX7_3 = SHX19_1.match
        SHX7_3 = SHX7_3.movement
        if not SHX7_3 then
          SHX7_3 = {}
        end
        SHX8_3 = IsEntityDead
        SHX9_3 = SHX5_3
        SHX8_3 = SHX8_3(SHX9_3)
        if not SHX8_3 then
          SHX8_3 = CMG
          SHX8_3 = SHX8_3.isSpectatingEvent
          SHX8_3 = SHX8_3()
          if not SHX8_3 then
            SHX8_3 = CMG
            SHX8_3 = SHX8_3.isArenaSpectating
            SHX8_3 = SHX8_3()
            if not SHX8_3 then
              SHX8_3 = SHX70_1
              SHX9_3 = SHX5_3
              SHX10_3 = SHX6_3
              SHX11_3 = SHX7_3
              SHX8_3 = SHX8_3(SHX9_3, SHX10_3, SHX11_3)
              if SHX8_3 then
                SHX8_3 = SetEntityHealth
                SHX9_3 = SHX5_3
                SHX10_3 = 0
                SHX8_3(SHX9_3, SHX10_3)
            end
          end
        end
        else
          SHX8_3 = PlaySound
          SHX9_3 = -1
          SHX10_3 = "OOB_Cancel"
          SHX11_3 = "GTAO_FM_Events_Soundset"
          SHX12_3 = false
          SHX13_3 = 0
          SHX14_3 = false
          SHX8_3(SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3)
        end
      end
    end
    SHX5_3 = SHX19_1.match
    if SHX5_3 then
      SHX5_3 = SHX19_1.match
      SHX5_3.oobWarningRunning = false
    end
  end
  SHX0_2(SHX1_2)
end
function SHX72_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX19_1.match
  if SHX0_2 then
    SHX0_2 = SHX19_1.match
    SHX0_2 = SHX0_2.tickRunning
    if not SHX0_2 then
      goto SHX_LABEL_9
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  SHX0_2 = SHX19_1.match
  SHX0_2.tickRunning = true
  SHX0_2 = SHX40_1
  SHX0_2()
  SHX0_2 = SHX39_1
  SHX0_2()
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.CreateThread
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3
    while true do
      SHX0_3 = SHX19_1.fighting
      if not SHX0_3 then
        break
      end
      SHX0_3 = SHX19_1.match
      if not SHX0_3 then
        break
      end
      SHX0_3 = PlayerPedId
      SHX0_3 = SHX0_3()
      SHX1_3 = SHX19_1.match
      SHX1_3 = SHX1_3.movement
      if not SHX1_3 then
        SHX1_3 = {}
      end
      SHX2_3 = SHX0_1.maps
      SHX3_3 = SHX19_1.match
      SHX3_3 = SHX3_3.map
      SHX2_3 = SHX2_3[SHX3_3]
      SHX3_3 = SHX19_1.match
      SHX3_3 = SHX3_3.flags
      if SHX3_3 then
        SHX3_3 = SHX19_1.match
        SHX3_3 = SHX3_3.flags
        SHX3_3 = SHX3_3.disableCoverPeek
        if SHX3_3 then
          SHX3_3 = SetPedConfigFlag
          SHX4_3 = SHX0_3
          SHX5_3 = 427
          SHX6_3 = false
          SHX3_3(SHX4_3, SHX5_3, SHX6_3)
      end
      else
        SHX3_3 = SHX1_3.pedConfigFlag427
        if false ~= SHX3_3 then
          SHX3_3 = SetPedConfigFlag
          SHX4_3 = SHX0_3
          SHX5_3 = 427
          SHX6_3 = true
          SHX3_3(SHX4_3, SHX5_3, SHX6_3)
        end
      end
      if SHX2_3 then
        SHX3_3 = SHX19_1.match
        SHX3_3 = SHX3_3.worldMode
        if not SHX3_3 then
          SHX3_3 = SHX19_1.match
          SHX3_3 = SHX3_3.oobWarningRunning
          if not SHX3_3 then
            SHX3_3 = IsEntityDead
            SHX4_3 = SHX0_3
            SHX3_3 = SHX3_3(SHX4_3)
            if not SHX3_3 then
              SHX3_3 = CMG
              SHX3_3 = SHX3_3.isSpectatingEvent
              SHX3_3 = SHX3_3()
              if not SHX3_3 then
                SHX3_3 = CMG
                SHX3_3 = SHX3_3.isArenaSpectating
                SHX3_3 = SHX3_3()
                if not SHX3_3 then
                  SHX3_3 = SHX70_1
                  SHX4_3 = SHX0_3
                  SHX5_3 = SHX2_3
                  SHX6_3 = SHX1_3
                  SHX3_3 = SHX3_3(SHX4_3, SHX5_3, SHX6_3)
                  if SHX3_3 then
                    SHX3_3 = SHX71_1
                    SHX3_3()
                  end
                end
              end
            end
          end
        end
      end
      SHX3_3 = Wait
      SHX4_3 = 250
      SHX3_3(SHX4_3)
    end
  end
  SHX0_2(SHX1_2)
end
SHX73_1 = 500
function SHX74_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  if not SHX1_2 then
    return
  end
  SHX2_2 = GetGameTimer
  SHX2_2 = SHX2_2()
  if not SHX0_2 then
    SHX3_2 = {}
    SHX4_2 = SHX1_2.cx
    SHX3_2.cx = SHX4_2
    SHX4_2 = SHX1_2.cy
    SHX3_2.cy = SHX4_2
    SHX4_2 = SHX1_2.cx
    SHX3_2.fromCx = SHX4_2
    SHX4_2 = SHX1_2.cy
    SHX3_2.fromCy = SHX4_2
    SHX4_2 = SHX1_2.cx
    SHX3_2.toCx = SHX4_2
    SHX4_2 = SHX1_2.cy
    SHX3_2.toCy = SHX4_2
    SHX3_2.snapAt = SHX2_2
    return SHX3_2
  end
  SHX3_2 = hopOutCirclePos
  SHX4_2 = SHX0_2
  SHX3_2, SHX4_2 = SHX3_2(SHX4_2)
  SHX5_2 = SHX3_2
  SHX0_2.fromCy = SHX4_2
  SHX0_2.fromCx = SHX5_2
  SHX5_2 = SHX1_2.cx
  SHX6_2 = SHX1_2.cy
  SHX0_2.toCy = SHX6_2
  SHX0_2.toCx = SHX5_2
  SHX5_2 = SHX3_2
  SHX0_2.cy = SHX4_2
  SHX0_2.cx = SHX5_2
  SHX0_2.snapAt = SHX2_2
  return SHX0_2
end
function SHX75_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  if not SHX0_2 then
    SHX1_2 = nil
    SHX2_2 = nil
    return SHX1_2, SHX2_2
  end
  SHX1_2 = GetGameTimer
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX0_2.snapAt
  SHX1_2 = SHX1_2 - SHX2_2
  SHX2_2 = SHX73_1
  SHX1_2 = SHX1_2 / SHX2_2
  if SHX1_2 > 1.0 then
    SHX1_2 = 1.0
  end
  if SHX1_2 < 0.0 then
    SHX1_2 = 0.0
  end
  SHX2_2 = SHX0_2.fromCx
  SHX3_2 = SHX0_2.toCx
  SHX4_2 = SHX0_2.fromCx
  SHX3_2 = SHX3_2 - SHX4_2
  SHX3_2 = SHX3_2 * SHX1_2
  SHX2_2 = SHX2_2 + SHX3_2
  SHX3_2 = SHX0_2.fromCy
  SHX4_2 = SHX0_2.toCy
  SHX5_2 = SHX0_2.fromCy
  SHX4_2 = SHX4_2 - SHX5_2
  SHX4_2 = SHX4_2 * SHX1_2
  SHX3_2 = SHX3_2 + SHX4_2
  return SHX2_2, SHX3_2
end
function SHX76_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX19_1.match
  if SHX1_2 then
    SHX1_2 = SHX19_1.match
    SHX1_2 = SHX1_2.worldMode
    if SHX1_2 then
      goto SHX_LABEL_9
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  SHX1_2 = SHX19_1.match
  SHX1_2 = SHX1_2.hopOutZone
  if not SHX1_2 then
    SHX2_2 = {}
    SHX3_2 = SHX0_2.radius
    if not SHX3_2 then
      SHX3_2 = 250.0
    end
    SHX2_2.radius = SHX3_2
    SHX3_2 = SHX0_2.oobDps
    if not SHX3_2 then
      SHX3_2 = 5
    end
    SHX2_2.oobDps = SHX3_2
    SHX3_2 = SHX0_2.grace
    if not SHX3_2 then
      SHX3_2 = 3
    end
    SHX2_2.grace = SHX3_2
    SHX1_2 = SHX2_2
    SHX2_2 = SHX19_1.match
    SHX2_2.hopOutZone = SHX1_2
  end
  SHX2_2 = SHX0_2.radius
  if not SHX2_2 then
    SHX2_2 = SHX1_2.radius
  end
  SHX1_2.radius = SHX2_2
  SHX2_2 = SHX0_2.oobDps
  if not SHX2_2 then
    SHX2_2 = SHX1_2.oobDps
  end
  SHX1_2.oobDps = SHX2_2
  SHX2_2 = SHX0_2.grace
  if not SHX2_2 then
    SHX2_2 = SHX1_2.grace
  end
  SHX1_2.grace = SHX2_2
  SHX2_2 = SHX0_2.phase
  SHX1_2.phase = SHX2_2
  SHX2_2 = SHX0_2.rendezvous
  SHX1_2.rendezvous = SHX2_2
  SHX2_2 = SHX74_1
  SHX3_2 = SHX1_2.selfCircle
  SHX4_2 = SHX0_2.self
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX1_2.selfCircle = SHX2_2
  SHX2_2 = SHX74_1
  SHX3_2 = SHX1_2.oppCircle
  SHX4_2 = SHX0_2.opponent
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX1_2.oppCircle = SHX2_2
end
function SHX77_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2
  SHX7_2 = PlayerPedId
  SHX7_2 = SHX7_2()
  SHX8_2 = GetEntityCoords
  SHX9_2 = SHX7_2
  SHX8_2 = SHX8_2(SHX9_2)
  SHX9_2 = DrawMarker
  SHX10_2 = 1
  SHX11_2 = SHX0_2
  SHX12_2 = SHX1_2
  SHX13_2 = SHX8_2.z
  SHX13_2 = SHX13_2 - 40.0
  SHX14_2 = 0.0
  SHX15_2 = 0.0
  SHX16_2 = 0.0
  SHX17_2 = 0.0
  SHX18_2 = 0.0
  SHX19_2 = 0.0
  SHX20_2 = SHX2_2 * 2.0
  SHX21_2 = SHX2_2 * 2.0
  SHX22_2 = 140.0
  SHX23_2 = SHX3_2
  SHX24_2 = SHX4_2
  SHX25_2 = SHX5_2
  SHX26_2 = SHX6_2
  SHX27_2 = false
  SHX28_2 = false
  SHX29_2 = 2
  SHX30_2 = false
  SHX31_2 = nil
  SHX32_2 = nil
  SHX33_2 = false
  SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2)
end
function SHX78_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX19_1.match
  if SHX0_2 then
    SHX0_2 = SHX19_1.match
    SHX0_2 = SHX0_2.hopOutZoneTickRunning
    if SHX0_2 then
      return
    end
  end
  SHX0_2 = SHX19_1.match
  if SHX0_2 then
    SHX0_2 = SHX19_1.match
    SHX0_2.hopOutZoneTickRunning = true
  end
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.CreateThread
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3
    SHX0_3 = nil
    SHX1_3 = 0
    SHX2_3 = 0
    while true do
      SHX3_3 = SHX19_1.fighting
      if not SHX3_3 then
        break
      end
      SHX3_3 = SHX19_1.match
      if not SHX3_3 then
        break
      end
      SHX3_3 = SHX19_1.match
      SHX3_3 = SHX3_3.worldMode
      if not SHX3_3 then
        break
      end
      SHX3_3 = SHX19_1.match
      SHX3_3 = SHX3_3.hopOutZone
      if not SHX3_3 then
        break
      end
      SHX3_3 = SHX19_1.match
      SHX3_3 = SHX3_3.hopOutZone
      SHX4_3 = SHX75_1
      SHX5_3 = SHX3_3.selfCircle
      SHX4_3, SHX5_3 = SHX4_3(SHX5_3)
      SHX6_3 = SHX75_1
      SHX7_3 = SHX3_3.oppCircle
      SHX6_3, SHX7_3 = SHX6_3(SHX7_3)
      SHX8_3 = SHX3_3.radius
      if not SHX8_3 then
        SHX8_3 = 250.0
      end
      if SHX4_3 and SHX5_3 then
        SHX9_3 = SHX77_1
        SHX10_3 = SHX4_3
        SHX11_3 = SHX5_3
        SHX12_3 = SHX8_3
        SHX13_3 = 74
        SHX14_3 = 144
        SHX15_3 = 245
        SHX16_3 = 45
        SHX9_3(SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3)
      end
      if SHX6_3 and SHX7_3 then
        SHX9_3 = SHX77_1
        SHX10_3 = SHX6_3
        SHX11_3 = SHX7_3
        SHX12_3 = SHX8_3
        SHX13_3 = 245
        SHX14_3 = 74
        SHX15_3 = 74
        SHX16_3 = 30
        SHX9_3(SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3)
      end
      SHX9_3 = SHX3_3.phase
      if "converge" == SHX9_3 then
        SHX9_3 = SHX3_3.rendezvous
        if SHX9_3 then
          SHX9_3 = SHX77_1
          SHX10_3 = SHX3_3.rendezvous
          SHX10_3 = SHX10_3.x
          SHX11_3 = SHX3_3.rendezvous
          SHX11_3 = SHX11_3.y
          SHX12_3 = SHX8_3 * 0.35
          SHX13_3 = 255
          SHX14_3 = 200
          SHX15_3 = 60
          SHX16_3 = 25
          SHX9_3(SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3)
        end
      end
      SHX9_3 = PlayerPedId
      SHX9_3 = SHX9_3()
      SHX10_3 = GetEntityCoords
      SHX11_3 = SHX9_3
      SHX10_3 = SHX10_3(SHX11_3)
      if SHX4_3 and SHX5_3 then
        SHX11_3 = IsEntityDead
        SHX12_3 = SHX9_3
        SHX11_3 = SHX11_3(SHX12_3)
        if not SHX11_3 then
          SHX11_3 = SHX10_3.x
          SHX11_3 = SHX11_3 - SHX4_3
          SHX12_3 = SHX10_3.y
          SHX12_3 = SHX12_3 - SHX5_3
          SHX13_3 = SHX11_3 * SHX11_3
          SHX14_3 = SHX12_3 * SHX12_3
          SHX13_3 = SHX13_3 + SHX14_3
          SHX14_3 = SHX8_3 * SHX8_3
          SHX13_3 = SHX13_3 > SHX14_3
          if SHX13_3 then
            SHX14_3 = GetGameTimer
            SHX14_3 = SHX14_3()
            if not SHX0_3 then
              SHX0_3 = SHX14_3
            end
            SHX15_3 = SHX14_3 - SHX2_3
            SHX16_3 = 1500
            if SHX15_3 > SHX16_3 then
              SHX2_3 = SHX14_3
              SHX15_3 = BeginTextCommandDisplayHelp
              SHX16_3 = "STRING"
              SHX15_3(SHX16_3)
              SHX15_3 = AddTextComponentSubstringPlayerName
              SHX16_3 = SHX11_1
              SHX17_3 = "client.hopoutReturnZone"
              SHX16_3, SHX17_3, SHX18_3, SHX19_3 = SHX16_3(SHX17_3)
              SHX15_3(SHX16_3, SHX17_3, SHX18_3, SHX19_3)
              SHX15_3 = EndTextCommandDisplayHelp
              SHX16_3 = 0
              SHX17_3 = false
              SHX18_3 = false
              SHX19_3 = -1
              SHX15_3(SHX16_3, SHX17_3, SHX18_3, SHX19_3)
            end
            SHX15_3 = math
            SHX15_3 = SHX15_3.max
            SHX16_3 = 0
            SHX17_3 = SHX3_3.grace
            if not SHX17_3 then
              SHX17_3 = 3
            end
            SHX15_3 = SHX15_3(SHX16_3, SHX17_3)
            SHX15_3 = SHX15_3 * 1000
            SHX16_3 = SHX14_3 - SHX0_3
            if SHX15_3 < SHX16_3 then
              SHX16_3 = SHX14_3 - SHX1_3
              SHX17_3 = 1000
              if SHX16_3 >= SHX17_3 then
                SHX1_3 = SHX14_3
                SHX16_3 = ApplyDamageToPed
                SHX17_3 = SHX9_3
                SHX18_3 = SHX3_3.oobDps
                if not SHX18_3 then
                  SHX18_3 = 5
                end
                SHX19_3 = false
                SHX16_3(SHX17_3, SHX18_3, SHX19_3)
              end
            end
          else
            SHX0_3 = nil
          end
        end
      end
      SHX11_3 = Wait
      SHX12_3 = 0
      SHX11_3(SHX12_3)
    end
    SHX3_3 = SHX19_1.match
    if SHX3_3 then
      SHX3_3 = SHX19_1.match
      SHX3_3.hopOutZoneTickRunning = false
    end
  end
  SHX0_2(SHX1_2)
end
SHX79_1 = RegisterNetEvent
SHX80_1 = "dfc973aeb8"
function SHX81_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX19_1.match
  if SHX1_2 then
    SHX1_2 = SHX19_1.match
    SHX1_2 = SHX1_2.worldMode
    if SHX1_2 then
      goto SHX_LABEL_9
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  SHX1_2 = SHX76_1
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = SHX78_1
  SHX1_2()
end
SHX79_1(SHX80_1, SHX81_1)
function SHX79_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX19_1.deathWatchRunning
  if SHX0_2 then
    return
  end
  SHX19_1.deathWatchRunning = true
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.CreateThread
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3
    SHX0_3 = false
    while true do
      SHX1_3 = SHX19_1.fighting
      if not SHX1_3 then
        break
      end
      SHX1_3 = SHX19_1.match
      if not SHX1_3 then
        break
      end
      SHX1_3 = PlayerPedId
      SHX1_3 = SHX1_3()
      SHX2_3 = IsEntityDead
      SHX3_3 = SHX1_3
      SHX2_3 = SHX2_3(SHX3_3)
      if SHX2_3 and not SHX0_3 then
        SHX0_3 = true
        SHX3_3 = SHX19_1.match
        if SHX3_3 then
          SHX3_3 = SHX19_1.match
          SHX3_3.hopOutZone = nil
          SHX3_3 = SHX19_1.match
          SHX3_3.hopOutZoneTickRunning = false
        end
        SHX3_3 = PlayerPedId
        SHX3_3 = SHX3_3()
        SHX4_3 = CMG
        SHX4_3 = SHX4_3.collectKillerInfo
        SHX5_3 = SHX3_3
        SHX4_3(SHX5_3)
        SHX4_3 = CMG
        SHX4_3 = SHX4_3.getKillerInfo
        SHX4_3 = SHX4_3()
        SHX5_3 = SHX4_3.source
        if not SHX5_3 then
          SHX5_3 = -1
        end
        SHX6_3 = SHX4_3.wasHeadshot
        SHX6_3 = true == SHX6_3
        SHX7_3 = SHX4_3.weaponModel
        if SHX7_3 then
          SHX7_3 = GetHashKey
          SHX8_3 = SHX4_3.weaponModel
          SHX7_3 = SHX7_3(SHX8_3)
          if SHX7_3 then
            goto SHX_LABEL_54
          end
        end
        SHX7_3 = GetPedCauseOfDeath
        SHX8_3 = SHX3_3
        SHX7_3 = SHX7_3(SHX8_3)
        -- [FIX IF ERROR] Move ::SHX_LABEL_54:: outside nested blocks until all 'goto SHX_LABEL_54' can see it
        ::SHX_LABEL_54::
        SHX8_3 = TriggerServerEvent
        SHX9_3 = "69132690ee"
        SHX10_3 = {}
        SHX10_3.attackerSrc = SHX5_3
        SHX10_3.weapon = SHX7_3
        SHX10_3.headshot = SHX6_3
        SHX8_3(SHX9_3, SHX10_3)
      elseif not SHX2_3 then
        SHX0_3 = false
      end
      SHX3_3 = Wait
      SHX4_3 = 200
      SHX3_3(SHX4_3)
    end
    SHX19_1.deathWatchRunning = false
  end
  SHX0_2(SHX1_2)
end
function SHX80_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  if 1 == SHX0_2 then
    SHX1_2 = SHX13_1
    if SHX1_2 then
      goto SHX_LABEL_7
    end
  end
  SHX1_2 = SHX15_1
  -- [FIX IF ERROR] Move ::SHX_LABEL_7:: outside nested blocks until all 'goto SHX_LABEL_7' can see it
  ::SHX_LABEL_7::
  return SHX1_2
end
function SHX81_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = pairs
  SHX1_2 = SHX19_1.botPeds
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = DoesEntityExist
    SHX7_2 = SHX5_2
    SHX6_2 = SHX6_2(SHX7_2)
    if SHX6_2 then
      SHX6_2 = DeleteEntity
      SHX7_2 = SHX5_2
      SHX6_2(SHX7_2)
    end
    SHX6_2 = SHX19_1.botPeds
    SHX6_2[SHX4_2] = nil
  end
  SHX0_2 = {}
  SHX19_1.botReported = SHX0_2
  SHX19_1.botWatchRunning = false
end
function SHX82_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX1_2 = SHX19_1.botPeds
  SHX2_2 = SHX0_2.key
  SHX1_2 = SHX1_2[SHX2_2]
  if SHX1_2 then
    SHX2_2 = DoesEntityExist
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      SHX2_2 = IsEntityDead
      SHX3_2 = SHX1_2
      SHX2_2 = SHX2_2(SHX3_2)
      if not SHX2_2 then
        return
      end
      SHX2_2 = DeleteEntity
      SHX3_2 = SHX1_2
      SHX2_2(SHX3_2)
    end
  end
  SHX2_2 = SHX0_2.spawn
  if not SHX2_2 then
    return
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.loadModel
  SHX4_2 = SHX0_2.model
  SHX3_2(SHX4_2)
  SHX3_2 = CreatePed
  SHX4_2 = 4
  SHX5_2 = SHX0_2.model
  SHX6_2 = SHX2_2.x
  SHX6_2 = SHX6_2 + 0.0
  SHX7_2 = SHX2_2.y
  SHX7_2 = SHX7_2 + 0.0
  SHX8_2 = SHX2_2.z
  SHX8_2 = SHX8_2 - 1.0
  SHX9_2 = SHX2_2.w
  if not SHX9_2 then
    SHX9_2 = 0.0
  end
  SHX10_2 = false
  SHX11_2 = true
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX4_2 = SetModelAsNoLongerNeeded
  SHX5_2 = SHX0_2.model
  SHX4_2(SHX5_2)
  SHX4_2 = SetEntityAsMissionEntity
  SHX5_2 = SHX3_2
  SHX6_2 = true
  SHX7_2 = true
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = SHX0_2.health
  if not SHX4_2 then
    SHX4_2 = 200
  end
  SHX5_2 = SetEntityMaxHealth
  SHX6_2 = SHX3_2
  SHX7_2 = SHX4_2
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = SetEntityHealth
  SHX6_2 = SHX3_2
  SHX7_2 = SHX4_2
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = SetPedArmour
  SHX6_2 = SHX3_2
  SHX7_2 = SHX0_2.armour
  if not SHX7_2 then
    SHX7_2 = 0
  end
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = SetPedRelationshipGroupHash
  SHX6_2 = SHX3_2
  SHX7_2 = SHX80_1
  SHX8_2 = SHX0_2.team
  SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX7_2(SHX8_2)
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX5_2 = SetPedAccuracy
  SHX6_2 = SHX3_2
  SHX7_2 = SHX0_2.accuracy
  if not SHX7_2 then
    SHX7_2 = 35
  end
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = SetPedCombatAbility
  SHX6_2 = SHX3_2
  SHX7_2 = SHX0_2.combatAbility
  if not SHX7_2 then
    SHX7_2 = 2
  end
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = SetPedCombatRange
  SHX6_2 = SHX3_2
  SHX7_2 = SHX0_2.combatRange
  if not SHX7_2 then
    SHX7_2 = 2
  end
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = SetPedCombatMovement
  SHX6_2 = SHX3_2
  SHX7_2 = 2
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = SetPedFleeAttributes
  SHX6_2 = SHX3_2
  SHX7_2 = 0
  SHX8_2 = false
  SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = SetPedCombatAttributes
  SHX6_2 = SHX3_2
  SHX7_2 = 46
  SHX8_2 = true
  SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = SetPedCombatAttributes
  SHX6_2 = SHX3_2
  SHX7_2 = 5
  SHX8_2 = true
  SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = SetPedCombatAttributes
  SHX6_2 = SHX3_2
  SHX7_2 = 0
  SHX8_2 = true
  SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = SetBlockingOfNonTemporaryEvents
  SHX6_2 = SHX3_2
  SHX7_2 = true
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = SetPedDropsWeaponsWhenDead
  SHX6_2 = SHX3_2
  SHX7_2 = false
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = SetPedSuffersCriticalHits
  SHX6_2 = SHX3_2
  SHX7_2 = true
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = GetHashKey
  SHX6_2 = SHX0_2.weapon
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = RequestWeaponAsset
  SHX7_2 = SHX5_2
  SHX8_2 = 31
  SHX9_2 = 0
  SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX6_2 = 0
  while true do
    SHX7_2 = HasWeaponAssetLoaded
    SHX8_2 = SHX5_2
    SHX7_2 = SHX7_2(SHX8_2)
    if SHX7_2 then
      break
    end
    SHX7_2 = 200
    if not (SHX6_2 < SHX7_2) then
      break
    end
    SHX7_2 = Wait
    SHX8_2 = 0
    SHX7_2(SHX8_2)
    SHX6_2 = SHX6_2 + 1
  end
  SHX7_2 = GiveWeaponToPed
  SHX8_2 = SHX3_2
  SHX9_2 = SHX5_2
  SHX10_2 = SHX0_2.ammo
  if not SHX10_2 then
    SHX10_2 = 250
  end
  SHX11_2 = false
  SHX12_2 = true
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX7_2 = SetCurrentPedWeapon
  SHX8_2 = SHX3_2
  SHX9_2 = SHX5_2
  SHX10_2 = true
  SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  SHX7_2 = SetPedCanSwitchWeapon
  SHX8_2 = SHX3_2
  SHX9_2 = true
  SHX7_2(SHX8_2, SHX9_2)
  SHX7_2 = SetPedInfiniteAmmo
  SHX8_2 = SHX3_2
  SHX9_2 = true
  SHX10_2 = SHX5_2
  SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  SHX7_2 = SetPedInfiniteAmmoClip
  SHX8_2 = SHX3_2
  SHX9_2 = true
  SHX7_2(SHX8_2, SHX9_2)
  SHX7_2 = SHX19_1.botPeds
  SHX8_2 = SHX0_2.key
  SHX7_2[SHX8_2] = SHX3_2
  SHX7_2 = SHX19_1.botReported
  SHX8_2 = SHX0_2.key
  SHX7_2[SHX8_2] = nil
end
function SHX83_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = SHX19_1.aiBots
  if not SHX0_2 then
    return
  end
  SHX0_2 = ipairs
  SHX1_2 = SHX19_1.aiBots
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX82_1
    SHX7_2 = SHX5_2
    SHX6_2(SHX7_2)
  end
end
function SHX84_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = pairs
  SHX2_2 = SHX19_1.botPeds
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = DoesEntityExist
    SHX8_2 = SHX6_2
    SHX7_2 = SHX7_2(SHX8_2)
    if SHX7_2 then
      SHX7_2 = IsEntityDead
      SHX8_2 = SHX6_2
      SHX7_2 = SHX7_2(SHX8_2)
      if not SHX7_2 then
        SHX7_2 = TaskCombatPed
        SHX8_2 = SHX6_2
        SHX9_2 = SHX0_2
        SHX10_2 = 0
        SHX11_2 = 16
        SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
      end
    end
  end
end
function SHX85_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX19_1.botWatchRunning
  if SHX0_2 then
    return
  end
  SHX19_1.botWatchRunning = true
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.CreateThread
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3
    while true do
      SHX0_3 = SHX19_1.fighting
      if not SHX0_3 then
        break
      end
      SHX0_3 = SHX19_1.match
      if not SHX0_3 then
        break
      end
      SHX0_3 = SHX19_1.aiBots
      if not SHX0_3 then
        break
      end
      SHX0_3 = PlayerPedId
      SHX0_3 = SHX0_3()
      SHX1_3 = pairs
      SHX2_3 = SHX19_1.botPeds
      SHX1_3, SHX2_3, SHX3_3, SHX4_3 = SHX1_3(SHX2_3)
      for SHX5_3, SHX6_3 in SHX1_3, SHX2_3, SHX3_3, SHX4_3 do
        SHX7_3 = DoesEntityExist
        SHX8_3 = SHX6_3
        SHX7_3 = SHX7_3(SHX8_3)
        if SHX7_3 then
          SHX7_3 = IsEntityDead
          SHX8_3 = SHX6_3
          SHX7_3 = SHX7_3(SHX8_3)
          if SHX7_3 then
            SHX7_3 = SHX19_1.botReported
            SHX7_3 = SHX7_3[SHX5_3]
            if not SHX7_3 then
              SHX7_3 = SHX19_1.botReported
              SHX7_3[SHX5_3] = true
              SHX7_3 = GetPedLastDamageBone
              SHX8_3 = SHX6_3
              SHX7_3, SHX8_3 = SHX7_3(SHX8_3)
              SHX9_3 = TriggerServerEvent
              SHX10_3 = "8db23098e2"
              SHX11_3 = {}
              SHX12_3 = SHX19_1.match
              SHX12_3 = SHX12_3.id
              SHX11_3.matchId = SHX12_3
              SHX11_3.botKey = SHX5_3
              SHX12_3 = SHX69_1
              SHX12_3 = SHX8_3 == SHX12_3
              SHX11_3.headshot = SHX12_3
              SHX9_3(SHX10_3, SHX11_3)
            end
          else
            SHX7_3 = IsPedInCombat
            SHX8_3 = SHX6_3
            SHX9_3 = SHX0_3
            SHX7_3 = SHX7_3(SHX8_3, SHX9_3)
            if not SHX7_3 then
              SHX7_3 = TaskCombatPed
              SHX8_3 = SHX6_3
              SHX9_3 = SHX0_3
              SHX10_3 = 0
              SHX11_3 = 16
              SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3)
            end
          end
        end
      end
      SHX1_3 = Wait
      SHX2_3 = 400
      SHX1_3(SHX2_3)
    end
  end
  SHX0_2(SHX1_2)
end
function SHX86_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX0_2 = SHX19_1.match
  if SHX0_2 then
    SHX0_2 = SHX19_1.match
    SHX0_2 = SHX0_2.isFFA
    if not SHX0_2 then
      goto SHX_LABEL_9
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setPlayerNameDistance
  SHX1_2 = 50.0
  SHX0_2(SHX1_2)
  SHX0_2 = pairs
  SHX1_2 = SHX19_1.match
  SHX1_2 = SHX1_2.players
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX5_2.team
    SHX7_2 = SHX19_1.match
    SHX7_2 = SHX7_2.team
    if SHX6_2 == SHX7_2 then
      SHX6_2 = GetPlayerServerId
      SHX7_2 = PlayerId
      SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2()
      SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
      if SHX4_2 ~= SHX6_2 then
        SHX6_2 = GetPlayerFromServerId
        SHX7_2 = SHX4_2
        SHX6_2 = SHX6_2(SHX7_2)
        if -1 ~= SHX6_2 then
          SHX7_2 = CMG
          SHX7_2 = SHX7_2.setGameTagNameOverride
          SHX8_2 = SHX4_2
          SHX9_2 = CMG
          SHX9_2 = SHX9_2.getPlayerName
          SHX10_2 = SHX6_2
          SHX9_2, SHX10_2 = SHX9_2(SHX10_2)
          SHX7_2(SHX8_2, SHX9_2, SHX10_2)
        end
      end
    end
  end
end
function SHX87_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  SHX0_2 = SHX19_1.match
  if not SHX0_2 then
    SHX0_2 = false
    return SHX0_2
  end
  SHX0_2 = SHX19_1.match
  SHX0_2 = SHX0_2.roundNo
  SHX1_2 = SHX19_1.match
  SHX1_2 = SHX1_2.bestOf
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.announceMpSmallMsg
  SHX3_2 = SHX11_1
  SHX4_2 = "client.matchRoundTitle"
  SHX5_2 = SHX0_2
  SHX6_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX4_2 = ""
  SHX5_2 = 2
  SHX6_2 = SHX3_1
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = Scaleform
  SHX3_2 = "COUNTDOWN"
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = true
  SHX4_2 = Citizen
  SHX4_2 = SHX4_2.CreateThread
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    while true do
      SHX0_3 = SHX3_2
      if not SHX0_3 then
        break
      end
      SHX0_3 = SHX2_2.Render2D
      SHX0_3()
      SHX0_3 = Wait
      SHX1_3 = 0
      SHX0_3(SHX1_3)
    end
  end
  SHX4_2(SHX5_2)
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = false
    SHX3_2 = SHX0_3
    SHX0_3 = false
    return SHX0_3
  end
  SHX5_2 = 3
  SHX6_2 = 1
  SHX7_2 = -1
  for SHX8_2 = SHX5_2, SHX6_2, SHX7_2 do
    SHX9_2 = SHX19_1.match
    if SHX9_2 then
      SHX9_2 = SHX19_1.fighting
      if SHX9_2 then
        goto SHX_LABEL_43
      end
    end
    SHX9_2 = SHX4_2
    return SHX9_2()
    -- [FIX IF ERROR] Move ::SHX_LABEL_43:: outside nested blocks until all 'goto SHX_LABEL_43' can see it
    ::SHX_LABEL_43::
    SHX9_2 = 255
    SHX10_2 = 90
    SHX11_2 = 90
    if 2 == SHX8_2 then
      SHX12_2 = 255
      SHX13_2 = 170
      SHX11_2 = 60
      SHX10_2 = SHX13_2
      SHX9_2 = SHX12_2
    elseif 1 == SHX8_2 then
      SHX12_2 = 255
      SHX13_2 = 220
      SHX11_2 = 80
      SHX10_2 = SHX13_2
      SHX9_2 = SHX12_2
    end
    SHX12_2 = SHX2_2.RunFunction
    SHX13_2 = "SET_MESSAGE"
    SHX14_2 = {}
    SHX15_2 = tostring
    SHX16_2 = SHX8_2
    SHX15_2 = SHX15_2(SHX16_2)
    SHX16_2 = SHX9_2
    SHX17_2 = SHX10_2
    SHX18_2 = SHX11_2
    SHX19_2 = true
    SHX20_2 = false
    SHX14_2[1] = SHX15_2
    SHX14_2[2] = SHX16_2
    SHX14_2[3] = SHX17_2
    SHX14_2[4] = SHX18_2
    SHX14_2[5] = SHX19_2
    SHX14_2[6] = SHX20_2
    SHX12_2(SHX13_2, SHX14_2)
    SHX12_2 = PlaySoundFrontend
    SHX13_2 = -1
    SHX14_2 = "3_2_1"
    SHX15_2 = "HUD_MINI_GAME_SOUNDSET"
    SHX16_2 = true
    SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2)
    SHX12_2 = Wait
    SHX13_2 = SHX2_1
    SHX12_2(SHX13_2)
  end
  SHX5_2 = SHX19_1.match
  if SHX5_2 then
    SHX5_2 = SHX19_1.fighting
    if SHX5_2 then
      goto SHX_LABEL_94
    end
  end
  SHX5_2 = SHX4_2
  return SHX5_2()
  -- [FIX IF ERROR] Move ::SHX_LABEL_94:: outside nested blocks until all 'goto SHX_LABEL_94' can see it
  ::SHX_LABEL_94::
  SHX5_2 = SHX2_2.RunFunction
  SHX6_2 = "SET_MESSAGE"
  SHX7_2 = {}
  SHX8_2 = "CNTDWN_GO"
  SHX9_2 = 0
  SHX10_2 = 255
  SHX11_2 = 0
  SHX12_2 = true
  SHX13_2 = false
  SHX7_2[1] = SHX8_2
  SHX7_2[2] = SHX9_2
  SHX7_2[3] = SHX10_2
  SHX7_2[4] = SHX11_2
  SHX7_2[5] = SHX12_2
  SHX7_2[6] = SHX13_2
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = PlaySoundFrontend
  SHX6_2 = -1
  SHX7_2 = "Go"
  SHX8_2 = "DLC_EXEC_ARC_MAC_SOUNDS"
  SHX9_2 = true
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX5_2 = SHX48_1
  SHX5_2()
  SHX5_2 = Citizen
  SHX5_2 = SHX5_2.SetTimeout
  SHX6_2 = SHX4_1
  function SHX7_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = false
    SHX3_2 = SHX0_3
  end
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = true
  return SHX5_2
end
SHX88_1 = RegisterNetEvent
SHX89_1 = "2549659225"
function SHX90_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX19_1.match
  if not SHX1_2 then
    return
  end
  SHX1_2 = SHX19_1.match
  SHX2_2 = SHX0_2.roundNo
  SHX1_2.roundNo = SHX2_2
  SHX1_2 = SHX19_1.match
  SHX2_2 = SHX0_2.startTime
  SHX1_2.startTime = SHX2_2
  SHX1_2 = SHX19_1.match
  SHX2_2 = SHX0_2.team
  SHX1_2.team = SHX2_2
  SHX1_2 = SHX19_1.match
  SHX1_2.roundOver = false
  SHX1_2 = SHX19_1.match
  SHX1_2 = SHX1_2.worldMode
  if SHX1_2 then
    SHX1_2 = SHX19_1.match
    SHX1_2.hopOutZone = nil
    SHX1_2 = SHX19_1.match
    SHX1_2.hopOutZoneTickRunning = false
  end
  SHX1_2 = SHX47_1
  SHX1_2()
  SHX1_2 = SHX19_1.match
  SHX1_2 = SHX1_2.worldMode
  if SHX1_2 then
    SHX1_2 = SHX19_1.match
    SHX1_2 = SHX1_2.vehicleModel
    if SHX1_2 then
      SHX1_2 = SHX67_1
      SHX2_2 = SHX19_1.match
      SHX2_2 = SHX2_2.vehicleModel
      SHX1_2(SHX2_2)
    end
  end
  SHX1_2 = DoScreenFadeIn
  SHX2_2 = 300
  SHX1_2(SHX2_2)
  SHX1_2 = SHX72_1
  SHX1_2()
  SHX1_2 = SHX79_1
  SHX1_2()
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.SetTimeout
  SHX2_2 = 1500
  SHX3_2 = SHX86_1
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SHX19_1.aiBots
  if SHX1_2 then
    SHX1_2 = SHX83_1
    SHX1_2()
  end
  SHX1_2 = SHX87_1
  SHX1_2 = SHX1_2()
  if SHX1_2 then
    SHX1_2 = SHX19_1.match
    if SHX1_2 then
      SHX1_2 = SHX19_1.fighting
      if SHX1_2 then
        goto SHX_LABEL_66
      end
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_66:: outside nested blocks until all 'goto SHX_LABEL_66' can see it
  ::SHX_LABEL_66::
  SHX1_2 = SHX19_1.match
  SHX1_2 = SHX1_2.worldMode
  if SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.announceMpSmallMsg
    SHX2_2 = SHX11_1
    SHX3_2 = "client.hopoutDriveTitle"
    SHX2_2 = SHX2_2(SHX3_2)
    SHX3_2 = SHX11_1
    SHX4_2 = "client.hopoutDriveSubtitle"
    SHX3_2 = SHX3_2(SHX4_2)
    SHX4_2 = 2
    SHX5_2 = 7000
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  end
  SHX1_2 = SHX19_1.aiBots
  if SHX1_2 then
    SHX1_2 = SHX84_1
    SHX1_2()
    SHX1_2 = SHX85_1
    SHX1_2()
  end
end
SHX88_1(SHX89_1, SHX90_1)
SHX88_1 = RegisterNetEvent
SHX89_1 = "a45805e6ee"
function SHX90_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = SHX19_1.match
  if SHX1_2 then
    SHX1_2 = SHX19_1.match
    SHX2_2 = SHX0_2.score
    SHX1_2.score = SHX2_2
    SHX1_2 = SHX19_1.match
    SHX2_2 = SHX0_2.bestOf
    SHX1_2.bestOf = SHX2_2
    SHX1_2 = SHX19_1.match
    SHX2_2 = SHX0_2.roundNo
    SHX1_2.roundNo = SHX2_2
    SHX1_2 = SHX19_1.match
    SHX2_2 = SHX0_2.startTime
    SHX1_2.startTime = SHX2_2
    SHX1_2 = SHX19_1.match
    SHX2_2 = SHX0_2.roundTime
    SHX1_2.roundTime = SHX2_2
    SHX1_2 = SHX19_1.match
    SHX2_2 = SHX0_2.spectatorCount
    if not SHX2_2 then
      SHX2_2 = 0
    end
    SHX1_2.spectatorCount = SHX2_2
    SHX1_2 = SHX0_2.players
    if SHX1_2 then
      SHX1_2 = ipairs
      SHX2_2 = SHX0_2.players
      SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
      for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
        SHX7_2 = SHX6_2.source
        if SHX7_2 then
          SHX7_2 = SHX19_1.match
          SHX7_2 = SHX7_2.players
          SHX8_2 = SHX6_2.source
          SHX7_2 = SHX7_2[SHX8_2]
          if SHX7_2 then
            SHX7_2 = SHX19_1.match
            SHX7_2 = SHX7_2.players
            SHX8_2 = SHX6_2.source
            SHX7_2 = SHX7_2[SHX8_2]
            SHX8_2 = SHX6_2.alive
            SHX8_2 = false ~= SHX8_2
            SHX7_2.alive = SHX8_2
          end
        end
      end
    end
  end
  SHX1_2 = SHX19_1.spectate
  if SHX1_2 then
    SHX1_2 = SHX19_1.spectate
    SHX1_2 = SHX1_2.matchId
    SHX2_2 = SHX0_2.matchId
    if SHX1_2 == SHX2_2 then
      SHX1_2 = SHX0_2.players
      if SHX1_2 then
        SHX1_2 = {}
        SHX2_2 = ipairs
        SHX3_2 = SHX0_2.players
        SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
        for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
          SHX8_2 = SHX7_2.alive
          if false ~= SHX8_2 then
            SHX8_2 = SHX7_2.source
            if SHX8_2 then
              SHX8_2 = #SHX1_2
              SHX8_2 = SHX8_2 + 1
              SHX9_2 = {}
              SHX10_2 = SHX7_2.source
              SHX9_2.source = SHX10_2
              SHX10_2 = SHX7_2.userId
              SHX9_2.userId = SHX10_2
              SHX10_2 = SHX7_2.team
              SHX9_2.team = SHX10_2
              SHX10_2 = SHX7_2.name
              SHX9_2.name = SHX10_2
              SHX9_2.alive = true
              SHX1_2[SHX8_2] = SHX9_2
            end
          end
        end
        SHX2_2 = SHX19_1.spectate
        SHX2_2.players = SHX1_2
        SHX2_2 = SHX25_1
        SHX3_2 = "ARENA_SPECTATE_STATE"
        SHX4_2 = {}
        SHX4_2.active = true
        SHX5_2 = SHX19_1.spectate
        SHX5_2 = SHX5_2.matchId
        SHX4_2.matchId = SHX5_2
        SHX4_2.players = SHX1_2
        SHX4_2.hud = SHX0_2
        SHX2_2(SHX3_2, SHX4_2)
      end
    end
  end
  SHX1_2 = SHX25_1
  SHX2_2 = "ARENA_MATCH_HUD"
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
end
SHX88_1(SHX89_1, SHX90_1)
SHX88_1 = RegisterNetEvent
SHX89_1 = "a30a685e07"
function SHX90_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = type
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if "table" == SHX1_2 then
    SHX1_2 = SHX0_2.winnerTeam
    if SHX1_2 then
      SHX1_2 = tonumber
      SHX2_2 = SHX0_2.winnerTeam
      SHX1_2 = SHX1_2(SHX2_2)
      SHX0_2.winnerTeam = SHX1_2
    end
    SHX1_2 = SHX0_2.players
    if SHX1_2 then
      SHX1_2 = ipairs
      SHX2_2 = SHX0_2.players
      SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
      for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
        SHX7_2 = SHX6_2.team
        if SHX7_2 then
          SHX7_2 = tonumber
          SHX8_2 = SHX6_2.team
          SHX7_2 = SHX7_2(SHX8_2)
          SHX6_2.team = SHX7_2
        end
      end
    end
  end
  SHX1_2 = SHX25_1
  SHX2_2 = "ARENA_MVP"
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = type
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if "table" == SHX1_2 then
    SHX1_2 = SHX0_2.tournamentId
    if SHX1_2 then
      SHX1_2 = SHX0_2.tournamentId
      SHX19_1.pendingTournamentNav = SHX1_2
  end
  else
    SHX19_1.pendingTournamentNav = nil
  end
  SHX1_2 = SHX19_1.mvpOpen
  if SHX1_2 then
    return
  end
  SHX19_1.mvpOpen = true
  SHX1_2 = GetGameTimer
  SHX1_2 = SHX1_2()
  SHX1_2 = SHX1_2 + 600
  SHX2_2 = Citizen
  SHX2_2 = SHX2_2.CreateThread
  function SHX3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3
    while true do
      SHX0_3 = SHX19_1.mvpOpen
      if SHX0_3 then
        SHX0_3 = DisableControlAction
        SHX1_3 = 0
        SHX2_3 = 199
        SHX3_3 = true
        SHX0_3(SHX1_3, SHX2_3, SHX3_3)
        SHX0_3 = DisableControlAction
        SHX1_3 = 0
        SHX2_3 = 200
        SHX3_3 = true
        SHX0_3(SHX1_3, SHX2_3, SHX3_3)
        SHX0_3 = GetGameTimer
        SHX0_3 = SHX0_3()
        SHX1_3 = SHX1_2
        if SHX0_3 >= SHX1_3 then
          SHX0_3 = IsControlJustReleased
          SHX1_3 = 0
          SHX2_3 = 202
          SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
          if SHX0_3 then
            SHX19_1.mvpOpen = false
            SHX0_3 = SHX25_1
            SHX1_3 = "ARENA_MVP"
            SHX2_3 = false
            SHX0_3(SHX1_3, SHX2_3)
            SHX0_3 = SHX19_1.pendingTournamentNav
            if SHX0_3 then
              SHX0_3 = SHX19_1.pendingTournamentNav
              SHX19_1.pendingTournamentNav = nil
              SHX1_3 = SHX35_1
              SHX1_3()
              SHX1_3 = SHX25_1
              SHX2_3 = "ARENA_OPEN_TOURNAMENT"
              SHX3_3 = {}
              SHX3_3.id = SHX0_3
              SHX1_3(SHX2_3, SHX3_3)
            end
            break
          end
        end
      end
      SHX0_3 = Wait
      SHX1_3 = 0
      SHX0_3(SHX1_3)
    end
  end
  SHX2_2(SHX3_2)
end
SHX88_1(SHX89_1, SHX90_1)
function SHX88_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX48_1
  SHX0_2()
  SHX0_2 = SHX19_1.fighting
  if SHX0_2 then
    SHX0_2 = GetGameTimer
    SHX0_2 = SHX0_2()
    SHX19_1.lastWagerEndedAt = SHX0_2
    SHX0_2 = PlayerPedId
    SHX0_2 = SHX0_2()
    SHX1_2 = ClearEntityLastDamageEntity
    SHX2_2 = SHX0_2
    SHX1_2(SHX2_2)
    SHX1_2 = ClearEntityLastWeaponDamage
    SHX2_2 = SHX0_2
    SHX1_2(SHX2_2)
  end
  SHX19_1.fighting = false
  SHX0_2 = SHX22_1
  SHX0_2()
  SHX0_2 = SHX23_1
  SHX0_2()
  SHX0_2 = SHX38_1
  SHX0_2()
  SHX0_2 = SHX81_1
  SHX0_2()
  SHX19_1.aiBots = nil
  SHX0_2 = SHX42_1
  SHX0_2()
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setSwitchGunEnabled
  SHX1_2 = true
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.clearAllGameTagNameOverrides
  SHX0_2()
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setPlayerNameDistance
  SHX1_2 = -1
  SHX0_2(SHX1_2)
  SHX0_2 = SetPlayerHealthRechargeMultiplier
  SHX1_2 = PlayerId
  SHX1_2 = SHX1_2()
  SHX2_2 = 1.0
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetPlayerWeaponDamageModifier
  SHX1_2 = PlayerId
  SHX1_2 = SHX1_2()
  SHX2_2 = 1.0
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetPlayerCanUseCover
  SHX1_2 = PlayerId
  SHX1_2 = SHX1_2()
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetPedPathCanUseLadders
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SHX19_1.combat
  SHX0_2 = SHX0_2.ctx
  if SHX0_2 then
    SHX0_2 = SHX19_1.combat
    SHX0_2 = SHX0_2.ctx
    SHX0_2 = SHX0_2.weaponModel
    if SHX0_2 then
      SHX0_2 = SHX45_1
      SHX1_2 = PlayerPedId
      SHX1_2 = SHX1_2()
      SHX2_2 = SHX19_1.combat
      SHX2_2 = SHX2_2.ctx
      SHX2_2 = SHX2_2.weaponModel
      SHX0_2(SHX1_2, SHX2_2)
    end
  end
  SHX19_1.match = nil
  SHX0_2 = SHX19_1.combat
  SHX0_2.ctx = nil
  SHX0_2 = SHX19_1.combat
  SHX0_2.fingerprint = nil
  SHX0_2 = SHX25_1
  SHX1_2 = "ARENA_MATCH_HUD"
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SHX24_1
  SHX0_2()
end
SHX89_1 = RegisterNetEvent
SHX90_1 = "85f795c68f"
function SHX91_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX19_1.awaitingHubReturn = true
  SHX1_2 = SHX0_2 or SHX1_2
  if SHX0_2 then
    SHX1_2 = SHX0_2.won
  end
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = SHX19_1.combat
  SHX3_2 = SHX3_2.ctx
  if SHX3_2 then
    SHX3_2 = SHX19_1.combat
    SHX3_2 = SHX3_2.ctx
    SHX3_2 = SHX3_2.spawn
  end
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.isSpectatingEvent
  SHX4_2 = SHX4_2()
  if not SHX4_2 then
    SHX4_2 = IsEntityDead
    SHX5_2 = SHX2_2
    SHX4_2 = SHX4_2(SHX5_2)
  end
  if SHX4_2 and SHX3_2 then
    SHX5_2 = SHX3_2.x
    if SHX5_2 then
      SHX5_2 = IsEntityDead
      SHX6_2 = SHX2_2
      SHX5_2 = SHX5_2(SHX6_2)
      if SHX5_2 then
        SHX5_2 = NetworkResurrectLocalPlayer
        SHX6_2 = SHX3_2.x
        SHX7_2 = SHX3_2.y
        SHX8_2 = SHX3_2.z
        SHX9_2 = SHX3_2.w
        if not SHX9_2 then
          SHX9_2 = 0.0
        end
        SHX10_2 = true
        SHX11_2 = false
        SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
        SHX5_2 = SetPlayerInvincible
        SHX6_2 = PlayerId
        SHX6_2 = SHX6_2()
        SHX7_2 = false
        SHX5_2(SHX6_2, SHX7_2)
        SHX5_2 = PlayerPedId
        SHX5_2 = SHX5_2()
        SHX2_2 = SHX5_2
      end
      SHX5_2 = SetEntityCoords
      SHX6_2 = SHX2_2
      SHX7_2 = SHX3_2.x
      SHX8_2 = SHX3_2.y
      SHX9_2 = SHX3_2.z
      SHX10_2 = false
      SHX11_2 = false
      SHX12_2 = false
      SHX13_2 = false
      SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
      SHX5_2 = SetEntityHeading
      SHX6_2 = SHX2_2
      SHX7_2 = SHX3_2.w
      if not SHX7_2 then
        SHX7_2 = 0.0
      end
      SHX5_2(SHX6_2, SHX7_2)
  end
  else
    SHX5_2 = IsEntityDead
    SHX6_2 = SHX2_2
    SHX5_2 = SHX5_2(SHX6_2)
    if SHX5_2 then
      SHX5_2 = GetEntityCoords
      SHX6_2 = SHX2_2
      SHX5_2 = SHX5_2(SHX6_2)
      SHX6_2 = NetworkResurrectLocalPlayer
      SHX7_2 = SHX5_2.x
      SHX8_2 = SHX5_2.y
      SHX9_2 = SHX5_2.z
      SHX10_2 = GetEntityHeading
      SHX11_2 = SHX2_2
      SHX10_2 = SHX10_2(SHX11_2)
      SHX11_2 = true
      SHX12_2 = false
      SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX6_2 = SetPlayerInvincible
      SHX7_2 = PlayerId
      SHX7_2 = SHX7_2()
      SHX8_2 = false
      SHX6_2(SHX7_2, SHX8_2)
      SHX6_2 = PlayerPedId
      SHX6_2 = SHX6_2()
      SHX2_2 = SHX6_2
    end
  end
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.setEventSpectatorMode
  SHX6_2 = false
  SHX5_2(SHX6_2)
  SHX5_2 = PlayerPedId
  SHX5_2 = SHX5_2()
  SHX2_2 = SHX5_2
  if SHX4_2 and SHX3_2 then
    SHX5_2 = SHX3_2.x
    if SHX5_2 then
      SHX5_2 = SetEntityCoords
      SHX6_2 = SHX2_2
      SHX7_2 = SHX3_2.x
      SHX8_2 = SHX3_2.y
      SHX9_2 = SHX3_2.z
      SHX10_2 = false
      SHX11_2 = false
      SHX12_2 = false
      SHX13_2 = false
      SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
      SHX5_2 = SetEntityHeading
      SHX6_2 = SHX2_2
      SHX7_2 = SHX3_2.w
      if not SHX7_2 then
        SHX7_2 = 0.0
      end
      SHX5_2(SHX6_2, SHX7_2)
    end
  end
  if not SHX1_2 then
    SHX5_2 = FreezeEntityPosition
    SHX6_2 = SHX2_2
    SHX7_2 = true
    SHX5_2(SHX6_2, SHX7_2)
  end
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.setPlayerCombatTimer
  SHX6_2 = 0
  SHX7_2 = false
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = SHX88_1
  SHX5_2()
  SHX5_2 = SHX0_2.tournamentFinal
  if not SHX5_2 then
    if SHX1_2 then
      SHX5_2 = CMG
      SHX5_2 = SHX5_2.announceMpSmallMsg
      SHX6_2 = "WAGER WON"
      SHX7_2 = ""
      SHX8_2 = 18
      SHX9_2 = 3000
      SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    else
      SHX5_2 = CMG
      SHX5_2 = SHX5_2.announceMpSmallMsg
      SHX6_2 = "WAGER LOST"
      SHX7_2 = ""
      SHX8_2 = 6
      SHX9_2 = 3000
      SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    end
  end
end
SHX89_1(SHX90_1, SHX91_1)
SHX89_1 = RegisterNetEvent
SHX90_1 = "e0b1d03ed3"
function SHX91_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = DoScreenFadeOut
  SHX1_2 = 400
  SHX0_2(SHX1_2)
end
SHX89_1(SHX90_1, SHX91_1)
SHX89_1 = RegisterNetEvent
SHX90_1 = "b5322c5402"
function SHX91_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = SHX19_1.mvpOpen
  if SHX2_2 then
    SHX19_1.mvpOpen = false
    SHX2_2 = SHX25_1
    SHX3_2 = "ARENA_MVP"
    SHX4_2 = false
    SHX2_2(SHX3_2, SHX4_2)
  end
  SHX2_2 = FreezeEntityPosition
  SHX3_2 = PlayerPedId
  SHX3_2 = SHX3_2()
  SHX4_2 = false
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = Citizen
  SHX2_2 = SHX2_2.CreateThread
  function SHX3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.podiumLeaderboard
    SHX1_3 = SHX0_2
    if not SHX1_3 then
      SHX1_3 = {}
    end
    SHX2_3 = SHX1_2
    if not SHX2_3 then
      SHX2_3 = {}
    end
    SHX0_3(SHX1_3, SHX2_3)
  end
  SHX2_2(SHX3_2)
end
SHX89_1(SHX90_1, SHX91_1)
SHX89_1 = RegisterNetEvent
SHX90_1 = "4f8a1ad150"
function SHX91_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.setPlayerCombatTimer
  SHX2_2 = 0
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX19_1.awaitingHubReturn = false
  SHX1_2 = SHX64_1
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = SHX63_1
  SHX1_2()
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = IsEntityDead
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = GetEntityCoords
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    SHX3_2 = NetworkResurrectLocalPlayer
    SHX4_2 = SHX2_2.x
    SHX5_2 = SHX2_2.y
    SHX6_2 = SHX2_2.z
    SHX7_2 = GetEntityHeading
    SHX8_2 = SHX1_2
    SHX7_2 = SHX7_2(SHX8_2)
    SHX8_2 = true
    SHX9_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    SHX3_2 = SetPlayerInvincible
    SHX4_2 = PlayerId
    SHX4_2 = SHX4_2()
    SHX5_2 = false
    SHX3_2(SHX4_2, SHX5_2)
  end
  SHX2_2 = SHX54_1
  SHX2_2()
  SHX2_2 = Wait
  SHX3_2 = 200
  SHX2_2(SHX3_2)
  SHX2_2 = DoScreenFadeIn
  SHX3_2 = 400
  SHX2_2(SHX3_2)
end
SHX89_1(SHX90_1, SHX91_1)
function SHX89_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX19_1.spectate = nil
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.setEventSpectatorMode
  SHX2_2 = false
  SHX1_2(SHX2_2)
  SHX1_2 = SHX25_1
  SHX2_2 = "ARENA_SPECTATE_STATE"
  SHX3_2 = {}
  SHX3_2.active = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SHX25_1
  SHX2_2 = "ARENA_MATCH_HUD"
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = FreezeEntityPosition
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SHX54_1
  SHX1_2()
  if false ~= SHX0_2 then
    SHX19_1.mvpOpen = false
    SHX1_2 = SHX25_1
    SHX2_2 = "ARENA_MVP"
    SHX3_2 = false
    SHX1_2(SHX2_2, SHX3_2)
  end
  SHX1_2 = SHX24_1
  SHX1_2()
end
SHX90_1 = RegisterNetEvent
SHX91_1 = "37c3f140a7"
function SHX92_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX19_1.spectate = SHX0_2
  SHX1_2 = SHX24_1
  SHX1_2()
  SHX1_2 = SHX36_1
  SHX1_2()
  SHX1_2 = DoScreenFadeOut
  SHX2_2 = 400
  SHX1_2(SHX2_2)
  SHX1_2 = Wait
  SHX2_2 = 500
  SHX1_2(SHX2_2)
  SHX1_2 = SHX63_1
  SHX1_2()
  SHX1_2 = SHX65_1
  SHX2_2 = SHX0_2.ipls
  SHX1_2(SHX2_2)
  SHX1_2 = SHX66_1
  SHX2_2 = SHX0_2.propLayout
  SHX1_2(SHX2_2)
  SHX1_2 = SHX0_2.spawn
  if SHX1_2 then
    SHX2_2 = PlayerPedId
    SHX2_2 = SHX2_2()
    SHX3_2 = SetEntityCoords
    SHX4_2 = SHX2_2
    SHX5_2 = SHX1_2.x
    SHX6_2 = SHX1_2.y
    SHX7_2 = SHX1_2.z
    SHX8_2 = SHX7_1
    SHX7_2 = SHX7_2 - SHX8_2
    SHX8_2 = false
    SHX9_2 = false
    SHX10_2 = false
    SHX11_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX3_2 = SetEntityHeading
    SHX4_2 = SHX2_2
    SHX5_2 = SHX1_2.w
    if not SHX5_2 then
      SHX5_2 = 0.0
    end
    SHX3_2(SHX4_2, SHX5_2)
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.setEventSpectatorMode
  SHX3_2 = true
  SHX2_2(SHX3_2)
  SHX2_2 = Wait
  SHX3_2 = 300
  SHX2_2(SHX3_2)
  SHX2_2 = DoScreenFadeIn
  SHX3_2 = 400
  SHX2_2(SHX3_2)
  SHX2_2 = SHX25_1
  SHX3_2 = "ARENA_SPECTATE_STATE"
  SHX4_2 = {}
  SHX4_2.active = true
  SHX5_2 = SHX0_2.matchId
  SHX4_2.matchId = SHX5_2
  SHX5_2 = SHX0_2.players
  SHX4_2.players = SHX5_2
  SHX5_2 = SHX0_2.hud
  SHX4_2.hud = SHX5_2
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = Citizen
  SHX2_2 = SHX2_2.CreateThread
  function SHX3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3
    SHX0_3 = 0
    while true do
      SHX1_3 = SHX19_1.spectate
      if SHX1_3 then
        SHX1_3 = DisableControlAction
        SHX2_3 = 0
        SHX3_3 = 199
        SHX4_3 = true
        SHX1_3(SHX2_3, SHX3_3, SHX4_3)
        SHX1_3 = DisableControlAction
        SHX2_3 = 0
        SHX3_3 = 200
        SHX4_3 = true
        SHX1_3(SHX2_3, SHX3_3, SHX4_3)
        SHX1_3 = GetGameTimer
        SHX1_3 = SHX1_3()
        SHX2_3 = SHX1_3 - SHX0_3
        SHX3_3 = 2000
        if SHX2_3 > SHX3_3 then
          SHX2_3 = BeginTextCommandDisplayHelp
          SHX3_3 = "STRING"
          SHX2_3(SHX3_3)
          SHX2_3 = AddTextComponentSubstringPlayerName
          SHX3_3 = SHX11_1
          SHX4_3 = "client.spectateLeave"
          SHX3_3, SHX4_3, SHX5_3, SHX6_3 = SHX3_3(SHX4_3)
          SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3)
          SHX2_3 = EndTextCommandDisplayHelp
          SHX3_3 = 0
          SHX4_3 = false
          SHX5_3 = false
          SHX6_3 = -1
          SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3)
          SHX0_3 = SHX1_3
        end
        SHX2_3 = IsControlJustReleased
        SHX3_3 = 0
        SHX4_3 = 202
        SHX2_3 = SHX2_3(SHX3_3, SHX4_3)
        if SHX2_3 then
          SHX2_3 = DoScreenFadeOut
          SHX3_3 = 300
          SHX2_3(SHX3_3)
          SHX2_3 = Wait
          SHX3_3 = 350
          SHX2_3(SHX3_3)
          SHX2_3 = TriggerServerEvent
          SHX3_3 = "7d900d0299"
          SHX2_3(SHX3_3)
          SHX2_3 = SHX89_1
          SHX2_3()
          SHX2_3 = IsScreenFadedIn
          SHX2_3 = SHX2_3()
          if not SHX2_3 then
            SHX2_3 = DoScreenFadeIn
            SHX3_3 = 400
            SHX2_3(SHX3_3)
          end
          break
        end
      end
      SHX2_3 = Wait
      SHX3_3 = 0
      SHX2_3(SHX3_3)
    end
  end
  SHX2_2(SHX3_2)
end
SHX90_1(SHX91_1, SHX92_1)
SHX90_1 = RegisterNetEvent
SHX91_1 = "966c51de4b"
function SHX92_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX89_1
  SHX1_2 = SHX19_1.mvpOpen
  SHX1_2 = not SHX1_2
  SHX0_2(SHX1_2)
  SHX0_2 = IsScreenFadedIn
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX0_2 = Wait
    SHX1_2 = 200
    SHX0_2(SHX1_2)
    SHX0_2 = DoScreenFadeIn
    SHX1_2 = 400
    SHX0_2(SHX1_2)
  end
end
SHX90_1(SHX91_1, SHX92_1)
SHX90_1 = {}
function SHX91_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX0_2 % 6
  if 0 == SHX1_2 then
    SHX2_2 = 3
    return SHX2_2
  elseif 1 == SHX1_2 then
    SHX2_2 = 5
    return SHX2_2
  elseif 2 == SHX1_2 then
    SHX2_2 = 17
    return SHX2_2
  elseif 3 == SHX1_2 then
    SHX2_2 = 11
    return SHX2_2
  elseif 4 == SHX1_2 then
    SHX2_2 = 14
    return SHX2_2
  elseif 5 == SHX1_2 then
    SHX2_2 = 8
    return SHX2_2
  end
  SHX2_2 = 1
  return SHX2_2
end
function SHX92_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = pairs
  SHX1_2 = SHX90_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = DoesBlipExist
    SHX7_2 = SHX5_2
    SHX6_2 = SHX6_2(SHX7_2)
    if SHX6_2 then
      SHX6_2 = RemoveBlip
      SHX7_2 = SHX5_2
      SHX6_2(SHX7_2)
    end
  end
  SHX0_2 = {}
  SHX90_1 = SHX0_2
end
function SHX93_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX0_2 = SHX19_1.warmup
  if not SHX0_2 then
    return
  end
  SHX0_2 = {}
  SHX1_2 = ipairs
  SHX2_2 = GetActivePlayers
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX2_2()
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = PlayerId
    SHX7_2 = SHX7_2()
    if SHX6_2 ~= SHX7_2 then
      SHX7_2 = GetPlayerServerId
      SHX8_2 = SHX6_2
      SHX7_2 = SHX7_2(SHX8_2)
      SHX0_2[SHX7_2] = true
      SHX8_2 = GetPlayerPed
      SHX9_2 = SHX6_2
      SHX8_2 = SHX8_2(SHX9_2)
      if 0 ~= SHX8_2 then
        SHX9_2 = IsEntityVisible
        SHX10_2 = SHX8_2
        SHX9_2 = SHX9_2(SHX10_2)
        if SHX9_2 then
          SHX9_2 = SHX90_1
          SHX9_2 = SHX9_2[SHX7_2]
          SHX10_2 = GetBlipFromEntity
          SHX11_2 = SHX8_2
          SHX10_2 = SHX10_2(SHX11_2)
          if SHX9_2 then
            SHX11_2 = DoesBlipExist
            SHX12_2 = SHX9_2
            SHX11_2 = SHX11_2(SHX12_2)
            if SHX11_2 and SHX10_2 == SHX9_2 then
              goto SHX_LABEL_107
            end
          end
          if SHX9_2 then
            SHX11_2 = DoesBlipExist
            SHX12_2 = SHX9_2
            SHX11_2 = SHX11_2(SHX12_2)
            if SHX11_2 then
              SHX11_2 = RemoveBlip
              SHX12_2 = SHX9_2
              SHX11_2(SHX12_2)
            end
          end
          SHX11_2 = DoesBlipExist
          SHX12_2 = SHX10_2
          SHX11_2 = SHX11_2(SHX12_2)
          if SHX11_2 then
            SHX11_2 = RemoveBlip
            SHX12_2 = SHX10_2
            SHX11_2(SHX12_2)
          end
          SHX11_2 = AddBlipForEntity
          SHX12_2 = SHX8_2
          SHX11_2 = SHX11_2(SHX12_2)
          SHX9_2 = SHX11_2
          SHX11_2 = SetBlipSprite
          SHX12_2 = SHX9_2
          SHX13_2 = IsEntityDead
          SHX14_2 = SHX8_2
          SHX13_2 = SHX13_2(SHX14_2)
          if SHX13_2 then
            SHX13_2 = 274
            if SHX13_2 then
              goto SHX_LABEL_77
            end
          end
          SHX13_2 = 1
          -- [FIX IF ERROR] Move ::SHX_LABEL_77:: outside nested blocks until all 'goto SHX_LABEL_77' can see it
          ::SHX_LABEL_77::
          SHX11_2(SHX12_2, SHX13_2)
          SHX11_2 = SetBlipCategory
          SHX12_2 = SHX9_2
          SHX13_2 = 7
          SHX11_2(SHX12_2, SHX13_2)
          SHX11_2 = SetBlipColour
          SHX12_2 = SHX9_2
          SHX13_2 = SHX91_1
          SHX14_2 = SHX7_2
          SHX13_2, SHX14_2, SHX15_2 = SHX13_2(SHX14_2)
          SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2)
          SHX11_2 = ShowHeadingIndicatorOnBlip
          SHX12_2 = SHX9_2
          SHX13_2 = true
          SHX11_2(SHX12_2, SHX13_2)
          SHX11_2 = BeginTextCommandSetBlipName
          SHX12_2 = "STRING"
          SHX11_2(SHX12_2)
          SHX11_2 = AddTextComponentSubstringPlayerName
          SHX12_2 = CMG
          SHX12_2 = SHX12_2.getPlayerName
          SHX13_2 = SHX6_2
          SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX12_2(SHX13_2)
          SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2)
          SHX11_2 = EndTextCommandSetBlipName
          SHX12_2 = SHX9_2
          SHX11_2(SHX12_2)
          SHX11_2 = SHX90_1
          SHX11_2[SHX7_2] = SHX9_2
          goto SHX_LABEL_160
          -- [FIX IF ERROR] Move ::SHX_LABEL_107:: outside nested blocks until all 'goto SHX_LABEL_107' can see it
          ::SHX_LABEL_107::
          SHX11_2 = IsEntityDead
          SHX12_2 = SHX8_2
          SHX11_2 = SHX11_2(SHX12_2)
          if SHX11_2 then
            SHX11_2 = 274
            if SHX11_2 then
              goto SHX_LABEL_116
            end
          end
          SHX11_2 = 1
          -- [FIX IF ERROR] Move ::SHX_LABEL_116:: outside nested blocks until all 'goto SHX_LABEL_116' can see it
          ::SHX_LABEL_116::
          SHX12_2 = GetBlipSprite
          SHX13_2 = SHX9_2
          SHX12_2 = SHX12_2(SHX13_2)
          if SHX12_2 ~= SHX11_2 then
            SHX12_2 = SetBlipSprite
            SHX13_2 = SHX9_2
            SHX14_2 = SHX11_2
            SHX12_2(SHX13_2, SHX14_2)
            SHX12_2 = SetBlipColour
            SHX13_2 = SHX9_2
            SHX14_2 = SHX91_1
            SHX15_2 = SHX7_2
            SHX14_2, SHX15_2 = SHX14_2(SHX15_2)
            SHX12_2(SHX13_2, SHX14_2, SHX15_2)
            SHX12_2 = BeginTextCommandSetBlipName
            SHX13_2 = "STRING"
            SHX12_2(SHX13_2)
            SHX12_2 = AddTextComponentSubstringPlayerName
            SHX13_2 = CMG
            SHX13_2 = SHX13_2.getPlayerName
            SHX14_2 = SHX6_2
            SHX13_2, SHX14_2, SHX15_2 = SHX13_2(SHX14_2)
            SHX12_2(SHX13_2, SHX14_2, SHX15_2)
            SHX12_2 = EndTextCommandSetBlipName
            SHX13_2 = SHX9_2
            SHX12_2(SHX13_2)
          end
      end
      else
        SHX9_2 = SHX90_1
        SHX9_2 = SHX9_2[SHX7_2]
        if SHX9_2 then
          SHX9_2 = DoesBlipExist
          SHX10_2 = SHX90_1
          SHX10_2 = SHX10_2[SHX7_2]
          SHX9_2 = SHX9_2(SHX10_2)
          if SHX9_2 then
            SHX9_2 = RemoveBlip
            SHX10_2 = SHX90_1
            SHX10_2 = SHX10_2[SHX7_2]
            SHX9_2(SHX10_2)
          end
          SHX9_2 = SHX90_1
          SHX9_2[SHX7_2] = nil
        end
      end
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_160:: outside nested blocks until all 'goto SHX_LABEL_160' can see it
    ::SHX_LABEL_160::
  end
  SHX1_2 = pairs
  SHX2_2 = SHX90_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX0_2[SHX5_2]
    if not SHX7_2 then
      SHX7_2 = DoesBlipExist
      SHX8_2 = SHX6_2
      SHX7_2 = SHX7_2(SHX8_2)
      if SHX7_2 then
        SHX7_2 = RemoveBlip
        SHX8_2 = SHX6_2
        SHX7_2(SHX8_2)
      end
      SHX7_2 = SHX90_1
      SHX7_2[SHX5_2] = nil
    end
  end
end
function SHX94_1()
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
    
    local SHX0_3, SHX1_3
    while true do
      SHX0_3 = SHX19_1.warmup
      if not SHX0_3 then
        break
      end
      SHX0_3 = SHX93_1
      SHX0_3()
      SHX0_3 = Wait
      SHX1_3 = 100
      SHX0_3(SHX1_3)
    end
    SHX0_3 = SHX92_1
    SHX0_3()
  end
  SHX0_2(SHX1_2)
end
function SHX95_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = ClearPedTasksImmediately
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = ClearPedBloodDamage
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = SetEntityMaxHealth
  SHX2_2 = SHX0_2
  SHX3_2 = 200
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetEntityHealth
  SHX2_2 = SHX0_2
  SHX3_2 = 200
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SHX19_1.warmup
  if SHX1_2 then
    SHX1_2 = SHX19_1.warmup
    SHX1_2 = SHX1_2.useArmour
    if SHX1_2 then
      SHX1_2 = SetPedArmour
      SHX2_2 = SHX0_2
      SHX3_2 = 100
      SHX1_2(SHX2_2, SHX3_2)
  end
  else
    SHX1_2 = SetPedArmour
    SHX2_2 = SHX0_2
    SHX3_2 = 0
    SHX1_2(SHX2_2, SHX3_2)
  end
  SHX1_2 = SetPlayerHealthRechargeMultiplier
  SHX2_2 = PlayerId
  SHX2_2 = SHX2_2()
  SHX3_2 = 0.0
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetPlayerWeaponDamageModifier
  SHX2_2 = PlayerId
  SHX2_2 = SHX2_2()
  SHX3_2 = 1.0
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetPlayerWeaponDefenseModifier
  SHX2_2 = PlayerId
  SHX2_2 = SHX2_2()
  SHX3_2 = 1.0
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetPlayerMeleeWeaponDamageModifier
  SHX2_2 = PlayerId
  SHX2_2 = SHX2_2()
  SHX3_2 = 1.0
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetEntityProofs
  SHX2_2 = SHX0_2
  SHX3_2 = false
  SHX4_2 = false
  SHX5_2 = false
  SHX6_2 = false
  SHX7_2 = false
  SHX8_2 = false
  SHX9_2 = false
  SHX10_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX1_2 = SHX41_1
  SHX2_2 = nil
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetCanAttackFriendly
  SHX2_2 = SHX0_2
  SHX3_2 = false
  SHX4_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = SHX19_1.warmup
  if SHX1_2 then
    SHX1_2 = SHX19_1.warmup
    SHX1_2 = SHX1_2.weapon
    if SHX1_2 then
      SHX1_2 = SHX19_1.warmup
      SHX1_2 = SHX1_2.weapon
      SHX2_2 = GetHashKey
      SHX3_2 = SHX1_2
      SHX2_2 = SHX2_2(SHX3_2)
      SHX3_2 = SHX0_1.defaultWeaponAmmo
      if not SHX3_2 then
        SHX3_2 = 250
      end
      SHX4_2 = HasWeaponAssetLoaded
      SHX5_2 = SHX2_2
      SHX4_2 = SHX4_2(SHX5_2)
      if not SHX4_2 then
        SHX4_2 = RequestWeaponAsset
        SHX5_2 = SHX2_2
        SHX6_2 = 31
        SHX7_2 = 0
        SHX4_2(SHX5_2, SHX6_2, SHX7_2)
        SHX4_2 = 0
        while true do
          SHX5_2 = HasWeaponAssetLoaded
          SHX6_2 = SHX2_2
          SHX5_2 = SHX5_2(SHX6_2)
          if not (not SHX5_2 and SHX4_2 < 100) then
            break
          end
          SHX5_2 = Wait
          SHX6_2 = 0
          SHX5_2(SHX6_2)
          SHX4_2 = SHX4_2 + 1
        end
      end
      SHX4_2 = HasPedGotWeapon
      SHX5_2 = SHX0_2
      SHX6_2 = SHX2_2
      SHX7_2 = false
      SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
      if not SHX4_2 then
        SHX4_2 = GiveWeaponToPed
        SHX5_2 = SHX0_2
        SHX6_2 = SHX2_2
        SHX7_2 = SHX3_2
        SHX8_2 = false
        SHX9_2 = true
        SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
      end
      SHX4_2 = SetCurrentPedWeapon
      SHX5_2 = SHX0_2
      SHX6_2 = SHX2_2
      SHX7_2 = true
      SHX4_2(SHX5_2, SHX6_2, SHX7_2)
      SHX4_2 = SetPedInfiniteAmmo
      SHX5_2 = SHX0_2
      SHX6_2 = true
      SHX7_2 = SHX2_2
      SHX4_2(SHX5_2, SHX6_2, SHX7_2)
      SHX4_2 = SetPedInfiniteAmmoClip
      SHX5_2 = SHX0_2
      SHX6_2 = true
      SHX4_2(SHX5_2, SHX6_2)
    end
  end
end
function SHX96_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX1_2 = SHX19_1.warmup
  if SHX1_2 then
    SHX1_2 = SHX19_1.warmup
    SHX1_2 = SHX1_2.spawns
  end
  if SHX1_2 then
    SHX2_2 = #SHX1_2
    if 0 ~= SHX2_2 then
      goto SHX_LABEL_12
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_12:: outside nested blocks until all 'goto SHX_LABEL_12' can see it
  ::SHX_LABEL_12::
  SHX2_2 = math
  SHX2_2 = SHX2_2.random
  SHX3_2 = #SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX2_2 = SHX1_2[SHX2_2]
  if SHX0_2 then
    SHX3_2 = NetworkResurrectLocalPlayer
    SHX4_2 = SHX2_2.x
    SHX5_2 = SHX2_2.y
    SHX6_2 = SHX2_2.z
    SHX7_2 = SHX2_2.w
    SHX8_2 = true
    SHX9_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    SHX3_2 = SetPlayerInvincible
    SHX4_2 = PlayerId
    SHX4_2 = SHX4_2()
    SHX5_2 = false
    SHX3_2(SHX4_2, SHX5_2)
  else
    SHX3_2 = PlayerPedId
    SHX3_2 = SHX3_2()
    SHX4_2 = SetEntityCoords
    SHX5_2 = SHX3_2
    SHX6_2 = SHX2_2.x
    SHX7_2 = SHX2_2.y
    SHX8_2 = SHX2_2.z
    SHX8_2 = SHX8_2 - 1.0
    SHX9_2 = false
    SHX10_2 = false
    SHX11_2 = false
    SHX12_2 = false
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX4_2 = SetEntityHeading
    SHX5_2 = SHX3_2
    SHX6_2 = SHX2_2.w
    SHX4_2(SHX5_2, SHX6_2)
  end
  SHX3_2 = SHX95_1
  SHX3_2()
end
function SHX97_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = SHX0_1.warmup
  if SHX0_2 then
    SHX0_2 = SHX0_1.warmup
    SHX0_2 = SHX0_2.locations
  end
  if SHX0_2 then
    SHX1_2 = #SHX0_2
    if not (SHX1_2 < 2) then
      goto SHX_LABEL_13
    end
  end
  SHX1_2 = nil
  return SHX1_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_13:: outside nested blocks until all 'goto SHX_LABEL_13' can see it
  ::SHX_LABEL_13::
  SHX1_2 = SHX0_1.warmup
  SHX1_2 = SHX1_2.rotateMinutes
  if not SHX1_2 then
    SHX1_2 = 30
  end
  SHX1_2 = SHX1_2 * 60
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getEstimatedServerOsTime
  SHX2_2 = SHX2_2()
  SHX3_2 = math
  SHX3_2 = SHX3_2.floor
  SHX4_2 = SHX2_2 / SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX3_2 = SHX3_2 + 1
  SHX3_2 = SHX3_2 * SHX1_2
  SHX4_2 = math
  SHX4_2 = SHX4_2.max
  SHX5_2 = 0
  SHX6_2 = SHX3_2 - SHX2_2
  return SHX4_2(SHX5_2, SHX6_2)
end
SHX98_1 = CMG
SHX98_1 = SHX98_1.registerHudTimerBarProvider
SHX99_1 = "arenaWarmup"
function SHX100_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = SHX19_1.warmup
  if not SHX1_2 then
    return
  end
  SHX1_2 = SHX97_1
  SHX1_2 = SHX1_2()
  if SHX1_2 then
    SHX2_2 = SHX0_2.push
    SHX3_2 = SHX11_1
    SHX4_2 = "client.warmupMapChangesIn"
    SHX3_2 = SHX3_2(SHX4_2)
    SHX4_2 = string
    SHX4_2 = SHX4_2.format
    SHX5_2 = "%d:%02d"
    SHX6_2 = math
    SHX6_2 = SHX6_2.floor
    SHX7_2 = SHX1_2 / 60
    SHX6_2 = SHX6_2(SHX7_2)
    SHX7_2 = SHX1_2 % 60
    SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  end
  SHX2_2 = SHX19_1.warmup
  SHX2_2 = SHX2_2.playerCount
  if not SHX2_2 then
    SHX2_2 = 1
  end
  SHX3_2 = SHX0_2.push
  SHX4_2 = SHX11_1
  SHX5_2 = "client.warmupPlayersIn"
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = tostring
  SHX6_2 = SHX2_2
  SHX5_2, SHX6_2, SHX7_2 = SHX5_2(SHX6_2)
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
end
SHX98_1(SHX99_1, SHX100_1)
SHX98_1 = RegisterNetEvent
SHX99_1 = "424342ff58"
function SHX100_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX19_1.warmup
  if SHX1_2 then
    SHX1_2 = type
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if "number" == SHX1_2 then
      goto SHX_LABEL_10
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX1_2 = SHX19_1.warmup
  SHX1_2.playerCount = SHX0_2
end
SHX98_1(SHX99_1, SHX100_1)
SHX98_1 = RegisterNetEvent
SHX99_1 = "8f7c3fe494"
function SHX100_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.setRedzoneTimerDisabled
  SHX2_2 = true
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.setPlayerCombatTimer
  SHX2_2 = 0
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX19_1.warmup = SHX0_2
  SHX1_2 = SHX22_1
  SHX1_2()
  SHX1_2 = SHX24_1
  SHX1_2()
  SHX1_2 = SHX36_1
  SHX1_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.setHudTimerBarProviderActive
  SHX2_2 = "arenaWarmup"
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = DoScreenFadeOut
  SHX2_2 = 400
  SHX1_2(SHX2_2)
  SHX1_2 = Wait
  SHX2_2 = 500
  SHX1_2(SHX2_2)
  SHX1_2 = SHX96_1
  SHX2_2 = false
  SHX1_2(SHX2_2)
  SHX1_2 = DoScreenFadeIn
  SHX2_2 = 400
  SHX1_2(SHX2_2)
  SHX1_2 = SHX94_1
  SHX1_2()
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.CreateThread
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3
    while true do
      SHX0_3 = SHX19_1.warmup
      if not SHX0_3 then
        break
      end
      SHX0_3 = IsEntityDead
      SHX1_3 = PlayerPedId
      SHX1_3, SHX2_3 = SHX1_3()
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      if SHX0_3 then
        SHX0_3 = SHX19_1.warmup
        SHX0_3 = SHX0_3.respawnSeconds
        if not SHX0_3 then
          SHX0_3 = 0
        end
        SHX0_3 = SHX0_3 * 1000
        if SHX0_3 > 0 then
          SHX1_3 = Wait
          SHX2_3 = SHX0_3
          SHX1_3(SHX2_3)
        end
        SHX1_3 = SHX19_1.warmup
        if SHX1_3 then
          SHX1_3 = DoScreenFadeOut
          SHX2_3 = 200
          SHX1_3(SHX2_3)
          SHX1_3 = Wait
          SHX2_3 = 250
          SHX1_3(SHX2_3)
          SHX1_3 = SHX96_1
          SHX2_3 = true
          SHX1_3(SHX2_3)
          SHX1_3 = DoScreenFadeIn
          SHX2_3 = 200
          SHX1_3(SHX2_3)
        end
      end
      SHX0_3 = Wait
      SHX1_3 = 150
      SHX0_3(SHX1_3)
    end
  end
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
    SHX0_3 = 0
    while true do
      SHX1_3 = SHX19_1.warmup
      if not SHX1_3 then
        break
      end
      SHX1_3 = DisableControlAction
      SHX2_3 = 0
      SHX3_3 = 199
      SHX4_3 = true
      SHX1_3(SHX2_3, SHX3_3, SHX4_3)
      SHX1_3 = DisableControlAction
      SHX2_3 = 0
      SHX3_3 = 200
      SHX4_3 = true
      SHX1_3(SHX2_3, SHX3_3, SHX4_3)
      SHX1_3 = GetGameTimer
      SHX1_3 = SHX1_3()
      SHX2_3 = SHX1_3 - SHX0_3
      SHX3_3 = 2000
      if SHX2_3 > SHX3_3 then
        SHX2_3 = BeginTextCommandDisplayHelp
        SHX3_3 = "STRING"
        SHX2_3(SHX3_3)
        SHX2_3 = AddTextComponentSubstringPlayerName
        SHX3_3 = SHX11_1
        SHX4_3 = "client.warmupLeave"
        SHX3_3, SHX4_3, SHX5_3, SHX6_3 = SHX3_3(SHX4_3)
        SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3)
        SHX2_3 = EndTextCommandDisplayHelp
        SHX3_3 = 0
        SHX4_3 = false
        SHX5_3 = false
        SHX6_3 = -1
        SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3)
        SHX0_3 = SHX1_3
      end
      SHX2_3 = IsControlJustReleased
      SHX3_3 = 0
      SHX4_3 = 202
      SHX2_3 = SHX2_3(SHX3_3, SHX4_3)
      if SHX2_3 then
        SHX2_3 = DoScreenFadeOut
        SHX3_3 = 300
        SHX2_3(SHX3_3)
        SHX2_3 = Wait
        SHX3_3 = 350
        SHX2_3(SHX3_3)
        SHX2_3 = TriggerServerEvent
        SHX3_3 = "c4ac72b450"
        SHX2_3(SHX3_3)
        break
      end
      SHX2_3 = Wait
      SHX3_3 = 0
      SHX2_3(SHX3_3)
    end
  end
  SHX1_2(SHX2_2)
end
SHX98_1(SHX99_1, SHX100_1)
SHX98_1 = RegisterNetEvent
SHX99_1 = "40c5828829"
function SHX100_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX19_1.warmup
  if not SHX1_2 then
    return
  end
  SHX1_2 = SHX19_1.warmup
  SHX2_2 = SHX0_2.spawns
  SHX1_2.spawns = SHX2_2
  SHX1_2 = SHX19_1.warmup
  SHX2_2 = SHX0_2.locationName
  SHX1_2.locationName = SHX2_2
  SHX1_2 = DoScreenFadeOut
  SHX2_2 = 250
  SHX1_2(SHX2_2)
  SHX1_2 = Wait
  SHX2_2 = 300
  SHX1_2(SHX2_2)
  SHX1_2 = SHX96_1
  SHX2_2 = true
  SHX1_2(SHX2_2)
  SHX1_2 = DoScreenFadeIn
  SHX2_2 = 250
  SHX1_2(SHX2_2)
  SHX1_2 = SHX0_2.locationName
  if SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.announceMpSmallMsg
    SHX2_2 = "WARMUP MOVED"
    SHX3_2 = SHX0_2.locationName
    SHX4_2 = 18
    SHX5_2 = 3000
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  end
end
SHX98_1(SHX99_1, SHX100_1)
SHX98_1 = RegisterNetEvent
SHX99_1 = "40315d934d"
function SHX100_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX19_1.warmup = nil
  SHX0_2 = SHX22_1
  SHX0_2()
  SHX0_2 = SHX92_1
  SHX0_2()
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setRedzoneTimerDisabled
  SHX1_2 = false
  SHX0_2(SHX1_2)
  SHX0_2 = SHX24_1
  SHX0_2()
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setHudTimerBarProviderActive
  SHX1_2 = "arenaWarmup"
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SHX0_1.warmup
  if SHX0_2 then
    SHX0_2 = SHX0_1.warmup
    SHX0_2 = SHX0_2.weapon
    if SHX0_2 then
      SHX0_2 = SHX45_1
      SHX1_2 = PlayerPedId
      SHX1_2 = SHX1_2()
      SHX2_2 = SHX0_1.warmup
      SHX2_2 = SHX2_2.weapon
      SHX0_2(SHX1_2, SHX2_2)
    end
  end
  SHX0_2 = SHX42_1
  SHX0_2()
  SHX0_2 = SetPlayerHealthRechargeMultiplier
  SHX1_2 = PlayerId
  SHX1_2 = SHX1_2()
  SHX2_2 = 1.0
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetPlayerWeaponDamageModifier
  SHX1_2 = PlayerId
  SHX1_2 = SHX1_2()
  SHX2_2 = 1.0
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SHX54_1
  SHX0_2()
  SHX0_2 = IsScreenFadedIn
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX0_2 = Wait
    SHX1_2 = 200
    SHX0_2(SHX1_2)
    SHX0_2 = DoScreenFadeIn
    SHX1_2 = 400
    SHX0_2(SHX1_2)
  end
end
SHX98_1(SHX99_1, SHX100_1)
function SHX98_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = ipairs
  SHX1_2 = SHX19_1.spawnedProps
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = DoesEntityExist
    SHX7_2 = SHX5_2
    SHX6_2 = SHX6_2(SHX7_2)
    if SHX6_2 then
      SHX6_2 = DeleteEntity
      SHX7_2 = SHX5_2
      SHX6_2(SHX7_2)
    end
  end
  SHX0_2 = {}
  SHX19_1.spawnedProps = SHX0_2
  SHX0_2 = ipairs
  SHX1_2 = SHX19_1.loadedIpls
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = RemoveIpl
    SHX7_2 = SHX5_2
    SHX6_2(SHX7_2)
  end
  SHX0_2 = {}
  SHX19_1.loadedIpls = SHX0_2
end
function SHX99_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX19_1.preview
  if not SHX1_2 then
    return
  end
  SHX19_1.preview = false
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.setRedzoneTimerDisabled
  SHX2_2 = false
  SHX1_2(SHX2_2)
  SHX1_2 = SHX98_1
  SHX1_2()
  SHX1_2 = SHX24_1
  SHX1_2()
  if not SHX0_2 then
    SHX1_2 = TriggerServerEvent
    SHX2_2 = "035a5138cc"
    SHX1_2(SHX2_2)
  end
end
SHX100_1 = RegisterNetEvent
SHX101_1 = "573b531e71"
function SHX102_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.setRedzoneTimerDisabled
  SHX2_2 = true
  SHX1_2(SHX2_2)
  SHX19_1.preview = true
  SHX1_2 = SHX24_1
  SHX1_2()
  SHX1_2 = SHX36_1
  SHX1_2()
  SHX1_2 = DoScreenFadeOut
  SHX2_2 = 400
  SHX1_2(SHX2_2)
  SHX1_2 = Wait
  SHX2_2 = 500
  SHX1_2(SHX2_2)
  SHX1_2 = SHX65_1
  SHX2_2 = SHX0_2.ipls
  SHX1_2(SHX2_2)
  SHX1_2 = SHX66_1
  SHX2_2 = SHX0_2.propLayout
  SHX1_2(SHX2_2)
  SHX1_2 = SHX0_2.spawn
  if SHX1_2 then
    SHX2_2 = PlayerPedId
    SHX2_2 = SHX2_2()
    SHX3_2 = SetEntityCoords
    SHX4_2 = SHX2_2
    SHX5_2 = SHX1_2.x
    SHX6_2 = SHX1_2.y
    SHX7_2 = SHX1_2.z
    SHX7_2 = SHX7_2 - 1.0
    SHX8_2 = false
    SHX9_2 = false
    SHX10_2 = false
    SHX11_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX3_2 = SetEntityHeading
    SHX4_2 = SHX2_2
    SHX5_2 = SHX1_2.w
    if not SHX5_2 then
      SHX5_2 = 0.0
    end
    SHX3_2(SHX4_2, SHX5_2)
  end
  SHX2_2 = Wait
  SHX3_2 = 300
  SHX2_2(SHX3_2)
  SHX2_2 = DoScreenFadeIn
  SHX3_2 = 400
  SHX2_2(SHX3_2)
  SHX2_2 = Citizen
  SHX2_2 = SHX2_2.CreateThread
  function SHX3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3
    SHX0_3 = 0
    while true do
      SHX1_3 = SHX19_1.preview
      if not SHX1_3 then
        break
      end
      SHX1_3 = DisableControlAction
      SHX2_3 = 0
      SHX3_3 = 199
      SHX4_3 = true
      SHX1_3(SHX2_3, SHX3_3, SHX4_3)
      SHX1_3 = DisableControlAction
      SHX2_3 = 0
      SHX3_3 = 200
      SHX4_3 = true
      SHX1_3(SHX2_3, SHX3_3, SHX4_3)
      SHX1_3 = GetGameTimer
      SHX1_3 = SHX1_3()
      SHX2_3 = SHX1_3 - SHX0_3
      SHX3_3 = 2000
      if SHX2_3 > SHX3_3 then
        SHX2_3 = BeginTextCommandDisplayHelp
        SHX3_3 = "STRING"
        SHX2_3(SHX3_3)
        SHX2_3 = AddTextComponentSubstringPlayerName
        SHX3_3 = SHX11_1
        SHX4_3 = "client.previewExit"
        SHX3_3, SHX4_3, SHX5_3, SHX6_3 = SHX3_3(SHX4_3)
        SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3)
        SHX2_3 = EndTextCommandDisplayHelp
        SHX3_3 = 0
        SHX4_3 = false
        SHX5_3 = true
        SHX6_3 = -1
        SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3)
        SHX0_3 = SHX1_3
      end
      SHX2_3 = IsControlJustReleased
      SHX3_3 = 0
      SHX4_3 = 202
      SHX2_3 = SHX2_3(SHX3_3, SHX4_3)
      if SHX2_3 then
        SHX2_3 = DoScreenFadeOut
        SHX3_3 = 300
        SHX2_3(SHX3_3)
        SHX2_3 = Wait
        SHX3_3 = 350
        SHX2_3(SHX3_3)
        SHX2_3 = SHX99_1
        SHX3_3 = false
        SHX2_3(SHX3_3)
        break
      end
      SHX2_3 = Wait
      SHX3_3 = 0
      SHX2_3(SHX3_3)
    end
  end
  SHX2_2(SHX3_2)
end
SHX100_1(SHX101_1, SHX102_1)
SHX100_1 = RegisterNetEvent
SHX101_1 = "f2ad0543e3"
function SHX102_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX19_1.preview = false
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setRedzoneTimerDisabled
  SHX1_2 = false
  SHX0_2(SHX1_2)
  SHX0_2 = SHX98_1
  SHX0_2()
  SHX0_2 = SHX24_1
  SHX0_2()
  SHX0_2 = SHX54_1
  SHX0_2()
  SHX0_2 = IsScreenFadedIn
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX0_2 = Wait
    SHX1_2 = 200
    SHX0_2(SHX1_2)
    SHX0_2 = DoScreenFadeIn
    SHX1_2 = 400
    SHX0_2(SHX1_2)
  end
end
SHX100_1(SHX101_1, SHX102_1)
SHX100_1 = RegisterNetEvent
SHX101_1 = "2492ddffc0"
function SHX102_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = SHX19_1.fighting
  if SHX0_2 then
    return
  end
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = pairs
  SHX2_2 = SHX0_1.wagerExclusiveWeapons
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = HasPedGotWeapon
    SHX7_2 = SHX0_2
    SHX8_2 = SHX5_2
    SHX9_2 = false
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
    if SHX6_2 then
      SHX6_2 = RemoveWeaponFromPed
      SHX7_2 = SHX0_2
      SHX8_2 = SHX5_2
      SHX6_2(SHX7_2, SHX8_2)
    end
  end
end
SHX100_1(SHX101_1, SHX102_1)
SHX100_1 = RegisterNetEvent
SHX101_1 = "193ee4e15e"
function SHX102_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = Wait
  SHX1_2 = 1000
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.inArena
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX0_2 = RefillAmmoInstantly
    SHX1_2 = PlayerPedId
    SHX1_2 = SHX1_2()
    SHX0_2(SHX1_2)
  end
end
SHX100_1(SHX101_1, SHX102_1)
SHX100_1 = RegisterNetEvent
SHX101_1 = "cdcf8d66cc"
function SHX102_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  if not SHX0_2 then
    return
  end
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = FreezeEntityPosition
  SHX3_2 = SHX1_2
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = pairs
  SHX3_2 = SHX0_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = RequestIpl
    SHX9_2 = SHX7_2
    SHX8_2(SHX9_2)
    while true do
      SHX8_2 = IsIplActive
      SHX9_2 = SHX7_2
      SHX8_2 = SHX8_2(SHX9_2)
      if SHX8_2 then
        break
      end
      SHX8_2 = Wait
      SHX9_2 = 100
      SHX8_2(SHX9_2)
    end
    SHX8_2 = SHX19_1.adminTicketIpls
    SHX9_2 = SHX19_1.adminTicketIpls
    SHX9_2 = #SHX9_2
    SHX9_2 = SHX9_2 + 1
    SHX8_2[SHX9_2] = SHX7_2
  end
  SHX2_2 = FreezeEntityPosition
  SHX3_2 = SHX1_2
  SHX4_2 = false
  SHX2_2(SHX3_2, SHX4_2)
end
SHX100_1(SHX101_1, SHX102_1)
SHX100_1 = RegisterNetEvent
SHX101_1 = "4e6154b0f0"
function SHX102_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  if not SHX0_2 then
    return
  end
  SHX1_2 = pairs
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = RemoveIpl
    SHX8_2 = SHX6_2
    SHX7_2(SHX8_2)
    SHX7_2 = ipairs
    SHX8_2 = SHX19_1.adminTicketIpls
    SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
    for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
      if SHX12_2 == SHX6_2 then
        SHX13_2 = table
        SHX13_2 = SHX13_2.remove
        SHX14_2 = SHX19_1.adminTicketIpls
        SHX15_2 = SHX11_2
        SHX13_2(SHX14_2, SHX15_2)
        break
      end
    end
  end
end
SHX100_1(SHX101_1, SHX102_1)
SHX100_1 = AddEventHandler
SHX101_1 = "onResourceStop"
function SHX102_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = GetCurrentResourceName
  SHX1_2 = SHX1_2()
  if SHX1_2 ~= SHX0_2 then
    return
  end
  SHX1_2 = ipairs
  SHX2_2 = SHX19_1.spawnedProps
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = DoesEntityExist
    SHX8_2 = SHX6_2
    SHX7_2 = SHX7_2(SHX8_2)
    if SHX7_2 then
      SHX7_2 = DeleteEntity
      SHX8_2 = SHX6_2
      SHX7_2(SHX8_2)
    end
  end
  SHX1_2 = ipairs
  SHX2_2 = SHX19_1.loadedIpls
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = RemoveIpl
    SHX8_2 = SHX6_2
    SHX7_2(SHX8_2)
  end
  SHX1_2 = pairs
  SHX2_2 = SHX19_1.botPeds
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = DoesEntityExist
    SHX8_2 = SHX6_2
    SHX7_2 = SHX7_2(SHX8_2)
    if SHX7_2 then
      SHX7_2 = DeleteEntity
      SHX8_2 = SHX6_2
      SHX7_2(SHX8_2)
    end
  end
end
SHX100_1(SHX101_1, SHX102_1)
