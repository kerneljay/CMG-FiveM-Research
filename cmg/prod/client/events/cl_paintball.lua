-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_paintball"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = nil
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = SHX0_2[1]
  SHX2_2 = SHX0_2[2]
  SHX3_2 = SHX0_1.arenas
  SHX3_2 = SHX3_2[SHX1_2]
  SHX3_2 = SHX3_2.teams
  SHX3_2 = SHX3_2[SHX2_2]
  SHX4_2 = SHX0_1.teamConfigs
  SHX5_2 = SHX3_2.name
  SHX4_2 = SHX4_2[SHX5_2]
  SHX5_2 = drawNativeNotification
  SHX6_2 = string
  SHX6_2 = SHX6_2.format
  SHX7_2 = "Press ~INPUT_PICKUP~ to play paintball and join the %s%s~w~ team. (\194\1635,000)"
  SHX8_2 = SHX4_2.textFormatColour
  SHX9_2 = string
  SHX9_2 = SHX9_2.upper
  SHX10_2 = SHX3_2.name
  SHX9_2, SHX10_2 = SHX9_2(SHX10_2)
  SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX5_2 = IsControlJustPressed
  SHX6_2 = 0
  SHX7_2 = 38
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
  if SHX5_2 then
    SHX5_2 = TriggerServerEvent
    SHX6_2 = "a03486a46f"
    SHX7_2 = SHX1_2
    SHX8_2 = SHX2_2
    SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  end
end
SHX3_1 = Citizen
SHX3_1 = SHX3_1.CreateThread
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2
  SHX0_2 = pairs
  SHX1_2 = SHX0_1.teamConfigs
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = "PAINTBALL_"
    SHX7_2 = string
    SHX7_2 = SHX7_2.upper
    SHX8_2 = SHX4_2
    SHX7_2 = SHX7_2(SHX8_2)
    SHX6_2 = SHX6_2 .. SHX7_2
    SHX7_2 = AddRelationshipGroup
    SHX8_2 = SHX6_2
    SHX7_2, SHX8_2 = SHX7_2(SHX8_2)
    SHX5_2.relationship = SHX8_2
  end
  SHX0_2 = pairs
  SHX1_2 = SHX0_1.arenas
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = pairs
    SHX7_2 = SHX5_2.teams
    SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
    for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
      SHX12_2 = SHX0_1.teamConfigs
      SHX13_2 = SHX11_2.name
      SHX12_2 = SHX12_2[SHX13_2]
      SHX12_2 = SHX12_2.markerColour
      SHX13_2 = tCMG
      SHX13_2 = SHX13_2.addMarker
      SHX14_2 = SHX11_2.joinPosition
      SHX14_2 = SHX14_2.x
      SHX15_2 = SHX11_2.joinPosition
      SHX15_2 = SHX15_2.y
      SHX16_2 = SHX11_2.joinPosition
      SHX16_2 = SHX16_2.z
      SHX16_2 = SHX16_2 - 0.98
      SHX17_2 = 1.0
      SHX18_2 = 1.0
      SHX19_2 = 1.0
      SHX20_2 = SHX12_2[1]
      SHX21_2 = SHX12_2[2]
      SHX22_2 = SHX12_2[3]
      SHX23_2 = 170
      SHX24_2 = 50.0
      SHX25_2 = 23
      SHX26_2 = false
      SHX27_2 = false
      SHX28_2 = true
      SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
      SHX13_2 = CMG
      SHX13_2 = SHX13_2.createArea
      SHX14_2 = string
      SHX14_2 = SHX14_2.format
      SHX15_2 = "paintball_%d_%d_join"
      SHX16_2 = SHX4_2
      SHX17_2 = SHX10_2
      SHX14_2 = SHX14_2(SHX15_2, SHX16_2, SHX17_2)
      SHX15_2 = SHX11_2.joinPosition
      SHX16_2 = 1.5
      SHX17_2 = 6.0
      function SHX18_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3
      end
      function SHX19_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3
      end
      SHX20_2 = SHX2_1
      SHX21_2 = {}
      SHX22_2 = SHX4_2
      SHX23_2 = SHX10_2
      SHX21_2[1] = SHX22_2
      SHX21_2[2] = SHX23_2
      SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
    end
  end
end
SHX3_1(SHX4_1)
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = drawNativeNotification
  SHX1_2 = "Press ~INPUT_PICKUP~ to submit a vote to start"
  SHX0_2(SHX1_2)
  SHX0_2 = IsControlJustPressed
  SHX1_2 = 0
  SHX2_2 = 38
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = TriggerServerEvent
    SHX1_2 = "1abb79cabe"
    SHX0_2(SHX1_2)
  end
end
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = drawNativeNotification
  SHX1_2 = "Press ~INPUT_PICKUP~ to submit a vote to end"
  SHX0_2(SHX1_2)
  SHX0_2 = IsControlJustPressed
  SHX1_2 = 0
  SHX2_2 = 38
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = TriggerServerEvent
    SHX1_2 = "8706f69943"
    SHX0_2(SHX1_2)
  end
end
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = drawNativeNotification
  SHX1_2 = "Press ~INPUT_PICKUP~ to exit the arena"
  SHX0_2(SHX1_2)
  SHX0_2 = IsControlJustPressed
  SHX1_2 = 0
  SHX2_2 = 38
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = TriggerServerEvent
    SHX1_2 = "a97ea54703"
    SHX0_2(SHX1_2)
  end
