-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_garages"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = CMG
SHX1_1 = SHX1_1.loadModule
SHX2_1 = "cfg/cfg_mechanic"
SHX1_1 = SHX1_1(SHX2_1)
SHX2_1 = CMG
SHX2_1 = SHX2_1.loadModule
SHX3_1 = "cfg/cfg_casts"
SHX2_1 = SHX2_1(SHX3_1)
if not SHX2_1 then
  SHX2_1 = {}
end
SHX3_1 = CMG
SHX3_1 = SHX3_1.loadModule
SHX4_1 = "cfg/items"
SHX3_1 = SHX3_1(SHX4_1)
SHX4_1 = SHX3_1.items
if SHX4_1 then
  SHX4_1 = SHX3_1.items
  SHX4_1 = SHX4_1.evidencebag
  if SHX4_1 then
    SHX4_1 = SHX3_1.items
    SHX4_1 = SHX4_1.evidencebag
    SHX4_1 = SHX4_1.weight
    if SHX4_1 then
      goto SHX_LABEL_35
    end
  end
end
SHX4_1 = 5.0
-- [FIX IF ERROR] Move ::SHX_LABEL_35:: outside nested blocks until all 'goto SHX_LABEL_35' can see it
::SHX_LABEL_35::
function SHX5_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  if 0 ~= SHX0_2 then
    SHX2_2 = IsEntityAVehicle
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.getVehicleIdFromModel
      SHX3_2 = GetEntityModel
      SHX4_2 = SHX0_2
      SHX3_2, SHX4_2 = SHX3_2(SHX4_2)
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
      if SHX2_2 then
        SHX3_2 = SHX0_1.garages
        SHX3_2 = SHX3_2[SHX1_2]
        if SHX3_2 then
          SHX3_2 = SHX0_1.garages
          SHX3_2 = SHX3_2[SHX1_2]
          SHX3_2 = SHX3_2[SHX2_2]
          if SHX3_2 then
            SHX3_2 = true
            return SHX3_2
          end
        end
      end
    end
  end
  SHX2_2 = false
  return SHX2_2
end
function SHX6_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  if SHX0_2 and 0 ~= SHX0_2 then
    SHX1_2 = DoesEntityExist
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      goto SHX_LABEL_12
    end
  end
  SHX1_2 = false
  return SHX1_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_12:: outside nested blocks until all 'goto SHX_LABEL_12' can see it
  ::SHX_LABEL_12::
  SHX1_2 = IsEntityAVehicle
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = false
    return SHX1_2
  end
  SHX1_2 = DecorGetBool
  SHX2_2 = SHX0_2
  SHX3_2 = "6b6dade745"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if SHX1_2 then
    SHX1_2 = false
    return SHX1_2
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.hasClientPermission
  SHX2_2 = "aa.onduty.permission"
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = false
    return SHX1_2
  end
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.isInGreenzone
  SHX2_2 = false
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = false
    return SHX1_2
  end
  SHX1_2 = DecorGetInt
  SHX2_2 = SHX0_2
  SHX3_2 = "0a6cf607ed"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if SHX1_2 <= 0 then
    SHX1_2 = false
    return SHX1_2
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.hasClientInventoryItem
  SHX2_2 = "lockpick"
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.hasClientInventoryItem
    SHX2_2 = "ldnulockpick"
    SHX1_2 = SHX1_2(SHX2_2)
    if not SHX1_2 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.clientVehicleWasLockpickedThisSession
      SHX2_2 = SHX0_2
      SHX1_2 = SHX1_2(SHX2_2)
      if not SHX1_2 then
        SHX1_2 = false
        return SHX1_2
      end
    end
  end
  SHX1_2 = true
  return SHX1_2
end
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  if SHX0_2 and 0 ~= SHX0_2 then
    SHX1_2 = DoesEntityExist
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      goto SHX_LABEL_12
    end
  end
  SHX1_2 = false
  return SHX1_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_12:: outside nested blocks until all 'goto SHX_LABEL_12' can see it
  ::SHX_LABEL_12::
  SHX1_2 = IsEntityAVehicle
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = false
    return SHX1_2
  end
  SHX1_2 = GetPedInVehicleSeat
  SHX2_2 = SHX0_2
  SHX3_2 = -1
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if 0 ~= SHX1_2 then
    SHX1_2 = false
    return SHX1_2
  end
  SHX1_2 = NetworkGetEntityIsNetworked
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = false
    return SHX1_2
  end
  SHX1_2 = NetworkGetNetworkIdFromEntity
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if 0 == SHX1_2 then
    SHX1_2 = false
    return SHX1_2
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.hasClientInventoryItem
  SHX2_2 = "diyrepairkit"
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = false
    return SHX1_2
  end
  SHX1_2 = true
  return SHX1_2
end
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  if SHX0_2 and 0 ~= SHX0_2 then
    SHX1_2 = DoesEntityExist
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      goto SHX_LABEL_12
    end
  end
  SHX1_2 = false
  return SHX1_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_12:: outside nested blocks until all 'goto SHX_LABEL_12' can see it
  ::SHX_LABEL_12::
  SHX1_2 = IsEntityAVehicle
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = false
    return SHX1_2
  end
  SHX1_2 = GetPedInVehicleSeat
  SHX2_2 = SHX0_2
  SHX3_2 = -1
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if 0 ~= SHX1_2 then
    SHX1_2 = false
    return SHX1_2
  end
  SHX1_2 = NetworkGetEntityIsNetworked
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = false
    return SHX1_2
  end
  SHX1_2 = NetworkGetNetworkIdFromEntity
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if 0 == SHX1_2 then
    SHX1_2 = false
    return SHX1_2
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.hasClientGroup
  SHX2_2 = "Trucking"
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = false
    return SHX1_2
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.hasClientInventoryItem
  SHX2_2 = "truckingrepairkit"
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = false
    return SHX1_2
  end
  SHX1_2 = true
  return SHX1_2
end
function SHX9_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  if SHX0_2 and 0 ~= SHX0_2 then
    SHX1_2 = DoesEntityExist
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      goto SHX_LABEL_12
    end
  end
  SHX1_2 = false
  return SHX1_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_12:: outside nested blocks until all 'goto SHX_LABEL_12' can see it
  ::SHX_LABEL_12::
  SHX1_2 = IsEntityAVehicle
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = false
    return SHX1_2
  end
  SHX1_2 = NetworkGetEntityIsNetworked
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = false
    return SHX1_2
  end
  SHX1_2 = NetworkGetNetworkIdFromEntity
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if 0 == SHX1_2 then
    SHX1_2 = false
    return SHX1_2
  end
  SHX1_2 = true
  return SHX1_2
end
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.hasClientPermission
  SHX2_2 = "police.onduty.permission"
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.hasClientPermission
    SHX2_2 = "borderforce.onduty.permission"
    SHX1_2 = SHX1_2(SHX2_2)
    if not SHX1_2 then
      SHX1_2 = false
      return SHX1_2
    end
  end
  if SHX0_2 and 0 ~= SHX0_2 then
    SHX1_2 = DoesEntityExist
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      goto SHX_LABEL_26
    end
  end
  SHX1_2 = false
  return SHX1_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_26:: outside nested blocks until all 'goto SHX_LABEL_26' can see it
  ::SHX_LABEL_26::
  SHX1_2 = IsEntityAVehicle
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = false
    return SHX1_2
  end
  SHX1_2 = DecorGetInt
  SHX2_2 = SHX0_2
  SHX3_2 = "0a6cf607ed"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if SHX1_2 > 0 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.getSpaceInFirstChest
    SHX2_2 = SHX2_2()
    SHX3_2 = SHX4_1
    if SHX2_2 < SHX3_2 then
      SHX2_2 = false
      return SHX2_2
    end
    SHX2_2 = true
    return SHX2_2
  end
  SHX2_2 = GetEntityAttachedTo
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if 0 ~= SHX2_2 then
    SHX3_2 = true
    return SHX3_2
  end
  SHX3_2 = false
  return SHX3_2
end
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.hasGangRpCarTheftPerk
  SHX1_2 = SHX1_2()
  if not SHX1_2 then
    SHX1_2 = false
    return SHX1_2
  end
  if SHX0_2 and 0 ~= SHX0_2 then
    SHX1_2 = DoesEntityExist
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      goto SHX_LABEL_19
    end
  end
  SHX1_2 = false
  return SHX1_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_19:: outside nested blocks until all 'goto SHX_LABEL_19' can see it
  ::SHX_LABEL_19::
  SHX1_2 = IsEntityAVehicle
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = false
    return SHX1_2
  end
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.isInGreenzone
  SHX2_2 = false
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = false
    return SHX1_2
  end
  SHX1_2 = GetPedInVehicleSeat
  SHX2_2 = SHX0_2
  SHX3_2 = -1
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if 0 ~= SHX1_2 then
    SHX2_2 = IsPedAPlayer
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      goto SHX_LABEL_47
    end
  end
  SHX2_2 = false
  return SHX2_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_47:: outside nested blocks until all 'goto SHX_LABEL_47' can see it
  ::SHX_LABEL_47::
  SHX2_2 = true
  return SHX2_2
end
SHX12_1 = false
SHX13_1 = nil
SHX14_1 = nil
SHX15_1 = false
SHX16_1 = 0
SHX17_1 = false
SHX18_1 = 0
SHX19_1 = false
SHX20_1 = 0
function SHX21_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = true
  SHX19_1 = SHX0_2
  SHX0_2 = SetTimeout
  SHX1_2 = 1000
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = false
    SHX19_1 = SHX0_3
  end
  SHX0_2(SHX1_2, SHX2_2)
