-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_bankrob"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = {}
SHX2_1 = 0
function SHX3_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "946c287b9d"
  SHX3_2 = SHX0_2.index
  SHX1_2(SHX2_2, SHX3_2)
end
function SHX4_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX0_2.handles
  if SHX1_2 then
    SHX1_2 = DeleteEntity
    SHX2_2 = SHX0_2.handles
    SHX2_2 = SHX2_2.object
    SHX1_2(SHX2_2)
    SHX1_2 = StopParticleFxLooped
    SHX2_2 = SHX0_2.handles
    SHX2_2 = SHX2_2.particle
    SHX3_2 = false
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX0_2.handles
    SHX1_2 = SHX1_2.soundId
    if -1 ~= SHX1_2 then
      SHX1_2 = StopSound
      SHX2_2 = SHX0_2.handles
      SHX2_2 = SHX2_2.soundId
      SHX1_2(SHX2_2)
      SHX1_2 = ReleaseSoundId
      SHX2_2 = SHX0_2.handles
      SHX2_2 = SHX2_2.soundId
      SHX1_2(SHX2_2)
    end
    SHX0_2.handles = nil
  end
end
function SHX5_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX2_2 = SHX0_2.index
  SHX1_2 = SHX1_1
  SHX1_2 = SHX1_2[SHX2_2]
  if SHX1_2 then
    SHX2_2 = pairs
    SHX3_2 = SHX1_2.safes
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
    for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
      SHX8_2 = SHX4_1
      SHX9_2 = SHX7_2
      SHX8_2(SHX9_2)
    end
    SHX3_2 = SHX0_2.index
    SHX2_2 = SHX1_1
    SHX2_2[SHX3_2] = nil
  end
end
function SHX6_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerCoords
  SHX2_2 = SHX2_2()
  SHX3_2 = SHX1_2.uiPosition
  SHX2_2 = SHX2_2 - SHX3_2
  SHX2_2 = #SHX2_2
  if SHX2_2 > 1.0 then
    return
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.isEmergencyService
  SHX2_2 = SHX2_2()
  if SHX2_2 then
    return
  end
  SHX2_2 = drawNativeNotification
  SHX3_2 = "Press ~INPUT_CONTEXT~ to hack the "
  SHX4_2 = SHX1_2.type
  if "terminal" == SHX4_2 then
    SHX4_2 = "Gate"
    if SHX4_2 then
      goto SHX_LABEL_26
    end
  end
  SHX4_2 = "Vault"
  -- [FIX IF ERROR] Move ::SHX_LABEL_26:: outside nested blocks until all 'goto SHX_LABEL_26' can see it
  ::SHX_LABEL_26::
  SHX3_2 = SHX3_2 .. SHX4_2
  SHX2_2(SHX3_2)
  SHX2_2 = IsControlJustPressed
  SHX3_2 = 0
  SHX4_2 = 51
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  if SHX2_2 then
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "9ff6fe9b05"
    SHX4_2 = SHX0_2.index
    SHX5_2 = SHX1_2.index
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  end
end
function SHX7_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = nil
  SHX3_2 = nil
  if SHX1_2 < SHX0_2 then
    SHX2_2 = SHX0_2 - SHX1_2
    SHX4_2 = 360.0
    SHX3_2 = SHX4_2 - SHX2_2
  else
    SHX3_2 = SHX1_2 - SHX0_2
    SHX4_2 = 360.0
    SHX2_2 = SHX4_2 - SHX3_2
  end
  if SHX3_2 < SHX2_2 then
    SHX4_2 = -1.0
    if SHX4_2 then
      goto SHX_LABEL_21
    end
  end
  SHX4_2 = 1.0
  -- [FIX IF ERROR] Move ::SHX_LABEL_21:: outside nested blocks until all 'goto SHX_LABEL_21' can see it
  ::SHX_LABEL_21::
  return SHX4_2
end
function SHX8_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX2_2 = GetClosestObjectOfType
  SHX3_2 = SHX0_2.position
  SHX3_2 = SHX3_2.x
  SHX4_2 = SHX0_2.position
  SHX4_2 = SHX4_2.y
  SHX5_2 = SHX0_2.position
  SHX5_2 = SHX5_2.z
  SHX6_2 = 2.0
  SHX7_2 = SHX0_2.model
  SHX8_2 = false
  SHX9_2 = false
  SHX10_2 = false
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  if 0 == SHX2_2 then
    return
  end
  SHX3_2 = FreezeEntityPosition
  SHX4_2 = SHX2_2
  SHX5_2 = SHX1_2.isHacked
  SHX5_2 = not SHX5_2
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = false
  SHX4_2 = SHX0_2.type
  if "vault" == SHX4_2 then
    SHX4_2 = GetEntityHeading
    SHX5_2 = SHX2_2
    SHX4_2 = SHX4_2(SHX5_2)
    SHX5_2 = SHX1_2.isHacked
    if SHX5_2 then
      SHX5_2 = math
      SHX5_2 = SHX5_2.abs
      SHX6_2 = SHX0_2.openHeading
      SHX6_2 = SHX6_2 - SHX4_2
      SHX5_2 = SHX5_2(SHX6_2)
      if SHX5_2 > 2.0 then
        SHX5_2 = SetEntityHeading
        SHX6_2 = SHX2_2
        SHX7_2 = GetFrameTime
        SHX7_2 = SHX7_2()
        SHX7_2 = 15.0 * SHX7_2
        SHX8_2 = SHX7_1
        SHX9_2 = SHX0_2.closedHeading
        SHX10_2 = SHX4_2
        SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
        SHX7_2 = SHX7_2 * SHX8_2
        SHX7_2 = SHX4_2 - SHX7_2
        SHX5_2(SHX6_2, SHX7_2)
        SHX3_2 = true
      end
    else
      SHX5_2 = math
      SHX5_2 = SHX5_2.abs
      SHX6_2 = SHX0_2.closedHeading
      SHX6_2 = SHX6_2 - SHX4_2
      SHX5_2 = SHX5_2(SHX6_2)
      if SHX5_2 > 2.0 then
        SHX5_2 = SetEntityHeading
        SHX6_2 = SHX2_2
        SHX7_2 = GetFrameTime
        SHX7_2 = SHX7_2()
        SHX7_2 = 15.0 * SHX7_2
        SHX8_2 = SHX7_1
        SHX9_2 = SHX0_2.closedHeading
        SHX10_2 = SHX4_2
        SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
        SHX7_2 = SHX7_2 * SHX8_2
        SHX7_2 = SHX4_2 + SHX7_2
        SHX5_2(SHX6_2, SHX7_2)
        SHX3_2 = true
      end
    end
  end
  if SHX3_2 then
    SHX4_2 = GetGameTimer
    SHX4_2 = SHX4_2()
    SHX5_2 = SHX2_1
    SHX4_2 = SHX4_2 - SHX5_2
    SHX5_2 = 1750
    if SHX4_2 > SHX5_2 then
      SHX4_2 = PlaySoundFrontend
      SHX5_2 = -1
      SHX6_2 = "OPENING"
      SHX7_2 = "MP_PROPERTIES_ELEVATOR_DOORS"
      SHX8_2 = true
      SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX4_2 = GetGameTimer
      SHX4_2 = SHX4_2()
      SHX2_1 = SHX4_2
    end
  end