end
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = drawNativeNotification
  SHX1_2 = "~r~Press ~INPUT_PICKUP~ to pick up paintballs!"
  SHX0_2(SHX1_2)
  SHX0_2 = IsControlJustPressed
  SHX1_2 = 0
  SHX2_2 = 38
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = TriggerServerEvent
    SHX1_2 = "b1d2dcc17a"
    SHX0_2(SHX1_2)
  end
end
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = drawNativeNotification
  SHX1_2 = "~r~Press ~INPUT_PICKUP~ to buy an plasma gun. (\194\1631,000)"
  SHX0_2(SHX1_2)
  SHX0_2 = IsControlJustPressed
  SHX1_2 = 0
  SHX2_2 = 38
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = TriggerServerEvent
    SHX1_2 = "d57bbe5e17"
    SHX0_2(SHX1_2)
  end
end
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = RequestScaleformMovie
  SHX1_2 = "mp_big_message_freemode"
  SHX0_2 = SHX0_2(SHX1_2)
  while true do
    SHX1_2 = HasScaleformMovieLoaded
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      break
    end
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
  end
  SHX1_2 = "~r~"
  SHX2_2 = SHX1_1
  if SHX2_2 then
    SHX2_2 = pairs
    SHX3_2 = SHX1_1.info
    SHX3_2 = SHX3_2.teams
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
    for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
      if SHX6_2 > 1 then
        SHX8_2 = SHX1_2
        SHX9_2 = " vs "
        SHX8_2 = SHX8_2 .. SHX9_2
        SHX1_2 = SHX8_2
      end
      SHX8_2 = SHX1_2
      SHX9_2 = SHX7_2.name
      SHX8_2 = SHX8_2 .. SHX9_2
      SHX1_2 = SHX8_2
    end
  end
  SHX2_2 = SHX1_2
  SHX3_2 = " - Paintball"
  SHX2_2 = SHX2_2 .. SHX3_2
  SHX1_2 = SHX2_2
  SHX2_2 = BeginScaleformMovieMethod
  SHX3_2 = SHX0_2
  SHX4_2 = "SHOW_SHARD_WASTED_MP_MESSAGE"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = _ENV
  SHX3_2 = "ScaleformMovieMethodAddParamTextureNameString"
  SHX2_2 = SHX2_2[SHX3_2]
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
  SHX2_2 = _ENV
  SHX3_2 = "ScaleformMovieMethodAddParamTextureNameString"
  SHX2_2 = SHX2_2[SHX3_2]
  SHX3_2 = "Start the game when everyone is ready by going up to the marker."
  SHX2_2(SHX3_2)
  SHX2_2 = EndScaleformMovieMethod
  SHX2_2()
  SHX2_2 = GetGameTimer
  SHX2_2 = SHX2_2()
  while true do
    SHX3_2 = GetGameTimer
    SHX3_2 = SHX3_2()
    SHX3_2 = SHX3_2 - SHX2_2
    SHX4_2 = 5000
    if not (SHX3_2 < SHX4_2) then
      break
    end
    SHX3_2 = SHX1_1
    if not SHX3_2 then
      break
    end
    SHX3_2 = SHX1_1.isStarted
    if SHX3_2 then
      break
    end
    SHX3_2 = DrawScaleformMovieFullscreen
    SHX4_2 = SHX0_2
    SHX5_2 = 255
    SHX6_2 = 255
    SHX7_2 = 255
    SHX8_2 = 255
    SHX9_2 = 0
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    SHX3_2 = Citizen
    SHX3_2 = SHX3_2.Wait
    SHX4_2 = 0
    SHX3_2(SHX4_2)
  end
  SHX3_2 = SetScaleformMovieAsNoLongerNeeded
  SHX4_2 = SHX0_2
  SHX3_2(SHX4_2)
end
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX0_2 = pairs
  SHX1_2 = SHX0_1.teamConfigs
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = pairs
    SHX7_2 = SHX0_1.teamConfigs
    SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
    for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
      if SHX5_2 == SHX11_2 then
        SHX12_2 = SetRelationshipBetweenGroups
        SHX13_2 = 0
        SHX14_2 = SHX5_2.relationship
        SHX15_2 = SHX11_2.relationship
        SHX12_2(SHX13_2, SHX14_2, SHX15_2)
      else
        SHX12_2 = SetRelationshipBetweenGroups
        SHX13_2 = 5
        SHX14_2 = SHX5_2.relationship
        SHX15_2 = SHX11_2.relationship
        SHX12_2(SHX13_2, SHX14_2, SHX15_2)
      end
    end
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setFriendlyFire
  SHX1_2 = false
  SHX0_2(SHX1_2)
end
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX0_2 = pairs
  SHX1_2 = SHX0_1.teamConfigs
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = pairs
    SHX7_2 = SHX0_1.teamConfigs
    SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
    for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
      if SHX5_2 == SHX11_2 then
        SHX12_2 = ClearRelationshipBetweenGroups
        SHX13_2 = 0
        SHX14_2 = SHX5_2.relationship
        SHX15_2 = SHX11_2.relationship
        SHX12_2(SHX13_2, SHX14_2, SHX15_2)
      else
        SHX12_2 = ClearRelationshipBetweenGroups
        SHX13_2 = 5
        SHX14_2 = SHX5_2.relationship
        SHX15_2 = SHX11_2.relationship
        SHX12_2(SHX13_2, SHX14_2, SHX15_2)
      end
    end
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setFriendlyFire
  SHX1_2 = true
  SHX0_2(SHX1_2)