end
function SHX22_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2
  SHX7_2 = {}
  SHX8_2 = SHX0_2 or SHX8_2
  if SHX0_2 then
    SHX8_2 = GetEntityHealth
    SHX9_2 = SHX0_2
    SHX8_2 = SHX8_2(SHX9_2)
    SHX8_2 = SHX8_2 <= 102
  end
  if SHX8_2 and not SHX3_2 then
    SHX9_2 = #SHX7_2
    SHX9_2 = SHX9_2 + 1
    SHX10_2 = {}
    SHX10_2.id = "revive"
    SHX10_2.title = "CPR"
    SHX10_2.icon = "#cpr"
    SHX7_2[SHX9_2] = SHX10_2
  end
  if not SHX3_2 then
    if SHX5_2 then
      SHX9_2 = #SHX7_2
      SHX9_2 = SHX9_2 + 1
      SHX10_2 = {}
      SHX10_2.id = "removeHeadbag"
      SHX10_2.title = "Remove Bag"
      SHX10_2.icon = "#removeHeadbag"
      SHX7_2[SHX9_2] = SHX10_2
    else
      SHX9_2 = #SHX7_2
      SHX9_2 = SHX9_2 + 1
      SHX10_2 = {}
      SHX10_2.id = "removeHeadbag"
      SHX10_2.title = "Place Bag"
      SHX10_2.icon = "#removeHeadbag"
      SHX7_2[SHX9_2] = SHX10_2
    end
  end
  if SHX6_2 then
    SHX9_2 = #SHX7_2
    SHX9_2 = SHX9_2 + 1
    SHX10_2 = {}
    SHX10_2.id = "transferChips"
    SHX10_2.title = "Transfer Chips"
    SHX10_2.icon = "#casinoChip"
    SHX7_2[SHX9_2] = SHX10_2
  end
  if SHX1_2 then
    SHX9_2 = #SHX7_2
    SHX9_2 = SHX9_2 + 1
    SHX10_2 = {}
    SHX10_2.id = "askId"
    SHX10_2.title = "Ask ID"
    SHX10_2.icon = "#askId"
    SHX7_2[SHX9_2] = SHX10_2
    SHX9_2 = #SHX7_2
    SHX9_2 = SHX9_2 + 1
    SHX10_2 = {}
    SHX10_2.id = "giveCash"
    SHX10_2.title = "Give Cash"
    SHX10_2.icon = "#giveMoney"
    SHX7_2[SHX9_2] = SHX10_2
    SHX9_2 = #SHX7_2
    SHX9_2 = SHX9_2 + 1
    SHX10_2 = {}
    SHX10_2.id = "search"
    SHX10_2.title = "Search Player"
    SHX10_2.icon = "#searchPerson"
    SHX7_2[SHX9_2] = SHX10_2
    SHX9_2 = #SHX7_2
    SHX9_2 = SHX9_2 + 1
    SHX10_2 = {}
    SHX10_2.id = "police"
    SHX10_2.title = "Police Service"
    SHX10_2.icon = "#metPolice"
    SHX11_2 = {}
    SHX12_2 = {}
    SHX12_2.id = "handcuff"
    SHX12_2.title = "Handcuff"
    SHX12_2.icon = "#handcuff"
    SHX13_2 = {}
    SHX13_2.id = "drag"
    SHX13_2.title = "Drag"
    SHX13_2.icon = "#drag"
    SHX14_2 = {}
    SHX14_2.id = "putincar"
    SHX14_2.title = "Put in car"
    SHX14_2.icon = "#putInVehicle"
    SHX15_2 = {}
    SHX15_2.id = "gunshottest"
    SHX15_2.title = "GSR Test"
    SHX15_2.icon = "#seizeWeapons"
    SHX16_2 = {}
    SHX16_2.id = "quickFine"
    SHX16_2.title = "Quick Fine"
    SHX16_2.icon = "#giveMoney"
    SHX17_2 = {}
    SHX17_2.id = "quickJail"
    SHX17_2.title = "Quick Jail"
    SHX17_2.icon = "#jail"
    SHX18_2 = {}
    SHX18_2.id = "pardonBounty"
    SHX18_2.title = "Pardon bounty"
    SHX18_2.icon = "#askId"
    SHX19_2 = {}
    SHX19_2.id = "requesttransport"
    SHX19_2.title = "Transport"
    SHX19_2.icon = "#putInVehicle"
    SHX20_2 = {}
    SHX20_2.id = "seizeweapons"
    SHX20_2.title = "Seize Weapons"
    SHX20_2.icon = "#seizeWeapons"
    SHX21_2 = {}
    SHX21_2.id = "seizeillegals"
    SHX21_2.title = "Seize Illegals"
    SHX21_2.icon = "#seizeIllegal"
    SHX11_2[1] = SHX12_2
    SHX11_2[2] = SHX13_2
    SHX11_2[3] = SHX14_2
    SHX11_2[4] = SHX15_2
    SHX11_2[5] = SHX16_2
    SHX11_2[6] = SHX17_2
    SHX11_2[7] = SHX18_2
    SHX11_2[8] = SHX19_2
    SHX11_2[9] = SHX20_2
    SHX11_2[10] = SHX21_2
    SHX10_2.items = SHX11_2
    SHX7_2[SHX9_2] = SHX10_2
  elseif SHX2_2 then
    SHX9_2 = #SHX7_2
    SHX9_2 = SHX9_2 + 1
    SHX10_2 = {}
    SHX10_2.id = "askId"
    SHX10_2.title = "Ask ID"
    SHX10_2.icon = "#askId"
    SHX7_2[SHX9_2] = SHX10_2
    SHX9_2 = #SHX7_2
    SHX9_2 = SHX9_2 + 1
    SHX10_2 = {}
    SHX10_2.id = "giveCash"
    SHX10_2.title = "Give Cash"
    SHX10_2.icon = "#giveMoney"
    SHX7_2[SHX9_2] = SHX10_2
    SHX9_2 = #SHX7_2
    SHX9_2 = SHX9_2 + 1
    SHX10_2 = {}
    SHX10_2.id = "search"
    SHX10_2.title = "Search Player"
    SHX10_2.icon = "#searchPerson"
    SHX7_2[SHX9_2] = SHX10_2
    SHX9_2 = #SHX7_2
    SHX9_2 = SHX9_2 + 1
    SHX10_2 = {}
    SHX10_2.id = "police"
    SHX10_2.title = "Prison Service"
    SHX10_2.icon = "#metPolice"
    SHX11_2 = {}
    SHX12_2 = {}
    SHX12_2.id = "handcuff"
    SHX12_2.title = "Handcuff"
    SHX12_2.icon = "#handcuff"
    SHX13_2 = {}
    SHX13_2.id = "drag"
    SHX13_2.title = "Drag"
    SHX13_2.icon = "#drag"
    SHX14_2 = {}
    SHX14_2.id = "putincar"
    SHX14_2.title = "Put in car"
    SHX14_2.icon = "#putInVehicle"
    SHX15_2 = {}
    SHX15_2.id = "segregation"
    SHX15_2.title = "Segregation"
    SHX15_2.icon = "#rope"
    SHX16_2 = {}
    SHX16_2.id = "jail"
    SHX16_2.title = "Jail"
    SHX16_2.icon = "#jail"
    SHX17_2 = {}
    SHX17_2.id = "seizeweapons"
    SHX17_2.title = "Seize Weapons"
    SHX17_2.icon = "#seizeWeapons"
    SHX18_2 = {}
    SHX18_2.id = "seizeillegals"
    SHX18_2.title = "Seize Illegals"
    SHX18_2.icon = "#seizeIllegal"
    SHX11_2[1] = SHX12_2
    SHX11_2[2] = SHX13_2
    SHX11_2[3] = SHX14_2
    SHX11_2[4] = SHX15_2
    SHX11_2[5] = SHX16_2
    SHX11_2[6] = SHX17_2
    SHX11_2[7] = SHX18_2
    SHX10_2.items = SHX11_2
    SHX7_2[SHX9_2] = SHX10_2
  elseif SHX4_2 then
    SHX9_2 = #SHX7_2
    SHX9_2 = SHX9_2 + 1
    SHX10_2 = {}
    SHX10_2.id = "askId"
    SHX10_2.title = "Ask ID"
    SHX10_2.icon = "#askId"
    SHX7_2[SHX9_2] = SHX10_2
    SHX9_2 = #SHX7_2
    SHX9_2 = SHX9_2 + 1
    SHX10_2 = {}
    SHX10_2.id = "giveCash"
    SHX10_2.title = "Give Cash"
    SHX10_2.icon = "#giveMoney"
    SHX7_2[SHX9_2] = SHX10_2
    SHX9_2 = #SHX7_2
    SHX9_2 = SHX9_2 + 1
    SHX10_2 = {}
    SHX10_2.id = "search"
    SHX10_2.title = "Search Player"
    SHX10_2.icon = "#searchPerson"
    SHX7_2[SHX9_2] = SHX10_2
    SHX9_2 = #SHX7_2
    SHX9_2 = SHX9_2 + 1
    SHX10_2 = {}
    SHX10_2.id = "police"
    SHX10_2.title = "Vigilante"
    SHX10_2.icon = "#vigilante"
    SHX11_2 = {}
    SHX12_2 = {}
    SHX12_2.id = "handcuff"
    SHX12_2.title = "Handcuff"
    SHX12_2.icon = "#handcuff"
    SHX13_2 = {}
    SHX13_2.id = "drag"
    SHX13_2.title = "Drag"
    SHX13_2.icon = "#drag"
    SHX14_2 = {}
    SHX14_2.id = "putincar"
    SHX14_2.title = "Put in car"
    SHX14_2.icon = "#putInVehicle"
    SHX15_2 = {}
    SHX15_2.id = "jail"
    SHX15_2.title = "Jail"
    SHX15_2.icon = "#jail"
    SHX11_2[1] = SHX12_2
    SHX11_2[2] = SHX13_2
    SHX11_2[3] = SHX14_2
    SHX11_2[4] = SHX15_2
    SHX10_2.items = SHX11_2
    SHX7_2[SHX9_2] = SHX10_2
  elseif SHX3_2 then
    SHX9_2 = #SHX7_2
    SHX9_2 = SHX9_2 + 1
    SHX10_2 = {}
    SHX10_2.id = "askId"
    SHX10_2.title = "Ask ID"
    SHX10_2.icon = "#askId"
    SHX7_2[SHX9_2] = SHX10_2
    SHX9_2 = #SHX7_2
    SHX9_2 = SHX9_2 + 1
    SHX10_2 = {}
    SHX10_2.id = "giveCash"
    SHX10_2.title = "Give Cash"
    SHX10_2.icon = "#giveMoney"
    SHX7_2[SHX9_2] = SHX10_2
    SHX9_2 = CMG
    SHX9_2 = SHX9_2.hasClientPermission
    SHX10_2 = "doctor.permission"
    SHX9_2 = SHX9_2(SHX10_2)
    SHX10_2 = {}
    if SHX8_2 then
      SHX11_2 = table
      SHX11_2 = SHX11_2.insert
      SHX12_2 = SHX10_2
      SHX13_2 = {}
      SHX13_2.id = "revive"
      SHX13_2.title = "Revive"
      SHX13_2.icon = "#cpr"
      SHX11_2(SHX12_2, SHX13_2)
      SHX11_2 = table
      SHX11_2 = SHX11_2.insert
      SHX12_2 = SHX10_2
      SHX13_2 = {}
      SHX13_2.id = "nhsDrag"
      SHX13_2.title = "Drag"
      SHX13_2.icon = "#drag"
      SHX11_2(SHX12_2, SHX13_2)
    else
      SHX11_2 = GetPlayerByEntityID
      SHX12_2 = SHX0_2
      SHX11_2 = SHX11_2(SHX12_2)
      if SHX11_2 then
        SHX12_2 = GetPlayerServerId
        SHX13_2 = SHX11_2
        SHX12_2 = SHX12_2(SHX13_2)
        if SHX12_2 then
          goto SHX_LABEL_351
        end
      end
      SHX12_2 = 0
      -- [FIX IF ERROR] Move ::SHX_LABEL_351:: outside nested blocks until all 'goto SHX_LABEL_351' can see it
      ::SHX_LABEL_351::
      SHX13_2 = table
      SHX13_2 = SHX13_2.insert
      SHX14_2 = SHX10_2
      SHX15_2 = {}
      SHX15_2.id = "medicBandage"
      SHX15_2.title = "Bandage"
      SHX15_2.icon = "#bandage"
      SHX13_2(SHX14_2, SHX15_2)
      SHX13_2 = table
      SHX13_2 = SHX13_2.insert
      SHX14_2 = SHX10_2
      SHX15_2 = {}
      SHX15_2.id = "medicMorphine"
      SHX15_2.title = "Apply Morphine"
      SHX15_2.icon = "#morphine"
      SHX13_2(SHX14_2, SHX15_2)
      if SHX9_2 then
        if SHX12_2 > 0 then
          SHX13_2 = CMG
          SHX13_2 = SHX13_2.TriggerServerCallback
          SHX14_2 = "d9316895e8"
          SHX15_2 = SHX12_2
          SHX13_2 = SHX13_2(SHX14_2, SHX15_2)
          if SHX13_2 then
            goto SHX_LABEL_381
          end
        end
        SHX13_2 = false
        -- [FIX IF ERROR] Move ::SHX_LABEL_381:: outside nested blocks until all 'goto SHX_LABEL_381' can see it
        ::SHX_LABEL_381::
        if SHX13_2 then
          SHX14_2 = "Take off Crutches"
          if SHX14_2 then
            goto SHX_LABEL_387
          end
        end
        SHX14_2 = "Put In Crutches"
        -- [FIX IF ERROR] Move ::SHX_LABEL_387:: outside nested blocks until all 'goto SHX_LABEL_387' can see it
        ::SHX_LABEL_387::
        SHX15_2 = table
        SHX15_2 = SHX15_2.insert
        SHX16_2 = SHX10_2
        SHX17_2 = {}
        SHX17_2.id = "toggleCrutches"
        SHX17_2.title = SHX14_2
        SHX17_2.icon = "#crutches"
        SHX15_2(SHX16_2, SHX17_2)
        SHX15_2 = table
        SHX15_2 = SHX15_2.insert
        SHX16_2 = SHX10_2
        SHX17_2 = {}
        SHX17_2.id = "giveWheelchair"
        SHX17_2.title = "Put In Wheelchair"
        SHX17_2.icon = "#wheelchairSymbol"
        SHX15_2(SHX16_2, SHX17_2)
      end
    end
    SHX11_2 = table
    SHX11_2 = SHX11_2.insert
    SHX12_2 = SHX10_2
    SHX13_2 = {}
    SHX13_2.id = "nhsGiveDonut"
    SHX13_2.title = "Give Donut"
    SHX13_2.icon = "#donut"
    SHX11_2(SHX12_2, SHX13_2)
    if SHX9_2 then
      SHX11_2 = SHX2_1.casts
      if not SHX11_2 then
        SHX11_2 = {}
      end
      SHX12_2 = SHX2_1.categories
      if not SHX12_2 then
        SHX12_2 = {}
      end
      SHX13_2 = {}
      SHX14_2 = ipairs
      SHX15_2 = SHX12_2
      SHX14_2, SHX15_2, SHX16_2, SHX17_2 = SHX14_2(SHX15_2)
      for SHX18_2, SHX19_2 in SHX14_2, SHX15_2, SHX16_2, SHX17_2 do
        SHX20_2 = {}
        SHX21_2 = ipairs
        SHX22_2 = SHX19_2.castIds
        if not SHX22_2 then
          SHX22_2 = {}
        end
        SHX21_2, SHX22_2, SHX23_2, SHX24_2 = SHX21_2(SHX22_2)
        for SHX25_2, SHX26_2 in SHX21_2, SHX22_2, SHX23_2, SHX24_2 do
          SHX27_2 = SHX11_2[SHX26_2]
          if SHX27_2 then
            SHX28_2 = SHX19_2.icon
            if not SHX28_2 then
              SHX28_2 = "#firstaid"
            end
            SHX29_2 = table
            SHX29_2 = SHX29_2.insert
            SHX30_2 = SHX20_2
            SHX31_2 = {}
            SHX32_2 = "toggleCast_"
            SHX33_2 = SHX26_2
            SHX32_2 = SHX32_2 .. SHX33_2
            SHX31_2.id = SHX32_2
            SHX32_2 = SHX27_2.label
            SHX31_2.title = SHX32_2
            SHX31_2.icon = SHX28_2
            SHX31_2.castId = SHX26_2
            SHX29_2(SHX30_2, SHX31_2)
          end
        end
        SHX21_2 = #SHX20_2
        if SHX21_2 > 0 then
          SHX21_2 = SHX19_2.icon
          if not SHX21_2 then
            SHX21_2 = "#firstaid"
          end
          SHX22_2 = table
          SHX22_2 = SHX22_2.insert
          SHX23_2 = SHX13_2
          SHX24_2 = {}
          SHX25_2 = "casts_"
          SHX26_2 = SHX19_2.id
          SHX25_2 = SHX25_2 .. SHX26_2
          SHX24_2.id = SHX25_2
          SHX25_2 = SHX19_2.title
          SHX24_2.title = SHX25_2
          SHX24_2.icon = SHX21_2
          SHX24_2.items = SHX20_2
          SHX22_2(SHX23_2, SHX24_2)
        end
      end
      SHX14_2 = table
      SHX14_2 = SHX14_2.insert
      SHX15_2 = SHX13_2
      SHX16_2 = {}
      SHX16_2.id = "removeAllCasts"
      SHX16_2.title = "Remove All Casts"
      SHX16_2.icon = "#removeAllCasts"
      SHX14_2(SHX15_2, SHX16_2)
      SHX14_2 = #SHX13_2
      if SHX14_2 > 0 then
        SHX14_2 = table
        SHX14_2 = SHX14_2.insert
        SHX15_2 = SHX10_2
        SHX16_2 = {}
        SHX16_2.id = "casts"
        SHX16_2.title = "Casts"
        SHX16_2.icon = "#firstaid"
        SHX16_2.items = SHX13_2
        SHX14_2(SHX15_2, SHX16_2)
      end
    end
    SHX11_2 = #SHX7_2
    SHX11_2 = SHX11_2 + 1
    SHX12_2 = {}
    SHX12_2.id = "healthService"
    SHX12_2.title = "Health Service"
    SHX12_2.icon = "#healthservice"
    SHX12_2.items = SHX10_2
    SHX7_2[SHX11_2] = SHX12_2
  else
    SHX9_2 = #SHX7_2
    SHX9_2 = SHX9_2 + 1
    SHX10_2 = {}
    SHX10_2.id = "askId"
    SHX10_2.title = "Ask ID"
    SHX10_2.icon = "#askId"
    SHX7_2[SHX9_2] = SHX10_2
    SHX9_2 = #SHX7_2
    SHX9_2 = SHX9_2 + 1
    SHX10_2 = {}
    SHX10_2.id = "giveCash"
    SHX10_2.title = "Give Cash"
    SHX10_2.icon = "#giveMoney"
    SHX7_2[SHX9_2] = SHX10_2
    SHX9_2 = #SHX7_2
    SHX9_2 = SHX9_2 + 1
    SHX10_2 = {}
    SHX10_2.id = "search"
    SHX10_2.title = "Search Player"
    SHX10_2.icon = "#searchPerson"
    SHX7_2[SHX9_2] = SHX10_2
    SHX9_2 = #SHX7_2
    SHX9_2 = SHX9_2 + 1
    SHX10_2 = {}
    SHX10_2.id = "robPerson"
    SHX10_2.title = "Rob Person"
    SHX10_2.icon = "#robPlayer"
    SHX7_2[SHX9_2] = SHX10_2
  end
  return SHX7_2
