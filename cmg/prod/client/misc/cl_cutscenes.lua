-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1
function SHX0_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.getCustomization
  SHX0_2 = SHX0_2()
  SHX1_2 = 31
  SHX2_2 = 1885233650
  SHX3_2 = "MP_Male_Character"
  SHX4_2 = GetEntityModel
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.getPlayerPed
  SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX5_2()
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  if -1667301416 == SHX4_2 then
    SHX1_2 = 103
    SHX2_2 = -1667301416
    SHX3_2 = "MP_Female_Character"
  end
  SHX4_2 = RequestCutsceneWithPlaybackList
  SHX5_2 = "mp_intro_concat"
  SHX6_2 = SHX1_2
  SHX7_2 = 8
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  while true do
    SHX4_2 = HasThisCutsceneLoaded
    SHX5_2 = "mp_intro_concat"
    SHX4_2 = SHX4_2(SHX5_2)
    if SHX4_2 then
      break
    end
    SHX4_2 = Citizen
    SHX4_2 = SHX4_2.Wait
    SHX5_2 = 0
    SHX4_2(SHX5_2)
  end
  SHX4_2 = StartCutscene
  SHX5_2 = 0
  SHX4_2(SHX5_2)
  if 1885233650 == SHX2_2 then
    SHX4_2 = RegisterEntityForCutscene
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.getPlayerPed
    SHX5_2 = SHX5_2()
    SHX6_2 = SHX3_2
    SHX7_2 = 0
    SHX8_2 = 0
    SHX9_2 = 64
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    SHX4_2 = RegisterEntityForCutscene
    SHX5_2 = 0
    SHX6_2 = "MP_Female_Character"
    SHX7_2 = 3
    SHX8_2 = -1667301416
    SHX9_2 = 0
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  elseif -1667301416 == SHX2_2 then
    SHX4_2 = RegisterEntityForCutscene
    SHX5_2 = 0
    SHX6_2 = "MP_Male_Character"
    SHX7_2 = 3
    SHX8_2 = -1667301416
    SHX9_2 = 0
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    SHX4_2 = RegisterEntityForCutscene
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.getPlayerPed
    SHX5_2 = SHX5_2()
    SHX6_2 = SHX3_2
    SHX7_2 = 0
    SHX8_2 = 0
    SHX9_2 = 64
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  end
  SHX4_2 = SetCutsceneEntityStreamingFlags
  SHX5_2 = SHX3_2
  SHX6_2 = 0
  SHX7_2 = 1
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  while true do
    SHX4_2 = DoesCutsceneEntityExist
    SHX5_2 = SHX3_2
    SHX6_2 = SHX2_2
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
    if SHX4_2 then
      break
    end
    SHX4_2 = Citizen
    SHX4_2 = SHX4_2.Wait
    SHX5_2 = 0
    SHX4_2(SHX5_2)
  end
  SHX4_2 = SetCutscenePedClothing
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.getPlayerPed
  SHX5_2 = SHX5_2()
  SHX6_2 = SHX0_2
  SHX4_2(SHX5_2, SHX6_2)
end
StartIntroCutscene = SHX0_1
function SHX0_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.getCustomization
  SHX0_2 = SHX0_2()
  SHX1_2 = 59301
  SHX2_2 = 1885233650
  SHX3_2 = GetEntityModel
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getPlayerPed
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX4_2()
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  if -1667301416 == SHX3_2 then
    SHX1_2 = 40905
    SHX2_2 = -1667301416
    SHX3_2 = print
    SHX4_2 = "is female"
    SHX5_2 = SHX2_2
    SHX3_2(SHX4_2, SHX5_2)
  end
  SHX3_2 = EnableMovieSubtitles
  SHX4_2 = true
  SHX3_2(SHX4_2)
  SHX3_2 = RequestCutsceneWithPlaybackList
  SHX4_2 = "mpcas_int"
  SHX5_2 = SHX1_2
  SHX6_2 = 8
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  while true do
    SHX3_2 = HasThisCutsceneLoaded
    SHX4_2 = "mpcas_int"
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      break
    end
    SHX3_2 = Citizen
    SHX3_2 = SHX3_2.Wait
    SHX4_2 = 0
    SHX3_2(SHX4_2)
  end
  SHX3_2 = StartCutscene
  SHX4_2 = 0
  SHX3_2(SHX4_2)
  SHX3_2 = RegisterEntityForCutscene
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getPlayerPed
  SHX4_2 = SHX4_2()
  SHX5_2 = "MP_1"
  SHX6_2 = 0
  SHX7_2 = 0
  SHX8_2 = 64
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  while true do
    SHX3_2 = DoesCutsceneEntityExist
    SHX4_2 = "MP_1"
    SHX5_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
    if SHX3_2 then
      break
    end
    SHX3_2 = Citizen
    SHX3_2 = SHX3_2.Wait
    SHX4_2 = 0
    SHX3_2(SHX4_2)
  end
  SHX3_2 = SetCutscenePedClothing
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getPlayerPed
  SHX4_2 = SHX4_2()
  SHX5_2 = SHX0_2
  SHX3_2(SHX4_2, SHX5_2)
