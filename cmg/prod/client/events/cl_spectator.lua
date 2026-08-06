-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1
SHX0_1 = false
SHX1_1 = 1
SHX2_1 = nil
SHX3_1 = 50
SHX4_1 = {}
SHX5_1 = false
function SHX6_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_1 = SHX0_2
  SHX1_2 = GetPlayerFromServerId
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if -1 == SHX1_2 then
    return
  end
  SHX2_2 = GetPlayerPed
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if 0 == SHX2_2 then
    return
  end
  SHX3_2 = NetworkSetInSpectatorMode
  SHX4_2 = true
  SHX5_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SetMinimapInSpectatorMode
  SHX4_2 = true
  SHX5_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2)
end
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = nil
  SHX2_1 = SHX0_2
  SHX0_2 = NetworkSetInSpectatorMode
  SHX1_2 = false
  SHX2_2 = nil
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetMinimapInSpectatorMode
  SHX1_2 = false
  SHX2_2 = nil
  SHX0_2(SHX1_2, SHX2_2)
end
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX2_1 = SHX0_2
end
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = nil
  SHX2_1 = SHX0_2
  SHX0_2 = NetworkSetInSpectatorMode
  SHX1_2 = false
  SHX2_2 = 0
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetMinimapInSpectatorMode
  SHX1_2 = false
  SHX2_2 = 0
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = false
  SHX5_1 = SHX0_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = SetEntityCollision
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = SetEntityVisible
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX4_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = FreezeEntityPosition
  SHX2_2 = SHX0_2
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
end
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = FreezeEntityPosition
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetEntityCollision
  SHX2_2 = SHX0_2
  SHX3_2 = false
  SHX4_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = SetEntityVisible
  SHX2_2 = SHX0_2
  SHX3_2 = false
  SHX4_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = SetEntityProofs
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX4_2 = true
  SHX5_2 = true
  SHX6_2 = true
  SHX7_2 = true
  SHX8_2 = true
  SHX9_2 = true
  SHX10_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX1_2 = SetEntityInvincible
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetPlayerInvincible
  SHX2_2 = PlayerId
  SHX2_2 = SHX2_2()
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetPedDiesInWater
  SHX2_2 = SHX0_2
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
end
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
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
  SHX1_2 = SetEntityInvincible
  SHX2_2 = SHX0_2
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetPlayerInvincible
  SHX2_2 = PlayerId
  SHX2_2 = SHX2_2()
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetPedDiesInWater
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
end
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = nil
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.inArena
  SHX1_2 = SHX1_2()
  if SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayersInWager
    SHX1_2 = SHX1_2()
    SHX0_2 = SHX1_2
  else
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.isArenaSpectating
    SHX1_2 = SHX1_2()
    if SHX1_2 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.getArenaSpectatePlayers
      SHX1_2 = SHX1_2()
      SHX0_2 = SHX1_2
    else
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.getActiveEventPlayers
      SHX1_2 = SHX1_2()
      SHX0_2 = SHX1_2
    end
  end
  SHX1_2 = GetPlayerServerId
  SHX2_2 = PlayerId
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX2_2()
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX2_2 = {}
  SHX3_2 = ipairs
  SHX4_2 = SHX0_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = SHX8_2.source
    if SHX9_2 ~= SHX1_2 then
      SHX9_2 = SHX8_2.alive
      if false ~= SHX9_2 then
        SHX9_2 = #SHX2_2
        SHX9_2 = SHX9_2 + 1
        SHX2_2[SHX9_2] = SHX8_2
      end
    end
  end
  return SHX2_2
end
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = SHX12_1
  SHX0_2 = SHX0_2()
  SHX1_2 = #SHX0_2
  if 0 == SHX1_2 then
    SHX1_2 = 0
    SHX1_1 = SHX1_2
    SHX1_2 = nil
    SHX2_1 = SHX1_2
    SHX1_2 = SHX7_1
    SHX1_2()
    SHX1_2 = false
    SHX5_1 = SHX1_2
    return
  end
  SHX1_2 = ipairs
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.source
    SHX8_2 = SHX2_1
    if SHX7_2 == SHX8_2 then
      SHX1_1 = SHX5_2
      return
    end
  end
  SHX1_2 = 1
  SHX1_1 = SHX1_2
  SHX1_2 = SHX0_2[1]
  SHX1_2 = SHX1_2.source
  SHX2_1 = SHX1_2
  SHX1_2 = false
  SHX5_1 = SHX1_2