end
function SHX23_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  if SHX0_2 then
    SHX6_2 = {}
    SHX7_2 = {}
    SHX7_2.id = "lock"
    SHX7_2.title = "Lock Car"
    SHX7_2.icon = "#carLock"
    SHX8_2 = {}
    SHX8_2.id = "openBoot"
    SHX8_2.title = "Open Boot"
    SHX8_2.icon = "#openBoot"
    SHX9_2 = {}
    SHX9_2.id = "cleanCar"
    SHX9_2.title = "Clean Car"
    SHX9_2.icon = "#cleanCar"
    SHX6_2[1] = SHX7_2
    SHX6_2[2] = SHX8_2
    SHX6_2[3] = SHX9_2
    SHX7_2 = SHX7_1
    SHX8_2 = SHX5_2
    SHX7_2 = SHX7_2(SHX8_2)
    if SHX7_2 then
      SHX7_2 = #SHX6_2
      SHX7_2 = SHX7_2 + 1
      SHX8_2 = {}
      SHX8_2.id = "repair"
      SHX8_2.title = "Repair"
      SHX8_2.icon = "#repair"
      SHX6_2[SHX7_2] = SHX8_2
    end
    SHX7_2 = SHX8_1
    SHX8_2 = SHX5_2
    SHX7_2 = SHX7_2(SHX8_2)
    if SHX7_2 then
      SHX7_2 = #SHX6_2
      SHX7_2 = SHX7_2 + 1
      SHX8_2 = {}
      SHX8_2.id = "repairTrucking"
      SHX8_2.title = "Truck repair"
      SHX8_2.icon = "#repair"
      SHX6_2[SHX7_2] = SHX8_2
    end
    SHX7_2 = #SHX6_2
    SHX7_2 = SHX7_2 + 1
    SHX8_2 = {}
    SHX8_2.id = "openHood"
    SHX8_2.title = "Open Hood"
    SHX8_2.icon = "#openHood"
    SHX6_2[SHX7_2] = SHX8_2
    SHX7_2 = {}
    SHX8_2 = SHX10_1
    SHX9_2 = SHX5_2
    SHX8_2 = SHX8_2(SHX9_2)
    if SHX8_2 then
      SHX8_2 = #SHX7_2
      SHX8_2 = SHX8_2 + 1
      SHX9_2 = {}
      SHX9_2.id = "searchvehicle"
      SHX9_2.title = "Search Vehicle"
      SHX9_2.icon = "#searchVehicle"
      SHX7_2[SHX8_2] = SHX9_2
    end
    SHX8_2 = #SHX7_2
    SHX8_2 = SHX8_2 + 1
    SHX9_2 = {}
    SHX9_2.id = "impoundVehicle"
    SHX9_2.title = "Impound Vehicle"
    SHX9_2.icon = "#searchVehicle"
    SHX7_2[SHX8_2] = SHX9_2
    SHX8_2 = #SHX7_2
    SHX8_2 = SHX8_2 + 1
    SHX9_2 = {}
    SHX9_2.id = "askDriverId"
    SHX9_2.title = "Ask Driver ID"
    SHX9_2.icon = "#askId"
    SHX7_2[SHX8_2] = SHX9_2
    SHX8_2 = #SHX7_2
    SHX8_2 = SHX8_2 + 1
    SHX9_2 = {}
    SHX9_2.id = "ejectPassenger"
    SHX9_2.title = "Eject Passenger"
    SHX9_2.icon = "#openHood"
    SHX7_2[SHX8_2] = SHX9_2
    SHX8_2 = #SHX6_2
    SHX8_2 = SHX8_2 + 1
    SHX9_2 = {}
    SHX9_2.id = "police"
    SHX9_2.title = "MET Police"
    SHX9_2.icon = "#metPolice"
    SHX9_2.items = SHX7_2
    SHX6_2[SHX8_2] = SHX9_2
    return SHX6_2
  elseif SHX1_2 then
    SHX6_2 = {}
    SHX7_2 = {}
    SHX7_2.id = "lock"
    SHX7_2.title = "Lock Car"
    SHX7_2.icon = "#carLock"
    SHX8_2 = {}
    SHX8_2.id = "openBoot"
    SHX8_2.title = "Open Boot"
    SHX8_2.icon = "#openBoot"
    SHX9_2 = {}
    SHX9_2.id = "cleanCar"
    SHX9_2.title = "Clean Car"
    SHX9_2.icon = "#cleanCar"
    SHX6_2[1] = SHX7_2
    SHX6_2[2] = SHX8_2
    SHX6_2[3] = SHX9_2
    SHX7_2 = SHX7_1
    SHX8_2 = SHX5_2
    SHX7_2 = SHX7_2(SHX8_2)
    if SHX7_2 then
      SHX7_2 = #SHX6_2
      SHX7_2 = SHX7_2 + 1
      SHX8_2 = {}
      SHX8_2.id = "repair"
      SHX8_2.title = "Repair"
      SHX8_2.icon = "#repair"
      SHX6_2[SHX7_2] = SHX8_2
    end
    SHX7_2 = SHX8_1
    SHX8_2 = SHX5_2
    SHX7_2 = SHX7_2(SHX8_2)
    if SHX7_2 then
      SHX7_2 = #SHX6_2
      SHX7_2 = SHX7_2 + 1
      SHX8_2 = {}
      SHX8_2.id = "repairTrucking"
      SHX8_2.title = "Truck repair"
      SHX8_2.icon = "#repair"
      SHX6_2[SHX7_2] = SHX8_2
    end
    SHX7_2 = #SHX6_2
    SHX7_2 = SHX7_2 + 1
    SHX8_2 = {}
    SHX8_2.id = "openHood"
    SHX8_2.title = "Open Hood"
    SHX8_2.icon = "#openHood"
    SHX6_2[SHX7_2] = SHX8_2
    SHX7_2 = #SHX6_2
    SHX7_2 = SHX7_2 + 1
    SHX8_2 = {}
    SHX8_2.id = "police"
    SHX8_2.title = "HMP"
    SHX8_2.icon = "#metPolice"
    SHX9_2 = {}
    SHX10_2 = {}
    SHX10_2.id = "impoundVehicle"
    SHX10_2.title = "Impound Vehicle"
    SHX10_2.icon = "#searchVehicle"
    SHX11_2 = {}
    SHX11_2.id = "askDriverId"
    SHX11_2.title = "Ask Driver ID"
    SHX11_2.icon = "#askId"
    SHX9_2[1] = SHX10_2
    SHX9_2[2] = SHX11_2
    SHX8_2.items = SHX9_2
    SHX6_2[SHX7_2] = SHX8_2
    return SHX6_2
  elseif SHX2_2 then
    SHX6_2 = GetEntityModel
    SHX7_2 = SHX5_2
    SHX6_2 = SHX6_2(SHX7_2)
    SHX7_2 = SHX1_1.mechanicFlatbedModelHashes
    SHX7_2 = SHX7_2[SHX6_2]
    if not SHX7_2 then
      SHX7_2 = SHX1_1.mechanicTowTruckModelHashes
      SHX7_2 = SHX7_2[SHX6_2]
    end
    SHX8_2 = {}
    SHX9_2 = SHX8_1
    SHX10_2 = SHX5_2
    SHX9_2 = SHX9_2(SHX10_2)
    if SHX9_2 then
      SHX9_2 = #SHX8_2
      SHX9_2 = SHX9_2 + 1
      SHX10_2 = {}
      SHX10_2.id = "repairTrucking"
      SHX10_2.title = "Truck repair"
      SHX10_2.icon = "#repair"
      SHX8_2[SHX9_2] = SHX10_2
    end
    SHX9_2 = SHX9_1
    SHX10_2 = SHX5_2
    SHX9_2 = SHX9_2(SHX10_2)
    if SHX9_2 then
      SHX9_2 = #SHX8_2
      SHX9_2 = SHX9_2 + 1
      SHX10_2 = {}
      SHX10_2.id = "repairAA"
      SHX10_2.title = "Repair"
      SHX10_2.icon = "#repair"
      SHX8_2[SHX9_2] = SHX10_2
    end
    if SHX7_2 then
      SHX9_2 = #SHX8_2
      SHX9_2 = SHX9_2 + 1
      SHX10_2 = {}
      SHX10_2.id = "detachVehicle"
      SHX10_2.title = "Detach Vehicle"
      SHX10_2.icon = "#searchVehicle"
      SHX8_2[SHX9_2] = SHX10_2
    else
      SHX9_2 = #SHX8_2
      SHX9_2 = SHX9_2 + 1
      SHX10_2 = {}
      SHX10_2.id = "mechanicHookTargetVehicle"
      SHX10_2.title = "Attach to Flatbed"
      SHX10_2.icon = "#searchVehicle"
      SHX8_2[SHX9_2] = SHX10_2
    end
    SHX9_2 = {}
    SHX10_2 = {}
    SHX10_2.id = "lock"
    SHX10_2.title = "Lock Car"
    SHX10_2.icon = "#carLock"
    SHX11_2 = {}
    SHX11_2.id = "openBoot"
    SHX11_2.title = "Open Boot"
    SHX11_2.icon = "#openBoot"
    SHX12_2 = {}
    SHX12_2.id = "cleanCar"
    SHX12_2.title = "Clean Car"
    SHX12_2.icon = "#cleanCar"
    SHX9_2[1] = SHX10_2
    SHX9_2[2] = SHX11_2
    SHX9_2[3] = SHX12_2
    SHX10_2 = #SHX9_2
    SHX10_2 = SHX10_2 + 1
    SHX11_2 = {}
    SHX11_2.id = "aa"
    SHX11_2.title = "Mechanic"
    SHX11_2.icon = "#mechanic"
    SHX11_2.items = SHX8_2
    SHX9_2[SHX10_2] = SHX11_2
    SHX10_2 = #SHX9_2
    SHX10_2 = SHX10_2 + 1
    SHX11_2 = {}
    SHX11_2.id = "openHood"
    SHX11_2.title = "Open Hood"
    SHX11_2.icon = "#openHood"
    SHX9_2[SHX10_2] = SHX11_2
    return SHX9_2
  elseif SHX3_2 then
    SHX6_2 = {}
    SHX7_2 = {}
    SHX7_2.id = "impoundVehicle"
    SHX7_2.title = "Impound Vehicle"
    SHX7_2.icon = "#searchVehicle"
    SHX6_2[1] = SHX7_2
    if SHX5_2 then
      SHX7_2 = SHX5_1
      SHX8_2 = SHX5_2
      SHX9_2 = "Health Service Vehicles"
      SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
      if SHX7_2 then
        SHX7_2 = table
        SHX7_2 = SHX7_2.insert
        SHX8_2 = SHX6_2
        SHX9_2 = 1
        SHX10_2 = {}
        SHX10_2.id = "spawnStretcher"
        SHX10_2.title = "Spawn Stretcher"
        SHX10_2.icon = "#stretcher"
        SHX7_2(SHX8_2, SHX9_2, SHX10_2)
      end
    end
    SHX7_2 = {}
    SHX8_2 = {}
    SHX8_2.id = "lock"
    SHX8_2.title = "Lock Car"
    SHX8_2.icon = "#carLock"
    SHX9_2 = {}
    SHX9_2.id = "openBoot"
    SHX9_2.title = "Open Boot"
    SHX9_2.icon = "#openBoot"
    SHX10_2 = {}
    SHX10_2.id = "cleanCar"
    SHX10_2.title = "Clean Car"
    SHX10_2.icon = "#cleanCar"
    SHX7_2[1] = SHX8_2
    SHX7_2[2] = SHX9_2
    SHX7_2[3] = SHX10_2
    SHX8_2 = SHX7_1
    SHX9_2 = SHX5_2
    SHX8_2 = SHX8_2(SHX9_2)
    if SHX8_2 then
      SHX8_2 = #SHX7_2
      SHX8_2 = SHX8_2 + 1
      SHX9_2 = {}
      SHX9_2.id = "repair"
      SHX9_2.title = "Repair"
      SHX9_2.icon = "#repair"
      SHX7_2[SHX8_2] = SHX9_2
    end
    SHX8_2 = SHX8_1
    SHX9_2 = SHX5_2
    SHX8_2 = SHX8_2(SHX9_2)
    if SHX8_2 then
      SHX8_2 = #SHX7_2
      SHX8_2 = SHX8_2 + 1
      SHX9_2 = {}
      SHX9_2.id = "repairTrucking"
      SHX9_2.title = "Truck repair"
      SHX9_2.icon = "#repair"
      SHX7_2[SHX8_2] = SHX9_2
    end
    SHX8_2 = #SHX7_2
    SHX8_2 = SHX8_2 + 1
    SHX9_2 = {}
    SHX9_2.id = "openHood"
    SHX9_2.title = "Open Hood"
    SHX9_2.icon = "#openHood"
    SHX7_2[SHX8_2] = SHX9_2
    SHX8_2 = #SHX7_2
    SHX8_2 = SHX8_2 + 1
    SHX9_2 = {}
    SHX9_2.id = "police"
    SHX9_2.title = "Health Service"
    SHX9_2.icon = "#healthservice"
    SHX9_2.items = SHX6_2
    SHX7_2[SHX8_2] = SHX9_2
    return SHX7_2
  elseif SHX4_2 then
    SHX6_2 = {}
    SHX7_2 = SHX10_1
    SHX8_2 = SHX5_2
    SHX7_2 = SHX7_2(SHX8_2)
    if SHX7_2 then
      SHX7_2 = #SHX6_2
      SHX7_2 = SHX7_2 + 1
      SHX8_2 = {}
      SHX8_2.id = "searchvehicle"
      SHX8_2.title = "Search Vehicle"
      SHX8_2.icon = "#searchVehicle"
      SHX6_2[SHX7_2] = SHX8_2
    end
    SHX7_2 = #SHX6_2
    SHX7_2 = SHX7_2 + 1
    SHX8_2 = {}
    SHX8_2.id = "askDriverId"
    SHX8_2.title = "Ask Driver ID"
    SHX8_2.icon = "#askId"
    SHX6_2[SHX7_2] = SHX8_2
    SHX7_2 = #SHX6_2
    SHX7_2 = SHX7_2 + 1
    SHX8_2 = {}
    SHX8_2.id = "ejectPassenger"
    SHX8_2.title = "Eject Passenger"
    SHX8_2.icon = "#openHood"
    SHX6_2[SHX7_2] = SHX8_2
    SHX7_2 = {}
    SHX8_2 = {}
    SHX8_2.id = "lock"
    SHX8_2.title = "Lock Car"
    SHX8_2.icon = "#carLock"
    SHX9_2 = {}
    SHX9_2.id = "openBoot"
    SHX9_2.title = "Open Boot"
    SHX9_2.icon = "#openBoot"
    SHX10_2 = {}
    SHX10_2.id = "cleanCar"
    SHX10_2.title = "Clean Car"
    SHX10_2.icon = "#cleanCar"
    SHX7_2[1] = SHX8_2
    SHX7_2[2] = SHX9_2
    SHX7_2[3] = SHX10_2
    SHX8_2 = SHX7_1
    SHX9_2 = SHX5_2
    SHX8_2 = SHX8_2(SHX9_2)
    if SHX8_2 then
      SHX8_2 = #SHX7_2
      SHX8_2 = SHX8_2 + 1
      SHX9_2 = {}
      SHX9_2.id = "repair"
      SHX9_2.title = "Repair"
      SHX9_2.icon = "#repair"
      SHX7_2[SHX8_2] = SHX9_2
    end
    SHX8_2 = SHX8_1
    SHX9_2 = SHX5_2
    SHX8_2 = SHX8_2(SHX9_2)
    if SHX8_2 then
      SHX8_2 = #SHX7_2
      SHX8_2 = SHX8_2 + 1
      SHX9_2 = {}
      SHX9_2.id = "repairTrucking"
      SHX9_2.title = "Truck repair"
      SHX9_2.icon = "#repair"
      SHX7_2[SHX8_2] = SHX9_2
    end
    SHX8_2 = #SHX7_2
    SHX8_2 = SHX8_2 + 1
    SHX9_2 = {}
    SHX9_2.id = "openHood"
    SHX9_2.title = "Open Hood"
    SHX9_2.icon = "#openHood"
    SHX7_2[SHX8_2] = SHX9_2
    SHX8_2 = #SHX7_2
    SHX8_2 = SHX8_2 + 1
    SHX9_2 = {}
    SHX9_2.id = "vigilante"
    SHX9_2.title = "Vigilante"
    SHX9_2.icon = "#vigilante"
    SHX9_2.items = SHX6_2
    SHX7_2[SHX8_2] = SHX9_2
    return SHX7_2
  else
    SHX6_2 = {}
    SHX7_2 = {}
    SHX7_2.id = "lock"
    SHX7_2.title = "Lock Car"
    SHX7_2.icon = "#carLock"
    SHX8_2 = {}
    SHX8_2.id = "openBoot"
    SHX8_2.title = "Open Boot"
    SHX8_2.icon = "#openBoot"
    SHX9_2 = {}
    SHX9_2.id = "cleanCar"
    SHX9_2.title = "Clean Car"
    SHX9_2.icon = "#cleanCar"
    SHX6_2[1] = SHX7_2
    SHX6_2[2] = SHX8_2
    SHX6_2[3] = SHX9_2
    SHX7_2 = SHX6_1
    SHX8_2 = SHX5_2
    SHX7_2 = SHX7_2(SHX8_2)
    if SHX7_2 then
      SHX7_2 = #SHX6_2
      SHX7_2 = SHX7_2 + 1
      SHX8_2 = {}
      SHX8_2.id = "lockpick"
      SHX8_2.title = "Lockpick"
      SHX8_2.icon = "#lockpick"
      SHX6_2[SHX7_2] = SHX8_2
    end
    SHX7_2 = SHX7_1
    SHX8_2 = SHX5_2
    SHX7_2 = SHX7_2(SHX8_2)
    if SHX7_2 then
      SHX7_2 = #SHX6_2
      SHX7_2 = SHX7_2 + 1
      SHX8_2 = {}
      SHX8_2.id = "repair"
      SHX8_2.title = "Repair"
      SHX8_2.icon = "#repair"
      SHX6_2[SHX7_2] = SHX8_2
    end
    SHX7_2 = SHX8_1
    SHX8_2 = SHX5_2
    SHX7_2 = SHX7_2(SHX8_2)
    if SHX7_2 then
      SHX7_2 = #SHX6_2
      SHX7_2 = SHX7_2 + 1
      SHX8_2 = {}
      SHX8_2.id = "repairTrucking"
      SHX8_2.title = "Truck repair"
      SHX8_2.icon = "#repair"
      SHX6_2[SHX7_2] = SHX8_2
    end
    SHX7_2 = #SHX6_2
    SHX7_2 = SHX7_2 + 1
    SHX8_2 = {}
    SHX8_2.id = "openHood"
    SHX8_2.title = "Open Hood"
    SHX8_2.icon = "#openHood"
    SHX6_2[SHX7_2] = SHX8_2
    SHX7_2 = SHX10_1
    SHX8_2 = SHX5_2
    SHX7_2 = SHX7_2(SHX8_2)
    if SHX7_2 then
      SHX7_2 = #SHX6_2
      SHX7_2 = SHX7_2 + 1
      SHX8_2 = {}
      SHX8_2.id = "searchvehicle"
      SHX8_2.title = "Search Vehicle"
      SHX8_2.icon = "#searchVehicle"
      SHX6_2[SHX7_2] = SHX8_2
    end
    SHX7_2 = SHX11_1
    SHX8_2 = SHX5_2
    SHX7_2 = SHX7_2(SHX8_2)
    if SHX7_2 then
      SHX7_2 = #SHX6_2
      SHX7_2 = SHX7_2 + 1
      SHX8_2 = {}
      SHX8_2.id = "carjack"
      SHX8_2.title = "Carjack"
      SHX8_2.icon = "#carjack"
      SHX6_2[SHX7_2] = SHX8_2
    end
    return SHX6_2
  end
end
function SHX24_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX15_1
  if SHX1_2 == SHX0_2 then
    return
  end
  SHX15_1 = SHX0_2
  SHX1_2 = SendNUIMessage
  SHX2_2 = {}
  SHX2_2.radialCrosshair = SHX0_2
  SHX1_2(SHX2_2)
end
Crosshair = SHX24_1
SHX24_1 = RegisterNUICallback
SHX25_1 = "radialDisablenuifocus"
function SHX26_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX0_2.nuifocus
  SHX12_1 = SHX1_2
  SHX1_2 = SetNuiFocusKeepInput
  SHX2_2 = false
  SHX1_2(SHX2_2)
  SHX1_2 = SetNuiFocus
  SHX2_2 = SHX0_2.nuifocus
  SHX3_2 = SHX0_2.nuifocus
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = false
  SHX17_1 = SHX1_2
end
SHX24_1(SHX25_1, SHX26_1)
SHX24_1 = CMG
function SHX25_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = pairs
  SHX2_2 = GetActivePlayers
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX2_2()
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = GetPlayerPed
    SHX8_2 = SHX6_2
    SHX7_2 = SHX7_2(SHX8_2)
    SHX8_2 = GetEntityAttachedTo
    SHX9_2 = SHX7_2
    SHX8_2 = SHX8_2(SHX9_2)
    if SHX8_2 == SHX0_2 then
      return SHX7_2
    end
  end
  SHX1_2 = 0
  return SHX1_2
end
SHX24_1.getDraggedPed = SHX25_1
function SHX24_1(SHX0_2)
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
  if -2100640717 == SHX1_2 then
    SHX2_2 = 10.0
    return SHX2_2
  end
  SHX2_2 = 3.5
  return SHX2_2
end
function SHX25_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX0_2 = GetShapeTestResult
  SHX1_2 = SHX16_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX0_2(SHX1_2)
  if 1 ~= SHX0_2 then
    if 2 == SHX0_2 then
      SHX5_2 = GetEntityType
      SHX6_2 = SHX4_2
      SHX5_2 = SHX5_2(SHX6_2)
      if SHX5_2 > 0 then
        SHX5_2 = GetEntityCoords
        SHX6_2 = PlayerPedId
        SHX6_2 = SHX6_2()
        SHX7_2 = true
        SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
        SHX6_2 = GetEntityCoords
        SHX7_2 = SHX4_2
        SHX8_2 = true
        SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
        SHX5_2 = SHX5_2 - SHX6_2
        SHX5_2 = #SHX5_2
        SHX6_2 = SHX24_1
        SHX7_2 = SHX4_2
        SHX6_2 = SHX6_2(SHX7_2)
        if SHX5_2 <= SHX6_2 then
          SHX5_2 = PlayerPedId
          SHX5_2 = SHX5_2()
          if SHX4_2 ~= SHX5_2 then
            SHX13_1 = SHX4_2
            SHX5_2 = GetEntityType
            SHX6_2 = SHX4_2
            SHX5_2 = SHX5_2(SHX6_2)
            SHX14_1 = SHX5_2
        end
      end
      else
        SHX5_2 = nil
        SHX13_1 = SHX5_2
        SHX5_2 = nil
        SHX14_1 = SHX5_2
      end
      SHX5_2 = SHX13_1
      if not SHX5_2 then
        SHX5_2 = GetEntityPlayerIsFreeAimingAt
        SHX6_2 = PlayerId
        SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2 = SHX6_2()
        SHX5_2, SHX6_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
        if SHX5_2 and 0 ~= SHX6_2 then
          SHX7_2 = CMG
          SHX7_2 = SHX7_2.getDraggedPed
          SHX7_2 = SHX7_2()
          if SHX6_2 == SHX7_2 then
            SHX13_1 = SHX6_2
            SHX7_2 = GetEntityType
            SHX8_2 = SHX6_2
            SHX7_2 = SHX7_2(SHX8_2)
            SHX14_1 = SHX7_2
          end
        end
      end
    end
    SHX5_2 = GetGameplayCamRot
    SHX6_2 = 2
    SHX5_2 = SHX5_2(SHX6_2)
    SHX6_2 = GetGameplayCamCoord
    SHX6_2 = SHX6_2()
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.rotationToDirection
    SHX8_2 = SHX5_2
    SHX7_2 = SHX7_2(SHX8_2)
    SHX8_2 = vector3
    SHX9_2 = SHX6_2.x
    SHX10_2 = SHX7_2.x
    SHX10_2 = SHX10_2 * 15.0
    SHX9_2 = SHX9_2 + SHX10_2
    SHX10_2 = SHX6_2.y
    SHX11_2 = SHX7_2.y
    SHX11_2 = SHX11_2 * 15.0
    SHX10_2 = SHX10_2 + SHX11_2
    SHX11_2 = SHX6_2.z
    SHX12_2 = SHX7_2.z
    SHX12_2 = SHX12_2 * 15.0
    SHX11_2 = SHX11_2 + SHX12_2
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2)
    SHX9_2 = StartShapeTestLosProbe
    SHX10_2 = SHX6_2.x
    SHX11_2 = SHX6_2.y
    SHX12_2 = SHX6_2.z
    SHX13_2 = SHX8_2.x
    SHX14_2 = SHX8_2.y
    SHX15_2 = SHX8_2.z
    SHX16_2 = -1
    SHX17_2 = -1
    SHX18_2 = 1
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
    SHX16_1 = SHX9_2
  end
