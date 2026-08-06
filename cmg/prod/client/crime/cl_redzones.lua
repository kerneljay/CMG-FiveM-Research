-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_redzones"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = false
SHX2_1 = false
SHX3_1 = 0
SHX4_1 = false
SHX5_1 = 0
SHX6_1 = nil
SHX7_1 = 600000
SHX8_1 = nil
SHX9_1 = false
SHX10_1 = CMG
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX2_1 = SHX0_2
end
SHX10_1.setRedzoneTimerDisabled = SHX11_1
SHX10_1 = CMG
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX1_1
  SHX1_2 = SHX6_1
  if SHX1_2 then
    SHX1_2 = SHX6_1.index
    if SHX1_2 then
      goto SHX_LABEL_9
    end
  end
  SHX1_2 = nil
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  return SHX0_2, SHX1_2
end
SHX10_1.isPlayerInRedZone = SHX11_1
SHX10_1 = 0
SHX11_1 = CMG
function SHX12_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.inEvent
  SHX2_2 = SHX2_2()
  if not SHX2_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.isAimTraining
    SHX2_2 = SHX2_2()
    if not SHX2_2 then
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.shouldSuppressCombatTimer
      SHX2_2 = SHX2_2()
      if not SHX2_2 then
        goto SHX_LABEL_30
      end
    end
  end
  if 0 == SHX0_2 then
    SHX2_2 = 0
    SHX3_1 = SHX2_2
    SHX2_2 = false
    SHX4_1 = SHX2_2
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "33bc0305ab"
    SHX4_2 = 0
    SHX2_2(SHX3_2, SHX4_2)
    SHX2_2 = GetGameTimer
    SHX2_2 = SHX2_2()
    SHX10_1 = SHX2_2
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_30:: outside nested blocks until all 'goto SHX_LABEL_30' can see it
  ::SHX_LABEL_30::
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.isPurge
  SHX2_2 = SHX2_2()
  if SHX2_2 and SHX0_2 > 0 then
    SHX2_2 = math
    SHX2_2 = SHX2_2.floor
    SHX3_2 = SHX0_2 / 3
    SHX2_2 = SHX2_2(SHX3_2)
    SHX0_2 = SHX2_2
  end
  SHX3_1 = SHX0_2
  if SHX1_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.inOrganHesit
    SHX2_2 = SHX2_2()
    if not SHX2_2 then
      SHX2_2 = true
      SHX4_1 = SHX2_2
    end
  end
  SHX2_2 = GetGameTimer
  SHX2_2 = SHX2_2()
  SHX3_2 = SHX10_1
  SHX2_2 = SHX2_2 - SHX3_2
  SHX3_2 = 2500
  if not (SHX2_2 > SHX3_2) then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.isStaffedOnClient
    SHX2_2 = SHX2_2()
    if not SHX2_2 then
      goto SHX_LABEL_73
    end
  end
  SHX2_2 = TriggerServerEvent
  SHX3_2 = "33bc0305ab"
  SHX4_2 = SHX0_2
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = GetGameTimer
  SHX2_2 = SHX2_2()
  SHX10_1 = SHX2_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_73:: outside nested blocks until all 'goto SHX_LABEL_73' can see it
  ::SHX_LABEL_73::
end
SHX11_1.setPlayerCombatTimer = SHX12_1
SHX11_1 = CMG
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX3_1
  SHX1_2 = SHX4_1
  return SHX0_2, SHX1_2
end
SHX11_1.getPlayerCombatTimer = SHX12_1
SHX11_1 = RegisterNetEvent
SHX12_1 = "66ce6bfecb"
function SHX13_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.isInGreenzone
  SHX2_2 = SHX2_2()
  if SHX2_2 then
    return
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.setPlayerCombatTimer
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX2_2(SHX3_2, SHX4_2)
end
SHX11_1(SHX12_1, SHX13_1)
SHX11_1 = CMG
function SHX12_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = pairs
  SHX2_2 = SHX0_1.locations
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.pos
    SHX7_2 = SHX7_2 - SHX0_2
    SHX7_2 = #SHX7_2
    SHX8_2 = SHX6_2.radius
    if SHX7_2 < SHX8_2 then
      SHX7_2 = true
      return SHX7_2
    end
  end
  SHX1_2 = false
  return SHX1_2
end
SHX11_1.isPositionInRedzone = SHX12_1
function SHX11_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX2_2 = SHX1_2.type
  if "radius" == SHX2_2 then
    SHX2_2 = SHX1_2.pos
    SHX2_2 = SHX2_2.z
    SHX3_2 = math
    SHX3_2 = SHX3_2.max
    SHX4_2 = SHX1_2.radius
    SHX5_2 = 100.0
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
    SHX2_2 = SHX2_2 + SHX3_2
    SHX3_2 = SHX0_2.xy
    SHX4_2 = SHX1_2.pos
    SHX4_2 = SHX4_2.xy
    SHX3_2 = SHX3_2 - SHX4_2
    SHX3_2 = #SHX3_2
    SHX4_2 = SHX1_2.radius
    SHX3_2 = SHX3_2 <= SHX4_2
    return SHX3_2
  else
    SHX2_2 = SHX1_2.type
    if "area" == SHX2_2 then
      SHX2_2 = SHX1_2.width
      SHX2_2 = SHX2_2 / 2.0
      SHX3_2 = SHX1_2.height
      SHX3_2 = SHX3_2 / 2.0
      SHX4_2 = SHX1_2.pos
      SHX4_2 = SHX0_2 - SHX4_2
      SHX4_2 = #SHX4_2
      SHX5_2 = SHX2_2 + SHX3_2
      if SHX4_2 <= SHX5_2 then
        SHX4_2 = vector3
        SHX5_2 = SHX2_2
        SHX6_2 = SHX3_2
        SHX7_2 = 0.0
        SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
        SHX5_2 = SHX1_2.pos
        SHX5_2 = SHX5_2 + SHX4_2
        SHX6_2 = SHX1_2.pos
        SHX6_2 = SHX6_2 - SHX4_2
        SHX7_2 = SHX0_2.x
        SHX8_2 = SHX5_2.x
        SHX7_2 = SHX7_2 < SHX8_2
        return SHX7_2
      end
    end
  end
  SHX2_2 = false
  return SHX2_2
