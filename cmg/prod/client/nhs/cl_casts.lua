-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_casts"
SHX0_1 = SHX0_1(SHX1_1)
if not SHX0_1 then
  SHX0_1 = {}
end
SHX1_1 = SHX0_1.casts
if not SHX1_1 then
  SHX1_1 = {}
end
SHX2_1 = CMG
SHX2_1 = SHX2_1.loadModule
SHX3_1 = "cfg/cfg_forcedequipment"
SHX2_1 = SHX2_1(SHX3_1)
SHX2_1 = SHX2_1.types
SHX2_1 = SHX2_1.casts
SHX2_1 = SHX2_1.defaultDurationSeconds
SHX3_1 = {}
SHX4_1 = {}
SHX5_1 = {}
SHX6_1 = nil
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = GetEntityModel
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX0_1.hashMale
  if SHX1_2 == SHX2_2 then
    SHX2_2 = "m"
    return SHX2_2
  end
  SHX2_2 = SHX0_1.hashFemale
  if SHX1_2 == SHX2_2 then
    SHX2_2 = "f"
    return SHX2_2
  end
  SHX2_2 = "m"
  return SHX2_2
end
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = HasAnimDictLoaded
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = true
    return SHX1_2
  end
  SHX1_2 = RequestAnimDict
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = 0
  while true do
    SHX2_2 = HasAnimDictLoaded
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    if not (not SHX2_2 and SHX1_2 < 100) then
      break
    end
    SHX2_2 = Wait
    SHX3_2 = 10
    SHX2_2(SHX3_2)
    SHX1_2 = SHX1_2 + 1
  end
  SHX2_2 = HasAnimDictLoaded
  SHX3_2 = SHX0_2
  return SHX2_2(SHX3_2)
end
function SHX9_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = HasClipSetLoaded
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = true
    return SHX1_2
  end
  SHX1_2 = RequestClipSet
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = 0
  while true do
    SHX2_2 = HasClipSetLoaded
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    if not (not SHX2_2 and SHX1_2 < 100) then
      break
    end
    SHX2_2 = Wait
    SHX3_2 = 10
    SHX2_2(SHX3_2)
    SHX1_2 = SHX1_2 + 1
  end
  SHX2_2 = HasClipSetLoaded
  SHX3_2 = SHX0_2
  return SHX2_2(SHX3_2)
end
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.removeForcedEquipment
  SHX1_2 = "Cast"
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.removeForcedEquipment
  SHX1_2 = "Bandage"
  SHX0_2(SHX1_2)
  SHX0_2 = GetGameTimer
  SHX0_2 = SHX0_2()
  SHX1_2 = nil
  SHX2_2 = nil
  SHX3_2 = pairs
  SHX4_2 = SHX5_1
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    if SHX8_2 > SHX0_2 and (nil == SHX2_2 or SHX8_2 < SHX2_2) then
      SHX1_2 = SHX7_2
      SHX2_2 = SHX8_2
    end
  end
  if SHX1_2 and SHX2_2 then
    SHX3_2 = SHX2_2 - SHX0_2
    SHX3_2 = SHX3_2 / 1000
    function SHX4_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX1_3 = SHX1_2
      SHX0_3 = SHX5_1
      SHX0_3[SHX1_3] = nil
      SHX0_3 = SHX6_1
      SHX1_3 = SHX1_2
      SHX0_3(SHX1_3)
      SHX0_3 = SHX10_1
      SHX0_3()
    end
    SHX5_2 = SHX1_1
    SHX5_2 = SHX5_2[SHX1_2]
    if SHX5_2 then
      SHX6_2 = SHX5_2.label
      if SHX6_2 then
        SHX6_2 = SHX5_2.label
        SHX7_2 = SHX6_2
        SHX6_2 = SHX6_2.find
        SHX8_2 = "Bandage"
        SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
        if SHX6_2 then
          SHX6_2 = "Bandage"
          if SHX6_2 then
            goto SHX_LABEL_53
          end
        end
      end
    end
    SHX6_2 = "Cast"
    -- [FIX IF ERROR] Move ::SHX_LABEL_53:: outside nested blocks until all 'goto SHX_LABEL_53' can see it
    ::SHX_LABEL_53::
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.addForcedEquipment
    SHX8_2 = SHX6_2
    SHX9_2 = SHX3_2
    SHX10_2 = SHX4_2
    SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  end
