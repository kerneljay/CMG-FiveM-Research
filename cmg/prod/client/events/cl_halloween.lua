-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1
SHX0_1 = {}
SHX1_1 = RegisterNetEvent
SHX2_1 = "69c2ae77f7"
function SHX3_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX1_2 = pairs
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX0_1
    SHX8_2 = vector3
    SHX9_2 = SHX6_2.x
    SHX10_2 = SHX6_2.y
    SHX11_2 = SHX6_2.z
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2)
    SHX7_2[SHX5_2] = SHX8_2
  end
end
SHX1_1(SHX2_1, SHX3_1)
SHX1_1 = RegisterNetEvent
SHX2_1 = "fb145a1459"
function SHX3_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX0_1
  SHX1_2[SHX0_2] = nil
end
SHX1_1(SHX2_1, SHX3_1)
function SHX1_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.loadPtfx
  SHX1_2 = "scr_rcbarry2"
  SHX0_2(SHX1_2)
  SHX0_2 = UseParticleFxAsset
  SHX1_2 = "scr_rcbarry2"
  SHX0_2(SHX1_2)
  SHX0_2 = UseParticleFxAsset
  SHX1_2 = "scr_rcbarry2"
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerCoords
  SHX0_2 = SHX0_2()
  SHX1_2 = StartNetworkedParticleFxNonLoopedAtCoord
  SHX2_2 = "scr_clown_appears"
  SHX3_2 = SHX0_2.x
  SHX4_2 = SHX0_2.y
  SHX5_2 = SHX0_2.z
  SHX6_2 = 0.0
  SHX7_2 = 0.0
  SHX8_2 = 0.0
  SHX9_2 = 1.0
  SHX10_2 = false
  SHX11_2 = false
  SHX12_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX1_2 = RemoveNamedPtfxAsset
  SHX2_2 = "scr_rcbarry2"
  SHX1_2(SHX2_2)
end
SHX2_1 = RegisterNetEvent
SHX3_1 = "c771c826dd"
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.getCustomization
  SHX0_2 = SHX0_2()
  SHX1_2 = PlaySoundFrontend
  SHX2_2 = -1
  SHX3_2 = "Survival_Failed"
  SHX4_2 = "DLC_VW_AS_Sounds"
  SHX5_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.setCustomization
  SHX2_2 = {}
  SHX2_2.modelhash = -1404353274
  SHX1_2(SHX2_2)
  SHX1_2 = SHX1_1
  SHX1_2()
  SHX1_2 = SetTimecycleModifier
  SHX2_2 = "BeastIntro01"
  SHX1_2(SHX2_2)
  SHX1_2 = SetTimecycleModifierStrength
  SHX2_2 = 0.5
  SHX1_2(SHX2_2)
  SHX1_2 = PrepareMusicEvent
  SHX2_2 = "HALLOWEEN_START_MUSIC"
  SHX1_2(SHX2_2)
  SHX1_2 = TriggerMusicEvent
  SHX2_2 = "HALLOWEEN_START_MUSIC"
  SHX1_2(SHX2_2)
  SHX1_2 = RequestAnimSet
  SHX2_2 = "anim_group_move_ballistic"
  SHX1_2(SHX2_2)
  while true do
    SHX1_2 = HasAnimSetLoaded
    SHX2_2 = "anim_group_move_ballistic"
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      break
    end
    SHX1_2 = Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
  end
  SHX1_2 = SetPedMovementClipset
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = "anim_group_move_ballistic"
  SHX4_2 = 0
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = RemoveAnimSet
  SHX2_2 = "anim_group_move_ballistic"
  SHX1_2(SHX2_2)
  SHX1_2 = ApplyPedDamagePack
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = "BigHitByVehicle"
  SHX4_2 = 0.0
  SHX5_2 = 9.0
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = ApplyPedDamagePack
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = "SCR_Dumpster"
  SHX4_2 = 0.0
  SHX5_2 = 9.0
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = ApplyPedDamagePack
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = "SCR_Torture"
  SHX4_2 = 0.0
  SHX5_2 = 9.0
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = Wait
  SHX2_2 = 60000
  SHX1_2(SHX2_2)
  SHX1_2 = TriggerMusicEvent
  SHX2_2 = "BST_STOP"
  SHX1_2(SHX2_2)
  SHX1_2 = ClearTimecycleModifier
  SHX1_2()
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.setCustomization
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
SHX2_1(SHX3_1, SHX4_1)
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = DoesEntityExist
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    while true do
      SHX1_2 = RequestScriptAudioBank
      SHX2_2 = "DLC_HALLOWEEN\\HALLOWEEN"
      SHX3_2 = false
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
      if SHX1_2 then
        break
      end
      SHX1_2 = Citizen
      SHX1_2 = SHX1_2.Wait
      SHX2_2 = 0
      SHX1_2(SHX2_2)
      SHX1_2 = print
      SHX2_2 = "infinite loading of halloween sound?"
      SHX1_2(SHX2_2)
    end
    SHX1_2 = GetSoundId
    SHX1_2 = SHX1_2()
    SHX2_2 = PlaySoundFromEntity
    SHX3_2 = SHX1_2
    SHX4_2 = "zombie"
    SHX5_2 = SHX0_2
    SHX6_2 = "dlc_halloween_soundset"
    SHX7_2 = false
    SHX8_2 = 0
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  end
end
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = DoScreenFadeOut
  SHX1_2 = 100
  SHX0_2(SHX1_2)
  SHX0_2 = SendNUIMessage
  SHX1_2 = {}
  SHX1_2.transactionType = "zombiescream"
  SHX0_2(SHX1_2)