end
SHX14_1 = CMG
function SHX15_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX0_1 = SHX0_2
  SHX1_2 = SHX0_1
  if SHX1_2 then
    SHX1_2 = 0
    SHX1_1 = SHX1_2
    SHX1_2 = SHX12_1
    SHX1_2 = SHX1_2()
    SHX1_2 = SHX1_2[1]
    if SHX1_2 then
      SHX1_2 = 1
      SHX1_1 = SHX1_2
      SHX1_2 = SHX8_1
      SHX2_2 = SHX12_1
      SHX2_2 = SHX2_2()
      SHX2_2 = SHX2_2[1]
      SHX2_2 = SHX2_2.source
      SHX1_2(SHX2_2)
    end
    SHX1_2 = SHX10_1
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.getPlayerPed
    SHX2_2 = SHX2_2()
    SHX1_2(SHX2_2)
  else
    SHX1_2 = SHX11_1
    SHX2_2 = PlayerPedId
    SHX2_2 = SHX2_2()
    SHX1_2(SHX2_2)
    SHX1_2 = SHX9_1
    SHX1_2()
    SHX1_2 = ClearFocus
    SHX1_2()
  end
end
SHX14_1.setEventSpectatorMode = SHX15_1
SHX14_1 = RegisterNetEvent
SHX15_1 = "a963b1abb7"
function SHX16_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = true
  SHX0_1 = SHX1_2
  SHX1_2 = SHX8_1
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
SHX14_1(SHX15_1, SHX16_1)
SHX14_1 = CMG
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX0_1
  return SHX0_2
end
SHX14_1.isSpectatingEvent = SHX15_1
function SHX14_1(SHX0_2)
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
function SHX15_1(SHX0_2)
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
function SHX16_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX2_2 = RequestScaleformMovie
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  while true do
    SHX3_2 = HasScaleformMovieLoaded
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      break
    end
    SHX3_2 = Wait
    SHX4_2 = 0
    SHX3_2(SHX4_2)
  end
  SHX3_2 = BeginScaleformMovieMethod
  SHX4_2 = SHX2_2
  SHX5_2 = "CLEAR_ALL"
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = EndScaleformMovieMethod
  SHX3_2()
  SHX3_2 = BeginScaleformMovieMethod
  SHX4_2 = SHX2_2
  SHX5_2 = "SET_DATA_SLOT"
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = ScaleformMovieMethodAddParamInt
  SHX4_2 = 0
  SHX3_2(SHX4_2)
  SHX3_2 = SHX15_1
  SHX4_2 = GetControlInstructionalButton
  SHX5_2 = 0
  SHX6_2 = 0
  SHX7_2 = true
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX3_2 = SHX14_1
  SHX4_2 = "Zoom"
  SHX3_2(SHX4_2)
  SHX3_2 = EndScaleformMovieMethod
  SHX3_2()
  SHX3_2 = BeginScaleformMovieMethod
  SHX4_2 = SHX2_2
  SHX5_2 = "SET_DATA_SLOT"
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = ScaleformMovieMethodAddParamInt
  SHX4_2 = 1
  SHX3_2(SHX4_2)
  SHX3_2 = SHX15_1
  SHX4_2 = GetControlInstructionalButton
  SHX5_2 = 2
  SHX6_2 = 175
  SHX7_2 = true
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX3_2 = SHX15_1
  SHX4_2 = GetControlInstructionalButton
  SHX5_2 = 1
  SHX6_2 = 174
  SHX7_2 = true
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX3_2 = SHX14_1
  SHX4_2 = "Switch player"
  SHX3_2(SHX4_2)
  SHX3_2 = EndScaleformMovieMethod
  SHX3_2()
  SHX3_2 = BeginScaleformMovieMethod
  SHX4_2 = SHX2_2
  SHX5_2 = "SET_DATA_SLOT"
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = ScaleformMovieMethodAddParamInt
  SHX4_2 = 2
  SHX3_2(SHX4_2)
  SHX3_2 = SHX14_1
  SHX4_2 = "["
  SHX5_2 = SHX1_1
  SHX6_2 = "/"
  SHX7_2 = #SHX1_2
  SHX8_2 = "]"
  SHX4_2 = SHX4_2 .. SHX5_2 .. SHX6_2 .. SHX7_2 .. SHX8_2
  SHX3_2(SHX4_2)
  SHX3_2 = EndScaleformMovieMethod
  SHX3_2()
  SHX3_2 = BeginScaleformMovieMethod
  SHX4_2 = SHX2_2
  SHX5_2 = "DRAW_INSTRUCTIONAL_BUTTONS"
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = EndScaleformMovieMethod
  SHX3_2()
  SHX3_2 = BeginScaleformMovieMethod
  SHX4_2 = SHX2_2
  SHX5_2 = "SET_BACKGROUND_COLOUR"
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = ScaleformMovieMethodAddParamInt
  SHX4_2 = 0
  SHX3_2(SHX4_2)
  SHX3_2 = ScaleformMovieMethodAddParamInt
  SHX4_2 = 0
  SHX3_2(SHX4_2)
  SHX3_2 = ScaleformMovieMethodAddParamInt
  SHX4_2 = 0
  SHX3_2(SHX4_2)
  SHX3_2 = ScaleformMovieMethodAddParamInt
  SHX4_2 = 80
  SHX3_2(SHX4_2)
  SHX3_2 = EndScaleformMovieMethod
  SHX3_2()
  return SHX2_2