end
function SHX9_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX2_2 = false
  SHX3_2 = pairs
  SHX4_2 = SHX0_2.doors
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = SHX1_2.doors
    SHX9_2 = SHX9_2[SHX7_2]
    SHX10_2 = SHX9_2.isHacked
    if not SHX10_2 and not SHX2_2 then
      SHX10_2 = SHX9_2.hackingUserId
      if 0 == SHX10_2 then
        SHX10_2 = SHX6_1
        SHX11_2 = SHX0_2
        SHX12_2 = SHX8_2
        SHX10_2(SHX11_2, SHX12_2)
      end
      SHX2_2 = true
    end
    SHX10_2 = SHX8_1
    SHX11_2 = SHX8_2
    SHX12_2 = SHX9_2
    SHX10_2(SHX11_2, SHX12_2)
  end
  SHX3_2 = not SHX2_2
  return SHX3_2
end
function SHX10_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.isEmergencyService
  SHX2_2 = SHX2_2()
  if SHX2_2 then
    return
  end
  SHX2_2 = drawNativeNotification
  SHX3_2 = "Press ~INPUT_CONTEXT~ to break open the safe"
  SHX2_2(SHX3_2)
  SHX2_2 = IsControlJustPressed
  SHX3_2 = 0
  SHX4_2 = 51
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  if SHX2_2 then
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "8792ec1a1b"
    SHX4_2 = SHX0_2.index
    SHX5_2 = SHX1_2.index
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  end
end
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2
  SHX1_2 = SHX0_2.handles
  if SHX1_2 then
    return
  end
  SHX1_2 = fullPlayerListData
  SHX2_2 = SHX0_2.lootingUserId
  SHX1_2 = SHX1_2[SHX2_2]
  if not SHX1_2 then
    return
  end
  SHX2_2 = SHX1_2[1]
  if not SHX2_2 then
    return
  end
  SHX3_2 = GetPlayerFromServerId
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if -1 == SHX3_2 then
    return
  end
  SHX4_2 = GetPlayerPed
  SHX5_2 = SHX3_2
  SHX4_2 = SHX4_2(SHX5_2)
  if 0 == SHX4_2 then
    return
  end
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.loadModel
  SHX6_2 = -443429795
  SHX5_2(SHX6_2)
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.getPlayerCoords
  SHX5_2 = SHX5_2()
  SHX6_2 = CreateObject
  SHX7_2 = -443429795
  SHX8_2 = SHX5_2.x
  SHX9_2 = SHX5_2.y
  SHX10_2 = SHX5_2.z
  SHX11_2 = false
  SHX12_2 = false
  SHX13_2 = false
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX7_2 = AttachEntityToEntity
  SHX8_2 = SHX6_2
  SHX9_2 = SHX4_2
  SHX10_2 = GetPedBoneIndex
  SHX11_2 = SHX4_2
  SHX12_2 = 28422
  SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
  SHX11_2 = 0.0
  SHX12_2 = 0.0
  SHX13_2 = 0.0
  SHX14_2 = 0.0
  SHX15_2 = 0.0
  SHX16_2 = 0.0
  SHX17_2 = true
  SHX18_2 = true
  SHX19_2 = false
  SHX20_2 = false
  SHX21_2 = 2
  SHX22_2 = true
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
  SHX7_2 = {}
  SHX8_2 = "DLC_HEIST_FLEECA_SOUNDSET"
  SHX9_2 = "DLC_MPHEIST\\HEIST_FLEECA_DRILL"
  SHX10_2 = "DLC_MPHEIST\\HEIST_FLEECA_DRILL_2"
  SHX7_2[1] = SHX8_2
  SHX7_2[2] = SHX9_2
  SHX7_2[3] = SHX10_2
  SHX8_2 = GetGameTimer
  SHX8_2 = SHX8_2()
  SHX9_2 = false
  while not SHX9_2 do
    SHX10_2 = GetGameTimer
    SHX10_2 = SHX10_2()
    SHX10_2 = SHX10_2 - SHX8_2
    SHX11_2 = 2000
    if SHX10_2 > SHX11_2 then
      break
    end
    SHX9_2 = true
    SHX10_2 = pairs
    SHX11_2 = SHX7_2
    SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX10_2(SHX11_2)
    for SHX14_2, SHX15_2 in SHX10_2, SHX11_2, SHX12_2, SHX13_2 do
      SHX16_2 = RequestAmbientAudioBank
      SHX17_2 = SHX15_2
      SHX18_2 = false
      SHX16_2 = SHX16_2(SHX17_2, SHX18_2)
      if not SHX16_2 then
        SHX9_2 = false
      end
    end
    SHX10_2 = Citizen
    SHX10_2 = SHX10_2.Wait
    SHX11_2 = 0
    SHX10_2(SHX11_2)
  end
  SHX10_2 = GetSoundId
  SHX10_2 = SHX10_2()
  SHX11_2 = PlaySoundFromEntity
  SHX12_2 = SHX10_2
  SHX13_2 = "Drill"
  SHX14_2 = SHX6_2
  SHX15_2 = "DLC_HEIST_FLEECA_SOUNDSET"
  SHX16_2 = false
  SHX17_2 = 0
  SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX11_2 = CMG
  SHX11_2 = SHX11_2.loadPtfx
  SHX12_2 = "core"
  SHX11_2(SHX12_2)
  SHX11_2 = UseParticleFxAsset
  SHX12_2 = "core"
  SHX11_2(SHX12_2)
  SHX11_2 = StartParticleFxLoopedOnEntity
  SHX12_2 = "ent_anim_pneumatic_drill"
  SHX13_2 = SHX6_2
  SHX14_2 = 0.0
  SHX15_2 = -0.5
  SHX16_2 = 0.0
  SHX17_2 = 0.0
  SHX18_2 = 0.0
  SHX19_2 = 0.0
  SHX20_2 = 0.9
  SHX21_2 = false
  SHX22_2 = false
  SHX23_2 = false
  SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
  SHX12_2 = RemoveNamedPtfxAsset
  SHX13_2 = "ent_anim_pneumatic_drill"
  SHX12_2(SHX13_2)
  SHX12_2 = {}
  SHX12_2.object = SHX6_2
  SHX12_2.soundId = SHX10_2
  SHX12_2.particle = SHX11_2
  SHX0_2.handles = SHX12_2
  SHX12_2 = SHX0_2.lootingUserId
  if 0 == SHX12_2 then
    SHX12_2 = SHX4_1
    SHX13_2 = SHX0_2
    SHX12_2(SHX13_2)
  end