end
StartCasinoCutscene = SHX0_1
SHX0_1 = RegisterNetEvent
SHX1_1 = "466e35f309"
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX1_2 = RequestCutsceneWithPlaybackList
  SHX2_2 = SHX0_2.name
  SHX3_2 = 0
  SHX4_2 = 8
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  while true do
    SHX1_2 = HasThisCutsceneLoaded
    SHX2_2 = SHX0_2.name
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      break
    end
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
  end
  SHX1_2 = StartCutscene
  SHX2_2 = 0
  SHX1_2(SHX2_2)
  SHX1_2 = pairs
  SHX2_2 = SHX0_2.players
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = tonumber
    SHX8_2 = SHX6_2.source
    SHX7_2 = SHX7_2(SHX8_2)
    if SHX7_2 then
      SHX8_2 = GetPlayerFromServerId
      SHX9_2 = SHX7_2
      SHX8_2 = SHX8_2(SHX9_2)
      SHX9_2 = GetPlayerPed
      SHX10_2 = SHX8_2
      SHX9_2 = SHX9_2(SHX10_2)
      SHX10_2 = GetEntityModel
      SHX11_2 = CMG
      SHX11_2 = SHX11_2.getPlayerPed
      SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2 = SHX11_2()
      SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
      SHX11_2 = tCMG
      SHX11_2 = SHX11_2.getPlayerCustomization
      SHX12_2 = SHX9_2
      SHX11_2 = SHX11_2(SHX12_2)
      SHX12_2 = RegisterEntityForCutscene
      SHX13_2 = SHX9_2
      SHX14_2 = SHX6_2.cutsceneId
      SHX15_2 = 0
      SHX16_2 = 0
      SHX17_2 = 64
      SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
      while true do
        SHX12_2 = DoesCutsceneEntityExist
        SHX13_2 = SHX6_2.cutsceneId
        SHX14_2 = SHX10_2
        SHX12_2 = SHX12_2(SHX13_2, SHX14_2)
        if SHX12_2 then
          break
        end
        SHX12_2 = Citizen
        SHX12_2 = SHX12_2.Wait
        SHX13_2 = 0
        SHX12_2(SHX13_2)
      end
      SHX12_2 = GetEntityIndexOfCutsceneEntity
      SHX13_2 = SHX6_2.cutsceneId
      SHX14_2 = SHX10_2
      SHX12_2 = SHX12_2(SHX13_2, SHX14_2)
      SHX13_2 = SetCutscenePedClothing
      SHX14_2 = SHX12_2
      SHX15_2 = SHX11_2
      SHX13_2(SHX14_2, SHX15_2)
    end
  end
end
SHX0_1(SHX1_1, SHX2_1)
function SHX0_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = type
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if "string" == SHX1_2 then
    SHX1_2 = string
    SHX1_2 = SHX1_2.sub
    SHX2_2 = SHX0_2
    SHX3_2 = 1
    SHX4_2 = 1
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    if "p" == SHX1_2 then
      SHX1_2 = true
      SHX2_2 = tonumber
      SHX3_2 = string
      SHX3_2 = SHX3_2.sub
      SHX4_2 = SHX0_2
      SHX5_2 = 2
      SHX3_2, SHX4_2, SHX5_2 = SHX3_2(SHX4_2, SHX5_2)
      SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      return SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  end
  else
    SHX1_2 = false
    SHX2_2 = tonumber
    SHX3_2 = SHX0_2
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
    return SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  end
end
function SHX1_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX2_2 = pairs
  SHX3_2 = SHX1_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    if "model" ~= SHX6_2 and "modelhash" ~= SHX6_2 then
      SHX8_2 = SHX0_1
      SHX9_2 = SHX6_2
      SHX8_2, SHX9_2 = SHX8_2(SHX9_2)
      if SHX8_2 then
        SHX10_2 = SHX7_2[1]
        if SHX10_2 < 0 then
          SHX10_2 = ClearPedProp
          SHX11_2 = SHX0_2
          SHX12_2 = SHX9_2
          SHX10_2(SHX11_2, SHX12_2)
        else
          SHX10_2 = SetPedPropIndex
          SHX11_2 = SHX0_2
          SHX12_2 = SHX9_2
          SHX13_2 = SHX7_2[1]
          SHX14_2 = SHX7_2[2]
          SHX15_2 = true
          SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
        end
      else
        SHX10_2 = SetPedComponentVariation
        SHX11_2 = SHX0_2
        SHX12_2 = SHX9_2
        SHX13_2 = SHX7_2[1]
        SHX14_2 = SHX7_2[2]
        SHX15_2 = SHX7_2[3]
        if not SHX15_2 then
          SHX15_2 = 2
        end
        SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
      end
    end
  end
end
SetCutscenePedClothing = SHX1_1