end
function SHX11_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  if SHX1_2 then
    SHX2_2 = DoesEntityExist
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      goto SHX_LABEL_9
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  SHX2_2 = tostring
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = NetworkGetNetworkIdFromEntity
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 and 0 ~= SHX3_2 then
    SHX4_2 = TriggerServerEvent
    SHX5_2 = "ce24d993d8"
    SHX6_2 = "cast"
    SHX7_2 = SHX3_2
    SHX8_2 = SHX2_2
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  else
    SHX4_2 = CreateThread
    function SHX5_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
      SHX0_3 = Wait
      SHX1_3 = 100
      SHX0_3(SHX1_3)
      SHX0_3 = SHX1_2
      if SHX0_3 then
        SHX0_3 = DoesEntityExist
        SHX1_3 = SHX1_2
        SHX0_3 = SHX0_3(SHX1_3)
        if SHX0_3 then
          SHX0_3 = NetworkGetNetworkIdFromEntity
          SHX1_3 = SHX1_2
          SHX0_3 = SHX0_3(SHX1_3)
          SHX3_2 = SHX0_3
          SHX0_3 = SHX3_2
          if SHX0_3 then
            SHX0_3 = SHX3_2
            if 0 ~= SHX0_3 then
              SHX0_3 = TriggerServerEvent
              SHX1_3 = "ce24d993d8"
              SHX2_3 = "cast"
              SHX3_3 = SHX3_2
              SHX4_3 = SHX2_2
              SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
            end
          end
        end
      end
    end
    SHX4_2(SHX5_2)
  end
end
function SHX12_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX2_2 = SHX5_1
  SHX2_2[SHX0_2] = nil
  SHX2_2 = SHX3_1
  SHX2_2 = SHX2_2[SHX0_2]
  if SHX2_2 then
    SHX3_2 = DoesEntityExist
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      SHX3_2 = DetachEntity
      SHX4_2 = SHX2_2
      SHX5_2 = false
      SHX6_2 = false
      SHX3_2(SHX4_2, SHX5_2, SHX6_2)
      SHX3_2 = DeleteEntity
      SHX4_2 = SHX2_2
      SHX3_2(SHX4_2)
      SHX3_2 = SHX3_1
      SHX3_2[SHX0_2] = nil
    end
  end
  SHX3_2 = TriggerServerEvent
  SHX4_2 = "607b2e0073"
  SHX5_2 = "cast"
  SHX6_2 = tostring
  SHX7_2 = SHX0_2
  SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX6_2(SHX7_2)
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX3_2 = SHX1_1
  SHX3_2 = SHX3_2[SHX0_2]
  if SHX3_2 then
    SHX4_2 = SHX3_2.anim
    if SHX4_2 then
      SHX4_2 = CMG
      SHX4_2 = SHX4_2.getPlayerPed
      SHX4_2 = SHX4_2()
      SHX5_2 = SHX7_1
      SHX6_2 = SHX4_2
      SHX5_2 = SHX5_2(SHX6_2)
      SHX6_2 = SHX3_2.anim
      SHX6_2 = SHX6_2[SHX5_2]
      if SHX6_2 then
        SHX7_2 = StopAnimTask
        SHX8_2 = SHX4_2
        SHX9_2 = SHX6_2[1]
        SHX10_2 = SHX6_2[2]
        SHX11_2 = 1.0
        SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
      end
    end
  end
  SHX4_2 = SHX4_1
  SHX4_2 = SHX4_2[SHX0_2]
  if SHX4_2 then
    SHX4_2 = ResetPedMovementClipset
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.getPlayerPed
    SHX5_2 = SHX5_2()
    SHX6_2 = 1.0
    SHX4_2(SHX5_2, SHX6_2)
    SHX4_2 = ResetPedWeaponMovementClipset
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.getPlayerPed
    SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX5_2()
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX4_2 = ResetPedStrafeClipset
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.getPlayerPed
    SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX5_2()
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX4_2 = SHX4_1
    SHX4_2[SHX0_2] = nil
    SHX4_2 = TriggerEvent
    SHX5_2 = "865ab191af"
    SHX4_2(SHX5_2)
  end
  if not SHX1_2 then
    SHX4_2 = TriggerServerEvent
    SHX5_2 = "c37f2f9014"
    SHX6_2 = SHX0_2
    SHX4_2(SHX5_2, SHX6_2)
  end
  SHX4_2 = SHX10_1
  SHX4_2()