end
function SHX17_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX0_2 = 0.3
  SHX1_2 = 0.075
  SHX2_2 = 0.0
  SHX3_2 = 0.7
  SHX4_2 = GetSafeZoneSize
  SHX4_2 = SHX4_2()
  SHX5_2 = SHX4_2 - SHX2_2
  SHX6_2 = SHX4_2 - SHX3_2
  SHX7_2 = DrawSprite
  SHX8_2 = "timerbars"
  SHX9_2 = "all_black_bg"
  SHX10_2 = SHX5_2
  SHX11_2 = SHX6_2
  SHX12_2 = SHX0_2
  SHX13_2 = SHX1_2
  SHX14_2 = 0
  SHX15_2 = 0
  SHX16_2 = 0
  SHX17_2 = 0
  SHX18_2 = 200
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
end
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX12_1
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX1_1
  SHX1_2 = SHX1_2 + 1
  SHX1_2 = SHX0_2[SHX1_2]
  if SHX1_2 then
    SHX1_2 = SHX1_1
    SHX1_2 = SHX1_2 + 1
    SHX1_1 = SHX1_2
    SHX1_2 = SHX1_1
    SHX1_2 = SHX0_2[SHX1_2]
    if SHX1_2 then
      SHX1_2 = SHX1_1
      SHX1_2 = SHX0_2[SHX1_2]
      SHX1_2 = SHX1_2.source
      SHX2_1 = SHX1_2
      SHX1_2 = SHX6_1
      SHX2_2 = SHX2_1
      SHX1_2(SHX2_2)
    end
  else
    SHX1_2 = SHX0_2[1]
    if SHX1_2 then
      SHX1_2 = 1
      SHX1_1 = SHX1_2
      SHX1_2 = SHX1_1
      SHX1_2 = SHX0_2[SHX1_2]
      SHX1_2 = SHX1_2.source
      SHX2_1 = SHX1_2
      SHX1_2 = SHX6_1
      SHX2_2 = SHX2_1
      SHX1_2(SHX2_2)
    else
      SHX1_2 = 0
      SHX1_1 = SHX1_2
      SHX1_2 = SHX7_1
      SHX1_2()
    end
  end
end
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX12_1
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX1_1
  SHX1_2 = SHX1_2 - 1
  SHX1_2 = SHX0_2[SHX1_2]
  if SHX1_2 then
    SHX1_2 = SHX1_1
    SHX1_2 = SHX1_2 - 1
    SHX1_1 = SHX1_2
    SHX1_2 = SHX1_1
    SHX1_2 = SHX0_2[SHX1_2]
    if SHX1_2 then
      SHX1_2 = SHX1_1
      SHX1_2 = SHX0_2[SHX1_2]
      SHX1_2 = SHX1_2.source
      SHX2_1 = SHX1_2
      SHX1_2 = SHX6_1
      SHX2_2 = SHX2_1
      SHX1_2(SHX2_2)
    end
  else
    SHX1_2 = #SHX0_2
    SHX1_1 = SHX1_2
    SHX1_2 = SHX1_1
    SHX1_2 = SHX0_2[SHX1_2]
    if SHX1_2 then
      SHX1_2 = SHX1_1
      SHX1_2 = SHX0_2[SHX1_2]
      SHX1_2 = SHX1_2.source
      SHX2_1 = SHX1_2
      SHX1_2 = SHX6_1
      SHX2_2 = SHX2_1
      SHX1_2(SHX2_2)
    end
  end