end
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = GetEntityHealth
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX0_2 = SHX0_2(SHX1_2)
  SHX0_2 = SHX0_2 > 102
  return SHX0_2
end
SHX27_1 = RegisterCommand
SHX28_1 = "lootbag"
function SHX29_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = GetFrameCount
  SHX0_2 = SHX0_2()
  SHX18_1 = SHX0_2
end
SHX30_1 = true
SHX27_1(SHX28_1, SHX29_1, SHX30_1)
SHX27_1 = RegisterKeyMapping
SHX28_1 = "lootbag"
SHX29_1 = "Open Lootbag"
SHX30_1 = "KEYBOARD"
SHX31_1 = "E"
SHX27_1(SHX28_1, SHX29_1, SHX30_1, SHX31_1)
function SHX27_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isMechanicDebrisCarryingScrap
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX0_2 = false
    return SHX0_2
  end
  SHX0_2 = GetFrameCount
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX18_1
  SHX1_2 = SHX1_2 == SHX0_2
  return SHX1_2
end
SHX28_1 = false
function SHX29_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX2_2 = SHX28_1
  if SHX2_2 then
    SHX2_2 = notify
    SHX3_2 = "~r~You are already opening a lootbag."
    SHX2_2(SHX3_2)
    return
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.hasClientPermission
  SHX3_2 = "admin.tickets"
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.isNoClipActive
  SHX3_2 = SHX3_2()
  if not SHX3_2 or SHX2_2 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.isCarrying
    SHX3_2 = SHX3_2()
    if not SHX3_2 then
      SHX3_2 = CMG
      SHX3_2 = SHX3_2.isPiggyBackActive
      SHX3_2 = SHX3_2()
      if not SHX3_2 then
        SHX3_2 = CMG
        SHX3_2 = SHX3_2.isKnockedOut
        SHX3_2 = SHX3_2()
        if not SHX3_2 then
          goto SHX_LABEL_35
        end
      end
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_35:: outside nested blocks until all 'goto SHX_LABEL_35' can see it
  ::SHX_LABEL_35::
  SHX3_2 = DecorExistOn
  SHX4_2 = SHX1_2
  SHX5_2 = "12da94aa7e"
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  if SHX3_2 then
    SHX3_2 = DecorGetInt
    SHX4_2 = SHX1_2
    SHX5_2 = "12da94aa7e"
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.getClientUserId
    SHX4_2 = SHX4_2()
    if SHX3_2 ~= SHX4_2 then
      SHX4_2 = CMG
      SHX4_2 = SHX4_2.hasClientGroup
      SHX5_2 = "Vigilante"
      SHX4_2 = SHX4_2(SHX5_2)
      if SHX4_2 then
        SHX4_2 = DecorGetInt
        SHX5_2 = SHX1_2
        SHX6_2 = "5f7af1c5ce"
        SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
        SHX5_2 = CMG
        SHX5_2 = SHX5_2.isLootbagOwnerVigilante
        SHX6_2 = SHX4_2
        SHX5_2 = SHX5_2(SHX6_2)
        if not SHX5_2 then
          SHX5_2 = notify
          SHX6_2 = "~r~You can not open other players lootbags whilst being a vigilante."
          SHX5_2(SHX6_2)
          return
        end
      end
    end
  end
  SHX3_2 = IsEntityVisible
  SHX4_2 = PlayerPedId
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX4_2()
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  if not SHX3_2 and not SHX2_2 then
    return
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.isHandcuffed
  SHX3_2 = SHX3_2()
  if SHX3_2 then
    return
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.hasNewPlayerProtection
  SHX3_2 = SHX3_2()
  if SHX3_2 then
    SHX3_2 = notify
    SHX4_2 = "~r~You can not open lootbags whilst you have new player protection."
    SHX3_2(SHX4_2)
    return
  end
  SHX3_2 = true
  SHX28_1 = SHX3_2
  SHX3_2 = GetGameTimer
  SHX3_2 = SHX3_2()
  SHX4_2 = {}
  SHX5_2 = {}
  SHX6_2 = "amb@medic@standing@kneel@base"
  SHX7_2 = "base"
  SHX8_2 = 1
  SHX5_2[1] = SHX6_2
  SHX5_2[2] = SHX7_2
  SHX5_2[3] = SHX8_2
  SHX6_2 = {}
  SHX7_2 = "anim@gangops@facility@servers@bodysearch@"
  SHX8_2 = "player_search"
  SHX9_2 = 1
  SHX6_2[1] = SHX7_2
  SHX6_2[2] = SHX8_2
  SHX6_2[3] = SHX9_2
  SHX7_2 = {}
  SHX8_2 = "amb@medic@standing@kneel@exit"
  SHX9_2 = "exit"
  SHX10_2 = 1
  SHX7_2[1] = SHX8_2
  SHX7_2[2] = SHX9_2
  SHX7_2[3] = SHX10_2
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX5_2 = tCMG
  SHX5_2 = SHX5_2.playAnim
  SHX6_2 = false
  SHX7_2 = SHX4_2
  SHX8_2 = false
  SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3
    SHX0_3 = pairs
    SHX1_3 = SHX4_2
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
    for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      SHX6_3 = IsEntityPlayingAnim
      SHX7_3 = PlayerPedId
      SHX7_3 = SHX7_3()
      SHX8_3 = SHX5_3[1]
      SHX9_3 = SHX5_3[2]
      SHX10_3 = 3
      SHX6_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3, SHX10_3)
      if SHX6_3 then
        SHX6_3 = true
        return SHX6_3
      end
    end
    SHX0_3 = false
    return SHX0_3
  end
  SHX6_2 = GetSelectedPedWeapon
  SHX7_2 = PlayerPedId
  SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2()
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.inEvent
  SHX7_2 = SHX7_2()
  if not SHX7_2 then
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.isEmergencyService
    SHX7_2 = SHX7_2()
    if SHX7_2 or -1569615261 == SHX6_2 or 883325847 == SHX6_2 then
      SHX7_2 = Citizen
      SHX7_2 = SHX7_2.CreateThread
      function SHX8_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
        SHX0_3 = CMG
        SHX0_3 = SHX0_3.startCircularProgressBar
        SHX1_3 = ""
        SHX2_3 = 3000
        SHX3_3 = nil
        function SHX4_3()
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX0_4, SHX1_4
        end
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
      end
      SHX7_2(SHX8_2)
      SHX7_2 = Citizen
      SHX7_2 = SHX7_2.Wait
      SHX8_2 = 100
      SHX7_2(SHX8_2)
      while true do
        SHX7_2 = SHX28_1
        if not SHX7_2 then
          break
        end
        SHX7_2 = tCMG
        SHX7_2 = SHX7_2.isInComa
        SHX7_2 = SHX7_2()
        if SHX7_2 then
          SHX7_2 = CMG
          SHX7_2 = SHX7_2.stopCircularProgressBar
          SHX7_2()
          SHX7_2 = false
          SHX28_1 = SHX7_2
          SHX7_2 = tCMG
          SHX7_2 = SHX7_2.stopAnim
          SHX7_2()
          return
        else
          SHX7_2 = SHX5_2
          SHX7_2 = SHX7_2()
          if not SHX7_2 then
            SHX7_2 = CMG
            SHX7_2 = SHX7_2.stopCircularProgressBar
            SHX7_2()
            SHX7_2 = false
            SHX28_1 = SHX7_2
            SHX7_2 = notify
            SHX8_2 = "~r~Opening lootbag cancelled."
            SHX7_2(SHX8_2)
            SHX7_2 = tCMG
            SHX7_2 = SHX7_2.stopAnim
            SHX7_2()
            return
          else
            SHX7_2 = GetGameTimer
            SHX7_2 = SHX7_2()
            SHX7_2 = SHX7_2 - SHX3_2
            SHX8_2 = 3000
            if SHX7_2 >= SHX8_2 then
              break
            end
          end
        end
        SHX7_2 = Citizen
        SHX7_2 = SHX7_2.Wait
        SHX8_2 = 0
        SHX7_2(SHX8_2)
      end
    end
  end
  SHX7_2 = false
  SHX28_1 = SHX7_2
  SHX7_2 = tCMG
  SHX7_2 = SHX7_2.isInComa
  SHX7_2 = SHX7_2()
  if SHX7_2 then
    return
  end
  SHX7_2 = SHX0_2
  SHX7_2()
end
function SHX30_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getDraggedPed
  SHX0_2 = SHX0_2()
  if 0 == SHX0_2 then
    return
  end
  SHX1_2 = GetFrameCount
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX20_1
  if SHX1_2 ~= SHX2_2 then
    SHX2_2 = SHX1_2 - 1
    SHX3_2 = SHX20_1
    if SHX2_2 ~= SHX3_2 then
      goto SHX_LABEL_18
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_18:: outside nested blocks until all 'goto SHX_LABEL_18' can see it
  ::SHX_LABEL_18::
  SHX2_2 = SetNuiFocus
  SHX3_2 = true
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SendNUIMessage
  SHX3_2 = {}
  SHX3_2.openRadialMenu = true
  SHX3_2.type = "ped"
  SHX3_2.entityId = SHX0_2
  SHX4_2 = SHX22_1
  SHX5_2 = SHX0_2
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.hasClientPermission
  SHX7_2 = "police.onduty.permission"
  SHX6_2 = SHX6_2(SHX7_2)
  if not SHX6_2 then
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.hasClientPermission
    SHX7_2 = "borderforce.onduty.permission"
    SHX6_2 = SHX6_2(SHX7_2)
  end
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.hasClientPermission
  SHX8_2 = "prisonguard.onduty.permission"
  SHX7_2 = SHX7_2(SHX8_2)
  SHX8_2 = CMG
  SHX8_2 = SHX8_2.hasClientPermission
  SHX9_2 = "nhs.onduty.permission"
  SHX8_2 = SHX8_2(SHX9_2)
  SHX9_2 = CMG
  SHX9_2 = SHX9_2.hasClientGroup
  SHX10_2 = "Vigilante"
  SHX9_2 = SHX9_2(SHX10_2)
  SHX10_2 = DecorGetBool
  SHX11_2 = SHX0_2
  SHX12_2 = "4ac0472477"
  SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
  SHX11_2 = CMG
  SHX11_2 = SHX11_2.isDrawingCasinoChipsUI
  SHX11_2 = SHX11_2()
  if SHX11_2 then
    SHX11_2 = CMG
    SHX11_2 = SHX11_2.getChipsClientDisplayAmount
    SHX11_2 = SHX11_2()
    SHX11_2 = SHX11_2 > 0
  end
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX3_2.menuItems = SHX4_2
  SHX2_2(SHX3_2)