end
function SHX12_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2, SHX37_2, SHX38_2
  SHX2_2 = SHX1_2.delayStartTime
  if SHX2_2 then
    SHX2_2 = SHX1_2.delayStartTime
    if 0 ~= SHX2_2 then
      goto SHX_LABEL_9
    end
  end
  SHX2_2 = false
  return SHX2_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  SHX2_2 = GetNetworkTime
  SHX2_2 = SHX2_2()
  SHX3_2 = SHX1_2.delayStartTime
  SHX2_2 = SHX2_2 - SHX3_2
  SHX3_2 = math
  SHX3_2 = SHX3_2.ceil
  SHX4_2 = SHX0_1.delayBetweenSafeLoots
  SHX4_2 = SHX2_2 / SHX4_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = nil
  SHX5_2 = 1.0
  SHX6_2 = pairs
  SHX7_2 = SHX0_2.safes
  SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
  for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
    if SHX10_2 > SHX3_2 then
      SHX12_2 = CMG
      SHX12_2 = SHX12_2.createTimerBars
      SHX12_2 = SHX12_2()
      SHX13_2 = SHX12_2.push
      SHX14_2 = "~y~FOUND SAFES"
      SHX15_2 = tostring
      SHX16_2 = SHX3_2
      SHX15_2 = SHX15_2(SHX16_2)
      SHX16_2 = "/"
      SHX17_2 = tostring
      SHX18_2 = table
      SHX18_2 = SHX18_2.count
      SHX19_2 = SHX0_2.safes
      SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2, SHX37_2, SHX38_2 = SHX18_2(SHX19_2)
      SHX17_2 = SHX17_2(SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2, SHX37_2, SHX38_2)
      SHX15_2 = SHX15_2 .. SHX16_2 .. SHX17_2
      SHX13_2(SHX14_2, SHX15_2)
      SHX13_2 = SHX12_2.draw
      SHX13_2()
      break
    end
    SHX12_2 = SHX1_2.safes
    SHX12_2 = SHX12_2[SHX10_2]
    SHX13_2 = SHX12_2.isLooted
    if not SHX13_2 then
      SHX13_2 = SHX12_2.lootingUserId
      if 0 == SHX13_2 then
        SHX13_2 = CMG
        SHX13_2 = SHX13_2.getPlayerCoords
        SHX13_2 = SHX13_2()
        SHX14_2 = SHX11_2.position
        SHX13_2 = SHX13_2 - SHX14_2
        SHX13_2 = #SHX13_2
        if SHX5_2 > SHX13_2 then
          SHX4_2 = SHX11_2
          SHX5_2 = SHX13_2
        end
        if SHX13_2 < 10.0 then
          SHX14_2 = DrawMarker
          SHX15_2 = 28
          SHX16_2 = SHX11_2.position
          SHX16_2 = SHX16_2.x
          SHX17_2 = SHX11_2.position
          SHX17_2 = SHX17_2.y
          SHX18_2 = SHX11_2.position
          SHX18_2 = SHX18_2.z
          SHX19_2 = 0.0
          SHX20_2 = 0.0
          SHX21_2 = 0.0
          SHX22_2 = 0.0
          SHX23_2 = 0.0
          SHX24_2 = 0.0
          SHX25_2 = 0.3
          SHX26_2 = 0.3
          SHX27_2 = 0.3
          SHX28_2 = 255
          SHX29_2 = 255
          SHX30_2 = 0
          SHX31_2 = 40
          SHX32_2 = false
          SHX33_2 = false
          SHX34_2 = 2
          SHX35_2 = false
          SHX36_2 = nil
          SHX37_2 = nil
          SHX38_2 = false
          SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2, SHX37_2, SHX38_2)
        end
      else
        SHX13_2 = SHX11_1
        SHX14_2 = SHX12_2
        SHX13_2(SHX14_2)
      end
    end
  end
  if SHX4_2 then
    SHX6_2 = SHX10_1
    SHX7_2 = SHX0_2
    SHX8_2 = SHX4_2
    SHX6_2(SHX7_2, SHX8_2)
  end
  SHX6_2 = nil ~= SHX4_2
  return SHX6_2
end
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = SHX0_2.index
  SHX1_2 = SHX1_1
  SHX1_2 = SHX1_2[SHX2_2]
  if SHX1_2 then
    SHX2_2 = SHX9_1
    SHX3_2 = SHX0_2
    SHX4_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if SHX2_2 then
      SHX2_2 = SHX12_1
      SHX3_2 = SHX0_2
      SHX4_2 = SHX1_2
      SHX2_2(SHX3_2, SHX4_2)
    end
  end
end
SHX14_1 = RegisterNetEvent
SHX15_1 = "4824ef5e69"
function SHX16_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX1_1
  SHX2_2[SHX0_2] = SHX1_2
end
SHX14_1(SHX15_1, SHX16_1)
SHX14_1 = RegisterNetEvent
SHX15_1 = "6f8b6da635"
function SHX16_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2
  SHX3_2 = SHX1_1
  SHX3_2 = SHX3_2[SHX0_2]
  if SHX3_2 then
    SHX4_2 = SHX3_2.doors
    SHX4_2 = SHX4_2[SHX1_2]
    if SHX4_2 then
      SHX4_2.hackingUserId = SHX2_2
    end
  end
end
SHX14_1(SHX15_1, SHX16_1)
SHX14_1 = RegisterNetEvent
SHX15_1 = "be099ec876"
function SHX16_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2
  SHX3_2 = SHX1_1
  SHX3_2 = SHX3_2[SHX0_2]
  if SHX3_2 then
    SHX4_2 = SHX3_2.doors
    SHX4_2 = SHX4_2[SHX1_2]
    if SHX4_2 then
      SHX4_2.isHacked = true
      SHX4_2.hackingUserId = 0
    end
    SHX3_2.delayStartTime = SHX2_2
  end