end
SHX6_1 = SHX12_1
function SHX12_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2
  SHX1_2 = SHX1_1
  SHX1_2 = SHX1_2[SHX0_2]
  if not SHX1_2 then
    SHX2_2 = false
    return SHX2_2
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerCoords
  SHX3_2 = SHX3_2()
  SHX4_2 = SHX7_1
  SHX5_2 = SHX2_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = SHX1_2[SHX4_2]
  if not SHX5_2 then
    SHX6_2 = false
    return SHX6_2
  end
  SHX6_2 = SHX5_2[1]
  SHX7_2 = SHX5_2[2]
  SHX8_2 = SHX5_2[3]
  SHX9_2 = SHX5_2[4]
  SHX10_2 = SHX5_2[5]
  SHX11_2 = SHX5_2[6]
  SHX12_2 = SHX5_2[7]
  SHX13_2 = SHX5_2[8]
  SHX14_2 = GetHashKey
  SHX15_2 = SHX6_2
  SHX14_2 = SHX14_2(SHX15_2)
  SHX15_2 = CMG
  SHX15_2 = SHX15_2.loadModel
  SHX16_2 = SHX14_2
  SHX15_2 = SHX15_2(SHX16_2)
  if not SHX15_2 then
    SHX16_2 = RequestModel
    SHX17_2 = SHX14_2
    SHX16_2(SHX17_2)
    SHX16_2 = 0
    while true do
      SHX17_2 = HasModelLoaded
      SHX18_2 = SHX14_2
      SHX17_2 = SHX17_2(SHX18_2)
      if SHX17_2 then
        break
      end
      SHX17_2 = 150
      if not (SHX16_2 < SHX17_2) then
        break
      end
      SHX17_2 = Wait
      SHX18_2 = 10
      SHX17_2(SHX18_2)
      SHX17_2 = RequestModel
      SHX18_2 = SHX14_2
      SHX17_2(SHX18_2)
      SHX16_2 = SHX16_2 + 1
    end
    SHX17_2 = HasModelLoaded
    SHX18_2 = SHX14_2
    SHX17_2 = SHX17_2(SHX18_2)
    if SHX17_2 then
      SHX15_2 = SHX14_2
    end
  end
  if not SHX15_2 then
    SHX16_2 = notify
    SHX17_2 = "~r~Cast model not available. Ensure plastercasts (or esx_plaster_cast) resource is started."
    SHX16_2(SHX17_2)
    SHX16_2 = false
    return SHX16_2
  end
  SHX16_2 = CMG
  SHX16_2 = SHX16_2.requestEntitySpawn
  SHX17_2 = "cast_prop"
  SHX18_2 = SHX0_2
  SHX16_2(SHX17_2, SHX18_2)
  SHX16_2 = CreateObject
  SHX17_2 = SHX14_2
  SHX18_2 = SHX3_2.x
  SHX19_2 = SHX3_2.y
  SHX20_2 = SHX3_2.z
  SHX21_2 = true
  SHX22_2 = true
  SHX23_2 = false
  SHX16_2 = SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
  if SHX16_2 then
    SHX17_2 = DoesEntityExist
    SHX18_2 = SHX16_2
    SHX17_2 = SHX17_2(SHX18_2)
    if SHX17_2 then
      goto SHX_LABEL_98
    end
  end
  SHX17_2 = notify
  SHX18_2 = "~r~Failed to create cast."
  SHX17_2(SHX18_2)
  SHX17_2 = false
  return SHX17_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_98:: outside nested blocks until all 'goto SHX_LABEL_98' can see it
  ::SHX_LABEL_98::
  SHX17_2 = GetPedBoneIndex
  SHX18_2 = SHX2_2
  SHX19_2 = SHX7_2
  SHX17_2 = SHX17_2(SHX18_2, SHX19_2)
  SHX18_2 = SetModelAsNoLongerNeeded
  SHX19_2 = SHX14_2
  SHX18_2(SHX19_2)
  SHX18_2 = SetEntityCollision
  SHX19_2 = SHX16_2
  SHX20_2 = false
  SHX21_2 = false
  SHX18_2(SHX19_2, SHX20_2, SHX21_2)
  SHX18_2 = SetEntityCompletelyDisableCollision
  SHX19_2 = SHX16_2
  SHX20_2 = false
  SHX21_2 = false
  SHX18_2(SHX19_2, SHX20_2, SHX21_2)
  SHX18_2 = AttachEntityToEntity
  SHX19_2 = SHX16_2
  SHX20_2 = SHX2_2
  SHX21_2 = SHX17_2
  SHX22_2 = SHX8_2
  SHX23_2 = SHX9_2
  SHX24_2 = SHX10_2
  SHX25_2 = SHX11_2
  SHX26_2 = SHX12_2
  SHX27_2 = SHX13_2
  SHX28_2 = true
  SHX29_2 = true
  SHX30_2 = false
  SHX31_2 = true
  SHX32_2 = 1
  SHX33_2 = true
  SHX18_2(SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2)
  SHX18_2 = SHX3_1
  SHX18_2[SHX0_2] = SHX16_2
  SHX18_2 = SHX11_1
  SHX19_2 = SHX0_2
  SHX20_2 = SHX16_2
  SHX18_2(SHX19_2, SHX20_2)
  SHX18_2 = SHX1_2.anim
  if SHX18_2 then
    SHX18_2 = SHX1_2.anim
    SHX18_2 = SHX18_2[SHX4_2]
    if SHX18_2 then
      SHX19_2 = SHX8_1
      SHX20_2 = SHX18_2[1]
      SHX19_2 = SHX19_2(SHX20_2)
      if SHX19_2 then
        SHX19_2 = TaskPlayAnim
        SHX20_2 = SHX2_2
        SHX21_2 = SHX18_2[1]
        SHX22_2 = SHX18_2[2]
        SHX23_2 = 1.0
        SHX24_2 = -1.0
        SHX25_2 = -1
        SHX26_2 = 49
        SHX27_2 = 0
        SHX28_2 = false
        SHX29_2 = false
        SHX30_2 = false
        SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2)
      end
    end
  end
  SHX18_2 = SHX1_2.clipset
  if SHX18_2 then
    SHX18_2 = SHX9_1
    SHX19_2 = SHX1_2.clipset
    SHX18_2 = SHX18_2(SHX19_2)
    if SHX18_2 then
      SHX18_2 = SetPedMovementClipset
      SHX19_2 = SHX2_2
      SHX20_2 = SHX1_2.clipset
      SHX21_2 = 1.0
      SHX18_2(SHX19_2, SHX20_2, SHX21_2)
      SHX18_2 = SHX4_1
      SHX18_2[SHX0_2] = true
      SHX18_2 = RemoveClipSet
      SHX19_2 = SHX1_2.clipset
      SHX18_2(SHX19_2)
    end
  end
  SHX18_2 = true
  return SHX18_2