end
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = Scaleform
  SHX1_2 = "SC_LEADERBOARD"
  SHX0_2 = SHX0_2(SHX1_2)
  SHX1_2 = SHX0_2.RunFunction
  SHX2_2 = "SET_DISPLAY_TYPE"
  SHX3_2 = {}
  SHX4_2 = 1
  SHX3_2[1] = SHX4_2
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SHX1_1
  if SHX1_2 then
    SHX1_2 = SHX0_2.RunFunction
    SHX2_2 = "SET_MULTIPLAYER_TITLE"
    SHX3_2 = {}
    SHX4_2 = SHX1_1.info
    SHX4_2 = SHX4_2.name
    SHX3_2[1] = SHX4_2
    SHX1_2(SHX2_2, SHX3_2)
  end
  SHX1_2 = SHX0_2.RunFunction
  SHX2_2 = "SET_TITLE"
  SHX3_2 = {}
  SHX4_2 = "NAME"
  SHX5_2 = "KILLS"
  SHX6_2 = "DEATHS"
  SHX7_2 = "KDR"
  SHX3_2[1] = SHX4_2
  SHX3_2[2] = SHX5_2
  SHX3_2[3] = SHX6_2
  SHX3_2[4] = SHX7_2
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SHX1_1
  if SHX1_2 then
    SHX1_1.leaderboard = SHX0_2
  end