end
SHX14_1(SHX15_1, SHX16_1)
SHX14_1 = RegisterNetEvent
SHX15_1 = "9ff6fe9b05"
function SHX16_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = SHX0_1.locations
  SHX2_2 = SHX2_2[SHX0_2]
  SHX2_2 = SHX2_2.doors
  SHX2_2 = SHX2_2[SHX1_2]
  SHX3_2 = SHX2_2.type
  if "vault" == SHX3_2 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.hideAllDisplays
    SHX4_2 = "bankrob"
    SHX3_2(SHX4_2)
    SHX3_2 = SetPlayerControl
    SHX4_2 = PlayerId
    SHX4_2 = SHX4_2()
    SHX5_2 = false
    SHX6_2 = 0
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    SHX3_2 = FreezeEntityPosition
    SHX4_2 = PlayerPedId
    SHX4_2 = SHX4_2()
    SHX5_2 = true
    SHX3_2(SHX4_2, SHX5_2)
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.startDataCrackMinigame
    SHX4_2 = 5
    function SHX5_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3, SHX3_3, SHX4_3
      if SHX0_3 then
        SHX1_3 = TriggerServerEvent
        SHX2_3 = "a51f426b65"
        SHX3_3 = SHX0_2
        SHX4_3 = SHX1_2
        SHX1_3(SHX2_3, SHX3_3, SHX4_3)
      else
        SHX1_3 = TriggerServerEvent
        SHX2_3 = "341b26095f"
        SHX3_3 = SHX0_2
        SHX4_3 = SHX1_2
        SHX1_3(SHX2_3, SHX3_3, SHX4_3)
      end
      SHX1_3 = CMG
      SHX1_3 = SHX1_3.showAllDisplays
      SHX2_3 = "bankrob"
      SHX1_3(SHX2_3)
      SHX1_3 = SetPlayerControl
      SHX2_3 = PlayerId
      SHX2_3 = SHX2_3()
      SHX3_3 = true
      SHX4_3 = 0
      SHX1_3(SHX2_3, SHX3_3, SHX4_3)
      SHX1_3 = FreezeEntityPosition
      SHX2_3 = PlayerPedId
      SHX2_3 = SHX2_3()
      SHX3_3 = false
      SHX1_3(SHX2_3, SHX3_3)
    end
    SHX3_2(SHX4_2, SHX5_2)
  else
    SHX3_2 = SHX2_2.type
    if "terminal" == SHX3_2 then
      SHX3_2 = CMG
      SHX3_2 = SHX3_2.hideAllDisplays
      SHX4_2 = "bankrob"
      SHX3_2(SHX4_2)
      SHX3_2 = SetPlayerControl
      SHX4_2 = PlayerId
      SHX4_2 = SHX4_2()
      SHX5_2 = false
      SHX6_2 = 0
      SHX3_2(SHX4_2, SHX5_2, SHX6_2)
      SHX3_2 = FreezeEntityPosition
      SHX4_2 = PlayerPedId
      SHX4_2 = SHX4_2()
      SHX5_2 = true
      SHX3_2(SHX4_2, SHX5_2)
      SHX3_2 = TriggerEvent
      SHX4_2 = "ultra-voltlab"
      SHX5_2 = 60
      function SHX6_2(SHX0_3)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX1_3, SHX2_3, SHX3_3, SHX4_3
        if 1 == SHX0_3 then
          SHX1_3 = TriggerServerEvent
          SHX2_3 = "a51f426b65"
          SHX3_3 = SHX0_2
          SHX4_3 = SHX1_2
          SHX1_3(SHX2_3, SHX3_3, SHX4_3)
        else
          SHX1_3 = TriggerServerEvent
          SHX2_3 = "341b26095f"
          SHX3_3 = SHX0_2
          SHX4_3 = SHX1_2
          SHX1_3(SHX2_3, SHX3_3, SHX4_3)
        end
        SHX1_3 = CMG
        SHX1_3 = SHX1_3.showAllDisplays
        SHX2_3 = "bankrob"
        SHX1_3(SHX2_3)
        SHX1_3 = SetPlayerControl
        SHX2_3 = PlayerId
        SHX2_3 = SHX2_3()
        SHX3_3 = true
        SHX4_3 = 0
        SHX1_3(SHX2_3, SHX3_3, SHX4_3)
        SHX1_3 = FreezeEntityPosition
        SHX2_3 = PlayerPedId
        SHX2_3 = SHX2_3()
        SHX3_3 = false
        SHX1_3(SHX2_3, SHX3_3)
      end
      SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    end
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.setPlayerCombatTimer
  SHX4_2 = 300
  SHX5_2 = false
  SHX3_2(SHX4_2, SHX5_2)
end
SHX14_1(SHX15_1, SHX16_1)
SHX14_1 = RegisterNetEvent
SHX15_1 = "36280d9b8c"
function SHX16_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX3_2 = SHX1_1
  SHX3_2 = SHX3_2[SHX0_2]
  if SHX3_2 then
    SHX4_2 = SHX3_2.safes
    SHX4_2 = SHX4_2[SHX1_2]
    if SHX4_2 then
      SHX4_2.lootingUserId = SHX2_2
      SHX5_2 = SHX4_1
      SHX6_2 = SHX4_2
      SHX5_2(SHX6_2)
    end
  end
end
SHX14_1(SHX15_1, SHX16_1)
SHX14_1 = RegisterNetEvent
SHX15_1 = "8d7a05103b"
function SHX16_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = SHX1_1
  SHX2_2 = SHX2_2[SHX0_2]
  if SHX2_2 then
    SHX3_2 = SHX2_2.safes
    SHX3_2 = SHX3_2[SHX1_2]
    if SHX3_2 then
      SHX3_2.isLooted = true
      SHX3_2.lootingUserId = 0
      SHX4_2 = SHX4_1
      SHX5_2 = SHX3_2
      SHX4_2(SHX5_2)
    end
  end
end
SHX14_1(SHX15_1, SHX16_1)
SHX14_1 = RegisterNetEvent
SHX15_1 = "8792ec1a1b"
function SHX16_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2
  SHX2_2 = SHX0_1.locations
  SHX2_2 = SHX2_2[SHX0_2]
  SHX2_2 = SHX2_2.safes
  SHX2_2 = SHX2_2[SHX1_2]
  SHX3_2 = PlayerPedId
  SHX3_2 = SHX3_2()
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.setWeapon
  SHX5_2 = SHX3_2
  SHX6_2 = -1569615261
  SHX7_2 = true
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = FreezeEntityPosition
  SHX5_2 = SHX3_2
  SHX6_2 = true
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = tCMG
  SHX4_2 = SHX4_2.setCanAnim
  SHX5_2 = false
  SHX4_2(SHX5_2)
  SHX4_2 = SetPlayerControl
  SHX5_2 = PlayerId
  SHX5_2 = SHX5_2()
  SHX6_2 = false
  SHX7_2 = 0
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.loadAnimDict
  SHX5_2 = "anim@heists@fleeca_bank@drilling"
  SHX4_2(SHX5_2)
  SHX4_2 = SHX2_2.animPosition
  SHX5_2 = TaskPlayAnimAdvanced
  SHX6_2 = SHX3_2
  SHX7_2 = "anim@heists@fleeca_bank@drilling"
  SHX8_2 = "drill_straight_idle"
  SHX9_2 = SHX4_2.x
  SHX10_2 = SHX4_2.y
  SHX11_2 = SHX4_2.z
  SHX12_2 = 0.0
  SHX13_2 = 0.0
  SHX14_2 = SHX4_2.w
  SHX15_2 = 3.0
  SHX16_2 = -4.0
  SHX17_2 = -1
  SHX18_2 = 2
  SHX19_2 = 0
  SHX20_2 = 0
  SHX21_2 = 0
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
  SHX5_2 = RemoveAnimDict
  SHX6_2 = "anim@heists@fleeca_bank@drilling"
  SHX5_2(SHX6_2)
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.setPlayerCombatTimer
  SHX6_2 = 300
  SHX7_2 = false
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.startDrillingUI
  function SHX6_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3, SHX3_3, SHX4_3
    if 1 == SHX0_3 then
      SHX1_3 = TriggerServerEvent
      SHX2_3 = "7a0004831f"
      SHX3_3 = SHX0_2
      SHX4_3 = SHX1_2
      SHX1_3(SHX2_3, SHX3_3, SHX4_3)
    elseif 2 == SHX0_3 then
      SHX1_3 = TriggerServerEvent
      SHX2_3 = "0585ae58be"
      SHX3_3 = SHX0_2
      SHX4_3 = SHX1_2
      SHX1_3(SHX2_3, SHX3_3, SHX4_3)
    elseif 3 == SHX0_3 then
      SHX1_3 = TriggerServerEvent
      SHX2_3 = "0585ae58be"
      SHX3_3 = SHX0_2
      SHX4_3 = SHX1_2
      SHX1_3(SHX2_3, SHX3_3, SHX4_3)
      SHX1_3 = CMG
      SHX1_3 = SHX1_3.stopDrillingUI
      SHX1_3()
    end
    SHX1_3 = ClearPedTasksImmediately
    SHX2_3 = SHX3_2
    SHX1_3(SHX2_3)
    SHX1_3 = StopGameplayCamShaking
    SHX2_3 = true
    SHX1_3(SHX2_3)
    SHX1_3 = FreezeEntityPosition
    SHX2_3 = SHX3_2
    SHX3_3 = false
    SHX1_3(SHX2_3, SHX3_3)
    SHX1_3 = tCMG
    SHX1_3 = SHX1_3.setCanAnim
    SHX2_3 = true
    SHX1_3(SHX2_3)
    SHX1_3 = SetPlayerControl
    SHX2_3 = PlayerId
    SHX2_3 = SHX2_3()
    SHX3_3 = true
    SHX4_3 = 0
    SHX1_3(SHX2_3, SHX3_3, SHX4_3)
    SHX1_3 = CMG
    SHX1_3 = SHX1_3.setPlayerCombatTimer
    SHX2_3 = 300
    SHX3_3 = false
    SHX1_3(SHX2_3, SHX3_3)
  end
  SHX5_2(SHX6_2)