end
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  if 0 ~= SHX0_2 then
    SHX1_2 = IsEntityDead
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if not SHX1_2 then
      goto SHX_LABEL_12
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_12:: outside nested blocks until all 'goto SHX_LABEL_12' can see it
  ::SHX_LABEL_12::
  SHX1_2 = {}
  SHX2_2 = pairs
  SHX3_2 = SHX4_1
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX7_2 = #SHX1_2
    SHX7_2 = SHX7_2 + 1
    SHX1_2[SHX7_2] = SHX6_2
  end
  SHX2_2 = #SHX1_2
  if 0 == SHX2_2 then
    return
  end
  SHX2_2 = table
  SHX2_2 = SHX2_2.sort
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
  SHX2_2 = ipairs
  SHX3_2 = SHX1_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX1_1
    SHX8_2 = SHX8_2[SHX7_2]
    if SHX8_2 then
      SHX9_2 = SHX8_2.clipset
      if SHX9_2 then
        SHX9_2 = HasClipSetLoaded
        SHX10_2 = SHX8_2.clipset
        SHX9_2 = SHX9_2(SHX10_2)
        if not SHX9_2 then
          SHX9_2 = RequestClipSet
          SHX10_2 = SHX8_2.clipset
          SHX9_2(SHX10_2)
        else
          SHX9_2 = SetPedMovementClipset
          SHX10_2 = SHX0_2
          SHX11_2 = SHX8_2.clipset
          SHX12_2 = 1.0
          SHX9_2(SHX10_2, SHX11_2, SHX12_2)
        end
      end
    end
  end