end
SHX12_1 = RegisterNetEvent
SHX13_1 = "a03486a46f"
function SHX14_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2
  SHX2_2 = {}
  SHX3_2 = SHX0_1.arenas
  SHX3_2 = SHX3_2[SHX0_2]
  SHX2_2.info = SHX3_2
  SHX3_2 = {}
  SHX2_2.teams = SHX3_2
  SHX1_1 = SHX2_2
  SHX2_2 = pairs
  SHX3_2 = SHX1_1.info
  SHX3_2 = SHX3_2.teams
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX1_1.teams
    SHX9_2 = {}
    SHX10_2 = {}
    SHX9_2.players = SHX10_2
    SHX9_2.info = SHX7_2
    SHX8_2[SHX6_2] = SHX9_2
  end
  SHX2_2 = SHX1_1.teams
  SHX2_2 = SHX2_2[SHX1_2]
  SHX1_1.team = SHX2_2
  SHX2_2 = SHX1_1.team
  SHX2_2 = SHX2_2.info
  SHX3_2 = {}
  SHX4_2 = tCMG
  SHX4_2 = SHX4_2.addMarker
  SHX5_2 = SHX1_1.info
  SHX5_2 = SHX5_2.startPosition
  SHX5_2 = SHX5_2.x
  SHX6_2 = SHX1_1.info
  SHX6_2 = SHX6_2.startPosition
  SHX6_2 = SHX6_2.y
  SHX7_2 = SHX1_1.info
  SHX7_2 = SHX7_2.startPosition
  SHX7_2 = SHX7_2.z
  SHX8_2 = 1.0
  SHX9_2 = 1.0
  SHX10_2 = 1.0
  SHX11_2 = 0
  SHX12_2 = 255
  SHX13_2 = 10
  SHX14_2 = 170
  SHX15_2 = 50.0
  SHX16_2 = 5
  SHX17_2 = false
  SHX18_2 = false
  SHX19_2 = true
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
  SHX5_2 = tCMG
  SHX5_2 = SHX5_2.addMarker
  SHX6_2 = SHX1_1.info
  SHX6_2 = SHX6_2.endPosition
  SHX6_2 = SHX6_2.x
  SHX7_2 = SHX1_1.info
  SHX7_2 = SHX7_2.endPosition
  SHX7_2 = SHX7_2.y
  SHX8_2 = SHX1_1.info
  SHX8_2 = SHX8_2.endPosition
  SHX8_2 = SHX8_2.z
  SHX9_2 = 1.0
  SHX10_2 = 1.0
  SHX11_2 = 1.0
  SHX12_2 = 255
  SHX13_2 = 10
  SHX14_2 = 0
  SHX15_2 = 170
  SHX16_2 = 50.0
  SHX17_2 = 24
  SHX18_2 = false
  SHX19_2 = false
  SHX20_2 = true
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
  SHX6_2 = tCMG
  SHX6_2 = SHX6_2.addMarker
  SHX7_2 = SHX1_1.info
  SHX7_2 = SHX7_2.exitPosition
  SHX7_2 = SHX7_2.x
  SHX8_2 = SHX1_1.info
  SHX8_2 = SHX8_2.exitPosition
  SHX8_2 = SHX8_2.y
  SHX9_2 = SHX1_1.info
  SHX9_2 = SHX9_2.exitPosition
  SHX9_2 = SHX9_2.z
  SHX9_2 = SHX9_2 - 1.0
  SHX10_2 = 1.0
  SHX11_2 = 1.0
  SHX12_2 = 1.0
  SHX13_2 = 255
  SHX14_2 = 255
  SHX15_2 = 255
  SHX16_2 = 170
  SHX17_2 = 50.0
  SHX18_2 = 1
  SHX19_2 = false
  SHX20_2 = false
  SHX21_2 = true
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
  SHX7_2 = tCMG
  SHX7_2 = SHX7_2.addMarker
  SHX8_2 = SHX2_2.buyPaintballPosition
  SHX8_2 = SHX8_2.x
  SHX9_2 = SHX2_2.buyPaintballPosition
  SHX9_2 = SHX9_2.y
  SHX10_2 = SHX2_2.buyPaintballPosition
  SHX10_2 = SHX10_2.z
  SHX11_2 = 1.0
  SHX12_2 = 1.0
  SHX13_2 = 1.0
  SHX14_2 = 255
  SHX15_2 = 255
  SHX16_2 = 255
  SHX17_2 = 170
  SHX18_2 = 50.0
  SHX19_2 = 0
  SHX20_2 = false
  SHX21_2 = false
  SHX22_2 = true
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
  SHX8_2 = tCMG
  SHX8_2 = SHX8_2.addMarker
  SHX9_2 = SHX2_2.buyPlasmaPosition
  SHX9_2 = SHX9_2.x
  SHX10_2 = SHX2_2.buyPlasmaPosition
  SHX10_2 = SHX10_2.y
  SHX11_2 = SHX2_2.buyPlasmaPosition
  SHX11_2 = SHX11_2.z
  SHX12_2 = 1.0
  SHX13_2 = 1.0
  SHX14_2 = 1.0
  SHX15_2 = 255
  SHX16_2 = 255
  SHX17_2 = 255
  SHX18_2 = 170
  SHX19_2 = 50.0
  SHX20_2 = 29
  SHX21_2 = false
  SHX22_2 = false
  SHX23_2 = true
  SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
  SHX3_2[1] = SHX4_2
  SHX3_2[2] = SHX5_2
  SHX3_2[3] = SHX6_2
  SHX3_2[4] = SHX7_2
  SHX3_2[5] = SHX8_2
  SHX3_2[6] = SHX9_2
  SHX3_2[7] = SHX10_2
  SHX3_2[8] = SHX11_2
  SHX3_2[9] = SHX12_2
  SHX3_2[10] = SHX13_2
  SHX3_2[11] = SHX14_2
  SHX3_2[12] = SHX15_2
  SHX3_2[13] = SHX16_2
  SHX3_2[14] = SHX17_2
  SHX3_2[15] = SHX18_2
  SHX3_2[16] = SHX19_2
  SHX3_2[17] = SHX20_2
  SHX3_2[18] = SHX21_2
  SHX3_2[19] = SHX22_2
  SHX3_2[20] = SHX23_2
  SHX1_1.markers = SHX3_2
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.createArea
  SHX4_2 = "paintball_start"
  SHX5_2 = SHX1_1.info
  SHX5_2 = SHX5_2.startPosition
  SHX6_2 = 1.5
  SHX7_2 = 6.0
  function SHX8_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  function SHX9_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX10_2 = SHX3_1
  SHX11_2 = nil
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.createArea
  SHX4_2 = "paintball_end"
  SHX5_2 = SHX1_1.info
  SHX5_2 = SHX5_2.endPosition
  SHX6_2 = 1.5
  SHX7_2 = 6.0
  function SHX8_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  function SHX9_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX10_2 = SHX4_1
  SHX11_2 = nil
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.createArea
  SHX4_2 = "paintball_exit"
  SHX5_2 = SHX1_1.info
  SHX5_2 = SHX5_2.exitPosition
  SHX6_2 = 1.5
  SHX7_2 = 6.0
  function SHX8_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  function SHX9_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX10_2 = SHX5_1
  SHX11_2 = nil
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.createArea
  SHX4_2 = "paintball_buyPaintball"
  SHX5_2 = SHX2_2.buyPaintballPosition
  SHX6_2 = 1.5
  SHX7_2 = 6.0
  function SHX8_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  function SHX9_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX10_2 = SHX6_1
  SHX11_2 = nil
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.createArea
  SHX4_2 = "paintball_buyPlasma"
  SHX5_2 = SHX2_2.buyPlasmaPosition
  SHX6_2 = 1.5
  SHX7_2 = 6.0
  function SHX8_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  function SHX9_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX10_2 = SHX7_1
  SHX11_2 = nil
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX3_2 = Citizen
  SHX3_2 = SHX3_2.CreateThread
  SHX4_2 = SHX8_1
  SHX3_2(SHX4_2)
  SHX3_2 = SHX0_1.teamConfigs
  SHX4_2 = SHX2_2.name
  SHX3_2 = SHX3_2[SHX4_2]
  SHX4_2 = notify
  SHX5_2 = string
  SHX5_2 = SHX5_2.format
  SHX6_2 = "You have joined the %s%s~w~ team!"
  SHX7_2 = SHX3_2.textFormatColour
  SHX8_2 = string
  SHX8_2 = SHX8_2.upper
  SHX9_2 = SHX2_2.name
  SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2 = SHX8_2(SHX9_2)
  SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
  SHX4_2 = tCMG
  SHX4_2 = SHX4_2.getCustomization
  SHX4_2 = SHX4_2()
  SHX1_1.previousCustomisation = SHX4_2
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getWeapons
  SHX4_2 = SHX4_2()
  SHX1_1.previousWeapons = SHX4_2
  SHX4_2 = tCMG
  SHX4_2 = SHX4_2.setCustomization
  SHX5_2 = {}
  SHX6_2 = SHX3_2.modelHash
  SHX5_2.modelhash = SHX6_2
  SHX4_2(SHX5_2)
  SHX4_2 = RemoveAllPedWeapons
  SHX5_2 = PlayerPedId
  SHX5_2 = SHX5_2()
  SHX6_2 = false
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = tCMG
  SHX4_2 = SHX4_2.teleport
  SHX5_2 = SHX2_2.spawnPosition
  SHX5_2 = SHX5_2.x
  SHX6_2 = SHX2_2.spawnPosition
  SHX6_2 = SHX6_2.y
  SHX7_2 = SHX2_2.spawnPosition
  SHX7_2 = SHX7_2.z
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = SHX9_1
  SHX4_2()
  SHX4_2 = SetPedRelationshipGroupHash
  SHX5_2 = PlayerPedId
  SHX5_2 = SHX5_2()
  SHX6_2 = SHX3_2.relationship
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SHX11_1
  SHX4_2()