end
SHX4_1 = Citizen
SHX4_1 = SHX4_1.CreateThread
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isHalloween
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    return
  end
  while true do
    SHX0_2 = pairs
    SHX1_2 = SHX0_1
    SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
    for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
      SHX6_2 = CMG
      SHX6_2 = SHX6_2.getPlayerCoords
      SHX6_2 = SHX6_2()
      SHX7_2 = SHX6_2 - SHX5_2
      SHX7_2 = #SHX7_2
      if 0 ~= SHX4_2 then
        SHX8_2 = NetworkDoesNetworkIdExist
        SHX9_2 = SHX4_2
        SHX8_2 = SHX8_2(SHX9_2)
        if SHX8_2 and SHX7_2 < 100 then
          SHX8_2 = CMG
          SHX8_2 = SHX8_2.getObjectId
          SHX9_2 = SHX4_2
          SHX10_2 = "zombie"
          SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
          SHX9_2 = DoesEntityExist
          SHX10_2 = SHX8_2
          SHX9_2 = SHX9_2(SHX10_2)
          if SHX9_2 then
            SHX9_2 = IsEntityPlayingAnim
            SHX10_2 = SHX8_2
            SHX11_2 = "special_ped@zombie@base"
            SHX12_2 = "base"
            SHX13_2 = 3
            SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
            if not SHX9_2 then
              SHX9_2 = CMG
              SHX9_2 = SHX9_2.loadAnimDict
              SHX10_2 = "special_ped@zombie@base"
              SHX9_2(SHX10_2)
              SHX9_2 = TaskPlayAnim
              SHX10_2 = SHX8_2
              SHX11_2 = "special_ped@zombie@base"
              SHX12_2 = "base"
              SHX13_2 = 8.0
              SHX14_2 = 8.0
              SHX15_2 = -1
              SHX16_2 = 1
              SHX17_2 = 1.0
              SHX18_2 = false
              SHX19_2 = false
              SHX20_2 = false
              SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
              SHX9_2 = RemoveAnimDict
              SHX10_2 = "special_ped@zombie@base"
              SHX9_2(SHX10_2)
            end
            SHX9_2 = SetBlockingOfNonTemporaryEvents
            SHX10_2 = SHX8_2
            SHX11_2 = true
            SHX9_2(SHX10_2, SHX11_2)
          end
        end
      end
      SHX8_2 = 1.5
      if SHX7_2 < SHX8_2 then
        SHX8_2 = CMG
        SHX8_2 = SHX8_2.setIgnoreDeathSound
        SHX9_2 = true
        SHX8_2(SHX9_2)
        SHX8_2 = SHX3_1
        SHX8_2()
        SHX8_2 = SetEntityHealth
        SHX9_2 = PlayerPedId
        SHX9_2 = SHX9_2()
        SHX10_2 = 0
        SHX8_2(SHX9_2, SHX10_2)
        SHX8_2 = TriggerServerEvent
        SHX9_2 = "89653ddee4"
        SHX10_2 = SHX4_2
        SHX8_2(SHX9_2, SHX10_2)
        SHX8_2 = Wait
        SHX9_2 = 100
        SHX8_2(SHX9_2)
        SHX8_2 = DoScreenFadeIn
        SHX9_2 = 6000
        SHX8_2(SHX9_2)
        SHX8_2 = Wait
        SHX9_2 = 6000
        SHX8_2(SHX9_2)
        SHX8_2 = CMG
        SHX8_2 = SHX8_2.setIgnoreDeathSound
        SHX9_2 = false
        SHX8_2(SHX9_2)
      end
    end
    SHX0_2 = Wait
    SHX1_2 = 250
    SHX0_2(SHX1_2)
  end
end
SHX4_1(SHX5_1)
SHX4_1 = {}
SHX5_1 = Citizen
SHX5_1 = SHX5_1.CreateThread
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isHalloween
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    return
  end
  while true do
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerCoords
    SHX0_2 = SHX0_2()
    SHX1_2 = pairs
    SHX2_2 = SHX0_1
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
    for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
      SHX7_2 = SHX0_2 - SHX6_2
      SHX7_2 = #SHX7_2
      SHX8_2 = NetworkDoesNetworkIdExist
      SHX9_2 = SHX5_2
      SHX8_2 = SHX8_2(SHX9_2)
      if SHX8_2 then
        SHX8_2 = CMG
        SHX8_2 = SHX8_2.getObjectId
        SHX9_2 = SHX5_2
        SHX10_2 = "zombie nearby"
        SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
        if SHX7_2 < 30 and SHX8_2 then
          SHX9_2 = SHX4_1
          SHX9_2 = SHX9_2[SHX8_2]
          if not SHX9_2 then
            SHX9_2 = SHX2_1
            SHX10_2 = SHX8_2
            SHX9_2(SHX10_2)
            SHX9_2 = SHX4_1
            SHX9_2[SHX8_2] = true
          end
        end
      end
    end
    SHX1_2 = Wait
    SHX2_2 = 250
    SHX1_2(SHX2_2)
  end
end
SHX5_1(SHX6_1)