end
SHX14_1 = Citizen
SHX14_1 = SHX14_1.CreateThread
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  while true do
    SHX0_2 = Wait
    SHX1_2 = 100
    SHX0_2(SHX1_2)
    SHX0_2 = next
    SHX1_2 = SHX4_1
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      SHX0_2 = SHX13_1
      SHX0_2()
      SHX0_2 = TriggerEvent
      SHX1_2 = "cd58811ed9"
      SHX0_2(SHX1_2)
    end
  end
end
SHX14_1(SHX15_1)
SHX14_1 = Citizen
SHX14_1 = SHX14_1.CreateThread
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  while true do
    SHX0_2 = next
    SHX1_2 = SHX3_1
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.getPlayerPed
      SHX0_2 = SHX0_2()
      if 0 ~= SHX0_2 then
        SHX1_2 = IsEntityDead
        SHX2_2 = SHX0_2
        SHX1_2 = SHX1_2(SHX2_2)
        if not SHX1_2 then
          SHX1_2 = IsPedInAnyVehicle
          SHX2_2 = SHX0_2
          SHX3_2 = false
          SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
          if not SHX1_2 then
            SHX1_2 = DisableControlAction
            SHX2_2 = 0
            SHX3_2 = 22
            SHX4_2 = true
            SHX1_2(SHX2_2, SHX3_2, SHX4_2)
          end
        end
      end
    end
    SHX0_2 = Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
end
SHX14_1(SHX15_1)
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX3_1
  SHX1_2 = SHX1_2[SHX0_2]
  SHX1_2 = DoesEntityExist
  SHX2_2 = SHX3_1
  SHX2_2 = SHX2_2[SHX0_2]
  SHX1_2 = nil ~= SHX1_2 and SHX1_2
  return SHX1_2
end
function SHX15_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = {}
  SHX5_1 = SHX1_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.removeForcedEquipment
  SHX2_2 = "Cast"
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.removeForcedEquipment
  SHX2_2 = "Bandage"
  SHX1_2(SHX2_2)
  SHX1_2 = {}
  SHX2_2 = pairs
  SHX3_2 = SHX3_1
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX7_2 = #SHX1_2
    SHX7_2 = SHX7_2 + 1
    SHX1_2[SHX7_2] = SHX6_2
  end
  SHX2_2 = ipairs
  SHX3_2 = SHX1_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX6_1
    SHX9_2 = SHX7_2
    SHX10_2 = SHX0_2
    SHX8_2(SHX9_2, SHX10_2)
  end
  SHX2_2 = ResetPedMovementClipset
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerPed
  SHX3_2 = SHX3_2()
  SHX4_2 = 1.0
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = ResetPedWeaponMovementClipset
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerPed
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX3_2()
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX2_2 = ResetPedStrafeClipset
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerPed
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX3_2()
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX2_2 = {}
  SHX4_1 = SHX2_2
  SHX2_2 = TriggerEvent
  SHX3_2 = "865ab191af"
  SHX2_2(SHX3_2)
end
SHX16_1 = CMG
SHX16_1 = SHX16_1.RegisterClientCallback
SHX17_1 = "a20b2cf44e"
function SHX18_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX14_1
  SHX2_2 = SHX0_2
  return SHX1_2(SHX2_2)