end
SHX12_1(SHX13_1, SHX14_1)
SHX12_1 = RegisterNetEvent
SHX13_1 = "58660fc55e"
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = SHX1_1
  if not SHX0_2 then
    return
  end
  SHX1_1.isStarted = true
  SHX1_1.isRespawning = false
  SHX0_2 = SHX1_1.team
  SHX0_2 = SHX0_2.info
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.teleport
  SHX2_2 = SHX0_2.spawnPosition
  SHX2_2 = SHX2_2.x
  SHX3_2 = SHX0_2.spawnPosition
  SHX3_2 = SHX3_2.y
  SHX4_2 = SHX0_2.spawnPosition
  SHX4_2 = SHX4_2.z
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = notify
  SHX2_2 = "~y~Game starts in ~r~3"
  SHX1_2(SHX2_2)
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.Wait
  SHX2_2 = 1000
  SHX1_2(SHX2_2)
  SHX1_2 = notify
  SHX2_2 = "~y~Game starts in ~r~2"
  SHX1_2(SHX2_2)
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.Wait
  SHX2_2 = 1000
  SHX1_2(SHX2_2)
  SHX1_2 = notify
  SHX2_2 = "~y~Game starts in ~r~1"
  SHX1_2(SHX2_2)
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.Wait
  SHX2_2 = 1000
  SHX1_2(SHX2_2)
  SHX1_2 = notify
  SHX2_2 = "~y~The game has ~r~begun!"
  SHX1_2(SHX2_2)
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = ClearPedBloodDamage
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
  SHX2_2 = ResetPedVisibleDamage
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
  SHX2_2 = ClearPedLastWeaponDamage
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
  SHX2_2 = Citizen
  SHX2_2 = SHX2_2.Wait
  SHX3_2 = 2000
  SHX2_2(SHX3_2)
  SHX2_2 = drawNativeNotification
  SHX3_2 = "Press ~INPUT_VEH_FLY_ATTACK_CAMERA~ to view the leaderboard"
  SHX2_2(SHX3_2)
end
SHX12_1(SHX13_1, SHX14_1)
function SHX12_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
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
  SHX3_2 = GetBlipFromEntity
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if 0 ~= SHX3_2 then
    SHX4_2 = RemoveBlip
    SHX5_2 = SHX3_2
    SHX4_2(SHX5_2)
  end
end
SHX13_1 = RegisterNetEvent
SHX14_1 = "0fecd97ab6"
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = SHX1_1
  if not SHX0_2 then
    return
  end
  SHX1_1.isEnding = true
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.removeArea
  SHX1_2 = "paintball_start"
  SHX0_2(SHX1_2)
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.removeArea
  SHX1_2 = "paintball_end"
  SHX0_2(SHX1_2)
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.removeArea
  SHX1_2 = "paintball_exit"
  SHX0_2(SHX1_2)
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.removeArea
  SHX1_2 = "paintball_buyPaintball"
  SHX0_2(SHX1_2)
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.removeArea
  SHX1_2 = "paintball_buyPlasma"
  SHX0_2(SHX1_2)
  SHX0_2 = pairs
  SHX1_2 = SHX1_1.markers
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = tCMG
    SHX6_2 = SHX6_2.removeMarker
    SHX7_2 = SHX5_2
    SHX6_2(SHX7_2)
  end
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.setCustomization
  SHX1_2 = SHX1_1.previousCustomisation
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.Wait
  SHX1_2 = 500
  SHX0_2(SHX1_2)
  SHX0_2 = GetGameTimer
  SHX0_2 = SHX0_2()
  while true do
    SHX1_2 = GetGameTimer
    SHX1_2 = SHX1_2()
    SHX1_2 = SHX1_2 - SHX0_2
    SHX2_2 = 2000
    if not (SHX1_2 < SHX2_2) then
      break
    end
    SHX1_2 = PlayerPedId
    SHX1_2 = SHX1_2()
    SHX2_2 = DoesEntityExist
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      SHX2_2 = HaveAllStreamingRequestsCompleted
      SHX3_2 = SHX1_2
      SHX2_2 = SHX2_2(SHX3_2)
      if SHX2_2 then
        break
      end
    end
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
  SHX1_2 = RemoveAllPedWeapons
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.Wait
  SHX2_2 = 0
  SHX1_2(SHX2_2)
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = ClearPedBloodDamage
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
  SHX2_2 = ResetPedVisibleDamage
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
  SHX2_2 = ClearPedLastWeaponDamage
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
  SHX2_2 = tCMG
  SHX2_2 = SHX2_2.teleport
  SHX3_2 = SHX1_1.info
  SHX3_2 = SHX3_2.homePosition
  SHX3_2 = SHX3_2.x
  SHX4_2 = SHX1_1.info
  SHX4_2 = SHX4_2.homePosition
  SHX4_2 = SHX4_2.y
  SHX5_2 = SHX1_1.info
  SHX5_2 = SHX5_2.homePosition
  SHX5_2 = SHX5_2.z
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = pairs
  SHX3_2 = SHX1_1.team
  SHX3_2 = SHX3_2.players
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX7_2 = SHX12_1
    SHX8_2 = SHX6_2
    SHX7_2(SHX8_2)
  end
  SHX2_2 = SHX10_1
  SHX2_2()
  SHX2_2 = SetPedRelationshipGroupHash
  SHX3_2 = PlayerPedId
  SHX3_2 = SHX3_2()
  SHX4_2 = 1862763509
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.giveWeapons
  SHX3_2 = SHX1_1.previousWeapons
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = nil
  SHX1_1 = SHX2_2