end
function SHX31_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = SHX25_1
  SHX0_2()
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = GetVehiclePedIsIn
  SHX2_2 = SHX0_2
  SHX3_2 = false
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX2_2 = SHX12_1
  if SHX2_2 and 0 ~= SHX1_2 then
    SHX2_2 = SHX17_1
    if not SHX2_2 then
      SHX2_2 = false
      SHX12_1 = SHX2_2
      SHX2_2 = SendNUIMessage
      SHX3_2 = {}
      SHX3_2.closeRadialMenu = true
      SHX2_2(SHX3_2)
    end
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.isMechanicDebrisCarryingScrap
  SHX2_2 = SHX2_2()
  if SHX2_2 then
    SHX2_2 = SHX12_1
    if SHX2_2 then
      SHX2_2 = false
      SHX12_1 = SHX2_2
      SHX2_2 = SendNUIMessage
      SHX3_2 = {}
      SHX3_2.closeRadialMenu = true
      SHX2_2(SHX3_2)
      SHX2_2 = SetNuiFocus
      SHX3_2 = false
      SHX4_2 = false
      SHX2_2(SHX3_2, SHX4_2)
    end
  end
  SHX2_2 = SHX13_1
  if SHX2_2 then
    SHX2_2 = SHX14_1
    if SHX2_2 then
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.isMechanicDebrisCarryingScrap
      SHX2_2 = SHX2_2()
      if SHX2_2 then
        SHX2_2 = Crosshair
        SHX3_2 = false
        SHX2_2(SHX3_2)
      else
        SHX2_2 = SHX26_1
        SHX2_2 = SHX2_2()
        if SHX2_2 and 0 == SHX1_2 then
          SHX2_2 = GetRenderingCam
          SHX2_2 = SHX2_2()
          if -1 == SHX2_2 then
            SHX2_2 = SHX19_1
            if not SHX2_2 then
              SHX2_2 = SHX14_1
              if 1 == SHX2_2 then
                SHX2_2 = SHX13_1
                if SHX2_2 ~= SHX0_2 then
                  SHX2_2 = IsPedAPlayer
                  SHX3_2 = SHX13_1
                  SHX2_2 = SHX2_2(SHX3_2)
                  if SHX2_2 then
                    SHX2_2 = CMG
                    SHX2_2 = SHX2_2.isAtArenaWagerHub
                    SHX2_2 = SHX2_2()
                    if SHX2_2 then
                      SHX2_2 = Crosshair
                      SHX3_2 = false
                      SHX2_2(SHX3_2)
                    else
                      SHX2_2 = Crosshair
                      SHX3_2 = true
                      SHX2_2(SHX3_2)
                      SHX2_2 = SHX27_1
                      SHX2_2 = SHX2_2()
                      if SHX2_2 then
                        SHX2_2 = SHX12_1
                        if false == SHX2_2 then
                          SHX2_2 = true
                          SHX12_1 = SHX2_2
                          SHX2_2 = SetNuiFocus
                          SHX3_2 = true
                          SHX4_2 = true
                          SHX2_2(SHX3_2, SHX4_2)
                          SHX2_2 = SendNUIMessage
                          SHX3_2 = {}
                          SHX3_2.openRadialMenu = true
                          SHX3_2.type = "ped"
                          SHX4_2 = SHX13_1
                          SHX3_2.entityId = SHX4_2
                          SHX4_2 = SHX22_1
                          SHX5_2 = SHX13_1
                          SHX6_2 = CMG
                          SHX6_2 = SHX6_2.hasClientPermission
                          SHX7_2 = "police.onduty.permission"
                          SHX6_2 = SHX6_2(SHX7_2)
                          if not SHX6_2 then
                            SHX6_2 = CMG
                            SHX6_2 = SHX6_2.hasClientPermission
                            SHX7_2 = "borderforce.onduty.permission"
                            SHX6_2 = SHX6_2(SHX7_2)
                          end
                          SHX7_2 = CMG
                          SHX7_2 = SHX7_2.hasClientPermission
                          SHX8_2 = "prisonguard.onduty.permission"
                          SHX7_2 = SHX7_2(SHX8_2)
                          SHX8_2 = CMG
                          SHX8_2 = SHX8_2.hasClientPermission
                          SHX9_2 = "nhs.onduty.permission"
                          SHX8_2 = SHX8_2(SHX9_2)
                          SHX9_2 = CMG
                          SHX9_2 = SHX9_2.hasClientGroup
                          SHX10_2 = "Vigilante"
                          SHX9_2 = SHX9_2(SHX10_2)
                          SHX10_2 = DecorGetBool
                          SHX11_2 = SHX13_1
                          SHX12_2 = "4ac0472477"
                          SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
                          SHX11_2 = CMG
                          SHX11_2 = SHX11_2.isDrawingCasinoChipsUI
                          SHX11_2 = SHX11_2()
                          if SHX11_2 then
                            SHX11_2 = CMG
                            SHX11_2 = SHX11_2.getChipsClientDisplayAmount
                            SHX11_2 = SHX11_2()
                            SHX11_2 = SHX11_2 > 0
                          end
                          SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
                          SHX3_2.menuItems = SHX4_2
                          SHX2_2(SHX3_2)
                        end
                      end
                    end
                end
              end
              else
                SHX2_2 = SHX14_1
                if 2 == SHX2_2 then
                  SHX2_2 = SHX13_1
                  if SHX2_2 ~= SHX1_2 then
                    SHX2_2 = Crosshair
                    SHX3_2 = true
                    SHX2_2(SHX3_2)
                    SHX2_2 = SHX27_1
                    SHX2_2 = SHX2_2()
                    if SHX2_2 then
                      SHX2_2 = SHX12_1
                      if false == SHX2_2 then
                        SHX2_2 = GetEntityModel
                        SHX3_2 = SHX13_1
                        SHX2_2 = SHX2_2(SHX3_2)
                        SHX3_2 = -665859588 == SHX2_2
                        SHX4_2 = CMG
                        SHX4_2 = SHX4_2.isWheelchairVehicle
                        if SHX4_2 then
                          SHX4_2 = CMG
                          SHX4_2 = SHX4_2.isWheelchairVehicle
                          SHX5_2 = SHX13_1
                          SHX4_2 = SHX4_2(SHX5_2)
                        end
                        SHX5_2 = CMG
                        SHX5_2 = SHX5_2.hasClientPermission
                        SHX6_2 = "nhs.onduty.permission"
                        SHX5_2 = SHX5_2(SHX6_2)
                        SHX6_2 = nil
                        if SHX3_2 and SHX5_2 then
                          SHX7_2 = {}
                          SHX8_2 = {}
                          SHX8_2.id = "removeStretcher"
                          SHX8_2.title = "Remove Stretcher"
                          SHX8_2.icon = "#stretcher"
                          SHX7_2[1] = SHX8_2
                          SHX6_2 = SHX7_2
                        else
                          if SHX4_2 and SHX5_2 then
                            SHX7_2 = CMG
                            SHX7_2 = SHX7_2.hasClientPermission
                            SHX8_2 = "doctor.permission"
                            SHX7_2 = SHX7_2(SHX8_2)
                            if SHX7_2 then
                              SHX7_2 = {}
                              SHX8_2 = {}
                              SHX8_2.id = "removeWheelchair"
                              SHX8_2.title = "Remove Wheelchair"
                              SHX8_2.icon = "#wheelchairSymbol"
                              SHX7_2[1] = SHX8_2
                              SHX6_2 = SHX7_2
                          end
                          else
                            SHX7_2 = SHX23_1
                            SHX8_2 = CMG
                            SHX8_2 = SHX8_2.hasClientPermission
                            SHX9_2 = "police.onduty.permission"
                            SHX8_2 = SHX8_2(SHX9_2)
                            if not SHX8_2 then
                              SHX8_2 = CMG
                              SHX8_2 = SHX8_2.hasClientPermission
                              SHX9_2 = "borderforce.onduty.permission"
                              SHX8_2 = SHX8_2(SHX9_2)
                            end
                            SHX9_2 = CMG
                            SHX9_2 = SHX9_2.hasClientPermission
                            SHX10_2 = "prisonguard.onduty.permission"
                            SHX9_2 = SHX9_2(SHX10_2)
                            SHX10_2 = CMG
                            SHX10_2 = SHX10_2.hasClientPermission
                            SHX11_2 = "aa.onduty.permission"
                            SHX10_2 = SHX10_2(SHX11_2)
                            SHX11_2 = SHX5_2
                            SHX12_2 = CMG
                            SHX12_2 = SHX12_2.hasClientGroup
                            SHX13_2 = "Vigilante"
                            SHX12_2 = SHX12_2(SHX13_2)
                            SHX13_2 = SHX13_1
                            SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
                            SHX6_2 = SHX7_2
                          end
                        end
                        SHX7_2 = true
                        SHX12_1 = SHX7_2
                        SHX7_2 = SetNuiFocus
                        SHX8_2 = true
                        SHX9_2 = true
                        SHX7_2(SHX8_2, SHX9_2)
                        SHX7_2 = SendNUIMessage
                        SHX8_2 = {}
                        SHX8_2.openRadialMenu = true
                        SHX8_2.type = "vehicle"
                        SHX9_2 = SHX13_1
                        SHX8_2.entityId = SHX9_2
                        SHX8_2.menuItems = SHX6_2
                        SHX7_2(SHX8_2)
                      end
                    end
                end
                else
                  SHX2_2 = SHX14_1
                  if 3 == SHX2_2 then
                    SHX2_2 = CMG
                    SHX3_2 = "getTrapperWarehouseShapeTestPickupPlantId"
                    SHX2_2 = SHX2_2[SHX3_2]
                    SHX3_2 = SHX13_1
                    SHX2_2 = SHX2_2(SHX3_2)
                    if SHX2_2 then
                      SHX3_2 = CMG
                      SHX3_2 = SHX3_2.isTrapperShelfRadialSuppressedForPlantId
                      SHX4_2 = SHX2_2
                      SHX3_2 = SHX3_2(SHX4_2)
                      if SHX3_2 then
                        SHX3_2 = Crosshair
                        SHX4_2 = false
                        SHX3_2(SHX4_2)
                    end
                    elseif SHX2_2 then
                      SHX3_2 = Crosshair
                      SHX4_2 = true
                      SHX3_2(SHX4_2)
                      SHX3_2 = SHX27_1
                      SHX3_2 = SHX3_2()
                      if SHX3_2 then
                        SHX3_2 = SHX12_1
                        if false == SHX3_2 then
                          SHX3_2 = true
                          SHX12_1 = SHX3_2
                          SHX3_2 = CMG
                          SHX3_2 = SHX3_2.openTrapperPickupRadial
                          SHX4_2 = SHX2_2
                          SHX5_2 = {}
                          SHX6_2 = {}
                          SHX6_2.id = "pickupTrappingItem"
                          SHX6_2.title = "Pick up"
                          SHX6_2.icon = "#trapperPickupPackage"
                          SHX5_2[1] = SHX6_2
                          SHX3_2(SHX4_2, SHX5_2)
                          SHX3_2 = SHX21_1
                          SHX3_2()
                        end
                      end
                    else
                      SHX3_2 = CMG
                      SHX3_2 = SHX3_2.hasClientPermission
                      SHX4_2 = "nhs.onduty.permission"
                      SHX3_2 = SHX3_2(SHX4_2)
                      if not SHX3_2 then
                        SHX3_2 = GetEntityModel
                        SHX4_2 = SHX13_1
                        SHX3_2 = SHX3_2(SHX4_2)
                        SHX4_2 = CMG
                        SHX4_2 = SHX4_2.isLootbagModel
                        SHX5_2 = SHX3_2
                        SHX4_2 = SHX4_2(SHX5_2)
                        if SHX4_2 then
                          SHX4_2 = Crosshair
                          SHX5_2 = true
                          SHX4_2(SHX5_2)
                          SHX4_2 = SHX27_1
                          SHX4_2 = SHX4_2()
                          if SHX4_2 then
                            SHX4_2 = DecorGetInt
                            SHX5_2 = SHX13_1
                            SHX6_2 = "5f7af1c5ce"
                            SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
                            SHX5_2 = DecorExistOn
                            SHX6_2 = SHX13_1
                            SHX7_2 = "b1457c1a26"
                            SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
                            if SHX5_2 then
                              SHX5_2 = DecorGetBool
                              SHX6_2 = SHX13_1
                              SHX7_2 = "b1457c1a26"
                              SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
                            end
                            if not SHX5_2 then
                              SHX6_2 = TriggerEvent
                              SHX7_2 = "56e6172373"
                              SHX8_2 = false
                              SHX6_2(SHX7_2, SHX8_2)
                            end
                            SHX6_2 = SHX29_1
                            function SHX7_2()
                              -- [AI CLEANUP] Decompiled Lua - Fix these:
                              -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                              -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                              -- 3. Replace goto/label with while/repeat-until where possible
                              -- 4. Remove decompiler comments, add meaningful ones
                              -- 5. Fix indentation and formatting
                              
                              local SHX0_3, SHX1_3, SHX2_3
                              SHX0_3 = TriggerServerEvent
                              SHX1_3 = "bdaf15af25"
                              SHX2_3 = SHX4_2
                              SHX0_3(SHX1_3, SHX2_3)
                            end
                            SHX8_2 = SHX13_1
                            SHX6_2(SHX7_2, SHX8_2)
                            SHX6_2 = SHX21_1
                            SHX6_2()
                          end
                        elseif 290621560 == SHX3_2 then
                          SHX4_2 = Crosshair
                          SHX5_2 = true
                          SHX4_2(SHX5_2)
                          SHX4_2 = SHX27_1
                          SHX4_2 = SHX4_2()
                          if SHX4_2 then
                            SHX4_2 = DecorGetInt
                            SHX5_2 = SHX13_1
                            SHX6_2 = "5f7af1c5ce"
                            SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
                            SHX5_2 = TriggerEvent
                            SHX6_2 = "56e6172373"
                            SHX7_2 = false
                            SHX5_2(SHX6_2, SHX7_2)
                            SHX5_2 = TriggerServerEvent
                            SHX6_2 = "17e6b6a62a"
                            SHX7_2 = SHX4_2
                            SHX5_2(SHX6_2, SHX7_2)
                            SHX5_2 = SHX21_1
                            SHX5_2()
                          end
                        elseif -1422265815 == SHX3_2 then
                          SHX4_2 = Crosshair
                          SHX5_2 = true
                          SHX4_2(SHX5_2)
                          SHX4_2 = SHX27_1
                          SHX4_2 = SHX4_2()
                          if SHX4_2 then
                            SHX4_2 = DecorGetInt
                            SHX5_2 = SHX13_1
                            SHX6_2 = "5f7af1c5ce"
                            SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
                            SHX5_2 = TriggerEvent
                            SHX6_2 = "56e6172373"
                            SHX7_2 = false
                            SHX5_2(SHX6_2, SHX7_2)
                            SHX5_2 = SHX29_1
                            function SHX6_2()
                              -- [AI CLEANUP] Decompiled Lua - Fix these:
                              -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                              -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                              -- 3. Replace goto/label with while/repeat-until where possible
                              -- 4. Remove decompiler comments, add meaningful ones
                              -- 5. Fix indentation and formatting
                              
                              local SHX0_3, SHX1_3, SHX2_3
                              SHX0_3 = TriggerServerEvent
                              SHX1_3 = "5891aba85f"
                              SHX2_3 = SHX4_2
                              SHX0_3(SHX1_3, SHX2_3)
                            end
                            SHX7_2 = SHX13_1
                            SHX5_2(SHX6_2, SHX7_2)
                            SHX5_2 = SHX21_1
                            SHX5_2()
                          end
                        elseif 772559902 == SHX3_2 then
                          SHX4_2 = Crosshair
                          SHX5_2 = true
                          SHX4_2(SHX5_2)
                          SHX4_2 = SHX27_1
                          SHX4_2 = SHX4_2()
                          if SHX4_2 then
                            SHX4_2 = DecorGetInt
                            SHX5_2 = SHX13_1
                            SHX6_2 = "5f7af1c5ce"
                            SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
                            SHX5_2 = SHX29_1
                            function SHX6_2()
                              -- [AI CLEANUP] Decompiled Lua - Fix these:
                              -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                              -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                              -- 3. Replace goto/label with while/repeat-until where possible
                              -- 4. Remove decompiler comments, add meaningful ones
                              -- 5. Fix indentation and formatting
                              
                              local SHX0_3, SHX1_3, SHX2_3
                              SHX0_3 = TriggerServerEvent
                              SHX1_3 = "5891aba85f"
                              SHX2_3 = SHX4_2
                              SHX0_3(SHX1_3, SHX2_3)
                            end
                            SHX7_2 = SHX13_1
                            SHX5_2(SHX6_2, SHX7_2)
                            SHX5_2 = SHX21_1
                            SHX5_2()
                          end
                        elseif 1879598094 == SHX3_2 then
                          SHX4_2 = Crosshair
                          SHX5_2 = true
                          SHX4_2(SHX5_2)
                          SHX4_2 = SHX27_1
                          SHX4_2 = SHX4_2()
                          if SHX4_2 then
                            SHX4_2 = DecorGetInt
                            SHX5_2 = SHX13_1
                            SHX6_2 = "f1f74bea1b"
                            SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
                            SHX5_2 = TriggerServerEvent
                            SHX6_2 = "fa763c2c8a"
                            SHX7_2 = SHX4_2
                            SHX5_2(SHX6_2, SHX7_2)
                            SHX5_2 = SHX21_1
                            SHX5_2()
                          end
                        else
                          SHX4_2 = Crosshair
                          SHX5_2 = false
                          SHX4_2(SHX5_2)
                        end
                      else
                        SHX3_2 = Crosshair
                        SHX4_2 = false
                        SHX3_2(SHX4_2)
                      end
                    end
                  else
                    SHX2_2 = Crosshair
                    SHX3_2 = false
                    SHX2_2(SHX3_2)
                  end
                end
              end
          end
        end
        else
          SHX2_2 = Crosshair
          SHX3_2 = false
          SHX2_2(SHX3_2)
        end
      end
  end
  else
    SHX2_2 = Crosshair
    SHX3_2 = false
    SHX2_2(SHX3_2)
  end
  SHX2_2 = SHX15_1
  if not SHX2_2 then
    SHX2_2 = IsControlJustPressed
    SHX3_2 = 0
    SHX4_2 = 38
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if SHX2_2 then
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.isMechanicDebrisCarryingScrap
      SHX2_2 = SHX2_2()
      if not SHX2_2 then
        SHX2_2 = CMG
        SHX2_2 = SHX2_2.isAtArenaWagerHub
        SHX2_2 = SHX2_2()
        if not SHX2_2 then
          SHX2_2 = Citizen
          SHX2_2 = SHX2_2.CreateThread
          SHX3_2 = SHX30_1
          SHX2_2(SHX3_2)
        end
      end
    end
  end
end
SHX32_1 = CMG
SHX32_1 = SHX32_1.createThreadOnTick
SHX33_1 = SHX31_1
SHX34_1 = "Radial Menu"
SHX32_1(SHX33_1, SHX34_1)
function SHX32_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX2_2 = GetEntityCoords
  SHX3_2 = SHX1_2
  SHX4_2 = true
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = GetOffsetFromEntityInWorldCoords
  SHX4_2 = SHX1_2
  SHX5_2 = 0.0
  SHX6_2 = SHX0_2
  SHX7_2 = 0.0
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = _ENV
  SHX5_2 = "StartExpensiveSynchronousShapeTestLosProbe"
  SHX4_2 = SHX4_2[SHX5_2]
  SHX5_2 = SHX2_2.x
  SHX6_2 = SHX2_2.y
  SHX7_2 = SHX2_2.z
  SHX8_2 = SHX3_2.x
  SHX9_2 = SHX3_2.y
  SHX10_2 = SHX3_2.z
  SHX11_2 = -1
  SHX12_2 = SHX1_2
  SHX13_2 = 0
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX5_2 = GetShapeTestResult
  SHX6_2 = SHX4_2
  SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX5_2(SHX6_2)
  return SHX9_2
end
GetEntInFrontOfPlayer = SHX32_1
function SHX32_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX1_2 = GetGameplayCamRot
  SHX2_2 = 2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = GetGameplayCamCoord
  SHX2_2 = SHX2_2()
  SHX3_2 = SHX1_2.z
  SHX3_2 = SHX3_2 * 0.0174532924
  SHX4_2 = SHX1_2.x
  SHX4_2 = SHX4_2 * 0.0174532924
  SHX5_2 = math
  SHX5_2 = SHX5_2.abs
  SHX6_2 = math
  SHX6_2 = SHX6_2.cos
  SHX7_2 = SHX4_2
  SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX6_2(SHX7_2)
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX6_2 = SHX2_2.x
  SHX7_2 = math
  SHX7_2 = SHX7_2.sin
  SHX8_2 = SHX3_2
  SHX7_2 = SHX7_2(SHX8_2)
  SHX7_2 = -SHX7_2
  SHX8_2 = SHX5_2 + SHX0_2
  SHX7_2 = SHX7_2 * SHX8_2
  SHX6_2 = SHX6_2 + SHX7_2
  SHX7_2 = SHX2_2.y
  SHX8_2 = math
  SHX8_2 = SHX8_2.cos
  SHX9_2 = SHX3_2
  SHX8_2 = SHX8_2(SHX9_2)
  SHX9_2 = SHX5_2 + SHX0_2
  SHX8_2 = SHX8_2 * SHX9_2
  SHX7_2 = SHX7_2 + SHX8_2
  SHX8_2 = SHX2_2.z
  SHX9_2 = math
  SHX9_2 = SHX9_2.sin
  SHX10_2 = SHX4_2
  SHX9_2 = SHX9_2(SHX10_2)
  SHX9_2 = SHX9_2 * 8.0
  SHX8_2 = SHX8_2 + SHX9_2
  SHX9_2 = SHX6_2
  SHX10_2 = SHX7_2
  SHX11_2 = SHX8_2
  return SHX9_2, SHX10_2, SHX11_2
end
GetCoordsFromCam = SHX32_1
function SHX32_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX2_2 = GetGameplayCamCoord
  SHX2_2 = SHX2_2()
  SHX3_2 = GetCoordsFromCam
  SHX4_2 = SHX0_2
  SHX3_2, SHX4_2, SHX5_2 = SHX3_2(SHX4_2)
  SHX6_2 = _ENV
  SHX7_2 = "StartExpensiveSynchronousShapeTestLosProbe"
  SHX6_2 = SHX6_2[SHX7_2]
  SHX7_2 = SHX2_2.x
  SHX8_2 = SHX2_2.y
  SHX9_2 = SHX2_2.z
  SHX10_2 = SHX3_2
  SHX11_2 = SHX4_2
  SHX12_2 = SHX5_2
  SHX13_2 = -1
  SHX14_2 = SHX1_2
  SHX15_2 = 0
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX7_2 = GetShapeTestResult
  SHX8_2 = SHX6_2
  SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX7_2(SHX8_2)
  SHX12_2 = SHX11_2
  SHX13_2 = SHX3_2
  SHX14_2 = SHX4_2
  SHX15_2 = SHX5_2
  return SHX12_2, SHX13_2, SHX14_2, SHX15_2
end
Target = SHX32_1
function SHX32_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerEvent
  SHX1_2 = "d5c231fe44"
  SHX0_2(SHX1_2)
end
SHX33_1 = nil
function SHX34_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX33_1 = SHX0_2
  SHX1_2 = SetVehicleDoorOpen
  SHX2_2 = SHX0_2
  SHX3_2 = 5
  SHX4_2 = true
  SHX5_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = TriggerEvent
  SHX2_2 = "a7ce3135a0"
  SHX1_2(SHX2_2)
  SHX1_2 = SendNUIMessage
  SHX2_2 = {}
  SHX2_2.closeRadialMenu = true
  SHX1_2(SHX2_2)
  SHX1_2 = GetSoundId
  SHX1_2 = SHX1_2()
  SHX2_2 = PlaySoundFrontend
  SHX3_2 = SHX1_2
  SHX4_2 = "boot_pop"
  SHX5_2 = "dlc_vw_body_disposal_sounds"
  SHX6_2 = true
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = ReleaseSoundId
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
end
SHX35_1 = RegisterNetEvent
SHX36_1 = "2a70dddd80"
SHX35_1(SHX36_1)
SHX35_1 = AddEventHandler
SHX36_1 = "2a70dddd80"
function SHX37_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX33_1
  if SHX0_2 then
    SHX0_2 = SetVehicleDoorShut
    SHX1_2 = SHX33_1
    SHX2_2 = 5
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  end
end
SHX35_1(SHX36_1, SHX37_1)
function SHX35_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = GetEntityHealth
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 > 102 then
    SHX2_2 = IsEntityDead
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if not SHX2_2 then
      SHX2_2 = TaskStartScenarioInPlace
      SHX3_2 = SHX1_2
      SHX4_2 = "world_human_maid_clean"
      SHX5_2 = 0
      SHX6_2 = true
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      SHX2_2 = Wait
      SHX3_2 = 10000
      SHX2_2(SHX3_2)
      SHX2_2 = SetVehicleDirtLevel
      SHX3_2 = SHX0_2
      SHX4_2 = 0.0
      SHX2_2(SHX3_2, SHX4_2)
      SHX2_2 = SetVehicleUndriveable
      SHX3_2 = SHX0_2
      SHX4_2 = false
      SHX2_2(SHX3_2, SHX4_2)
      SHX2_2 = ClearPedSecondaryTask
      SHX3_2 = SHX1_2
      SHX2_2(SHX3_2)
      SHX2_2 = ClearPedTasks
      SHX3_2 = SHX1_2
      SHX2_2(SHX3_2)
    end
  end