end
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX0_2 = SHX6_1
  if not SHX0_2 then
    return
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerCoords
  SHX0_2 = SHX0_2()
  SHX1_2 = nil
  SHX2_2 = 1
  SHX3_2 = 25
  SHX4_2 = 1
  for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = GetNthClosestVehicleNode
    SHX7_2 = SHX0_2.x
    SHX8_2 = SHX0_2.y
    SHX9_2 = SHX0_2.z
    SHX10_2 = SHX5_2
    SHX6_2, SHX7_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    if SHX6_2 then
      SHX8_2 = SHX6_1.pos
      SHX8_2 = SHX8_2 - SHX7_2
      SHX8_2 = #SHX8_2
      SHX9_2 = SHX6_1.radius
      if SHX8_2 > SHX9_2 then
        SHX1_2 = SHX7_2
        break
      end
    end
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.setPlayerCombatTimer
  SHX3_2 = 0
  SHX4_2 = false
  SHX2_2(SHX3_2, SHX4_2)
  if SHX1_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.getPlayerVehicle
    SHX2_2, SHX3_2 = SHX2_2()
    if 0 ~= SHX2_2 then
      if SHX3_2 then
        SHX4_2 = GetScriptTaskStatus
        SHX5_2 = PlayerPedId
        SHX5_2 = SHX5_2()
        SHX6_2 = -1817882002
        SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
        if 7 == SHX4_2 then
          SHX4_2 = TaskVehicleDriveToCoord
          SHX5_2 = PlayerPedId
          SHX5_2 = SHX5_2()
          SHX6_2 = SHX2_2
          SHX7_2 = SHX1_2.x
          SHX8_2 = SHX1_2.y
          SHX9_2 = SHX1_2.z
          SHX10_2 = 30.0
          SHX11_2 = 1.0
          SHX12_2 = GetEntityModel
          SHX13_2 = SHX2_2
          SHX12_2 = SHX12_2(SHX13_2)
          SHX13_2 = 16777216
          SHX14_2 = 1.0
          SHX15_2 = 1
          SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
        end
      end
    else
      SHX4_2 = GetScriptTaskStatus
      SHX5_2 = PlayerPedId
      SHX5_2 = SHX5_2()
      SHX6_2 = -1672495956
      SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
      if 7 == SHX4_2 then
        SHX4_2 = TaskFollowNavMeshToCoordAdvanced
        SHX5_2 = PlayerPedId
        SHX5_2 = SHX5_2()
        SHX6_2 = SHX1_2.x
        SHX7_2 = SHX1_2.y
        SHX8_2 = SHX1_2.z
        SHX9_2 = 8.0
        SHX10_2 = -1
        SHX11_2 = 2.5
        SHX12_2 = 0
        SHX13_2 = 0
        SHX14_2 = 0.0
        SHX15_2 = 100.0
        SHX16_2 = 4000.0
        SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
      end
    end
  end
end
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hasClientPermission
  SHX1_2 = "nhs.onduty.permission"
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.hasClientPermission
    SHX1_2 = "lfb.onduty.permission"
    SHX0_2 = SHX0_2(SHX1_2)
    if not SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.hasClientPermission
      SHX1_2 = "vigilante.onduty.permission"
      SHX0_2 = SHX0_2(SHX1_2)
      if not SHX0_2 then
        SHX0_2 = CMG
        SHX0_2 = SHX0_2.hasSpawnProtection
        SHX0_2 = SHX0_2()
        if not SHX0_2 then
          SHX0_2 = CMG
          SHX0_2 = SHX0_2.hasNewPlayerProtection
          SHX0_2 = SHX0_2()
        end
      end
    end
  end
  return SHX0_2
end
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX6_1
  if SHX0_2 then
    SHX0_2 = SHX0_1.locations
    SHX1_2 = SHX6_1.index
    SHX0_2 = SHX0_2[SHX1_2]
    if SHX0_2 then
      SHX0_2 = true
      return SHX0_2
  end
  else
    SHX0_2 = false
    return SHX0_2
  end
end
function SHX15_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = AddBlipForRadius
  SHX3_2 = SHX0_2.x
  SHX4_2 = SHX0_2.y
  SHX5_2 = SHX0_2.z
  SHX6_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = SetBlipColour
  SHX4_2 = SHX2_2
  SHX5_2 = 1
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SetBlipAlpha
  SHX4_2 = SHX2_2
  SHX5_2 = 180
  SHX3_2(SHX4_2, SHX5_2)
  return SHX2_2
end
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX9_1
  if SHX0_2 then
    SHX0_2 = tCMG
    SHX0_2 = SHX0_2.setCanAnim
    SHX1_2 = true
    SHX0_2(SHX1_2)
    SHX0_2 = false
    SHX9_1 = SHX0_2
  end