end
SHX13_1(SHX14_1, SHX15_1)
SHX13_1 = RegisterNetEvent
SHX14_1 = "676a4b301f"
function SHX15_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX1_1
  if SHX2_2 then
    SHX2_2 = SHX1_1.teams
    SHX2_2 = SHX2_2[SHX0_2]
    SHX2_2.players = SHX1_2
  end
end
SHX13_1(SHX14_1, SHX15_1)
SHX13_1 = RegisterNetEvent
SHX14_1 = "3037bb1df5"
function SHX15_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2
  SHX3_2 = SHX1_1
  if SHX3_2 then
    SHX3_2 = SHX1_1.teams
    SHX3_2 = SHX3_2[SHX0_2]
    SHX3_2 = SHX3_2.players
    SHX3_2[SHX1_2] = SHX2_2
  end
end
SHX13_1(SHX14_1, SHX15_1)
SHX13_1 = RegisterNetEvent
SHX14_1 = "1d3fc5c779"
function SHX15_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = SHX1_1
  if SHX1_2 then
    SHX1_2 = pairs
    SHX2_2 = SHX1_1.teams
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
    for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
      SHX7_2 = SHX6_2.players
      SHX7_2 = SHX7_2[SHX0_2]
      if SHX7_2 then
        SHX7_2 = SHX6_2.players
        SHX7_2[SHX0_2] = nil
        break
      end
    end
  end
  SHX1_2 = SHX12_1
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
SHX13_1(SHX14_1, SHX15_1)
SHX13_1 = RegisterNetEvent
SHX14_1 = "cbb83f5f31"
function SHX15_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX3_2 = SHX1_1
  if not SHX3_2 then
    return
  end
  SHX3_2 = pairs
  SHX4_2 = SHX1_1.teams
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = SHX8_2.players
    SHX9_2 = SHX9_2[SHX0_2]
    if SHX9_2 then
      SHX9_2.kills = SHX1_2
      SHX9_2.deaths = SHX2_2
      break
    end
  end
end
SHX13_1(SHX14_1, SHX15_1)
SHX13_1 = CMG
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX1_1
  SHX0_2 = nil ~= SHX0_2
  return SHX0_2