end
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = RegisterNetEvent
SHX17_1 = "2b2bfb838d"
function SHX18_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX2_2 = SHX1_1
  SHX2_2 = SHX2_2[SHX0_2]
  if not SHX2_2 then
    return
  end
  SHX2_2 = SHX14_1
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = SHX6_1
    SHX3_2 = SHX0_2
    SHX2_2(SHX3_2)
    SHX2_2 = notify
    SHX3_2 = "~g~Cast removed."
    SHX2_2(SHX3_2)
  else
    SHX2_2 = SHX12_1
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      SHX2_2 = SHX1_2 or SHX2_2
      if not SHX1_2 then
        SHX2_2 = SHX2_1
      end
      SHX3_2 = SHX5_1
      SHX4_2 = GetGameTimer
      SHX4_2 = SHX4_2()
      SHX5_2 = SHX2_2 * 1000
      SHX4_2 = SHX4_2 + SHX5_2
      SHX3_2[SHX0_2] = SHX4_2
      SHX3_2 = SHX10_1
      SHX3_2()
      SHX3_2 = SHX1_1
      SHX3_2 = SHX3_2[SHX0_2]
      if SHX3_2 then
        SHX3_2 = SHX1_1
        SHX3_2 = SHX3_2[SHX0_2]
        SHX3_2 = SHX3_2.label
        if SHX3_2 then
          goto SHX_LABEL_46
        end
      end
      SHX3_2 = SHX0_2
      -- [FIX IF ERROR] Move ::SHX_LABEL_46:: outside nested blocks until all 'goto SHX_LABEL_46' can see it
      ::SHX_LABEL_46::
      SHX4_2 = notify
      SHX5_2 = "~g~"
      SHX6_2 = SHX3_2
      SHX7_2 = " applied."
      SHX5_2 = SHX5_2 .. SHX6_2 .. SHX7_2
      SHX4_2(SHX5_2)
    end
  end
end
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = RegisterNetEvent
SHX17_1 = "f8c7a2074b"
function SHX18_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX4_2 = SHX1_1
  SHX4_2 = SHX4_2[SHX0_2]
  if not SHX4_2 then
    return
  end
  SHX4_2 = SHX1_2 or SHX4_2
  if not SHX1_2 then
    SHX4_2 = SHX2_1
  end
  SHX5_2 = SHX14_1
  SHX6_2 = SHX0_2
  SHX5_2 = SHX5_2(SHX6_2)
  if SHX5_2 then
    SHX5_2 = SHX5_1
    SHX6_2 = GetGameTimer
    SHX6_2 = SHX6_2()
    SHX7_2 = SHX4_2 * 1000
    SHX6_2 = SHX6_2 + SHX7_2
    SHX5_2[SHX0_2] = SHX6_2
    SHX5_2 = SHX10_1
    SHX5_2()
    if SHX2_2 and not SHX3_2 then
      SHX5_2 = notify
      SHX6_2 = "~g~You have been bandaged."
      SHX5_2(SHX6_2)
    end
  elseif SHX3_2 then
    SHX5_2 = CreateThread
    function SHX6_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
      SHX0_3 = SHX4_2
      SHX0_3 = SHX0_3 * 1000
      SHX1_3 = 1
      SHX2_3 = 30
      SHX3_3 = 1
      for SHX4_3 = SHX1_3, SHX2_3, SHX3_3 do
        SHX5_3 = SHX14_1
        SHX6_3 = SHX0_2
        SHX5_3 = SHX5_3(SHX6_3)
        if SHX5_3 then
          SHX6_3 = SHX0_2
          SHX5_3 = SHX5_1
          SHX7_3 = GetGameTimer
          SHX7_3 = SHX7_3()
          SHX7_3 = SHX7_3 + SHX0_3
          SHX5_3[SHX6_3] = SHX7_3
          SHX5_3 = SHX10_1
          SHX5_3()
          return
        end
        SHX5_3 = CMG
        SHX5_3 = SHX5_3.getPlayerPed
        SHX5_3 = SHX5_3()
        if 0 ~= SHX5_3 then
          SHX6_3 = DoesEntityExist
          SHX7_3 = SHX5_3
          SHX6_3 = SHX6_3(SHX7_3)
          if SHX6_3 then
            SHX6_3 = IsEntityDead
            SHX7_3 = SHX5_3
            SHX6_3 = SHX6_3(SHX7_3)
            if not SHX6_3 then
              SHX6_3 = SHX12_1
              SHX7_3 = SHX0_2
              SHX6_3 = SHX6_3(SHX7_3)
              if SHX6_3 then
                SHX7_3 = SHX0_2
                SHX6_3 = SHX5_1
                SHX8_3 = GetGameTimer
                SHX8_3 = SHX8_3()
                SHX8_3 = SHX8_3 + SHX0_3
                SHX6_3[SHX7_3] = SHX8_3
                SHX6_3 = SHX10_1
                SHX6_3()
                return
              end
            end
          end
        end
        SHX6_3 = Wait
        SHX7_3 = 300
        SHX6_3(SHX7_3)
      end
    end
    SHX5_2(SHX6_2)
  else
    SHX5_2 = SHX12_1
    SHX6_2 = SHX0_2
    SHX5_2 = SHX5_2(SHX6_2)
    if SHX5_2 then
      SHX5_2 = SHX5_1
      SHX6_2 = GetGameTimer
      SHX6_2 = SHX6_2()
      SHX7_2 = SHX4_2 * 1000
      SHX6_2 = SHX6_2 + SHX7_2
      SHX5_2[SHX0_2] = SHX6_2
      SHX5_2 = SHX10_1
      SHX5_2()
      if not SHX3_2 then
        if SHX2_2 then
          SHX5_2 = notify
          SHX6_2 = "~g~You have been bandaged."
          SHX5_2(SHX6_2)
        else
          SHX5_2 = SHX1_1
          SHX5_2 = SHX5_2[SHX0_2]
          if SHX5_2 then
            SHX5_2 = SHX1_1
            SHX5_2 = SHX5_2[SHX0_2]
            SHX5_2 = SHX5_2.label
            if SHX5_2 then
              goto SHX_LABEL_71
            end
          end
          SHX5_2 = SHX0_2
          -- [FIX IF ERROR] Move ::SHX_LABEL_71:: outside nested blocks until all 'goto SHX_LABEL_71' can see it
          ::SHX_LABEL_71::
          SHX6_2 = notify
          SHX7_2 = "~g~"
          SHX8_2 = SHX5_2
          SHX9_2 = " applied."
          SHX7_2 = SHX7_2 .. SHX8_2 .. SHX9_2
          SHX6_2(SHX7_2)
        end
      end
    end
  end