end
SHX17_1 = Citizen
SHX17_1 = SHX17_1.CreateThread
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2
  SHX0_2 = pairs
  SHX1_2 = SHX0_1.locations
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX5_2.createBlip
    if SHX6_2 then
      SHX6_2 = SHX15_1
      SHX7_2 = SHX5_2.pos
      SHX8_2 = SHX5_2.radius
      SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
      SHX5_2.blip = SHX6_2
    end
  end
  while true do
    SHX0_2 = SHX2_1
    if not SHX0_2 then
      SHX0_2 = GetEntityCoords
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.getPlayerPed
      SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2 = SHX1_2()
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
      SHX1_2 = false
      SHX1_1 = SHX1_2
      SHX1_2 = pairs
      SHX2_2 = SHX0_1.locations
      SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
      for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
        SHX7_2 = SHX11_1
        SHX8_2 = SHX0_2
        SHX9_2 = SHX6_2
        SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
        if SHX7_2 then
          SHX7_2 = true
          SHX1_1 = SHX7_2
          SHX7_2 = GetEntityCoords
          SHX8_2 = CMG
          SHX8_2 = SHX8_2.getPlayerPed
          SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2 = SHX8_2()
          SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
          SHX0_2 = SHX7_2
          SHX7_2 = CMG
          SHX7_2 = SHX7_2.hasSpawnProtection
          SHX7_2 = SHX7_2()
          if not SHX7_2 then
            SHX7_2 = CMG
            SHX7_2 = SHX7_2.hasNewPlayerProtection
            SHX7_2 = SHX7_2()
            if not SHX7_2 then
              SHX7_2 = CMG
              SHX7_2 = SHX7_2.isNoClipActive
              SHX7_2 = SHX7_2()
              if SHX7_2 then
                SHX7_2 = CMG
                SHX7_2 = SHX7_2.hasClientPermission
                SHX8_2 = "admin.tickets"
                SHX7_2 = SHX7_2(SHX8_2)
                if SHX7_2 then
                  goto SHX_LABEL_81
                end
              end
              SHX7_2 = SHX0_2.z
              if SHX7_2 > -25.0 then
                SHX7_2 = CMG
                SHX7_2 = SHX7_2.shouldSuppressCombatTimer
                SHX7_2 = SHX7_2()
                if not SHX7_2 then
                  SHX7_2 = CMG
                  SHX7_2 = SHX7_2.setPlayerCombatTimer
                  SHX8_2 = 30
                  SHX9_2 = false
                  SHX7_2(SHX8_2, SHX9_2)
                  SHX7_2 = TriggerServerEvent
                  SHX8_2 = "6d5e3f7688"
                  SHX7_2(SHX8_2)
                end
              end
            end
          end
          -- [FIX IF ERROR] Move ::SHX_LABEL_81:: outside nested blocks until all 'goto SHX_LABEL_81' can see it
          ::SHX_LABEL_81::
          SHX7_2 = nil
          SHX8_2 = false
          SHX6_1 = SHX6_2
          SHX6_1.index = SHX5_2
          while not SHX8_2 do
            SHX9_2 = GetEntityCoords
            SHX10_2 = CMG
            SHX10_2 = SHX10_2.getPlayerPed
            SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2 = SHX10_2()
            SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
            SHX0_2 = SHX9_2
            while true do
              SHX9_2 = SHX11_1
              SHX10_2 = SHX0_2
              SHX11_2 = SHX6_2
              SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
              if not SHX9_2 then
                break
              end
              SHX9_2 = SHX14_1
              SHX9_2 = SHX9_2()
              if not SHX9_2 then
                break
              end
              SHX9_2 = SHX16_1
              SHX9_2()
              SHX9_2 = GetEntityCoords
              SHX10_2 = CMG
              SHX10_2 = SHX10_2.getPlayerPed
              SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2 = SHX10_2()
              SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
              SHX0_2 = SHX9_2
              SHX7_2 = SHX0_2
              SHX9_2 = CMG
              SHX9_2 = SHX9_2.shouldSuppressCombatTimer
              SHX9_2 = SHX9_2()
              if not SHX9_2 then
                SHX9_2 = IsPedShooting
                SHX10_2 = CMG
                SHX10_2 = SHX10_2.getPlayerPed
                SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2 = SHX10_2()
                SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
                if SHX9_2 then
                  SHX9_2 = GetSelectedPedWeapon
                  SHX10_2 = CMG
                  SHX10_2 = SHX10_2.getPlayerPed
                  SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2 = SHX10_2()
                  SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
                  if -1569615261 ~= SHX9_2 then
                    SHX9_2 = CMG
                    SHX9_2 = SHX9_2.setPlayerCombatTimer
                    SHX10_2 = 60
                    SHX11_2 = true
                    SHX9_2(SHX10_2, SHX11_2)
                  end
                end
              end
              SHX9_2 = SHX3_1
              if 0 == SHX9_2 then
                SHX9_2 = DrawAdvancedText
                SHX10_2 = 0.931
                SHX11_2 = 0.914
                SHX12_2 = 0.005
                SHX13_2 = 0.0028
                SHX14_2 = 0.49
                SHX15_2 = "Combat Timer ended, you may leave."
                SHX16_2 = 255
                SHX17_2 = 51
                SHX18_2 = 51
                SHX19_2 = 255
                SHX20_2 = 7
                SHX21_2 = 0
                SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
              end
              SHX9_2 = SHX13_1
              SHX9_2 = SHX9_2()
              if SHX9_2 then
                SHX9_2 = CMG
                SHX9_2 = SHX9_2.isStaffedOnClient
                SHX9_2 = SHX9_2()
                if not SHX9_2 then
                  SHX9_2 = CMG
                  SHX9_2 = SHX9_2.hasSpawnProtection
                  SHX9_2 = SHX9_2()
                  if not SHX9_2 then
                    SHX9_2 = CMG
                    SHX9_2 = SHX9_2.hasNewPlayerProtection
                    SHX9_2 = SHX9_2()
                    if not SHX9_2 then
                      goto SHX_LABEL_176
                    end
                  end
                  SHX9_2 = notify
                  SHX10_2 = "~r~You cannot enter redzones while you have protection active."
                  SHX9_2(SHX10_2)
                  goto SHX_LABEL_179
                  -- [FIX IF ERROR] Move ::SHX_LABEL_176:: outside nested blocks until all 'goto SHX_LABEL_176' can see it
                  ::SHX_LABEL_176::
                  SHX9_2 = notify
                  SHX10_2 = "~r~You are not allowed in redzones while on duty. Exiting zone..."
                  SHX9_2(SHX10_2)
                  -- [FIX IF ERROR] Move ::SHX_LABEL_179:: outside nested blocks until all 'goto SHX_LABEL_179' can see it
                  ::SHX_LABEL_179::
                  SHX9_2 = SHX12_1
                  SHX9_2()
                end
              end
              SHX9_2 = Wait
              SHX10_2 = 0
              SHX9_2(SHX10_2)
            end
            SHX9_2 = SHX3_1
            if 0 ~= SHX9_2 then
              SHX9_2 = SHX14_1
              SHX9_2 = SHX9_2()
              if SHX9_2 then
                goto SHX_LABEL_194
              end
            end
            SHX8_2 = true
            goto SHX_LABEL_273
            -- [FIX IF ERROR] Move ::SHX_LABEL_194:: outside nested blocks until all 'goto SHX_LABEL_194' can see it
            ::SHX_LABEL_194::
            SHX9_2 = SHX6_2.pos
            SHX10_2 = GetEntityCoords
            SHX11_2 = CMG
            SHX11_2 = SHX11_2.getPlayerPed
            SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2 = SHX11_2()
            SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
            SHX9_2 = SHX9_2 - SHX10_2
            SHX10_2 = SHX9_2 * 0.01
            SHX7_2 = SHX7_2 + SHX10_2
            SHX10_2 = GetVehiclePedIsIn
            SHX11_2 = CMG
            SHX11_2 = SHX11_2.getPlayerPed
            SHX11_2 = SHX11_2()
            SHX12_2 = false
            SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
            if 0 == SHX10_2 then
              SHX10_2 = TaskGoStraightToCoord
              SHX11_2 = CMG
              SHX11_2 = SHX11_2.getPlayerPed
              SHX11_2 = SHX11_2()
              SHX12_2 = SHX7_2.x
              SHX13_2 = SHX7_2.y
              SHX14_2 = SHX7_2.z
              SHX15_2 = 8.0
              SHX16_2 = 1000
              SHX17_2 = GetEntityHeading
              SHX18_2 = CMG
              SHX18_2 = SHX18_2.getPlayerPed
              SHX18_2, SHX19_2, SHX20_2, SHX21_2 = SHX18_2()
              SHX17_2 = SHX17_2(SHX18_2, SHX19_2, SHX20_2, SHX21_2)
              SHX18_2 = 0.0
              SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
              SHX10_2 = GetSoundId
              SHX10_2 = SHX10_2()
              SHX11_2 = PlaySoundFrontend
              SHX12_2 = SHX10_2
              SHX13_2 = "End_Zone_Flash"
              SHX14_2 = "DLC_BTL_RB_Remix_Sounds"
              SHX15_2 = true
              SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2)
              SHX11_2 = ReleaseSoundId
              SHX12_2 = SHX10_2
              SHX11_2(SHX12_2)
              SHX11_2 = CMG
              SHX11_2 = SHX11_2.announceMpBigMsg
              SHX12_2 = "~r~WARNING"
              SHX13_2 = "Get back in the redzone!"
              SHX14_2 = 2000
              SHX11_2(SHX12_2, SHX13_2, SHX14_2)
              SHX11_2 = SHX9_1
              if not SHX11_2 then
                SHX11_2 = tCMG
                SHX11_2 = SHX11_2.setCanAnim
                SHX12_2 = false
                SHX11_2(SHX12_2)
                SHX11_2 = true
                SHX9_1 = SHX11_2
              end
            else
              SHX10_2 = SetEntityCoords
              SHX11_2 = CMG
              SHX11_2 = SHX11_2.getPlayerPed
              SHX11_2 = SHX11_2()
              SHX12_2 = SHX7_2.x
              SHX13_2 = SHX7_2.y
              SHX14_2 = SHX7_2.z
              SHX15_2 = true
              SHX16_2 = false
              SHX17_2 = false
              SHX18_2 = false
              SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
            end
            SHX10_2 = SetTimeout
            SHX11_2 = 1000
            function SHX12_2()
              -- [AI CLEANUP] Decompiled Lua - Fix these:
              -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
              -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
              -- 3. Replace goto/label with while/repeat-until where possible
              -- 4. Remove decompiler comments, add meaningful ones
              -- 5. Fix indentation and formatting
              
              local SHX0_3, SHX1_3
              SHX0_3 = ClearPedTasks
              SHX1_3 = CMG
              SHX1_3 = SHX1_3.getPlayerPed
              SHX1_3 = SHX1_3()
              SHX0_3(SHX1_3)
            end
            SHX10_2(SHX11_2, SHX12_2)
            -- [FIX IF ERROR] Move ::SHX_LABEL_273:: outside nested blocks until all 'goto SHX_LABEL_273' can see it
            ::SHX_LABEL_273::
            SHX9_2 = Wait
            SHX10_2 = 0
            SHX9_2(SHX10_2)
          end
          SHX9_2 = SHX16_1
          SHX9_2()
          SHX9_2 = nil
          SHX6_1 = SHX9_2
        end
      end
    end
    SHX0_2 = Wait
    SHX1_2 = 500
    SHX0_2(SHX1_2)
  end