end
SHX14_1(SHX15_1, SHX16_1)
SHX14_1 = Citizen
SHX14_1 = SHX14_1.CreateThread
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = pairs
  SHX1_2 = SHX0_1.locations
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.createArea
    SHX7_2 = "bankrob_"
    SHX8_2 = tostring
    SHX9_2 = SHX4_2
    SHX8_2 = SHX8_2(SHX9_2)
    SHX7_2 = SHX7_2 .. SHX8_2
    SHX8_2 = SHX5_2.doors
    SHX8_2 = SHX8_2[1]
    SHX8_2 = SHX8_2.position
    SHX9_2 = 50.0
    SHX10_2 = 100.0
    SHX11_2 = SHX3_1
    SHX12_2 = SHX5_1
    SHX13_2 = SHX13_1
    SHX14_2 = SHX5_2
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  end
end
SHX14_1(SHX15_1)
SHX14_1 = RegisterNetEvent
SHX15_1 = "6241081128"
function SHX16_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  while true do
    SHX1_2 = RequestScriptAudioBank
    SHX2_2 = "Alarms"
    SHX3_2 = false
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    if SHX1_2 then
      break
    end
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
  end
  SHX1_2 = GetSoundId
  SHX1_2 = SHX1_2()
  SHX2_2 = PlaySoundFromCoord
  SHX3_2 = SHX1_2
  SHX4_2 = "Burglar_Bell"
  SHX5_2 = SHX0_2.x
  SHX6_2 = SHX0_2.y
  SHX7_2 = SHX0_2.z
  SHX8_2 = "Generic_Alarms"
  SHX9_2 = false
  SHX10_2 = 0.05
  SHX11_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX2_2 = Citizen
  SHX2_2 = SHX2_2.Wait
  SHX3_2 = 300000
  SHX2_2(SHX3_2)
  SHX2_2 = StopSound
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
  SHX2_2 = ReleaseSoundId
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
  SHX2_2 = ReleaseNamedScriptAudioBank
  SHX3_2 = "Alarms"
  SHX2_2(SHX3_2)
end
SHX14_1(SHX15_1, SHX16_1)
SHX14_1 = {}
SHX15_1 = {}
SHX16_1 = vector2
SHX17_1 = 0.21359223
SHX18_1 = 0.3446602
SHX16_1 = SHX16_1(SHX17_1, SHX18_1)
SHX17_1 = vector2
SHX18_1 = 0.5048544
SHX19_1 = 0.6359223
SHX17_1 = SHX17_1(SHX18_1, SHX19_1)
SHX18_1 = vector2
SHX19_1 = 0.79611653
SHX20_1 = 0.92718446
SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1 = SHX18_1(SHX19_1, SHX20_1)
SHX15_1[1] = SHX16_1
SHX15_1[2] = SHX17_1
SHX15_1[3] = SHX18_1
SHX15_1[4] = SHX19_1
SHX15_1[5] = SHX20_1
SHX15_1[6] = SHX21_1
SHX15_1[7] = SHX22_1
SHX15_1[8] = SHX23_1
SHX15_1[9] = SHX24_1
SHX15_1[10] = SHX25_1
function SHX16_1(SHX0_2)
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
  SHX1_2 = AddTextComponentScaleform
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = EndTextCommandScaleformString
  SHX1_2()
end
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = N_0xe83a3e3557a56640
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
function SHX18_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = RequestScaleformMovie
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  while true do
    SHX2_2 = HasScaleformMovieLoaded
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      break
    end
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
  SHX2_2 = PushScaleformMovieFunction
  SHX3_2 = SHX1_2
  SHX4_2 = "CLEAR_ALL"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = PopScaleformMovieFunctionVoid
  SHX2_2()
  SHX2_2 = PushScaleformMovieFunction
  SHX3_2 = SHX1_2
  SHX4_2 = "SET_CLEAR_SPACE"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = PushScaleformMovieFunctionParameterInt
  SHX3_2 = 200
  SHX2_2(SHX3_2)
  SHX2_2 = PopScaleformMovieFunctionVoid
  SHX2_2()
  SHX2_2 = PushScaleformMovieFunction
  SHX3_2 = SHX1_2
  SHX4_2 = "SET_DATA_SLOT"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = PushScaleformMovieFunctionParameterInt
  SHX3_2 = 0
  SHX2_2(SHX3_2)
  SHX2_2 = SHX17_1
  SHX3_2 = GetControlInstructionalButton
  SHX4_2 = 2
  SHX5_2 = 172
  SHX6_2 = true
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = SHX16_1
  SHX3_2 = "Drill Forward"
  SHX2_2(SHX3_2)
  SHX2_2 = PopScaleformMovieFunctionVoid
  SHX2_2()
  SHX2_2 = PushScaleformMovieFunction
  SHX3_2 = SHX1_2
  SHX4_2 = "SET_DATA_SLOT"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = PushScaleformMovieFunctionParameterInt
  SHX3_2 = 1
  SHX2_2(SHX3_2)
  SHX2_2 = SHX17_1
  SHX3_2 = GetControlInstructionalButton
  SHX4_2 = 2
  SHX5_2 = 173
  SHX6_2 = true
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = SHX16_1
  SHX3_2 = "Drill Backward"
  SHX2_2(SHX3_2)
  SHX2_2 = PopScaleformMovieFunctionVoid
  SHX2_2()
  SHX2_2 = PushScaleformMovieFunction
  SHX3_2 = SHX1_2
  SHX4_2 = "SET_DATA_SLOT"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = PushScaleformMovieFunctionParameterInt
  SHX3_2 = 2
  SHX2_2(SHX3_2)
  SHX2_2 = SHX17_1
  SHX3_2 = GetControlInstructionalButton
  SHX4_2 = 2
  SHX5_2 = 175
  SHX6_2 = true
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = SHX16_1
  SHX3_2 = "Drill Faster"
  SHX2_2(SHX3_2)
  SHX2_2 = PopScaleformMovieFunctionVoid
  SHX2_2()
  SHX2_2 = PushScaleformMovieFunction
  SHX3_2 = SHX1_2
  SHX4_2 = "SET_DATA_SLOT"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = PushScaleformMovieFunctionParameterInt
  SHX3_2 = 3
  SHX2_2(SHX3_2)
  SHX2_2 = SHX17_1
  SHX3_2 = GetControlInstructionalButton
  SHX4_2 = 2
  SHX5_2 = 174
  SHX6_2 = true
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = SHX16_1
  SHX3_2 = "Drill Slower"
  SHX2_2(SHX3_2)
  SHX2_2 = PopScaleformMovieFunctionVoid
  SHX2_2()
  SHX2_2 = PushScaleformMovieFunction
  SHX3_2 = SHX1_2
  SHX4_2 = "SET_DATA_SLOT"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = PushScaleformMovieFunctionParameterInt
  SHX3_2 = 4
  SHX2_2(SHX3_2)
  SHX2_2 = SHX17_1
  SHX3_2 = GetControlInstructionalButton
  SHX4_2 = 2
  SHX5_2 = 202
  SHX6_2 = true
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = SHX16_1
  SHX3_2 = "Stop Drilling"
  SHX2_2(SHX3_2)
  SHX2_2 = PopScaleformMovieFunctionVoid
  SHX2_2()
  SHX2_2 = PushScaleformMovieFunction
  SHX3_2 = SHX1_2
  SHX4_2 = "DRAW_INSTRUCTIONAL_BUTTONS"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = PopScaleformMovieFunctionVoid
  SHX2_2()
  SHX2_2 = PushScaleformMovieFunction
  SHX3_2 = SHX1_2
  SHX4_2 = "SET_BACKGROUND_COLOUR"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = PushScaleformMovieFunctionParameterInt
  SHX3_2 = 0
  SHX2_2(SHX3_2)
  SHX2_2 = PushScaleformMovieFunctionParameterInt
  SHX3_2 = 0
  SHX2_2(SHX3_2)
  SHX2_2 = PushScaleformMovieFunctionParameterInt
  SHX3_2 = 0
  SHX2_2(SHX3_2)
  SHX2_2 = PushScaleformMovieFunctionParameterInt
  SHX3_2 = 80
  SHX2_2(SHX3_2)
  SHX2_2 = PopScaleformMovieFunctionVoid
  SHX2_2()
  return SHX1_2