end
SHX13_1.isInPaintball = SHX14_1
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2
  SHX0_2 = SHX1_1
  if not SHX0_2 then
    return
  end
  SHX0_2 = PlayerId
  SHX0_2 = SHX0_2()
  SHX1_2 = pairs
  SHX2_2 = SHX1_1.team
  SHX2_2 = SHX2_2.players
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = GetPlayerFromServerId
    SHX7_2 = SHX5_2
    SHX6_2 = SHX6_2(SHX7_2)
    if -1 ~= SHX6_2 and SHX6_2 ~= SHX0_2 then
      SHX7_2 = GetPlayerPed
      SHX8_2 = SHX6_2
      SHX7_2 = SHX7_2(SHX8_2)
      if 0 ~= SHX7_2 then
        SHX8_2 = GetBlipFromEntity
        SHX9_2 = SHX7_2
        SHX8_2 = SHX8_2(SHX9_2)
        if 0 == SHX8_2 then
          SHX8_2 = SHX0_1.teamConfigs
          SHX9_2 = SHX1_1.team
          SHX9_2 = SHX9_2.info
          SHX9_2 = SHX9_2.name
          SHX8_2 = SHX8_2[SHX9_2]
          SHX9_2 = AddBlipForEntity
          SHX10_2 = SHX7_2
          SHX9_2 = SHX9_2(SHX10_2)
          SHX10_2 = SetBlipColour
          SHX11_2 = SHX9_2
          SHX12_2 = SHX8_2.blipColour
          SHX10_2(SHX11_2, SHX12_2)
          SHX10_2 = ShowHeadingIndicatorOnBlip
          SHX11_2 = SHX9_2
          SHX12_2 = true
          SHX10_2(SHX11_2, SHX12_2)
        end
      end
    end
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerCoords
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX1_1.info
  SHX2_2 = SHX2_2.boundCenter
  SHX2_2 = SHX2_2 - SHX1_2
  SHX2_2 = #SHX2_2
  SHX3_2 = SHX1_1.info
  SHX3_2 = SHX3_2.boundRadius
  if SHX2_2 > SHX3_2 then
    SHX3_2 = SHX1_1.isEnding
    if not SHX3_2 then
      SHX3_2 = SHX1_1.team
      SHX3_2 = SHX3_2.info
      SHX4_2 = tCMG
      SHX4_2 = SHX4_2.teleport
      SHX5_2 = SHX3_2.spawnPosition
      SHX5_2 = SHX5_2.x
      SHX6_2 = SHX3_2.spawnPosition
      SHX6_2 = SHX6_2.y
      SHX7_2 = SHX3_2.spawnPosition
      SHX7_2 = SHX7_2.z
      SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    end
  end
  SHX3_2 = SHX1_1.leaderboard
  if SHX3_2 then
    SHX3_2 = IsControlPressed
    SHX4_2 = 0
    SHX5_2 = 121
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
    if SHX3_2 then
      SHX3_2 = {}
      SHX4_2 = pairs
      SHX5_2 = SHX1_1.teams
      SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
      for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
        SHX10_2 = SHX0_1.teamConfigs
        SHX11_2 = SHX9_2.info
        SHX11_2 = SHX11_2.name
        SHX10_2 = SHX10_2[SHX11_2]
        SHX11_2 = pairs
        SHX12_2 = SHX9_2.players
        SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX11_2(SHX12_2)
        for SHX15_2, SHX16_2 in SHX11_2, SHX12_2, SHX13_2, SHX14_2 do
          SHX17_2 = SHX10_2.textFormatColour
          SHX18_2 = string
          SHX18_2 = SHX18_2.upper
          SHX19_2 = SHX16_2.name
          SHX18_2 = SHX18_2(SHX19_2)
          SHX17_2 = SHX17_2 .. SHX18_2
          SHX18_2 = SHX16_2.deaths
          if 0 == SHX18_2 then
            SHX18_2 = 1
            if SHX18_2 then
              goto SHX_LABEL_110
            end
          end
          SHX18_2 = SHX16_2.deaths
          -- [FIX IF ERROR] Move ::SHX_LABEL_110:: outside nested blocks until all 'goto SHX_LABEL_110' can see it
          ::SHX_LABEL_110::
          SHX19_2 = tostring
          SHX20_2 = math
          SHX20_2 = SHX20_2.floor
          SHX21_2 = SHX16_2.kills
          SHX21_2 = SHX21_2 / SHX18_2
          SHX21_2 = SHX21_2 * 100
          SHX20_2 = SHX20_2(SHX21_2)
          SHX20_2 = SHX20_2 / 100
          SHX19_2 = SHX19_2(SHX20_2)
          SHX20_2 = table
          SHX20_2 = SHX20_2.insert
          SHX21_2 = SHX3_2
          SHX22_2 = {}
          SHX23_2 = SHX17_2
          SHX24_2 = SHX16_2.kills
          SHX25_2 = SHX16_2.deaths
          SHX26_2 = SHX19_2
          SHX22_2[1] = SHX23_2
          SHX22_2[2] = SHX24_2
          SHX22_2[3] = SHX25_2
          SHX22_2[4] = SHX26_2
          SHX20_2(SHX21_2, SHX22_2)
        end
      end
      SHX4_2 = table
      SHX4_2 = SHX4_2.sort
      SHX5_2 = SHX3_2
      function SHX6_2(SHX0_3, SHX1_3)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX2_3, SHX3_3
        SHX2_3 = SHX0_3[2]
        SHX3_3 = SHX1_3[2]
        SHX2_3 = SHX2_3 > SHX3_3
        return SHX2_3
      end
      SHX4_2(SHX5_2, SHX6_2)
      SHX4_2 = pairs
      SHX5_2 = SHX3_2
      SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
      for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
        SHX10_2 = SHX1_1.leaderboard
        SHX10_2 = SHX10_2.RunFunction
        SHX11_2 = "SET_SLOT"
        SHX12_2 = {}
        SHX13_2 = SHX8_2 - 1
        SHX14_2 = 1
        SHX15_2 = SHX9_2[1]
        SHX16_2 = ""
        SHX17_2 = ""
        SHX18_2 = SHX9_2[2]
        SHX19_2 = SHX9_2[3]
        SHX20_2 = SHX9_2[4]
        SHX12_2[1] = SHX13_2
        SHX12_2[2] = SHX14_2
        SHX12_2[3] = SHX15_2
        SHX12_2[4] = SHX16_2
        SHX12_2[5] = SHX17_2
        SHX12_2[6] = SHX18_2
        SHX12_2[7] = SHX19_2
        SHX12_2[8] = SHX20_2
        SHX10_2(SHX11_2, SHX12_2)
      end
      SHX4_2 = SHX1_1.leaderboard
      SHX4_2 = SHX4_2.Render2D
      SHX4_2()
    end
  end
  SHX3_2 = PlayerPedId
  SHX3_2 = SHX3_2()
  SHX4_2 = GetEntityHealth
  SHX5_2 = SHX3_2
  SHX4_2 = SHX4_2(SHX5_2)
  if SHX4_2 > 102 then
    return
  end
  SHX5_2 = SHX1_1.lastDied
  if not SHX5_2 then
    SHX5_2 = GetGameTimer
    SHX5_2 = SHX5_2()
    SHX1_1.lastDied = SHX5_2
  else
    SHX5_2 = GetGameTimer
    SHX5_2 = SHX5_2()
    SHX6_2 = SHX1_1.lastDied
    SHX5_2 = SHX5_2 - SHX6_2
    SHX6_2 = 1000
    if SHX5_2 > SHX6_2 then
      SHX5_2 = TriggerEvent
      SHX6_2 = "193ee4e15e"
      SHX5_2(SHX6_2)
      SHX5_2 = SHX1_1.team
      SHX5_2 = SHX5_2.info
      SHX6_2 = tCMG
      SHX6_2 = SHX6_2.teleport
      SHX7_2 = SHX5_2.spawnPosition
      SHX7_2 = SHX7_2.x
      SHX8_2 = SHX5_2.spawnPosition
      SHX8_2 = SHX8_2.y
      SHX9_2 = SHX5_2.spawnPosition
      SHX9_2 = SHX9_2.z
      SHX6_2(SHX7_2, SHX8_2, SHX9_2)
      SHX1_1.lastDied = nil
    end
  end