end
SHX17_1(SHX18_1)
SHX17_1 = Citizen
SHX17_1 = SHX17_1.CreateThread
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  while true do
    SHX0_2 = SHX3_1
    if SHX0_2 > 0 then
      SHX0_2 = SHX2_1
      if SHX0_2 then
        SHX0_2 = CMG
        SHX0_2 = SHX0_2.setPlayerCombatTimer
        SHX1_2 = 0
        SHX2_2 = false
        SHX0_2(SHX1_2, SHX2_2)
      else
        SHX0_2 = SHX3_1
        SHX0_2 = SHX0_2 - 1
        SHX3_1 = SHX0_2
        SHX0_2 = SHX3_1
        if 0 == SHX0_2 then
          SHX0_2 = false
          SHX4_1 = SHX0_2
        end
      end
    end
    SHX0_2 = Wait
    SHX1_2 = 1000
    SHX0_2(SHX1_2)
  end
end
SHX17_1(SHX18_1)
SHX17_1 = {}
SHX18_1 = -1569615261
SHX17_1[SHX18_1] = true
SHX18_1 = 883325847
SHX17_1[SHX18_1] = true
SHX18_1 = 126349499
SHX17_1[SHX18_1] = true
SHX18_1 = CMG
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hasClientPermission
  SHX1_2 = "police.onduty.permission"
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.hasClientPermission
    SHX1_2 = "prisonguard.onduty.permission"
    SHX0_2 = SHX0_2(SHX1_2)
    if not SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.hasClientPermission
      SHX1_2 = "nhs.onduty.permission"
      SHX0_2 = SHX0_2(SHX1_2)
      if not SHX0_2 then
        SHX0_2 = CMG
        SHX0_2 = SHX0_2.hasClientPermission
        SHX1_2 = "lfb.onduty.permission"
        SHX0_2 = SHX0_2(SHX1_2)
        if not SHX0_2 then
          SHX0_2 = CMG
          SHX0_2 = SHX0_2.hasClientPermission
          SHX1_2 = "borderforce.onduty.permission"
          SHX0_2 = SHX0_2(SHX1_2)
        end
      end
    end
  end
  return SHX0_2