end
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = RegisterNetEvent
SHX17_1 = "f95fecdf35"
function SHX18_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX6_1
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = RegisterNetEvent
SHX17_1 = "5c706bee2d"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX15_1
  SHX1_2 = false
  SHX0_2(SHX1_2)
end
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = Citizen
SHX16_1 = SHX16_1.CreateThread
function SHX17_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2
  while true do
    SHX0_2 = Wait
    SHX1_2 = 4000
    SHX0_2(SHX1_2)
    SHX0_2 = pairs
    SHX1_2 = SHX3_1
    SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
    for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
      SHX6_2 = DoesEntityExist
      SHX7_2 = SHX5_2
      SHX6_2 = SHX6_2(SHX7_2)
      if SHX6_2 then
        SHX6_2 = SHX1_1
        SHX6_2 = SHX6_2[SHX4_2]
        if SHX6_2 then
          SHX7_2 = SHX6_2.anim
          if SHX7_2 then
            SHX7_2 = CMG
            SHX7_2 = SHX7_2.getPlayerPed
            SHX7_2 = SHX7_2()
            SHX8_2 = SHX7_1
            SHX9_2 = SHX7_2
            SHX8_2 = SHX8_2(SHX9_2)
            SHX9_2 = SHX6_2.anim
            SHX9_2 = SHX9_2[SHX8_2]
            if SHX9_2 then
              SHX10_2 = IsEntityPlayingAnim
              SHX11_2 = SHX7_2
              SHX12_2 = SHX9_2[1]
              SHX13_2 = SHX9_2[2]
              SHX14_2 = 3
              SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2)
              if not SHX10_2 then
                SHX10_2 = SHX8_1
                SHX11_2 = SHX9_2[1]
                SHX10_2 = SHX10_2(SHX11_2)
                if SHX10_2 then
                  SHX10_2 = TaskPlayAnim
                  SHX11_2 = SHX7_2
                  SHX12_2 = SHX9_2[1]
                  SHX13_2 = SHX9_2[2]
                  SHX14_2 = 1.0
                  SHX15_2 = -1.0
                  SHX16_2 = -1
                  SHX17_2 = 49
                  SHX18_2 = 0
                  SHX19_2 = false
                  SHX20_2 = false
                  SHX21_2 = false
                  SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
                end
              end
            end
          end
        end
      end
    end
  end