end
SHX20_1 = RequestStreamedTextureDict
SHX21_1 = "mphud"
SHX22_1 = false
SHX20_1(SHX21_1, SHX22_1)
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX0_2 = SHX0_1
  if SHX0_2 then
    SHX0_2 = SHX13_1
    SHX0_2()
    SHX0_2 = SHX12_1
    SHX0_2 = SHX0_2()
    SHX1_2 = SHX16_1
    SHX2_2 = "instructional_buttons"
    SHX3_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    SHX2_2 = DrawScaleformMovieFullscreen
    SHX3_2 = SHX1_2
    SHX4_2 = 0
    SHX5_2 = 0
    SHX6_2 = 0
    SHX7_2 = 0
    SHX8_2 = 0
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX2_2 = SHX17_1
    SHX2_2()
    SHX2_2 = DrawAdvancedTextNoOutline
    SHX3_2 = 1.054
    SHX4_2 = 0.247
    SHX5_2 = 0.005
    SHX6_2 = 0.0028
    SHX7_2 = 0.45
    SHX8_2 = "SPECTATING"
    SHX9_2 = 255
    SHX10_2 = 255
    SHX11_2 = 255
    SHX12_2 = 255
    SHX13_2 = CMG
    SHX13_2 = SHX13_2.getFontId
    SHX14_2 = "Akrobat-Regular"
    SHX13_2 = SHX13_2(SHX14_2)
    SHX14_2 = 0
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX2_2 = "N/A"
    SHX3_2 = SHX1_1
    SHX3_2 = SHX0_2[SHX3_2]
    if SHX3_2 then
      SHX3_2 = SHX1_1
      SHX3_2 = SHX0_2[SHX3_2]
      SHX3_2 = SHX3_2.name
      if SHX3_2 then
        SHX3_2 = SHX1_1
        SHX3_2 = SHX0_2[SHX3_2]
        SHX2_2 = SHX3_2.name
      end
      SHX3_2 = SHX1_1
      SHX3_2 = SHX0_2[SHX3_2]
      SHX3_2 = SHX3_2.source
      SHX2_1 = SHX3_2
    end
    SHX3_2 = string
    SHX3_2 = SHX3_2.gsub
    SHX4_2 = SHX2_2
    SHX5_2 = "[^%a%d%p%s]"
    SHX6_2 = ""
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    SHX4_2 = DrawAdvancedTextNoOutline
    SHX5_2 = 1.025
    SHX6_2 = 0.27
    SHX7_2 = 0.005
    SHX8_2 = 0.0028
    SHX9_2 = 0.71
    SHX10_2 = SHX3_2
    SHX11_2 = 255
    SHX12_2 = 255
    SHX13_2 = 255
    SHX14_2 = 255
    SHX15_2 = CMG
    SHX15_2 = SHX15_2.getFontId
    SHX16_2 = "Akrobat-Regular"
    SHX15_2 = SHX15_2(SHX16_2)
    SHX16_2 = 0
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
    SHX4_2 = SetScriptGfxDrawOrder
    SHX5_2 = 7
    SHX4_2(SHX5_2)
    SHX4_2 = DrawRect
    SHX5_2 = 0.999
    SHX6_2 = 0.27
    SHX7_2 = -0.003
    SHX8_2 = 0.075
    SHX9_2 = 198
    SHX10_2 = 167
    SHX11_2 = 73
    SHX12_2 = 255
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX4_2 = DrawSprite
    SHX5_2 = "mphud"
    SHX6_2 = "spectating"
    SHX7_2 = 0.915
    SHX8_2 = 0.249
    SHX9_2 = 0.018
    SHX10_2 = 0.036
    SHX11_2 = 0.0
    SHX12_2 = 255
    SHX13_2 = 255
    SHX14_2 = 255
    SHX15_2 = 255
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    SHX4_2 = IsControlJustPressed
    SHX5_2 = 0
    SHX6_2 = 174
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
    if SHX4_2 then
      SHX4_2 = SHX19_1
      SHX4_2()
    else
      SHX4_2 = IsControlJustPressed
      SHX5_2 = 0
      SHX6_2 = 175
      SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
      if SHX4_2 then
        SHX4_2 = SHX18_1
        SHX4_2()
      end
    end
    SHX4_2 = SHX1_1
    if 1 ~= SHX4_2 then
      SHX4_2 = SHX1_1
      SHX4_2 = SHX0_2[SHX4_2]
      if not SHX4_2 then
        SHX4_2 = SHX19_1
        SHX4_2()
      end
    end
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.getPlayerPed
    SHX4_2 = SHX4_2()
    SHX5_2 = SHX10_1
    SHX6_2 = SHX4_2
    SHX5_2(SHX6_2)
    SHX5_2 = DisablePlayerFiring
    SHX6_2 = PlayerId
    SHX6_2 = SHX6_2()
    SHX7_2 = true
    SHX5_2(SHX6_2, SHX7_2)
    SHX5_2 = SetCurrentPedWeapon
    SHX6_2 = SHX4_2
    SHX7_2 = -1569615261
    SHX8_2 = true
    SHX5_2(SHX6_2, SHX7_2, SHX8_2)
    SHX5_2 = DisableControlAction
    SHX6_2 = 0
    SHX7_2 = 24
    SHX8_2 = true
    SHX5_2(SHX6_2, SHX7_2, SHX8_2)
    SHX5_2 = DisableControlAction
    SHX6_2 = 0
    SHX7_2 = 25
    SHX8_2 = true
    SHX5_2(SHX6_2, SHX7_2, SHX8_2)
    SHX5_2 = DisableControlAction
    SHX6_2 = 0
    SHX7_2 = 37
    SHX8_2 = true
    SHX5_2(SHX6_2, SHX7_2, SHX8_2)
    SHX5_2 = DisableControlAction
    SHX6_2 = 0
    SHX7_2 = 44
    SHX8_2 = true
    SHX5_2(SHX6_2, SHX7_2, SHX8_2)
    SHX5_2 = DisableControlAction
    SHX6_2 = 0
    SHX7_2 = 47
    SHX8_2 = true
    SHX5_2(SHX6_2, SHX7_2, SHX8_2)
    SHX5_2 = DisableControlAction
    SHX6_2 = 0
    SHX7_2 = 58
    SHX8_2 = true
    SHX5_2(SHX6_2, SHX7_2, SHX8_2)
    SHX5_2 = DisableControlAction
    SHX6_2 = 0
    SHX7_2 = 140
    SHX8_2 = true
    SHX5_2(SHX6_2, SHX7_2, SHX8_2)
    SHX5_2 = DisableControlAction
    SHX6_2 = 0
    SHX7_2 = 141
    SHX8_2 = true
    SHX5_2(SHX6_2, SHX7_2, SHX8_2)
    SHX5_2 = DisableControlAction
    SHX6_2 = 0
    SHX7_2 = 142
    SHX8_2 = true
    SHX5_2(SHX6_2, SHX7_2, SHX8_2)
    SHX5_2 = DisableControlAction
    SHX6_2 = 0
    SHX7_2 = 257
    SHX8_2 = true
    SHX5_2(SHX6_2, SHX7_2, SHX8_2)
    SHX5_2 = DisableControlAction
    SHX6_2 = 0
    SHX7_2 = 263
    SHX8_2 = true
    SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  end