end
SHX18_1.isEmergencyService = SHX19_1
SHX18_1 = RegisterNetEvent
SHX19_1 = "56e6172373"
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.isEmergencyService
  SHX1_2 = SHX1_2()
  if not SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.isInPaintball
    SHX1_2 = SHX1_2()
    if not SHX1_2 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.shouldSuppressCombatTimer
      SHX1_2 = SHX1_2()
      if not SHX1_2 then
        SHX1_2 = CMG
        SHX1_2 = SHX1_2.setPlayerCombatTimer
        SHX2_2 = 60
        SHX3_2 = SHX0_2
        SHX1_2(SHX2_2, SHX3_2)
      end
    end
  end
end
SHX18_1(SHX19_1, SHX20_1)
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = SHX2_1
  if not SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.inEvent
    SHX0_2 = SHX0_2()
    if not SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.isAimTraining
      SHX0_2 = SHX0_2()
      if not SHX0_2 then
        SHX0_2 = CMG
        SHX0_2 = SHX0_2.shouldSuppressCombatTimer
        SHX0_2 = SHX0_2()
        if not SHX0_2 then
          goto SHX_LABEL_20
        end
      end
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_20:: outside nested blocks until all 'goto SHX_LABEL_20' can see it
  ::SHX_LABEL_20::
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isEmergencyService
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX0_2 = tCMG
    SHX0_2 = SHX0_2.isInComa
    SHX0_2 = SHX0_2()
    if not SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.isInPaintball
      SHX0_2 = SHX0_2()
      if not SHX0_2 then
        SHX0_2 = PlayerPedId
        SHX0_2 = SHX0_2()
        SHX1_2 = HasEntityBeenDamagedByWeapon
        SHX2_2 = SHX0_2
        SHX3_2 = 0
        SHX4_2 = 2
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
        if SHX1_2 then
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
            SHX0_3 = ClearEntityLastDamageEntity
            SHX1_3 = SHX0_2
            SHX0_3(SHX1_3)
            SHX0_3 = ClearEntityLastWeaponDamage
            SHX1_3 = SHX0_2
            SHX0_3(SHX1_3)
          end
          SHX1_2(SHX2_2)
          SHX1_2 = CMG
          SHX1_2 = SHX1_2.setPlayerCombatTimer
          SHX2_2 = 60
          SHX3_2 = true
          SHX1_2(SHX2_2, SHX3_2)
        end
        SHX1_2 = GetSelectedPedWeapon
        SHX2_2 = SHX0_2
        SHX1_2 = SHX1_2(SHX2_2)
        SHX2_2 = IsPedShooting
        SHX3_2 = SHX0_2
        SHX2_2 = SHX2_2(SHX3_2)
        if SHX2_2 then
          SHX2_2 = SHX17_1
          SHX2_2 = SHX2_2[SHX1_2]
          if not SHX2_2 then
            SHX2_2 = CMG
            SHX2_2 = SHX2_2.setPlayerCombatTimer
            SHX3_2 = 60
            SHX4_2 = true
            SHX2_2(SHX3_2, SHX4_2)
        end
        else
          SHX2_2 = GetPlayerTargetEntity
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.getPlayerId
          SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX3_2()
          SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
          if SHX2_2 then
            SHX2_2 = IsControlPressed
            SHX3_2 = 0
            SHX4_2 = 24
            SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
            if SHX2_2 then
              SHX2_2 = CMG
              SHX2_2 = SHX2_2.setPlayerCombatTimer
              SHX3_2 = 60
              SHX4_2 = true
              SHX2_2(SHX3_2, SHX4_2)
            end
          end
        end
      end
    end
  end
  SHX0_2 = SHX3_1
  if SHX0_2 > 0 then
    SHX0_2 = DrawAdvancedText
    SHX1_2 = 0.985
    SHX2_2 = 0.965
    SHX3_2 = 0.005
    SHX4_2 = 0.0028
    SHX5_2 = 0.467
    SHX6_2 = "COMBAT TIMER: "
    SHX7_2 = SHX3_1
    SHX8_2 = " seconds"
    SHX6_2 = SHX6_2 .. SHX7_2 .. SHX8_2
    SHX7_2 = 246
    SHX8_2 = 74
    SHX9_2 = 70
    SHX10_2 = 255
    SHX11_2 = 7
    SHX12_2 = 0
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  end
end
SHX19_1 = CMG
SHX19_1 = SHX19_1.createThreadOnTick
SHX20_1 = SHX18_1
SHX21_1 = "Combat Timer"
SHX19_1(SHX20_1, SHX21_1)
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = SetCanPedEquipWeapon
  SHX2_2 = SHX0_2
  SHX3_2 = 615608432
  SHX4_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = GetSelectedPedWeapon
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if 615608432 == SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.setWeapon
    SHX2_2 = SHX0_2
    SHX3_2 = -1569615261
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  end
end
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SetCanPedEquipWeapon
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = 615608432
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
end
function SHX21_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getClosestVehicle
  SHX1_2 = 10.0
  SHX0_2 = SHX0_2(SHX1_2)
  if 0 ~= SHX0_2 then
    SHX1_2 = SetEntityNoCollisionEntity
    SHX2_2 = PlayerPedId
    SHX2_2 = SHX2_2()
    SHX3_2 = SHX0_2
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  end
end
SHX22_1 = CMG
SHX22_1 = SHX22_1.createArea
SHX23_1 = "rig_disable_molotovs"
SHX24_1 = vector3
SHX25_1 = -1703.7
SHX26_1 = 8886.5
SHX27_1 = 28.7
SHX24_1 = SHX24_1(SHX25_1, SHX26_1, SHX27_1)
SHX25_1 = 125.0
SHX26_1 = 250.0
SHX27_1 = SHX19_1
SHX28_1 = SHX20_1
function SHX29_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
SHX22_1(SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1)
SHX22_1 = CMG
SHX22_1 = SHX22_1.createArea
SHX23_1 = "rebel_prevent_block"
SHX24_1 = vector3
SHX25_1 = 1431.6760253906
SHX26_1 = 6339.607421875
SHX27_1 = 23.850383758545
SHX24_1 = SHX24_1(SHX25_1, SHX26_1, SHX27_1)
SHX25_1 = 10.0
SHX26_1 = 10.0
function SHX27_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
function SHX28_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
SHX29_1 = SHX21_1
SHX22_1(SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1)
SHX22_1 = AddEventHandler
SHX23_1 = "2286c4bb78"
function SHX24_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.inEvent
  SHX1_2 = SHX1_2()
  if not SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.isAimTraining
    SHX1_2 = SHX1_2()
    if not SHX1_2 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.shouldSuppressCombatTimer
      SHX1_2 = SHX1_2()
      if not SHX1_2 then
        goto SHX_LABEL_17
      end
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_17:: outside nested blocks until all 'goto SHX_LABEL_17' can see it
  ::SHX_LABEL_17::
  SHX1_2 = IsPedAPlayer
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = SHX1_1
    if not SHX1_2 then
      goto SHX_LABEL_26
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_26:: outside nested blocks until all 'goto SHX_LABEL_26' can see it
  ::SHX_LABEL_26::
  SHX1_2 = false
  SHX2_2 = GetEntityCoords
  SHX3_2 = SHX0_2
  SHX4_2 = true
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = pairs
  SHX4_2 = SHX0_1.locations
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = SHX8_2.pos
    SHX9_2 = SHX2_2 - SHX9_2
    SHX9_2 = #SHX9_2
    SHX10_2 = SHX8_2.radius
    if SHX9_2 < SHX10_2 then
      SHX1_2 = true
      break
    end
  end
  if SHX1_2 then
    SHX3_2 = GetGameTimer
    SHX3_2 = SHX3_2()
    SHX4_2 = SHX5_1
    SHX3_2 = SHX3_2 - SHX4_2
    SHX4_2 = 15000
    if SHX3_2 > SHX4_2 then
      SHX3_2 = NetworkGetPlayerIndexFromPed
      SHX4_2 = SHX0_2
      SHX3_2 = SHX3_2(SHX4_2)
      if SHX3_2 >= 0 then
        SHX4_2 = GetPlayerServerId
        SHX5_2 = SHX3_2
        SHX4_2 = SHX4_2(SHX5_2)
        if SHX4_2 > 0 then
          SHX5_2 = PlaySoundFrontend
          SHX6_2 = -1
          SHX7_2 = "End_Zone_Flash"
          SHX8_2 = "DLC_BTL_RB_Remix_Sounds"
          SHX9_2 = true
          SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
          SHX5_2 = CMG
          SHX5_2 = SHX5_2.announceMpBigMsg
          SHX6_2 = "~r~WARNING"
          SHX7_2 = "Do not shoot at players from outside a redzone!"
          SHX8_2 = 10000
          SHX5_2(SHX6_2, SHX7_2, SHX8_2)
          SHX5_2 = TriggerServerEvent
          SHX6_2 = "679c52a575"
          SHX7_2 = SHX4_2
          SHX5_2(SHX6_2, SHX7_2)
          SHX5_2 = GetGameTimer
          SHX5_2 = SHX5_2()
          SHX5_1 = SHX5_2
        end
      end
    end
  end