end
SHX14_1 = CMG
SHX14_1 = SHX14_1.createThreadOnTick
SHX15_1 = SHX13_1
SHX16_1 = "Paintball"
SHX14_1(SHX15_1, SHX16_1)
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = GetGameTimer
  SHX1_2 = SHX1_2()
  while true do
    SHX2_2 = GetGameTimer
    SHX2_2 = SHX2_2()
    SHX2_2 = SHX2_2 - SHX1_2
    if not (SHX0_2 > SHX2_2) then
      break
    end
    SHX2_2 = SetLocalPlayerAsGhost
    SHX3_2 = true
    SHX2_2(SHX3_2)
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
end
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.Wait
  SHX1_2 = 1000
  SHX0_2(SHX1_2)
  SHX0_2 = DoScreenFadeOut
  SHX1_2 = 500
  SHX0_2(SHX1_2)
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.Wait
  SHX1_2 = 500
  SHX0_2(SHX1_2)
  SHX0_2 = SHX1_1
  if not SHX0_2 then
    SHX0_2 = DoScreenFadeIn
    SHX1_2 = 0
    SHX0_2(SHX1_2)
    return
  end
  SHX0_2 = SHX1_1.team
  SHX0_2 = SHX0_2.info
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.teleport
  SHX2_2 = SHX0_2.spawnPosition
  SHX2_2 = SHX2_2.x
  SHX3_2 = SHX0_2.spawnPosition
  SHX3_2 = SHX3_2.y
  SHX4_2 = SHX0_2.spawnPosition
  SHX4_2 = SHX4_2.z
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.setStunExitsEarly
  SHX2_2()
  SHX2_2 = ClearEntityLastDamageEntity
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
  SHX2_2 = ClearEntityLastWeaponDamage
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
  SHX2_2 = ClearPedLastWeaponDamage
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
  SHX2_2 = ClearPedTasksImmediately
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
  SHX2_2 = SHX14_1
  SHX3_2 = 3500
  SHX2_2(SHX3_2)
  SHX2_2 = SetLocalPlayerAsGhost
  SHX3_2 = false
  SHX2_2(SHX3_2)
  SHX2_2 = SHX1_1
  if SHX2_2 then
    SHX1_1.isRespawning = false
  end
end
SHX16_1 = AddEventHandler
SHX17_1 = "entityDamaged"
function SHX18_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX3_2 = SHX1_1
  if SHX3_2 then
    SHX3_2 = SHX1_1.isStarted
    if SHX3_2 then
      SHX3_2 = SHX1_1.isRespawning
      if not SHX3_2 and (959234284 == SHX2_2 or 683870287 == SHX2_2) then
        SHX3_2 = PlayerPedId
        SHX3_2 = SHX3_2()
        if SHX0_2 == SHX3_2 then
          SHX3_2 = IsEntityAPed
          SHX4_2 = SHX1_2
          SHX3_2 = SHX3_2(SHX4_2)
          if SHX3_2 then
            SHX3_2 = IsPedAPlayer
            SHX4_2 = SHX1_2
            SHX3_2 = SHX3_2(SHX4_2)
            if SHX3_2 then
              SHX3_2 = NetworkGetPlayerIndexFromPed
              SHX4_2 = SHX1_2
              SHX3_2 = SHX3_2(SHX4_2)
              SHX4_2 = GetPlayerServerId
              SHX5_2 = SHX3_2
              SHX4_2 = SHX4_2(SHX5_2)
              if SHX4_2 > 0 then
                SHX5_2 = TriggerServerEvent
                SHX6_2 = "7b83c91fe1"
                SHX7_2 = SHX4_2
                SHX5_2(SHX6_2, SHX7_2)
                SHX1_1.isRespawning = true
                SHX5_2 = SHX15_1
                SHX5_2()
              end
            end
          end
        end
      end
    end
  end
end
SHX16_1(SHX17_1, SHX18_1)