end
SHX21_1 = CMG
SHX21_1 = SHX21_1.createThreadOnTick
SHX22_1 = SHX20_1
SHX23_1 = "Event Spectator UI"
SHX21_1(SHX22_1, SHX23_1)
SHX21_1 = GetGameTimer
SHX21_1 = SHX21_1()
SHX22_1 = 0
SHX23_1 = false
function SHX24_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX0_2 = SHX0_1
  if SHX0_2 then
    SHX0_2 = SHX2_1
    if SHX0_2 then
      SHX0_2 = SHX13_1
      SHX0_2()
      SHX0_2 = SHX2_1
      if not SHX0_2 then
        return
      end
      SHX0_2 = DisablePlayerFiring
      SHX1_2 = PlayerId
      SHX1_2 = SHX1_2()
      SHX2_2 = true
      SHX0_2(SHX1_2, SHX2_2)
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
      SHX2_2 = 37
      SHX3_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      SHX0_2 = DisableControlAction
      SHX1_2 = 0
      SHX2_2 = 44
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
      SHX2_2 = 257
      SHX3_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      SHX0_2 = DisableControlAction
      SHX1_2 = 0
      SHX2_2 = 263
      SHX3_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.isArenaSpectating
      SHX0_2 = SHX0_2()
      if SHX0_2 then
      else
        SHX0_2 = drawNativeNotification
        SHX1_2 = "To stop spectating and return to the main world run /leaveevent."
        SHX0_2(SHX1_2)
      end
      SHX0_2 = GetPlayerFromServerId
      SHX1_2 = SHX2_1
      SHX0_2 = SHX0_2(SHX1_2)
      if -1 ~= SHX0_2 then
        SHX1_2 = CMG
        SHX1_2 = SHX1_2.getPlayerPed
        SHX1_2 = SHX1_2()
        SHX2_2 = SHX10_1
        SHX3_2 = SHX1_2
        SHX2_2(SHX3_2)
        SHX2_2 = GetPlayerPed
        SHX3_2 = SHX0_2
        SHX2_2 = SHX2_2(SHX3_2)
        SHX3_2 = GetEntityCoords
        SHX4_2 = SHX2_2
        SHX3_2 = SHX3_2(SHX4_2)
        SHX4_2 = CMG
        SHX4_2 = SHX4_2.isArenaSpectating
        SHX4_2 = SHX4_2()
        if SHX4_2 then
          SHX4_2 = CMG
          SHX4_2 = SHX4_2.getArenaSpectatePedOffsetZ
          SHX4_2 = SHX4_2()
          if SHX4_2 then
            goto SHX_LABEL_110
          end
        end
        SHX4_2 = SHX3_1
        -- [FIX IF ERROR] Move ::SHX_LABEL_110:: outside nested blocks until all 'goto SHX_LABEL_110' can see it
        ::SHX_LABEL_110::
        SHX5_2 = SetFocusPosAndVel
        SHX6_2 = SHX3_2.x
        SHX7_2 = SHX3_2.y
        SHX8_2 = SHX3_2.z
        SHX9_2 = 0.0
        SHX10_2 = 0.0
        SHX11_2 = 0.0
        SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
        SHX5_2 = SetEntityCoordsNoOffset
        SHX6_2 = SHX1_2
        SHX7_2 = SHX3_2.x
        SHX8_2 = SHX3_2.y
        SHX9_2 = SHX3_2.z
        SHX9_2 = SHX9_2 - SHX4_2
        SHX10_2 = true
        SHX11_2 = false
        SHX12_2 = false
        SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
        SHX5_2 = SHX5_1
        if not SHX5_2 then
          SHX5_2 = SHX6_1
          SHX6_2 = SHX2_1
          SHX5_2(SHX6_2)
          SHX5_2 = true
          SHX5_1 = SHX5_2
        end
        SHX5_2 = GetActivePlayers
        SHX5_2 = SHX5_2()
        SHX6_2 = pairs
        SHX7_2 = SHX5_2
        SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
        for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
          SHX12_2 = GetPlayerPed
          SHX13_2 = SHX11_2
          SHX12_2 = SHX12_2(SHX13_2)
          SHX13_2 = SetEntityNoCollisionEntity
          SHX14_2 = SHX1_2
          SHX15_2 = SHX12_2
          SHX16_2 = true
          SHX13_2(SHX14_2, SHX15_2, SHX16_2)
        end
      else
        SHX1_2 = false
        SHX5_1 = SHX1_2
        SHX1_2 = CMG
        SHX1_2 = SHX1_2.isArenaSpectating
        SHX1_2 = SHX1_2()
        if not SHX1_2 then
          SHX2_2 = SHX2_1
          SHX1_2 = SHX4_1
          SHX1_2 = SHX1_2[SHX2_2]
          if SHX1_2 then
            SHX1_2 = SHX23_1
            if not SHX1_2 then
              SHX1_2 = true
              SHX23_1 = SHX1_2
              SHX1_2 = Citizen
              SHX1_2 = SHX1_2.CreateThread
              function SHX2_2()
                -- [AI CLEANUP] Decompiled Lua - Fix these:
                -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                -- 3. Replace goto/label with while/repeat-until where possible
                -- 4. Remove decompiler comments, add meaningful ones
                -- 5. Fix indentation and formatting
                
                local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3
                SHX0_3 = DoScreenFadeOut
                SHX1_3 = 250
                SHX0_3(SHX1_3)
                SHX1_3 = SHX2_1
                SHX0_3 = SHX4_1
                SHX0_3 = SHX0_3[SHX1_3]
                SHX1_3 = SetFocusPosAndVel
                SHX2_3 = SHX0_3.x
                SHX3_3 = SHX0_3.y
                SHX4_3 = SHX0_3.z
                SHX5_3 = 0.0
                SHX6_3 = 0.0
                SHX7_3 = 0.0
                SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
                SHX1_3 = SetEntityCoords
                SHX2_3 = PlayerPedId
                SHX2_3 = SHX2_3()
                SHX3_3 = SHX0_3.x
                SHX4_3 = SHX0_3.y
                SHX5_3 = SHX0_3.z
                SHX6_3 = SHX3_1
                SHX5_3 = SHX5_3 - SHX6_3
                SHX6_3 = true
                SHX7_3 = false
                SHX8_3 = false
                SHX9_3 = false
                SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
                SHX1_3 = Wait
                SHX2_3 = 250
                SHX1_3(SHX2_3)
                SHX1_3 = DoScreenFadeIn
                SHX2_3 = 250
                SHX1_3(SHX2_3)
                SHX1_3 = false
                SHX23_1 = SHX1_3
              end
              SHX1_2(SHX2_2)
            end
          end
        end
        SHX1_2 = CMG
        SHX1_2 = SHX1_2.isArenaSpectating
        SHX1_2 = SHX1_2()
        if not SHX1_2 then
          SHX1_2 = GetGameTimer
          SHX1_2 = SHX1_2()
          SHX2_2 = SHX21_1
          SHX1_2 = SHX1_2 - SHX2_2
          SHX2_2 = 5000
          if SHX1_2 > SHX2_2 then
            SHX1_2 = TriggerServerEvent
            SHX2_2 = "b7ce7ba79c"
            SHX1_2(SHX2_2)
            SHX1_2 = GetGameTimer
            SHX1_2 = SHX1_2()
            SHX21_1 = SHX1_2
          end
          SHX1_2 = GetGameTimer
          SHX1_2 = SHX1_2()
          SHX2_2 = SHX22_1
          SHX2_2 = SHX1_2 - SHX2_2
          SHX3_2 = 5000
          if SHX2_2 >= SHX3_2 then
            SHX22_1 = SHX1_2
            SHX2_2 = notify
            SHX3_2 = "~r~Couldn't spectate, person not in your zone"
            SHX2_2(SHX3_2)
          end
        end
      end
    end
  end