end
SHX22_1(SHX23_1, SHX24_1)
SHX22_1 = 0
function SHX23_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = GetCurrentPedWeapon
  SHX2_2 = SHX0_2
  SHX3_2 = nil
  SHX4_2 = false
  SHX1_2, SHX2_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  if not SHX1_2 or 0 == SHX2_2 then
    return
  end
  SHX3_2 = IsPedInCover
  SHX4_2 = SHX0_2
  SHX5_2 = false
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  if not SHX3_2 then
    return
  end
  SHX3_2 = GetCurrentPedWeaponEntityIndex
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  if 0 == SHX3_2 then
    return
  end
  SHX4_2 = GetEntityCoords
  SHX5_2 = SHX3_2
  SHX6_2 = true
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX5_2 = select
  SHX6_2 = 2
  SHX7_2 = GetEntityMatrix
  SHX8_2 = SHX3_2
  SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2 = SHX7_2(SHX8_2)
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2)
  SHX6_2 = SHX5_2 * 1.5
  SHX6_2 = SHX4_2 + SHX6_2
  SHX7_2 = _ENV
  SHX8_2 = "StartExpensiveSynchronousShapeTestLosProbe"
  SHX7_2 = SHX7_2[SHX8_2]
  SHX8_2 = SHX4_2.x
  SHX9_2 = SHX4_2.y
  SHX10_2 = SHX4_2.z
  SHX11_2 = SHX6_2.x
  SHX12_2 = SHX6_2.y
  SHX13_2 = SHX6_2.z
  SHX14_2 = 2
  SHX15_2 = SHX0_2
  SHX16_2 = 7
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX8_2 = GetShapeTestResult
  SHX9_2 = SHX7_2
  SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX8_2(SHX9_2)
  if SHX9_2 then
    SHX13_2 = IsEntityAVehicle
    SHX14_2 = SHX12_2
    SHX13_2 = SHX13_2(SHX14_2)
    if SHX13_2 then
      goto SHX_LABEL_64
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_64:: outside nested blocks until all 'goto SHX_LABEL_64' can see it
  ::SHX_LABEL_64::
  SHX13_2 = DisableControlAction
  SHX14_2 = 0
  SHX15_2 = 24
  SHX16_2 = true
  SHX13_2(SHX14_2, SHX15_2, SHX16_2)
  SHX13_2 = DisableControlAction
  SHX14_2 = 0
  SHX15_2 = 257
  SHX16_2 = true
  SHX13_2(SHX14_2, SHX15_2, SHX16_2)
  SHX13_2 = IsDisabledControlPressed
  SHX14_2 = 0
  SHX15_2 = 24
  SHX13_2 = SHX13_2(SHX14_2, SHX15_2)
  if SHX13_2 then
    SHX13_2 = GetGameTimer
    SHX13_2 = SHX13_2()
    SHX14_2 = math
    SHX14_2 = SHX14_2.floor
    SHX15_2 = GetWeaponTimeBetweenShots
    SHX16_2 = SHX2_2
    SHX15_2 = SHX15_2(SHX16_2)
    SHX15_2 = SHX15_2 * 1000.0
    SHX14_2 = SHX14_2(SHX15_2)
    SHX15_2 = SHX22_1
    SHX15_2 = SHX13_2 - SHX15_2
    if SHX14_2 <= SHX15_2 then
      SHX15_2 = GetAmmoInPedWeapon
      SHX16_2 = SHX0_2
      SHX17_2 = SHX2_2
      SHX15_2 = SHX15_2(SHX16_2, SHX17_2)
      SHX16_2 = select
      SHX17_2 = 2
      SHX18_2 = GetAmmoInClip
      SHX19_2 = SHX0_2
      SHX20_2 = SHX2_2
      SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2 = SHX18_2(SHX19_2, SHX20_2)
      SHX16_2 = SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2)
      if SHX16_2 > 0 then
        SHX17_2 = _ENV
        SHX18_2 = "ShootSingleBulletBetweenCoordsIgnoreEntity"
        SHX17_2 = SHX17_2[SHX18_2]
        SHX18_2 = SHX4_2.x
        SHX19_2 = SHX4_2.y
        SHX20_2 = SHX4_2.z
        SHX21_2 = SHX10_2.x
        SHX22_2 = SHX10_2.y
        SHX23_2 = SHX10_2.z
        SHX24_2 = 0.0
        SHX25_2 = true
        SHX26_2 = SHX2_2
        SHX27_2 = SHX0_2
        SHX28_2 = true
        SHX29_2 = false
        SHX30_2 = -1.0
        SHX31_2 = SHX3_2
        SHX17_2(SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2)
        SHX17_2 = SetAmmoInClip
        SHX18_2 = SHX0_2
        SHX19_2 = SHX2_2
        SHX20_2 = SHX16_2 - 1
        SHX17_2(SHX18_2, SHX19_2, SHX20_2)
      elseif SHX15_2 > 0 then
        SHX17_2 = IsPedReloading
        SHX18_2 = SHX0_2
        SHX17_2 = SHX17_2(SHX18_2)
        if not SHX17_2 then
          SHX17_2 = SetControlNormal
          SHX18_2 = 0
          SHX19_2 = 45
          SHX20_2 = 1.0
          SHX17_2(SHX18_2, SHX19_2, SHX20_2)
        end
      end
      SHX22_1 = SHX13_2
    end
  end