end
SHX16_1(SHX17_1)
SHX16_1 = RegisterNetEvent
SHX17_1 = "706fce7a08"
function SHX18_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerPed
  SHX3_2 = SHX3_2()
  if 0 ~= SHX3_2 then
    SHX4_2 = DoesEntityExist
    SHX5_2 = SHX3_2
    SHX4_2 = SHX4_2(SHX5_2)
    if SHX4_2 then
      goto SHX_LABEL_12
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_12:: outside nested blocks until all 'goto SHX_LABEL_12' can see it
  ::SHX_LABEL_12::
  SHX4_2 = GetPlayerFromServerId
  SHX5_2 = SHX0_2
  SHX4_2 = SHX4_2(SHX5_2)
  if -1 == SHX4_2 then
    return
  end
  SHX5_2 = GetPlayerPed
  SHX6_2 = SHX4_2
  SHX5_2 = SHX5_2(SHX6_2)
  if 0 ~= SHX5_2 then
    SHX6_2 = DoesEntityExist
    SHX7_2 = SHX5_2
    SHX6_2 = SHX6_2(SHX7_2)
    if SHX6_2 then
      goto SHX_LABEL_29
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_29:: outside nested blocks until all 'goto SHX_LABEL_29' can see it
  ::SHX_LABEL_29::
  SHX6_2 = 0.6
  SHX7_2 = TaskGoToEntity
  SHX8_2 = SHX3_2
  SHX9_2 = SHX5_2
  SHX10_2 = 10000
  SHX11_2 = SHX6_2
  SHX12_2 = 1.0
  SHX13_2 = 0
  SHX14_2 = 0
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX7_2 = GetGameTimer
  SHX7_2 = SHX7_2()
  while true do
    SHX8_2 = GetGameTimer
    SHX8_2 = SHX8_2()
    SHX8_2 = SHX8_2 - SHX7_2
    SHX9_2 = 10000
    if not (SHX8_2 < SHX9_2) then
      break
    end
    SHX8_2 = DoesEntityExist
    SHX9_2 = SHX5_2
    SHX8_2 = SHX8_2(SHX9_2)
    if not SHX8_2 then
      break
    end
    SHX8_2 = GetEntityCoords
    SHX9_2 = SHX3_2
    SHX8_2 = SHX8_2(SHX9_2)
    SHX9_2 = GetEntityCoords
    SHX10_2 = SHX5_2
    SHX9_2 = SHX9_2(SHX10_2)
    SHX8_2 = SHX8_2 - SHX9_2
    SHX8_2 = #SHX8_2
    SHX9_2 = SHX6_2 + 0.3
    if SHX8_2 <= SHX9_2 then
      break
    end
    SHX9_2 = Wait
    SHX10_2 = 100
    SHX9_2(SHX10_2)
  end
  SHX8_2 = TaskTurnPedToFaceEntity
  SHX9_2 = SHX3_2
  SHX10_2 = SHX5_2
  SHX11_2 = 500
  SHX8_2(SHX9_2, SHX10_2, SHX11_2)
  SHX8_2 = Wait
  SHX9_2 = 300
  SHX8_2(SHX9_2)
  SHX8_2 = CMG
  SHX8_2 = SHX8_2.loadAnimDict
  SHX9_2 = "anim_heist@arcade_combined@"
  SHX8_2(SHX9_2)
  SHX8_2 = TaskPlayAnim
  SHX9_2 = SHX3_2
  SHX10_2 = "anim_heist@arcade_combined@"
  SHX11_2 = "inspecting_high_idle_01_inspector"
  SHX12_2 = 8.0
  SHX13_2 = -8.0
  SHX14_2 = 3000
  SHX15_2 = 1
  SHX16_2 = 0
  SHX17_2 = false
  SHX18_2 = false
  SHX19_2 = false
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
  SHX8_2 = RemoveAnimDict
  SHX9_2 = "anim_heist@arcade_combined@"
  SHX8_2(SHX9_2)
  SHX8_2 = Wait
  SHX9_2 = 3000
  SHX8_2(SHX9_2)
  SHX8_2 = TriggerServerEvent
  SHX9_2 = "3cd4fe88fe"
  SHX10_2 = SHX0_2
  SHX11_2 = SHX1_2
  SHX12_2 = SHX2_2
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
end
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = AddEventHandler
SHX17_1 = "onResourceStop"
function SHX18_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = GetCurrentResourceName
  SHX1_2 = SHX1_2()
  if SHX0_2 ~= SHX1_2 then
    return
  end
  SHX1_2 = SHX15_1
  SHX1_2()
end
SHX16_1(SHX17_1, SHX18_1)