end
function SHX36_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = TriggerEvent
  SHX2_2 = "1631601e81"
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
end
function SHX37_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = NetworkGetEntityIsNetworked
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = NetworkGetNetworkIdFromEntity
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if 0 ~= SHX1_2 then
      SHX2_2 = TriggerServerEvent
      SHX3_2 = "aa1fa541c3"
      SHX4_2 = SHX0_2
      SHX5_2 = SHX1_2
      SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    end
  end
end
SHX38_1 = false
function SHX39_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX38_1
  if not SHX1_2 then
    SHX1_2 = SetVehicleDoorOpen
    SHX2_2 = SHX0_2
    SHX3_2 = 4
    SHX4_2 = false
    SHX5_2 = false
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
    SHX1_2 = true
    SHX38_1 = SHX1_2
  else
    SHX1_2 = SetVehicleDoorShut
    SHX2_2 = SHX0_2
    SHX3_2 = 4
    SHX4_2 = false
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = false
    SHX38_1 = SHX1_2
  end
end
function SHX40_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.hasClientPermission
  SHX2_2 = "police.onduty.permission"
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.hasClientPermission
    SHX2_2 = "borderforce.onduty.permission"
    SHX1_2 = SHX1_2(SHX2_2)
    if not SHX1_2 then
      goto SHX_LABEL_17
    end
  end
  SHX1_2 = TriggerEvent
  SHX2_2 = "918c11c450"
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
  -- [FIX IF ERROR] Move ::SHX_LABEL_17:: outside nested blocks until all 'goto SHX_LABEL_17' can see it
  ::SHX_LABEL_17::
end
function SHX41_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.hasClientPermission
  SHX2_2 = "prisonguard.onduty.permission"
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.isPlayerNearPrison
    SHX1_2 = SHX1_2()
    if not SHX1_2 then
      SHX1_2 = SHX5_1
      SHX2_2 = SHX0_2
      SHX3_2 = "Prison Service Vehicles"
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
      if not SHX1_2 then
        SHX1_2 = notify
        SHX2_2 = "~r~You can not impound outside of the prison"
        SHX1_2(SHX2_2)
        return
      end
    end
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.hasClientPermission
  SHX2_2 = "nhs.onduty.permission"
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = SHX5_1
    SHX2_2 = SHX0_2
    SHX3_2 = "Health Service Vehicles"
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    if not SHX1_2 then
      SHX1_2 = SHX5_1
      SHX2_2 = SHX0_2
      SHX3_2 = "Health Service Helicopters"
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
      if not SHX1_2 then
        SHX1_2 = notify
        SHX2_2 = "~r~You can only impound NHS vehicles."
        SHX1_2(SHX2_2)
        return
      end
    end
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.hasClientPermission
  SHX2_2 = "police.onduty.permission"
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.hasClientPermission
    SHX2_2 = "prisonguard.onduty.permission"
    SHX1_2 = SHX1_2(SHX2_2)
    if not SHX1_2 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.hasClientPermission
      SHX2_2 = "borderforce.onduty.permission"
      SHX1_2 = SHX1_2(SHX2_2)
      if not SHX1_2 then
        SHX1_2 = CMG
        SHX1_2 = SHX1_2.hasClientPermission
        SHX2_2 = "nhs.onduty.permission"
        SHX1_2 = SHX1_2(SHX2_2)
        if not SHX1_2 then
          goto SHX_LABEL_124
        end
      end
    end
  end
  SHX1_2 = tonumber
  SHX2_2 = DecorGetInt
  SHX3_2 = SHX0_2
  SHX4_2 = "ac76c9d452"
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX2_2 = DecorGetInt
  SHX3_2 = SHX0_2
  SHX4_2 = "0a6cf607ed"
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  if SHX1_2 and SHX1_2 > 0 and SHX2_2 > 0 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.impoundVehicleOptions
    SHX4_2 = SHX1_2
    SHX5_2 = GetEntityModel
    SHX6_2 = SHX0_2
    SHX5_2 = SHX5_2(SHX6_2)
    SHX6_2 = VehToNet
    SHX7_2 = SHX0_2
    SHX6_2 = SHX6_2(SHX7_2)
    SHX7_2 = SHX0_2
    SHX8_2 = SHX2_2
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  else
    SHX3_2 = TriggerEvent
    SHX4_2 = "408b84e9ad"
    SHX5_2 = "~r~Vehicle is not owned by anyone"
    SHX3_2(SHX4_2, SHX5_2)
    SHX3_2 = GetPedInVehicleSeat
    SHX4_2 = SHX0_2
    SHX5_2 = -1
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
    if 0 == SHX3_2 then
      SHX3_2 = GetPedInVehicleSeat
      SHX4_2 = SHX0_2
      SHX5_2 = 0
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
      if 0 == SHX3_2 then
        SHX3_2 = NetworkGetEntityIsNetworked
        SHX4_2 = SHX0_2
        SHX3_2 = SHX3_2(SHX4_2)
        if SHX3_2 then
          SHX3_2 = TriggerServerEvent
          SHX4_2 = "90508c11e5"
          SHX5_2 = NetworkGetNetworkIdFromEntity
          SHX6_2 = SHX0_2
          SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
          SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
        end
      end
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_124:: outside nested blocks until all 'goto SHX_LABEL_124' can see it
  ::SHX_LABEL_124::
end
function SHX42_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = GetPlayerByEntityID
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    return
  end
  SHX2_2 = GetPlayerServerId
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 > 0 then
    SHX3_2 = GetSelectedPedWeapon
    SHX4_2 = PlayerPedId
    SHX4_2, SHX5_2 = SHX4_2()
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
    if -1569615261 ~= SHX3_2 then
      SHX3_2 = TriggerServerEvent
      SHX4_2 = "42f4c2df43"
      SHX5_2 = SHX2_2
      SHX3_2(SHX4_2, SHX5_2)
    else
      SHX3_2 = TriggerEvent
      SHX4_2 = "408b84e9ad"
      SHX5_2 = "~r~You need a weapon in your hands."
      SHX3_2(SHX4_2, SHX5_2)
    end
  end
end
function SHX43_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = GetPedInVehicleSeat
  SHX2_2 = SHX0_2
  SHX3_2 = -1
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if 0 ~= SHX1_2 then
    SHX2_2 = GetPlayerByEntityID
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if not SHX2_2 then
      return
    end
    SHX3_2 = GetPlayerServerId
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 > 0 then
      SHX4_2 = TriggerServerEvent
      SHX5_2 = "2eb52f2bce"
      SHX6_2 = SHX3_2
      SHX4_2(SHX5_2, SHX6_2)
    end
  end
end
function SHX44_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = GetPlayerByEntityID
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    return
  end
  SHX2_2 = GetPlayerServerId
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 > 0 then
    SHX3_2 = TriggerServerEvent
    SHX4_2 = "2eb52f2bce"
    SHX5_2 = SHX2_2
    SHX3_2(SHX4_2, SHX5_2)
  end
end
function SHX45_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = GetPlayerByEntityID
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    return
  end
  SHX2_2 = GetPlayerServerId
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 > 0 then
    SHX3_2 = TriggerServerEvent
    SHX4_2 = "80473a9734"
    SHX5_2 = SHX2_2
    SHX3_2(SHX4_2, SHX5_2)
  end
end
function SHX46_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.canAnim
  SHX1_2 = SHX1_2()
  if not SHX1_2 then
    return
  end
  SHX1_2 = GetEntityHealth
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 <= 102 then
    SHX1_2 = TriggerEvent
    SHX2_2 = "408b84e9ad"
    SHX3_2 = "~r~You can not search a player who is dead."
    SHX1_2(SHX2_2, SHX3_2)
    return
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.isPlayerInRedZone
  SHX1_2 = SHX1_2()
  if SHX1_2 then
    SHX1_2 = notify
    SHX2_2 = "~r~You can not search players while in a red zone."
    SHX1_2(SHX2_2)
    SHX1_2 = true
    return SHX1_2
  end
  SHX1_2 = GetPlayerByEntityID
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    return
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.hasClientPermission
  SHX3_2 = "police.onduty.permission"
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.hasClientPermission
    SHX3_2 = "prisonguard.onduty.permission"
    SHX2_2 = SHX2_2(SHX3_2)
    if not SHX2_2 then
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.hasClientPermission
      SHX3_2 = "borderforce.onduty.permission"
      SHX2_2 = SHX2_2(SHX3_2)
      if not SHX2_2 then
        SHX2_2 = CMG
        SHX2_2 = SHX2_2.hasClientGroup
        SHX3_2 = "Vigilante"
        SHX2_2 = SHX2_2(SHX3_2)
        if not SHX2_2 then
          SHX2_2 = GetPlayerPed
          SHX3_2 = SHX1_2
          SHX2_2 = SHX2_2(SHX3_2)
          if nil == SHX2_2 then
            goto SHX_LABEL_110
          end
          SHX3_2 = IsEntityPlayingAnim
          SHX4_2 = SHX2_2
          SHX5_2 = "missminuteman_1ig_2"
          SHX6_2 = "handsup_enter"
          SHX7_2 = 3
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          if not SHX3_2 then
            SHX3_2 = IsEntityPlayingAnim
            SHX4_2 = SHX2_2
            SHX5_2 = "random@arrests"
            SHX6_2 = "idle_2_hands_up"
            SHX7_2 = 3
            SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
            if not SHX3_2 then
              SHX3_2 = IsEntityPlayingAnim
              SHX4_2 = SHX2_2
              SHX5_2 = "random@arrests@busted"
              SHX6_2 = "idle_a"
              SHX7_2 = 3
              SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
              if not SHX3_2 then
                goto SHX_LABEL_96
              end
            end
          end
          SHX3_2 = GetPlayerServerId
          SHX4_2 = SHX1_2
          SHX3_2 = SHX3_2(SHX4_2)
          if SHX3_2 > 0 then
            SHX4_2 = TriggerServerEvent
            SHX5_2 = "f54bde726f"
            SHX6_2 = SHX3_2
            SHX4_2(SHX5_2, SHX6_2)
            goto SHX_LABEL_110
            -- [FIX IF ERROR] Move ::SHX_LABEL_96:: outside nested blocks until all 'goto SHX_LABEL_96' can see it
            ::SHX_LABEL_96::
            SHX3_2 = TriggerEvent
            SHX4_2 = "408b84e9ad"
            SHX5_2 = "~r~Player must have their hands up or be on their knees!"
            SHX3_2(SHX4_2, SHX5_2)
          end
      end
    end
  end
  else
    SHX2_2 = GetPlayerServerId
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 > 0 then
      SHX3_2 = TriggerServerEvent
      SHX4_2 = "f54bde726f"
      SHX5_2 = SHX2_2
      SHX3_2(SHX4_2, SHX5_2)
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_110:: outside nested blocks until all 'goto SHX_LABEL_110' can see it
  ::SHX_LABEL_110::
end
function SHX47_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = GetPlayerByEntityID
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    return
  end
  SHX2_2 = GetPlayerServerId
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 > 0 then
    SHX3_2 = TriggerServerEvent
    SHX4_2 = "6583aad871"
    SHX5_2 = SHX2_2
    SHX3_2(SHX4_2, SHX5_2)
  end
end
function SHX48_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.hasClientPermission
  SHX2_2 = "police.onduty.permission"
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.hasClientPermission
    SHX2_2 = "prisonguard.onduty.permission"
    SHX1_2 = SHX1_2(SHX2_2)
    if not SHX1_2 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.hasClientPermission
      SHX2_2 = "borderforce.onduty.permission"
      SHX1_2 = SHX1_2(SHX2_2)
      if not SHX1_2 then
        SHX1_2 = CMG
        SHX1_2 = SHX1_2.hasClientGroup
        SHX2_2 = "Vigilante"
        SHX1_2 = SHX1_2(SHX2_2)
        if not SHX1_2 then
          goto SHX_LABEL_39
        end
      end
    end
  end
  SHX1_2 = GetPlayerByEntityID
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    return
  end
  SHX2_2 = GetPlayerServerId
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 > 0 then
    SHX3_2 = ExecuteCommand
    SHX4_2 = "cuff"
    SHX3_2(SHX4_2)
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_39:: outside nested blocks until all 'goto SHX_LABEL_39' can see it
  ::SHX_LABEL_39::
end
function SHX49_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.hasClientPermission
  SHX2_2 = "nhs.onduty.permission"
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = GetPlayerByEntityID
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if not SHX1_2 then
      return
    end
    SHX2_2 = GetPlayerServerId
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 > 0 then
      SHX3_2 = CMG
      SHX3_2 = SHX3_2.startNhsDragFromRadial
      if SHX3_2 then
        SHX3_2 = CMG
        SHX3_2 = SHX3_2.startNhsDragFromRadial
        SHX4_2 = SHX2_2
        SHX3_2(SHX4_2)
      end
    end
  end
end
function SHX50_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.hasClientPermission
  SHX2_2 = "police.onduty.permission"
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.hasClientPermission
    SHX2_2 = "prisonguard.onduty.permission"
    SHX1_2 = SHX1_2(SHX2_2)
    if not SHX1_2 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.hasClientPermission
      SHX2_2 = "borderforce.onduty.permission"
      SHX1_2 = SHX1_2(SHX2_2)
      if not SHX1_2 then
        SHX1_2 = CMG
        SHX1_2 = SHX1_2.hasClientGroup
        SHX2_2 = "Vigilante"
        SHX1_2 = SHX1_2(SHX2_2)
        if not SHX1_2 then
          goto SHX_LABEL_40
        end
      end
    end
  end
  SHX1_2 = GetPlayerByEntityID
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    return
  end
  SHX2_2 = GetPlayerServerId
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 > 0 then
    SHX3_2 = TriggerServerEvent
    SHX4_2 = "c5274515e4"
    SHX5_2 = SHX2_2
    SHX3_2(SHX4_2, SHX5_2)
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_40:: outside nested blocks until all 'goto SHX_LABEL_40' can see it
  ::SHX_LABEL_40::
end
function SHX51_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.hasClientPermission
  SHX2_2 = "police.onduty.permission"
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.hasClientPermission
    SHX2_2 = "prisonguard.onduty.permission"
    SHX1_2 = SHX1_2(SHX2_2)
    if not SHX1_2 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.hasClientPermission
      SHX2_2 = "borderforce.onduty.permission"
      SHX1_2 = SHX1_2(SHX2_2)
      if not SHX1_2 then
        SHX1_2 = CMG
        SHX1_2 = SHX1_2.hasClientGroup
        SHX2_2 = "Vigilante"
        SHX1_2 = SHX1_2(SHX2_2)
        if not SHX1_2 then
          goto SHX_LABEL_40
        end
      end
    end
  end
  SHX1_2 = GetPlayerByEntityID
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    return
  end
  SHX2_2 = GetPlayerServerId
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 > 0 then
    SHX3_2 = TriggerServerEvent
    SHX4_2 = "c2eb9806b2"
    SHX5_2 = SHX2_2
    SHX3_2(SHX4_2, SHX5_2)
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_40:: outside nested blocks until all 'goto SHX_LABEL_40' can see it
  ::SHX_LABEL_40::
end
function SHX52_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = GetPlayerByEntityID
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    return
  end
  SHX2_2 = GetPlayerServerId
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 > 0 then
    SHX3_2 = TriggerServerEvent
    SHX4_2 = "8fd6319695"
    SHX5_2 = SHX2_2
    SHX3_2(SHX4_2, SHX5_2)
  end
end
function SHX53_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = GetPlayerByEntityID
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    return
  end
  SHX2_2 = GetPlayerServerId
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 <= 0 then
    return
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.hasClientPermission
  SHX4_2 = "police.onduty.permission"
  SHX3_2 = SHX3_2(SHX4_2)
  if not SHX3_2 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.hasClientPermission
    SHX4_2 = "prisonguard.onduty.permission"
    SHX3_2 = SHX3_2(SHX4_2)
    if not SHX3_2 then
      SHX3_2 = CMG
      SHX3_2 = SHX3_2.hasClientPermission
      SHX4_2 = "borderforce.onduty.permission"
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        goto SHX_LABEL_40
      end
    end
  end
  SHX3_2 = TriggerServerEvent
  SHX4_2 = "61172cd221"
  SHX5_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = TriggerServerEvent
  SHX4_2 = "6915ac5021"
  SHX5_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2)
  goto SHX_LABEL_50
  -- [FIX IF ERROR] Move ::SHX_LABEL_40:: outside nested blocks until all 'goto SHX_LABEL_40' can see it
  ::SHX_LABEL_40::
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.hasClientGroup
  SHX4_2 = "Vigilante"
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = TriggerServerEvent
    SHX4_2 = "6c006240e4"
    SHX5_2 = SHX2_2
    SHX3_2(SHX4_2, SHX5_2)
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_50:: outside nested blocks until all 'goto SHX_LABEL_50' can see it
  ::SHX_LABEL_50::
end
function SHX54_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.hasClientPermission
  SHX2_2 = "police.onduty.permission"
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.hasClientPermission
    SHX2_2 = "prisonguard.onduty.permission"
    SHX1_2 = SHX1_2(SHX2_2)
    if not SHX1_2 then
      goto SHX_LABEL_28
    end
  end
  SHX1_2 = GetPlayerByEntityID
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    return
  end
  SHX2_2 = GetPlayerServerId
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 > 0 then
    SHX3_2 = TriggerServerEvent
    SHX4_2 = "227b779c06"
    SHX5_2 = SHX2_2
    SHX3_2(SHX4_2, SHX5_2)
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_28:: outside nested blocks until all 'goto SHX_LABEL_28' can see it
  ::SHX_LABEL_28::
end
function SHX55_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.hasClientPermission
  SHX2_2 = "police.onduty.permission"
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    return
  end
  SHX1_2 = GetPlayerByEntityID
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    return
  end
  SHX2_2 = GetPlayerServerId
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 <= 0 then
    return
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.clientGetUserIdFromSource
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if not SHX3_2 or 0 == SHX3_2 then
    SHX4_2 = notify
    SHX5_2 = "~r~Could not resolve target player."
    SHX4_2(SHX5_2)
    return
  end
  SHX4_2 = TriggerServerEvent
  SHX5_2 = "a12d48ef57"
  SHX6_2 = SHX3_2
  SHX4_2(SHX5_2, SHX6_2)