end
SHX24_1 = CMG
SHX24_1 = SHX24_1.createThreadOnTick
SHX25_1 = SHX23_1
SHX26_1 = "Vehicle Ghost Peak Patch"
SHX24_1(SHX25_1, SHX26_1)
function SHX24_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerCoords
  SHX2_2 = SHX2_2()
  SHX3_2 = nil
  SHX4_2 = 1
  SHX5_2 = 100
  SHX6_2 = 1
  for SHX7_2 = SHX4_2, SHX5_2, SHX6_2 do
    SHX8_2 = GetNthClosestVehicleNode
    SHX9_2 = SHX2_2.x
    SHX10_2 = SHX2_2.y
    SHX11_2 = SHX2_2.z
    SHX12_2 = SHX7_2
    SHX8_2, SHX9_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    if SHX8_2 then
      SHX10_2 = SHX0_2 - SHX9_2
      SHX10_2 = #SHX10_2
      if SHX1_2 < SHX10_2 then
        SHX3_2 = SHX9_2
        break
      end
    end
  end
  if SHX3_2 then
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.getPlayerVehicle
    SHX4_2, SHX5_2 = SHX4_2()
    if 0 ~= SHX4_2 then
      if SHX5_2 then
        SHX6_2 = GetScriptTaskStatus
        SHX7_2 = PlayerPedId
        SHX7_2 = SHX7_2()
        SHX8_2 = -1817882002
        SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
        if 7 == SHX6_2 then
          SHX6_2 = TaskVehicleDriveToCoord
          SHX7_2 = PlayerPedId
          SHX7_2 = SHX7_2()
          SHX8_2 = SHX4_2
          SHX9_2 = SHX3_2.x
          SHX10_2 = SHX3_2.y
          SHX11_2 = SHX3_2.z
          SHX12_2 = 30.0
          SHX13_2 = 1.0
          SHX14_2 = GetEntityModel
          SHX15_2 = SHX4_2
          SHX14_2 = SHX14_2(SHX15_2)
          SHX15_2 = 16777216
          SHX16_2 = 1.0
          SHX17_2 = 1
          SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
        end
      end
    else
      SHX6_2 = GetScriptTaskStatus
      SHX7_2 = PlayerPedId
      SHX7_2 = SHX7_2()
      SHX8_2 = -1672495956
      SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
      if 7 == SHX6_2 then
        SHX6_2 = TaskFollowNavMeshToCoordAdvanced
        SHX7_2 = PlayerPedId
        SHX7_2 = SHX7_2()
        SHX8_2 = SHX3_2.x
        SHX9_2 = SHX3_2.y
        SHX10_2 = SHX3_2.z
        SHX11_2 = 8.0
        SHX12_2 = -1
        SHX13_2 = 2.5
        SHX14_2 = 0
        SHX15_2 = 0
        SHX16_2 = 0.0
        SHX17_2 = 100.0
        SHX18_2 = 4000.0
        SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
      end
    end
  end
end
function SHX25_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX1_2 = GetGameTimer
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX0_2.startTime
  SHX1_2 = SHX1_2 - SHX2_2
  SHX2_2 = SHX7_1
  SHX2_2 = SHX2_2 - SHX1_2
  SHX3_2 = math
  SHX3_2 = SHX3_2.floor
  SHX4_2 = SHX2_2 / 1000
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = DrawAdvancedText
  SHX5_2 = 0.985
  SHX6_2 = 0.87
  SHX7_2 = 0.005
  SHX8_2 = 0.0028
  SHX9_2 = 0.467
  SHX10_2 = "NLR ZONE: "
  SHX11_2 = SHX3_2
  SHX12_2 = " seconds remaining"
  SHX10_2 = SHX10_2 .. SHX11_2 .. SHX12_2
  SHX11_2 = 246
  SHX12_2 = 74
  SHX13_2 = 70
  SHX14_2 = 255
  SHX15_2 = 7
  SHX16_2 = 0
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX4_2 = tCMG
  SHX4_2 = SHX4_2.isInComa
  SHX4_2 = SHX4_2()
  if not SHX4_2 then
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.getPlayerCoords
    SHX4_2 = SHX4_2()
    SHX4_2 = SHX4_2.z
    if SHX4_2 >= 0.0 then
      SHX4_2 = SHX24_1
      SHX5_2 = SHX0_2.coords
      SHX6_2 = SHX0_2.radius
      SHX4_2(SHX5_2, SHX6_2)
    end
  end