end
SHX19_1 = {}
SHX20_1 = 30
SHX21_1 = 31
SHX22_1 = 32
SHX23_1 = 33
SHX24_1 = 34
SHX25_1 = 35
SHX19_1[1] = SHX20_1
SHX19_1[2] = SHX21_1
SHX19_1[3] = SHX22_1
SHX19_1[4] = SHX23_1
SHX19_1[5] = SHX24_1
SHX19_1[6] = SHX25_1
SHX14_1.DisabledControls = SHX19_1
function SHX19_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX14_1.Active
  if not SHX1_2 then
    SHX14_1.Active = true
    SHX1_2 = SHX14_1.Pause
    if not SHX1_2 then
      SHX1_2 = SHX14_1.Init
      SHX1_2()
    end
    SHX1_2 = SHX14_1.Update
    SHX2_2 = SHX0_2
    SHX1_2(SHX2_2)
  end
end
SHX14_1.Start = SHX19_1
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX14_1.Active
  if SHX0_2 then
    SHX14_1.Active = false
    SHX14_1.Result = 3
    SHX14_1.Pause = true
  end
end
SHX14_1.Stop = SHX19_1
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX14_1.Scaleform
  if SHX0_2 then
    SHX0_2 = SetScaleformMovieAsNoLongerNeeded
    SHX1_2 = SHX14_1.Scaleform
    SHX0_2(SHX1_2)
  end
  SHX0_2 = RequestScaleformMovie
  SHX1_2 = "VAULT_DRILL"
  SHX0_2 = SHX0_2(SHX1_2)
  SHX14_1.Scaleform = SHX0_2
  while true do
    SHX0_2 = HasScaleformMovieLoaded
    SHX1_2 = SHX14_1.Scaleform
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      break
    end
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
  SHX14_1.DrillSpeed = 0.0
  SHX14_1.DrillPos = 0.0
  SHX14_1.DrillTemp = 0.0
  SHX14_1.HoleDepth = 0.0
  SHX0_2 = PushScaleformMovieFunction
  SHX1_2 = SHX14_1.Scaleform
  SHX2_2 = "REVEAL"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = PopScaleformMovieFunctionVoid
  SHX0_2()
  SHX0_2 = PushScaleformMovieFunction
  SHX1_2 = SHX14_1.Scaleform
  SHX2_2 = "SET_SPEED"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = PushScaleformMovieFunctionParameterFloat
  SHX1_2 = 0.0
  SHX0_2(SHX1_2)
  SHX0_2 = PopScaleformMovieFunctionVoid
  SHX0_2()
  SHX0_2 = PushScaleformMovieFunction
  SHX1_2 = SHX14_1.Scaleform
  SHX2_2 = "SET_DRILL_POSITION"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = PushScaleformMovieFunctionParameterFloat
  SHX1_2 = 0.0
  SHX0_2(SHX1_2)
  SHX0_2 = PopScaleformMovieFunctionVoid
  SHX0_2()
  SHX0_2 = PushScaleformMovieFunction
  SHX1_2 = SHX14_1.Scaleform
  SHX2_2 = "SET_TEMPERATURE"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = PushScaleformMovieFunctionParameterFloat
  SHX1_2 = 0.0
  SHX0_2(SHX1_2)
  SHX0_2 = PopScaleformMovieFunctionVoid
  SHX0_2()
  SHX0_2 = PushScaleformMovieFunction
  SHX1_2 = SHX14_1.Scaleform
  SHX2_2 = "SET_HOLE_DEPTH"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = PushScaleformMovieFunctionParameterFloat
  SHX1_2 = 0.0
  SHX0_2(SHX1_2)
  SHX0_2 = PopScaleformMovieFunctionVoid
  SHX0_2()
  SHX0_2 = PushScaleformMovieFunction
  SHX1_2 = SHX14_1.Scaleform
  SHX2_2 = "SET_NUM_DISCS"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = PushScaleformMovieFunctionParameterInt
  SHX1_2 = 3
  SHX0_2(SHX1_2)
  SHX0_2 = PopScaleformMovieFunctionVoid
  SHX0_2()
end
SHX14_1.Init = SHX19_1
function SHX19_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = SHX18_1
  SHX2_2 = "instructional_buttons"
  SHX1_2 = SHX1_2(SHX2_2)
  while true do
    SHX2_2 = SHX14_1.Active
    if not SHX2_2 then
      break
    end
    SHX2_2 = SHX14_1.Draw
    SHX2_2()
    SHX2_2 = SHX14_1.DisableControls
    SHX2_2()
    SHX2_2 = SHX14_1.HandleControls
    SHX2_2()
    SHX2_2 = DrawScaleformMovieFullscreen
    SHX3_2 = SHX1_2
    SHX4_2 = 255
    SHX5_2 = 255
    SHX6_2 = 255
    SHX7_2 = 255
    SHX8_2 = 0
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX2_2 = Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
  SHX2_2 = SHX0_2
  SHX3_2 = SHX14_1.Result
  SHX2_2(SHX3_2)