end
function SHX56_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.hasClientPermission
  SHX2_2 = "police.onduty.permission"
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.hasClientPermission
    SHX2_2 = "prisonguard.onduty.permission"
    SHX1_2 = SHX1_2(SHX2_2)
    if not SHX1_2 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.hasClientPermission
      SHX2_2 = "borderforce.onduty.permission"
      SHX1_2 = SHX1_2(SHX2_2)
      if not SHX1_2 then
        goto SHX_LABEL_34
      end
    end
  end
  SHX1_2 = GetPlayerByEntityID
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    return
  end
  SHX2_2 = GetPlayerServerId
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 > 0 then
    SHX3_2 = TriggerServerEvent
    SHX4_2 = "61172cd221"
    SHX5_2 = SHX2_2
    SHX3_2(SHX4_2, SHX5_2)
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_34:: outside nested blocks until all 'goto SHX_LABEL_34' can see it
  ::SHX_LABEL_34::
end
function SHX57_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.hasClientPermission
  SHX2_2 = "police.onduty.permission"
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.hasClientPermission
    SHX2_2 = "prisonguard.onduty.permission"
    SHX1_2 = SHX1_2(SHX2_2)
    if not SHX1_2 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.hasClientPermission
      SHX2_2 = "borderforce.onduty.permission"
      SHX1_2 = SHX1_2(SHX2_2)
      if not SHX1_2 then
        goto SHX_LABEL_34
      end
    end
  end
  SHX1_2 = GetPlayerByEntityID
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    return
  end
  SHX2_2 = GetPlayerServerId
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 > 0 then
    SHX3_2 = TriggerServerEvent
    SHX4_2 = "05699b6c7f"
    SHX5_2 = SHX2_2
    SHX3_2(SHX4_2, SHX5_2)
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_34:: outside nested blocks until all 'goto SHX_LABEL_34' can see it
  ::SHX_LABEL_34::
end
function SHX58_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = GetPlayerByEntityID
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    return
  end
  SHX2_2 = GetPlayerServerId
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 <= 0 then
    return
  end
  SHX3_2 = DecorGetBool
  SHX4_2 = SHX0_2
  SHX5_2 = "4ac0472477"
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  if SHX3_2 then
    SHX3_2 = TriggerServerEvent
    SHX4_2 = "eb96303226"
    SHX5_2 = SHX2_2
    SHX3_2(SHX4_2, SHX5_2)
  else
    SHX3_2 = TriggerServerEvent
    SHX4_2 = "a02d917ea8"
    SHX5_2 = SHX2_2
    SHX3_2(SHX4_2, SHX5_2)
  end
end
function SHX59_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = GetPlayerByEntityID
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    return
  end
  SHX2_2 = GetPlayerServerId
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 <= 0 then
    return
  end
  SHX3_2 = TriggerServerEvent
  SHX4_2 = "cdcf103ded"
  SHX5_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2)
end
function SHX60_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = GetPlayerByEntityID
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    return
  end
  SHX2_2 = GetPlayerServerId
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 <= 0 then
    return
  end
  SHX3_2 = TriggerServerEvent
  SHX4_2 = "a91c36f550"
  SHX5_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2)
end
function SHX61_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX1_2 = IsEntityAVehicle
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    return
  end
  SHX1_2 = 0
  SHX2_2 = 10.0
  SHX3_2 = GetVehicleModelNumberOfSeats
  SHX4_2 = GetEntityModel
  SHX5_2 = SHX0_2
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX4_2(SHX5_2)
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX4_2 = -1
  SHX5_2 = SHX3_2 - 2
  SHX6_2 = 1
  for SHX7_2 = SHX4_2, SHX5_2, SHX6_2 do
    SHX8_2 = GetPedInVehicleSeat
    SHX9_2 = SHX0_2
    SHX10_2 = SHX7_2
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
    if 0 ~= SHX8_2 then
      SHX9_2 = GetPedBoneIndex
      SHX10_2 = SHX8_2
      SHX11_2 = 0
      SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
      if SHX9_2 > -1 then
        SHX10_2 = GetWorldPositionOfEntityBone
        SHX11_2 = SHX8_2
        SHX12_2 = SHX9_2
        SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
        SHX11_2 = CMG
        SHX11_2 = SHX11_2.getPlayerCoords
        SHX11_2 = SHX11_2()
        SHX10_2 = SHX10_2 - SHX11_2
        SHX10_2 = #SHX10_2
        if SHX2_2 > SHX10_2 then
          SHX1_2 = SHX8_2
          SHX2_2 = SHX10_2
        end
      end
    end
  end
  if 0 == SHX1_2 then
    SHX4_2 = notify
    SHX5_2 = "~r~No player nearby to pull out vehicle."
    SHX4_2(SHX5_2)
    return
  end
  SHX4_2 = NetworkGetPlayerIndexFromPed
  SHX5_2 = SHX1_2
  SHX4_2 = SHX4_2(SHX5_2)
  if SHX4_2 >= 0 then
    SHX5_2 = GetPlayerServerId
    SHX6_2 = SHX4_2
    SHX5_2 = SHX5_2(SHX6_2)
    if SHX5_2 > 0 then
      SHX6_2 = TriggerServerEvent
      SHX7_2 = "1fccdc61f1"
      SHX8_2 = SHX5_2
      SHX6_2(SHX7_2, SHX8_2)
    end
  end
end
SHX62_1 = RegisterNUICallback
SHX63_1 = "radialClick"
function SHX64_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = SHX0_2.itemid
  SHX2_2 = SHX0_2.entity
  if "pickupTrappingItem" == SHX1_2 then
    SHX3_2 = SHX0_2.trapperPlantId
    if SHX3_2 then
      SHX4_2 = type
      SHX5_2 = SHX3_2
      SHX4_2 = SHX4_2(SHX5_2)
      if "string" == SHX4_2 then
        SHX4_2 = TriggerServerEvent
        SHX5_2 = "b8b99c63a7"
        SHX6_2 = SHX3_2
        SHX4_2(SHX5_2, SHX6_2)
      end
    end
    return
  end
  SHX3_2 = IsPedInAnyVehicle
  SHX4_2 = PlayerPedId
  SHX4_2 = SHX4_2()
  SHX5_2 = true
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  if SHX3_2 then
    SHX3_2 = SHX17_1
    if not SHX3_2 then
      SHX3_2 = SHX1_2 or SHX3_2
      if SHX1_2 then
        SHX4_2 = SHX1_2
        SHX3_2 = SHX1_2.sub
        SHX5_2 = 1
        SHX6_2 = 11
        SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
        SHX3_2 = "toggleCast_" == SHX3_2 or "removeAllCasts" == SHX1_2 or "medicBandage" == SHX1_2 or "medicMorphine" == SHX1_2
      end
      if not SHX3_2 then
        return
      end
    end
  end
  if SHX1_2 then
    SHX4_2 = SHX1_2
    SHX3_2 = SHX1_2.sub
    SHX5_2 = 1
    SHX6_2 = 11
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    if "toggleCast_" == SHX3_2 then
      SHX4_2 = SHX1_2
      SHX3_2 = SHX1_2.sub
      SHX5_2 = 12
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
      SHX4_2 = GetPlayerByEntityID
      SHX5_2 = SHX2_2
      SHX4_2 = SHX4_2(SHX5_2)
      if SHX4_2 and "" ~= SHX3_2 then
        SHX5_2 = GetPlayerServerId
        SHX6_2 = SHX4_2
        SHX5_2 = SHX5_2(SHX6_2)
        if SHX5_2 > 0 then
          SHX6_2 = CMG
          SHX6_2 = SHX6_2.TriggerServerCallback
          SHX7_2 = "2b2bfb838d"
          SHX8_2 = SHX5_2
          SHX9_2 = SHX3_2
          SHX6_2(SHX7_2, SHX8_2, SHX9_2)
        end
      end
  end
  elseif "removeAllCasts" == SHX1_2 then
    SHX3_2 = GetPlayerByEntityID
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      SHX4_2 = GetPlayerServerId
      SHX5_2 = SHX3_2
      SHX4_2 = SHX4_2(SHX5_2)
      if SHX4_2 > 0 then
        SHX5_2 = TriggerServerEvent
        SHX6_2 = "5c706bee2d"
        SHX7_2 = SHX4_2
        SHX5_2(SHX6_2, SHX7_2)
      end
    end
  elseif "medicBandage" == SHX1_2 then
    SHX3_2 = GetPlayerByEntityID
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      SHX4_2 = GetPlayerServerId
      SHX5_2 = SHX3_2
      SHX4_2 = SHX4_2(SHX5_2)
      if SHX4_2 > 0 then
        SHX5_2 = CMG
        SHX5_2 = SHX5_2.TriggerServerCallback
        SHX6_2 = "0685d077c4"
        SHX7_2 = SHX4_2
        SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
        if SHX5_2 then
          SHX6_2 = notify
          SHX7_2 = "~g~Applying bandage..."
          SHX6_2(SHX7_2)
        else
          SHX6_2 = notify
          SHX7_2 = "~r~Target is not bleeding."
          SHX6_2(SHX7_2)
        end
      end
    end
  elseif "medicMorphine" == SHX1_2 then
    SHX3_2 = GetPlayerByEntityID
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      SHX4_2 = GetPlayerServerId
      SHX5_2 = SHX3_2
      SHX4_2 = SHX4_2(SHX5_2)
      if SHX4_2 > 0 then
        SHX5_2 = CMG
        SHX5_2 = SHX5_2.TriggerServerCallback
        SHX6_2 = "0711499036"
        SHX7_2 = SHX4_2
        SHX5_2, SHX6_2 = SHX5_2(SHX6_2, SHX7_2)
        if SHX5_2 then
          SHX7_2 = notify
          SHX8_2 = "~g~Applying morphine..."
          SHX7_2(SHX8_2)
        elseif SHX6_2 and SHX6_2 > 0 then
          SHX7_2 = notify
          SHX8_2 = "~r~User is in combat timer, try again in "
          SHX9_2 = tostring
          SHX10_2 = SHX6_2
          SHX9_2 = SHX9_2(SHX10_2)
          SHX10_2 = " seconds."
          SHX8_2 = SHX8_2 .. SHX9_2 .. SHX10_2
          SHX7_2(SHX8_2)
        else
          SHX7_2 = notify
          SHX8_2 = "~r~Could not apply morphine."
          SHX7_2(SHX8_2)
        end
      end
    end
  elseif "lock" == SHX1_2 then
    SHX3_2 = SHX32_1
    SHX3_2()
  elseif "openBoot" == SHX1_2 then
    SHX3_2 = SHX34_1
    SHX4_2 = SHX2_2
    SHX3_2(SHX4_2)
  elseif "cleanCar" == SHX1_2 then
    SHX3_2 = SHX35_1
    SHX4_2 = SHX2_2
    SHX3_2(SHX4_2)
  elseif "lockpick" == SHX1_2 then
    SHX3_2 = SHX36_1
    SHX4_2 = SHX2_2
    SHX3_2(SHX4_2)
  elseif "mechanicHookTargetVehicle" == SHX1_2 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.tryMechanicAttachFromTargetVehicle
    SHX4_2 = SHX2_2
    SHX3_2(SHX4_2)
  elseif "detachVehicle" == SHX1_2 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.detachTowedVehicle
    SHX4_2 = SHX2_2
    SHX3_2(SHX4_2)
  elseif "repair" == SHX1_2 then
    SHX3_2 = TriggerEvent
    SHX4_2 = "a37e8d69f4"
    SHX5_2 = "diy"
    SHX3_2(SHX4_2, SHX5_2)
  elseif "repairTrucking" == SHX1_2 then
    SHX3_2 = TriggerEvent
    SHX4_2 = "a37e8d69f4"
    SHX5_2 = "trucking"
    SHX3_2(SHX4_2, SHX5_2)
  elseif "repairAA" == SHX1_2 then
    SHX3_2 = SHX37_1
    SHX4_2 = SHX2_2
    SHX3_2(SHX4_2)
  elseif "openHood" == SHX1_2 then
    SHX3_2 = SHX39_1
    SHX4_2 = SHX2_2
    SHX3_2(SHX4_2)
  elseif "searchvehicle" == SHX1_2 then
    SHX3_2 = SHX40_1
    SHX4_2 = SHX2_2
    SHX3_2(SHX4_2)
  elseif "impoundVehicle" == SHX1_2 then
    SHX3_2 = SHX41_1
    SHX4_2 = SHX2_2
    SHX3_2(SHX4_2)
  elseif "askDriverId" == SHX1_2 then
    SHX3_2 = SHX43_1
    SHX4_2 = SHX2_2
    SHX3_2(SHX4_2)
  elseif "ejectPassenger" == SHX1_2 then
    SHX3_2 = SHX61_1
    SHX4_2 = SHX2_2
    SHX3_2(SHX4_2)
  elseif "carjack" == SHX1_2 then
    if SHX2_2 and 0 ~= SHX2_2 then
      SHX3_2 = DoesEntityExist
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if SHX3_2 then
        SHX3_2 = IsEntityAVehicle
        SHX4_2 = SHX2_2
        SHX3_2 = SHX3_2(SHX4_2)
        if SHX3_2 then
          SHX3_2 = GetPedInVehicleSeat
          SHX4_2 = SHX2_2
          SHX5_2 = -1
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
          if 0 ~= SHX3_2 then
            SHX4_2 = IsPedAPlayer
            SHX5_2 = SHX3_2
            SHX4_2 = SHX4_2(SHX5_2)
            if SHX4_2 then
              SHX4_2 = NetworkGetPlayerIndexFromPed
              SHX5_2 = SHX3_2
              SHX4_2 = SHX4_2(SHX5_2)
              if SHX4_2 >= 0 then
                SHX5_2 = GetPlayerServerId
                SHX6_2 = SHX4_2
                SHX5_2 = SHX5_2(SHX6_2)
                if SHX5_2 > 0 then
                  SHX6_2 = CMG
                  SHX6_2 = SHX6_2.startGangCarjack
                  SHX7_2 = SHX5_2
                  SHX6_2(SHX7_2)
                end
              end
            end
          end
        end
      end
    end
  elseif "askId" == SHX1_2 then
    SHX3_2 = SHX44_1
    SHX4_2 = SHX2_2
    SHX3_2(SHX4_2)
  elseif "giveCash" == SHX1_2 then
    SHX3_2 = SHX45_1
    SHX4_2 = SHX2_2
    SHX3_2(SHX4_2)
  elseif "search" == SHX1_2 then
    SHX3_2 = SHX46_1
    SHX4_2 = SHX2_2
    SHX3_2(SHX4_2)
  elseif "robPerson" == SHX1_2 then
    SHX3_2 = SHX42_1
    SHX4_2 = SHX2_2
    SHX3_2(SHX4_2)
  elseif "revive" == SHX1_2 then
    SHX3_2 = SHX47_1
    SHX4_2 = SHX2_2
    SHX3_2(SHX4_2)
  elseif "handcuff" == SHX1_2 then
    SHX3_2 = SHX48_1
    SHX4_2 = SHX2_2
    SHX3_2(SHX4_2)
  elseif "nhsDrag" == SHX1_2 then
    SHX3_2 = SHX49_1
    SHX4_2 = SHX2_2
    SHX3_2(SHX4_2)
  elseif "drag" == SHX1_2 then
    SHX3_2 = SHX50_1
    SHX4_2 = SHX2_2
    SHX3_2(SHX4_2)
  elseif "putincar" == SHX1_2 then
    SHX3_2 = SHX51_1
    SHX4_2 = SHX2_2
    SHX3_2(SHX4_2)
  elseif "gunshottest" == SHX1_2 then
    SHX3_2 = SHX52_1
    SHX4_2 = SHX2_2
    SHX3_2(SHX4_2)
  elseif "jail" == SHX1_2 then
    SHX3_2 = SHX53_1
    SHX4_2 = SHX2_2
    SHX3_2(SHX4_2)
  elseif "quickFine" == SHX1_2 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.openQuickChargesMenu
    SHX4_2 = SHX2_2
    SHX5_2 = "fine"
    SHX3_2(SHX4_2, SHX5_2)
  elseif "quickJail" == SHX1_2 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.openQuickChargesMenu
    SHX4_2 = SHX2_2
    SHX5_2 = "jail"
    SHX3_2(SHX4_2, SHX5_2)
  elseif "pardonBounty" == SHX1_2 then
    SHX3_2 = SHX55_1
    SHX4_2 = SHX2_2
    SHX3_2(SHX4_2)
  elseif "requesttransport" == SHX1_2 then
    SHX3_2 = SHX54_1
    SHX4_2 = SHX2_2
    SHX3_2(SHX4_2)
  elseif "seizeweapons" == SHX1_2 then
    SHX3_2 = SHX56_1
    SHX4_2 = SHX2_2
    SHX3_2(SHX4_2)
  elseif "seizeillegals" == SHX1_2 then
    SHX3_2 = SHX57_1
    SHX4_2 = SHX2_2
    SHX3_2(SHX4_2)
  elseif "removeHeadbag" == SHX1_2 then
    SHX3_2 = SHX58_1
    SHX4_2 = SHX2_2
    SHX3_2(SHX4_2)
  elseif "leaveRadio" == SHX1_2 then
    SHX3_2 = TriggerEvent
    SHX4_2 = "24a888d2b3"
    SHX3_2(SHX4_2)
  elseif "toggleMute" == SHX1_2 then
    SHX3_2 = ExecuteCommand
    SHX4_2 = "toggleradiomute"
    SHX3_2(SHX4_2)
  elseif "radioConfig" == SHX1_2 then
    SHX3_2 = TriggerEvent
    SHX4_2 = "c9189814b6"
    SHX3_2(SHX4_2)
  else
    SHX3_2 = string
    SHX3_2 = SHX3_2.match
    SHX4_2 = SHX1_2
    SHX5_2 = "radioChannel"
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
    if SHX3_2 then
      SHX3_2 = string
      SHX3_2 = SHX3_2.sub
      SHX4_2 = SHX1_2
      SHX5_2 = 13
      SHX6_2 = #SHX1_2
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
      SHX4_2 = TriggerEvent
      SHX5_2 = "c96f59b76d"
      SHX6_2 = tonumber
      SHX7_2 = SHX3_2
      SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX6_2(SHX7_2)
      SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    elseif "segregation" == SHX1_2 then
      SHX3_2 = SHX60_1
      SHX4_2 = SHX2_2
      SHX3_2(SHX4_2)
    elseif "transferChips" == SHX1_2 then
      SHX3_2 = SHX59_1
      SHX4_2 = SHX2_2
      SHX3_2(SHX4_2)
    elseif "spawnStretcher" == SHX1_2 then
      SHX3_2 = type
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      SHX3_2 = SHX2_2 or SHX3_2
      if "number" ~= SHX3_2 or 0 == SHX2_2 or not SHX2_2 then
        SHX3_2 = nil
      end
      if SHX3_2 then
        SHX4_2 = DoesEntityExist
        SHX5_2 = SHX3_2
        SHX4_2 = SHX4_2(SHX5_2)
        if SHX4_2 then
          SHX4_2 = SHX5_1
          SHX5_2 = SHX3_2
          SHX6_2 = "Health Service Vehicles"
          SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
          if SHX4_2 then
            SHX4_2 = ExecuteCommand
            SHX5_2 = "stretcher"
            SHX4_2(SHX5_2)
        end
        else
          SHX4_2 = notify
          SHX5_2 = "~r~You can only spawn stretchers from NHS vehicles."
          SHX4_2(SHX5_2)
        end
      else
        SHX4_2 = notify
        SHX5_2 = "~r~You can only spawn stretchers from NHS vehicles."
        SHX4_2(SHX5_2)
      end
    elseif "removeStretcher" == SHX1_2 then
      SHX3_2 = type
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      SHX3_2 = SHX2_2 or SHX3_2
      if "number" ~= SHX3_2 or 0 == SHX2_2 or not SHX2_2 then
        SHX3_2 = nil
      end
      if SHX3_2 then
        SHX4_2 = DoesEntityExist
        SHX5_2 = SHX3_2
        SHX4_2 = SHX4_2(SHX5_2)
        if SHX4_2 then
          SHX4_2 = GetEntityModel
          SHX5_2 = SHX3_2
          SHX4_2 = SHX4_2(SHX5_2)
          if -665859588 == SHX4_2 then
            SHX4_2 = TriggerServerEvent
            SHX5_2 = "2bfff324f7"
            SHX6_2 = CMG
            SHX6_2 = SHX6_2.getNetId
            SHX7_2 = SHX3_2
            SHX8_2 = "Stretchers"
            SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX6_2(SHX7_2, SHX8_2)
            SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
        end
        else
          SHX4_2 = ExecuteCommand
          SHX5_2 = "removestretcher"
          SHX4_2(SHX5_2)
        end
      else
        SHX4_2 = ExecuteCommand
        SHX5_2 = "removestretcher"
        SHX4_2(SHX5_2)
      end
    elseif "toggleCrutches" == SHX1_2 then
      SHX3_2 = GetPlayerByEntityID
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if SHX3_2 then
        SHX4_2 = GetPlayerServerId
        SHX5_2 = SHX3_2
        SHX4_2 = SHX4_2(SHX5_2)
        if SHX4_2 > 0 then
          SHX5_2 = CMG
          SHX5_2 = SHX5_2.TriggerServerCallback
          SHX6_2 = "1e07024b66"
          SHX7_2 = SHX4_2
          SHX5_2(SHX6_2, SHX7_2)
        end
      end
    elseif "giveWheelchair" == SHX1_2 then
      SHX3_2 = GetPlayerByEntityID
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if SHX3_2 then
        SHX4_2 = GetPlayerServerId
        SHX5_2 = SHX3_2
        SHX4_2 = SHX4_2(SHX5_2)
        if SHX4_2 > 0 then
          SHX5_2 = notify
          SHX6_2 = "~g~Providing wheelchair..."
          SHX5_2(SHX6_2)
          SHX5_2 = TriggerServerEvent
          SHX6_2 = "05e4b09a9e"
          SHX7_2 = SHX4_2
          SHX5_2(SHX6_2, SHX7_2)
        else
          SHX5_2 = notify
          SHX6_2 = "~r~Could not get target player."
          SHX5_2(SHX6_2)
        end
      else
        SHX4_2 = notify
        SHX5_2 = "~r~No valid target player."
        SHX4_2(SHX5_2)
      end
    elseif "removeWheelchair" == SHX1_2 then
      SHX3_2 = type
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      SHX3_2 = SHX2_2 or SHX3_2
      if "number" ~= SHX3_2 or 0 == SHX2_2 or not SHX2_2 then
        SHX3_2 = nil
      end
      if SHX3_2 then
        SHX4_2 = DoesEntityExist
        SHX5_2 = SHX3_2
        SHX4_2 = SHX4_2(SHX5_2)
        if SHX4_2 then
          SHX4_2 = CMG
          SHX4_2 = SHX4_2.isWheelchairVehicle
          if SHX4_2 then
            SHX4_2 = CMG
            SHX4_2 = SHX4_2.isWheelchairVehicle
            SHX5_2 = SHX3_2
            SHX4_2 = SHX4_2(SHX5_2)
            if SHX4_2 then
              SHX4_2 = TriggerServerEvent
              SHX5_2 = "cc35a3d2bc"
              SHX6_2 = NetworkGetNetworkIdFromEntity
              SHX7_2 = SHX3_2
              SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX6_2(SHX7_2)
              SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
            end
          end
        end
      end
    elseif "nhsGiveDonut" == SHX1_2 then
      SHX3_2 = GetPlayerByEntityID
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if SHX3_2 then
        SHX4_2 = GetPlayerServerId
        SHX5_2 = SHX3_2
        SHX4_2 = SHX4_2(SHX5_2)
        if SHX4_2 > 0 then
          SHX5_2 = TriggerServerEvent
          SHX6_2 = "9353a3745a"
          SHX7_2 = SHX4_2
          SHX5_2(SHX6_2, SHX7_2)
        end
      end
    end
  end