end
function SHX26_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX2_2 = SHX0_1.locations
  SHX2_2 = SHX2_2[SHX0_2]
  if not SHX2_2 then
    return
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.generateUUID
  SHX4_2 = "nlrzone"
  SHX5_2 = 5
  SHX6_2 = "alphanumeric"
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX4_2 = SHX2_2.radius
  SHX4_2 = SHX4_2 + 100.0
  SHX5_2 = SHX4_2 * 2.0
  SHX6_2 = GetGameTimer
  SHX6_2 = SHX6_2()
  SHX7_2 = tCMG
  SHX7_2 = SHX7_2.addMarker
  SHX8_2 = SHX2_2.pos
  SHX8_2 = SHX8_2.x
  SHX9_2 = SHX2_2.pos
  SHX9_2 = SHX9_2.y
  SHX10_2 = SHX2_2.pos
  SHX10_2 = SHX10_2.z
  SHX10_2 = SHX10_2 - 20.0
  SHX11_2 = SHX5_2
  SHX12_2 = SHX5_2
  SHX13_2 = SHX5_2
  SHX14_2 = 240
  SHX15_2 = 128
  SHX16_2 = 128
  SHX17_2 = 80
  SHX18_2 = 1000.0
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  SHX8_2 = CMG
  SHX8_2 = SHX8_2.createArea
  SHX9_2 = "nlrzone_"
  SHX10_2 = SHX3_2
  SHX9_2 = SHX9_2 .. SHX10_2
  SHX10_2 = SHX2_2.pos
  SHX11_2 = SHX4_2
  SHX12_2 = SHX4_2
  function SHX13_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  function SHX14_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX15_2 = SHX25_1
  SHX16_2 = {}
  SHX16_2.startTime = SHX6_2
  SHX17_2 = SHX2_2.pos
  SHX16_2.coords = SHX17_2
  SHX16_2.radius = SHX4_2
  SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX9_2 = SetTimeout
  SHX10_2 = SHX1_2
  function SHX11_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = tCMG
    SHX0_3 = SHX0_3.removeMarker
    SHX1_3 = SHX7_2
    SHX0_3(SHX1_3)
    SHX0_3 = tCMG
    SHX0_3 = SHX0_3.removeArea
    SHX1_3 = SHX8_2
    SHX0_3(SHX1_3)
  end
  SHX9_2(SHX10_2, SHX11_2)
end
function SHX27_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = pairs
  SHX2_2 = SHX0_1.locations
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX11_1
    SHX8_2 = SHX0_2
    SHX9_2 = SHX6_2
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
    if SHX7_2 then
      return SHX5_2
    end
  end
  SHX1_2 = nil
  return SHX1_2
end
SHX28_1 = CMG
function SHX29_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX27_1
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX8_1 = SHX1_2
  SHX1_2 = SHX8_1
  if not SHX1_2 then
    SHX1_2 = SHX6_1
    if SHX1_2 then
      SHX1_2 = SHX6_1.index
      if SHX1_2 then
        SHX1_2 = SHX6_1.index
        SHX8_1 = SHX1_2
      end
    end
  end
end
SHX28_1.storeNlrZoneOnDeath = SHX29_1
SHX28_1 = CMG
function SHX29_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX8_1
  if not SHX0_2 then
    SHX1_2 = SHX6_1
    if SHX1_2 then
      SHX1_2 = SHX6_1.index
      if SHX1_2 then
        SHX0_2 = SHX6_1.index
      end
    end
  end
  if SHX0_2 then
    SHX1_2 = TriggerServerEvent
    SHX2_2 = "c2e25c40cb"
    SHX3_2 = SHX0_2
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX26_1
    SHX2_2 = SHX0_2
    SHX3_2 = SHX7_1
    SHX1_2(SHX2_2, SHX3_2)
  end
  SHX1_2 = nil
  SHX8_1 = SHX1_2
end
SHX28_1.attemptNLRZoneCreation = SHX29_1
SHX28_1 = RegisterNetEvent
SHX29_1 = "60b0240b80"
function SHX30_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = SHX26_1
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX2_2(SHX3_2, SHX4_2)
end
SHX28_1(SHX29_1, SHX30_1)
SHX28_1 = CMG
function SHX29_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX3_2 = SHX0_1.locations
  SHX3_2 = SHX3_2[SHX0_2]
  if SHX3_2 then
    return
  end
  SHX3_2 = SHX0_1.locations
  SHX4_2 = {}
  SHX4_2.type = "radius"
  SHX4_2.pos = SHX1_2
  SHX4_2.radius = SHX2_2
  SHX5_2 = SHX15_1
  SHX6_2 = SHX1_2
  SHX7_2 = SHX2_2
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
  SHX4_2.blip = SHX5_2
  SHX3_2[SHX0_2] = SHX4_2
end
SHX28_1.createRedzone = SHX29_1
SHX28_1 = CMG
function SHX29_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX0_1.locations
  SHX1_2 = SHX1_2[SHX0_2]
  if not SHX1_2 then
    return
  end
  SHX2_2 = SHX1_2.blip
  if SHX2_2 then
    SHX2_2 = RemoveBlip
    SHX3_2 = SHX1_2.blip
    SHX2_2(SHX3_2)
  end
  SHX2_2 = SHX0_1.locations
  SHX2_2[SHX0_2] = nil
end
SHX28_1.deleteRedzone = SHX29_1
SHX28_1 = tCMG
function SHX29_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX1_1
  return SHX0_2
end
SHX28_1.inRedzone = SHX29_1