end
SHX14_1.Update = SHX19_1
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = DrawScaleformMovieFullscreen
  SHX1_2 = SHX14_1.Scaleform
  SHX2_2 = 255
  SHX3_2 = 255
  SHX4_2 = 255
  SHX5_2 = 255
  SHX6_2 = 255
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
end
SHX14_1.Draw = SHX19_1
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = pairs
  SHX1_2 = SHX15_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX14_1.DrillPos
    SHX7_2 = SHX5_2.x
    if SHX6_2 >= SHX7_2 then
      SHX6_2 = SHX14_1.DrillPos
      SHX7_2 = SHX5_2.y
      if SHX6_2 <= SHX7_2 then
        SHX6_2 = true
        return SHX6_2
      end
    end
  end
  SHX0_2 = false
  return SHX0_2
end
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = SHX14_1.DrillPos
  SHX1_2 = IsDisabledControlJustPressed
  SHX2_2 = 0
  SHX3_2 = 172
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if SHX1_2 then
    SHX1_2 = math
    SHX1_2 = SHX1_2.min
    SHX2_2 = 1.0
    SHX3_2 = SHX14_1.DrillPos
    SHX3_2 = SHX3_2 + 0.01
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    SHX14_1.DrillPos = SHX1_2
  else
    SHX1_2 = IsDisabledControlPressed
    SHX2_2 = 0
    SHX3_2 = 172
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    if SHX1_2 then
      SHX1_2 = math
      SHX1_2 = SHX1_2.min
      SHX2_2 = 1.0
      SHX3_2 = SHX14_1.DrillPos
      SHX4_2 = GetFrameTime
      SHX4_2 = SHX4_2()
      SHX4_2 = 0.1 * SHX4_2
      SHX5_2 = math
      SHX5_2 = SHX5_2.max
      SHX6_2 = 0.1
      SHX7_2 = SHX14_1.DrillTemp
      SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
      SHX5_2 = SHX5_2 * 10
      SHX4_2 = SHX4_2 / SHX5_2
      SHX3_2 = SHX3_2 + SHX4_2
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
      SHX14_1.DrillPos = SHX1_2
    else
      SHX1_2 = IsDisabledControlJustPressed
      SHX2_2 = 0
      SHX3_2 = 173
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
      if SHX1_2 then
        SHX1_2 = math
        SHX1_2 = SHX1_2.max
        SHX2_2 = 0.0
        SHX3_2 = SHX14_1.DrillPos
        SHX3_2 = SHX3_2 - 0.01
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        SHX14_1.DrillPos = SHX1_2
      else
        SHX1_2 = IsDisabledControlPressed
        SHX2_2 = 0
        SHX3_2 = 173
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        if SHX1_2 then
          SHX1_2 = math
          SHX1_2 = SHX1_2.max
          SHX2_2 = 0.0
          SHX3_2 = SHX14_1.DrillPos
          SHX4_2 = GetFrameTime
          SHX4_2 = SHX4_2()
          SHX4_2 = 0.1 * SHX4_2
          SHX3_2 = SHX3_2 - SHX4_2
          SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
          SHX14_1.DrillPos = SHX1_2
        end
      end
    end
  end
  SHX1_2 = SHX14_1.DrillSpeed
  SHX2_2 = IsDisabledControlJustPressed
  SHX3_2 = 0
  SHX4_2 = 175
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  if SHX2_2 then
    SHX2_2 = math
    SHX2_2 = SHX2_2.min
    SHX3_2 = 1.0
    SHX4_2 = SHX14_1.DrillSpeed
    SHX4_2 = SHX4_2 + 0.05
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    SHX14_1.DrillSpeed = SHX2_2
  else
    SHX2_2 = IsDisabledControlPressed
    SHX3_2 = 0
    SHX4_2 = 175
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if SHX2_2 then
      SHX2_2 = math
      SHX2_2 = SHX2_2.min
      SHX3_2 = 1.0
      SHX4_2 = SHX14_1.DrillSpeed
      SHX5_2 = GetFrameTime
      SHX5_2 = SHX5_2()
      SHX5_2 = 0.5 * SHX5_2
      SHX4_2 = SHX4_2 + SHX5_2
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
      SHX14_1.DrillSpeed = SHX2_2
    else
      SHX2_2 = IsControlJustPressed
      SHX3_2 = 0
      SHX4_2 = 174
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
      if SHX2_2 then
        SHX2_2 = math
        SHX2_2 = SHX2_2.max
        SHX3_2 = 0.0
        SHX4_2 = SHX14_1.DrillSpeed
        SHX4_2 = SHX4_2 - 0.05
        SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
        SHX14_1.DrillSpeed = SHX2_2
      else
        SHX2_2 = IsDisabledControlPressed
        SHX3_2 = 0
        SHX4_2 = 174
        SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
        if SHX2_2 then
          SHX2_2 = math
          SHX2_2 = SHX2_2.max
          SHX3_2 = 0.0
          SHX4_2 = SHX14_1.DrillSpeed
          SHX5_2 = GetFrameTime
          SHX5_2 = SHX5_2()
          SHX5_2 = 0.5 * SHX5_2
          SHX4_2 = SHX4_2 - SHX5_2
          SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
          SHX14_1.DrillSpeed = SHX2_2
        end
      end
    end
  end
  SHX2_2 = IsDisabledControlJustPressed
  SHX3_2 = 0
  SHX4_2 = 202
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  if SHX2_2 then
    SHX14_1.Active = false
    SHX14_1.Result = 3
  end
  SHX2_2 = SHX14_1.DrillTemp
  SHX3_2 = SHX14_1.DrillPos
  if SHX0_2 < SHX3_2 then
    SHX3_2 = SHX14_1.DrillSpeed
    SHX4_2 = 0.4
    if SHX3_2 > SHX4_2 then
      SHX3_2 = SHX19_1
      SHX3_2 = SHX3_2()
      if SHX3_2 then
        SHX3_2 = math
        SHX3_2 = SHX3_2.min
        SHX4_2 = 1.0
        SHX5_2 = SHX14_1.DrillTemp
        SHX6_2 = GetFrameTime
        SHX6_2 = SHX6_2()
        SHX6_2 = 0.05 * SHX6_2
        SHX7_2 = SHX14_1.DrillSpeed
        SHX7_2 = SHX7_2 * 10
        SHX6_2 = SHX6_2 * SHX7_2
        SHX5_2 = SHX5_2 + SHX6_2
        SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
        SHX14_1.DrillTemp = SHX3_2
      end
      SHX3_2 = PushScaleformMovieFunction
      SHX4_2 = SHX14_1.Scaleform
      SHX5_2 = "SET_DRILL_POSITION"
      SHX3_2(SHX4_2, SHX5_2)
      SHX3_2 = PushScaleformMovieFunctionParameterFloat
      SHX4_2 = SHX14_1.DrillPos
      SHX3_2(SHX4_2)
      SHX3_2 = PopScaleformMovieFunctionVoid
      SHX3_2()
    else
      SHX3_2 = SHX14_1.DrillPos
      SHX4_2 = 0.1
      if not (SHX3_2 < SHX4_2) then
        SHX3_2 = SHX14_1.DrillPos
        SHX4_2 = SHX14_1.HoleDepth
        if not (SHX3_2 < SHX4_2) then
          goto SHX_LABEL_211
        end
      end
      SHX3_2 = PushScaleformMovieFunction
      SHX4_2 = SHX14_1.Scaleform
      SHX5_2 = "SET_DRILL_POSITION"
      SHX3_2(SHX4_2, SHX5_2)
      SHX3_2 = PushScaleformMovieFunctionParameterFloat
      SHX4_2 = SHX14_1.DrillPos
      SHX3_2(SHX4_2)
      SHX3_2 = PopScaleformMovieFunctionVoid
      SHX3_2()
      goto SHX_LABEL_269
      -- [FIX IF ERROR] Move ::SHX_LABEL_211:: outside nested blocks until all 'goto SHX_LABEL_211' can see it
      ::SHX_LABEL_211::
      SHX14_1.DrillPos = SHX0_2
      SHX3_2 = SHX19_1
      SHX3_2 = SHX3_2()
      if SHX3_2 then
        SHX3_2 = math
        SHX3_2 = SHX3_2.min
        SHX4_2 = 1.0
        SHX5_2 = SHX14_1.DrillTemp
        SHX6_2 = GetFrameTime
        SHX6_2 = SHX6_2()
        SHX6_2 = 0.01 * SHX6_2
        SHX5_2 = SHX5_2 + SHX6_2
        SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
        SHX14_1.DrillTemp = SHX3_2
      end
    end
  else
    SHX3_2 = SHX14_1.DrillPos
    SHX4_2 = SHX14_1.HoleDepth
    if SHX3_2 < SHX4_2 then
      SHX3_2 = math
      SHX3_2 = SHX3_2.max
      SHX4_2 = 0.0
      SHX5_2 = SHX14_1.DrillTemp
      SHX6_2 = GetFrameTime
      SHX6_2 = SHX6_2()
      SHX6_2 = 0.05 * SHX6_2
      SHX7_2 = math
      SHX7_2 = SHX7_2.max
      SHX8_2 = 0.005
      SHX9_2 = SHX14_1.DrillSpeed
      SHX9_2 = SHX9_2 * 10
      SHX9_2 = SHX9_2 / 2
      SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
      SHX6_2 = SHX6_2 * SHX7_2
      SHX5_2 = SHX5_2 - SHX6_2
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
      SHX14_1.DrillTemp = SHX3_2
    end
    SHX3_2 = SHX14_1.DrillPos
    SHX4_2 = SHX14_1.HoleDepth
    if SHX3_2 ~= SHX4_2 then
      SHX3_2 = PushScaleformMovieFunction
      SHX4_2 = SHX14_1.Scaleform
      SHX5_2 = "SET_DRILL_POSITION"
      SHX3_2(SHX4_2, SHX5_2)
      SHX3_2 = PushScaleformMovieFunctionParameterFloat
      SHX4_2 = SHX14_1.DrillPos
      SHX3_2(SHX4_2)
      SHX3_2 = PopScaleformMovieFunctionVoid
      SHX3_2()
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_269:: outside nested blocks until all 'goto SHX_LABEL_269' can see it
  ::SHX_LABEL_269::
  SHX3_2 = SHX14_1.DrillSpeed
  if SHX1_2 ~= SHX3_2 then
    SHX3_2 = PushScaleformMovieFunction
    SHX4_2 = SHX14_1.Scaleform
    SHX5_2 = "SET_SPEED"
    SHX3_2(SHX4_2, SHX5_2)
    SHX3_2 = PushScaleformMovieFunctionParameterFloat
    SHX4_2 = SHX14_1.DrillSpeed
    SHX3_2(SHX4_2)
    SHX3_2 = PopScaleformMovieFunctionVoid
    SHX3_2()
  end
  SHX3_2 = SHX14_1.DrillTemp
  if SHX2_2 ~= SHX3_2 then
    SHX3_2 = PushScaleformMovieFunction
    SHX4_2 = SHX14_1.Scaleform
    SHX5_2 = "SET_TEMPERATURE"
    SHX3_2(SHX4_2, SHX5_2)
    SHX3_2 = PushScaleformMovieFunctionParameterFloat
    SHX4_2 = SHX14_1.DrillTemp
    SHX3_2(SHX4_2)
    SHX3_2 = PopScaleformMovieFunctionVoid
    SHX3_2()
  end
  SHX3_2 = SHX14_1.DrillTemp
  if SHX3_2 >= 1.0 then
    SHX14_1.Result = 2
    SHX14_1.Active = false
    SHX14_1.Pause = false
    SHX3_2 = PushScaleformMovieFunction
    SHX4_2 = SHX14_1.Scaleform
    SHX5_2 = "RESET"
    SHX3_2(SHX4_2, SHX5_2)
    SHX3_2 = PopScaleformMovieFunctionVoid
    SHX3_2()
  else
    SHX3_2 = SHX14_1.DrillPos
    if SHX3_2 >= 1.0 then
      SHX14_1.Result = 1
      SHX14_1.Active = false
      SHX14_1.Pause = false
      SHX3_2 = PushScaleformMovieFunction
      SHX4_2 = SHX14_1.Scaleform
      SHX5_2 = "RESET"
      SHX3_2(SHX4_2, SHX5_2)
      SHX3_2 = PopScaleformMovieFunctionVoid
      SHX3_2()
    end
  end
  SHX3_2 = SHX14_1.DrillPos
  SHX4_2 = SHX14_1.HoleDepth
  if SHX3_2 > SHX4_2 then
    SHX3_2 = SHX14_1.DrillPos
    if SHX3_2 then
      goto SHX_LABEL_326
    end
  end
  SHX3_2 = SHX14_1.HoleDepth
  -- [FIX IF ERROR] Move ::SHX_LABEL_326:: outside nested blocks until all 'goto SHX_LABEL_326' can see it
  ::SHX_LABEL_326::
  SHX14_1.HoleDepth = SHX3_2
end
SHX14_1.HandleControls = SHX20_1
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = ipairs
  SHX1_2 = SHX14_1.DisabledControls
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = DisableControlAction
    SHX7_2 = 0
    SHX8_2 = SHX5_2
    SHX9_2 = true
    SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  end
end
SHX14_1.DisableControls = SHX20_1
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = ipairs
  SHX1_2 = SHX14_1.DisabledControls
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = DisableControlAction
    SHX7_2 = 0
    SHX8_2 = SHX5_2
    SHX9_2 = true
    SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  end
end
SHX14_1.EnableControls = SHX20_1
SHX20_1 = CMG
function SHX21_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
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
    SHX0_3 = SHX14_1.Start
    SHX1_3 = SHX0_2
    SHX0_3(SHX1_3)
  end
  SHX1_2(SHX2_2)
end
SHX20_1.startDrillingUI = SHX21_1
SHX20_1 = CMG
function SHX21_1()
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
    SHX0_3 = SHX14_1.Stop
    SHX0_3()
  end
  SHX0_2(SHX1_2)
end
SHX20_1.stopDrillingUI = SHX21_1