end
SHX62_1(SHX63_1, SHX64_1)
function SHX62_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = ipairs
  SHX2_2 = GetActivePlayers
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX2_2()
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = GetPlayerPed
    SHX8_2 = SHX6_2
    SHX7_2 = SHX7_2(SHX8_2)
    if SHX0_2 == SHX7_2 then
      return SHX6_2
    end
  end
  SHX1_2 = nil
  return SHX1_2
end
GetPlayerByEntityID = SHX62_1
SHX62_1 = CMG
function SHX63_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX13_1
  SHX1_2 = SHX14_1
  return SHX0_2, SHX1_2
end
SHX62_1.getSelectedEntity = SHX63_1
SHX62_1 = AddEventHandler
SHX63_1 = "CMGUI:showRadioWheel"
function SHX64_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = SHX17_1
  if SHX1_2 then
    return
  end
  SHX1_2 = true
  SHX12_1 = SHX1_2
  SHX1_2 = true
  SHX17_1 = SHX1_2
  SHX1_2 = SetNuiFocusKeepInput
  SHX2_2 = true
  SHX1_2(SHX2_2)
  SHX1_2 = SetNuiFocus
  SHX2_2 = true
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SendNUIMessage
  SHX2_2 = {}
  SHX2_2.openRadialMenu = true
  SHX2_2.type = "radios"
  SHX2_2.wheelData = SHX0_2
  SHX1_2(SHX2_2)
  while true do
    SHX1_2 = SHX17_1
    if not SHX1_2 then
      break
    end
    SHX1_2 = 0
    SHX2_2 = 6
    SHX3_2 = 1
    for SHX4_2 = SHX1_2, SHX2_2, SHX3_2 do
      SHX5_2 = DisableControlAction
      SHX6_2 = 0
      SHX7_2 = SHX4_2
      SHX8_2 = true
      SHX5_2(SHX6_2, SHX7_2, SHX8_2)
    end
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
    SHX3_2 = 69
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 79
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 92
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 114
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
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 264
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
  end
end
SHX62_1(SHX63_1, SHX64_1)
function SHX62_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerCoords
  SHX1_2 = SHX1_2()
  SHX2_2 = 0
  SHX3_2 = 3.0
  SHX4_2 = pairs
  SHX5_2 = GetGamePool
  SHX6_2 = "CObject"
  SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX5_2(SHX6_2)
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    SHX10_2 = GetEntityModel
    SHX11_2 = SHX9_2
    SHX10_2 = SHX10_2(SHX11_2)
    SHX11_2 = CMG
    SHX11_2 = SHX11_2.isLootbagModel
    SHX12_2 = SHX10_2
    SHX11_2 = SHX11_2(SHX12_2)
    if SHX11_2 or -1422265815 == SHX10_2 or 772559902 == SHX10_2 then
      SHX11_2 = GetEntityCoords
      SHX12_2 = SHX9_2
      SHX13_2 = true
      SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
      SHX11_2 = SHX11_2 - SHX1_2
      SHX11_2 = #SHX11_2
      if SHX3_2 > SHX11_2 then
        SHX12_2 = HasEntityClearLosToEntity
        SHX13_2 = SHX0_2
        SHX14_2 = SHX9_2
        SHX15_2 = 17
        SHX12_2 = SHX12_2(SHX13_2, SHX14_2, SHX15_2)
        if SHX12_2 then
          SHX2_2 = SHX9_2
          SHX3_2 = SHX11_2
        end
      end
    end
  end
  return SHX2_2
end
SHX63_1 = RegisterCommand
SHX64_1 = "lootclosestbag"
function SHX65_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isDrawingInventoryUI
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX0_2 = TriggerEvent
    SHX1_2 = "2a70dddd80"
    SHX0_2(SHX1_2)
    return
  end
  SHX0_2 = SHX26_1
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerVehicle
    SHX0_2 = SHX0_2()
    if 0 == SHX0_2 then
      SHX0_2 = GetRenderingCam
      SHX0_2 = SHX0_2()
      if -1 == SHX0_2 then
        SHX0_2 = CMG
        SHX0_2 = SHX0_2.hasClientPermission
        SHX1_2 = "nhs.onduty.permission"
        SHX0_2 = SHX0_2(SHX1_2)
        if not SHX0_2 then
          goto SHX_LABEL_30
        end
      end
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_30:: outside nested blocks until all 'goto SHX_LABEL_30' can see it
  ::SHX_LABEL_30::
  SHX0_2 = SHX62_1
  SHX0_2 = SHX0_2()
  if 0 ~= SHX0_2 then
    SHX1_2 = GetEntityModel
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    SHX2_2 = DecorGetInt
    SHX3_2 = SHX0_2
    SHX4_2 = "5f7af1c5ce"
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.isLootbagModel
    SHX4_2 = SHX1_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      SHX3_2 = DecorExistOn
      SHX4_2 = SHX0_2
      SHX5_2 = "b1457c1a26"
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
      if SHX3_2 then
        SHX3_2 = DecorGetBool
        SHX4_2 = SHX0_2
        SHX5_2 = "b1457c1a26"
        SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
      end
      if not SHX3_2 then
        SHX4_2 = TriggerEvent
        SHX5_2 = "56e6172373"
        SHX6_2 = false
        SHX4_2(SHX5_2, SHX6_2)
      end
      SHX4_2 = SHX29_1
      function SHX5_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3, SHX2_3
        SHX0_3 = TriggerServerEvent
        SHX1_3 = "bdaf15af25"
        SHX2_3 = SHX2_2
        SHX0_3(SHX1_3, SHX2_3)
      end
      SHX6_2 = SHX0_2
      SHX4_2(SHX5_2, SHX6_2)
    elseif -1422265815 == SHX1_2 then
      SHX3_2 = TriggerEvent
      SHX4_2 = "56e6172373"
      SHX5_2 = false
      SHX3_2(SHX4_2, SHX5_2)
      SHX3_2 = SHX29_1
      function SHX4_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3, SHX2_3
        SHX0_3 = TriggerServerEvent
        SHX1_3 = "5891aba85f"
        SHX2_3 = SHX2_2
        SHX0_3(SHX1_3, SHX2_3)
      end
      SHX5_2 = SHX0_2
      SHX3_2(SHX4_2, SHX5_2)
    elseif 772559902 == SHX1_2 then
      SHX3_2 = SHX29_1
      function SHX4_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3, SHX2_3
        SHX0_3 = TriggerServerEvent
        SHX1_3 = "5891aba85f"
        SHX2_3 = SHX2_2
        SHX0_3(SHX1_3, SHX2_3)
      end
      SHX5_2 = SHX0_2
      SHX3_2(SHX4_2, SHX5_2)
    end
  end
end
SHX66_1 = false
SHX63_1(SHX64_1, SHX65_1, SHX66_1)
SHX63_1 = RegisterKeyMapping
SHX64_1 = "lootclosestbag"
SHX65_1 = "Loot Closest Bag"
SHX66_1 = "KEYBOARD"
SHX67_1 = "CAPITAL"
SHX63_1(SHX64_1, SHX65_1, SHX66_1, SHX67_1)
SHX63_1 = Citizen
SHX63_1 = SHX63_1.CreateThread
function SHX64_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  while true do
    SHX0_2 = false
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.isNewPlayer
    SHX1_2 = SHX1_2()
    if SHX1_2 then
      SHX1_2 = SHX62_1
      SHX1_2 = SHX1_2()
      if 0 ~= SHX1_2 then
        SHX1_2 = drawNativeNotification
        SHX2_2 = "Press ~INPUT_EEE09CC7~ to loot the lootbag."
        SHX1_2(SHX2_2)
        SHX0_2 = true
      end
    end
    SHX1_2 = Wait
    if SHX0_2 then
      SHX2_2 = 0
      if SHX2_2 then
        goto SHX_LABEL_22
      end
    end
    SHX2_2 = 2000
    -- [FIX IF ERROR] Move ::SHX_LABEL_22:: outside nested blocks until all 'goto SHX_LABEL_22' can see it
    ::SHX_LABEL_22::
    SHX1_2(SHX2_2)
  end
end
SHX63_1(SHX64_1)
SHX63_1 = false
SHX64_1 = RegisterNetEvent
SHX65_1 = "c09ac80094"
function SHX66_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.canAnim
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX0_2 = SHX63_1
    if not SHX0_2 then
      SHX0_2 = true
      SHX63_1 = SHX0_2
      SHX0_2 = PlayerPedId
      SHX0_2 = SHX0_2()
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.loadModel
      SHX2_2 = 1047179740
      SHX1_2(SHX2_2)
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.getPlayerCoords
      SHX1_2 = SHX1_2()
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.requestEntitySpawn
      SHX3_2 = "hand_over_card_object"
      SHX2_2(SHX3_2)
      SHX2_2 = CreateObject
      SHX3_2 = 1047179740
      SHX4_2 = SHX1_2.x
      SHX5_2 = SHX1_2.y
      SHX6_2 = SHX1_2.z
      SHX7_2 = true
      SHX8_2 = false
      SHX9_2 = false
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
      SHX3_2 = AttachEntityToEntity
      SHX4_2 = SHX2_2
      SHX5_2 = SHX0_2
      SHX6_2 = GetPedBoneIndex
      SHX7_2 = SHX0_2
      SHX8_2 = 57005
      SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
      SHX7_2 = 0.14
      SHX8_2 = 0.04
      SHX9_2 = -0.02
      SHX10_2 = 208.0
      SHX11_2 = 6.0
      SHX12_2 = 2.0
      SHX13_2 = false
      SHX14_2 = false
      SHX15_2 = false
      SHX16_2 = true
      SHX17_2 = 2
      SHX18_2 = true
      SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
      SHX3_2 = SetModelAsNoLongerNeeded
      SHX4_2 = 1047179740
      SHX3_2(SHX4_2)
      SHX3_2 = CMG
      SHX3_2 = SHX3_2.loadAnimDict
      SHX4_2 = "mp_common"
      SHX3_2(SHX4_2)
      SHX3_2 = TaskPlayAnim
      SHX4_2 = SHX0_2
      SHX5_2 = "mp_common"
      SHX6_2 = "givetake1_a"
      SHX7_2 = 8.0
      SHX8_2 = 8.0
      SHX9_2 = -1
      SHX10_2 = 1
      SHX11_2 = 0
      SHX12_2 = false
      SHX13_2 = false
      SHX14_2 = false
      SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
      SHX3_2 = RemoveAnimDict
      SHX4_2 = "mp_common"
      SHX3_2(SHX4_2)
      SHX3_2 = Citizen
      SHX3_2 = SHX3_2.Wait
      SHX4_2 = 2000
      SHX3_2(SHX4_2)
      SHX3_2 = DeleteEntity
      SHX4_2 = SHX2_2
      SHX3_2(SHX4_2)
      SHX3_2 = StopAnimTask
      SHX4_2 = SHX0_2
      SHX5_2 = "mp_common"
      SHX6_2 = "givetake1_a"
      SHX7_2 = 1.0
      SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
      SHX3_2 = false
      SHX63_1 = SHX3_2
    end
  end
end
SHX64_1(SHX65_1, SHX66_1)
SHX64_1 = CMG
function SHX65_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  if SHX0_2 and SHX1_2 then
    SHX2_2 = #SHX1_2
    if 0 ~= SHX2_2 then
      goto SHX_LABEL_9
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  SHX2_2 = true
  SHX12_1 = SHX2_2
  SHX2_2 = SetNuiFocus
  SHX3_2 = true
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SendNUIMessage
  SHX3_2 = {}
  SHX3_2.openRadialMenu = true
  SHX3_2.type = "trapperPickup"
  SHX3_2.trapperPlantId = SHX0_2
  SHX3_2.menuItems = SHX1_2
  SHX2_2(SHX3_2)
end
SHX64_1.openTrapperPickupRadial = SHX65_1
SHX64_1 = CMG
function SHX65_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX17_1
  return SHX0_2
end
SHX64_1.isOnRadioMenu = SHX65_1
SHX64_1 = CMG
function SHX65_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = GetFrameCount
  SHX0_2 = SHX0_2()
  SHX20_1 = SHX0_2
end
SHX64_1.setIgnoreRadialInputThisFrame = SHX65_1