end
SHX25_1 = CMG
SHX25_1 = SHX25_1.createThreadOnTick
SHX26_1 = SHX24_1
SHX27_1 = "Event Spectator Controls"
SHX25_1(SHX26_1, SHX27_1)
SHX25_1 = RegisterNetEvent
SHX26_1 = "87a29fa0b5"
function SHX27_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX4_1 = SHX0_2
end
SHX25_1(SHX26_1, SHX27_1)
SHX25_1 = RegisterNetEvent
SHX26_1 = "e0d0f4d443"
function SHX27_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.markArenaPlayerDead
  SHX0_2()
  SHX0_2 = TriggerEvent
  SHX1_2 = "193ee4e15e"
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerVehicle
  SHX0_2 = SHX0_2()
  if 0 ~= SHX0_2 then
    SHX1_2 = DeleteEntity
    SHX2_2 = SHX0_2
    SHX1_2(SHX2_2)
  end
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = RemoveAllPedWeapons
  SHX3_2 = SHX1_2
  SHX4_2 = false
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetCurrentPedWeapon
  SHX3_2 = SHX1_2
  SHX4_2 = -1569615261
  SHX5_2 = true
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.setEventSpectatorMode
  SHX3_2 = true
  SHX2_2(SHX3_2)
end
SHX25_1(SHX26_1, SHX27_1)
