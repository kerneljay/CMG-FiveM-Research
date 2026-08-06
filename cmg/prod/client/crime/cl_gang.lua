-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_gang"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = nil
SHX2_1 = {}
SHX3_1 = nil
SHX4_1 = nil
SHX5_1 = nil
SHX6_1 = true
SHX7_1 = 18
SHX8_1 = 82
SHX9_1 = 228
SHX10_1 = nil
SHX11_1 = CMG
SHX11_1.gangCachedData = nil
SHX11_1 = CMG
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.gangCachedData
  if SHX0_2 then
    SHX1_2 = SHX0_2.gangPerksUnlocked
    if SHX1_2 then
      goto SHX_LABEL_10
    end
  end
  SHX1_2 = 0
  return SHX1_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX1_2 = {}
  SHX2_2 = 2
  SHX3_2 = 5
  SHX4_2 = 10
  SHX5_2 = 15
  SHX6_2 = 20
  SHX7_2 = 30
  SHX1_2[1] = SHX2_2
  SHX1_2[2] = SHX3_2
  SHX1_2[3] = SHX4_2
  SHX1_2[4] = SHX5_2
  SHX1_2[5] = SHX6_2
  SHX1_2[6] = SHX7_2
  SHX2_2 = #SHX1_2
  SHX3_2 = 1
  SHX4_2 = -1
  for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = SHX0_2.gangPerksUnlocked
    SHX7_2 = "pub_capture_time_"
    SHX8_2 = SHX5_2
    SHX7_2 = SHX7_2 .. SHX8_2
    SHX6_2 = SHX6_2[SHX7_2]
    if SHX6_2 then
      SHX6_2 = SHX1_2[SHX5_2]
      return SHX6_2
    end
  end
  SHX2_2 = 0
  return SHX2_2
end
SHX11_1.getGangPublicCaptureTimeReductionPercent = SHX12_1
SHX11_1 = CMG
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.gangCachedData
  if SHX0_2 then
    SHX1_2 = SHX0_2.gangPerksUnlocked
    if SHX1_2 then
      goto SHX_LABEL_10
    end
  end
  SHX1_2 = 0
  return SHX1_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX1_2 = {}
  SHX2_2 = 20
  SHX3_2 = 40
  SHX4_2 = 50
  SHX5_2 = 70
  SHX6_2 = 100
  SHX7_2 = 150
  SHX1_2[1] = SHX2_2
  SHX1_2[2] = SHX3_2
  SHX1_2[3] = SHX4_2
  SHX1_2[4] = SHX5_2
  SHX1_2[5] = SHX6_2
  SHX1_2[6] = SHX7_2
  SHX2_2 = 0
  SHX3_2 = 1
  SHX4_2 = #SHX1_2
  SHX5_2 = 1
  for SHX6_2 = SHX3_2, SHX4_2, SHX5_2 do
    SHX7_2 = SHX0_2.gangPerksUnlocked
    SHX8_2 = "pub_name_distance_"
    SHX9_2 = SHX6_2
    SHX8_2 = SHX8_2 .. SHX9_2
    SHX7_2 = SHX7_2[SHX8_2]
    if SHX7_2 then
      SHX7_2 = SHX1_2[SHX6_2]
      if SHX2_2 < SHX7_2 then
        SHX2_2 = SHX1_2[SHX6_2]
      end
    end
  end
  return SHX2_2
end
SHX11_1.getGangPublicNameViewDistanceFloor = SHX12_1
SHX11_1 = CMG
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = tonumber
  SHX1_2 = SHX0_1.gangBaseMemberLimit
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 then
    SHX0_2 = 30
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.gangCachedData
  if SHX1_2 then
    SHX2_2 = SHX1_2.gangPerksUnlocked
    if SHX2_2 then
      goto SHX_LABEL_15
    end
  end
  return SHX0_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_15:: outside nested blocks until all 'goto SHX_LABEL_15' can see it
  ::SHX_LABEL_15::
  SHX2_2 = 0
  SHX3_2 = 1
  SHX4_2 = 6
  SHX5_2 = 1
  for SHX6_2 = SHX3_2, SHX4_2, SHX5_2 do
    SHX7_2 = SHX1_2.gangPerksUnlocked
    SHX8_2 = "pub_member_slots_"
    SHX9_2 = SHX6_2
    SHX8_2 = SHX8_2 .. SHX9_2
    SHX7_2 = SHX7_2[SHX8_2]
    if SHX7_2 then
      SHX2_2 = SHX2_2 + 5
    end
  end
  SHX3_2 = SHX0_2 + SHX2_2
  return SHX3_2
end
SHX11_1.getClientGangMaxMemberLimit = SHX12_1
SHX11_1 = CMG
SHX12_1 = "getClientGangPublicTurfCommissionBonusPercent"
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.gangCachedData
  if SHX0_2 then
    SHX1_2 = SHX0_2.gangPerksUnlocked
    if SHX1_2 then
      goto SHX_LABEL_10
    end
  end
  SHX1_2 = 0
  return SHX1_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX1_2 = 0
  SHX2_2 = 1
  SHX3_2 = 5
  SHX4_2 = 1
  for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = SHX0_2.gangPerksUnlocked
    SHX7_2 = "pub_turf_commission_"
    SHX8_2 = SHX5_2
    SHX7_2 = SHX7_2 .. SHX8_2
    SHX6_2 = SHX6_2[SHX7_2]
    if SHX6_2 then
      SHX1_2 = SHX1_2 + SHX5_2
    end
  end
  if SHX1_2 > 25 then
    SHX1_2 = 25
  end
  return SHX1_2
end
SHX11_1[SHX12_1] = SHX13_1
SHX11_1 = {}
SHX12_1 = 0.2
SHX13_1 = 0.3
SHX14_1 = 0.4
SHX15_1 = 0.5
SHX16_1 = 0.6
SHX17_1 = 0.7
SHX11_1[1] = SHX12_1
SHX11_1[2] = SHX13_1
SHX11_1[3] = SHX14_1
SHX11_1[4] = SHX15_1
SHX11_1[5] = SHX16_1
SHX11_1[6] = SHX17_1
SHX12_1 = CMG
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.gangCachedData
  SHX1_2 = 0
  if SHX0_2 then
    SHX2_2 = SHX0_2.gangPerksUnlocked
    if SHX2_2 then
      SHX2_2 = 1
      SHX3_2 = SHX11_1
      SHX3_2 = #SHX3_2
      SHX4_2 = 1
      for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
        SHX6_2 = SHX0_2.gangPerksUnlocked
        SHX7_2 = "pub_deposit_fee_"
        SHX8_2 = SHX5_2
        SHX7_2 = SHX7_2 .. SHX8_2
        SHX6_2 = SHX6_2[SHX7_2]
        if SHX6_2 then
          SHX6_2 = SHX11_1
          SHX6_2 = SHX6_2[SHX5_2]
          SHX1_2 = SHX1_2 + SHX6_2
        end
      end
    end
  end
  if SHX1_2 > 50 then
    SHX1_2 = 50
  end
  return SHX1_2
end
SHX12_1.getClientGangDepositFeeReductionPercent = SHX13_1
SHX12_1 = CMG
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getTunableValue
  SHX1_2 = "gang_tax"
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 then
    SHX0_2 = 0
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getClientGangDepositFeeReductionPercent
  SHX1_2 = SHX1_2()
  SHX2_2 = math
  SHX2_2 = SHX2_2.max
  SHX3_2 = 0
  SHX4_2 = SHX1_2 / 100
  SHX4_2 = SHX0_2 - SHX4_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = math
  SHX3_2 = SHX3_2.floor
  SHX4_2 = SHX2_2 * 1000
  SHX4_2 = SHX4_2 + 0.5
  SHX3_2 = SHX3_2(SHX4_2)
  SHX3_2 = SHX3_2 / 10
  return SHX3_2
end
SHX12_1.getClientGangDepositFeeDisplayPercent = SHX13_1
SHX12_1 = CMG
SHX13_1 = "getClientGangRpHeistSetupCostAfterDiscount"
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX1_2 = math
  SHX1_2 = SHX1_2.floor
  SHX2_2 = tonumber
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    SHX2_2 = 0
  end
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 <= 0 then
    SHX2_2 = 0
    return SHX2_2
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.gangCachedData
  SHX3_2 = 0
  if SHX2_2 then
    SHX4_2 = SHX2_2.gangPerksUnlocked
    if SHX4_2 then
      SHX4_2 = ipairs
      SHX5_2 = {}
      SHX6_2 = 20
      SHX7_2 = 15
      SHX8_2 = 10
      SHX9_2 = 5
      SHX5_2[1] = SHX6_2
      SHX5_2[2] = SHX7_2
      SHX5_2[3] = SHX8_2
      SHX5_2[4] = SHX9_2
      SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
      for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
        SHX10_2 = SHX2_2.gangPerksUnlocked
        SHX11_2 = "rp_heist_"
        SHX12_2 = SHX9_2
        SHX11_2 = SHX11_2 .. SHX12_2
        SHX10_2 = SHX10_2[SHX11_2]
        if SHX10_2 then
          SHX3_2 = SHX9_2
          break
        end
      end
    end
  end
  if SHX3_2 <= 0 then
    return SHX1_2
  end
  SHX4_2 = math
  SHX4_2 = SHX4_2.max
  SHX5_2 = 0
  SHX6_2 = math
  SHX6_2 = SHX6_2.floor
  SHX7_2 = 100
  SHX7_2 = SHX7_2 - SHX3_2
  SHX7_2 = SHX1_2 * SHX7_2
  SHX7_2 = SHX7_2 / 100
  SHX7_2 = SHX7_2 + 0.5
  SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX6_2(SHX7_2)
  return SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
end
SHX12_1[SHX13_1] = SHX14_1
SHX12_1 = CMG
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.gangCachedData
  if SHX0_2 then
    SHX1_2 = SHX0_2.gangPerksUnlocked
    if SHX1_2 then
      goto SHX_LABEL_10
    end
  end
  SHX1_2 = 0
  return SHX1_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX1_2 = SHX0_2.gangPerksUnlocked
  SHX1_2 = SHX1_2.rp_spray_50
  if SHX1_2 then
    SHX1_2 = 50
    return SHX1_2
  end
  SHX1_2 = SHX0_2.gangPerksUnlocked
  SHX1_2 = SHX1_2.rp_spray_25
  if SHX1_2 then
    SHX1_2 = 25
    return SHX1_2
  end
  SHX1_2 = 0
  return SHX1_2
end
SHX12_1.getClientGangRpSpraycanDiscountPercent = SHX13_1
SHX12_1 = CMG
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.gangCachedData
  if SHX0_2 then
    SHX1_2 = SHX0_2.gangPerksUnlocked
    if SHX1_2 then
      goto SHX_LABEL_10
    end
  end
  SHX1_2 = 0
  return SHX1_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX1_2 = ipairs
  SHX2_2 = {}
  SHX3_2 = 15
  SHX4_2 = 10
  SHX5_2 = 7
  SHX6_2 = 5
  SHX2_2[1] = SHX3_2
  SHX2_2[2] = SHX4_2
  SHX2_2[3] = SHX5_2
  SHX2_2[4] = SHX6_2
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX0_2.gangPerksUnlocked
    SHX8_2 = "rp_wl_vehicles_"
    SHX9_2 = SHX6_2
    SHX8_2 = SHX8_2 .. SHX9_2
    SHX7_2 = SHX7_2[SHX8_2]
    if SHX7_2 then
      return SHX6_2
    end
  end
  SHX1_2 = 0
  return SHX1_2
end
SHX12_1.getClientGangRpWlVehiclesDiscountPercent = SHX13_1
SHX12_1 = 5
SHX13_1 = CMG
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.gangCachedData
  if SHX0_2 then
    SHX1_2 = SHX0_2.gangPerksUnlocked
    if SHX1_2 then
      goto SHX_LABEL_10
    end
  end
  SHX1_2 = {}
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX2_2 = 0
  SHX3_2 = SHX0_1.gangSkills
  if SHX3_2 then
    SHX3_2 = pairs
    SHX4_2 = SHX1_2
    SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
    for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
      if true == SHX8_2 then
        SHX9_2 = SHX0_1.gangSkills
        SHX9_2 = SHX9_2[SHX7_2]
        if SHX9_2 then
          SHX10_2 = tonumber
          SHX11_2 = SHX9_2.extraRankOutfitSlots
          SHX10_2 = SHX10_2(SHX11_2)
          if SHX10_2 then
            goto SHX_LABEL_30
          end
        end
        SHX10_2 = 0
        -- [FIX IF ERROR] Move ::SHX_LABEL_30:: outside nested blocks until all 'goto SHX_LABEL_30' can see it
        ::SHX_LABEL_30::
        if SHX10_2 > 0 then
          SHX2_2 = SHX2_2 + SHX10_2
        end
      end
    end
  end
  SHX3_2 = 1 + SHX2_2
  SHX4_2 = SHX12_1
  if SHX3_2 > SHX4_2 then
    SHX3_2 = SHX12_1
  end
  if SHX3_2 < 1 then
    SHX3_2 = 1
  end
  return SHX3_2
end
SHX13_1.getGangRankOutfitSlotMax = SHX14_1
SHX13_1 = CMG
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.gangCachedData
  if SHX0_2 then
    SHX1_2 = SHX0_2.gangPerksUnlocked
    if SHX1_2 then
      goto SHX_LABEL_10
    end
  end
  SHX1_2 = false
  return SHX1_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX1_2 = SHX0_2.gangPerksUnlocked
  SHX1_2 = SHX1_2.rp_ragdoll
  SHX1_2 = true == SHX1_2
  return SHX1_2
end
SHX13_1.hasGangRpRagdollPerk = SHX14_1
SHX13_1 = CMG
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.gangCachedData
  if SHX0_2 then
    SHX1_2 = SHX0_2.gangPerksUnlocked
    if SHX1_2 then
      goto SHX_LABEL_10
    end
  end
  SHX1_2 = false
  return SHX1_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX1_2 = SHX0_2.gangPerksUnlocked
  SHX1_2 = SHX1_2.rp_car_theft
  SHX1_2 = true == SHX1_2
  return SHX1_2
end
SHX13_1.hasGangRpCarTheftPerk = SHX14_1
SHX13_1 = 1
SHX14_1 = 1
SHX15_1 = {}
SHX16_1 = {}
SHX17_1 = nil
SHX18_1 = false
SHX19_1 = 1
SHX20_1 = nil
SHX21_1 = {}
SHX22_1 = nil
SHX23_1 = 1
SHX24_1 = false
SHX25_1 = 0
SHX26_1 = 0
SHX27_1 = 1.0
SHX28_1 = SHX0_1.colourLookup
SHX28_1 = SHX28_1.Red
SHX29_1 = GetResourceKvpString
SHX30_1 = "cmg_gang_colour"
SHX29_1 = SHX29_1(SHX30_1)
if not SHX29_1 then
  SHX29_1 = "Red"
end
SHX30_1 = {}
SHX31_1 = CMG
SHX31_1.gangRecognisedGangs = SHX30_1
SHX31_1 = {}
SHX32_1 = CMG
SHX32_1.gangCapturedTurfs = SHX31_1
SHX32_1 = {}
function SHX33_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX10_1
  return SHX0_2
end
function SHX34_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = {}
  SHX2_2 = pairs
  SHX3_2 = SHX0_2.members
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX1_2[SHX6_2] = SHX7_2
  end
  SHX2_2 = pairs
  SHX3_2 = SHX0_2.guests
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX1_2[SHX6_2] = SHX7_2
  end
  return SHX1_2
end
function SHX35_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = {}
  SHX1_2 = pairs
  SHX2_2 = SHX2_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = type
    SHX8_2 = SHX6_2
    SHX7_2 = SHX7_2(SHX8_2)
    if "string" == SHX7_2 and "" ~= SHX6_2 then
      SHX7_2 = #SHX0_2
      SHX7_2 = SHX7_2 + 1
      SHX8_2 = {}
      SHX8_2.gangName = SHX6_2
      SHX8_2.isGuest = false
      SHX0_2[SHX7_2] = SHX8_2
    end
  end
  SHX1_2 = CMG
  SHX1_2.gangPendingInvites = SHX0_2
end
SHX36_1 = SHX35_1
SHX36_1()
SHX36_1 = RegisterNetEvent
SHX37_1 = "2cc35dc0c0"
function SHX38_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = table
  SHX1_2 = SHX1_2.count
  SHX2_2 = SHX2_1
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX2_1
  SHX2_2[SHX1_2] = SHX0_2
  SHX1_2 = SHX35_1
  SHX1_2()
  SHX1_2 = notify
  SHX2_2 = "~g~Gang invite received from "
  SHX3_2 = tostring
  SHX4_2 = SHX0_2 or SHX4_2
  if not SHX0_2 then
    SHX4_2 = ""
  end
  SHX3_2 = SHX3_2(SHX4_2)
  SHX2_2 = SHX2_2 .. SHX3_2
  SHX1_2(SHX2_2)
  SHX1_2 = TriggerEvent
  SHX2_2 = "c89367ffd9"
  SHX1_2(SHX2_2)
end
SHX36_1(SHX37_1, SHX38_1)
SHX36_1 = CMG
function SHX37_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  if SHX0_2 then
    SHX2_2 = type
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    if "string" == SHX2_2 and "" ~= SHX0_2 then
      goto SHX_LABEL_11
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_11:: outside nested blocks until all 'goto SHX_LABEL_11' can see it
  ::SHX_LABEL_11::
  SHX2_2 = TriggerServerEvent
  SHX3_2 = "125d443003"
  SHX4_2 = SHX0_2
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = pairs
  SHX3_2 = SHX2_1
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    if SHX7_2 == SHX0_2 then
      SHX8_2 = SHX2_1
      SHX8_2[SHX6_2] = nil
      break
    end
  end
  SHX2_2 = SHX35_1
  SHX2_2()
end
SHX36_1.gangAcceptInvite = SHX37_1
SHX36_1 = CMG
function SHX37_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  if SHX0_2 then
    SHX1_2 = type
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if "string" == SHX1_2 and "" ~= SHX0_2 then
      goto SHX_LABEL_11
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_11:: outside nested blocks until all 'goto SHX_LABEL_11' can see it
  ::SHX_LABEL_11::
  SHX1_2 = pairs
  SHX2_2 = SHX2_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    if SHX6_2 == SHX0_2 then
      SHX7_2 = SHX2_1
      SHX7_2[SHX5_2] = nil
      break
    end
  end
  SHX1_2 = SHX35_1
  SHX1_2()
end
SHX36_1.gangDeclineInvite = SHX37_1
function SHX36_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.GetRageInputText
  SHX2_2 = SHX0_2
  SHX3_2 = "Yes | No"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if "yes" == SHX1_2 or "Yes" == SHX1_2 then
    SHX2_2 = true
    return SHX2_2
  else
    SHX2_2 = false
    return SHX2_2
  end
end
function SHX37_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX1_2 = {}
  SHX2_2 = pairs
  SHX3_2 = SHX0_2.members
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = table
    SHX8_2 = SHX8_2.copy
    SHX9_2 = SHX7_2
    SHX8_2 = SHX8_2(SHX9_2)
    SHX8_2.user_id = SHX6_2
    SHX9_2 = table
    SHX9_2 = SHX9_2.insert
    SHX10_2 = SHX1_2
    SHX11_2 = SHX8_2
    SHX9_2(SHX10_2, SHX11_2)
  end
  SHX2_2 = pairs
  SHX3_2 = SHX0_2.guests
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = table
    SHX8_2 = SHX8_2.copy
    SHX9_2 = SHX7_2
    SHX8_2 = SHX8_2(SHX9_2)
    SHX8_2.lastLogin = "Offline"
    SHX8_2.user_id = SHX6_2
    SHX9_2 = table
    SHX9_2 = SHX9_2.insert
    SHX10_2 = SHX1_2
    SHX11_2 = SHX8_2
    SHX9_2(SHX10_2, SHX11_2)
  end
  SHX2_2 = {}
  SHX3_2 = SHX10_1
  if SHX0_2 == SHX3_2 then
    SHX3_2 = SHX13_1
    if SHX3_2 then
      goto SHX_LABEL_47
    end
  end
  SHX3_2 = SHX23_1
  -- [FIX IF ERROR] Move ::SHX_LABEL_47:: outside nested blocks until all 'goto SHX_LABEL_47' can see it
  ::SHX_LABEL_47::
  SHX4_2 = SHX3_2 - 1
  SHX4_2 = SHX4_2 * 10
  SHX4_2 = SHX4_2 + 1
  SHX5_2 = table
  SHX5_2 = SHX5_2.count
  SHX6_2 = SHX0_2.members
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = table
  SHX6_2 = SHX6_2.count
  SHX7_2 = SHX0_2.guests
  SHX6_2 = SHX6_2(SHX7_2)
  SHX5_2 = SHX5_2 + SHX6_2
  SHX6_2 = SHX4_2
  SHX7_2 = math
  SHX7_2 = SHX7_2.min
  SHX8_2 = SHX4_2 + 10
  SHX9_2 = SHX5_2 + 1
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
  SHX7_2 = SHX7_2 - 1
  SHX8_2 = 1
  for SHX9_2 = SHX6_2, SHX7_2, SHX8_2 do
    SHX10_2 = table
    SHX10_2 = SHX10_2.insert
    SHX11_2 = SHX2_2
    SHX12_2 = SHX1_2[SHX9_2]
    SHX10_2(SHX11_2, SHX12_2)
  end
  SHX6_2 = #SHX2_2
  if 0 == SHX6_2 then
    SHX6_2 = SHX10_1
    if SHX0_2 == SHX6_2 then
      SHX6_2 = math
      SHX6_2 = SHX6_2.max
      SHX7_2 = SHX13_1
      SHX7_2 = SHX7_2 - 1
      SHX8_2 = 1
      SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
      SHX13_1 = SHX6_2
    else
      SHX6_2 = math
      SHX6_2 = SHX6_2.max
      SHX7_2 = SHX23_1
      SHX7_2 = SHX7_2 - 1
      SHX8_2 = 1
      SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
      SHX23_1 = SHX6_2
    end
  end
  return SHX2_2
end
function SHX38_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = SHX10_1
  if SHX0_2 then
    SHX0_2 = SHX10_1.contributions
    if SHX0_2 then
      goto SHX_LABEL_9
    end
  end
  SHX0_2 = {}
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  SHX1_2 = table
  SHX1_2 = SHX1_2.sort
  SHX2_2 = SHX0_2
  function SHX3_2(SHX0_3, SHX1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX2_3, SHX3_3
    SHX2_3 = SHX0_3.amount
    SHX3_3 = SHX1_3.amount
    SHX2_3 = SHX2_3 > SHX3_3
    return SHX2_3
  end
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = {}
  SHX2_2 = SHX19_1
  SHX2_2 = SHX2_2 - 1
  SHX2_2 = SHX2_2 * 10
  SHX2_2 = SHX2_2 + 1
  SHX3_2 = SHX2_2
  SHX4_2 = math
  SHX4_2 = SHX4_2.min
  SHX5_2 = SHX19_1
  SHX5_2 = SHX5_2 + 10
  SHX6_2 = #SHX0_2
  SHX6_2 = SHX6_2 + 1
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SHX4_2 - 1
  SHX5_2 = 1
  for SHX6_2 = SHX3_2, SHX4_2, SHX5_2 do
    SHX7_2 = table
    SHX7_2 = SHX7_2.insert
    SHX8_2 = SHX1_2
    SHX9_2 = SHX0_2[SHX6_2]
    SHX7_2(SHX8_2, SHX9_2)
  end
  SHX3_2 = #SHX1_2
  if 0 == SHX3_2 then
    SHX3_2 = math
    SHX3_2 = SHX3_2.max
    SHX4_2 = SHX19_1
    SHX4_2 = SHX4_2 - 1
    SHX5_2 = 1
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
    SHX19_1 = SHX3_2
  end
  SHX3_2 = SHX1_2
  SHX4_2 = #SHX0_2
  return SHX3_2, SHX4_2
end
function SHX39_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX1_2 = 0
  SHX2_2 = pairs
  SHX3_2 = SHX0_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX7_2 = pairs
    SHX8_2 = SHX0_1.permissions
    SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
    for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
      SHX13_2 = SHX12_2.id
      if SHX13_2 == SHX6_2 then
        SHX1_2 = SHX1_2 + 1
        break
      end
    end
  end
  return SHX1_2
end
function SHX40_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  if "Friendly" == SHX0_2 then
    SHX1_2 = 50
    SHX2_2 = 255
    SHX3_2 = 50
    return SHX1_2, SHX2_2, SHX3_2
  elseif "Enemy" == SHX0_2 then
    SHX1_2 = 255
    SHX2_2 = 50
    SHX3_2 = 50
    return SHX1_2, SHX2_2, SHX3_2
  else
    SHX1_2 = 50
    SHX2_2 = 50
    SHX3_2 = 50
    return SHX1_2, SHX2_2, SHX3_2
  end
end
function SHX41_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.gangUseNui
  if SHX0_2 then
    return
  end
  SHX0_2 = SHX1_1
  if "noGang" == SHX0_2 then
    SHX0_2 = DisableControlAction
    SHX1_2 = 0
    SHX2_2 = 200
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.isNewPlayer
    SHX0_2 = SHX0_2()
    if SHX0_2 then
      SHX0_2 = drawNativeNotification
      SHX1_2 = "Press ~INPUT_SELECT_CHARACTER_MICHAEL~ to toggle the Gang Menu."
      SHX0_2(SHX1_2)
    end
    SHX0_2 = DrawRect
    SHX1_2 = 0.471
    SHX2_2 = 0.329
    SHX3_2 = 0.285
    SHX4_2 = -0.005
    SHX5_2 = 0
    SHX6_2 = 168
    SHX7_2 = 255
    SHX8_2 = 204
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX0_2 = DrawRect
    SHX1_2 = 0.471
    SHX2_2 = 0.304
    SHX3_2 = 0.285
    SHX4_2 = 0.046
    SHX5_2 = 0
    SHX6_2 = 0
    SHX7_2 = 0
    SHX8_2 = 150
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX0_2 = DrawRect
    SHX1_2 = 0.471
    SHX2_2 = 0.428
    SHX3_2 = 0.285
    SHX4_2 = 0.194
    SHX5_2 = 0
    SHX6_2 = 0
    SHX7_2 = 0
    SHX8_2 = 150
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX0_2 = DrawRect
    SHX1_2 = 0.383
    SHX2_2 = 0.442
    SHX3_2 = 0.066
    SHX4_2 = 0.046
    SHX5_2 = CreateGangSelectionRed
    SHX6_2 = CreateGangSelectionGreen
    SHX7_2 = CreateGangSelectionBlue
    SHX8_2 = 150
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX0_2 = DrawRect
    SHX1_2 = 0.469
    SHX2_2 = 0.442
    SHX3_2 = 0.066
    SHX4_2 = 0.046
    SHX5_2 = JoinGangSelectionRed
    SHX6_2 = JoinGangSelectionGreen
    SHX7_2 = JoinGangSelectionBlue
    SHX8_2 = 150
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX0_2 = DrawAdvancedText
    SHX1_2 = 0.558
    SHX2_2 = 0.303
    SHX3_2 = 0.005
    SHX4_2 = 0.0028
    SHX5_2 = 0.539
    SHX6_2 = "CMG Gangs"
    SHX7_2 = 255
    SHX8_2 = 255
    SHX9_2 = 255
    SHX10_2 = 255
    SHX11_2 = 7
    SHX12_2 = 0
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX0_2 = DrawAdvancedText
    SHX1_2 = 0.478
    SHX2_2 = 0.442
    SHX3_2 = 0.005
    SHX4_2 = 0.0028
    SHX5_2 = 0.473
    SHX6_2 = "Create Gang"
    SHX7_2 = 255
    SHX8_2 = 255
    SHX9_2 = 255
    SHX10_2 = 255
    SHX11_2 = 4
    SHX12_2 = 0
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX0_2 = DrawAdvancedText
    SHX1_2 = 0.564
    SHX2_2 = 0.443
    SHX3_2 = 0.005
    SHX4_2 = 0.0028
    SHX5_2 = 0.473
    SHX6_2 = "Join Gang"
    SHX7_2 = 255
    SHX8_2 = 255
    SHX9_2 = 255
    SHX10_2 = 255
    SHX11_2 = 4
    SHX12_2 = 0
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX0_2 = DrawRect
    SHX1_2 = 0.561
    SHX2_2 = 0.377
    SHX3_2 = 0.065
    SHX4_2 = -0.003
    SHX5_2 = 0
    SHX6_2 = 168
    SHX7_2 = 255
    SHX8_2 = 204
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX0_2 = DrawAdvancedText
    SHX1_2 = 0.654
    SHX2_2 = 0.37
    SHX3_2 = 0.005
    SHX4_2 = 0.0028
    SHX5_2 = 0.364
    SHX6_2 = "Invite list"
    SHX7_2 = 255
    SHX8_2 = 255
    SHX9_2 = 255
    SHX10_2 = 255
    SHX11_2 = 4
    SHX12_2 = 0
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX0_2 = pairs
    SHX1_2 = SHX2_1
    SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
    for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
      SHX6_2 = DrawAdvancedText
      SHX7_2 = 0.656
      SHX8_2 = 0.02 * SHX4_2
      SHX8_2 = 0.398 + SHX8_2
      SHX9_2 = 0.005
      SHX10_2 = 0.0028
      SHX11_2 = 0.234
      SHX12_2 = SHX5_2
      SHX13_2 = 255
      SHX14_2 = 255
      SHX15_2 = 255
      SHX16_2 = 255
      SHX17_2 = 0
      SHX18_2 = 0
      SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
      SHX6_2 = CursorInArea
      SHX7_2 = 0.525
      SHX8_2 = 0.59
      SHX9_2 = 0.02 * SHX4_2
      SHX9_2 = 0.38 + SHX9_2
      SHX10_2 = 0.02 * SHX4_2
      SHX10_2 = 0.396 + SHX10_2
      SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
      if SHX6_2 then
        SHX6_2 = SHX3_1
        if SHX4_2 ~= SHX6_2 then
          SHX6_2 = DrawRect
          SHX7_2 = 0.56
          SHX8_2 = 0.02 * SHX4_2
          SHX8_2 = 0.39 + SHX8_2
          SHX9_2 = 0.062
          SHX10_2 = 0.019
          SHX11_2 = 0
          SHX12_2 = 168
          SHX13_2 = 255
          SHX14_2 = 150
          SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          SHX6_2 = IsControlJustPressed
          SHX7_2 = 1
          SHX8_2 = 329
          SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
          if not SHX6_2 then
            SHX6_2 = IsDisabledControlJustPressed
            SHX7_2 = 1
            SHX8_2 = 329
            SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
          end
          if SHX6_2 then
            SHX3_1 = SHX4_2
          end
      end
      else
        SHX6_2 = SHX3_1
        if SHX4_2 == SHX6_2 then
          SHX6_2 = DrawRect
          SHX7_2 = 0.56
          SHX8_2 = 0.02 * SHX4_2
          SHX8_2 = 0.39 + SHX8_2
          SHX9_2 = 0.062
          SHX10_2 = 0.019
          SHX11_2 = 0
          SHX12_2 = 168
          SHX13_2 = 255
          SHX14_2 = 150
          SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
        end
      end
    end
    SHX0_2 = CursorInArea
    SHX1_2 = 0.35
    SHX2_2 = 0.415
    SHX3_2 = 0.415
    SHX4_2 = 0.46
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
    if SHX0_2 then
      CreateGangSelectionRed = 0
      CreateGangSelectionGreen = 168
      CreateGangSelectionBlue = 255
      SHX0_2 = IsControlJustPressed
      SHX1_2 = 1
      SHX2_2 = 329
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
      if not SHX0_2 then
        SHX0_2 = IsDisabledControlJustPressed
        SHX1_2 = 1
        SHX2_2 = 329
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
      end
      if SHX0_2 then
        SHX0_2 = PlaySound
        SHX1_2 = -1
        SHX2_2 = "SELECT"
        SHX3_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        SHX4_2 = false
        SHX5_2 = 0
        SHX6_2 = true
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
        SHX0_2 = CMG
        SHX0_2 = SHX0_2.GetRageInputText
        SHX1_2 = "Enter Gang Name:"
        SHX0_2 = SHX0_2(SHX1_2)
        if nil ~= SHX0_2 and "null" ~= SHX0_2 and "" ~= SHX0_2 then
          SHX1_2 = TriggerServerEvent
          SHX2_2 = "36ca78a1b5"
          SHX3_2 = SHX0_2
          SHX1_2(SHX2_2, SHX3_2)
        else
          SHX1_2 = tCMG
          SHX1_2 = SHX1_2.notify
          SHX2_2 = "~r~No gang name entered!"
          SHX1_2(SHX2_2)
        end
      end
    else
      CreateGangSelectionRed = 0
      CreateGangSelectionGreen = 0
      CreateGangSelectionBlue = 0
    end
    SHX0_2 = CursorInArea
    SHX1_2 = 0.435
    SHX2_2 = 0.51
    SHX3_2 = 0.415
    SHX4_2 = 0.46
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
    if SHX0_2 then
      JoinGangSelectionRed = 0
      JoinGangSelectionGreen = 168
      JoinGangSelectionBlue = 255
      SHX0_2 = IsControlJustPressed
      SHX1_2 = 1
      SHX2_2 = 329
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
      if not SHX0_2 then
        SHX0_2 = IsDisabledControlJustPressed
        SHX1_2 = 1
        SHX2_2 = 329
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
      end
      if SHX0_2 then
        SHX0_2 = PlaySound
        SHX1_2 = -1
        SHX2_2 = "SELECT"
        SHX3_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        SHX4_2 = false
        SHX5_2 = 0
        SHX6_2 = true
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
        SHX0_2 = SHX3_1
        if nil ~= SHX0_2 then
          SHX1_2 = SHX3_1
          SHX0_2 = SHX2_1
          SHX0_2 = SHX0_2[SHX1_2]
          SHX3_1 = SHX0_2
          SHX0_2 = TriggerServerEvent
          SHX1_2 = "125d443003"
          SHX2_2 = SHX3_1
          SHX0_2(SHX1_2, SHX2_2)
          SHX0_2 = {}
          SHX2_1 = SHX0_2
          SHX0_2 = SHX35_1
          SHX0_2()
          SHX0_2 = "gang"
          SHX1_1 = SHX0_2
        else
          SHX0_2 = tCMG
          SHX0_2 = SHX0_2.notify
          SHX1_2 = "~r~No gang invite selected"
          SHX0_2(SHX1_2)
        end
      end
    else
      JoinGangSelectionRed = 0
      JoinGangSelectionGreen = 0
      JoinGangSelectionBlue = 0
    end
    SHX0_2 = DrawAdvancedText
    SHX1_2 = 0.478
    SHX2_2 = 0.372
    SHX3_2 = 0.005
    SHX4_2 = 0.0028
    SHX5_2 = 0.473
    SHX6_2 = "Guests"
    SHX7_2 = 255
    SHX8_2 = 255
    SHX9_2 = 255
    SHX10_2 = 255
    SHX11_2 = 4
    SHX12_2 = 0
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX0_2 = CursorInAreaRect
    SHX1_2 = 0.383
    SHX2_2 = 0.372
    SHX3_2 = 0.066
    SHX4_2 = 0.046
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
    if SHX0_2 then
      SHX0_2 = DrawRect
      SHX1_2 = 0.383
      SHX2_2 = 0.372
      SHX3_2 = 0.066
      SHX4_2 = 0.046
      SHX5_2 = SHX7_1
      SHX6_2 = SHX8_1
      SHX7_2 = SHX9_1
      SHX8_2 = 150
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX0_2 = IsControlJustPressed
      SHX1_2 = 1
      SHX2_2 = 329
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
      if not SHX0_2 then
        SHX0_2 = IsDisabledControlJustPressed
        SHX1_2 = 1
        SHX2_2 = 329
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
      end
      if SHX0_2 then
        SHX0_2 = PlaySound
        SHX1_2 = -1
        SHX2_2 = "SELECT"
        SHX3_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        SHX4_2 = false
        SHX5_2 = 0
        SHX6_2 = true
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
        SHX0_2 = "guest"
        SHX1_1 = SHX0_2
      end
    else
      SHX0_2 = DrawRect
      SHX1_2 = 0.383
      SHX2_2 = 0.372
      SHX3_2 = 0.066
      SHX4_2 = 0.046
      SHX5_2 = 0
      SHX6_2 = 0
      SHX7_2 = 0
      SHX8_2 = 150
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    end
    SHX0_2 = SHX20_1
    if SHX0_2 then
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.564
      SHX2_2 = 0.372
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.473
      SHX6_2 = "Settings"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 4
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = CursorInAreaRect
      SHX1_2 = 0.469
      SHX2_2 = 0.372
      SHX3_2 = 0.066
      SHX4_2 = 0.046
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
      if SHX0_2 then
        SHX0_2 = DrawRect
        SHX1_2 = 0.469
        SHX2_2 = 0.372
        SHX3_2 = 0.066
        SHX4_2 = 0.046
        SHX5_2 = SHX7_1
        SHX6_2 = SHX8_1
        SHX7_2 = SHX9_1
        SHX8_2 = 150
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
        SHX0_2 = IsControlJustPressed
        SHX1_2 = 1
        SHX2_2 = 329
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        if not SHX0_2 then
          SHX0_2 = IsDisabledControlJustPressed
          SHX1_2 = 1
          SHX2_2 = 329
          SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        end
        if SHX0_2 then
          SHX0_2 = PlaySound
          SHX1_2 = -1
          SHX2_2 = "SELECT"
          SHX3_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          SHX4_2 = false
          SHX5_2 = 0
          SHX6_2 = true
          SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
          SHX0_2 = "settings"
          SHX1_1 = SHX0_2
        end
      else
        SHX0_2 = DrawRect
        SHX1_2 = 0.469
        SHX2_2 = 0.372
        SHX3_2 = 0.066
        SHX4_2 = 0.046
        SHX5_2 = 0
        SHX6_2 = 0
        SHX7_2 = 0
        SHX8_2 = 150
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      end
    end
  end
  SHX0_2 = SHX10_1
  if SHX0_2 then
    SHX0_2 = SHX1_1
    if "funds" == SHX0_2 then
      SHX0_2 = DrawRect
      SHX1_2 = 0.501
      SHX2_2 = 0.558
      SHX3_2 = 0.421
      SHX4_2 = 0.326
      SHX5_2 = 0
      SHX6_2 = 0
      SHX7_2 = 0
      SHX8_2 = 150
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX0_2 = DrawRect
      SHX1_2 = 0.501
      SHX2_2 = 0.374
      SHX3_2 = 0.421
      SHX4_2 = 0.047
      SHX5_2 = 18
      SHX6_2 = 82
      SHX7_2 = 228
      SHX8_2 = 248
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.591
      SHX2_2 = 0.378
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.48
      SHX6_2 = "cmg gang - funds"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 7
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.581
      SHX2_2 = 0.464
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.5
      SHX6_2 = "Gang Funds"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 0
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.581
      SHX2_2 = 0.502
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "\194\163"
      SHX7_2 = getMoneyStringFormatted
      SHX8_2 = SHX10_1.displayMoney
      SHX7_2 = SHX7_2(SHX8_2)
      SHX6_2 = SHX6_2 .. SHX7_2
      SHX7_2 = 25
      SHX8_2 = 199
      SHX9_2 = 65
      SHX10_2 = 255
      SHX11_2 = 0
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.436
      SHX2_2 = 0.578
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Deposit ("
      SHX7_2 = tostring
      SHX8_2 = math
      SHX8_2 = SHX8_2.floor
      SHX9_2 = CMG
      SHX9_2 = SHX9_2.getTunableValue
      SHX10_2 = "gang_tax"
      SHX9_2 = SHX9_2(SHX10_2)
      SHX9_2 = SHX9_2 * 100.0
      SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2 = SHX8_2(SHX9_2)
      SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
      SHX8_2 = "% Fee)"
      SHX6_2 = SHX6_2 .. SHX7_2 .. SHX8_2
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 6
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.536
      SHX2_2 = 0.578
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Deposit All ("
      SHX7_2 = tostring
      SHX8_2 = math
      SHX8_2 = SHX8_2.floor
      SHX9_2 = CMG
      SHX9_2 = SHX9_2.getTunableValue
      SHX10_2 = "gang_tax"
      SHX9_2 = SHX9_2(SHX10_2)
      SHX9_2 = SHX9_2 * 100.0
      SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2 = SHX8_2(SHX9_2)
      SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
      SHX8_2 = "% Fee)"
      SHX6_2 = SHX6_2 .. SHX7_2 .. SHX8_2
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 6
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.637
      SHX2_2 = 0.578
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Withdraw"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 6
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.737
      SHX2_2 = 0.578
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Withdraw All"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 6
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.775
      SHX2_2 = 0.693
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Back"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 4
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = CursorInArea
      SHX1_2 = 0.3083
      SHX2_2 = 0.3718
      SHX3_2 = 0.549
      SHX4_2 = 0.5999
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
      if SHX0_2 then
        SHX0_2 = DrawRect
        SHX1_2 = 0.341
        SHX2_2 = 0.576
        SHX3_2 = 0.075
        SHX4_2 = 0.056
        SHX5_2 = SHX7_1
        SHX6_2 = SHX8_1
        SHX7_2 = SHX9_1
        SHX8_2 = 150
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
        SHX0_2 = IsControlJustPressed
        SHX1_2 = 1
        SHX2_2 = 329
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        if not SHX0_2 then
          SHX0_2 = IsDisabledControlJustPressed
          SHX1_2 = 1
          SHX2_2 = 329
          SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        end
        if SHX0_2 then
          SHX0_2 = PlaySound
          SHX1_2 = -1
          SHX2_2 = "SELECT"
          SHX3_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          SHX4_2 = false
          SHX5_2 = 0
          SHX6_2 = true
          SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
          SHX0_2 = CMG
          SHX0_2 = SHX0_2.hasGangPermission
          SHX1_2 = "deposit"
          SHX0_2 = SHX0_2(SHX1_2)
          if SHX0_2 then
            SHX0_2 = CMG
            SHX0_2 = SHX0_2.GetRageInputText
            SHX1_2 = "Enter amount:"
            SHX0_2 = SHX0_2(SHX1_2)
            if nil ~= SHX0_2 then
              SHX1_2 = TriggerServerEvent
              SHX2_2 = "36ba8d4574"
              SHX3_2 = SHX0_2
              SHX1_2(SHX2_2, SHX3_2)
            else
              SHX1_2 = tCMG
              SHX1_2 = SHX1_2.notify
              SHX2_2 = "~r~No amount entered!"
              SHX1_2(SHX2_2)
            end
          else
            SHX0_2 = tCMG
            SHX0_2 = SHX0_2.notify
            SHX1_2 = "~r~You don't have permission to deposit"
            SHX0_2(SHX1_2)
          end
        end
      else
        SHX0_2 = DrawRect
        SHX1_2 = 0.341
        SHX2_2 = 0.576
        SHX3_2 = 0.075
        SHX4_2 = 0.056
        SHX5_2 = 0
        SHX6_2 = 0
        SHX7_2 = 0
        SHX8_2 = 150
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      end
      SHX0_2 = CursorInArea
      SHX1_2 = 0.4083
      SHX2_2 = 0.4718
      SHX3_2 = 0.549
      SHX4_2 = 0.5999
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
      if SHX0_2 then
        SHX0_2 = DrawRect
        SHX1_2 = 0.441
        SHX2_2 = 0.576
        SHX3_2 = 0.075
        SHX4_2 = 0.056
        SHX5_2 = SHX7_1
        SHX6_2 = SHX8_1
        SHX7_2 = SHX9_1
        SHX8_2 = 150
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
        SHX0_2 = IsControlJustPressed
        SHX1_2 = 1
        SHX2_2 = 329
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        if not SHX0_2 then
          SHX0_2 = IsDisabledControlJustPressed
          SHX1_2 = 1
          SHX2_2 = 329
          SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        end
        if SHX0_2 then
          SHX0_2 = PlaySound
          SHX1_2 = -1
          SHX2_2 = "SELECT"
          SHX3_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          SHX4_2 = false
          SHX5_2 = 0
          SHX6_2 = true
          SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
          SHX0_2 = CMG
          SHX0_2 = SHX0_2.hasGangPermission
          SHX1_2 = "deposit"
          SHX0_2 = SHX0_2(SHX1_2)
          if SHX0_2 then
            SHX0_2 = TriggerServerEvent
            SHX1_2 = "8536953bae"
            SHX0_2(SHX1_2)
          else
            SHX0_2 = tCMG
            SHX0_2 = SHX0_2.notify
            SHX1_2 = "~r~You don't have permission to deposit"
            SHX0_2(SHX1_2)
          end
        end
      else
        SHX0_2 = DrawRect
        SHX1_2 = 0.441
        SHX2_2 = 0.576
        SHX3_2 = 0.075
        SHX4_2 = 0.056
        SHX5_2 = 0
        SHX6_2 = 0
        SHX7_2 = 0
        SHX8_2 = 150
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      end
      SHX0_2 = CursorInArea
      SHX1_2 = 0.5088
      SHX2_2 = 0.5739
      SHX3_2 = 0.5481
      SHX4_2 = 0.6018
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
      if SHX0_2 then
        SHX0_2 = DrawRect
        SHX1_2 = 0.542
        SHX2_2 = 0.576
        SHX3_2 = 0.075
        SHX4_2 = 0.056
        SHX5_2 = SHX7_1
        SHX6_2 = SHX8_1
        SHX7_2 = SHX9_1
        SHX8_2 = 150
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
        SHX0_2 = IsControlJustPressed
        SHX1_2 = 1
        SHX2_2 = 329
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        if not SHX0_2 then
          SHX0_2 = IsDisabledControlJustPressed
          SHX1_2 = 1
          SHX2_2 = 329
          SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        end
        if SHX0_2 then
          SHX0_2 = PlaySound
          SHX1_2 = -1
          SHX2_2 = "SELECT"
          SHX3_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          SHX4_2 = false
          SHX5_2 = 0
          SHX6_2 = true
          SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
          SHX0_2 = CMG
          SHX0_2 = SHX0_2.hasGangPermission
          SHX1_2 = "withdraw"
          SHX0_2 = SHX0_2(SHX1_2)
          if SHX0_2 then
            SHX0_2 = CMG
            SHX0_2 = SHX0_2.GetRageInputText
            SHX1_2 = "Enter amount:"
            SHX0_2 = SHX0_2(SHX1_2)
            if nil ~= SHX0_2 then
              SHX1_2 = TriggerServerEvent
              SHX2_2 = "21cfbc3c22"
              SHX3_2 = SHX0_2
              SHX1_2(SHX2_2, SHX3_2)
            else
              SHX1_2 = tCMG
              SHX1_2 = SHX1_2.notify
              SHX2_2 = "~r~No amount entered!"
              SHX1_2(SHX2_2)
            end
          else
            SHX0_2 = tCMG
            SHX0_2 = SHX0_2.notify
            SHX1_2 = "~r~You don't have permission to withdraw"
            SHX0_2(SHX1_2)
          end
        end
      else
        SHX0_2 = DrawRect
        SHX1_2 = 0.542
        SHX2_2 = 0.576
        SHX3_2 = 0.075
        SHX4_2 = 0.056
        SHX5_2 = 0
        SHX6_2 = 0
        SHX7_2 = 0
        SHX8_2 = 150
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      end
      SHX0_2 = CursorInArea
      SHX1_2 = 0.6088
      SHX2_2 = 0.6739
      SHX3_2 = 0.5481
      SHX4_2 = 0.6018
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
      if SHX0_2 then
        SHX0_2 = DrawRect
        SHX1_2 = 0.642
        SHX2_2 = 0.576
        SHX3_2 = 0.075
        SHX4_2 = 0.056
        SHX5_2 = SHX7_1
        SHX6_2 = SHX8_1
        SHX7_2 = SHX9_1
        SHX8_2 = 150
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
        SHX0_2 = IsControlJustPressed
        SHX1_2 = 1
        SHX2_2 = 329
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        if not SHX0_2 then
          SHX0_2 = IsDisabledControlJustPressed
          SHX1_2 = 1
          SHX2_2 = 329
          SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        end
        if SHX0_2 then
          SHX0_2 = PlaySound
          SHX1_2 = -1
          SHX2_2 = "SELECT"
          SHX3_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          SHX4_2 = false
          SHX5_2 = 0
          SHX6_2 = true
          SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
          SHX0_2 = CMG
          SHX0_2 = SHX0_2.hasGangPermission
          SHX1_2 = "withdraw"
          SHX0_2 = SHX0_2(SHX1_2)
          if SHX0_2 then
            SHX0_2 = TriggerServerEvent
            SHX1_2 = "be7d1bceb0"
            SHX0_2(SHX1_2)
          else
            SHX0_2 = tCMG
            SHX0_2 = SHX0_2.notify
            SHX1_2 = "~r~You don't have permission to withdraw"
            SHX0_2(SHX1_2)
          end
        end
      else
        SHX0_2 = DrawRect
        SHX1_2 = 0.642
        SHX2_2 = 0.576
        SHX3_2 = 0.075
        SHX4_2 = 0.056
        SHX5_2 = 0
        SHX6_2 = 0
        SHX7_2 = 0
        SHX8_2 = 150
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      end
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.53645
      SHX2_2 = 0.653
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "View Contributions"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 6
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = CursorInArea
      SHX1_2 = 0.4083
      SHX2_2 = 0.4718
      SHX3_2 = 0.624
      SHX4_2 = 0.6749
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
      if SHX0_2 then
        SHX0_2 = DrawRect
        SHX1_2 = 0.44145
        SHX2_2 = 0.651
        SHX3_2 = 0.075
        SHX4_2 = 0.056
        SHX5_2 = SHX7_1
        SHX6_2 = SHX8_1
        SHX7_2 = SHX9_1
        SHX8_2 = 150
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
        SHX0_2 = IsControlJustPressed
        SHX1_2 = 1
        SHX2_2 = 329
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        if not SHX0_2 then
          SHX0_2 = IsDisabledControlJustPressed
          SHX1_2 = 1
          SHX2_2 = 329
          SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        end
        if SHX0_2 then
          SHX0_2 = PlaySound
          SHX1_2 = -1
          SHX2_2 = "SELECT"
          SHX3_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          SHX4_2 = false
          SHX5_2 = 0
          SHX6_2 = true
          SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
          SHX10_1.contributions = nil
          SHX0_2 = TriggerServerEvent
          SHX1_2 = "cef5792c69"
          SHX0_2(SHX1_2)
          SHX0_2 = "contributions"
          SHX1_1 = SHX0_2
        end
      else
        SHX0_2 = DrawRect
        SHX1_2 = 0.44145
        SHX2_2 = 0.651
        SHX3_2 = 0.075
        SHX4_2 = 0.056
        SHX5_2 = 0
        SHX6_2 = 0
        SHX7_2 = 0
        SHX8_2 = 150
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      end
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.637
      SHX2_2 = 0.653
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Withdraw Turf"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 6
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = CursorInArea
      SHX1_2 = 0.5088
      SHX2_2 = 0.5739
      SHX3_2 = 0.624
      SHX4_2 = 0.6749
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
      if SHX0_2 then
        SHX0_2 = DrawRect
        SHX1_2 = 0.542
        SHX2_2 = 0.651
        SHX3_2 = 0.075
        SHX4_2 = 0.056
        SHX5_2 = SHX7_1
        SHX6_2 = SHX8_1
        SHX7_2 = SHX9_1
        SHX8_2 = 150
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
        SHX0_2 = IsControlJustPressed
        SHX1_2 = 1
        SHX2_2 = 329
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        if not SHX0_2 then
          SHX0_2 = IsDisabledControlJustPressed
          SHX1_2 = 1
          SHX2_2 = 329
          SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        end
        if SHX0_2 then
          SHX0_2 = PlaySound
          SHX1_2 = -1
          SHX2_2 = "SELECT"
          SHX3_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          SHX4_2 = false
          SHX5_2 = 0
          SHX6_2 = true
          SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
          SHX0_2 = CMG
          SHX0_2 = SHX0_2.hasGangPermission
          SHX1_2 = "withdrawturf"
          SHX0_2 = SHX0_2(SHX1_2)
          if SHX0_2 then
            SHX0_2 = CMG
            SHX0_2 = SHX0_2.GetRageInputText
            SHX1_2 = "Enter amount:"
            SHX0_2 = SHX0_2(SHX1_2)
            if nil ~= SHX0_2 then
              SHX1_2 = tonumber
              SHX2_2 = SHX0_2
              SHX1_2 = SHX1_2(SHX2_2)
              if SHX1_2 then
                SHX1_2 = TriggerServerEvent
                SHX2_2 = "6aac8fd738"
                SHX3_2 = tonumber
                SHX4_2 = SHX0_2
                SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2 = SHX3_2(SHX4_2)
                SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
            end
            else
              SHX1_2 = tCMG
              SHX1_2 = SHX1_2.notify
              SHX2_2 = "~r~No amount entered!"
              SHX1_2(SHX2_2)
            end
          else
            SHX0_2 = tCMG
            SHX0_2 = SHX0_2.notify
            SHX1_2 = "~r~You don't have permission to withdraw turf"
            SHX0_2(SHX1_2)
          end
        end
      else
        SHX0_2 = DrawRect
        SHX1_2 = 0.542
        SHX2_2 = 0.651
        SHX3_2 = 0.075
        SHX4_2 = 0.056
        SHX5_2 = 0
        SHX6_2 = 0
        SHX7_2 = 0
        SHX8_2 = 150
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      end
      SHX0_2 = CursorInArea
      SHX1_2 = 0.6583
      SHX2_2 = 0.7056
      SHX3_2 = 0.6712
      SHX4_2 = 0.7064
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
      if SHX0_2 then
        SHX0_2 = DrawRect
        SHX1_2 = 0.681
        SHX2_2 = 0.689
        SHX3_2 = 0.045
        SHX4_2 = 0.036
        SHX5_2 = SHX7_1
        SHX6_2 = SHX8_1
        SHX7_2 = SHX9_1
        SHX8_2 = 150
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
        SHX0_2 = IsControlJustPressed
        SHX1_2 = 1
        SHX2_2 = 329
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        if not SHX0_2 then
          SHX0_2 = IsDisabledControlJustPressed
          SHX1_2 = 1
          SHX2_2 = 329
          SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        end
        if SHX0_2 then
          SHX0_2 = PlaySound
          SHX1_2 = -1
          SHX2_2 = "SELECT"
          SHX3_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          SHX4_2 = false
          SHX5_2 = 0
          SHX6_2 = true
          SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
          SHX0_2 = "gang"
          SHX1_1 = SHX0_2
        end
      else
        SHX0_2 = DrawRect
        SHX1_2 = 0.681
        SHX2_2 = 0.689
        SHX3_2 = 0.045
        SHX4_2 = 0.036
        SHX5_2 = 0
        SHX6_2 = 0
        SHX7_2 = 0
        SHX8_2 = 150
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      end
    end
  end
  SHX0_2 = SHX10_1
  if SHX0_2 then
    SHX0_2 = SHX1_1
    if "members" == SHX0_2 then
      SHX0_2 = DrawRect
      SHX1_2 = 0.501
      SHX2_2 = 0.525
      SHX3_2 = 0.421
      SHX4_2 = 0.387
      SHX5_2 = 0
      SHX6_2 = 0
      SHX7_2 = 0
      SHX8_2 = 150
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX0_2 = DrawRect
      SHX1_2 = 0.501
      SHX2_2 = 0.308
      SHX3_2 = 0.421
      SHX4_2 = 0.047
      SHX5_2 = 18
      SHX6_2 = 82
      SHX7_2 = 228
      SHX8_2 = 248
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.591
      SHX2_2 = 0.312
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.48
      SHX6_2 = "CMG gang - members"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 7
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawRect
      SHX1_2 = 0.448
      SHX2_2 = 0.52
      SHX3_2 = 0.295
      SHX4_2 = 0.291
      SHX5_2 = 0
      SHX6_2 = 0
      SHX7_2 = 0
      SHX8_2 = 150
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.449
      SHX2_2 = 0.359
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Name"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 6
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.506
      SHX2_2 = 0.359
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "ID"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 6
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.555
      SHX2_2 = 0.359
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Control"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 6
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.625
      SHX2_2 = 0.359
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Last Seen"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 6
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.675
      SHX2_2 = 0.359
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Pin"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 6
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.746
      SHX2_2 = 0.39
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Permissions"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 4
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.746
      SHX2_2 = 0.465
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Lockdown"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 4
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.746
      SHX2_2 = 0.54
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Kick"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 4
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.746
      SHX2_2 = 0.615
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Invite"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 4
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.491
      SHX2_2 = 0.695
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Previous"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 4
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.581
      SHX2_2 = 0.695
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Next"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 4
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = table
      SHX0_2 = SHX0_2.count
      SHX1_2 = SHX10_1.members
      SHX0_2 = SHX0_2(SHX1_2)
      SHX1_2 = table
      SHX1_2 = SHX1_2.count
      SHX2_2 = SHX10_1.guests
      SHX1_2 = SHX1_2(SHX2_2)
      SHX0_2 = SHX0_2 + SHX1_2
      SHX1_2 = DrawAdvancedText
      SHX2_2 = 0.536
      SHX3_2 = 0.695
      SHX4_2 = 0.005
      SHX5_2 = 0.0028
      SHX6_2 = 0.4
      SHX7_2 = tostring
      SHX8_2 = SHX13_1
      SHX7_2 = SHX7_2(SHX8_2)
      SHX8_2 = "/"
      SHX9_2 = tostring
      SHX10_2 = math
      SHX10_2 = SHX10_2.ceil
      SHX11_2 = SHX0_2 / 10.0
      SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2 = SHX10_2(SHX11_2)
      SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
      SHX7_2 = SHX7_2 .. SHX8_2 .. SHX9_2
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 255
      SHX12_2 = 4
      SHX13_2 = 0
      SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
      SHX1_2 = DrawAdvancedText
      SHX2_2 = 0.775
      SHX3_2 = 0.693
      SHX4_2 = 0.005
      SHX5_2 = 0.0028
      SHX6_2 = 0.4
      SHX7_2 = "Back"
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 255
      SHX12_2 = 4
      SHX13_2 = 0
      SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
      SHX1_2 = pairs
      SHX2_2 = SHX37_1
      SHX3_2 = SHX10_1
      SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2 = SHX2_2(SHX3_2)
      SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
      for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
        SHX7_2 = "Guest"
        SHX8_2 = SHX6_2.permissions
        if SHX8_2 then
          SHX8_2 = tostring
          SHX9_2 = math
          SHX9_2 = SHX9_2.floor
          SHX10_2 = SHX39_1
          SHX11_2 = SHX6_2.permissions
          SHX10_2 = SHX10_2(SHX11_2)
          SHX11_2 = table
          SHX11_2 = SHX11_2.count
          SHX12_2 = SHX0_1.permissions
          SHX11_2 = SHX11_2(SHX12_2)
          SHX10_2 = SHX10_2 / SHX11_2
          SHX10_2 = SHX10_2 * 100.0
          SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2 = SHX9_2(SHX10_2)
          SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
          SHX9_2 = "%"
          SHX8_2 = SHX8_2 .. SHX9_2
          SHX7_2 = SHX8_2
        end
        SHX8_2 = DrawAdvancedText
        SHX9_2 = 0.449
        SHX10_2 = 0.0287 * SHX5_2
        SHX10_2 = 0.361 + SHX10_2
        SHX11_2 = 0.005
        SHX12_2 = 0.0028
        SHX13_2 = 0.4
        SHX14_2 = SHX6_2.name
        SHX15_2 = 255
        SHX16_2 = 255
        SHX17_2 = 255
        SHX18_2 = 255
        SHX19_2 = 6
        SHX20_2 = 0
        SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
        SHX8_2 = DrawAdvancedText
        SHX9_2 = 0.506
        SHX10_2 = 0.0287 * SHX5_2
        SHX10_2 = 0.361 + SHX10_2
        SHX11_2 = 0.005
        SHX12_2 = 0.0028
        SHX13_2 = 0.4
        SHX14_2 = SHX6_2.user_id
        SHX15_2 = 255
        SHX16_2 = 255
        SHX17_2 = 255
        SHX18_2 = 255
        SHX19_2 = 6
        SHX20_2 = 0
        SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
        SHX8_2 = DrawAdvancedText
        SHX9_2 = 0.555
        SHX10_2 = 0.0287 * SHX5_2
        SHX10_2 = 0.361 + SHX10_2
        SHX11_2 = 0.005
        SHX12_2 = 0.0028
        SHX13_2 = 0.4
        SHX14_2 = SHX7_2
        SHX15_2 = 255
        SHX16_2 = 255
        SHX17_2 = 255
        SHX18_2 = 255
        SHX19_2 = 6
        SHX20_2 = 0
        SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
        SHX8_2 = SHX6_2.lastLogin
        SHX9_2 = fullPlayerListData
        SHX10_2 = SHX6_2.user_id
        SHX9_2 = SHX9_2[SHX10_2]
        if SHX9_2 then
          SHX9_2 = CMG
          SHX9_2 = SHX9_2.isUserHidden
          SHX10_2 = SHX6_2.user_id
          SHX9_2 = SHX9_2(SHX10_2)
          if not SHX9_2 then
            SHX8_2 = "Online"
          end
        end
        SHX9_2 = DrawAdvancedText
        SHX10_2 = 0.625
        SHX11_2 = 0.0287 * SHX5_2
        SHX11_2 = 0.361 + SHX11_2
        SHX12_2 = 0.005
        SHX13_2 = 0.0028
        SHX14_2 = 0.4
        SHX15_2 = SHX8_2
        SHX16_2 = 255
        SHX17_2 = 255
        SHX18_2 = 255
        SHX19_2 = 255
        SHX20_2 = 6
        SHX21_2 = 0
        SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
        SHX9_2 = SHX15_1.pinnedPlayers
        SHX10_2 = SHX6_2.user_id
        SHX9_2 = SHX9_2[SHX10_2]
        if SHX9_2 then
          SHX9_2 = SHX10_1.isAdvanced
          if SHX9_2 then
            SHX9_2 = "\240\159\147\140"
            if SHX9_2 then
              goto SHX_LABEL_1502
            end
          end
        end
        SHX9_2 = "\226\173\149"
        -- [FIX IF ERROR] Move ::SHX_LABEL_1502:: outside nested blocks until all 'goto SHX_LABEL_1502' can see it
        ::SHX_LABEL_1502::
        SHX10_2 = DrawAdvancedText
        SHX11_2 = 0.675
        SHX12_2 = 0.0287 * SHX5_2
        SHX12_2 = 0.3665 + SHX12_2
        SHX13_2 = 0.005
        SHX14_2 = 0.0028
        SHX15_2 = 0.2
        SHX16_2 = SHX9_2
        SHX17_2 = 255
        SHX18_2 = 255
        SHX19_2 = 255
        SHX20_2 = 255
        SHX21_2 = 6
        SHX22_2 = 0
        SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
        SHX10_2 = CursorInArea
        SHX11_2 = 0.3005
        SHX12_2 = 0.5955
        SHX13_2 = SHX5_2 - 1
        SHX13_2 = 0.0287 * SHX13_2
        SHX13_2 = 0.3731 + SHX13_2
        SHX14_2 = SHX5_2 - 1
        SHX14_2 = 0.0287 * SHX14_2
        SHX14_2 = 0.4018 + SHX14_2
        SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2)
        if SHX10_2 then
          SHX10_2 = SHX4_1
          SHX11_2 = SHX6_2.user_id
          if SHX10_2 ~= SHX11_2 then
            SHX10_2 = DrawRect
            SHX11_2 = 0.448
            SHX12_2 = SHX5_2 - 1
            SHX12_2 = 0.0287 * SHX12_2
            SHX12_2 = 0.388 + SHX12_2
            SHX13_2 = 0.295
            SHX14_2 = 0.027
            SHX15_2 = SHX7_1
            SHX16_2 = SHX8_1
            SHX17_2 = SHX9_1
            SHX18_2 = 150
            SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
            SHX10_2 = IsControlJustPressed
            SHX11_2 = 1
            SHX12_2 = 329
            SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
            if not SHX10_2 then
              SHX10_2 = IsDisabledControlJustPressed
              SHX11_2 = 1
              SHX12_2 = 329
              SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
            end
            if SHX10_2 then
              SHX10_2 = PlaySound
              SHX11_2 = -1
              SHX12_2 = "SELECT"
              SHX13_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
              SHX14_2 = false
              SHX15_2 = 0
              SHX16_2 = true
              SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
              SHX10_2 = SHX6_2.user_id
              SHX4_1 = SHX10_2
            end
        end
        else
          SHX10_2 = SHX4_1
          SHX11_2 = SHX6_2.user_id
          if SHX10_2 == SHX11_2 then
            SHX10_2 = DrawRect
            SHX11_2 = 0.448
            SHX12_2 = SHX5_2 - 1
            SHX12_2 = 0.0287 * SHX12_2
            SHX12_2 = 0.388 + SHX12_2
            SHX13_2 = 0.295
            SHX14_2 = 0.027
            SHX15_2 = SHX7_1
            SHX16_2 = SHX8_1
            SHX17_2 = SHX9_1
            SHX18_2 = 150
            SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
          end
        end
        SHX10_2 = CursorInArea
        SHX11_2 = 0.5755
        SHX12_2 = 0.5955
        SHX13_2 = SHX5_2 - 1
        SHX13_2 = 0.0287 * SHX13_2
        SHX13_2 = 0.3731 + SHX13_2
        SHX14_2 = SHX5_2 - 1
        SHX14_2 = 0.0287 * SHX14_2
        SHX14_2 = 0.4018 + SHX14_2
        SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2)
        if SHX10_2 then
          SHX10_2 = IsControlJustPressed
          SHX11_2 = 1
          SHX12_2 = 329
          SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
          if not SHX10_2 then
            SHX10_2 = IsDisabledControlJustPressed
            SHX11_2 = 1
            SHX12_2 = 329
            SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
            if not SHX10_2 then
              goto SHX_LABEL_1654
            end
          end
          SHX10_2 = SHX10_1.isAdvanced
          if SHX10_2 then
            SHX10_2 = SHX15_1.pinnedPlayers
            SHX11_2 = SHX6_2.user_id
            SHX10_2 = SHX10_2[SHX11_2]
            if SHX10_2 then
              SHX10_2 = SHX15_1.pinnedPlayers
              SHX11_2 = SHX6_2.user_id
              SHX10_2[SHX11_2] = nil
            else
              SHX10_2 = SHX15_1.pinnedPlayers
              SHX11_2 = SHX6_2.user_id
              SHX10_2[SHX11_2] = true
            end
            SHX10_2 = SetResourceKvp
            SHX11_2 = "cmg_gang_pinned"
            SHX12_2 = json
            SHX12_2 = SHX12_2.encode
            SHX13_2 = SHX15_1.pinnedPlayers
            SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2 = SHX12_2(SHX13_2)
            SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
          else
            SHX10_2 = notify
            SHX11_2 = "~r~You must have the advanced gang license to pin a player."
            SHX10_2(SHX11_2)
          end
        end
        -- [FIX IF ERROR] Move ::SHX_LABEL_1654:: outside nested blocks until all 'goto SHX_LABEL_1654' can see it
        ::SHX_LABEL_1654::
      end
      SHX1_2 = CursorInArea
      SHX2_2 = 0.6182
      SHX3_2 = 0.6822
      SHX4_2 = 0.36
      SHX5_2 = 0.416
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
      if SHX1_2 then
        SHX1_2 = DrawRect
        SHX2_2 = 0.651
        SHX3_2 = 0.388
        SHX4_2 = 0.065
        SHX5_2 = 0.056
        SHX6_2 = SHX7_1
        SHX7_2 = SHX8_1
        SHX8_2 = SHX9_1
        SHX9_2 = 150
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
        SHX1_2 = IsControlJustPressed
        SHX2_2 = 1
        SHX3_2 = 329
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        if not SHX1_2 then
          SHX1_2 = IsDisabledControlJustPressed
          SHX2_2 = 1
          SHX3_2 = 329
          SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        end
        if SHX1_2 then
          SHX1_2 = PlaySound
          SHX2_2 = -1
          SHX3_2 = "SELECT"
          SHX4_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          SHX5_2 = false
          SHX6_2 = 0
          SHX7_2 = true
          SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          SHX1_2 = SHX4_1
          if nil ~= SHX1_2 then
            SHX1_2 = SHX10_1
            if SHX1_2 then
              SHX1_2 = SHX10_1.members
              SHX2_2 = SHX4_1
              SHX1_2 = SHX1_2[SHX2_2]
              if SHX1_2 then
                SHX1_2 = "permissions"
                SHX1_1 = SHX1_2
            end
          end
          else
            SHX1_2 = tCMG
            SHX1_2 = SHX1_2.notify
            SHX2_2 = "~r~No gang member selected"
            SHX1_2(SHX2_2)
          end
        end
      else
        SHX1_2 = DrawRect
        SHX2_2 = 0.651
        SHX3_2 = 0.388
        SHX4_2 = 0.065
        SHX5_2 = 0.056
        SHX6_2 = 0
        SHX7_2 = 0
        SHX8_2 = 0
        SHX9_2 = 150
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
      end
      SHX1_2 = CursorInArea
      SHX2_2 = 0.6182
      SHX3_2 = 0.6822
      SHX4_2 = 0.435
      SHX5_2 = 0.491
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
      if SHX1_2 then
        SHX1_2 = DrawRect
        SHX2_2 = 0.651
        SHX3_2 = 0.463
        SHX4_2 = 0.065
        SHX5_2 = 0.056
        SHX6_2 = SHX7_1
        SHX7_2 = SHX8_1
        SHX8_2 = SHX9_1
        SHX9_2 = 150
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
        SHX1_2 = IsControlJustPressed
        SHX2_2 = 1
        SHX3_2 = 329
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        if not SHX1_2 then
          SHX1_2 = IsDisabledControlJustPressed
          SHX2_2 = 1
          SHX3_2 = 329
          SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        end
        if SHX1_2 then
          SHX1_2 = PlaySound
          SHX2_2 = -1
          SHX3_2 = "SELECT"
          SHX4_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          SHX5_2 = false
          SHX6_2 = 0
          SHX7_2 = true
          SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          SHX1_2 = SHX4_1
          if nil ~= SHX1_2 then
            SHX1_2 = SHX10_1
            if SHX1_2 then
              SHX1_2 = SHX10_1.members
              SHX2_2 = SHX4_1
              SHX1_2 = SHX1_2[SHX2_2]
              if SHX1_2 then
                SHX1_2 = TriggerServerEvent
                SHX2_2 = "e959bf3016"
                SHX3_2 = SHX4_1
                SHX1_2(SHX2_2, SHX3_2)
            end
          end
          else
            SHX1_2 = tCMG
            SHX1_2 = SHX1_2.notify
            SHX2_2 = "~r~No gang member selected"
            SHX1_2(SHX2_2)
          end
        end
      else
        SHX1_2 = DrawRect
        SHX2_2 = 0.651
        SHX3_2 = 0.463
        SHX4_2 = 0.065
        SHX5_2 = 0.056
        SHX6_2 = 0
        SHX7_2 = 0
        SHX8_2 = 0
        SHX9_2 = 150
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
      end
      SHX1_2 = CursorInArea
      SHX2_2 = 0.6182
      SHX3_2 = 0.6822
      SHX4_2 = 0.51
      SHX5_2 = 0.566
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
      if SHX1_2 then
        SHX1_2 = DrawRect
        SHX2_2 = 0.651
        SHX3_2 = 0.538
        SHX4_2 = 0.065
        SHX5_2 = 0.056
        SHX6_2 = SHX7_1
        SHX7_2 = SHX8_1
        SHX8_2 = SHX9_1
        SHX9_2 = 150
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
        SHX1_2 = IsControlJustPressed
        SHX2_2 = 1
        SHX3_2 = 329
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        if not SHX1_2 then
          SHX1_2 = IsDisabledControlJustPressed
          SHX2_2 = 1
          SHX3_2 = 329
          SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
          if not SHX1_2 then
            goto SHX_LABEL_1893
          end
        end
        SHX1_2 = PlaySound
        SHX2_2 = -1
        SHX3_2 = "SELECT"
        SHX4_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        SHX5_2 = false
        SHX6_2 = 0
        SHX7_2 = true
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
        SHX1_2 = SHX4_1
        if nil ~= SHX1_2 then
          SHX1_2 = SHX10_1.members
          SHX2_2 = SHX4_1
          SHX1_2 = SHX1_2[SHX2_2]
          SHX1_2 = nil ~= SHX1_2
          if SHX1_2 then
            SHX2_2 = "kickmember"
            if SHX2_2 then
              goto SHX_LABEL_1847
            end
          end
          SHX2_2 = "kickguest"
          -- [FIX IF ERROR] Move ::SHX_LABEL_1847:: outside nested blocks until all 'goto SHX_LABEL_1847' can see it
          ::SHX_LABEL_1847::
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.hasGangPermission
          SHX4_2 = SHX2_2
          SHX3_2 = SHX3_2(SHX4_2)
          if SHX3_2 then
            SHX3_2 = SHX36_1
            SHX4_2 = "Are you sure?"
            SHX3_2 = SHX3_2(SHX4_2)
            if SHX3_2 then
              SHX3_2 = SHX10_1.members
              SHX4_2 = SHX4_1
              SHX3_2 = SHX3_2[SHX4_2]
              if SHX3_2 then
                SHX3_2 = TriggerServerEvent
                SHX4_2 = "85c0cc23f6"
                SHX5_2 = SHX4_1
                SHX3_2(SHX4_2, SHX5_2)
              else
                SHX3_2 = TriggerServerEvent
                SHX4_2 = "550d5b91c6"
                SHX5_2 = SHX4_1
                SHX3_2(SHX4_2, SHX5_2)
              end
            end
          else
            SHX3_2 = tCMG
            SHX3_2 = SHX3_2.notify
            SHX4_2 = "~r~You don't have permission to kick!"
            SHX3_2(SHX4_2)
          end
        else
          SHX1_2 = tCMG
          SHX1_2 = SHX1_2.notify
          SHX2_2 = "~r~No gang member selected"
          SHX1_2(SHX2_2)
        end
      else
        SHX1_2 = DrawRect
        SHX2_2 = 0.651
        SHX3_2 = 0.538
        SHX4_2 = 0.065
        SHX5_2 = 0.056
        SHX6_2 = 0
        SHX7_2 = 0
        SHX8_2 = 0
        SHX9_2 = 150
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
      end
      -- [FIX IF ERROR] Move ::SHX_LABEL_1893:: outside nested blocks until all 'goto SHX_LABEL_1893' can see it
      ::SHX_LABEL_1893::
      SHX1_2 = CursorInArea
      SHX2_2 = 0.6182
      SHX3_2 = 0.6822
      SHX4_2 = 0.585
      SHX5_2 = 0.641
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
      if SHX1_2 then
        SHX1_2 = DrawRect
        SHX2_2 = 0.651
        SHX3_2 = 0.613
        SHX4_2 = 0.065
        SHX5_2 = 0.056
        SHX6_2 = SHX7_1
        SHX7_2 = SHX8_1
        SHX8_2 = SHX9_1
        SHX9_2 = 150
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
        SHX1_2 = IsControlJustPressed
        SHX2_2 = 1
        SHX3_2 = 329
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        if not SHX1_2 then
          SHX1_2 = IsDisabledControlJustPressed
          SHX2_2 = 1
          SHX3_2 = 329
          SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        end
        if SHX1_2 then
          SHX1_2 = PlaySound
          SHX2_2 = -1
          SHX3_2 = "SELECT"
          SHX4_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          SHX5_2 = false
          SHX6_2 = 0
          SHX7_2 = true
          SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          SHX1_2 = CMG
          SHX1_2 = SHX1_2.hasGangPermission
          SHX2_2 = "invitemember"
          SHX1_2 = SHX1_2(SHX2_2)
          if SHX1_2 then
            SHX1_2 = CMG
            SHX1_2 = SHX1_2.GetRageInputText
            SHX2_2 = "Enter Perm ID to invite:"
            SHX1_2 = SHX1_2(SHX2_2)
            if nil ~= SHX1_2 then
              SHX2_2 = tonumber
              SHX3_2 = SHX1_2
              SHX2_2 = SHX2_2(SHX3_2)
              if SHX2_2 then
                SHX2_2 = TriggerServerEvent
                SHX3_2 = "a3ebe947dd"
                SHX4_2 = tonumber
                SHX5_2 = SHX1_2
                SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2 = SHX4_2(SHX5_2)
                SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
            end
            else
              SHX2_2 = tCMG
              SHX2_2 = SHX2_2.notify
              SHX3_2 = "Invalid Perm ID entered"
              SHX2_2(SHX3_2)
            end
          else
            SHX1_2 = tCMG
            SHX1_2 = SHX1_2.notify
            SHX2_2 = "~r~You don't have permission to invite players"
            SHX1_2(SHX2_2)
          end
        end
      else
        SHX1_2 = DrawRect
        SHX2_2 = 0.651
        SHX3_2 = 0.613
        SHX4_2 = 0.065
        SHX5_2 = 0.056
        SHX6_2 = 0
        SHX7_2 = 0
        SHX8_2 = 0
        SHX9_2 = 150
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
      end
      SHX1_2 = CursorInArea
      SHX2_2 = 0.3735
      SHX3_2 = 0.4185
      SHX4_2 = 0.6768
      SHX5_2 = 0.7074
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
      if SHX1_2 then
        SHX1_2 = DrawRect
        SHX2_2 = 0.396
        SHX3_2 = 0.693
        SHX4_2 = 0.045
        SHX5_2 = 0.033
        SHX6_2 = SHX7_1
        SHX7_2 = SHX8_1
        SHX8_2 = SHX9_1
        SHX9_2 = 150
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
        SHX1_2 = IsControlJustPressed
        SHX2_2 = 1
        SHX3_2 = 329
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        if not SHX1_2 then
          SHX1_2 = IsDisabledControlJustPressed
          SHX2_2 = 1
          SHX3_2 = 329
          SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        end
        if SHX1_2 then
          SHX1_2 = PlaySound
          SHX2_2 = -1
          SHX3_2 = "SELECT"
          SHX4_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          SHX5_2 = false
          SHX6_2 = 0
          SHX7_2 = true
          SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          SHX1_2 = SHX13_1
          if SHX1_2 <= 1 then
            SHX1_2 = tCMG
            SHX1_2 = SHX1_2.notify
            SHX2_2 = "~r~Lowest page reached"
            SHX1_2(SHX2_2)
          else
            SHX1_2 = SHX13_1
            SHX1_2 = SHX1_2 - 1
            SHX13_1 = SHX1_2
          end
        end
      else
        SHX1_2 = DrawRect
        SHX2_2 = 0.396
        SHX3_2 = 0.693
        SHX4_2 = 0.045
        SHX5_2 = 0.033
        SHX6_2 = 0
        SHX7_2 = 0
        SHX8_2 = 0
        SHX9_2 = 150
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
      end
      SHX1_2 = CursorInArea
      SHX2_2 = 0.4635
      SHX3_2 = 0.5085
      SHX4_2 = 0.6712
      SHX5_2 = 0.7064
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
      if SHX1_2 then
        SHX1_2 = DrawRect
        SHX2_2 = 0.486
        SHX3_2 = 0.693
        SHX4_2 = 0.045
        SHX5_2 = 0.033
        SHX6_2 = SHX7_1
        SHX7_2 = SHX8_1
        SHX8_2 = SHX9_1
        SHX9_2 = 150
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
        SHX1_2 = IsControlJustPressed
        SHX2_2 = 1
        SHX3_2 = 329
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        if not SHX1_2 then
          SHX1_2 = IsDisabledControlJustPressed
          SHX2_2 = 1
          SHX3_2 = 329
          SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        end
        if SHX1_2 then
          SHX1_2 = PlaySound
          SHX2_2 = -1
          SHX3_2 = "SELECT"
          SHX4_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          SHX5_2 = false
          SHX6_2 = 0
          SHX7_2 = true
          SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          SHX1_2 = SHX13_1
          SHX2_2 = math
          SHX2_2 = SHX2_2.ceil
          SHX3_2 = SHX0_2 / 10.0
          SHX2_2 = SHX2_2(SHX3_2)
          if SHX1_2 >= SHX2_2 then
            SHX1_2 = tCMG
            SHX1_2 = SHX1_2.notify
            SHX2_2 = "~r~Max page reached"
            SHX1_2(SHX2_2)
          else
            SHX1_2 = SHX13_1
            SHX1_2 = SHX1_2 + 1
            SHX13_1 = SHX1_2
          end
        end
      else
        SHX1_2 = DrawRect
        SHX2_2 = 0.486
        SHX3_2 = 0.693
        SHX4_2 = 0.045
        SHX5_2 = 0.033
        SHX6_2 = 0
        SHX7_2 = 0
        SHX8_2 = 0
        SHX9_2 = 150
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
      end
      SHX1_2 = CursorInArea
      SHX2_2 = 0.6583
      SHX3_2 = 0.7056
      SHX4_2 = 0.6712
      SHX5_2 = 0.7064
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
      if SHX1_2 then
        SHX1_2 = DrawRect
        SHX2_2 = 0.681
        SHX3_2 = 0.689
        SHX4_2 = 0.045
        SHX5_2 = 0.036
        SHX6_2 = SHX7_1
        SHX7_2 = SHX8_1
        SHX8_2 = SHX9_1
        SHX9_2 = 150
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
        SHX1_2 = IsControlJustPressed
        SHX2_2 = 1
        SHX3_2 = 329
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        if not SHX1_2 then
          SHX1_2 = IsDisabledControlJustPressed
          SHX2_2 = 1
          SHX3_2 = 329
          SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        end
        if SHX1_2 then
          SHX1_2 = PlaySound
          SHX2_2 = -1
          SHX3_2 = "SELECT"
          SHX4_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          SHX5_2 = false
          SHX6_2 = 0
          SHX7_2 = true
          SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          SHX1_2 = "gang"
          SHX1_1 = SHX1_2
        end
      else
        SHX1_2 = DrawRect
        SHX2_2 = 0.681
        SHX3_2 = 0.689
        SHX4_2 = 0.045
        SHX5_2 = 0.036
        SHX6_2 = 0
        SHX7_2 = 0
        SHX8_2 = 0
        SHX9_2 = 150
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
      end
    end
  end
  SHX0_2 = SHX10_1
  if SHX0_2 then
    SHX0_2 = SHX1_1
    SHX1_2 = "logs"
    if SHX0_2 == SHX1_2 then
      SHX0_2 = DrawRect
      SHX1_2 = 0.501
      SHX2_2 = 0.525
      SHX3_2 = 0.421
      SHX4_2 = 0.387
      SHX5_2 = 0
      SHX6_2 = 0
      SHX7_2 = 0
      SHX8_2 = 150
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX0_2 = DrawRect
      SHX1_2 = 0.501
      SHX2_2 = 0.308
      SHX3_2 = 0.421
      SHX4_2 = 0.047
      SHX5_2 = 18
      SHX6_2 = 82
      SHX7_2 = 228
      SHX8_2 = 248
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.591
      SHX2_2 = 0.312
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.48
      SHX6_2 = "CMG gang - logs"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 7
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawRect
      SHX1_2 = 0.502
      SHX2_2 = 0.52
      SHX3_2 = 0.387
      SHX4_2 = 0.286
      SHX5_2 = 0
      SHX6_2 = 0
      SHX7_2 = 0
      SHX8_2 = 150
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.449
      SHX2_2 = 0.365
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Name"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 4
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.51
      SHX2_2 = 0.365
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "UserID"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 4
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.583
      SHX2_2 = 0.365
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Date"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 4
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.757
      SHX2_2 = 0.365
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Amount"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 4
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.673
      SHX2_2 = 0.365
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "New Balance"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 4
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.592
      SHX2_2 = 0.6925
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = tostring
      SHX7_2 = SHX14_1
      SHX6_2 = SHX6_2(SHX7_2)
      SHX7_2 = "/"
      SHX8_2 = tostring
      SHX9_2 = math
      SHX9_2 = SHX9_2.ceil
      SHX10_2 = SHX10_1
      SHX11_2 = "logCount"
      SHX10_2 = SHX10_2[SHX11_2]
      SHX10_2 = SHX10_2 / 10.0
      SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2 = SHX9_2(SHX10_2)
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
      SHX6_2 = SHX6_2 .. SHX7_2 .. SHX8_2
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 4
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.775
      SHX2_2 = 0.693
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Back"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 4
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = CursorInArea
      SHX1_2 = 0.6583
      SHX2_2 = 0.7056
      SHX3_2 = 0.6712
      SHX4_2 = 0.7064
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
      if SHX0_2 then
        SHX0_2 = DrawRect
        SHX1_2 = 0.681
        SHX2_2 = 0.689
        SHX3_2 = 0.045
        SHX4_2 = 0.036
        SHX5_2 = SHX7_1
        SHX6_2 = SHX8_1
        SHX7_2 = SHX9_1
        SHX8_2 = 150
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
        SHX0_2 = IsControlJustPressed
        SHX1_2 = 1
        SHX2_2 = 329
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        if not SHX0_2 then
          SHX0_2 = IsDisabledControlJustPressed
          SHX1_2 = 1
          SHX2_2 = 329
          SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        end
        if SHX0_2 then
          SHX0_2 = PlaySound
          SHX1_2 = -1
          SHX2_2 = "SELECT"
          SHX3_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          SHX4_2 = false
          SHX5_2 = 0
          SHX6_2 = true
          SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
          SHX0_2 = "gang"
          SHX1_1 = SHX0_2
        end
      else
        SHX0_2 = DrawRect
        SHX1_2 = 0.681
        SHX2_2 = 0.689
        SHX3_2 = 0.045
        SHX4_2 = 0.036
        SHX5_2 = 0
        SHX6_2 = 0
        SHX7_2 = 0
        SHX8_2 = 150
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      end
      SHX0_2 = pairs
      SHX1_2 = SHX10_1
      SHX2_2 = "logs"
      SHX1_2 = SHX1_2[SHX2_2]
      if not SHX1_2 then
        SHX1_2 = {}
      end
      SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
      for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
        SHX6_2 = "amount"
        SHX6_2 = SHX5_2[SHX6_2]
        if SHX6_2 >= 0 then
          SHX6_2 = 50
          if SHX6_2 then
            goto SHX_LABEL_2385
          end
        end
        SHX6_2 = 255
        -- [FIX IF ERROR] Move ::SHX_LABEL_2385:: outside nested blocks until all 'goto SHX_LABEL_2385' can see it
        ::SHX_LABEL_2385::
        SHX7_2 = "amount"
        SHX7_2 = SHX5_2[SHX7_2]
        if SHX7_2 >= 0 then
          SHX7_2 = 255
          if SHX7_2 then
            goto SHX_LABEL_2393
          end
        end
        SHX7_2 = 50
        -- [FIX IF ERROR] Move ::SHX_LABEL_2393:: outside nested blocks until all 'goto SHX_LABEL_2393' can see it
        ::SHX_LABEL_2393::
        SHX8_2 = 50
        SHX9_2 = SHX5_2.user_id
        if -1 == SHX9_2 then
          SHX9_2 = "N/A"
          if SHX9_2 then
            goto SHX_LABEL_2403
          end
        end
        SHX9_2 = tostring
        SHX10_2 = SHX5_2.user_id
        SHX9_2 = SHX9_2(SHX10_2)
        -- [FIX IF ERROR] Move ::SHX_LABEL_2403:: outside nested blocks until all 'goto SHX_LABEL_2403' can see it
        ::SHX_LABEL_2403::
        SHX10_2 = DrawAdvancedText
        SHX11_2 = 0.449
        SHX12_2 = 0.0287 * SHX4_2
        SHX13_2 = 0.365
        SHX12_2 = SHX13_2 + SHX12_2
        SHX13_2 = 0.005
        SHX14_2 = 0.0028
        SHX15_2 = 0.4
        SHX16_2 = SHX5_2.name
        SHX17_2 = SHX6_2
        SHX18_2 = SHX7_2
        SHX19_2 = SHX8_2
        SHX20_2 = 255
        SHX21_2 = 6
        SHX22_2 = 0
        SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
        SHX10_2 = DrawAdvancedText
        SHX11_2 = 0.51
        SHX12_2 = 0.0287 * SHX4_2
        SHX13_2 = 0.365
        SHX12_2 = SHX13_2 + SHX12_2
        SHX13_2 = 0.005
        SHX14_2 = 0.0028
        SHX15_2 = 0.4
        SHX16_2 = SHX9_2
        SHX17_2 = SHX6_2
        SHX18_2 = SHX7_2
        SHX19_2 = SHX8_2
        SHX20_2 = 255
        SHX21_2 = 6
        SHX22_2 = 0
        SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
        SHX10_2 = DrawAdvancedText
        SHX11_2 = 0.583
        SHX12_2 = 0.0287 * SHX4_2
        SHX13_2 = 0.365
        SHX12_2 = SHX13_2 + SHX12_2
        SHX13_2 = 0.005
        SHX14_2 = 0.0028
        SHX15_2 = 0.4
        SHX16_2 = "date"
        SHX16_2 = SHX5_2[SHX16_2]
        SHX17_2 = SHX6_2
        SHX18_2 = SHX7_2
        SHX19_2 = SHX8_2
        SHX20_2 = 255
        SHX21_2 = 6
        SHX22_2 = 0
        SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
        SHX10_2 = DrawAdvancedText
        SHX11_2 = 0.673
        SHX12_2 = 0.0287 * SHX4_2
        SHX13_2 = 0.365
        SHX12_2 = SHX13_2 + SHX12_2
        SHX13_2 = 0.005
        SHX14_2 = 0.0028
        SHX15_2 = 0.4
        SHX16_2 = "\194\163"
        SHX17_2 = getMoneyStringFormatted
        SHX18_2 = "newBalance"
        SHX18_2 = SHX5_2[SHX18_2]
        SHX17_2 = SHX17_2(SHX18_2)
        SHX16_2 = SHX16_2 .. SHX17_2
        SHX17_2 = SHX6_2
        SHX18_2 = SHX7_2
        SHX19_2 = SHX8_2
        SHX20_2 = 255
        SHX21_2 = 6
        SHX22_2 = 0
        SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
        SHX10_2 = DrawAdvancedText
        SHX11_2 = 0.757
        SHX12_2 = 0.0287 * SHX4_2
        SHX13_2 = 0.365
        SHX12_2 = SHX13_2 + SHX12_2
        SHX13_2 = 0.005
        SHX14_2 = 0.0028
        SHX15_2 = 0.4
        SHX16_2 = "\194\163"
        SHX17_2 = getMoneyStringFormatted
        SHX18_2 = math
        SHX19_2 = "abs"
        SHX18_2 = SHX18_2[SHX19_2]
        SHX19_2 = "amount"
        SHX19_2 = SHX5_2[SHX19_2]
        SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2 = SHX18_2(SHX19_2)
        SHX17_2 = SHX17_2(SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
        SHX16_2 = SHX16_2 .. SHX17_2
        SHX17_2 = SHX6_2
        SHX18_2 = SHX7_2
        SHX19_2 = SHX8_2
        SHX20_2 = 255
        SHX21_2 = 6
        SHX22_2 = 0
        SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
        SHX10_2 = CursorInArea
        SHX11_2 = 0.3005
        SHX12_2 = 0.5955
        SHX13_2 = SHX4_2 - 1
        SHX13_2 = 0.0287 * SHX13_2
        SHX13_2 = 0.3731 + SHX13_2
        SHX14_2 = SHX4_2 - 1
        SHX14_2 = 0.0287 * SHX14_2
        SHX14_2 = 0.4018 + SHX14_2
        SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2)
        if SHX10_2 then
          SHX10_2 = DrawRect
          SHX11_2 = 0.502
          SHX12_2 = SHX4_2 - 1
          SHX12_2 = 0.0287 * SHX12_2
          SHX12_2 = 0.39 + SHX12_2
          SHX13_2 = 0.387
          SHX14_2 = 0.027
          SHX15_2 = SHX7_1
          SHX16_2 = SHX8_1
          SHX17_2 = SHX9_1
          SHX18_2 = 150
          SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
          SHX10_2 = DrawAdvancedText
          SHX11_2 = 0.591
          SHX12_2 = 0.75
          SHX13_2 = 0.005
          SHX14_2 = 0.0028
          SHX15_2 = 0.48
          SHX16_2 = "reason"
          SHX16_2 = SHX5_2[SHX16_2]
          if SHX16_2 then
            SHX16_2 = "reason"
            SHX16_2 = SHX5_2[SHX16_2]
            if SHX16_2 then
              goto SHX_LABEL_2556
            end
          end
          SHX16_2 = "No Reason Provided"
          -- [FIX IF ERROR] Move ::SHX_LABEL_2556:: outside nested blocks until all 'goto SHX_LABEL_2556' can see it
          ::SHX_LABEL_2556::
          SHX17_2 = 255
          SHX18_2 = 255
          SHX19_2 = 255
          SHX20_2 = 255
          SHX21_2 = 4
          SHX22_2 = 0
          SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
        end
      end
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.547
      SHX2_2 = 0.692
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Previous"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 4
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = CursorInArea
      SHX1_2 = 0.4195
      SHX2_2 = 0.4845
      SHX3_2 = 0.6768
      SHX4_2 = 0.7074
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
      if SHX0_2 then
        SHX0_2 = DrawRect
        SHX1_2 = 0.452
        SHX2_2 = 0.69
        SHX3_2 = 0.065
        SHX4_2 = 0.036
        SHX5_2 = SHX7_1
        SHX6_2 = SHX8_1
        SHX7_2 = SHX9_1
        SHX8_2 = 150
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
        SHX0_2 = IsControlJustPressed
        SHX1_2 = 1
        SHX2_2 = 329
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        if not SHX0_2 then
          SHX0_2 = IsDisabledControlJustPressed
          SHX1_2 = 1
          SHX2_2 = 329
          SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        end
        if SHX0_2 then
          SHX0_2 = PlaySound
          SHX1_2 = -1
          SHX2_2 = "SELECT"
          SHX3_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          SHX4_2 = false
          SHX5_2 = 0
          SHX6_2 = true
          SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
          SHX0_2 = SHX14_1
          if SHX0_2 <= 1 then
            SHX0_2 = tCMG
            SHX0_2 = SHX0_2.notify
            SHX1_2 = "~r~Lowest page reached"
            SHX0_2(SHX1_2)
          else
            SHX0_2 = SHX14_1
            SHX0_2 = SHX0_2 - 1
            SHX14_1 = SHX0_2
            SHX0_2 = SHX10_1
            SHX1_2 = "logs"
            SHX0_2[SHX1_2] = nil
            SHX0_2 = TriggerServerEvent
            SHX1_2 = "3f8f33322f"
            SHX2_2 = SHX14_1
            SHX3_2 = SHX18_1
            SHX0_2(SHX1_2, SHX2_2, SHX3_2)
          end
        end
      else
        SHX0_2 = DrawRect
        SHX1_2 = 0.452
        SHX2_2 = 0.69
        SHX3_2 = 0.065
        SHX4_2 = 0.036
        SHX5_2 = 0
        SHX6_2 = 0
        SHX7_2 = 0
        SHX8_2 = 150
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      end
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.639
      SHX2_2 = 0.692
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Next"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 4
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = CursorInArea
      SHX1_2 = 0.5125
      SHX2_2 = 0.5775
      SHX3_2 = 0.6712
      SHX4_2 = 0.7064
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
      if SHX0_2 then
        SHX0_2 = DrawRect
        SHX1_2 = 0.545
        SHX2_2 = 0.69
        SHX3_2 = 0.065
        SHX4_2 = 0.036
        SHX5_2 = SHX7_1
        SHX6_2 = SHX8_1
        SHX7_2 = SHX9_1
        SHX8_2 = 150
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
        SHX0_2 = IsControlJustPressed
        SHX1_2 = 1
        SHX2_2 = 329
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        if not SHX0_2 then
          SHX0_2 = IsDisabledControlJustPressed
          SHX1_2 = 1
          SHX2_2 = 329
          SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        end
        if SHX0_2 then
          SHX0_2 = PlaySound
          SHX1_2 = -1
          SHX2_2 = "SELECT"
          SHX3_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          SHX4_2 = false
          SHX5_2 = 0
          SHX6_2 = true
          SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
          SHX0_2 = SHX14_1
          SHX1_2 = math
          SHX1_2 = SHX1_2.ceil
          SHX2_2 = SHX10_1
          SHX3_2 = "logCount"
          SHX2_2 = SHX2_2[SHX3_2]
          SHX2_2 = SHX2_2 / 10.0
          SHX1_2 = SHX1_2(SHX2_2)
          if SHX0_2 >= SHX1_2 then
            SHX0_2 = tCMG
            SHX0_2 = SHX0_2.notify
            SHX1_2 = "~r~Max page reached"
            SHX0_2(SHX1_2)
          else
            SHX0_2 = SHX14_1
            SHX0_2 = SHX0_2 + 1
            SHX14_1 = SHX0_2
            SHX0_2 = SHX10_1
            SHX1_2 = "logs"
            SHX0_2[SHX1_2] = nil
            SHX0_2 = TriggerServerEvent
            SHX1_2 = "3f8f33322f"
            SHX2_2 = SHX14_1
            SHX3_2 = SHX18_1
            SHX0_2(SHX1_2, SHX2_2, SHX3_2)
          end
        end
      else
        SHX0_2 = DrawRect
        SHX1_2 = 0.545
        SHX2_2 = 0.69
        SHX3_2 = 0.065
        SHX4_2 = 0.036
        SHX5_2 = 0
        SHX6_2 = 0
        SHX7_2 = 0
        SHX8_2 = 150
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      end
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.415
      SHX2_2 = 0.693
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = SHX18_1
      if SHX6_2 then
        SHX6_2 = "Show Turf"
        if SHX6_2 then
          goto SHX_LABEL_2753
        end
      end
      SHX6_2 = "Hide Turf"
      -- [FIX IF ERROR] Move ::SHX_LABEL_2753:: outside nested blocks until all 'goto SHX_LABEL_2753' can see it
      ::SHX_LABEL_2753::
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 4
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = CursorInArea
      SHX1_2 = 0.2985
      SHX2_2 = 0.3435
      SHX3_2 = 0.6712
      SHX4_2 = 0.7064
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
      if SHX0_2 then
        SHX0_2 = DrawRect
        SHX1_2 = 0.321
        SHX2_2 = 0.689
        SHX3_2 = 0.045
        SHX4_2 = 0.036
        SHX5_2 = SHX7_1
        SHX6_2 = SHX8_1
        SHX7_2 = SHX9_1
        SHX8_2 = 150
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
        SHX0_2 = IsControlJustPressed
        SHX1_2 = 1
        SHX2_2 = 329
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        if not SHX0_2 then
          SHX0_2 = IsDisabledControlJustPressed
          SHX1_2 = 1
          SHX2_2 = 329
          SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        end
        if SHX0_2 then
          SHX0_2 = SHX18_1
          SHX0_2 = not SHX0_2
          SHX18_1 = SHX0_2
          SHX0_2 = SHX10_1
          SHX1_2 = "logs"
          SHX0_2[SHX1_2] = nil
          SHX0_2 = TriggerServerEvent
          SHX1_2 = "3f8f33322f"
          SHX2_2 = SHX14_1
          SHX3_2 = SHX18_1
          SHX0_2(SHX1_2, SHX2_2, SHX3_2)
        end
      else
        SHX0_2 = DrawRect
        SHX1_2 = 0.321
        SHX2_2 = 0.689
        SHX3_2 = 0.045
        SHX4_2 = 0.036
        SHX5_2 = 0
        SHX6_2 = 0
        SHX7_2 = 0
        SHX8_2 = 150
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      end
    end
  end
  SHX0_2 = SHX1_1
  if "contributions" == SHX0_2 then
    SHX0_2 = SHX38_1
    SHX0_2, SHX1_2 = SHX0_2()
    SHX2_2 = DrawRect
    SHX3_2 = 0.501
    SHX4_2 = 0.525
    SHX5_2 = 0.421
    SHX6_2 = 0.387
    SHX7_2 = 0
    SHX8_2 = 0
    SHX9_2 = 0
    SHX10_2 = 150
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    SHX2_2 = DrawRect
    SHX3_2 = 0.501
    SHX4_2 = 0.308
    SHX5_2 = 0.421
    SHX6_2 = 0.047
    SHX7_2 = 18
    SHX8_2 = 82
    SHX9_2 = 228
    SHX10_2 = 248
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    SHX2_2 = DrawAdvancedText
    SHX3_2 = 0.591
    SHX4_2 = 0.312
    SHX5_2 = 0.005
    SHX6_2 = 0.0028
    SHX7_2 = 0.48
    SHX8_2 = "CMG gang - contributions"
    SHX9_2 = 255
    SHX10_2 = 255
    SHX11_2 = 255
    SHX12_2 = 255
    SHX13_2 = 7
    SHX14_2 = 0
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX2_2 = DrawRect
    SHX3_2 = 0.502
    SHX4_2 = 0.52
    SHX5_2 = 0.387
    SHX6_2 = 0.286
    SHX7_2 = 0
    SHX8_2 = 0
    SHX9_2 = 0
    SHX10_2 = 150
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    SHX2_2 = DrawAdvancedText
    SHX3_2 = 0.449
    SHX4_2 = 0.365
    SHX5_2 = 0.005
    SHX6_2 = 0.0028
    SHX7_2 = 0.4
    SHX8_2 = "Name"
    SHX9_2 = 255
    SHX10_2 = 255
    SHX11_2 = 255
    SHX12_2 = 255
    SHX13_2 = 4
    SHX14_2 = 0
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX2_2 = DrawAdvancedText
    SHX3_2 = 0.53
    SHX4_2 = 0.365
    SHX5_2 = 0.005
    SHX6_2 = 0.0028
    SHX7_2 = 0.4
    SHX8_2 = "UserID"
    SHX9_2 = 255
    SHX10_2 = 255
    SHX11_2 = 255
    SHX12_2 = 255
    SHX13_2 = 4
    SHX14_2 = 0
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX2_2 = DrawAdvancedText
    SHX3_2 = 0.623
    SHX4_2 = 0.365
    SHX5_2 = 0.005
    SHX6_2 = 0.0028
    SHX7_2 = 0.4
    SHX8_2 = "Last Contribution"
    SHX9_2 = 255
    SHX10_2 = 255
    SHX11_2 = 255
    SHX12_2 = 255
    SHX13_2 = 4
    SHX14_2 = 0
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX2_2 = DrawAdvancedText
    SHX3_2 = 0.727
    SHX4_2 = 0.365
    SHX5_2 = 0.005
    SHX6_2 = 0.0028
    SHX7_2 = 0.4
    SHX8_2 = "Total Amount"
    SHX9_2 = 255
    SHX10_2 = 255
    SHX11_2 = 255
    SHX12_2 = 255
    SHX13_2 = 4
    SHX14_2 = 0
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX2_2 = DrawAdvancedText
    SHX3_2 = 0.592
    SHX4_2 = 0.6925
    SHX5_2 = 0.005
    SHX6_2 = 0.0028
    SHX7_2 = 0.4
    SHX8_2 = tostring
    SHX9_2 = SHX14_1
    SHX8_2 = SHX8_2(SHX9_2)
    SHX9_2 = "/"
    SHX10_2 = tostring
    SHX11_2 = math
    SHX11_2 = SHX11_2.ceil
    SHX12_2 = SHX1_2 / 10.0
    SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2 = SHX11_2(SHX12_2)
    SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
    SHX8_2 = SHX8_2 .. SHX9_2 .. SHX10_2
    SHX9_2 = 255
    SHX10_2 = 255
    SHX11_2 = 255
    SHX12_2 = 255
    SHX13_2 = 4
    SHX14_2 = 0
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX2_2 = DrawAdvancedText
    SHX3_2 = 0.775
    SHX4_2 = 0.693
    SHX5_2 = 0.005
    SHX6_2 = 0.0028
    SHX7_2 = 0.4
    SHX8_2 = "Back"
    SHX9_2 = 255
    SHX10_2 = 255
    SHX11_2 = 255
    SHX12_2 = 255
    SHX13_2 = 4
    SHX14_2 = 0
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX2_2 = CursorInArea
    SHX3_2 = 0.6583
    SHX4_2 = 0.7056
    SHX5_2 = 0.6712
    SHX6_2 = 0.7064
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    if SHX2_2 then
      SHX2_2 = DrawRect
      SHX3_2 = 0.681
      SHX4_2 = 0.689
      SHX5_2 = 0.045
      SHX6_2 = 0.036
      SHX7_2 = SHX7_1
      SHX8_2 = SHX8_1
      SHX9_2 = SHX9_1
      SHX10_2 = 150
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
      SHX2_2 = IsControlJustPressed
      SHX3_2 = 1
      SHX4_2 = 329
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
      if not SHX2_2 then
        SHX2_2 = IsDisabledControlJustPressed
        SHX3_2 = 1
        SHX4_2 = 329
        SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
      end
      if SHX2_2 then
        SHX2_2 = PlaySound
        SHX3_2 = -1
        SHX4_2 = "SELECT"
        SHX5_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        SHX6_2 = false
        SHX7_2 = 0
        SHX8_2 = true
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
        SHX2_2 = "gang"
        SHX1_1 = SHX2_2
      end
    else
      SHX2_2 = DrawRect
      SHX3_2 = 0.681
      SHX4_2 = 0.689
      SHX5_2 = 0.045
      SHX6_2 = 0.036
      SHX7_2 = 0
      SHX8_2 = 0
      SHX9_2 = 0
      SHX10_2 = 150
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    end
    SHX2_2 = pairs
    SHX3_2 = SHX0_2
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
    for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
      SHX8_2 = "amount"
      SHX8_2 = SHX7_2[SHX8_2]
      if SHX8_2 >= 0 then
        SHX8_2 = 50
        if SHX8_2 then
          goto SHX_LABEL_3019
        end
      end
      SHX8_2 = 255
      -- [FIX IF ERROR] Move ::SHX_LABEL_3019:: outside nested blocks until all 'goto SHX_LABEL_3019' can see it
      ::SHX_LABEL_3019::
      SHX9_2 = "amount"
      SHX9_2 = SHX7_2[SHX9_2]
      if SHX9_2 >= 0 then
        SHX9_2 = 255
        if SHX9_2 then
          goto SHX_LABEL_3027
        end
      end
      SHX9_2 = 50
      -- [FIX IF ERROR] Move ::SHX_LABEL_3027:: outside nested blocks until all 'goto SHX_LABEL_3027' can see it
      ::SHX_LABEL_3027::
      SHX10_2 = 50
      SHX11_2 = SHX7_2.user_id
      if -1 == SHX11_2 then
        SHX11_2 = "N/A"
        if SHX11_2 then
          goto SHX_LABEL_3037
        end
      end
      SHX11_2 = tostring
      SHX12_2 = SHX7_2.user_id
      SHX11_2 = SHX11_2(SHX12_2)
      -- [FIX IF ERROR] Move ::SHX_LABEL_3037:: outside nested blocks until all 'goto SHX_LABEL_3037' can see it
      ::SHX_LABEL_3037::
      SHX12_2 = DrawAdvancedText
      SHX13_2 = 0.449
      SHX14_2 = 0.0287 * SHX6_2
      SHX15_2 = 0.365
      SHX14_2 = SHX15_2 + SHX14_2
      SHX15_2 = 0.005
      SHX16_2 = 0.0028
      SHX17_2 = 0.4
      SHX18_2 = SHX7_2.name
      SHX19_2 = SHX8_2
      SHX20_2 = SHX9_2
      SHX21_2 = SHX10_2
      SHX22_2 = 255
      SHX23_2 = 6
      SHX24_2 = 0
      SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
      SHX12_2 = DrawAdvancedText
      SHX13_2 = 0.53
      SHX14_2 = 0.0287 * SHX6_2
      SHX15_2 = 0.365
      SHX14_2 = SHX15_2 + SHX14_2
      SHX15_2 = 0.005
      SHX16_2 = 0.0028
      SHX17_2 = 0.4
      SHX18_2 = SHX11_2
      SHX19_2 = SHX8_2
      SHX20_2 = SHX9_2
      SHX21_2 = SHX10_2
      SHX22_2 = 255
      SHX23_2 = 6
      SHX24_2 = 0
      SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
      SHX12_2 = DrawAdvancedText
      SHX13_2 = 0.623
      SHX14_2 = 0.0287 * SHX6_2
      SHX15_2 = 0.365
      SHX14_2 = SHX15_2 + SHX14_2
      SHX15_2 = 0.005
      SHX16_2 = 0.0028
      SHX17_2 = 0.4
      SHX18_2 = "lastContribution"
      SHX18_2 = SHX7_2[SHX18_2]
      SHX19_2 = SHX8_2
      SHX20_2 = SHX9_2
      SHX21_2 = SHX10_2
      SHX22_2 = 255
      SHX23_2 = 6
      SHX24_2 = 0
      SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
      SHX12_2 = DrawAdvancedText
      SHX13_2 = 0.727
      SHX14_2 = 0.0287 * SHX6_2
      SHX15_2 = 0.365
      SHX14_2 = SHX15_2 + SHX14_2
      SHX15_2 = 0.005
      SHX16_2 = 0.0028
      SHX17_2 = 0.4
      SHX18_2 = "\194\163"
      SHX19_2 = getMoneyStringFormatted
      SHX20_2 = "amount"
      SHX20_2 = SHX7_2[SHX20_2]
      SHX19_2 = SHX19_2(SHX20_2)
      SHX18_2 = SHX18_2 .. SHX19_2
      SHX19_2 = SHX8_2
      SHX20_2 = SHX9_2
      SHX21_2 = SHX10_2
      SHX22_2 = 255
      SHX23_2 = 6
      SHX24_2 = 0
      SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
    end
    SHX2_2 = DrawAdvancedText
    SHX3_2 = 0.547
    SHX4_2 = 0.692
    SHX5_2 = 0.005
    SHX6_2 = 0.0028
    SHX7_2 = 0.4
    SHX8_2 = "Previous"
    SHX9_2 = 255
    SHX10_2 = 255
    SHX11_2 = 255
    SHX12_2 = 255
    SHX13_2 = 4
    SHX14_2 = 0
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX2_2 = CursorInArea
    SHX3_2 = 0.4195
    SHX4_2 = 0.4845
    SHX5_2 = 0.6768
    SHX6_2 = 0.7074
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    if SHX2_2 then
      SHX2_2 = DrawRect
      SHX3_2 = 0.452
      SHX4_2 = 0.69
      SHX5_2 = 0.065
      SHX6_2 = 0.036
      SHX7_2 = SHX7_1
      SHX8_2 = SHX8_1
      SHX9_2 = SHX9_1
      SHX10_2 = 150
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
      SHX2_2 = IsControlJustPressed
      SHX3_2 = 1
      SHX4_2 = 329
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
      if not SHX2_2 then
        SHX2_2 = IsDisabledControlJustPressed
        SHX3_2 = 1
        SHX4_2 = 329
        SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
      end
      if SHX2_2 then
        SHX2_2 = PlaySound
        SHX3_2 = -1
        SHX4_2 = "SELECT"
        SHX5_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        SHX6_2 = false
        SHX7_2 = 0
        SHX8_2 = true
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
        SHX2_2 = SHX19_1
        if SHX2_2 <= 1 then
          SHX2_2 = tCMG
          SHX2_2 = SHX2_2.notify
          SHX3_2 = "~r~Lowest page reached"
          SHX2_2(SHX3_2)
        else
          SHX2_2 = SHX19_1
          SHX2_2 = SHX2_2 - 1
          SHX19_1 = SHX2_2
        end
      end
    else
      SHX2_2 = DrawRect
      SHX3_2 = 0.452
      SHX4_2 = 0.69
      SHX5_2 = 0.065
      SHX6_2 = 0.036
      SHX7_2 = 0
      SHX8_2 = 0
      SHX9_2 = 0
      SHX10_2 = 150
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    end
    SHX2_2 = DrawAdvancedText
    SHX3_2 = 0.639
    SHX4_2 = 0.692
    SHX5_2 = 0.005
    SHX6_2 = 0.0028
    SHX7_2 = 0.4
    SHX8_2 = "Next"
    SHX9_2 = 255
    SHX10_2 = 255
    SHX11_2 = 255
    SHX12_2 = 255
    SHX13_2 = 4
    SHX14_2 = 0
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX2_2 = CursorInArea
    SHX3_2 = 0.5125
    SHX4_2 = 0.5775
    SHX5_2 = 0.6712
    SHX6_2 = 0.7064
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    if SHX2_2 then
      SHX2_2 = DrawRect
      SHX3_2 = 0.545
      SHX4_2 = 0.69
      SHX5_2 = 0.065
      SHX6_2 = 0.036
      SHX7_2 = SHX7_1
      SHX8_2 = SHX8_1
      SHX9_2 = SHX9_1
      SHX10_2 = 150
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
      SHX2_2 = IsControlJustPressed
      SHX3_2 = 1
      SHX4_2 = 329
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
      if not SHX2_2 then
        SHX2_2 = IsDisabledControlJustPressed
        SHX3_2 = 1
        SHX4_2 = 329
        SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
      end
      if SHX2_2 then
        SHX2_2 = PlaySound
        SHX3_2 = -1
        SHX4_2 = "SELECT"
        SHX5_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        SHX6_2 = false
        SHX7_2 = 0
        SHX8_2 = true
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
        SHX2_2 = SHX19_1
        SHX3_2 = math
        SHX3_2 = SHX3_2.ceil
        SHX4_2 = SHX1_2 / 10.0
        SHX3_2 = SHX3_2(SHX4_2)
        if SHX2_2 >= SHX3_2 then
          SHX2_2 = tCMG
          SHX2_2 = SHX2_2.notify
          SHX3_2 = "~r~Max page reached"
          SHX2_2(SHX3_2)
        else
          SHX2_2 = SHX19_1
          SHX2_2 = SHX2_2 + 1
          SHX19_1 = SHX2_2
        end
      end
    else
      SHX2_2 = DrawRect
      SHX3_2 = 0.545
      SHX4_2 = 0.69
      SHX5_2 = 0.065
      SHX6_2 = 0.036
      SHX7_2 = 0
      SHX8_2 = 0
      SHX9_2 = 0
      SHX10_2 = 150
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    end
  end
  SHX0_2 = SHX1_1
  if "settings" == SHX0_2 then
    SHX0_2 = DrawRect
    SHX1_2 = 0.501
    SHX2_2 = 0.525
    SHX3_2 = 0.421
    SHX4_2 = 0.387
    SHX5_2 = 0
    SHX6_2 = 0
    SHX7_2 = 0
    SHX8_2 = 150
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX0_2 = DrawRect
    SHX1_2 = 0.501
    SHX2_2 = 0.308
    SHX3_2 = 0.421
    SHX4_2 = 0.047
    SHX5_2 = 18
    SHX6_2 = 82
    SHX7_2 = 228
    SHX8_2 = 248
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX0_2 = DrawAdvancedText
    SHX1_2 = 0.591
    SHX2_2 = 0.312
    SHX3_2 = 0.005
    SHX4_2 = 0.0028
    SHX5_2 = 0.48
    SHX6_2 = "CMG gang - settings"
    SHX7_2 = 255
    SHX8_2 = 255
    SHX9_2 = 255
    SHX10_2 = 255
    SHX11_2 = 7
    SHX12_2 = 0
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX0_2 = DrawAdvancedText
    SHX1_2 = 0.7
    SHX2_2 = 0.398
    SHX3_2 = 0.005
    SHX4_2 = 0.0028
    SHX5_2 = 0.46
    SHX6_2 = "Permissions Guide"
    SHX7_2 = 255
    SHX8_2 = 255
    SHX9_2 = 255
    SHX10_2 = 255
    SHX11_2 = 6
    SHX12_2 = 0
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX0_2 = DrawAdvancedText
    SHX1_2 = 0.7
    SHX2_2 = 0.436
    SHX3_2 = 0.005
    SHX4_2 = 0.0028
    SHX5_2 = 0.46
    SHX6_2 = "New members by can only deposit by default"
    SHX7_2 = 255
    SHX8_2 = 255
    SHX9_2 = 255
    SHX10_2 = 255
    SHX11_2 = 6
    SHX12_2 = 0
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX0_2 = DrawAdvancedText
    SHX1_2 = 0.7
    SHX2_2 = 0.457
    SHX3_2 = 0.005
    SHX4_2 = 0.0028
    SHX5_2 = 0.46
    SHX6_2 = "This can be configured in the members page"
    SHX7_2 = 255
    SHX8_2 = 255
    SHX9_2 = 255
    SHX10_2 = 255
    SHX11_2 = 6
    SHX12_2 = 0
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX0_2 = DrawAdvancedText
    SHX1_2 = 0.7
    SHX2_2 = 0.51
    SHX3_2 = 0.005
    SHX4_2 = 0.0028
    SHX5_2 = 0.46
    SHX6_2 = "To withdraw, invite, kick and access more"
    SHX7_2 = 255
    SHX8_2 = 255
    SHX9_2 = 255
    SHX10_2 = 255
    SHX11_2 = 6
    SHX12_2 = 0
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX0_2 = DrawAdvancedText
    SHX1_2 = 0.7
    SHX2_2 = 0.572
    SHX3_2 = 0.005
    SHX4_2 = 0.0028
    SHX5_2 = 0.46
    SHX6_2 = "A leader has full access to the gang."
    SHX7_2 = 255
    SHX8_2 = 255
    SHX9_2 = 255
    SHX10_2 = 255
    SHX11_2 = 6
    SHX12_2 = 0
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX0_2 = DrawAdvancedText
    SHX1_2 = 0.7
    SHX2_2 = 0.532
    SHX3_2 = 0.005
    SHX4_2 = 0.0028
    SHX5_2 = 0.46
    SHX6_2 = "permissions must be given in members page."
    SHX7_2 = 255
    SHX8_2 = 255
    SHX9_2 = 255
    SHX10_2 = 255
    SHX11_2 = 6
    SHX12_2 = 0
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX0_2 = SHX10_1
    if SHX0_2 then
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.451
      SHX2_2 = 0.616
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Leave Gang"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 6
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.554
      SHX2_2 = 0.615
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Disband Gang"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 4
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.5025
      SHX2_2 = 0.69
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Set Gang Tag"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 6
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    end
    SHX0_2 = DrawAdvancedText
    SHX1_2 = 0.775
    SHX2_2 = 0.693
    SHX3_2 = 0.005
    SHX4_2 = 0.0028
    SHX5_2 = 0.4
    SHX6_2 = "Back"
    SHX7_2 = 255
    SHX8_2 = 255
    SHX9_2 = 255
    SHX10_2 = 255
    SHX11_2 = 4
    SHX12_2 = 0
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX0_2 = SHX33_1
    SHX0_2 = SHX0_2()
    SHX1_2 = SHX10_1
    if SHX1_2 then
      SHX1_2 = CursorInArea
      SHX2_2 = 0.3187
      SHX3_2 = 0.3937
      SHX4_2 = 0.5712
      SHX5_2 = 0.6462
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
      if SHX1_2 then
        SHX1_2 = DrawRect
        SHX2_2 = 0.357
        SHX3_2 = 0.61
        SHX4_2 = 0.075
        SHX5_2 = 0.076
        SHX6_2 = SHX7_1
        SHX7_2 = SHX8_1
        SHX8_2 = SHX9_1
        SHX9_2 = 150
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
        SHX1_2 = IsControlJustPressed
        SHX2_2 = 1
        SHX3_2 = 329
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        if not SHX1_2 then
          SHX1_2 = IsDisabledControlJustPressed
          SHX2_2 = 1
          SHX3_2 = 329
          SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        end
        if SHX1_2 then
          SHX1_2 = PlaySound
          SHX2_2 = -1
          SHX3_2 = "SELECT"
          SHX4_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          SHX5_2 = false
          SHX6_2 = 0
          SHX7_2 = true
          SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          SHX1_2 = SHX10_1
          if SHX0_2 == SHX1_2 then
            SHX1_2 = SHX36_1
            SHX2_2 = "Are you sure?"
            SHX1_2 = SHX1_2(SHX2_2)
            if SHX1_2 then
              SHX1_2 = TriggerServerEvent
              SHX2_2 = "4d87711de5"
              SHX1_2(SHX2_2)
              SHX1_2 = "noGang"
              SHX1_1 = SHX1_2
              SHX1_2 = CMG
              SHX2_2 = "setCursor"
              SHX1_2 = SHX1_2[SHX2_2]
              SHX2_2 = 0
              SHX1_2(SHX2_2)
              SHX1_2 = _ENV
              SHX2_2 = "SetPlayerControl"
              SHX1_2 = SHX1_2[SHX2_2]
              SHX2_2 = _ENV
              SHX3_2 = "PlayerId"
              SHX2_2 = SHX2_2[SHX3_2]
              SHX2_2 = SHX2_2()
              SHX3_2 = true
              SHX4_2 = 0
              SHX1_2(SHX2_2, SHX3_2, SHX4_2)
            end
          else
            SHX1_2 = notify
            SHX2_2 = "~r~You must have your main gang selected to use this."
            SHX1_2(SHX2_2)
          end
        end
      else
        SHX1_2 = DrawRect
        SHX2_2 = 0.357
        SHX3_2 = 0.61
        SHX4_2 = 0.075
        SHX5_2 = 0.076
        SHX6_2 = 0
        SHX7_2 = 0
        SHX8_2 = 0
        SHX9_2 = 150
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
      end
      SHX1_2 = CursorInArea
      SHX2_2 = 0.4197
      SHX3_2 = 0.4932
      SHX4_2 = 0.5712
      SHX5_2 = 0.6462
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
      if SHX1_2 then
        SHX1_2 = DrawRect
        SHX2_2 = 0.457
        SHX3_2 = 0.61
        SHX4_2 = 0.075
        SHX5_2 = 0.076
        SHX6_2 = SHX7_1
        SHX7_2 = SHX8_1
        SHX8_2 = SHX9_1
        SHX9_2 = 150
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
        SHX1_2 = IsControlJustPressed
        SHX2_2 = 1
        SHX3_2 = 329
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        if not SHX1_2 then
          SHX1_2 = IsDisabledControlJustPressed
          SHX2_2 = 1
          SHX3_2 = 329
          SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        end
        if SHX1_2 then
          SHX1_2 = PlaySound
          SHX2_2 = -1
          SHX3_2 = "SELECT"
          SHX4_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          SHX5_2 = false
          SHX6_2 = 0
          SHX7_2 = true
          SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          SHX1_2 = SHX10_1
          if SHX0_2 == SHX1_2 then
            SHX1_2 = CMG
            SHX1_2 = SHX1_2.hasGangPermission
            SHX2_2 = "leader"
            SHX1_2 = SHX1_2(SHX2_2)
            if SHX1_2 then
              SHX1_2 = SHX36_1
              SHX2_2 = "Are you sure?"
              SHX1_2 = SHX1_2(SHX2_2)
              if true == SHX1_2 then
                SHX1_2 = TriggerServerEvent
                SHX2_2 = "2b85de9de2"
                SHX1_2(SHX2_2)
              else
                SHX1_2 = tCMG
                SHX1_2 = SHX1_2.notify
                SHX2_2 = "~r~Cancelled disbanding gang."
                SHX1_2(SHX2_2)
              end
            else
              SHX1_2 = tCMG
              SHX1_2 = SHX1_2.notify
              SHX2_2 = "~r~You don't have permission to disband!"
              SHX1_2(SHX2_2)
            end
          else
            SHX1_2 = notify
            SHX2_2 = "~r~You must have your main gang selected to use this."
            SHX1_2(SHX2_2)
          end
        end
      else
        SHX1_2 = DrawRect
        SHX2_2 = 0.457
        SHX3_2 = 0.61
        SHX4_2 = 0.075
        SHX5_2 = 0.076
        SHX6_2 = 0
        SHX7_2 = 0
        SHX8_2 = 0
        SHX9_2 = 150
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
      end
      SHX1_2 = CursorInAreaRect
      SHX2_2 = 0.407
      SHX3_2 = 0.69
      SHX4_2 = 0.075
      SHX5_2 = 0.04
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
      if SHX1_2 then
        SHX1_2 = DrawRect
        SHX2_2 = 0.407
        SHX3_2 = 0.687
        SHX4_2 = 0.075
        SHX5_2 = 0.04
        SHX6_2 = SHX7_1
        SHX7_2 = SHX8_1
        SHX8_2 = SHX9_1
        SHX9_2 = 150
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
        SHX1_2 = IsControlJustPressed
        SHX2_2 = 1
        SHX3_2 = 329
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        if not SHX1_2 then
          SHX1_2 = IsDisabledControlJustPressed
          SHX2_2 = 1
          SHX3_2 = 329
          SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        end
        if SHX1_2 then
          SHX1_2 = PlaySound
          SHX2_2 = -1
          SHX3_2 = "SELECT"
          SHX4_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          SHX5_2 = false
          SHX6_2 = 0
          SHX7_2 = true
          SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          SHX1_2 = SHX10_1
          if SHX0_2 == SHX1_2 then
            SHX1_2 = CMG
            SHX1_2 = SHX1_2.hasGangPermission
            SHX2_2 = "leader"
            SHX1_2 = SHX1_2(SHX2_2)
            if SHX1_2 then
              SHX1_2 = TriggerServerEvent
              SHX2_2 = "9dad3c2a94"
              SHX1_2(SHX2_2)
            else
              SHX1_2 = tCMG
              SHX1_2 = SHX1_2.notify
              SHX2_2 = "~r~Only a leader can set the gang tag!"
              SHX1_2(SHX2_2)
            end
          else
            SHX1_2 = notify
            SHX2_2 = "~r~You must have your main gang selected to use this."
            SHX1_2(SHX2_2)
          end
        end
      else
        SHX1_2 = DrawRect
        SHX2_2 = 0.407
        SHX3_2 = 0.687
        SHX4_2 = 0.075
        SHX5_2 = 0.04
        SHX6_2 = 0
        SHX7_2 = 0
        SHX8_2 = 0
        SHX9_2 = 150
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
      end
    end
    SHX1_2 = CursorInArea
    SHX2_2 = 0.6583
    SHX3_2 = 0.7056
    SHX4_2 = 0.6712
    SHX5_2 = 0.7064
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
    if SHX1_2 then
      SHX1_2 = DrawRect
      SHX2_2 = 0.681
      SHX3_2 = 0.689
      SHX4_2 = 0.045
      SHX5_2 = 0.036
      SHX6_2 = SHX7_1
      SHX7_2 = SHX8_1
      SHX8_2 = SHX9_1
      SHX9_2 = 150
      SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
      SHX1_2 = IsControlJustPressed
      SHX2_2 = 1
      SHX3_2 = 329
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
      if not SHX1_2 then
        SHX1_2 = IsDisabledControlJustPressed
        SHX2_2 = 1
        SHX3_2 = 329
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
      end
      if SHX1_2 then
        SHX1_2 = PlaySound
        SHX2_2 = -1
        SHX3_2 = "SELECT"
        SHX4_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        SHX5_2 = false
        SHX6_2 = 0
        SHX7_2 = true
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
        SHX1_2 = SHX10_1
        if SHX1_2 then
          SHX1_2 = "gang"
          SHX1_1 = SHX1_2
        else
          SHX1_2 = "noGang"
          SHX1_1 = SHX1_2
        end
      end
    else
      SHX1_2 = DrawRect
      SHX2_2 = 0.681
      SHX3_2 = 0.689
      SHX4_2 = 0.045
      SHX5_2 = 0.036
      SHX6_2 = 0
      SHX7_2 = 0
      SHX8_2 = 0
      SHX9_2 = 150
      SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    end
    if SHX0_2 then
      SHX1_2 = SHX0_2.isAdvanced
      if SHX1_2 then
        SHX1_2 = SHX15_1
        SHX2_2 = "blips"
        SHX1_2 = SHX1_2[SHX2_2]
        if SHX1_2 then
          SHX1_2 = "Disable"
          if SHX1_2 then
            goto SHX_LABEL_3760
          end
        end
        SHX1_2 = "Enable"
        -- [FIX IF ERROR] Move ::SHX_LABEL_3760:: outside nested blocks until all 'goto SHX_LABEL_3760' can see it
        ::SHX_LABEL_3760::
        SHX2_2 = DrawAdvancedText
        SHX3_2 = 0.451
        SHX4_2 = 0.416
        SHX5_2 = 0.005
        SHX6_2 = 0.0028
        SHX7_2 = 0.4
        SHX8_2 = SHX1_2
        SHX9_2 = " Blips"
        SHX8_2 = SHX8_2 .. SHX9_2
        SHX9_2 = 255
        SHX10_2 = 255
        SHX11_2 = 255
        SHX12_2 = 255
        SHX13_2 = 6
        SHX14_2 = 0
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
        SHX2_2 = CursorInArea
        SHX3_2 = 0.3187
        SHX4_2 = 0.3937
        SHX5_2 = 0.3712
        SHX6_2 = 0.4462
        SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
        if SHX2_2 then
          SHX2_2 = DrawRect
          SHX3_2 = 0.357
          SHX4_2 = 0.41
          SHX5_2 = 0.075
          SHX6_2 = 0.076
          SHX7_2 = SHX7_1
          SHX8_2 = SHX8_1
          SHX9_2 = SHX9_1
          SHX10_2 = 150
          SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
          SHX2_2 = IsControlJustPressed
          SHX3_2 = 1
          SHX4_2 = 329
          SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
          if not SHX2_2 then
            SHX2_2 = IsDisabledControlJustPressed
            SHX3_2 = 1
            SHX4_2 = 329
            SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
            if not SHX2_2 then
              goto SHX_LABEL_3874
            end
          end
          SHX2_2 = PlaySound
          SHX3_2 = -1
          SHX4_2 = "SELECT"
          SHX5_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          SHX6_2 = false
          SHX7_2 = 0
          SHX8_2 = true
          SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
          SHX2_2 = SHX15_1
          SHX3_2 = "blips"
          SHX4_2 = SHX15_1
          SHX5_2 = "blips"
          SHX4_2 = SHX4_2[SHX5_2]
          SHX4_2 = not SHX4_2
          SHX2_2[SHX3_2] = SHX4_2
          SHX2_2 = _ENV
          SHX3_2 = "TriggerEvent"
          SHX2_2 = SHX2_2[SHX3_2]
          SHX3_2 = "e713d91b70"
          SHX2_2(SHX3_2)
          SHX2_2 = SHX15_1
          SHX3_2 = "blips"
          SHX2_2 = SHX2_2[SHX3_2]
          if not SHX2_2 then
            SHX2_2 = _ENV
            SHX3_2 = "TriggerEvent"
            SHX2_2 = SHX2_2[SHX3_2]
            SHX3_2 = "e713d91b70"
            SHX2_2(SHX3_2)
            SHX2_2 = TriggerServerEvent
            SHX3_2 = "f9c26121e2"
            SHX4_2 = nil
            SHX2_2(SHX3_2, SHX4_2)
          else
            SHX2_2 = SHX33_1
            SHX2_2 = SHX2_2()
            SHX3_2 = SHX10_1
            if SHX2_2 == SHX3_2 then
              SHX2_2 = "own"
              if SHX2_2 then
                goto SHX_LABEL_3850
              end
            end
            SHX2_2 = "guest"
            -- [FIX IF ERROR] Move ::SHX_LABEL_3850:: outside nested blocks until all 'goto SHX_LABEL_3850' can see it
            ::SHX_LABEL_3850::
            SHX3_2 = TriggerServerEvent
            SHX4_2 = "f9c26121e2"
            SHX5_2 = SHX2_2
            SHX6_2 = true
            SHX3_2(SHX4_2, SHX5_2, SHX6_2)
          end
          SHX2_2 = SetResourceKvp
          SHX3_2 = "cmg_gang_blips"
          SHX4_2 = tostring
          SHX5_2 = SHX15_1
          SHX6_2 = "blips"
          SHX5_2 = SHX5_2[SHX6_2]
          SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2 = SHX4_2(SHX5_2)
          SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
        else
          SHX2_2 = DrawRect
          SHX3_2 = 0.357
          SHX4_2 = 0.41
          SHX5_2 = 0.075
          SHX6_2 = 0.076
          SHX7_2 = 0
          SHX8_2 = 0
          SHX9_2 = 0
          SHX10_2 = 150
          SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
        end
        -- [FIX IF ERROR] Move ::SHX_LABEL_3874:: outside nested blocks until all 'goto SHX_LABEL_3874' can see it
        ::SHX_LABEL_3874::
        SHX2_2 = SHX15_1
        SHX3_2 = "pings"
        SHX2_2 = SHX2_2[SHX3_2]
        if SHX2_2 then
          SHX2_2 = "Disable"
          if SHX2_2 then
            goto SHX_LABEL_3883
          end
        end
        SHX2_2 = "Enable"
        -- [FIX IF ERROR] Move ::SHX_LABEL_3883:: outside nested blocks until all 'goto SHX_LABEL_3883' can see it
        ::SHX_LABEL_3883::
        SHX3_2 = DrawAdvancedText
        SHX4_2 = 0.554
        SHX5_2 = 0.415
        SHX6_2 = 0.005
        SHX7_2 = 0.0028
        SHX8_2 = 0.4
        SHX9_2 = SHX2_2
        SHX10_2 = " Pings"
        SHX9_2 = SHX9_2 .. SHX10_2
        SHX10_2 = 255
        SHX11_2 = 255
        SHX12_2 = 255
        SHX13_2 = 255
        SHX14_2 = 4
        SHX15_2 = 0
        SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
        SHX3_2 = CursorInArea
        SHX4_2 = 0.4197
        SHX5_2 = 0.4932
        SHX6_2 = 0.3712
        SHX7_2 = 0.4462
        SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
        if SHX3_2 then
          SHX3_2 = DrawRect
          SHX4_2 = 0.457
          SHX5_2 = 0.41
          SHX6_2 = 0.075
          SHX7_2 = 0.076
          SHX8_2 = SHX7_1
          SHX9_2 = SHX8_1
          SHX10_2 = SHX9_1
          SHX11_2 = 150
          SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
          SHX3_2 = IsControlJustPressed
          SHX4_2 = 1
          SHX5_2 = 329
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
          if not SHX3_2 then
            SHX3_2 = IsDisabledControlJustPressed
            SHX4_2 = 1
            SHX5_2 = 329
            SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
          end
          if SHX3_2 then
            SHX3_2 = PlaySound
            SHX4_2 = -1
            SHX5_2 = "SELECT"
            SHX6_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            SHX7_2 = false
            SHX8_2 = 0
            SHX9_2 = true
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
            SHX3_2 = SHX15_1
            SHX4_2 = "pings"
            SHX5_2 = SHX15_1
            SHX6_2 = "pings"
            SHX5_2 = SHX5_2[SHX6_2]
            SHX5_2 = not SHX5_2
            SHX3_2[SHX4_2] = SHX5_2
            SHX3_2 = SetResourceKvp
            SHX4_2 = "cmg_gang_pings"
            SHX5_2 = tostring
            SHX6_2 = SHX15_1
            SHX7_2 = "pings"
            SHX6_2 = SHX6_2[SHX7_2]
            SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2 = SHX5_2(SHX6_2)
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
          end
        else
          SHX3_2 = DrawRect
          SHX4_2 = 0.457
          SHX5_2 = 0.41
          SHX6_2 = 0.075
          SHX7_2 = 0.076
          SHX8_2 = 0
          SHX9_2 = 0
          SHX10_2 = 0
          SHX11_2 = 150
          SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
        end
        SHX3_2 = SHX15_1
        SHX4_2 = "names"
        SHX3_2 = SHX3_2[SHX4_2]
        if SHX3_2 then
          SHX3_2 = "Disable"
          if SHX3_2 then
            goto SHX_LABEL_3972
          end
        end
        SHX3_2 = "Enable"
        -- [FIX IF ERROR] Move ::SHX_LABEL_3972:: outside nested blocks until all 'goto SHX_LABEL_3972' can see it
        ::SHX_LABEL_3972::
        SHX4_2 = DrawAdvancedText
        SHX5_2 = 0.451
        SHX6_2 = 0.516
        SHX7_2 = 0.005
        SHX8_2 = 0.0028
        SHX9_2 = 0.4
        SHX10_2 = SHX3_2
        SHX11_2 = " Names"
        SHX10_2 = SHX10_2 .. SHX11_2
        SHX11_2 = 255
        SHX12_2 = 255
        SHX13_2 = 255
        SHX14_2 = 255
        SHX15_2 = 6
        SHX16_2 = 0
        SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
        SHX4_2 = CursorInArea
        SHX5_2 = 0.3187
        SHX6_2 = 0.3937
        SHX7_2 = 0.4712
        SHX8_2 = 0.5462
        SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
        if SHX4_2 then
          SHX4_2 = DrawRect
          SHX5_2 = 0.357
          SHX6_2 = 0.51
          SHX7_2 = 0.075
          SHX8_2 = 0.076
          SHX9_2 = SHX7_1
          SHX10_2 = SHX8_1
          SHX11_2 = SHX9_1
          SHX12_2 = 150
          SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
          SHX4_2 = IsControlJustPressed
          SHX5_2 = 1
          SHX6_2 = 329
          SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
          if not SHX4_2 then
            SHX4_2 = IsDisabledControlJustPressed
            SHX5_2 = 1
            SHX6_2 = 329
            SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
          end
          if SHX4_2 then
            SHX4_2 = PlaySound
            SHX5_2 = -1
            SHX6_2 = "SELECT"
            SHX7_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            SHX8_2 = false
            SHX9_2 = 0
            SHX10_2 = true
            SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
            SHX4_2 = SHX15_1
            SHX5_2 = "names"
            SHX6_2 = SHX15_1
            SHX7_2 = "names"
            SHX6_2 = SHX6_2[SHX7_2]
            SHX6_2 = not SHX6_2
            SHX4_2[SHX5_2] = SHX6_2
            SHX4_2 = SetResourceKvp
            SHX5_2 = "cmg_gang_names"
            SHX6_2 = tostring
            SHX7_2 = SHX15_1
            SHX8_2 = "names"
            SHX7_2 = SHX7_2[SHX8_2]
            SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2 = SHX6_2(SHX7_2)
            SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
          end
        else
          SHX4_2 = DrawRect
          SHX5_2 = 0.357
          SHX6_2 = 0.51
          SHX7_2 = 0.075
          SHX8_2 = 0.076
          SHX9_2 = 0
          SHX10_2 = 0
          SHX11_2 = 0
          SHX12_2 = 150
          SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
        end
        SHX4_2 = SHX10_1
        if SHX4_2 then
          SHX4_2 = DrawAdvancedText
          SHX5_2 = 0.554
          SHX6_2 = 0.515
          SHX7_2 = 0.005
          SHX8_2 = 0.0028
          SHX9_2 = 0.4
          SHX10_2 = "Rename Gang"
          SHX11_2 = 255
          SHX12_2 = 255
          SHX13_2 = 255
          SHX14_2 = 255
          SHX15_2 = 4
          SHX16_2 = 0
          SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
          SHX4_2 = CursorInArea
          SHX5_2 = 0.4197
          SHX6_2 = 0.4932
          SHX7_2 = 0.4712
          SHX8_2 = 0.5462
          SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
          if SHX4_2 then
            SHX4_2 = DrawRect
            SHX5_2 = 0.457
            SHX6_2 = 0.51
            SHX7_2 = 0.075
            SHX8_2 = 0.076
            SHX9_2 = SHX7_1
            SHX10_2 = SHX8_1
            SHX11_2 = SHX9_1
            SHX12_2 = 150
            SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
            SHX4_2 = IsControlJustPressed
            SHX5_2 = 1
            SHX6_2 = 329
            SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
            if not SHX4_2 then
              SHX4_2 = IsDisabledControlJustPressed
              SHX5_2 = 1
              SHX6_2 = 329
              SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
            end
            if SHX4_2 then
              SHX4_2 = PlaySound
              SHX5_2 = -1
              SHX6_2 = "SELECT"
              SHX7_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
              SHX8_2 = false
              SHX9_2 = 0
              SHX10_2 = true
              SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
              SHX4_2 = SHX10_1.isAdvanced
              if SHX4_2 then
                SHX4_2 = CMG
                SHX4_2 = SHX4_2.GetRageInputText
                SHX5_2 = "Enter Gang Name:"
                SHX4_2 = SHX4_2(SHX5_2)
                if nil ~= SHX4_2 and "null" ~= SHX4_2 and "" ~= SHX4_2 then
                  SHX5_2 = TriggerServerEvent
                  SHX6_2 = "7a95907fc0"
                  SHX7_2 = SHX4_2
                  SHX5_2(SHX6_2, SHX7_2)
                else
                  SHX5_2 = tCMG
                  SHX5_2 = SHX5_2.notify
                  SHX6_2 = "~r~No gang name entered!"
                  SHX5_2(SHX6_2)
                end
              else
                SHX4_2 = notify
                SHX5_2 = "~r~Your main gang does not have the advanced license."
                SHX4_2(SHX5_2)
              end
            end
          else
            SHX4_2 = DrawRect
            SHX5_2 = 0.457
            SHX6_2 = 0.51
            SHX7_2 = 0.075
            SHX8_2 = 0.076
            SHX9_2 = 0
            SHX10_2 = 0
            SHX11_2 = 0
            SHX12_2 = 150
            SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
          end
        end
        SHX4_2 = _ENV
        SHX5_2 = "GetHudColour"
        SHX4_2 = SHX4_2[SHX5_2]
        SHX5_2 = SHX0_1
        SHX6_2 = "colourLookup"
        SHX5_2 = SHX5_2[SHX6_2]
        SHX6_2 = SHX29_1
        SHX5_2 = SHX5_2[SHX6_2]
        SHX6_2 = "hud"
        SHX5_2 = SHX5_2[SHX6_2]
        SHX4_2, SHX5_2, SHX6_2 = SHX4_2(SHX5_2)
        SHX7_2 = DrawAdvancedText
        SHX8_2 = 0.645
        SHX9_2 = 0.63
        SHX10_2 = 0.005
        SHX11_2 = 0.0028
        SHX12_2 = 0.46
        SHX13_2 = "Your Blip Colour: "
        SHX14_2 = 255
        SHX15_2 = 255
        SHX16_2 = 255
        SHX17_2 = 255
        SHX18_2 = 6
        SHX19_2 = 0
        SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
        SHX7_2 = DrawRect
        SHX8_2 = 0.62
        SHX9_2 = 0.628
        SHX10_2 = 0.05
        SHX11_2 = 0.025
        SHX12_2 = SHX4_2
        SHX13_2 = SHX5_2
        SHX14_2 = SHX6_2
        SHX15_2 = 255
        SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
        SHX7_2 = CursorInArea
        SHX8_2 = 0.595
        SHX9_2 = 0.645
        SHX10_2 = 0.6155
        SHX11_2 = 0.6405
        SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
        if SHX7_2 then
          SHX7_2 = IsControlJustPressed
          SHX8_2 = 1
          SHX9_2 = 329
          SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
          if not SHX7_2 then
            SHX7_2 = IsDisabledControlJustPressed
            SHX8_2 = 1
            SHX9_2 = 329
            SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
          end
          if SHX7_2 then
            SHX7_2 = false
            SHX8_2 = false
            SHX9_2 = pairs
            SHX10_2 = SHX0_1
            SHX11_2 = "colourLookup"
            SHX10_2 = SHX10_2[SHX11_2]
            SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX9_2(SHX10_2)
            for SHX13_2 in SHX9_2, SHX10_2, SHX11_2, SHX12_2 do
              SHX14_2 = SHX29_1
              if SHX13_2 == SHX14_2 then
                SHX7_2 = true
              elseif SHX7_2 then
                SHX29_1 = SHX13_2
                SHX8_2 = true
                break
              end
            end
            if not SHX8_2 then
              SHX9_2 = pairs
              SHX10_2 = SHX0_1
              SHX11_2 = "colourLookup"
              SHX10_2 = SHX10_2[SHX11_2]
              SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX9_2(SHX10_2)
              for SHX13_2 in SHX9_2, SHX10_2, SHX11_2, SHX12_2 do
                SHX29_1 = SHX13_2
                break
              end
            end
            SHX9_2 = SetResourceKvp
            SHX10_2 = "cmg_gang_colour"
            SHX11_2 = SHX29_1
            SHX9_2(SHX10_2, SHX11_2)
            SHX9_2 = TriggerServerEvent
            SHX10_2 = "a74c553948"
            SHX11_2 = SHX29_1
            SHX9_2(SHX10_2, SHX11_2)
          end
        end
    end
    else
      SHX1_2 = DrawAdvancedText
      SHX2_2 = 0.5
      SHX3_2 = 0.406
      SHX4_2 = 0.005
      SHX5_2 = 0.0028
      SHX6_2 = 0.4
      SHX7_2 = "Purchase Advanced License\n(\194\16350,000,000)"
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 255
      SHX12_2 = 6
      SHX13_2 = 0
      SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
      SHX1_2 = DrawAdvancedText
      SHX2_2 = 0.5
      SHX3_2 = 0.476
      SHX4_2 = 0.005
      SHX5_2 = 0.0028
      SHX6_2 = 0.4
      SHX7_2 = [[
NOTE:
This purchase is tied to the gang.
Any member will be able to use the features.]]
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 255
      SHX12_2 = 6
      SHX13_2 = 0
      SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
      SHX1_2 = CursorInArea
      SHX2_2 = 0.3187
      SHX3_2 = 0.4932
      SHX4_2 = 0.3712
      SHX5_2 = 0.5462
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
      if SHX1_2 then
        SHX1_2 = DrawRect
        SHX2_2 = 0.407
        SHX3_2 = 0.46
        SHX4_2 = 0.175
        SHX5_2 = 0.176
        SHX6_2 = SHX7_1
        SHX7_2 = SHX8_1
        SHX8_2 = SHX9_1
        SHX9_2 = 150
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
        SHX1_2 = IsControlJustPressed
        SHX2_2 = 1
        SHX3_2 = 329
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        if not SHX1_2 then
          SHX1_2 = IsDisabledControlJustPressed
          SHX2_2 = 1
          SHX3_2 = 329
          SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        end
        if SHX1_2 then
          SHX1_2 = PlaySound
          SHX2_2 = -1
          SHX3_2 = "SELECT"
          SHX4_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          SHX5_2 = false
          SHX6_2 = 0
          SHX7_2 = true
          SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          SHX1_2 = TriggerServerEvent
          SHX2_2 = "40cb8bd46d"
          SHX1_2(SHX2_2)
        end
      else
        SHX1_2 = DrawRect
        SHX2_2 = 0.407
        SHX3_2 = 0.46
        SHX4_2 = 0.175
        SHX5_2 = 0.176
        SHX6_2 = 0
        SHX7_2 = 0
        SHX8_2 = 0
        SHX9_2 = 150
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
      end
    end
  end
  SHX0_2 = SHX10_1
  if SHX0_2 then
    SHX0_2 = SHX1_1
    SHX1_2 = "rpturfs"
    if SHX0_2 == SHX1_2 then
      SHX0_2 = DrawRect
      SHX1_2 = 0.501
      SHX2_2 = 0.525
      SHX3_2 = 0.421
      SHX4_2 = 0.387
      SHX5_2 = 0
      SHX6_2 = 0
      SHX7_2 = 0
      SHX8_2 = 150
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX0_2 = DrawRect
      SHX1_2 = 0.501
      SHX2_2 = 0.308
      SHX3_2 = 0.421
      SHX4_2 = 0.047
      SHX5_2 = 18
      SHX6_2 = 82
      SHX7_2 = 228
      SHX8_2 = 248
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.591
      SHX2_2 = 0.312
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.48
      SHX6_2 = "CMG Gang - RP Turfs"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 7
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawRect
      SHX1_2 = 0.502
      SHX2_2 = 0.52
      SHX3_2 = 0.387
      SHX4_2 = 0.286
      SHX5_2 = 0
      SHX6_2 = 0
      SHX7_2 = 0
      SHX8_2 = 150
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.449
      SHX2_2 = 0.365
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Gang Name"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 4
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.657
      SHX2_2 = 0.365
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Our Relationship"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 4
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.757
      SHX2_2 = 0.365
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Their Relationship"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 4
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.775
      SHX2_2 = 0.693
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Back"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 4
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = CursorInArea
      SHX1_2 = 0.6583
      SHX2_2 = 0.7056
      SHX3_2 = 0.6712
      SHX4_2 = 0.7064
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
      if SHX0_2 then
        SHX0_2 = DrawRect
        SHX1_2 = 0.681
        SHX2_2 = 0.689
        SHX3_2 = 0.045
        SHX4_2 = 0.036
        SHX5_2 = SHX7_1
        SHX6_2 = SHX8_1
        SHX7_2 = SHX9_1
        SHX8_2 = 150
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
        SHX0_2 = IsControlJustPressed
        SHX1_2 = 1
        SHX2_2 = 329
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        if not SHX0_2 then
          SHX0_2 = IsDisabledControlJustPressed
          SHX1_2 = 1
          SHX2_2 = 329
          SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        end
        if SHX0_2 then
          SHX0_2 = PlaySound
          SHX1_2 = -1
          SHX2_2 = "SELECT"
          SHX3_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          SHX4_2 = false
          SHX5_2 = 0
          SHX6_2 = true
          SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
          SHX0_2 = "gang"
          SHX1_1 = SHX0_2
        end
      else
        SHX0_2 = DrawRect
        SHX1_2 = 0.681
        SHX2_2 = 0.689
        SHX3_2 = 0.045
        SHX4_2 = 0.036
        SHX5_2 = 0
        SHX6_2 = 0
        SHX7_2 = 0
        SHX8_2 = 150
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      end
      SHX0_2 = SHX10_1
      SHX1_2 = "id"
      SHX1_2 = SHX0_2[SHX1_2]
      SHX0_2 = SHX30_1
      SHX0_2 = SHX0_2[SHX1_2]
      SHX1_2 = 1
      SHX2_2 = pairs
      SHX3_2 = SHX30_1
      SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
      for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
        SHX8_2 = SHX10_1
        SHX9_2 = "id"
        SHX8_2 = SHX8_2[SHX9_2]
        if SHX6_2 ~= SHX8_2 then
          SHX8_2 = "relationships"
          SHX8_2 = SHX0_2[SHX8_2]
          SHX8_2 = SHX8_2[SHX6_2]
          if not SHX8_2 then
            SHX8_2 = "Neutral"
          end
          SHX9_2 = "relationships"
          SHX9_2 = SHX7_2[SHX9_2]
          SHX10_2 = SHX10_1
          SHX11_2 = "id"
          SHX10_2 = SHX10_2[SHX11_2]
          SHX9_2 = SHX9_2[SHX10_2]
          if not SHX9_2 then
            SHX9_2 = "Neutral"
          end
          SHX10_2 = DrawAdvancedText
          SHX11_2 = 0.449
          SHX12_2 = 0.0287 * SHX1_2
          SHX13_2 = 0.365
          SHX12_2 = SHX13_2 + SHX12_2
          SHX13_2 = 0.005
          SHX14_2 = 0.0028
          SHX15_2 = 0.4
          SHX16_2 = SHX7_2.name
          SHX17_2 = 255
          SHX18_2 = 255
          SHX19_2 = 255
          SHX20_2 = 255
          SHX21_2 = 6
          SHX22_2 = 0
          SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
          SHX10_2 = SHX40_1
          SHX11_2 = SHX8_2
          SHX10_2, SHX11_2, SHX12_2 = SHX10_2(SHX11_2)
          SHX13_2 = DrawAdvancedText
          SHX14_2 = 0.657
          SHX15_2 = 0.0287 * SHX1_2
          SHX16_2 = 0.365
          SHX15_2 = SHX16_2 + SHX15_2
          SHX16_2 = 0.005
          SHX17_2 = 0.0028
          SHX18_2 = 0.4
          SHX19_2 = SHX8_2
          SHX20_2 = SHX10_2
          SHX21_2 = SHX11_2
          SHX22_2 = SHX12_2
          SHX23_2 = 255
          SHX24_2 = 6
          SHX25_2 = 0
          SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
          SHX13_2 = SHX40_1
          SHX14_2 = SHX9_2
          SHX13_2, SHX14_2, SHX15_2 = SHX13_2(SHX14_2)
          SHX16_2 = DrawAdvancedText
          SHX17_2 = 0.757
          SHX18_2 = 0.0287 * SHX1_2
          SHX19_2 = 0.365
          SHX18_2 = SHX19_2 + SHX18_2
          SHX19_2 = 0.005
          SHX20_2 = 0.0028
          SHX21_2 = 0.4
          SHX22_2 = SHX9_2
          SHX23_2 = SHX13_2
          SHX24_2 = SHX14_2
          SHX25_2 = SHX15_2
          SHX26_2 = 255
          SHX27_2 = 6
          SHX28_2 = 0
          SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
          SHX16_2 = CursorInArea
          SHX17_2 = 0.3005
          SHX18_2 = 0.6955
          SHX19_2 = SHX1_2 - 1
          SHX19_2 = 0.0287 * SHX19_2
          SHX19_2 = 0.3731 + SHX19_2
          SHX20_2 = SHX1_2 - 1
          SHX20_2 = 0.0287 * SHX20_2
          SHX20_2 = 0.4018 + SHX20_2
          SHX16_2 = SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2)
          if SHX16_2 then
            SHX16_2 = DrawRect
            SHX17_2 = 0.502
            SHX18_2 = SHX1_2 - 1
            SHX18_2 = 0.0287 * SHX18_2
            SHX18_2 = 0.39 + SHX18_2
            SHX19_2 = 0.387
            SHX20_2 = 0.027
            SHX21_2 = SHX7_1
            SHX22_2 = SHX8_1
            SHX23_2 = SHX9_1
            SHX24_2 = 150
            SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
            SHX16_2 = IsControlJustPressed
            SHX17_2 = 1
            SHX18_2 = 329
            SHX16_2 = SHX16_2(SHX17_2, SHX18_2)
            if not SHX16_2 then
              SHX16_2 = IsDisabledControlJustPressed
              SHX17_2 = 1
              SHX18_2 = 329
              SHX16_2 = SHX16_2(SHX17_2, SHX18_2)
              if not SHX16_2 then
                goto SHX_LABEL_4649
              end
            end
            SHX16_2 = PlaySound
            SHX17_2 = -1
            SHX18_2 = "SELECT"
            SHX19_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            SHX20_2 = false
            SHX21_2 = 0
            SHX22_2 = true
            SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
            SHX16_2 = "Friendly"
            if SHX8_2 == SHX16_2 then
              SHX16_2 = TriggerServerEvent
              SHX17_2 = "bdbde03161"
              SHX18_2 = SHX6_2
              SHX19_2 = "Neutral"
              SHX16_2(SHX17_2, SHX18_2, SHX19_2)
            else
              SHX16_2 = "Neutral"
              if SHX8_2 == SHX16_2 then
                SHX16_2 = TriggerServerEvent
                SHX17_2 = "bdbde03161"
                SHX18_2 = SHX6_2
                SHX19_2 = "Enemy"
                SHX16_2(SHX17_2, SHX18_2, SHX19_2)
              else
                SHX16_2 = "Enemy"
                if SHX8_2 == SHX16_2 then
                  SHX16_2 = TriggerServerEvent
                  SHX17_2 = "bdbde03161"
                  SHX18_2 = SHX6_2
                  SHX19_2 = "Friendly"
                  SHX16_2(SHX17_2, SHX18_2, SHX19_2)
                end
              end
            end
          end
          -- [FIX IF ERROR] Move ::SHX_LABEL_4649:: outside nested blocks until all 'goto SHX_LABEL_4649' can see it
          ::SHX_LABEL_4649::
          SHX1_2 = SHX1_2 + 1
        end
      end
      SHX2_2 = "turfColour"
      SHX2_2 = SHX0_2[SHX2_2]
      if not SHX2_2 then
        SHX2_2 = "Red"
      end
      SHX3_2 = DrawAdvancedText
      SHX4_2 = 0.415
      SHX5_2 = 0.693
      SHX6_2 = 0.005
      SHX7_2 = 0.0028
      SHX8_2 = 0.4
      SHX9_2 = "Turf Colour:"
      SHX10_2 = 255
      SHX11_2 = 255
      SHX12_2 = 255
      SHX13_2 = 255
      SHX14_2 = 4
      SHX15_2 = 0
      SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
      SHX3_2 = 0
      SHX4_2 = 0
      SHX5_2 = 0
      if SHX2_2 then
        SHX6_2 = SHX0_1
        SHX7_2 = "colourLookup"
        SHX6_2 = SHX6_2[SHX7_2]
        SHX6_2 = SHX6_2[SHX2_2]
        if SHX6_2 then
          SHX6_2 = _ENV
          SHX7_2 = "GetHudColour"
          SHX6_2 = SHX6_2[SHX7_2]
          SHX7_2 = SHX0_1
          SHX8_2 = "colourLookup"
          SHX7_2 = SHX7_2[SHX8_2]
          SHX7_2 = SHX7_2[SHX2_2]
          SHX8_2 = "hud"
          SHX7_2 = SHX7_2[SHX8_2]
          SHX6_2, SHX7_2, SHX8_2 = SHX6_2(SHX7_2)
          SHX5_2 = SHX8_2
          SHX4_2 = SHX7_2
          SHX3_2 = SHX6_2
        end
      end
      SHX6_2 = DrawRect
      SHX7_2 = 0.367
      SHX8_2 = 0.689
      SHX9_2 = 0.045
      SHX10_2 = 0.03
      SHX11_2 = SHX3_2
      SHX12_2 = SHX4_2
      SHX13_2 = SHX5_2
      SHX14_2 = 255
      SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
      SHX6_2 = CursorInAreaRect
      SHX7_2 = 0.367
      SHX8_2 = 0.689
      SHX9_2 = 0.045
      SHX10_2 = 0.03
      SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
      if SHX6_2 then
        SHX6_2 = IsControlJustPressed
        SHX7_2 = 1
        SHX8_2 = 329
        SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
        if not SHX6_2 then
          SHX6_2 = IsDisabledControlJustPressed
          SHX7_2 = 1
          SHX8_2 = 329
          SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
          if not SHX6_2 then
            goto SHX_LABEL_4769
          end
        end
        SHX6_2 = PlaySound
        SHX7_2 = -1
        SHX8_2 = "SELECT"
        SHX9_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        SHX10_2 = false
        SHX11_2 = 0
        SHX12_2 = true
        SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
        SHX6_2 = false
        SHX7_2 = nil
        SHX8_2 = pairs
        SHX9_2 = SHX0_1
        SHX10_2 = "colourLookup"
        SHX9_2 = SHX9_2[SHX10_2]
        SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX8_2(SHX9_2)
        for SHX12_2 in SHX8_2, SHX9_2, SHX10_2, SHX11_2 do
          if SHX12_2 == SHX2_2 then
            SHX6_2 = true
          elseif SHX6_2 then
            SHX7_2 = SHX12_2
            break
          end
        end
        if not SHX7_2 then
          SHX8_2 = table
          SHX9_2 = "keyat"
          SHX8_2 = SHX8_2[SHX9_2]
          SHX9_2 = SHX0_1
          SHX10_2 = "colourLookup"
          SHX9_2 = SHX9_2[SHX10_2]
          SHX10_2 = 1
          SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
          SHX7_2 = SHX8_2
        end
        SHX8_2 = TriggerServerEvent
        SHX9_2 = "adb903a8eb"
        SHX10_2 = SHX7_2
        SHX8_2(SHX9_2, SHX10_2)
      end
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_4769:: outside nested blocks until all 'goto SHX_LABEL_4769' can see it
  ::SHX_LABEL_4769::
  SHX0_2 = SHX1_1
  SHX1_2 = "turfs"
  if SHX0_2 == SHX1_2 then
    SHX0_2 = DrawRect
    SHX1_2 = 0.501
    SHX2_2 = 0.555
    SHX3_2 = 0.481
    SHX4_2 = 0.547
    SHX5_2 = 0
    SHX6_2 = 0
    SHX7_2 = 0
    SHX8_2 = 150
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX0_2 = DrawRect
    SHX1_2 = 0.501
    SHX2_2 = 0.3
    SHX3_2 = 0.481
    SHX4_2 = 0.047
    SHX5_2 = 18
    SHX6_2 = 82
    SHX7_2 = 228
    SHX8_2 = 248
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX0_2 = DrawAdvancedText
    SHX1_2 = 0.591
    SHX2_2 = 0.303
    SHX3_2 = 0.005
    SHX4_2 = 0.0028
    SHX5_2 = 0.48
    SHX6_2 = "CMG gang - Turfs"
    SHX7_2 = 255
    SHX8_2 = 255
    SHX9_2 = 255
    SHX10_2 = 255
    SHX11_2 = 7
    SHX12_2 = 0
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX0_2 = DrawAdvancedText
    SHX1_2 = 0.5
    SHX2_2 = 0.345
    SHX3_2 = 0.005
    SHX4_2 = 0.0028
    SHX5_2 = 0.325
    SHX6_2 = "Turf profits updated every 15 minutes"
    SHX7_2 = 255
    SHX8_2 = 255
    SHX9_2 = 255
    SHX10_2 = 255
    SHX11_2 = 0
    SHX12_2 = 1
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX0_2 = CMG
    SHX1_2 = "getTurfOwnerAndProfit"
    SHX0_2 = SHX0_2[SHX1_2]
    SHX1_2 = "weed"
    SHX0_2, SHX1_2 = SHX0_2(SHX1_2)
    SHX2_2 = DrawAdvancedText
    SHX3_2 = 0.369
    SHX4_2 = 0.38
    SHX5_2 = 0.005
    SHX6_2 = 0.0028
    SHX7_2 = 0.4
    SHX8_2 = "Weed Turf - (Owned by "
    SHX9_2 = SHX0_2
    SHX10_2 = ") Commission - "
    SHX11_2 = _ENV
    SHX12_2 = "globalWeedCommissionPercent"
    SHX11_2 = SHX11_2[SHX12_2]
    SHX12_2 = "% Profit - \194\163"
    SHX13_2 = getMoneyStringFormatted
    SHX14_2 = SHX1_2
    SHX13_2 = SHX13_2(SHX14_2)
    SHX8_2 = SHX8_2 .. SHX9_2 .. SHX10_2 .. SHX11_2 .. SHX12_2 .. SHX13_2
    SHX9_2 = 255
    SHX10_2 = 255
    SHX11_2 = 255
    SHX12_2 = 255
    SHX13_2 = 0
    SHX14_2 = 1
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX2_2 = CMG
    SHX3_2 = "getTurfOwnerAndProfit"
    SHX2_2 = SHX2_2[SHX3_2]
    SHX3_2 = "cocaine"
    SHX2_2, SHX3_2 = SHX2_2(SHX3_2)
    SHX4_2 = DrawAdvancedText
    SHX5_2 = 0.369
    SHX6_2 = 0.44
    SHX7_2 = 0.005
    SHX8_2 = 0.0028
    SHX9_2 = 0.4
    SHX10_2 = "Cocaine Turf - (Owned by "
    SHX11_2 = SHX2_2
    SHX12_2 = ") Commission - "
    SHX13_2 = _ENV
    SHX14_2 = "globalCocaineCommissionPercent"
    SHX13_2 = SHX13_2[SHX14_2]
    SHX14_2 = "% Profit - \194\163"
    SHX15_2 = getMoneyStringFormatted
    SHX16_2 = SHX3_2
    SHX15_2 = SHX15_2(SHX16_2)
    SHX10_2 = SHX10_2 .. SHX11_2 .. SHX12_2 .. SHX13_2 .. SHX14_2 .. SHX15_2
    SHX11_2 = 255
    SHX12_2 = 255
    SHX13_2 = 255
    SHX14_2 = 255
    SHX15_2 = 0
    SHX16_2 = 1
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
    SHX4_2 = CMG
    SHX5_2 = "getTurfOwnerAndProfit"
    SHX4_2 = SHX4_2[SHX5_2]
    SHX5_2 = "meth"
    SHX4_2, SHX5_2 = SHX4_2(SHX5_2)
    SHX6_2 = DrawAdvancedText
    SHX7_2 = 0.369
    SHX8_2 = 0.5
    SHX9_2 = 0.005
    SHX10_2 = 0.0028
    SHX11_2 = 0.4
    SHX12_2 = "Meth Turf - (Owned by "
    SHX13_2 = SHX4_2
    SHX14_2 = ") Commission - "
    SHX15_2 = _ENV
    SHX16_2 = "globalMethCommissionPercent"
    SHX15_2 = SHX15_2[SHX16_2]
    SHX16_2 = "% Profit - \194\163"
    SHX17_2 = getMoneyStringFormatted
    SHX18_2 = SHX5_2
    SHX17_2 = SHX17_2(SHX18_2)
    SHX12_2 = SHX12_2 .. SHX13_2 .. SHX14_2 .. SHX15_2 .. SHX16_2 .. SHX17_2
    SHX13_2 = 255
    SHX14_2 = 255
    SHX15_2 = 255
    SHX16_2 = 255
    SHX17_2 = 0
    SHX18_2 = 1
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
    SHX6_2 = CMG
    SHX7_2 = "getTurfOwnerAndProfit"
    SHX6_2 = SHX6_2[SHX7_2]
    SHX7_2 = "heroin"
    SHX6_2, SHX7_2 = SHX6_2(SHX7_2)
    SHX8_2 = DrawAdvancedText
    SHX9_2 = 0.369
    SHX10_2 = 0.56
    SHX11_2 = 0.005
    SHX12_2 = 0.0028
    SHX13_2 = 0.4
    SHX14_2 = "Heroin Turf - (Owned by "
    SHX15_2 = SHX6_2
    SHX16_2 = ") Commission - "
    SHX17_2 = _ENV
    SHX18_2 = "globalHeroinCommissionPercent"
    SHX17_2 = SHX17_2[SHX18_2]
    SHX18_2 = "% Profit - \194\163"
    SHX19_2 = getMoneyStringFormatted
    SHX20_2 = SHX7_2
    SHX19_2 = SHX19_2(SHX20_2)
    SHX14_2 = SHX14_2 .. SHX15_2 .. SHX16_2 .. SHX17_2 .. SHX18_2 .. SHX19_2
    SHX15_2 = 255
    SHX16_2 = 255
    SHX17_2 = 255
    SHX18_2 = 255
    SHX19_2 = 0
    SHX20_2 = 1
    SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
    SHX8_2 = CMG
    SHX9_2 = "getTurfOwnerAndProfit"
    SHX8_2 = SHX8_2[SHX9_2]
    SHX9_2 = "large_arms"
    SHX8_2, SHX9_2 = SHX8_2(SHX9_2)
    SHX10_2 = DrawAdvancedText
    SHX11_2 = 0.369
    SHX12_2 = 0.62
    SHX13_2 = 0.005
    SHX14_2 = 0.0028
    SHX15_2 = 0.4
    SHX16_2 = "Large Arms - (Owned by "
    SHX17_2 = SHX8_2
    SHX18_2 = ") Commission - "
    SHX19_2 = _ENV
    SHX20_2 = "globalLargeArmsCommission"
    SHX19_2 = SHX19_2[SHX20_2]
    SHX20_2 = "% Profit - \194\163"
    SHX21_2 = getMoneyStringFormatted
    SHX22_2 = SHX9_2
    SHX21_2 = SHX21_2(SHX22_2)
    SHX16_2 = SHX16_2 .. SHX17_2 .. SHX18_2 .. SHX19_2 .. SHX20_2 .. SHX21_2
    SHX17_2 = 255
    SHX18_2 = 255
    SHX19_2 = 255
    SHX20_2 = 255
    SHX21_2 = 0
    SHX22_2 = 1
    SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
    SHX10_2 = CMG
    SHX11_2 = "getTurfOwnerAndProfit"
    SHX10_2 = SHX10_2[SHX11_2]
    SHX11_2 = "lsd_north"
    SHX10_2, SHX11_2 = SHX10_2(SHX11_2)
    SHX12_2 = DrawAdvancedText
    SHX13_2 = 0.369
    SHX14_2 = 0.68
    SHX15_2 = 0.005
    SHX16_2 = 0.0028
    SHX17_2 = 0.4
    SHX18_2 = "LSD North Turf - (Owned by "
    SHX19_2 = SHX10_2
    SHX20_2 = ") Commission - "
    SHX21_2 = _ENV
    SHX22_2 = "globalLSDNorthCommissionPercent"
    SHX21_2 = SHX21_2[SHX22_2]
    SHX22_2 = "% Profit - \194\163"
    SHX23_2 = getMoneyStringFormatted
    SHX24_2 = SHX11_2
    SHX23_2 = SHX23_2(SHX24_2)
    SHX18_2 = SHX18_2 .. SHX19_2 .. SHX20_2 .. SHX21_2 .. SHX22_2 .. SHX23_2
    SHX19_2 = 255
    SHX20_2 = 255
    SHX21_2 = 255
    SHX22_2 = 255
    SHX23_2 = 0
    SHX24_2 = 1
    SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
    SHX12_2 = CMG
    SHX13_2 = "getTurfOwnerAndProfit"
    SHX12_2 = SHX12_2[SHX13_2]
    SHX13_2 = "lsd_south"
    SHX12_2, SHX13_2 = SHX12_2(SHX13_2)
    SHX14_2 = DrawAdvancedText
    SHX15_2 = 0.369
    SHX16_2 = 0.74
    SHX17_2 = 0.005
    SHX18_2 = 0.0028
    SHX19_2 = 0.4
    SHX20_2 = "LSD South Turf - (Owned by "
    SHX21_2 = SHX12_2
    SHX22_2 = ") Commission - "
    SHX23_2 = _ENV
    SHX24_2 = "globalLSDSouthCommissionPercent"
    SHX23_2 = SHX23_2[SHX24_2]
    SHX24_2 = "% Profit - \194\163"
    SHX25_2 = getMoneyStringFormatted
    SHX26_2 = SHX13_2
    SHX25_2 = SHX25_2(SHX26_2)
    SHX20_2 = SHX20_2 .. SHX21_2 .. SHX22_2 .. SHX23_2 .. SHX24_2 .. SHX25_2
    SHX21_2 = 255
    SHX22_2 = 255
    SHX23_2 = 255
    SHX24_2 = 255
    SHX25_2 = 0
    SHX26_2 = 1
    SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
    SHX14_2 = CMG
    SHX15_2 = "getTurfOwnerAndProfit"
    SHX14_2 = SHX14_2[SHX15_2]
    SHX15_2 = "black_market"
    SHX14_2, SHX15_2 = SHX14_2(SHX15_2)
    SHX16_2 = DrawAdvancedText
    SHX17_2 = 0.369
    SHX18_2 = 0.8
    SHX19_2 = 0.005
    SHX20_2 = 0.0028
    SHX21_2 = 0.4
    SHX22_2 = "Black Market - (Owned by "
    SHX23_2 = SHX14_2
    SHX24_2 = ") Commission - "
    SHX25_2 = _ENV
    SHX26_2 = "globalBlackMarketCommision"
    SHX25_2 = SHX25_2[SHX26_2]
    SHX26_2 = "% Profit - \194\163"
    SHX27_2 = getMoneyStringFormatted
    SHX28_2 = SHX15_2
    SHX27_2 = SHX27_2(SHX28_2)
    SHX22_2 = SHX22_2 .. SHX23_2 .. SHX24_2 .. SHX25_2 .. SHX26_2 .. SHX27_2
    SHX23_2 = 255
    SHX24_2 = 255
    SHX25_2 = 255
    SHX26_2 = 255
    SHX27_2 = 0
    SHX28_2 = 1
    SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
    SHX16_2 = DrawAdvancedText
    SHX17_2 = 0.804
    SHX18_2 = 0.744
    SHX19_2 = 0.005
    SHX20_2 = 0.0028
    SHX21_2 = 0.4
    SHX22_2 = "Back"
    SHX23_2 = 255
    SHX24_2 = 255
    SHX25_2 = 255
    SHX26_2 = 255
    SHX27_2 = 4
    SHX28_2 = 0
    SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
    SHX16_2 = CursorInArea
    SHX17_2 = 0.6873
    SHX18_2 = 0.7346
    SHX19_2 = 0.7222
    SHX20_2 = 0.7574
    SHX16_2 = SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2)
    if SHX16_2 then
      SHX16_2 = DrawRect
      SHX17_2 = 0.71
      SHX18_2 = 0.74
      SHX19_2 = 0.045
      SHX20_2 = 0.036
      SHX21_2 = SHX7_1
      SHX22_2 = SHX8_1
      SHX23_2 = SHX9_1
      SHX24_2 = 150
      SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
      SHX16_2 = IsControlJustPressed
      SHX17_2 = 1
      SHX18_2 = 329
      SHX16_2 = SHX16_2(SHX17_2, SHX18_2)
      if not SHX16_2 then
        SHX16_2 = IsDisabledControlJustPressed
        SHX17_2 = 1
        SHX18_2 = 329
        SHX16_2 = SHX16_2(SHX17_2, SHX18_2)
      end
      if SHX16_2 then
        SHX16_2 = PlaySound
        SHX17_2 = -1
        SHX18_2 = "SELECT"
        SHX19_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        SHX20_2 = false
        SHX21_2 = 0
        SHX22_2 = true
        SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
        SHX16_2 = "gang"
        SHX1_1 = SHX16_2
      end
    else
      SHX16_2 = DrawRect
      SHX17_2 = 0.71
      SHX18_2 = 0.74
      SHX19_2 = 0.045
      SHX20_2 = 0.036
      SHX21_2 = 0
      SHX22_2 = 0
      SHX23_2 = 0
      SHX24_2 = 150
      SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
    end
  end
  SHX0_2 = SHX10_1
  if SHX0_2 then
    SHX0_2 = SHX1_1
    SHX1_2 = "security"
    if SHX0_2 == SHX1_2 then
      SHX0_2 = DrawRect
      SHX1_2 = 0.501
      SHX2_2 = 0.525
      SHX3_2 = 0.421
      SHX4_2 = 0.387
      SHX5_2 = 0
      SHX6_2 = 0
      SHX7_2 = 0
      SHX8_2 = 150
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX0_2 = DrawRect
      SHX1_2 = 0.501
      SHX2_2 = 0.308
      SHX3_2 = 0.421
      SHX4_2 = 0.047
      SHX5_2 = 18
      SHX6_2 = 82
      SHX7_2 = 228
      SHX8_2 = 248
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.591
      SHX2_2 = 0.312
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.48
      SHX6_2 = "CMG gang - security"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 7
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.4
      SHX2_2 = 0.375
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.46
      SHX6_2 = "Maximum withdraw amount per member:"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 6
      SHX12_2 = 1
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.4
      SHX2_2 = 0.405
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Sets the maximum amount of money a member can withdraw within a 24 hour time period."
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 6
      SHX12_2 = 1
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawRect
      SHX1_2 = 0.525
      SHX2_2 = 0.377
      SHX3_2 = 0.1
      SHX4_2 = 0.03
      SHX5_2 = 0
      SHX6_2 = 0
      SHX7_2 = 0
      SHX8_2 = 175
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.575
      SHX2_2 = 0.377
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.44
      SHX6_2 = "\194\163"
      SHX7_2 = getMoneyStringFormatted
      SHX8_2 = SHX10_1
      SHX9_2 = "maxWithdraw"
      SHX8_2 = SHX8_2[SHX9_2]
      SHX7_2 = SHX7_2(SHX8_2)
      SHX6_2 = SHX6_2 .. SHX7_2
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 6
      SHX12_2 = 1
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = CursorInArea
      SHX1_2 = 0.31
      SHX2_2 = 0.65
      SHX3_2 = 0.36
      SHX4_2 = 0.41
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
      if SHX0_2 then
        SHX0_2 = IsControlJustPressed
        SHX1_2 = 1
        SHX2_2 = 329
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        if not SHX0_2 then
          SHX0_2 = IsDisabledControlJustPressed
          SHX1_2 = 1
          SHX2_2 = 329
          SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
          if not SHX0_2 then
            goto SHX_LABEL_5281
          end
        end
        SHX0_2 = PlaySound
        SHX1_2 = -1
        SHX2_2 = "SELECT"
        SHX3_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        SHX4_2 = false
        SHX5_2 = 0
        SHX6_2 = true
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
        SHX0_2 = CMG
        SHX0_2 = SHX0_2.hasGangPermission
        SHX1_2 = "security"
        SHX0_2 = SHX0_2(SHX1_2)
        if SHX0_2 then
          SHX0_2 = CMG
          SHX0_2 = SHX0_2.GetRageInputText
          SHX1_2 = "Enter amount:"
          SHX0_2 = SHX0_2(SHX1_2)
          if SHX0_2 then
            SHX1_2 = tonumber
            SHX2_2 = SHX0_2
            SHX1_2 = SHX1_2(SHX2_2)
            if SHX1_2 then
              SHX1_2 = tonumber
              SHX2_2 = SHX0_2
              SHX1_2 = SHX1_2(SHX2_2)
              if SHX1_2 >= 0 then
                SHX1_2 = TriggerServerEvent
                SHX2_2 = "b674c758b8"
                SHX3_2 = tonumber
                SHX4_2 = SHX0_2
                SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2 = SHX3_2(SHX4_2)
                SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
            end
          end
          else
            SHX1_2 = notify
            SHX2_2 = "~r~Invalid amount entered."
            SHX1_2(SHX2_2)
          end
        else
          SHX0_2 = notify
          SHX1_2 = "~r~You do not have permission to edit security.."
          SHX0_2(SHX1_2)
        end
      end
      -- [FIX IF ERROR] Move ::SHX_LABEL_5281:: outside nested blocks until all 'goto SHX_LABEL_5281' can see it
      ::SHX_LABEL_5281::
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.4
      SHX2_2 = 0.475
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.46
      SHX6_2 = "Limit withdraw amount to deposit amount:"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 6
      SHX12_2 = 1
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.4
      SHX2_2 = 0.505
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Prevents a member withdrawing more money then they have deposited into the funds."
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 6
      SHX12_2 = 1
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawRect
      SHX1_2 = 0.525
      SHX2_2 = 0.475
      SHX3_2 = 0.1
      SHX4_2 = 0.03
      SHX5_2 = 0
      SHX6_2 = 0
      SHX7_2 = 0
      SHX8_2 = 175
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.575
      SHX2_2 = 0.475
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.46
      SHX6_2 = SHX10_1
      SHX7_2 = "limitWithdrawDeposit"
      SHX6_2 = SHX6_2[SHX7_2]
      if SHX6_2 then
        SHX6_2 = "Yes"
        if SHX6_2 then
          goto SHX_LABEL_5334
        end
      end
      SHX6_2 = "No"
      -- [FIX IF ERROR] Move ::SHX_LABEL_5334:: outside nested blocks until all 'goto SHX_LABEL_5334' can see it
      ::SHX_LABEL_5334::
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 6
      SHX12_2 = 1
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = CursorInArea
      SHX1_2 = 0.31
      SHX2_2 = 0.65
      SHX3_2 = 0.46
      SHX4_2 = 0.51
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
      if SHX0_2 then
        SHX0_2 = IsControlJustPressed
        SHX1_2 = 1
        SHX2_2 = 329
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        if not SHX0_2 then
          SHX0_2 = IsDisabledControlJustPressed
          SHX1_2 = 1
          SHX2_2 = 329
          SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
          if not SHX0_2 then
            goto SHX_LABEL_5386
          end
        end
        SHX0_2 = PlaySound
        SHX1_2 = -1
        SHX2_2 = "SELECT"
        SHX3_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        SHX4_2 = false
        SHX5_2 = 0
        SHX6_2 = true
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
        SHX0_2 = CMG
        SHX0_2 = SHX0_2.hasGangPermission
        SHX1_2 = "security"
        SHX0_2 = SHX0_2(SHX1_2)
        if SHX0_2 then
          SHX0_2 = SHX36_1
          SHX1_2 = "Enable?"
          SHX0_2 = SHX0_2(SHX1_2)
          SHX1_2 = TriggerServerEvent
          SHX2_2 = "58d834d15a"
          SHX3_2 = SHX0_2
          SHX1_2(SHX2_2, SHX3_2)
        else
          SHX0_2 = notify
          SHX1_2 = "~r~You do not have permission to edit security."
          SHX0_2(SHX1_2)
        end
      end
      -- [FIX IF ERROR] Move ::SHX_LABEL_5386:: outside nested blocks until all 'goto SHX_LABEL_5386' can see it
      ::SHX_LABEL_5386::
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.4
      SHX2_2 = 0.575
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.46
      SHX6_2 = "Require reason for deposit/withdraw:"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 6
      SHX12_2 = 1
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.4
      SHX2_2 = 0.605
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Requires a member to provide a reason for depositing or withdrawing from funds."
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 6
      SHX12_2 = 1
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawRect
      SHX1_2 = 0.525
      SHX2_2 = 0.575
      SHX3_2 = 0.1
      SHX4_2 = 0.03
      SHX5_2 = 0
      SHX6_2 = 0
      SHX7_2 = 0
      SHX8_2 = 175
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.575
      SHX2_2 = 0.575
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.46
      SHX6_2 = SHX10_1
      SHX7_2 = "requireWithdrawReason"
      SHX6_2 = SHX6_2[SHX7_2]
      if SHX6_2 then
        SHX6_2 = "Yes"
        if SHX6_2 then
          goto SHX_LABEL_5439
        end
      end
      SHX6_2 = "No"
      -- [FIX IF ERROR] Move ::SHX_LABEL_5439:: outside nested blocks until all 'goto SHX_LABEL_5439' can see it
      ::SHX_LABEL_5439::
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 6
      SHX12_2 = 1
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = CursorInArea
      SHX1_2 = 0.31
      SHX2_2 = 0.65
      SHX3_2 = 0.56
      SHX4_2 = 0.61
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
      if SHX0_2 then
        SHX0_2 = IsControlJustPressed
        SHX1_2 = 1
        SHX2_2 = 329
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        if not SHX0_2 then
          SHX0_2 = IsDisabledControlJustPressed
          SHX1_2 = 1
          SHX2_2 = 329
          SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
          if not SHX0_2 then
            goto SHX_LABEL_5491
          end
        end
        SHX0_2 = PlaySound
        SHX1_2 = -1
        SHX2_2 = "SELECT"
        SHX3_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        SHX4_2 = false
        SHX5_2 = 0
        SHX6_2 = true
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
        SHX0_2 = CMG
        SHX0_2 = SHX0_2.hasGangPermission
        SHX1_2 = "security"
        SHX0_2 = SHX0_2(SHX1_2)
        if SHX0_2 then
          SHX0_2 = SHX36_1
          SHX1_2 = "Enable?"
          SHX0_2 = SHX0_2(SHX1_2)
          SHX1_2 = TriggerServerEvent
          SHX2_2 = "5d7f40bb9d"
          SHX3_2 = SHX0_2
          SHX1_2(SHX2_2, SHX3_2)
        else
          SHX0_2 = notify
          SHX1_2 = "~r~You do not have permission to edit security."
          SHX0_2(SHX1_2)
        end
      end
      -- [FIX IF ERROR] Move ::SHX_LABEL_5491:: outside nested blocks until all 'goto SHX_LABEL_5491' can see it
      ::SHX_LABEL_5491::
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.775
      SHX2_2 = 0.693
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Back"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 4
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = CursorInArea
      SHX1_2 = 0.6583
      SHX2_2 = 0.7056
      SHX3_2 = 0.6712
      SHX4_2 = 0.7064
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
      if SHX0_2 then
        SHX0_2 = DrawRect
        SHX1_2 = 0.681
        SHX2_2 = 0.689
        SHX3_2 = 0.045
        SHX4_2 = 0.036
        SHX5_2 = SHX7_1
        SHX6_2 = SHX8_1
        SHX7_2 = SHX9_1
        SHX8_2 = 150
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
        SHX0_2 = IsControlJustPressed
        SHX1_2 = 1
        SHX2_2 = 329
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        if not SHX0_2 then
          SHX0_2 = IsDisabledControlJustPressed
          SHX1_2 = 1
          SHX2_2 = 329
          SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        end
        if SHX0_2 then
          SHX0_2 = PlaySound
          SHX1_2 = -1
          SHX2_2 = "SELECT"
          SHX3_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          SHX4_2 = false
          SHX5_2 = 0
          SHX6_2 = true
          SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
          SHX0_2 = "gang"
          SHX1_1 = SHX0_2
        end
      else
        SHX0_2 = DrawRect
        SHX1_2 = 0.681
        SHX2_2 = 0.689
        SHX3_2 = 0.045
        SHX4_2 = 0.036
        SHX5_2 = 0
        SHX6_2 = 0
        SHX7_2 = 0
        SHX8_2 = 150
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      end
    end
  end
  SHX0_2 = SHX10_1
  if SHX0_2 then
    SHX0_2 = SHX1_1
    if "permissions" == SHX0_2 then
      SHX0_2 = SHX10_1.members
      SHX1_2 = SHX4_1
      SHX0_2 = SHX0_2[SHX1_2]
      if SHX0_2 then
        SHX1_2 = SHX0_2.permissions
        if SHX1_2 then
          goto SHX_LABEL_5573
        end
      end
      SHX1_2 = "members"
      SHX1_1 = SHX1_2
      return
      -- [FIX IF ERROR] Move ::SHX_LABEL_5573:: outside nested blocks until all 'goto SHX_LABEL_5573' can see it
      ::SHX_LABEL_5573::
      SHX1_2 = DrawRect
      SHX2_2 = 0.501
      SHX3_2 = 0.525
      SHX4_2 = 0.421
      SHX5_2 = 0.387
      SHX6_2 = 0
      SHX7_2 = 0
      SHX8_2 = 0
      SHX9_2 = 150
      SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
      SHX1_2 = DrawRect
      SHX2_2 = 0.501
      SHX3_2 = 0.308
      SHX4_2 = 0.421
      SHX5_2 = 0.047
      SHX6_2 = 18
      SHX7_2 = 82
      SHX8_2 = 228
      SHX9_2 = 248
      SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
      SHX1_2 = DrawAdvancedText
      SHX2_2 = 0.591
      SHX3_2 = 0.312
      SHX4_2 = 0.005
      SHX5_2 = 0.0028
      SHX6_2 = 0.48
      SHX7_2 = "CMG gang - permissions"
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 255
      SHX12_2 = 7
      SHX13_2 = 0
      SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
      SHX1_2 = DrawRect
      SHX2_2 = 0.501
      SHX3_2 = 0.52
      SHX4_2 = 0.395
      SHX5_2 = 0.291
      SHX6_2 = 0
      SHX7_2 = 0
      SHX8_2 = 0
      SHX9_2 = 150
      SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
      SHX1_2 = DrawAdvancedText
      SHX2_2 = 0.449
      SHX3_2 = 0.359
      SHX4_2 = 0.005
      SHX5_2 = 0.0028
      SHX6_2 = 0.4
      SHX7_2 = "Permission"
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 255
      SHX12_2 = 6
      SHX13_2 = 0
      SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
      SHX1_2 = DrawAdvancedText
      SHX2_2 = 0.536
      SHX3_2 = 0.359
      SHX4_2 = 0.005
      SHX5_2 = 0.0028
      SHX6_2 = 0.4
      SHX7_2 = "Has Access"
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 255
      SHX12_2 = 6
      SHX13_2 = 0
      SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
      SHX1_2 = DrawAdvancedText
      SHX2_2 = 0.675
      SHX3_2 = 0.359
      SHX4_2 = 0.005
      SHX5_2 = 0.0028
      SHX6_2 = 0.4
      SHX7_2 = "Description"
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 255
      SHX12_2 = 6
      SHX13_2 = 0
      SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
      SHX1_2 = pairs
      SHX2_2 = SHX0_1.permissions
      SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
      for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
        SHX7_2 = SHX0_2.permissions
        SHX8_2 = "id"
        SHX8_2 = SHX6_2[SHX8_2]
        SHX7_2 = SHX7_2[SHX8_2]
        if SHX7_2 then
          SHX7_2 = true
          if SHX7_2 then
            goto SHX_LABEL_5673
          end
        end
        SHX7_2 = false
        -- [FIX IF ERROR] Move ::SHX_LABEL_5673:: outside nested blocks until all 'goto SHX_LABEL_5673' can see it
        ::SHX_LABEL_5673::
        if SHX7_2 then
          SHX8_2 = 50
          if SHX8_2 then
            goto SHX_LABEL_5679
          end
        end
        SHX8_2 = 255
        -- [FIX IF ERROR] Move ::SHX_LABEL_5679:: outside nested blocks until all 'goto SHX_LABEL_5679' can see it
        ::SHX_LABEL_5679::
        if SHX7_2 then
          SHX9_2 = 255
          if SHX9_2 then
            goto SHX_LABEL_5685
          end
        end
        SHX9_2 = 50
        -- [FIX IF ERROR] Move ::SHX_LABEL_5685:: outside nested blocks until all 'goto SHX_LABEL_5685' can see it
        ::SHX_LABEL_5685::
        SHX10_2 = 50
        SHX11_2 = DrawAdvancedText
        SHX12_2 = 0.449
        SHX13_2 = 0.0287 * SHX5_2
        SHX13_2 = 0.361 + SHX13_2
        SHX14_2 = 0.005
        SHX15_2 = 0.0028
        SHX16_2 = 0.4
        SHX17_2 = SHX6_2.name
        SHX18_2 = SHX8_2
        SHX19_2 = SHX9_2
        SHX20_2 = SHX10_2
        SHX21_2 = 255
        SHX22_2 = 6
        SHX23_2 = 0
        SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
        SHX11_2 = DrawAdvancedText
        SHX12_2 = 0.536
        SHX13_2 = 0.0287 * SHX5_2
        SHX13_2 = 0.361 + SHX13_2
        SHX14_2 = 0.005
        SHX15_2 = 0.0028
        SHX16_2 = 0.4
        if SHX7_2 then
          SHX17_2 = "Yes"
          if SHX17_2 then
            goto SHX_LABEL_5718
          end
        end
        SHX17_2 = "No"
        -- [FIX IF ERROR] Move ::SHX_LABEL_5718:: outside nested blocks until all 'goto SHX_LABEL_5718' can see it
        ::SHX_LABEL_5718::
        SHX18_2 = SHX8_2
        SHX19_2 = SHX9_2
        SHX20_2 = SHX10_2
        SHX21_2 = 255
        SHX22_2 = 6
        SHX23_2 = 0
        SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
        SHX11_2 = DrawAdvancedText
        SHX12_2 = 0.675
        SHX13_2 = 0.0287 * SHX5_2
        SHX13_2 = 0.361 + SHX13_2
        SHX14_2 = 0.005
        SHX15_2 = 0.0028
        SHX16_2 = 0.4
        SHX17_2 = "description"
        SHX17_2 = SHX6_2[SHX17_2]
        SHX18_2 = SHX8_2
        SHX19_2 = SHX9_2
        SHX20_2 = SHX10_2
        SHX21_2 = 255
        SHX22_2 = 6
        SHX23_2 = 0
        SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
        SHX11_2 = CursorInArea
        SHX12_2 = 0.3005
        SHX13_2 = 0.5955
        SHX14_2 = SHX5_2 - 1
        SHX14_2 = 0.0287 * SHX14_2
        SHX14_2 = 0.3731 + SHX14_2
        SHX15_2 = SHX5_2 - 1
        SHX15_2 = 0.0287 * SHX15_2
        SHX15_2 = 0.4018 + SHX15_2
        SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2)
        if SHX11_2 then
          SHX11_2 = IsControlJustPressed
          SHX12_2 = 1
          SHX13_2 = 329
          SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
          if not SHX11_2 then
            SHX11_2 = IsDisabledControlJustPressed
            SHX12_2 = 1
            SHX13_2 = 329
            SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
            if not SHX11_2 then
              goto SHX_LABEL_5780
            end
          end
          SHX11_2 = TriggerServerEvent
          SHX12_2 = "a6cd82c68e"
          SHX13_2 = SHX4_1
          SHX14_2 = "id"
          SHX14_2 = SHX6_2[SHX14_2]
          SHX15_2 = not SHX7_2
          SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2)
        end
        -- [FIX IF ERROR] Move ::SHX_LABEL_5780:: outside nested blocks until all 'goto SHX_LABEL_5780' can see it
        ::SHX_LABEL_5780::
      end
      SHX1_2 = DrawAdvancedText
      SHX2_2 = 0.4
      SHX3_2 = 0.693
      SHX4_2 = 0.005
      SHX5_2 = 0.0028
      SHX6_2 = 0.4
      SHX7_2 = "Editing permissions for "
      SHX8_2 = SHX0_2.name
      SHX9_2 = " (User ID: "
      SHX10_2 = tostring
      SHX11_2 = SHX4_1
      SHX10_2 = SHX10_2(SHX11_2)
      SHX11_2 = ")"
      SHX7_2 = SHX7_2 .. SHX8_2 .. SHX9_2 .. SHX10_2 .. SHX11_2
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 255
      SHX12_2 = 4
      SHX13_2 = 1
      SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
      SHX1_2 = DrawAdvancedText
      SHX2_2 = 0.775
      SHX3_2 = 0.693
      SHX4_2 = 0.005
      SHX5_2 = 0.0028
      SHX6_2 = 0.4
      SHX7_2 = "Back"
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 255
      SHX12_2 = 4
      SHX13_2 = 0
      SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
      SHX1_2 = CursorInArea
      SHX2_2 = 0.6583
      SHX3_2 = 0.7056
      SHX4_2 = 0.6712
      SHX5_2 = 0.7064
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
      if SHX1_2 then
        SHX1_2 = DrawRect
        SHX2_2 = 0.681
        SHX3_2 = 0.689
        SHX4_2 = 0.045
        SHX5_2 = 0.036
        SHX6_2 = SHX7_1
        SHX7_2 = SHX8_1
        SHX8_2 = SHX9_1
        SHX9_2 = 150
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
        SHX1_2 = IsControlJustPressed
        SHX2_2 = 1
        SHX3_2 = 329
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        if not SHX1_2 then
          SHX1_2 = IsDisabledControlJustPressed
          SHX2_2 = 1
          SHX3_2 = 329
          SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        end
        if SHX1_2 then
          SHX1_2 = PlaySound
          SHX2_2 = -1
          SHX3_2 = "SELECT"
          SHX4_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          SHX5_2 = false
          SHX6_2 = 0
          SHX7_2 = true
          SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          SHX1_2 = "members"
          SHX1_1 = SHX1_2
        end
      else
        SHX1_2 = DrawRect
        SHX2_2 = 0.681
        SHX3_2 = 0.689
        SHX4_2 = 0.045
        SHX5_2 = 0.036
        SHX6_2 = 0
        SHX7_2 = 0
        SHX8_2 = 0
        SHX9_2 = 150
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
      end
    end
  end
  SHX0_2 = SHX1_1
  if "guest" == SHX0_2 then
    SHX0_2 = DrawRect
    SHX1_2 = 0.501
    SHX2_2 = 0.525
    SHX3_2 = 0.421
    SHX4_2 = 0.387
    SHX5_2 = 0
    SHX6_2 = 0
    SHX7_2 = 0
    SHX8_2 = 150
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX0_2 = DrawRect
    SHX1_2 = 0.501
    SHX2_2 = 0.308
    SHX3_2 = 0.421
    SHX4_2 = 0.047
    SHX5_2 = 18
    SHX6_2 = 82
    SHX7_2 = 228
    SHX8_2 = 248
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX0_2 = DrawAdvancedText
    SHX1_2 = 0.591
    SHX2_2 = 0.312
    SHX3_2 = 0.005
    SHX4_2 = 0.0028
    SHX5_2 = 0.48
    SHX6_2 = "CMG gang - guest"
    SHX7_2 = 255
    SHX8_2 = 255
    SHX9_2 = 255
    SHX10_2 = 255
    SHX11_2 = 7
    SHX12_2 = 0
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX0_2 = SHX20_1
    if SHX0_2 then
      SHX0_2 = DrawRect
      SHX1_2 = 0.448
      SHX2_2 = 0.52
      SHX3_2 = 0.295
      SHX4_2 = 0.291
      SHX5_2 = 0
      SHX6_2 = 0
      SHX7_2 = 0
      SHX8_2 = 150
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.449
      SHX2_2 = 0.359
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Name"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 6
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.506
      SHX2_2 = 0.359
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "ID"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 6
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.555
      SHX2_2 = 0.359
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Control"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 6
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.625
      SHX2_2 = 0.359
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Last Seen"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 6
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.675
      SHX2_2 = 0.359
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Pin"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 6
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = SHX10_1
      if SHX0_2 then
        SHX0_2 = SHX20_1
        if SHX0_2 then
          SHX0_2 = SHX24_1
          if SHX0_2 then
            SHX0_2 = "Remove Selection"
            if SHX0_2 then
              goto SHX_LABEL_6002
            end
          end
          SHX0_2 = "Set As Selected"
          -- [FIX IF ERROR] Move ::SHX_LABEL_6002:: outside nested blocks until all 'goto SHX_LABEL_6002' can see it
          ::SHX_LABEL_6002::
          SHX1_2 = DrawAdvancedText
          SHX2_2 = 0.746
          SHX3_2 = 0.465
          SHX4_2 = 0.005
          SHX5_2 = 0.0028
          SHX6_2 = 0.4
          SHX7_2 = SHX0_2
          SHX8_2 = 255
          SHX9_2 = 255
          SHX10_2 = 255
          SHX11_2 = 255
          SHX12_2 = 4
          SHX13_2 = 0
          SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
        end
      end
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.746
      SHX2_2 = 0.54
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Leave"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 4
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.491
      SHX2_2 = 0.695
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Previous"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 4
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.581
      SHX2_2 = 0.695
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Next"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 4
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = table
      SHX0_2 = SHX0_2.count
      SHX1_2 = SHX20_1.members
      SHX0_2 = SHX0_2(SHX1_2)
      SHX1_2 = table
      SHX1_2 = SHX1_2.count
      SHX2_2 = SHX20_1.guests
      SHX1_2 = SHX1_2(SHX2_2)
      SHX0_2 = SHX0_2 + SHX1_2
      SHX1_2 = DrawAdvancedText
      SHX2_2 = 0.536
      SHX3_2 = 0.695
      SHX4_2 = 0.005
      SHX5_2 = 0.0028
      SHX6_2 = 0.4
      SHX7_2 = tostring
      SHX8_2 = SHX23_1
      SHX7_2 = SHX7_2(SHX8_2)
      SHX8_2 = "/"
      SHX9_2 = tostring
      SHX10_2 = math
      SHX10_2 = SHX10_2.ceil
      SHX11_2 = SHX0_2 / 10.0
      SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2 = SHX10_2(SHX11_2)
      SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
      SHX7_2 = SHX7_2 .. SHX8_2 .. SHX9_2
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 255
      SHX12_2 = 4
      SHX13_2 = 0
      SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
      SHX1_2 = DrawAdvancedText
      SHX2_2 = 0.775
      SHX3_2 = 0.693
      SHX4_2 = 0.005
      SHX5_2 = 0.0028
      SHX6_2 = 0.4
      SHX7_2 = "Back"
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 255
      SHX12_2 = 4
      SHX13_2 = 0
      SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
      SHX1_2 = SHX10_1
      if SHX1_2 then
        SHX1_2 = DrawAdvancedText
        SHX2_2 = 0.746
        SHX3_2 = 0.622
        SHX4_2 = 0.005
        SHX5_2 = 0.0028
        SHX6_2 = 0.473
        SHX7_2 = "Invite Guest"
        SHX8_2 = 255
        SHX9_2 = 255
        SHX10_2 = 255
        SHX11_2 = 255
        SHX12_2 = 4
        SHX13_2 = 0
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
        SHX1_2 = CursorInAreaRect
        SHX2_2 = 0.651
        SHX3_2 = 0.622
        SHX4_2 = 0.065
        SHX5_2 = 0.056
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
        if SHX1_2 then
          SHX1_2 = DrawRect
          SHX2_2 = 0.651
          SHX3_2 = 0.622
          SHX4_2 = 0.065
          SHX5_2 = 0.056
          SHX6_2 = 0
          SHX7_2 = 168
          SHX8_2 = 255
          SHX9_2 = 150
          SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
          SHX1_2 = IsControlJustPressed
          SHX2_2 = 1
          SHX3_2 = 329
          SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
          if not SHX1_2 then
            SHX1_2 = IsDisabledControlJustPressed
            SHX2_2 = 1
            SHX3_2 = 329
            SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
          end
          if SHX1_2 then
            SHX1_2 = PlaySound
            SHX2_2 = -1
            SHX3_2 = "SELECT"
            SHX4_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            SHX5_2 = false
            SHX6_2 = 0
            SHX7_2 = true
            SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
            SHX1_2 = CMG
            SHX1_2 = SHX1_2.hasGangPermission
            SHX2_2 = "inviteguest"
            SHX1_2 = SHX1_2(SHX2_2)
            if SHX1_2 then
              SHX1_2 = CMG
              SHX1_2 = SHX1_2.GetRageInputText
              SHX2_2 = "Enter Perm ID to invite:"
              SHX1_2 = SHX1_2(SHX2_2)
              if nil ~= SHX1_2 then
                SHX2_2 = tonumber
                SHX3_2 = SHX1_2
                SHX2_2 = SHX2_2(SHX3_2)
                if SHX2_2 then
                  SHX2_2 = TriggerServerEvent
                  SHX3_2 = "306a9cdbc9"
                  SHX4_2 = tonumber
                  SHX5_2 = SHX1_2
                  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2 = SHX4_2(SHX5_2)
                  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
              end
              else
                SHX2_2 = tCMG
                SHX2_2 = SHX2_2.notify
                SHX3_2 = "Invalid Perm ID entered"
                SHX2_2(SHX3_2)
              end
            else
              SHX1_2 = tCMG
              SHX1_2 = SHX1_2.notify
              SHX2_2 = "~r~You don't have permission to invite players"
              SHX1_2(SHX2_2)
            end
          end
        else
          SHX1_2 = DrawRect
          SHX2_2 = 0.651
          SHX3_2 = 0.622
          SHX4_2 = 0.065
          SHX5_2 = 0.056
          SHX6_2 = 0
          SHX7_2 = 0
          SHX8_2 = 0
          SHX9_2 = 150
          SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
        end
      end
      SHX1_2 = pairs
      SHX2_2 = SHX37_1
      SHX3_2 = SHX20_1
      SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2 = SHX2_2(SHX3_2)
      SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
      for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
        SHX7_2 = "Guest"
        SHX8_2 = SHX6_2.permissions
        if SHX8_2 then
          SHX8_2 = tostring
          SHX9_2 = math
          SHX9_2 = SHX9_2.floor
          SHX10_2 = table
          SHX10_2 = SHX10_2.count
          SHX11_2 = SHX6_2.permissions
          SHX10_2 = SHX10_2(SHX11_2)
          SHX11_2 = table
          SHX11_2 = SHX11_2.count
          SHX12_2 = SHX0_1.permissions
          SHX11_2 = SHX11_2(SHX12_2)
          SHX10_2 = SHX10_2 / SHX11_2
          SHX10_2 = SHX10_2 * 100.0
          SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2 = SHX9_2(SHX10_2)
          SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
          SHX9_2 = "%"
          SHX8_2 = SHX8_2 .. SHX9_2
          SHX7_2 = SHX8_2
        end
        SHX8_2 = DrawAdvancedText
        SHX9_2 = 0.449
        SHX10_2 = 0.0287 * SHX5_2
        SHX10_2 = 0.361 + SHX10_2
        SHX11_2 = 0.005
        SHX12_2 = 0.0028
        SHX13_2 = 0.4
        SHX14_2 = SHX6_2.name
        SHX15_2 = 255
        SHX16_2 = 255
        SHX17_2 = 255
        SHX18_2 = 255
        SHX19_2 = 6
        SHX20_2 = 0
        SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
        SHX8_2 = DrawAdvancedText
        SHX9_2 = 0.506
        SHX10_2 = 0.0287 * SHX5_2
        SHX10_2 = 0.361 + SHX10_2
        SHX11_2 = 0.005
        SHX12_2 = 0.0028
        SHX13_2 = 0.4
        SHX14_2 = SHX6_2.user_id
        SHX15_2 = 255
        SHX16_2 = 255
        SHX17_2 = 255
        SHX18_2 = 255
        SHX19_2 = 6
        SHX20_2 = 0
        SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
        SHX8_2 = DrawAdvancedText
        SHX9_2 = 0.555
        SHX10_2 = 0.0287 * SHX5_2
        SHX10_2 = 0.361 + SHX10_2
        SHX11_2 = 0.005
        SHX12_2 = 0.0028
        SHX13_2 = 0.4
        SHX14_2 = SHX7_2
        SHX15_2 = 255
        SHX16_2 = 255
        SHX17_2 = 255
        SHX18_2 = 255
        SHX19_2 = 6
        SHX20_2 = 0
        SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
        SHX8_2 = SHX6_2.lastLogin
        SHX9_2 = fullPlayerListData
        SHX10_2 = SHX6_2.user_id
        SHX9_2 = SHX9_2[SHX10_2]
        if SHX9_2 then
          SHX9_2 = CMG
          SHX9_2 = SHX9_2.isUserHidden
          SHX10_2 = SHX6_2.user_id
          SHX9_2 = SHX9_2(SHX10_2)
          if not SHX9_2 then
            SHX8_2 = "Online"
          end
        end
        SHX9_2 = DrawAdvancedText
        SHX10_2 = 0.625
        SHX11_2 = 0.0287 * SHX5_2
        SHX11_2 = 0.361 + SHX11_2
        SHX12_2 = 0.005
        SHX13_2 = 0.0028
        SHX14_2 = 0.4
        SHX15_2 = SHX8_2
        SHX16_2 = 255
        SHX17_2 = 255
        SHX18_2 = 255
        SHX19_2 = 255
        SHX20_2 = 6
        SHX21_2 = 0
        SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
        SHX9_2 = SHX15_1.pinnedPlayers
        SHX10_2 = SHX6_2.user_id
        SHX9_2 = SHX9_2[SHX10_2]
        if SHX9_2 then
          SHX9_2 = SHX20_1.isAdvanced
          if SHX9_2 then
            SHX9_2 = "\240\159\147\140"
            if SHX9_2 then
              goto SHX_LABEL_6329
            end
          end
        end
        SHX9_2 = "\226\173\149"
        -- [FIX IF ERROR] Move ::SHX_LABEL_6329:: outside nested blocks until all 'goto SHX_LABEL_6329' can see it
        ::SHX_LABEL_6329::
        SHX10_2 = DrawAdvancedText
        SHX11_2 = 0.675
        SHX12_2 = 0.0287 * SHX5_2
        SHX12_2 = 0.3665 + SHX12_2
        SHX13_2 = 0.005
        SHX14_2 = 0.0028
        SHX15_2 = 0.2
        SHX16_2 = SHX9_2
        SHX17_2 = 255
        SHX18_2 = 255
        SHX19_2 = 255
        SHX20_2 = 255
        SHX21_2 = 6
        SHX22_2 = 0
        SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
        SHX10_2 = CursorInArea
        SHX11_2 = 0.5755
        SHX12_2 = 0.5955
        SHX13_2 = SHX5_2 - 1
        SHX13_2 = 0.0287 * SHX13_2
        SHX13_2 = 0.3731 + SHX13_2
        SHX14_2 = SHX5_2 - 1
        SHX14_2 = 0.0287 * SHX14_2
        SHX14_2 = 0.4018 + SHX14_2
        SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2)
        if SHX10_2 then
          SHX10_2 = IsControlJustPressed
          SHX11_2 = 1
          SHX12_2 = 329
          SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
          if not SHX10_2 then
            SHX10_2 = IsDisabledControlJustPressed
            SHX11_2 = 1
            SHX12_2 = 329
            SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
            if not SHX10_2 then
              goto SHX_LABEL_6402
            end
          end
          SHX10_2 = SHX20_1.isAdvanced
          if SHX10_2 then
            SHX10_2 = SHX15_1.pinnedPlayers
            SHX11_2 = SHX6_2.user_id
            SHX10_2 = SHX10_2[SHX11_2]
            if SHX10_2 then
              SHX10_2 = SHX15_1.pinnedPlayers
              SHX11_2 = SHX6_2.user_id
              SHX10_2[SHX11_2] = nil
            else
              SHX10_2 = SHX15_1.pinnedPlayers
              SHX11_2 = SHX6_2.user_id
              SHX10_2[SHX11_2] = true
            end
            SHX10_2 = SetResourceKvp
            SHX11_2 = "cmg_gang_pinned"
            SHX12_2 = json
            SHX12_2 = SHX12_2.encode
            SHX13_2 = SHX15_1.pinnedPlayers
            SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2 = SHX12_2(SHX13_2)
            SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
          else
            SHX10_2 = notify
            SHX11_2 = "~r~You must have the advanced gang license to pin a player."
            SHX10_2(SHX11_2)
          end
        end
        -- [FIX IF ERROR] Move ::SHX_LABEL_6402:: outside nested blocks until all 'goto SHX_LABEL_6402' can see it
        ::SHX_LABEL_6402::
      end
      SHX1_2 = SHX10_1
      if SHX1_2 then
        SHX1_2 = SHX20_1
        if SHX1_2 then
          SHX1_2 = CursorInArea
          SHX2_2 = 0.6182
          SHX3_2 = 0.6822
          SHX4_2 = 0.435
          SHX5_2 = 0.491
          SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
          if SHX1_2 then
            SHX1_2 = DrawRect
            SHX2_2 = 0.651
            SHX3_2 = 0.463
            SHX4_2 = 0.065
            SHX5_2 = 0.056
            SHX6_2 = SHX7_1
            SHX7_2 = SHX8_1
            SHX8_2 = SHX9_1
            SHX9_2 = 150
            SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
            SHX1_2 = IsControlJustPressed
            SHX2_2 = 1
            SHX3_2 = 329
            SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
            if not SHX1_2 then
              SHX1_2 = IsDisabledControlJustPressed
              SHX2_2 = 1
              SHX3_2 = 329
              SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
              if not SHX1_2 then
                goto SHX_LABEL_6504
              end
            end
            SHX1_2 = PlaySound
            SHX2_2 = -1
            SHX3_2 = "SELECT"
            SHX4_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            SHX5_2 = false
            SHX6_2 = 0
            SHX7_2 = true
            SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
            SHX1_2 = SHX24_1
            if SHX1_2 then
              SHX1_2 = notify
              SHX2_2 = "~g~Set main gang as selected"
              SHX1_2(SHX2_2)
              SHX1_2 = false
              SHX24_1 = SHX1_2
            else
              SHX1_2 = notify
              SHX2_2 = "~g~Set guest gang as selected"
              SHX1_2(SHX2_2)
              SHX1_2 = true
              SHX24_1 = SHX1_2
            end
            SHX1_2 = _ENV
            SHX2_2 = "TriggerEvent"
            SHX1_2 = SHX1_2[SHX2_2]
            SHX2_2 = "e713d91b70"
            SHX1_2(SHX2_2)
            SHX1_2 = SHX33_1
            SHX1_2 = SHX1_2()
            if not SHX1_2 then
              goto SHX_LABEL_6504
            end
            SHX2_2 = SHX1_2.isAdvanced
            if not SHX2_2 then
              goto SHX_LABEL_6504
            end
            SHX2_2 = SHX15_1
            SHX3_2 = "blips"
            SHX2_2 = SHX2_2[SHX3_2]
            if not SHX2_2 then
              goto SHX_LABEL_6504
            end
            SHX2_2 = SHX33_1
            SHX2_2 = SHX2_2()
            SHX3_2 = SHX10_1
            if SHX2_2 == SHX3_2 then
              SHX2_2 = "own"
              if SHX2_2 then
                goto SHX_LABEL_6489
              end
            end
            SHX2_2 = "guest"
            -- [FIX IF ERROR] Move ::SHX_LABEL_6489:: outside nested blocks until all 'goto SHX_LABEL_6489' can see it
            ::SHX_LABEL_6489::
            SHX3_2 = TriggerServerEvent
            SHX4_2 = "f9c26121e2"
            SHX5_2 = SHX2_2
            SHX3_2(SHX4_2, SHX5_2)
          else
            SHX1_2 = DrawRect
            SHX2_2 = 0.651
            SHX3_2 = 0.463
            SHX4_2 = 0.065
            SHX5_2 = 0.056
            SHX6_2 = 0
            SHX7_2 = 0
            SHX8_2 = 0
            SHX9_2 = 150
            SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
          end
        end
      end
      -- [FIX IF ERROR] Move ::SHX_LABEL_6504:: outside nested blocks until all 'goto SHX_LABEL_6504' can see it
      ::SHX_LABEL_6504::
      SHX1_2 = CursorInArea
      SHX2_2 = 0.6182
      SHX3_2 = 0.6822
      SHX4_2 = 0.51
      SHX5_2 = 0.566
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
      if SHX1_2 then
        SHX1_2 = DrawRect
        SHX2_2 = 0.651
        SHX3_2 = 0.538
        SHX4_2 = 0.065
        SHX5_2 = 0.056
        SHX6_2 = SHX7_1
        SHX7_2 = SHX8_1
        SHX8_2 = SHX9_1
        SHX9_2 = 150
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
        SHX1_2 = IsControlJustPressed
        SHX2_2 = 1
        SHX3_2 = 329
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        if not SHX1_2 then
          SHX1_2 = IsDisabledControlJustPressed
          SHX2_2 = 1
          SHX3_2 = 329
          SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        end
        if SHX1_2 then
          SHX1_2 = PlaySound
          SHX2_2 = -1
          SHX3_2 = "SELECT"
          SHX4_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          SHX5_2 = false
          SHX6_2 = 0
          SHX7_2 = true
          SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          SHX1_2 = SHX36_1
          SHX2_2 = "Are you sure?"
          SHX1_2 = SHX1_2(SHX2_2)
          if SHX1_2 then
            SHX1_2 = TriggerServerEvent
            SHX2_2 = "dc72f21cc8"
            SHX1_2(SHX2_2)
          end
        end
      else
        SHX1_2 = DrawRect
        SHX2_2 = 0.651
        SHX3_2 = 0.538
        SHX4_2 = 0.065
        SHX5_2 = 0.056
        SHX6_2 = 0
        SHX7_2 = 0
        SHX8_2 = 0
        SHX9_2 = 150
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
      end
      SHX1_2 = CursorInArea
      SHX2_2 = 0.3735
      SHX3_2 = 0.4185
      SHX4_2 = 0.6768
      SHX5_2 = 0.7074
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
      if SHX1_2 then
        SHX1_2 = DrawRect
        SHX2_2 = 0.396
        SHX3_2 = 0.693
        SHX4_2 = 0.045
        SHX5_2 = 0.033
        SHX6_2 = SHX7_1
        SHX7_2 = SHX8_1
        SHX8_2 = SHX9_1
        SHX9_2 = 150
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
        SHX1_2 = IsControlJustPressed
        SHX2_2 = 1
        SHX3_2 = 329
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        if not SHX1_2 then
          SHX1_2 = IsDisabledControlJustPressed
          SHX2_2 = 1
          SHX3_2 = 329
          SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        end
        if SHX1_2 then
          SHX1_2 = PlaySound
          SHX2_2 = -1
          SHX3_2 = "SELECT"
          SHX4_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          SHX5_2 = false
          SHX6_2 = 0
          SHX7_2 = true
          SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          SHX1_2 = SHX23_1
          if SHX1_2 <= 1 then
            SHX1_2 = tCMG
            SHX1_2 = SHX1_2.notify
            SHX2_2 = "~r~Lowest page reached"
            SHX1_2(SHX2_2)
          else
            SHX1_2 = SHX23_1
            SHX1_2 = SHX1_2 - 1
            SHX23_1 = SHX1_2
          end
        end
      else
        SHX1_2 = DrawRect
        SHX2_2 = 0.396
        SHX3_2 = 0.693
        SHX4_2 = 0.045
        SHX5_2 = 0.033
        SHX6_2 = 0
        SHX7_2 = 0
        SHX8_2 = 0
        SHX9_2 = 150
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
      end
      SHX1_2 = CursorInArea
      SHX2_2 = 0.4635
      SHX3_2 = 0.5085
      SHX4_2 = 0.6712
      SHX5_2 = 0.7064
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
      if SHX1_2 then
        SHX1_2 = DrawRect
        SHX2_2 = 0.486
        SHX3_2 = 0.693
        SHX4_2 = 0.045
        SHX5_2 = 0.033
        SHX6_2 = SHX7_1
        SHX7_2 = SHX8_1
        SHX8_2 = SHX9_1
        SHX9_2 = 150
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
        SHX1_2 = IsControlJustPressed
        SHX2_2 = 1
        SHX3_2 = 329
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        if not SHX1_2 then
          SHX1_2 = IsDisabledControlJustPressed
          SHX2_2 = 1
          SHX3_2 = 329
          SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        end
        if SHX1_2 then
          SHX1_2 = PlaySound
          SHX2_2 = -1
          SHX3_2 = "SELECT"
          SHX4_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          SHX5_2 = false
          SHX6_2 = 0
          SHX7_2 = true
          SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          SHX1_2 = SHX23_1
          SHX2_2 = math
          SHX2_2 = SHX2_2.ceil
          SHX3_2 = SHX0_2 / 10.0
          SHX2_2 = SHX2_2(SHX3_2)
          if SHX1_2 >= SHX2_2 then
            SHX1_2 = tCMG
            SHX1_2 = SHX1_2.notify
            SHX2_2 = "~r~Max page reached"
            SHX1_2(SHX2_2)
          else
            SHX1_2 = SHX23_1
            SHX1_2 = SHX1_2 + 1
            SHX23_1 = SHX1_2
          end
        end
      else
        SHX1_2 = DrawRect
        SHX2_2 = 0.486
        SHX3_2 = 0.693
        SHX4_2 = 0.045
        SHX5_2 = 0.033
        SHX6_2 = 0
        SHX7_2 = 0
        SHX8_2 = 0
        SHX9_2 = 150
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
      end
      SHX1_2 = CursorInArea
      SHX2_2 = 0.6583
      SHX3_2 = 0.7056
      SHX4_2 = 0.6712
      SHX5_2 = 0.7064
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
      if SHX1_2 then
        SHX1_2 = DrawRect
        SHX2_2 = 0.681
        SHX3_2 = 0.689
        SHX4_2 = 0.045
        SHX5_2 = 0.036
        SHX6_2 = SHX7_1
        SHX7_2 = SHX8_1
        SHX8_2 = SHX9_1
        SHX9_2 = 150
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
        SHX1_2 = IsControlJustPressed
        SHX2_2 = 1
        SHX3_2 = 329
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        if not SHX1_2 then
          SHX1_2 = IsDisabledControlJustPressed
          SHX2_2 = 1
          SHX3_2 = 329
          SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        end
        if SHX1_2 then
          SHX1_2 = PlaySound
          SHX2_2 = -1
          SHX3_2 = "SELECT"
          SHX4_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          SHX5_2 = false
          SHX6_2 = 0
          SHX7_2 = true
          SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          SHX1_2 = "gang"
          SHX1_1 = SHX1_2
        end
      else
        SHX1_2 = DrawRect
        SHX2_2 = 0.681
        SHX3_2 = 0.689
        SHX4_2 = 0.045
        SHX5_2 = 0.036
        SHX6_2 = 0
        SHX7_2 = 0
        SHX8_2 = 0
        SHX9_2 = 150
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
      end
    else
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.501
      SHX2_2 = 0.378
      SHX3_2 = 0.105
      SHX4_2 = 0.0028
      SHX5_2 = 0.46
      SHX6_2 = "Guest Guide"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 6
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.501
      SHX2_2 = 0.416
      SHX3_2 = 0.105
      SHX4_2 = 0.0028
      SHX5_2 = 0.46
      SHX6_2 = "A guest is a player who will temporarily have access to a limited area of your gang."
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 6
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.501
      SHX2_2 = 0.454
      SHX3_2 = 0.105
      SHX4_2 = 0.0028
      SHX5_2 = 0.46
      SHX6_2 = "They will be able to pin members, see pings, see blips and name tags."
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 6
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.501
      SHX2_2 = 0.492
      SHX3_2 = 0.105
      SHX4_2 = 0.0028
      SHX5_2 = 0.46
      SHX6_2 = "They will not be able to see or access your funds, logs, settings and security."
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 6
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.501
      SHX2_2 = 0.53
      SHX3_2 = 0.105
      SHX4_2 = 0.0028
      SHX5_2 = 0.46
      SHX6_2 = "Being a guest of another gang will not remove you from your current gang."
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 6
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = SHX10_1
      if SHX0_2 then
        SHX0_2 = DrawAdvancedText
        SHX1_2 = 0.478
        SHX2_2 = 0.642
        SHX3_2 = 0.005
        SHX4_2 = 0.0028
        SHX5_2 = 0.473
        SHX6_2 = "Invite Guest"
        SHX7_2 = 255
        SHX8_2 = 255
        SHX9_2 = 255
        SHX10_2 = 255
        SHX11_2 = 4
        SHX12_2 = 0
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      end
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.564
      SHX2_2 = 0.643
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.473
      SHX6_2 = "Accept Invite"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 4
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawRect
      SHX1_2 = 0.561
      SHX2_2 = 0.577
      SHX3_2 = 0.065
      SHX4_2 = -0.003
      SHX5_2 = 0
      SHX6_2 = 168
      SHX7_2 = 255
      SHX8_2 = 204
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.654
      SHX2_2 = 0.57
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.364
      SHX6_2 = "Guest Invite list"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 4
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = pairs
      SHX1_2 = SHX21_1
      SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
      for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
        SHX6_2 = DrawAdvancedText
        SHX7_2 = 0.656
        SHX8_2 = 0.02 * SHX4_2
        SHX9_2 = 0.598
        SHX8_2 = SHX9_2 + SHX8_2
        SHX9_2 = 0.005
        SHX10_2 = 0.0028
        SHX11_2 = 0.234
        SHX12_2 = SHX5_2
        SHX13_2 = 255
        SHX14_2 = 255
        SHX15_2 = 255
        SHX16_2 = 255
        SHX17_2 = 0
        SHX18_2 = 0
        SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
        SHX6_2 = CursorInArea
        SHX7_2 = 0.525
        SHX8_2 = 0.59
        SHX9_2 = 0.02 * SHX4_2
        SHX10_2 = 0.58
        SHX9_2 = SHX10_2 + SHX9_2
        SHX10_2 = 0.02 * SHX4_2
        SHX11_2 = 0.596
        SHX10_2 = SHX11_2 + SHX10_2
        SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
        if SHX6_2 then
          SHX6_2 = SHX22_1
          if SHX4_2 ~= SHX6_2 then
            SHX6_2 = DrawRect
            SHX7_2 = 0.56
            SHX8_2 = 0.02 * SHX4_2
            SHX8_2 = 0.59 + SHX8_2
            SHX9_2 = 0.062
            SHX10_2 = 0.019
            SHX11_2 = 0
            SHX12_2 = 168
            SHX13_2 = 255
            SHX14_2 = 150
            SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            SHX6_2 = IsControlJustPressed
            SHX7_2 = 1
            SHX8_2 = 329
            SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
            if not SHX6_2 then
              SHX6_2 = IsDisabledControlJustPressed
              SHX7_2 = 1
              SHX8_2 = 329
              SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
            end
            if SHX6_2 then
              SHX22_1 = SHX4_2
            end
        end
        else
          SHX6_2 = SHX22_1
          if SHX4_2 == SHX6_2 then
            SHX6_2 = DrawRect
            SHX7_2 = 0.56
            SHX8_2 = 0.02 * SHX4_2
            SHX8_2 = 0.59 + SHX8_2
            SHX9_2 = 0.062
            SHX10_2 = 0.019
            SHX11_2 = 0
            SHX12_2 = 168
            SHX13_2 = 255
            SHX14_2 = 150
            SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          end
        end
      end
      SHX0_2 = SHX10_1
      if SHX0_2 then
        SHX0_2 = CursorInArea
        SHX1_2 = 0.35
        SHX2_2 = 0.415
        SHX3_2 = 0.615
        SHX4_2 = 0.66
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
        if SHX0_2 then
          SHX0_2 = DrawRect
          SHX1_2 = 0.383
          SHX2_2 = 0.642
          SHX3_2 = 0.066
          SHX4_2 = 0.046
          SHX5_2 = 0
          SHX6_2 = 168
          SHX7_2 = 255
          SHX8_2 = 150
          SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
          SHX0_2 = IsControlJustPressed
          SHX1_2 = 1
          SHX2_2 = 329
          SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
          if not SHX0_2 then
            SHX0_2 = IsDisabledControlJustPressed
            SHX1_2 = 1
            SHX2_2 = 329
            SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
          end
          if SHX0_2 then
            SHX0_2 = PlaySound
            SHX1_2 = -1
            SHX2_2 = "SELECT"
            SHX3_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            SHX4_2 = false
            SHX5_2 = 0
            SHX6_2 = true
            SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
            SHX0_2 = CMG
            SHX0_2 = SHX0_2.hasGangPermission
            SHX1_2 = "inviteguest"
            SHX0_2 = SHX0_2(SHX1_2)
            if SHX0_2 then
              SHX0_2 = CMG
              SHX0_2 = SHX0_2.GetRageInputText
              SHX1_2 = "Enter Perm ID to invite:"
              SHX0_2 = SHX0_2(SHX1_2)
              if nil ~= SHX0_2 then
                SHX1_2 = tonumber
                SHX2_2 = SHX0_2
                SHX1_2 = SHX1_2(SHX2_2)
                if SHX1_2 then
                  SHX1_2 = TriggerServerEvent
                  SHX2_2 = "306a9cdbc9"
                  SHX3_2 = tonumber
                  SHX4_2 = SHX0_2
                  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2 = SHX3_2(SHX4_2)
                  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
              end
              else
                SHX1_2 = tCMG
                SHX1_2 = SHX1_2.notify
                SHX2_2 = "Invalid Perm ID entered"
                SHX1_2(SHX2_2)
              end
            else
              SHX0_2 = tCMG
              SHX0_2 = SHX0_2.notify
              SHX1_2 = "~r~You don't have permission to invite players"
              SHX0_2(SHX1_2)
            end
          end
        else
          SHX0_2 = DrawRect
          SHX1_2 = 0.383
          SHX2_2 = 0.642
          SHX3_2 = 0.066
          SHX4_2 = 0.046
          SHX5_2 = 0
          SHX6_2 = 0
          SHX7_2 = 0
          SHX8_2 = 150
          SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
        end
      end
      SHX0_2 = CursorInArea
      SHX1_2 = 0.435
      SHX2_2 = 0.51
      SHX3_2 = 0.615
      SHX4_2 = 0.66
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
      if SHX0_2 then
        SHX0_2 = DrawRect
        SHX1_2 = 0.469
        SHX2_2 = 0.642
        SHX3_2 = 0.066
        SHX4_2 = 0.046
        SHX5_2 = 0
        SHX6_2 = 168
        SHX7_2 = 255
        SHX8_2 = 150
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
        SHX0_2 = IsControlJustPressed
        SHX1_2 = 1
        SHX2_2 = 329
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        if not SHX0_2 then
          SHX0_2 = IsDisabledControlJustPressed
          SHX1_2 = 1
          SHX2_2 = 329
          SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        end
        if SHX0_2 then
          SHX0_2 = PlaySound
          SHX1_2 = -1
          SHX2_2 = "SELECT"
          SHX3_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          SHX4_2 = false
          SHX5_2 = 0
          SHX6_2 = true
          SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
          SHX0_2 = SHX22_1
          if nil ~= SHX0_2 then
            SHX1_2 = SHX22_1
            SHX0_2 = SHX21_1
            SHX0_2 = SHX0_2[SHX1_2]
            SHX22_1 = SHX0_2
            SHX0_2 = TriggerServerEvent
            SHX1_2 = "6e7e491304"
            SHX2_2 = SHX22_1
            SHX0_2(SHX1_2, SHX2_2)
            SHX0_2 = {}
            SHX21_1 = SHX0_2
            SHX0_2 = SHX35_1
            SHX0_2()
          else
            SHX0_2 = tCMG
            SHX0_2 = SHX0_2.notify
            SHX1_2 = "~r~No guest invite selected"
            SHX0_2(SHX1_2)
          end
        end
      else
        SHX0_2 = DrawRect
        SHX1_2 = 0.469
        SHX2_2 = 0.642
        SHX3_2 = 0.066
        SHX4_2 = 0.046
        SHX5_2 = 0
        SHX6_2 = 0
        SHX7_2 = 0
        SHX8_2 = 150
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      end
    end
    SHX0_2 = DrawAdvancedText
    SHX1_2 = 0.775
    SHX2_2 = 0.693
    SHX3_2 = 0.005
    SHX4_2 = 0.0028
    SHX5_2 = 0.4
    SHX6_2 = "Back"
    SHX7_2 = 255
    SHX8_2 = 255
    SHX9_2 = 255
    SHX10_2 = 255
    SHX11_2 = 4
    SHX12_2 = 0
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX0_2 = CursorInArea
    SHX1_2 = 0.6583
    SHX2_2 = 0.7056
    SHX3_2 = 0.6712
    SHX4_2 = 0.7064
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
    if SHX0_2 then
      SHX0_2 = DrawRect
      SHX1_2 = 0.681
      SHX2_2 = 0.689
      SHX3_2 = 0.045
      SHX4_2 = 0.036
      SHX5_2 = SHX7_1
      SHX6_2 = SHX8_1
      SHX7_2 = SHX9_1
      SHX8_2 = 150
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX0_2 = IsControlJustPressed
      SHX1_2 = 1
      SHX2_2 = 329
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
      if not SHX0_2 then
        SHX0_2 = IsDisabledControlJustPressed
        SHX1_2 = 1
        SHX2_2 = 329
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
      end
      if SHX0_2 then
        SHX0_2 = PlaySound
        SHX1_2 = -1
        SHX2_2 = "SELECT"
        SHX3_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
        SHX4_2 = false
        SHX5_2 = 0
        SHX6_2 = true
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
        SHX0_2 = SHX10_1
        if SHX0_2 then
          SHX0_2 = "gang"
          SHX1_1 = SHX0_2
        else
          SHX0_2 = "noGang"
          SHX1_1 = SHX0_2
        end
      end
    else
      SHX0_2 = DrawRect
      SHX1_2 = 0.681
      SHX2_2 = 0.689
      SHX3_2 = 0.045
      SHX4_2 = 0.036
      SHX5_2 = 0
      SHX6_2 = 0
      SHX7_2 = 0
      SHX8_2 = 150
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    end
  end
  SHX0_2 = SHX10_1
  if SHX0_2 then
    SHX0_2 = SHX1_1
    if "gang" == SHX0_2 then
      SHX0_2 = DisableControlAction
      SHX1_2 = 0
      SHX2_2 = 200
      SHX3_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.isNewPlayer
      SHX0_2 = SHX0_2()
      if SHX0_2 then
        SHX0_2 = drawNativeNotification
        SHX1_2 = "Press ~INPUT_SELECT_CHARACTER_MICHAEL~ to toggle the Gang Menu."
        SHX0_2(SHX1_2)
      end
      SHX0_2 = DrawRect
      SHX1_2 = 0.501
      SHX2_2 = 0.532
      SHX3_2 = 0.375
      SHX4_2 = 0.225
      SHX5_2 = 0
      SHX6_2 = 0
      SHX7_2 = 0
      SHX8_2 = 150
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX0_2 = DrawRect
      SHX1_2 = 0.501
      SHX2_2 = 0.396
      SHX3_2 = 0.375
      SHX4_2 = 0.046
      SHX5_2 = 19
      SHX6_2 = 86
      SHX7_2 = 223
      SHX8_2 = 255
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.591
      SHX2_2 = 0.399
      SHX3_2 = 0.005
      SHX4_2 = 0.003
      SHX5_2 = 0.51
      SHX6_2 = "CMG Gangs"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 7
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.46
      SHX2_2 = 0.534
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "funds"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 7
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.554
      SHX2_2 = 0.534
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "members"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 7
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.642
      SHX2_2 = 0.534
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "logs"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 7
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.732
      SHX2_2 = 0.534
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "settings"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 7
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.46
      SHX2_2 = 0.604
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Turfs"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 7
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.554
      SHX2_2 = 0.604
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Security"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 7
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.642
      SHX2_2 = 0.604
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Guest"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 7
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.732
      SHX2_2 = 0.604
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Radios"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 7
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = CursorInArea
      SHX1_2 = 0.3333
      SHX2_2 = 0.3973
      SHX3_2 = 0.4981
      SHX4_2 = 0.5537
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
      if SHX0_2 then
        SHX0_2 = DrawRect
        SHX1_2 = 0.366
        SHX2_2 = 0.527
        SHX3_2 = 0.065
        SHX4_2 = 0.056
        SHX5_2 = SHX7_1
        SHX6_2 = SHX8_1
        SHX7_2 = SHX9_1
        SHX8_2 = 150
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
        SHX0_2 = IsControlJustPressed
        SHX1_2 = 1
        SHX2_2 = 329
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        if not SHX0_2 then
          SHX0_2 = IsDisabledControlJustPressed
          SHX1_2 = 1
          SHX2_2 = 329
          SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        end
        if SHX0_2 then
          SHX0_2 = PlaySound
          SHX1_2 = -1
          SHX2_2 = "SELECT"
          SHX3_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          SHX4_2 = false
          SHX5_2 = 0
          SHX6_2 = true
          SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
          SHX0_2 = "funds"
          SHX1_1 = SHX0_2
        end
      else
        SHX0_2 = DrawRect
        SHX1_2 = 0.366
        SHX2_2 = 0.527
        SHX3_2 = 0.065
        SHX4_2 = 0.056
        SHX5_2 = 0
        SHX6_2 = 0
        SHX7_2 = 0
        SHX8_2 = 150
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      end
      SHX0_2 = CursorInArea
      SHX1_2 = 0.4244
      SHX2_2 = 0.4903
      SHX3_2 = 0.4981
      SHX4_2 = 0.5537
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
      if SHX0_2 then
        SHX0_2 = DrawRect
        SHX1_2 = 0.458
        SHX2_2 = 0.527
        SHX3_2 = 0.065
        SHX4_2 = 0.056
        SHX5_2 = SHX7_1
        SHX6_2 = SHX8_1
        SHX7_2 = SHX9_1
        SHX8_2 = 150
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
        SHX0_2 = IsControlJustPressed
        SHX1_2 = 1
        SHX2_2 = 329
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        if not SHX0_2 then
          SHX0_2 = IsDisabledControlJustPressed
          SHX1_2 = 1
          SHX2_2 = 329
          SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        end
        if SHX0_2 then
          SHX0_2 = PlaySound
          SHX1_2 = -1
          SHX2_2 = "SELECT"
          SHX3_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          SHX4_2 = false
          SHX5_2 = 0
          SHX6_2 = true
          SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
          SHX0_2 = "members"
          SHX1_1 = SHX0_2
        end
      else
        SHX0_2 = DrawRect
        SHX1_2 = 0.458
        SHX2_2 = 0.527
        SHX3_2 = 0.065
        SHX4_2 = 0.056
        SHX5_2 = 0
        SHX6_2 = 0
        SHX7_2 = 0
        SHX8_2 = 150
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      end
      SHX0_2 = CursorInArea
      SHX1_2 = 0.514
      SHX2_2 = 0.5776
      SHX3_2 = 0.4981
      SHX4_2 = 0.5537
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
      if SHX0_2 then
        SHX0_2 = DrawRect
        SHX1_2 = 0.546
        SHX2_2 = 0.527
        SHX3_2 = 0.065
        SHX4_2 = 0.056
        SHX5_2 = SHX7_1
        SHX6_2 = SHX8_1
        SHX7_2 = SHX9_1
        SHX8_2 = 150
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
        SHX0_2 = IsControlJustPressed
        SHX1_2 = 1
        SHX2_2 = 329
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        if not SHX0_2 then
          SHX0_2 = IsDisabledControlJustPressed
          SHX1_2 = 1
          SHX2_2 = 329
          SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        end
        if SHX0_2 then
          SHX0_2 = PlaySound
          SHX1_2 = -1
          SHX2_2 = "SELECT"
          SHX3_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          SHX4_2 = false
          SHX5_2 = 0
          SHX6_2 = true
          SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
          SHX0_2 = "logs"
          SHX1_1 = SHX0_2
          SHX0_2 = SHX10_1
          SHX1_2 = "logs"
          SHX0_2[SHX1_2] = nil
          SHX0_2 = SHX10_1
          SHX1_2 = "logCount"
          SHX0_2[SHX1_2] = 0
          SHX0_2 = TriggerServerEvent
          SHX1_2 = "3f8f33322f"
          SHX2_2 = SHX14_1
          SHX3_2 = SHX18_1
          SHX0_2(SHX1_2, SHX2_2, SHX3_2)
        end
      else
        SHX0_2 = DrawRect
        SHX1_2 = 0.546
        SHX2_2 = 0.527
        SHX3_2 = 0.065
        SHX4_2 = 0.056
        SHX5_2 = 0
        SHX6_2 = 0
        SHX7_2 = 0
        SHX8_2 = 150
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      end
      SHX0_2 = CursorInArea
      SHX1_2 = 0.602
      SHX2_2 = 0.6677
      SHX3_2 = 0.4981
      SHX4_2 = 0.5537
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
      if SHX0_2 then
        SHX0_2 = DrawRect
        SHX1_2 = 0.635
        SHX2_2 = 0.527
        SHX3_2 = 0.065
        SHX4_2 = 0.056
        SHX5_2 = SHX7_1
        SHX6_2 = SHX8_1
        SHX7_2 = SHX9_1
        SHX8_2 = 150
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
        SHX0_2 = IsControlJustPressed
        SHX1_2 = 1
        SHX2_2 = 329
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        if not SHX0_2 then
          SHX0_2 = IsDisabledControlJustPressed
          SHX1_2 = 1
          SHX2_2 = 329
          SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        end
        if SHX0_2 then
          SHX0_2 = PlaySound
          SHX1_2 = -1
          SHX2_2 = "SELECT"
          SHX3_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          SHX4_2 = false
          SHX5_2 = 0
          SHX6_2 = true
          SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
          SHX0_2 = "settings"
          SHX1_1 = SHX0_2
        end
      else
        SHX0_2 = DrawRect
        SHX1_2 = 0.635
        SHX2_2 = 0.527
        SHX3_2 = 0.065
        SHX4_2 = 0.056
        SHX5_2 = 0
        SHX6_2 = 0
        SHX7_2 = 0
        SHX8_2 = 150
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      end
      SHX0_2 = CursorInAreaRect
      SHX1_2 = 0.366
      SHX2_2 = 0.6
      SHX3_2 = 0.065
      SHX4_2 = 0.056
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
      if SHX0_2 then
        SHX0_2 = DrawRect
        SHX1_2 = 0.366
        SHX2_2 = 0.6
        SHX3_2 = 0.065
        SHX4_2 = 0.056
        SHX5_2 = SHX7_1
        SHX6_2 = SHX8_1
        SHX7_2 = SHX9_1
        SHX8_2 = 150
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
        SHX0_2 = IsControlJustPressed
        SHX1_2 = 1
        SHX2_2 = 329
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        if not SHX0_2 then
          SHX0_2 = IsDisabledControlJustPressed
          SHX1_2 = 1
          SHX2_2 = 329
          SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        end
        if SHX0_2 then
          SHX0_2 = PlaySound
          SHX1_2 = -1
          SHX2_2 = "SELECT"
          SHX3_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          SHX4_2 = false
          SHX5_2 = 0
          SHX6_2 = true
          SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
          SHX0_2 = "turfs"
          SHX1_1 = SHX0_2
        end
      else
        SHX0_2 = DrawRect
        SHX1_2 = 0.366
        SHX2_2 = 0.6
        SHX3_2 = 0.065
        SHX4_2 = 0.056
        SHX5_2 = 0
        SHX6_2 = 0
        SHX7_2 = 0
        SHX8_2 = 150
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      end
      SHX0_2 = CursorInAreaRect
      SHX1_2 = 0.458
      SHX2_2 = 0.6
      SHX3_2 = 0.065
      SHX4_2 = 0.056
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
      if SHX0_2 then
        SHX0_2 = DrawRect
        SHX1_2 = 0.458
        SHX2_2 = 0.6
        SHX3_2 = 0.065
        SHX4_2 = 0.056
        SHX5_2 = SHX7_1
        SHX6_2 = SHX8_1
        SHX7_2 = SHX9_1
        SHX8_2 = 150
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
        SHX0_2 = IsControlJustPressed
        SHX1_2 = 1
        SHX2_2 = 329
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        if not SHX0_2 then
          SHX0_2 = IsDisabledControlJustPressed
          SHX1_2 = 1
          SHX2_2 = 329
          SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        end
        if SHX0_2 then
          SHX0_2 = PlaySound
          SHX1_2 = -1
          SHX2_2 = "SELECT"
          SHX3_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          SHX4_2 = false
          SHX5_2 = 0
          SHX6_2 = true
          SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
          SHX0_2 = SHX10_1.isAdvanced
          if SHX0_2 then
            SHX0_2 = "security"
            SHX1_1 = SHX0_2
          else
            SHX0_2 = notify
            SHX1_2 = "~r~You must have the advanced gang license to access this page."
            SHX0_2(SHX1_2)
          end
        end
      else
        SHX0_2 = DrawRect
        SHX1_2 = 0.458
        SHX2_2 = 0.6
        SHX3_2 = 0.065
        SHX4_2 = 0.056
        SHX5_2 = 0
        SHX6_2 = 0
        SHX7_2 = 0
        SHX8_2 = 150
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      end
      SHX0_2 = CursorInArea
      SHX1_2 = 0.514
      SHX2_2 = 0.5776
      SHX3_2 = 0.5722
      SHX4_2 = 0.6259
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
      if SHX0_2 then
        SHX0_2 = DrawRect
        SHX1_2 = 0.546
        SHX2_2 = 0.6
        SHX3_2 = 0.065
        SHX4_2 = 0.056
        SHX5_2 = SHX7_1
        SHX6_2 = SHX8_1
        SHX7_2 = SHX9_1
        SHX8_2 = 150
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
        SHX0_2 = IsControlJustPressed
        SHX1_2 = 1
        SHX2_2 = 329
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        if not SHX0_2 then
          SHX0_2 = IsDisabledControlJustPressed
          SHX1_2 = 1
          SHX2_2 = 329
          SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        end
        if SHX0_2 then
          SHX0_2 = PlaySound
          SHX1_2 = -1
          SHX2_2 = "SELECT"
          SHX3_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          SHX4_2 = false
          SHX5_2 = 0
          SHX6_2 = true
          SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
          SHX0_2 = "guest"
          SHX1_1 = SHX0_2
        end
      else
        SHX0_2 = DrawRect
        SHX1_2 = 0.546
        SHX2_2 = 0.6
        SHX3_2 = 0.065
        SHX4_2 = 0.056
        SHX5_2 = 0
        SHX6_2 = 0
        SHX7_2 = 0
        SHX8_2 = 150
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      end
      SHX0_2 = CursorInArea
      SHX1_2 = 0.602
      SHX2_2 = 0.6677
      SHX3_2 = 0.5722
      SHX4_2 = 0.6259
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
      if SHX0_2 then
        SHX0_2 = DrawRect
        SHX1_2 = 0.635
        SHX2_2 = 0.6
        SHX3_2 = 0.065
        SHX4_2 = 0.056
        SHX5_2 = SHX7_1
        SHX6_2 = SHX8_1
        SHX7_2 = SHX9_1
        SHX8_2 = 150
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
        SHX0_2 = IsControlJustPressed
        SHX1_2 = 1
        SHX2_2 = 329
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        if not SHX0_2 then
          SHX0_2 = IsDisabledControlJustPressed
          SHX1_2 = 1
          SHX2_2 = 329
          SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        end
        if SHX0_2 then
          SHX0_2 = PlaySound
          SHX1_2 = -1
          SHX2_2 = "SELECT"
          SHX3_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          SHX4_2 = false
          SHX5_2 = 0
          SHX6_2 = true
          SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
          SHX0_2 = "radios"
          SHX1_1 = SHX0_2
        end
      else
        SHX0_2 = DrawRect
        SHX1_2 = 0.635
        SHX2_2 = 0.6
        SHX3_2 = 0.065
        SHX4_2 = 0.056
        SHX5_2 = 0
        SHX6_2 = 0
        SHX7_2 = 0
        SHX8_2 = 150
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      end
      SHX0_2 = SHX10_1
      SHX1_2 = "id"
      SHX1_2 = SHX0_2[SHX1_2]
      SHX0_2 = SHX30_1
      SHX0_2 = SHX0_2[SHX1_2]
      if SHX0_2 then
        SHX0_2 = DrawAdvancedText
        SHX1_2 = 0.598
        SHX2_2 = 0.466
        SHX3_2 = 0.005
        SHX4_2 = 0.0028
        SHX5_2 = 0.4
        SHX6_2 = "RP Turfs"
        SHX7_2 = 255
        SHX8_2 = 255
        SHX9_2 = 255
        SHX10_2 = 255
        SHX11_2 = 7
        SHX12_2 = 0
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
        SHX0_2 = CursorInAreaRect
        SHX1_2 = 0.502
        SHX2_2 = 0.459
        SHX3_2 = 0.065
        SHX4_2 = 0.056
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
        if SHX0_2 then
          SHX0_2 = DrawRect
          SHX1_2 = 0.502
          SHX2_2 = 0.459
          SHX3_2 = 0.065
          SHX4_2 = 0.056
          SHX5_2 = SHX7_1
          SHX6_2 = SHX8_1
          SHX7_2 = SHX9_1
          SHX8_2 = 150
          SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
          SHX0_2 = IsControlJustPressed
          SHX1_2 = 1
          SHX2_2 = 329
          SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
          if not SHX0_2 then
            SHX0_2 = IsDisabledControlJustPressed
            SHX1_2 = 1
            SHX2_2 = 329
            SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
          end
          if SHX0_2 then
            SHX0_2 = PlaySound
            SHX1_2 = -1
            SHX2_2 = "SELECT"
            SHX3_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            SHX4_2 = false
            SHX5_2 = 0
            SHX6_2 = true
            SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
            SHX0_2 = "rpturfs"
            SHX1_1 = SHX0_2
          end
        else
          SHX0_2 = DrawRect
          SHX1_2 = 0.502
          SHX2_2 = 0.459
          SHX3_2 = 0.065
          SHX4_2 = 0.056
          SHX5_2 = 0
          SHX6_2 = 0
          SHX7_2 = 0
          SHX8_2 = 150
          SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
        end
      end
    end
  end
  SHX0_2 = SHX10_1
  if SHX0_2 then
    SHX0_2 = SHX1_1
    SHX1_2 = "radios"
    if SHX0_2 == SHX1_2 then
      SHX0_2 = DrawRect
      SHX1_2 = 0.501
      SHX2_2 = 0.525
      SHX3_2 = 0.421
      SHX4_2 = 0.387
      SHX5_2 = 0
      SHX6_2 = 0
      SHX7_2 = 0
      SHX8_2 = 150
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX0_2 = DrawRect
      SHX1_2 = 0.501
      SHX2_2 = 0.308
      SHX3_2 = 0.421
      SHX4_2 = 0.047
      SHX5_2 = 18
      SHX6_2 = 82
      SHX7_2 = 228
      SHX8_2 = 248
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.591
      SHX2_2 = 0.312
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.48
      SHX6_2 = "CMG gang - radios"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 7
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawRect
      SHX1_2 = 0.448
      SHX2_2 = 0.52
      SHX3_2 = 0.295
      SHX4_2 = 0.291
      SHX5_2 = 0
      SHX6_2 = 0
      SHX7_2 = 0
      SHX8_2 = 150
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.479
      SHX2_2 = 0.359
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Channel Name"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 6
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.675
      SHX2_2 = 0.359
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Edit"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 6
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.746
      SHX2_2 = 0.455
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = [[
Purchase
Channel]]
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 4
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = DrawAdvancedText
      SHX1_2 = 0.775
      SHX2_2 = 0.693
      SHX3_2 = 0.005
      SHX4_2 = 0.0028
      SHX5_2 = 0.4
      SHX6_2 = "Back"
      SHX7_2 = 255
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 4
      SHX12_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX0_2 = table
      SHX1_2 = "copy"
      SHX0_2 = SHX0_2[SHX1_2]
      SHX1_2 = SHX10_1
      SHX2_2 = "additionalRadios"
      SHX1_2 = SHX1_2[SHX2_2]
      SHX0_2 = SHX0_2(SHX1_2)
      SHX1_2 = SHX10_1.isAdvanced
      if SHX1_2 then
        SHX1_2 = table
        SHX2_2 = "insert"
        SHX1_2 = SHX1_2[SHX2_2]
        SHX2_2 = SHX0_2
        SHX3_2 = 1
        SHX4_2 = {}
        SHX5_2 = "id"
        SHX4_2[SHX5_2] = 0
        SHX5_2 = _ENV
        SHX6_2 = "string"
        SHX5_2 = SHX5_2[SHX6_2]
        SHX6_2 = "format"
        SHX5_2 = SHX5_2[SHX6_2]
        SHX6_2 = "%s (Default)"
        SHX7_2 = SHX10_1.name
        SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
        SHX4_2.name = SHX5_2
        SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      end
      SHX1_2 = pairs
      SHX2_2 = SHX0_2
      SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
      for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
        SHX7_2 = DrawAdvancedText
        SHX8_2 = 0.479
        SHX9_2 = 0.0287 * SHX5_2
        SHX9_2 = 0.361 + SHX9_2
        SHX10_2 = 0.005
        SHX11_2 = 0.0028
        SHX12_2 = 0.4
        SHX13_2 = SHX6_2.name
        SHX14_2 = 255
        SHX15_2 = 255
        SHX16_2 = 255
        SHX17_2 = 255
        SHX18_2 = 6
        SHX19_2 = 0
        SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
        SHX7_2 = "id"
        SHX7_2 = SHX6_2[SHX7_2]
        if 0 ~= SHX7_2 then
          SHX7_2 = DrawAdvancedText
          SHX8_2 = 0.675
          SHX9_2 = 0.0287 * SHX5_2
          SHX9_2 = 0.3665 + SHX9_2
          SHX10_2 = 0.005
          SHX11_2 = 0.0028
          SHX12_2 = 0.2
          SHX13_2 = "\226\156\143\239\184\143"
          SHX14_2 = 255
          SHX15_2 = 255
          SHX16_2 = 255
          SHX17_2 = 255
          SHX18_2 = 6
          SHX19_2 = 0
          SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
        end
        SHX7_2 = CursorInArea
        SHX8_2 = 0.3005
        SHX9_2 = 0.5955
        SHX10_2 = SHX5_2 - 1
        SHX10_2 = 0.0287 * SHX10_2
        SHX10_2 = 0.3731 + SHX10_2
        SHX11_2 = SHX5_2 - 1
        SHX11_2 = 0.0287 * SHX11_2
        SHX11_2 = 0.4018 + SHX11_2
        SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
        if SHX7_2 then
          SHX7_2 = SHX5_1
          SHX8_2 = "id"
          SHX8_2 = SHX6_2[SHX8_2]
          if SHX7_2 ~= SHX8_2 then
            SHX7_2 = DrawRect
            SHX8_2 = 0.448
            SHX9_2 = SHX5_2 - 1
            SHX9_2 = 0.0287 * SHX9_2
            SHX9_2 = 0.388 + SHX9_2
            SHX10_2 = 0.295
            SHX11_2 = 0.027
            SHX12_2 = SHX7_1
            SHX13_2 = SHX8_1
            SHX14_2 = SHX9_1
            SHX15_2 = 150
            SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
            SHX7_2 = IsControlJustPressed
            SHX8_2 = 1
            SHX9_2 = 329
            SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
            if not SHX7_2 then
              SHX7_2 = IsDisabledControlJustPressed
              SHX8_2 = 1
              SHX9_2 = 329
              SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
            end
            if SHX7_2 then
              SHX7_2 = PlaySound
              SHX8_2 = -1
              SHX9_2 = "SELECT"
              SHX10_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
              SHX11_2 = false
              SHX12_2 = 0
              SHX13_2 = true
              SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
              SHX7_2 = "id"
              SHX7_2 = SHX6_2[SHX7_2]
              SHX5_1 = SHX7_2
            end
        end
        else
          SHX7_2 = SHX5_1
          SHX8_2 = "id"
          SHX8_2 = SHX6_2[SHX8_2]
          if SHX7_2 == SHX8_2 then
            SHX7_2 = DrawRect
            SHX8_2 = 0.448
            SHX9_2 = SHX5_2 - 1
            SHX9_2 = 0.0287 * SHX9_2
            SHX9_2 = 0.388 + SHX9_2
            SHX10_2 = 0.295
            SHX11_2 = 0.027
            SHX12_2 = SHX7_1
            SHX13_2 = SHX8_1
            SHX14_2 = SHX9_1
            SHX15_2 = 150
            SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
          end
        end
        SHX7_2 = CursorInArea
        SHX8_2 = 0.5755
        SHX9_2 = 0.5955
        SHX10_2 = SHX5_2 - 1
        SHX10_2 = 0.0287 * SHX10_2
        SHX10_2 = 0.3731 + SHX10_2
        SHX11_2 = SHX5_2 - 1
        SHX11_2 = 0.0287 * SHX11_2
        SHX11_2 = 0.4018 + SHX11_2
        SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
        if SHX7_2 then
          SHX7_2 = IsControlJustPressed
          SHX8_2 = 1
          SHX9_2 = 329
          SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
          if not SHX7_2 then
            SHX7_2 = IsDisabledControlJustPressed
            SHX8_2 = 1
            SHX9_2 = 329
            SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
            if not SHX7_2 then
              goto SHX_LABEL_8156
            end
          end
          SHX7_2 = PlaySound
          SHX8_2 = -1
          SHX9_2 = "SELECT"
          SHX10_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          SHX11_2 = false
          SHX12_2 = 0
          SHX13_2 = true
          SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
          SHX7_2 = CMG
          SHX7_2 = SHX7_2.GetRageInputText
          SHX8_2 = "Channel Name"
          SHX9_2 = SHX6_2.name
          SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
          if SHX7_2 then
            SHX8_2 = TriggerServerEvent
            SHX9_2 = "8a2894785e"
            SHX10_2 = "id"
            SHX10_2 = SHX6_2[SHX10_2]
            SHX11_2 = SHX7_2
            SHX8_2(SHX9_2, SHX10_2, SHX11_2)
          else
            SHX8_2 = notify
            SHX9_2 = "~r~Cancelled changing channel name."
            SHX8_2(SHX9_2)
          end
        end
        -- [FIX IF ERROR] Move ::SHX_LABEL_8156:: outside nested blocks until all 'goto SHX_LABEL_8156' can see it
        ::SHX_LABEL_8156::
      end
      SHX1_2 = CursorInAreaRect
      SHX2_2 = 0.651
      SHX3_2 = 0.463
      SHX4_2 = 0.065
      SHX5_2 = 0.086
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
      if SHX1_2 then
        SHX1_2 = DrawRect
        SHX2_2 = 0.651
        SHX3_2 = 0.463
        SHX4_2 = 0.065
        SHX5_2 = 0.086
        SHX6_2 = SHX7_1
        SHX7_2 = SHX8_1
        SHX8_2 = SHX9_1
        SHX9_2 = 150
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
        SHX1_2 = IsControlJustPressed
        SHX2_2 = 1
        SHX3_2 = 329
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        if not SHX1_2 then
          SHX1_2 = IsDisabledControlJustPressed
          SHX2_2 = 1
          SHX3_2 = 329
          SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        end
        if SHX1_2 then
          SHX1_2 = PlaySound
          SHX2_2 = -1
          SHX3_2 = "SELECT"
          SHX4_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          SHX5_2 = false
          SHX6_2 = 0
          SHX7_2 = true
          SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          SHX1_2 = CMG
          SHX1_2 = SHX1_2.GetRageInputText
          SHX2_2 = "Purchase for \194\1635,000,000?"
          SHX3_2 = "Yes/No"
          SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
          if SHX1_2 then
            SHX2_2 = _ENV
            SHX3_2 = "string"
            SHX2_2 = SHX2_2[SHX3_2]
            SHX3_2 = "lower"
            SHX2_2 = SHX2_2[SHX3_2]
            SHX3_2 = SHX1_2
            SHX2_2 = SHX2_2(SHX3_2)
            SHX3_2 = "yes"
            if SHX2_2 == SHX3_2 then
              SHX2_2 = TriggerServerEvent
              SHX3_2 = "5b98fcee62"
              SHX2_2(SHX3_2)
          end
          else
            SHX2_2 = notify
            SHX3_2 = "~r~Cancelled purchase of new channel."
            SHX2_2(SHX3_2)
          end
        end
      else
        SHX1_2 = DrawRect
        SHX2_2 = 0.651
        SHX3_2 = 0.463
        SHX4_2 = 0.065
        SHX5_2 = 0.086
        SHX6_2 = 0
        SHX7_2 = 0
        SHX8_2 = 0
        SHX9_2 = 150
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
      end
      SHX1_2 = CursorInArea
      SHX2_2 = 0.6583
      SHX3_2 = 0.7056
      SHX4_2 = 0.6712
      SHX5_2 = 0.7064
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
      if SHX1_2 then
        SHX1_2 = DrawRect
        SHX2_2 = 0.681
        SHX3_2 = 0.689
        SHX4_2 = 0.045
        SHX5_2 = 0.036
        SHX6_2 = SHX7_1
        SHX7_2 = SHX8_1
        SHX8_2 = SHX9_1
        SHX9_2 = 150
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
        SHX1_2 = IsControlJustPressed
        SHX2_2 = 1
        SHX3_2 = 329
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        if not SHX1_2 then
          SHX1_2 = IsDisabledControlJustPressed
          SHX2_2 = 1
          SHX3_2 = 329
          SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        end
        if SHX1_2 then
          SHX1_2 = PlaySound
          SHX2_2 = -1
          SHX3_2 = "SELECT"
          SHX4_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          SHX5_2 = false
          SHX6_2 = 0
          SHX7_2 = true
          SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
          SHX1_2 = "gang"
          SHX1_1 = SHX1_2
        end
      else
        SHX1_2 = DrawRect
        SHX2_2 = 0.681
        SHX3_2 = 0.689
        SHX4_2 = 0.045
        SHX5_2 = 0.036
        SHX6_2 = 0
        SHX7_2 = 0
        SHX8_2 = 0
        SHX9_2 = 150
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
      end
    end
  end
end
SHX42_1 = CMG
SHX42_1 = SHX42_1.createThreadOnTick
SHX43_1 = SHX41_1
SHX44_1 = "Gang UI"
SHX42_1(SHX43_1, SHX44_1)
SHX42_1 = 0
function SHX43_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.gangUseNui
  if SHX0_2 then
    return
  end
  SHX0_2 = IsControlJustPressed
  SHX1_2 = 0
  SHX2_2 = 166
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if not SHX0_2 then
    SHX0_2 = IsDisabledControlJustPressed
    SHX1_2 = 0
    SHX2_2 = 166
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if not SHX0_2 then
      SHX0_2 = IsDisabledControlJustReleased
      SHX1_2 = 0
      SHX2_2 = 200
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
      if not SHX0_2 then
        goto SHX_LABEL_99
      end
      SHX0_2 = SHX1_1
      if "noGang" ~= SHX0_2 then
        SHX0_2 = SHX1_1
        if "gang" ~= SHX0_2 then
          goto SHX_LABEL_99
        end
      end
    end
  end
  SHX0_2 = GetGameTimer
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX42_1
  SHX0_2 = SHX0_2 - SHX1_2
  if SHX0_2 < 100 then
    return
  end
  SHX0_2 = GetGameTimer
  SHX0_2 = SHX0_2()
  SHX42_1 = SHX0_2
  SHX0_2 = SHX10_1
  if not SHX0_2 then
    SHX0_2 = SHX1_1
    if "noGang" == SHX0_2 then
      SHX0_2 = nil
      SHX1_1 = SHX0_2
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.setCursor
      SHX1_2 = 0
      SHX0_2(SHX1_2)
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.setInGUI
      SHX1_2 = false
      SHX0_2(SHX1_2)
      SHX0_2 = nil
      SHX3_1 = SHX0_2
    else
      SHX0_2 = "noGang"
      SHX1_1 = SHX0_2
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.setCursor
      SHX1_2 = 1
      SHX0_2(SHX1_2)
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.setInGUI
      SHX1_2 = true
      SHX0_2(SHX1_2)
    end
  end
  SHX0_2 = SHX10_1
  if SHX0_2 then
    SHX0_2 = SHX1_1
    if "gang" == SHX0_2 then
      SHX0_2 = nil
      SHX1_1 = SHX0_2
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.setCursor
      SHX1_2 = 0
      SHX0_2(SHX1_2)
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.setInGUI
      SHX1_2 = false
      SHX0_2(SHX1_2)
      SHX0_2 = nil
      SHX4_1 = SHX0_2
    else
      SHX0_2 = "gang"
      SHX1_1 = SHX0_2
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.setCursor
      SHX1_2 = 1
      SHX0_2(SHX1_2)
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.setInGUI
      SHX1_2 = true
      SHX0_2(SHX1_2)
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_99:: outside nested blocks until all 'goto SHX_LABEL_99' can see it
  ::SHX_LABEL_99::
end
SHX44_1 = Citizen
SHX44_1 = SHX44_1.CreateThread
function SHX45_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = json
  SHX0_2 = SHX0_2.decode
  SHX1_2 = GetResourceKvpString
  SHX2_2 = "cmg_gang_pinned"
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = "{}"
  end
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 then
    SHX0_2 = {}
  end
  SHX1_2 = {}
  SHX2_2 = GetResourceKvpString
  SHX3_2 = "cmg_gang_blips"
  SHX2_2 = SHX2_2(SHX3_2)
  SHX2_2 = "true" == SHX2_2
  SHX1_2.blips = SHX2_2
  SHX2_2 = GetResourceKvpString
  SHX3_2 = "cmg_gang_pings"
  SHX2_2 = SHX2_2(SHX3_2)
  SHX2_2 = "true" == SHX2_2
  SHX1_2.pings = SHX2_2
  SHX2_2 = GetResourceKvpString
  SHX3_2 = "cmg_gang_names"
  SHX2_2 = SHX2_2(SHX3_2)
  SHX2_2 = "true" == SHX2_2
  SHX1_2.names = SHX2_2
  SHX2_2 = {}
  SHX1_2.pinnedPlayers = SHX2_2
  SHX15_1 = SHX1_2
  SHX1_2 = pairs
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = SHX15_1.pinnedPlayers
    SHX7_2 = tonumber
    SHX8_2 = SHX5_2
    SHX7_2 = SHX7_2(SHX8_2)
    SHX6_2[SHX7_2] = true
  end
  SHX1_2 = CMG
  SHX2_2 = SHX15_1.pinnedPlayers
  SHX1_2.gangPinnedPlayers = SHX2_2
  SHX1_2 = CMG
  SHX2_2 = SHX15_1
  SHX1_2.gangClientSettings = SHX2_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.createThreadOnTick
  SHX2_2 = SHX43_1
  SHX3_2 = "Gang Key Controls"
  SHX1_2(SHX2_2, SHX3_2)
end
SHX44_1(SHX45_1)
SHX44_1 = RegisterNetEvent
SHX45_1 = "f9904fb04b"
function SHX46_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX18_2, SHX19_2, SHX20_2
  SHX18_2 = {}
  SHX18_2.id = SHX9_2
  SHX18_2.name = SHX0_2
  SHX18_2.displayMoney = SHX1_2
  SHX18_2.members = SHX2_2
  SHX18_2.guests = SHX3_2
  SHX18_2.isAdvanced = SHX4_2
  SHX18_2.maxWithdraw = SHX5_2
  SHX18_2.limitWithdrawDeposit = SHX6_2
  SHX18_2.requireWithdrawReason = SHX7_2
  SHX19_2 = {}
  SHX18_2.pings = SHX19_2
  SHX18_2.additionalRadios = SHX8_2
  SHX19_2 = SHX10_2 or SHX19_2
  if not SHX10_2 then
    SHX19_2 = 0
  end
  SHX18_2.gangPublicSkillPoints = SHX19_2
  SHX19_2 = SHX17_2 or SHX19_2
  if not SHX17_2 then
    SHX19_2 = 0
  end
  SHX18_2.gangRpSkillPoints = SHX19_2
  SHX19_2 = SHX11_2 or SHX19_2
  if not SHX11_2 then
    SHX19_2 = {}
  end
  SHX18_2.gangPerksUnlocked = SHX19_2
  SHX19_2 = SHX12_2 or SHX19_2
  if not SHX12_2 then
    SHX19_2 = {}
  end
  SHX18_2.announcements = SHX19_2
  SHX19_2 = SHX13_2 or SHX19_2
  if not SHX13_2 then
    SHX19_2 = 1
  end
  SHX18_2.gangPublicLevel = SHX19_2
  SHX19_2 = SHX14_2 or SHX19_2
  if not SHX14_2 then
    SHX19_2 = 0
  end
  SHX18_2.gangPublicXp = SHX19_2
  SHX19_2 = SHX15_2 or SHX19_2
  if not SHX15_2 then
    SHX19_2 = 1
  end
  SHX18_2.gangRpLevel = SHX19_2
  SHX19_2 = SHX16_2 or SHX19_2
  if not SHX16_2 then
    SHX19_2 = 0
  end
  SHX18_2.gangRpXp = SHX19_2
  SHX10_1 = SHX18_2
  SHX18_2 = CMG
  SHX19_2 = SHX10_1
  SHX18_2.gangCachedData = SHX19_2
  SHX18_2 = SHX10_1.isAdvanced
  if SHX18_2 then
    SHX18_2 = RequestStreamedTextureDict
    SHX19_2 = "cmg_gang"
    SHX20_2 = false
    SHX18_2(SHX19_2, SHX20_2)
    SHX18_2 = SHX15_1.blips
    if SHX18_2 then
      SHX18_2 = TriggerEvent
      SHX19_2 = "e713d91b70"
      SHX18_2(SHX19_2)
      SHX18_2 = TriggerServerEvent
      SHX19_2 = "f9c26121e2"
      SHX20_2 = "own"
      SHX18_2(SHX19_2, SHX20_2)
    end
    SHX18_2 = TriggerServerEvent
    SHX19_2 = "a74c553948"
    SHX20_2 = SHX29_1
    SHX18_2(SHX19_2, SHX20_2)
  end
  SHX18_2 = SHX1_1
  if SHX18_2 then
    SHX18_2 = "gang"
    SHX1_1 = SHX18_2
  end
end
SHX44_1(SHX45_1, SHX46_1)
SHX44_1 = RegisterNetEvent
SHX45_1 = "4a773cc562"
function SHX46_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX5_2
  SHX5_2 = nil
  SHX20_1 = SHX5_2
  SHX5_2 = CMG
  SHX5_2.gangCachedGuestData = nil
end
SHX44_1(SHX45_1, SHX46_1)
SHX44_1 = RegisterNetEvent
SHX45_1 = "d59e8e8fd8"
function SHX46_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX10_1
  if SHX1_2 then
    SHX10_1.name = SHX0_2
  end
end
SHX44_1(SHX45_1, SHX46_1)
SHX44_1 = RegisterNetEvent
SHX45_1 = "38c659d0a7"
function SHX46_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX10_1
  if SHX1_2 then
    SHX10_1.displayMoney = SHX0_2
  end
end
SHX44_1(SHX45_1, SHX46_1)
SHX44_1 = RegisterNetEvent
SHX45_1 = "cbebb2bd7a"
function SHX46_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX10_1
  if SHX0_2 then
    SHX0_2 = RequestStreamedTextureDict
    SHX1_2 = "cmg_gang"
    SHX2_2 = false
    SHX0_2(SHX1_2, SHX2_2)
    SHX10_1.isAdvanced = true
  end
  SHX0_2 = TriggerEvent
  SHX1_2 = "238e25c639"
  SHX0_2(SHX1_2)
end
SHX44_1(SHX45_1, SHX46_1)
SHX44_1 = RegisterNetEvent
SHX45_1 = "a7a59eed45"
function SHX46_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX20_1
  if SHX0_2 then
    SHX0_2 = RequestStreamedTextureDict
    SHX1_2 = "cmg_gang"
    SHX2_2 = false
    SHX0_2(SHX1_2, SHX2_2)
    SHX20_1.isAdvanced = true
  end
end
SHX44_1(SHX45_1, SHX46_1)
SHX44_1 = RegisterNetEvent
SHX45_1 = "6e6d067235"
function SHX46_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX10_1
  if SHX2_2 then
    SHX2_2 = SHX10_1.members
    SHX2_2[SHX0_2] = SHX1_2
  end
end
SHX44_1(SHX45_1, SHX46_1)
SHX44_1 = RegisterNetEvent
SHX45_1 = "f5b2ceb8df"
function SHX46_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX20_1
  if SHX2_2 then
    SHX2_2 = SHX20_1.members
    SHX2_2[SHX0_2] = SHX1_2
  end
end
SHX44_1(SHX45_1, SHX46_1)
SHX44_1 = RegisterNetEvent
SHX45_1 = "363c115205"
function SHX46_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX10_1
  if SHX2_2 then
    SHX2_2 = SHX10_1.guests
    SHX2_2[SHX0_2] = SHX1_2
  end
end
SHX44_1(SHX45_1, SHX46_1)
SHX44_1 = RegisterNetEvent
SHX45_1 = "36135ce16e"
function SHX46_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX20_1
  if SHX2_2 then
    SHX2_2 = SHX20_1.guests
    SHX2_2[SHX0_2] = SHX1_2
  end
end
SHX44_1(SHX45_1, SHX46_1)
SHX44_1 = RegisterNetEvent
SHX45_1 = "6998c9a240"
function SHX46_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX10_1
  if SHX2_2 then
    SHX2_2 = SHX10_1.members
    SHX2_2 = SHX2_2[SHX0_2]
    if SHX2_2 then
      SHX2_2 = SHX10_1.members
      SHX2_2 = SHX2_2[SHX0_2]
      SHX2_2.permissions = SHX1_2
    end
  end
end
SHX44_1(SHX45_1, SHX46_1)
SHX44_1 = RegisterNetEvent
SHX45_1 = "f71d7949c0"
function SHX46_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX20_1
  if SHX2_2 then
    SHX2_2 = SHX20_1.members
    SHX2_2 = SHX2_2[SHX0_2]
    if SHX2_2 then
      SHX2_2 = SHX20_1.members
      SHX2_2 = SHX2_2[SHX0_2]
      SHX2_2.permissions = SHX1_2
    end
  end
end
SHX44_1(SHX45_1, SHX46_1)
SHX44_1 = RegisterNetEvent
SHX45_1 = "854c66098d"
function SHX46_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX10_1
  if SHX2_2 then
    SHX2_2 = SHX10_1.members
    SHX2_2 = SHX2_2[SHX0_2]
    if SHX2_2 then
      SHX2_2 = SHX10_1.members
      SHX2_2 = SHX2_2[SHX0_2]
      SHX2_2.lastLogin = SHX1_2
    end
  end
end
SHX44_1(SHX45_1, SHX46_1)
SHX44_1 = RegisterNetEvent
SHX45_1 = "982c46dbf0"
function SHX46_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX20_1
  if SHX2_2 then
    SHX2_2 = SHX20_1.members
    SHX2_2 = SHX2_2[SHX0_2]
    if SHX2_2 then
      SHX2_2 = SHX20_1.members
      SHX2_2 = SHX2_2[SHX0_2]
      SHX2_2.lastLogin = SHX1_2
    end
  end
end
SHX44_1(SHX45_1, SHX46_1)
SHX44_1 = RegisterNetEvent
SHX45_1 = "6049cc2bb1"
function SHX46_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX10_1
  if SHX2_2 then
    SHX2_2 = SHX10_1.members
    SHX2_2 = SHX2_2[SHX0_2]
    if SHX2_2 then
      SHX2_2 = SHX10_1.members
      SHX2_2 = SHX2_2[SHX0_2]
      SHX2_2.name = SHX1_2
    end
  end
end
SHX44_1(SHX45_1, SHX46_1)
SHX44_1 = RegisterNetEvent
SHX45_1 = "f9fdd3de9c"
function SHX46_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX20_1
  if SHX2_2 then
    SHX2_2 = SHX20_1.members
    SHX2_2 = SHX2_2[SHX0_2]
    if SHX2_2 then
      SHX2_2 = SHX20_1.members
      SHX2_2 = SHX2_2[SHX0_2]
      SHX2_2.name = SHX1_2
    end
  end
end
SHX44_1(SHX45_1, SHX46_1)
SHX44_1 = RegisterNetEvent
SHX45_1 = "078a4215cf"
function SHX46_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX10_1
  if SHX2_2 then
    SHX2_2 = SHX10_1.guests
    SHX2_2 = SHX2_2[SHX0_2]
    if SHX2_2 then
      SHX2_2 = SHX10_1.guests
      SHX2_2 = SHX2_2[SHX0_2]
      SHX2_2.name = SHX1_2
    end
  end
end
SHX44_1(SHX45_1, SHX46_1)
SHX44_1 = RegisterNetEvent
SHX45_1 = "24c8e98259"
function SHX46_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX20_1
  if SHX2_2 then
    SHX2_2 = SHX20_1.guests
    SHX2_2 = SHX2_2[SHX0_2]
    if SHX2_2 then
      SHX2_2 = SHX20_1.guests
      SHX2_2 = SHX2_2[SHX0_2]
      SHX2_2.name = SHX1_2
    end
  end
end
SHX44_1(SHX45_1, SHX46_1)
SHX44_1 = RegisterNetEvent
SHX45_1 = "c4fb7a7250"
function SHX46_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX10_1
  if SHX1_2 then
    SHX1_2 = SHX10_1.members
    SHX1_2[SHX0_2] = nil
  end
end
SHX44_1(SHX45_1, SHX46_1)
SHX44_1 = RegisterNetEvent
SHX45_1 = "4d2c3b82a7"
function SHX46_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX20_1
  if SHX1_2 then
    SHX1_2 = SHX20_1.members
    SHX1_2[SHX0_2] = nil
  end
end
SHX44_1(SHX45_1, SHX46_1)
SHX44_1 = RegisterNetEvent
SHX45_1 = "3a92ce94a9"
function SHX46_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX10_1
  if SHX1_2 then
    SHX1_2 = SHX10_1.guests
    SHX1_2[SHX0_2] = nil
  end
end
SHX44_1(SHX45_1, SHX46_1)
SHX44_1 = RegisterNetEvent
SHX45_1 = "2b3786c5c2"
function SHX46_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX20_1
  if SHX1_2 then
    SHX1_2 = SHX20_1.guests
    SHX1_2[SHX0_2] = nil
  end
end
SHX44_1(SHX45_1, SHX46_1)
SHX44_1 = RegisterNetEvent
SHX45_1 = "b6d14a58c2"
function SHX46_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2
  SHX3_2 = SHX10_1
  if SHX3_2 then
    SHX3_2 = SHX14_1
    if SHX3_2 == SHX0_2 then
      SHX10_1.logs = SHX1_2
      SHX10_1.logCount = SHX2_2
    end
  end
end
SHX44_1(SHX45_1, SHX46_1)
SHX44_1 = RegisterNetEvent
SHX45_1 = "df6b023891"
function SHX46_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX15_1.blips
  if SHX0_2 then
    SHX0_2 = TriggerEvent
    SHX1_2 = "e713d91b70"
    SHX0_2(SHX1_2)
  end
  SHX0_2 = SHX1_1
  if SHX0_2 then
    SHX0_2 = "noGang"
    SHX1_1 = SHX0_2
  end
  SHX0_2 = nil
  SHX10_1 = SHX0_2
  SHX0_2 = CMG
  SHX0_2.gangCachedData = nil
end
SHX44_1(SHX45_1, SHX46_1)
SHX44_1 = RegisterNetEvent
SHX45_1 = "ac7da32975"
function SHX46_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX15_1.blips
  if SHX0_2 then
    SHX0_2 = TriggerEvent
    SHX1_2 = "e713d91b70"
    SHX0_2(SHX1_2)
  end
  SHX0_2 = nil
  SHX20_1 = SHX0_2
  SHX0_2 = CMG
  SHX0_2.gangCachedGuestData = nil
end
SHX44_1(SHX45_1, SHX46_1)
SHX44_1 = RegisterNetEvent
SHX45_1 = "0d45fc5353"
function SHX46_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX16_1 = SHX0_2
end
SHX44_1(SHX45_1, SHX46_1)
SHX44_1 = RegisterNetEvent
SHX45_1 = "b674c758b8"
function SHX46_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX10_1
  if SHX1_2 then
    SHX10_1.maxWithdraw = SHX0_2
  end
end
SHX44_1(SHX45_1, SHX46_1)
SHX44_1 = RegisterNetEvent
SHX45_1 = "58d834d15a"
function SHX46_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX10_1
  if SHX1_2 then
    SHX10_1.limitWithdrawDeposit = SHX0_2
  end
end
SHX44_1(SHX45_1, SHX46_1)
SHX44_1 = RegisterNetEvent
SHX45_1 = "5d7f40bb9d"
function SHX46_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX10_1
  if SHX1_2 then
    SHX10_1.requireWithdrawReason = SHX0_2
  end
end
SHX44_1(SHX45_1, SHX46_1)
SHX44_1 = RegisterNetEvent
SHX45_1 = "aa406726e4"
function SHX46_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX10_1
  if SHX2_2 then
    SHX2_2 = SHX10_1.members
    SHX2_2 = SHX2_2[SHX0_2]
    if SHX2_2 then
      SHX2_2 = SHX10_1.members
      SHX2_2 = SHX2_2[SHX0_2]
      SHX2_2.colour = SHX1_2
    end
  end
end
SHX44_1(SHX45_1, SHX46_1)
SHX44_1 = RegisterNetEvent
SHX45_1 = "f4a19c737d"
function SHX46_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX20_1
  if SHX2_2 then
    SHX2_2 = SHX20_1.members
    SHX2_2 = SHX2_2[SHX0_2]
    if SHX2_2 then
      SHX2_2 = SHX20_1.members
      SHX2_2 = SHX2_2[SHX0_2]
      SHX2_2.colour = SHX1_2
    end
  end
end
SHX44_1(SHX45_1, SHX46_1)
SHX44_1 = RegisterNetEvent
SHX45_1 = "6d46904865"
function SHX46_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX10_1
  if SHX2_2 then
    SHX2_2 = SHX10_1.guests
    SHX2_2 = SHX2_2[SHX0_2]
    if SHX2_2 then
      SHX2_2 = SHX10_1.guests
      SHX2_2 = SHX2_2[SHX0_2]
      SHX2_2.colour = SHX1_2
    end
  end
end
SHX44_1(SHX45_1, SHX46_1)
SHX44_1 = RegisterNetEvent
SHX45_1 = "71c5863a91"
function SHX46_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX20_1
  if SHX2_2 then
    SHX2_2 = SHX20_1.guests
    SHX2_2 = SHX2_2[SHX0_2]
    if SHX2_2 then
      SHX2_2 = SHX20_1.guests
      SHX2_2 = SHX2_2[SHX0_2]
      SHX2_2.colour = SHX1_2
    end
  end
end
SHX44_1(SHX45_1, SHX46_1)
SHX44_1 = RegisterNetEvent
SHX45_1 = "bb3efd07e8"
function SHX46_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX10_1
  if SHX1_2 then
    SHX10_1.contributions = SHX0_2
  end
end
SHX44_1(SHX45_1, SHX46_1)
SHX44_1 = CMG
function SHX45_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX10_1
  SHX0_2 = nil ~= SHX0_2
  return SHX0_2
end
SHX44_1.isInGang = SHX45_1
SHX44_1 = CMG
function SHX45_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = false
  return SHX0_2
end
SHX44_1.isGuestGangSelected = SHX45_1
SHX44_1 = CMG
function SHX45_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
end
SHX44_1.setGuestGangSelected = SHX45_1
SHX44_1 = CMG
function SHX45_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX10_1
  if SHX0_2 then
    SHX0_2 = SHX10_1.isAdvanced
    if SHX0_2 then
      SHX0_2 = true
      return SHX0_2
    end
  end
  SHX0_2 = false
  return SHX0_2
end
SHX44_1.isMainGangAdvanced = SHX45_1
SHX44_1 = CMG
function SHX45_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX10_1
  if SHX1_2 then
    SHX1_2 = SHX10_1.members
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.getClientUserId
    SHX2_2 = SHX2_2()
    SHX1_2 = SHX1_2[SHX2_2]
    if SHX1_2 then
      SHX2_2 = SHX1_2.permissions
      if SHX2_2 then
        SHX2_2 = SHX1_2.permissions
        SHX2_2 = SHX2_2[SHX0_2]
        if not SHX2_2 then
          SHX2_2 = SHX1_2.permissions
          SHX2_2 = SHX2_2.leader
          if not SHX2_2 then
            goto SHX_LABEL_24
          end
        end
        SHX2_2 = true
        return SHX2_2
      end
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_24:: outside nested blocks until all 'goto SHX_LABEL_24' can see it
  ::SHX_LABEL_24::
  SHX1_2 = false
  return SHX1_2
end
SHX44_1.hasGangPermission = SHX45_1
SHX44_1 = CMG
function SHX45_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX33_1
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX1_2 = SHX0_2.isAdvanced
    if SHX1_2 then
      SHX1_2 = true
      return SHX1_2
    end
  end
  SHX1_2 = false
  return SHX1_2
end
SHX44_1.isSelectedGangAdvanced = SHX45_1
SHX44_1 = CMG
function SHX45_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX33_1
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX1_2 = SHX0_2.isAdvanced
    if SHX1_2 then
      SHX1_2 = SHX15_1.blips
      if SHX1_2 then
        SHX1_2 = CMG
        SHX1_2 = SHX1_2.inEvent
        SHX1_2 = SHX1_2()
        if not SHX1_2 then
          SHX1_2 = CMG
          SHX1_2 = SHX1_2.hasRadioItem
          SHX1_2 = SHX1_2()
          if SHX1_2 then
            SHX1_2 = CMG
            SHX1_2 = SHX1_2.gangOrgClientState
            if SHX1_2 then
              SHX2_2 = SHX1_2.hasOrgPack
              if true == SHX2_2 then
                SHX2_2 = CMG
                SHX2_2 = SHX2_2.isClientClockedOnOrganisation
                SHX2_2 = SHX2_2()
                if not SHX2_2 then
                  SHX2_2 = false
                  return SHX2_2
                end
              end
            end
            SHX2_2 = true
            return SHX2_2
          end
        end
      end
    end
  end
  SHX1_2 = false
  return SHX1_2
end
SHX44_1.hasGangBlipsEnabled = SHX45_1
SHX44_1 = AddEventHandler
SHX45_1 = "e892eba4b7"
function SHX46_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = TriggerEvent
  SHX1_2 = "e713d91b70"
  SHX0_2(SHX1_2)
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "f9c26121e2"
  SHX2_2 = nil
  SHX0_2(SHX1_2, SHX2_2)
end
SHX44_1(SHX45_1, SHX46_1)
SHX44_1 = AddEventHandler
SHX45_1 = "f7b3a54a8f"
function SHX46_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hasGangBlipsEnabled
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX0_2 = SHX33_1
    SHX0_2 = SHX0_2()
    SHX1_2 = SHX10_1
    if SHX0_2 == SHX1_2 then
      SHX0_2 = "own"
      if SHX0_2 then
        goto SHX_LABEL_15
      end
    end
    SHX0_2 = "guest"
    -- [FIX IF ERROR] Move ::SHX_LABEL_15:: outside nested blocks until all 'goto SHX_LABEL_15' can see it
    ::SHX_LABEL_15::
    SHX1_2 = TriggerServerEvent
    SHX2_2 = "f9c26121e2"
    SHX3_2 = SHX0_2
    SHX1_2(SHX2_2, SHX3_2)
  end
end
SHX44_1(SHX45_1, SHX46_1)
SHX44_1 = CMG
function SHX45_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX33_1
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX1_2 = SHX0_2.isAdvanced
    if SHX1_2 then
      SHX1_2 = SHX15_1.names
      if SHX1_2 then
        SHX1_2 = CMG
        SHX1_2 = SHX1_2.inEvent
        SHX1_2 = SHX1_2()
        if not SHX1_2 then
          SHX1_2 = CMG
          SHX1_2 = SHX1_2.hasRadioItem
          SHX1_2 = SHX1_2()
          if SHX1_2 then
            SHX1_2 = true
            return SHX1_2
          end
        end
      end
    end
  end
  SHX1_2 = false
  return SHX1_2
end
SHX44_1.hasGangNamesEnabled = SHX45_1
SHX44_1 = CMG
function SHX45_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = SHX33_1
  SHX1_2 = SHX1_2()
  if SHX1_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.inEvent
    SHX2_2 = SHX2_2()
    if not SHX2_2 then
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.clientGetUserIdFromSource
      SHX3_2 = SHX0_2
      SHX2_2 = SHX2_2(SHX3_2)
      if SHX2_2 then
        SHX3_2 = SHX1_2.members
        SHX3_2 = SHX3_2[SHX2_2]
        if SHX3_2 then
          SHX4_2 = true
          SHX5_2 = SHX0_1.colourLookup
          SHX6_2 = SHX3_2.colour
          SHX5_2 = SHX5_2[SHX6_2]
          if not SHX5_2 then
            SHX5_2 = SHX28_1
          end
          return SHX4_2, SHX5_2
        end
        SHX4_2 = SHX1_2.guests
        SHX4_2 = SHX4_2[SHX2_2]
        if SHX4_2 then
          SHX5_2 = true
          SHX6_2 = SHX0_1.colourLookup
          SHX7_2 = SHX4_2.colour
          SHX6_2 = SHX6_2[SHX7_2]
          if not SHX6_2 then
            SHX6_2 = SHX28_1
          end
          return SHX5_2, SHX6_2
        end
      end
    end
  end
  SHX2_2 = false
  SHX3_2 = SHX28_1
  return SHX2_2, SHX3_2
end
SHX44_1.isPlayerInSelectedGang = SHX45_1
SHX44_1 = CMG
function SHX45_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX15_1
  if SHX1_2 then
    SHX1_2 = SHX15_1.pinnedPlayers
    if SHX1_2 then
      SHX1_2 = SHX15_1.pinnedPlayers
      SHX1_2 = SHX1_2[SHX0_2]
      if SHX1_2 then
        goto SHX_LABEL_12
      end
    end
  end
  SHX1_2 = false
  -- [FIX IF ERROR] Move ::SHX_LABEL_12:: outside nested blocks until all 'goto SHX_LABEL_12' can see it
  ::SHX_LABEL_12::
  return SHX1_2
end
SHX44_1.isPlayerPinnedInGang = SHX45_1
function SHX44_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = GetControlInstructionalButton
  SHX1_2 = 2
  SHX2_2 = -175937621
  SHX3_2 = true
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX1_2 = GetControlInstructionalButton
  SHX2_2 = 2
  SHX3_2 = -1943871200
  SHX4_2 = true
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = SHX0_2 == SHX1_2
  return SHX0_2
end
SHX45_1 = RegisterCommand
SHX46_1 = "pinglocation"
function SHX47_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  SHX0_2 = SHX33_1
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX1_2 = SHX0_2.isAdvanced
    if SHX1_2 then
      SHX1_2 = SHX15_1.pings
      if SHX1_2 then
        SHX1_2 = CMG
        SHX1_2 = SHX1_2.isEmergencyService
        SHX1_2 = SHX1_2()
        if not SHX1_2 then
          SHX1_2 = CMG
          SHX1_2 = SHX1_2.inEvent
          SHX1_2 = SHX1_2()
          if not SHX1_2 then
            SHX1_2 = CMG
            SHX1_2 = SHX1_2.hasRadioItem
            SHX1_2 = SHX1_2()
            if SHX1_2 then
              SHX1_2 = SHX44_1
              SHX1_2 = SHX1_2()
              if SHX1_2 then
                SHX1_2 = SHX0_2.pings
                SHX2_2 = CMG
                SHX2_2 = SHX2_2.getClientUserId
                SHX2_2 = SHX2_2()
                SHX1_2 = SHX1_2[SHX2_2]
                if SHX1_2 then
                  return
                end
              end
              SHX1_2 = GetGameplayCamCoord
              SHX1_2 = SHX1_2()
              SHX2_2 = CMG
              SHX2_2 = SHX2_2.rotationToDirection
              SHX3_2 = GetGameplayCamRot
              SHX4_2 = 2
              SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2 = SHX3_2(SHX4_2)
              SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
              SHX3_2 = SHX2_2 * 500.0
              SHX3_2 = SHX1_2 + SHX3_2
              SHX4_2 = _ENV
              SHX5_2 = "StartExpensiveSynchronousShapeTestLosProbe"
              SHX4_2 = SHX4_2[SHX5_2]
              SHX5_2 = SHX1_2.x
              SHX6_2 = SHX1_2.y
              SHX7_2 = SHX1_2.z
              SHX8_2 = SHX3_2.x
              SHX9_2 = SHX3_2.y
              SHX10_2 = SHX3_2.z
              SHX11_2 = -1
              SHX12_2 = PlayerPedId
              SHX12_2 = SHX12_2()
              SHX13_2 = 8
              SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
              SHX5_2 = GetShapeTestResult
              SHX6_2 = SHX4_2
              SHX5_2, SHX6_2, SHX7_2 = SHX5_2(SHX6_2)
              if not SHX6_2 or 0 == SHX6_2 then
                SHX8_2 = nil
                SHX9_2 = 2.0
                SHX10_2 = 20
                SHX11_2 = 500
                SHX12_2 = 1
                for SHX13_2 = SHX10_2, SHX11_2, SHX12_2 do
                  if SHX13_2 > 50 and not SHX8_2 then
                    SHX9_2 = 10.0
                  end
                  SHX14_2 = SHX2_2 * SHX13_2
                  SHX14_2 = SHX1_2 + SHX14_2
                  SHX15_2 = GetGroundZFor_3dCoord
                  SHX16_2 = SHX14_2.x
                  SHX17_2 = SHX14_2.y
                  SHX18_2 = SHX14_2.z
                  SHX19_2 = 0.0
                  SHX20_2 = false
                  SHX15_2, SHX16_2 = SHX15_2(SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
                  if SHX15_2 then
                    SHX17_2 = vector3
                    SHX18_2 = SHX14_2.x
                    SHX19_2 = SHX14_2.y
                    SHX20_2 = SHX16_2
                    SHX17_2 = SHX17_2(SHX18_2, SHX19_2, SHX20_2)
                    SHX18_2 = SHX14_2 - SHX17_2
                    SHX18_2 = #SHX18_2
                    if SHX9_2 > SHX18_2 then
                      SHX8_2 = SHX17_2
                      SHX9_2 = SHX18_2
                    end
                  end
                end
                if SHX8_2 then
                  SHX6_2 = true
                  SHX7_2 = SHX8_2
                end
              end
              if SHX6_2 and 0 ~= SHX6_2 then
                SHX8_2 = GetGameTimer
                SHX8_2 = SHX8_2()
                SHX25_1 = SHX8_2
                SHX8_2 = TriggerServerEvent
                SHX9_2 = "f1d8cdbd8e"
                SHX10_2 = SHX7_2
                SHX11_2 = false
                SHX8_2(SHX9_2, SHX10_2, SHX11_2)
              end
            end
          end
        end
      end
    end
  end
end
SHX48_1 = false
SHX45_1(SHX46_1, SHX47_1, SHX48_1)
SHX45_1 = RegisterKeyMapping
SHX46_1 = "pinglocation"
SHX47_1 = "Create Gang Ping"
SHX48_1 = "MOUSE_BUTTON"
SHX49_1 = "MOUSE_MIDDLE"
SHX45_1(SHX46_1, SHX47_1, SHX48_1, SHX49_1)
SHX45_1 = RegisterCommand
SHX46_1 = "deletepinglocation"
function SHX47_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = SHX33_1
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX1_2 = SHX0_2.pings
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.getClientUserId
    SHX2_2 = SHX2_2()
    SHX1_2 = SHX1_2[SHX2_2]
    if SHX1_2 then
      SHX1_2 = SHX44_1
      SHX1_2 = SHX1_2()
      if SHX1_2 then
        SHX1_2 = SHX0_2.pings
        SHX2_2 = CMG
        SHX2_2 = SHX2_2.getClientUserId
        SHX2_2 = SHX2_2()
        SHX1_2 = SHX1_2[SHX2_2]
        if not SHX1_2 then
          return
        end
      end
      SHX1_2 = TriggerServerEvent
      SHX2_2 = "f1d8cdbd8e"
      SHX3_2 = nil
      SHX4_2 = false
      SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    end
  end
end
SHX48_1 = false
SHX45_1(SHX46_1, SHX47_1, SHX48_1)
SHX45_1 = RegisterKeyMapping
SHX46_1 = "deletepinglocation"
SHX47_1 = "Delete Gang Ping"
SHX48_1 = "MOUSE_BUTTON"
SHX49_1 = "MOUSE_MIDDLE"
SHX45_1(SHX46_1, SHX47_1, SHX48_1, SHX49_1)
function SHX45_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getGangPingMarkerIndex
  SHX1_2 = SHX1_2()
  if 2 == SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.isEmergencyService
    SHX1_2 = SHX1_2()
    if not SHX1_2 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.inEvent
      SHX1_2 = SHX1_2()
      if not SHX1_2 then
        SHX1_2 = GetGroundZFor_3dCoord
        SHX2_2 = SHX0_2.x
        SHX3_2 = SHX0_2.y
        SHX4_2 = SHX0_2.z
        SHX5_2 = SHX0_2.z
        SHX6_2 = false
        SHX1_2, SHX2_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
        SHX3_2 = math
        SHX3_2 = SHX3_2.abs
        SHX4_2 = SHX0_2.z
        SHX4_2 = SHX2_2 - SHX4_2
        SHX3_2 = SHX3_2(SHX4_2)
        if SHX3_2 > 10.0 then
          SHX4_2 = SHX0_2.z
          if SHX4_2 then
            goto SHX_LABEL_35
          end
        end
        SHX4_2 = SHX2_2
        -- [FIX IF ERROR] Move ::SHX_LABEL_35:: outside nested blocks until all 'goto SHX_LABEL_35' can see it
        ::SHX_LABEL_35::
        SHX4_2 = SHX4_2 - 1.0
        SHX5_2 = CreateCheckpoint
        SHX6_2 = 47
        SHX7_2 = SHX0_2.x
        SHX8_2 = SHX0_2.y
        SHX9_2 = SHX4_2
        SHX10_2 = SHX0_2.x
        SHX11_2 = SHX0_2.y
        SHX12_2 = SHX0_2.z
        SHX12_2 = SHX12_2 + 200.0
        SHX13_2 = 1.0
        SHX14_2 = 255
        SHX15_2 = 50
        SHX16_2 = 50
        SHX17_2 = 125
        SHX18_2 = 0
        return SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
    end
  end
  else
    SHX1_2 = nil
    return SHX1_2
  end
end
function SHX46_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getGangAdditionalPingMarkerIndex
  SHX1_2 = SHX1_2()
  if 2 ~= SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getGangAdditionalPingMarkerIndex
    SHX1_2 = SHX1_2()
    if 4 ~= SHX1_2 then
      goto SHX_LABEL_25
    end
  end
  SHX1_2 = AddBlipForCoord
  SHX2_2 = SHX0_2.x
  SHX3_2 = SHX0_2.y
  SHX4_2 = SHX0_2.z
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = SetBlipSprite
  SHX3_2 = SHX1_2
  SHX4_2 = 162
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetBlipDisplay
  SHX3_2 = SHX1_2
  SHX4_2 = 9
  SHX2_2(SHX3_2, SHX4_2)
  return SHX1_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_25:: outside nested blocks until all 'goto SHX_LABEL_25' can see it
  ::SHX_LABEL_25::
  SHX1_2 = nil
  return SHX1_2
end
SHX47_1 = RegisterNetEvent
SHX48_1 = "f1d8cdbd8e"
function SHX49_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX2_2 = SHX10_1
  if SHX2_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.hasRadioItem
    SHX2_2 = SHX2_2()
    if SHX2_2 then
      SHX2_2 = SHX10_1.pings
      SHX2_2 = SHX2_2[SHX0_2]
      if SHX2_2 then
        SHX3_2 = SHX2_2.checkpoint
        if SHX3_2 then
          SHX3_2 = DeleteCheckpoint
          SHX4_2 = SHX2_2.checkpoint
          SHX3_2(SHX4_2)
          SHX2_2.checkpoint = nil
        end
      end
      if SHX2_2 then
        SHX3_2 = SHX2_2.blip
        if SHX3_2 then
          SHX3_2 = RemoveBlip
          SHX4_2 = SHX2_2.blip
          SHX3_2(SHX4_2)
          SHX2_2.blip = nil
        end
      end
      if SHX1_2 then
        SHX3_2 = SHX10_1.pings
        SHX4_2 = {}
        SHX4_2.position = SHX1_2
        SHX5_2 = SHX45_1
        SHX6_2 = SHX1_2
        SHX5_2 = SHX5_2(SHX6_2)
        SHX4_2.checkpoint = SHX5_2
        SHX5_2 = SHX46_1
        SHX6_2 = SHX1_2
        SHX5_2 = SHX5_2(SHX6_2)
        SHX4_2.blip = SHX5_2
        SHX3_2[SHX0_2] = SHX4_2
        SHX3_2 = SHX26_1
        if SHX3_2 > 0 then
          SHX3_2 = CMG
          SHX3_2 = SHX3_2.getClientUserId
          SHX3_2 = SHX3_2()
          if SHX0_2 ~= SHX3_2 then
            SHX3_2 = SendNUIMessage
            SHX4_2 = {}
            SHX5_2 = "gangping"
            SHX6_2 = tostring
            SHX7_2 = SHX26_1
            SHX6_2 = SHX6_2(SHX7_2)
            SHX5_2 = SHX5_2 .. SHX6_2
            SHX4_2.transactionType = SHX5_2
            SHX5_2 = SHX27_1
            SHX4_2.volumeOverride = SHX5_2
            SHX3_2(SHX4_2)
          end
        end
      else
        SHX3_2 = SHX10_1.pings
        SHX3_2[SHX0_2] = nil
      end
    end
  end
end
SHX47_1(SHX48_1, SHX49_1)
SHX47_1 = RegisterNetEvent
SHX48_1 = "eef17f8aa1"
function SHX49_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = SHX20_1
  if SHX2_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.hasRadioItem
    SHX2_2 = SHX2_2()
    if SHX2_2 then
      SHX2_2 = SHX20_1.pings
      SHX2_2 = SHX2_2[SHX0_2]
      if SHX2_2 then
        SHX3_2 = SHX2_2.checkpoint
        if SHX3_2 then
          SHX3_2 = DeleteCheckpoint
          SHX4_2 = SHX2_2.checkpoint
          SHX3_2(SHX4_2)
          SHX2_2.checkpoint = nil
        end
      end
      if SHX2_2 then
        SHX3_2 = SHX2_2.blip
        if SHX3_2 then
          SHX3_2 = RemoveBlip
          SHX4_2 = SHX2_2.blip
          SHX3_2(SHX4_2)
          SHX2_2.blip = nil
        end
      end
      if SHX1_2 then
        SHX3_2 = SHX20_1.pings
        SHX4_2 = {}
        SHX4_2.position = SHX1_2
        SHX5_2 = SHX45_1
        SHX6_2 = SHX1_2
        SHX5_2 = SHX5_2(SHX6_2)
        SHX4_2.checkpoint = SHX5_2
        SHX5_2 = SHX46_1
        SHX6_2 = SHX1_2
        SHX5_2 = SHX5_2(SHX6_2)
        SHX4_2.blip = SHX5_2
        SHX3_2[SHX0_2] = SHX4_2
      else
        SHX3_2 = SHX20_1.pings
        SHX3_2[SHX0_2] = nil
      end
    end
  end
end
SHX47_1(SHX48_1, SHX49_1)
SHX47_1 = 0.8
SHX48_1 = 0
SHX49_1 = {}
SHX49_1.metpd = true
SHX49_1.nhs = true
SHX49_1.hmp = true
SHX49_1.lfb = true
function SHX50_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2
  SHX0_2 = 0
  SHX1_2 = SHX33_1
  SHX1_2 = SHX1_2()
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getGangUIPostion
  SHX2_2 = SHX2_2()
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getShowHealthPercentageFlag
  SHX3_2 = SHX3_2()
  SHX4_2 = {}
  if SHX1_2 then
    SHX5_2 = SHX1_2.isAdvanced
    if SHX5_2 then
      SHX5_2 = CMG
      SHX5_2 = SHX5_2.isEmergencyService
      SHX5_2 = SHX5_2()
      if not SHX5_2 then
        SHX5_2 = CMG
        SHX5_2 = SHX5_2.isDisplayVisible
        SHX6_2 = "gang"
        SHX5_2 = SHX5_2(SHX6_2)
        if SHX5_2 then
          SHX5_2 = CMG
          SHX5_2 = SHX5_2.inEvent
          SHX5_2 = SHX5_2()
          if not SHX5_2 then
            SHX5_2 = CMG
            SHX5_2 = SHX5_2.hasRadioItem
            SHX5_2 = SHX5_2()
            if SHX5_2 then
              SHX5_2 = SHX15_1.pings
              if SHX5_2 then
                SHX5_2 = GetGameplayCamCoord
                SHX5_2 = SHX5_2()
                SHX6_2 = HasStreamedTextureDictLoaded
                SHX7_2 = "cmg_gang"
                SHX6_2 = SHX6_2(SHX7_2)
                SHX7_2 = GetActiveScreenResolution
                SHX7_2, SHX8_2 = SHX7_2()
                SHX9_2 = SHX7_2 / SHX8_2
                SHX10_2 = CMG
                SHX10_2 = SHX10_2.getGangAdditionalPingMarkerIndex
                SHX10_2 = SHX10_2()
                SHX11_2 = pairs
                SHX12_2 = SHX1_2.pings
                SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX11_2(SHX12_2)
                for SHX15_2, SHX16_2 in SHX11_2, SHX12_2, SHX13_2, SHX14_2 do
                  SHX17_2 = GetScreenCoordFromWorldCoord
                  SHX18_2 = SHX16_2.position
                  SHX18_2 = SHX18_2.x
                  SHX19_2 = SHX16_2.position
                  SHX19_2 = SHX19_2.y
                  SHX20_2 = SHX16_2.position
                  SHX20_2 = SHX20_2.z
                  SHX17_2, SHX18_2, SHX19_2 = SHX17_2(SHX18_2, SHX19_2, SHX20_2)
                  if SHX17_2 then
                    SHX20_2 = SHX34_1
                    SHX21_2 = SHX1_2
                    SHX20_2 = SHX20_2(SHX21_2)
                    SHX20_2 = SHX20_2[SHX15_2]
                    if SHX20_2 then
                      SHX21_2 = SHX16_2.position
                      SHX21_2 = SHX5_2 - SHX21_2
                      SHX21_2 = #SHX21_2
                      SHX22_2 = tostring
                      SHX23_2 = math
                      SHX23_2 = SHX23_2.floor
                      SHX24_2 = SHX21_2
                      SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2 = SHX23_2(SHX24_2)
                      SHX22_2 = SHX22_2(SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2)
                      SHX23_2 = "m"
                      SHX22_2 = SHX22_2 .. SHX23_2
                      SHX23_2 = 1000.0
                      if SHX21_2 > SHX23_2 then
                        SHX23_2 = tostring
                        SHX24_2 = math
                        SHX24_2 = SHX24_2.round
                        SHX25_2 = SHX21_2 / 1000.0
                        SHX26_2 = 1
                        SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2 = SHX24_2(SHX25_2, SHX26_2)
                        SHX23_2 = SHX23_2(SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2)
                        SHX24_2 = "km"
                        SHX23_2 = SHX23_2 .. SHX24_2
                        SHX22_2 = SHX23_2
                      end
                      SHX23_2 = math
                      SHX23_2 = SHX23_2.min
                      SHX24_2 = SHX21_2 / 1000.0
                      SHX25_2 = 1.0
                      SHX23_2 = SHX23_2(SHX24_2, SHX25_2)
                      SHX23_2 = 0.4 * SHX23_2
                      SHX24_2 = CMG
                      SHX24_2 = SHX24_2.DrawText
                      SHX25_2 = SHX18_2
                      SHX26_2 = SHX19_2
                      SHX27_2 = SHX20_2.name
                      SHX28_2 = "\n"
                      SHX29_2 = SHX22_2
                      SHX27_2 = SHX27_2 .. SHX28_2 .. SHX29_2
                      SHX28_2 = 1.0
                      SHX28_2 = SHX28_2 - SHX23_2
                      SHX28_2 = 0.2 * SHX28_2
                      SHX29_2 = SHX47_1
                      SHX28_2 = SHX28_2 * SHX29_2
                      SHX29_2 = 0
                      SHX30_2 = 0
                      SHX31_2 = nil
                      SHX32_2 = true
                      SHX24_2(SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2)
                      if SHX6_2 then
                        SHX24_2 = CMG
                        SHX24_2 = SHX24_2.getGangPingMarkerIndex
                        SHX24_2 = SHX24_2()
                        if 3 == SHX24_2 then
                          SHX24_2 = SHX23_2 * 1.25
                          SHX25_2 = 1.0
                          SHX24_2 = SHX25_2 - SHX24_2
                          SHX25_2 = DrawSprite
                          SHX26_2 = "cmg_gang"
                          SHX27_2 = "ping"
                          SHX28_2 = SHX18_2
                          SHX29_2 = 0.01 * SHX24_2
                          SHX30_2 = SHX47_1
                          SHX29_2 = SHX29_2 * SHX30_2
                          SHX29_2 = SHX19_2 - SHX29_2
                          SHX30_2 = 0.03
                          SHX30_2 = SHX30_2 / SHX9_2
                          SHX30_2 = SHX30_2 * SHX24_2
                          SHX31_2 = SHX47_1
                          SHX30_2 = SHX30_2 * SHX31_2
                          SHX31_2 = 0.03 * SHX24_2
                          SHX32_2 = SHX47_1
                          SHX31_2 = SHX31_2 * SHX32_2
                          SHX32_2 = 0
                          SHX33_2 = 255
                          SHX34_2 = 255
                          SHX35_2 = 255
                          SHX36_2 = 255
                          SHX25_2(SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2)
                        end
                      end
                    end
                  end
                  if 3 == SHX10_2 or 4 == SHX10_2 then
                    SHX20_2 = CMG
                    SHX20_2 = SHX20_2.getPlayerCoords
                    SHX20_2 = SHX20_2()
                    SHX21_2 = math
                    SHX21_2 = SHX21_2.deg
                    SHX22_2 = math
                    SHX22_2 = SHX22_2.atan
                    SHX23_2 = SHX16_2.position
                    SHX23_2 = SHX23_2.x
                    SHX24_2 = SHX20_2.x
                    SHX23_2 = SHX23_2 - SHX24_2
                    SHX24_2 = SHX16_2.position
                    SHX24_2 = SHX24_2.y
                    SHX25_2 = SHX20_2.y
                    SHX24_2 = SHX24_2 - SHX25_2
                    SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2 = SHX22_2(SHX23_2, SHX24_2)
                    SHX21_2 = SHX21_2(SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2)
                    SHX21_2 = SHX21_2 % 360
                    SHX22_2 = CMG
                    SHX22_2 = SHX22_2.addCompassPing
                    SHX23_2 = SHX21_2
                    SHX22_2(SHX23_2)
                  end
                end
              end
              SHX5_2 = pairs
              SHX6_2 = SHX34_1
              SHX7_2 = SHX1_2
              SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2 = SHX6_2(SHX7_2)
              SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2)
              for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
                SHX11_2 = SHX15_1.pinnedPlayers
                SHX11_2 = SHX11_2[SHX9_2]
                if SHX11_2 then
                  SHX11_2 = fullPlayerListData
                  SHX11_2 = SHX11_2[SHX9_2]
                  if SHX11_2 then
                    SHX11_2 = CMG
                    SHX11_2 = SHX11_2.getJobType
                    SHX12_2 = SHX9_2
                    SHX11_2 = SHX11_2(SHX12_2)
                    SHX12_2 = SHX49_1
                    SHX11_2 = SHX12_2[SHX11_2]
                    if not SHX11_2 then
                      SHX11_2 = true
                      SHX12_2 = nil
                      SHX13_2 = nil
                      SHX14_2 = SHX16_1
                      SHX14_2 = SHX14_2[SHX9_2]
                      if SHX14_2 then
                        SHX12_2 = SHX14_2.health
                        SHX13_2 = SHX14_2.armour
                      end
                      SHX15_2 = fullPlayerListData
                      SHX15_2 = SHX15_2[SHX9_2]
                      SHX15_2 = SHX15_2[1]
                      if SHX15_2 then
                        SHX16_2 = GetPlayerFromServerId
                        SHX17_2 = SHX15_2
                        SHX16_2 = SHX16_2(SHX17_2)
                        if -1 ~= SHX16_2 then
                          SHX17_2 = GetPlayerPed
                          SHX18_2 = SHX16_2
                          SHX17_2 = SHX17_2(SHX18_2)
                          if 0 ~= SHX17_2 then
                            SHX18_2 = GetEntityHealth
                            SHX19_2 = SHX17_2
                            SHX18_2 = SHX18_2(SHX19_2)
                            SHX12_2 = SHX18_2
                            SHX18_2 = GetPedArmour
                            SHX19_2 = SHX17_2
                            SHX18_2 = SHX18_2(SHX19_2)
                            SHX13_2 = SHX18_2
                            SHX11_2 = false
                          end
                        end
                      end
                      if SHX12_2 and SHX13_2 then
                        SHX16_2 = math
                        SHX16_2 = SHX16_2.min
                        SHX17_2 = SHX12_2
                        SHX18_2 = 200
                        SHX16_2 = SHX16_2(SHX17_2, SHX18_2)
                        SHX17_2 = math
                        SHX17_2 = SHX17_2.max
                        SHX18_2 = 0
                        SHX19_2 = math
                        SHX19_2 = SHX19_2.floor
                        SHX20_2 = SHX16_2 - 100
                        SHX20_2 = SHX20_2 / 100.0
                        SHX20_2 = SHX20_2 * 100
                        SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2 = SHX19_2(SHX20_2)
                        SHX17_2 = SHX17_2(SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2)
                        SHX18_2 = SHX13_2
                        if SHX12_2 <= 102 then
                          SHX18_2 = 0
                        end
                        if nil ~= SHX14_2 then
                          SHX19_2 = SHX14_2.hasRadio
                        end
                        SHX19_2 = CMG
                        SHX19_2 = SHX19_2.doesPlayerHaveRadioItem
                        SHX20_2 = SHX15_2
                        SHX19_2 = true == SHX19_2 or SHX19_2
                        SHX20_2 = table
                        SHX20_2 = SHX20_2.insert
                        SHX21_2 = SHX4_2
                        SHX22_2 = {}
                        SHX23_2 = SHX10_2.name
                        SHX22_2.name = SHX23_2
                        SHX22_2.health = SHX17_2
                        SHX22_2.armour = SHX18_2
                        SHX22_2.hasRadio = SHX19_2
                        SHX20_2(SHX21_2, SHX22_2)
                      end
                      if SHX11_2 then
                        SHX0_2 = SHX0_2 + 1
                      end
                    end
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  SHX5_2 = GetGameTimer
  SHX5_2 = SHX5_2()
  SHX6_2 = SHX48_1
  SHX6_2 = SHX5_2 - SHX6_2
  if SHX6_2 > 100 then
    SHX48_1 = SHX5_2
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.uiSendMessage
    SHX7_2 = {}
    SHX7_2.action = "GANG_PINNED_UPDATE"
    SHX8_2 = {}
    SHX8_2.players = SHX4_2
    SHX9_2 = {}
    SHX10_2 = SHX2_2.x
    SHX9_2.x = SHX10_2
    SHX10_2 = SHX2_2.y
    SHX9_2.y = SHX10_2
    SHX8_2.position = SHX9_2
    SHX9_2 = CMG
    SHX9_2 = SHX9_2.getGangUIScaleMultiplier
    SHX9_2 = SHX9_2()
    SHX8_2.scale = SHX9_2
    SHX8_2.showPercentage = SHX3_2
    SHX7_2.payload = SHX8_2
    SHX6_2(SHX7_2)
  end
  SHX6_2 = SHX17_1
  if SHX6_2 then
    SHX6_2 = SHX17_1
    if SHX6_2 == SHX1_2 then
      if SHX0_2 <= 0 then
        SHX6_2 = TriggerServerEvent
        SHX7_2 = "dc39cfbe4e"
        SHX8_2 = nil
        SHX6_2(SHX7_2, SHX8_2)
        SHX6_2 = nil
        SHX17_1 = SHX6_2
      end
  end
  elseif SHX0_2 > 0 then
    SHX6_2 = SHX10_1
    if SHX1_2 == SHX6_2 then
      SHX6_2 = "own"
      if SHX6_2 then
        goto SHX_LABEL_366
      end
    end
    SHX6_2 = "guest"
    -- [FIX IF ERROR] Move ::SHX_LABEL_366:: outside nested blocks until all 'goto SHX_LABEL_366' can see it
    ::SHX_LABEL_366::
    SHX7_2 = TriggerServerEvent
    SHX8_2 = "dc39cfbe4e"
    SHX9_2 = SHX6_2
    SHX7_2(SHX8_2, SHX9_2)
    SHX17_1 = SHX1_2
  end
end
SHX51_1 = AddEventHandler
SHX52_1 = "CMG:onDisplayVisiblityChange"
function SHX53_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  if "gang" ~= SHX0_2 then
    return
  end
  if SHX1_2 then
    return
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getGangUIPostion
  SHX2_2 = SHX2_2()
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.uiSendMessage
  SHX4_2 = {}
  SHX4_2.action = "GANG_PINNED_UPDATE"
  SHX5_2 = {}
  SHX6_2 = {}
  SHX5_2.players = SHX6_2
  SHX6_2 = {}
  SHX7_2 = SHX2_2.x
  SHX6_2.x = SHX7_2
  SHX7_2 = SHX2_2.y
  SHX6_2.y = SHX7_2
  SHX5_2.position = SHX6_2
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.getGangUIScaleMultiplier
  SHX6_2 = SHX6_2()
  SHX5_2.scale = SHX6_2
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.getShowHealthPercentageFlag
  SHX6_2 = SHX6_2()
  SHX5_2.showPercentage = SHX6_2
  SHX4_2.payload = SHX5_2
  SHX3_2(SHX4_2)
end
SHX51_1(SHX52_1, SHX53_1)
SHX51_1 = CMG
SHX51_1 = SHX51_1.createThreadOnTick
SHX52_1 = SHX50_1
SHX53_1 = "Gang Location Pings"
SHX51_1(SHX52_1, SHX53_1)
SHX51_1 = RegisterNetEvent
SHX52_1 = "028443631e"
function SHX53_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX33_1
  SHX1_2 = SHX1_2()
  if "polblips" == SHX0_2 and SHX1_2 then
    SHX2_2 = SHX1_2.isAdvanced
    if SHX2_2 then
      SHX2_2 = SHX15_1.blips
      if SHX2_2 then
        SHX2_2 = TriggerEvent
        SHX3_2 = "e713d91b70"
        SHX2_2(SHX3_2)
        SHX2_2 = TriggerServerEvent
        SHX3_2 = "f9c26121e2"
        SHX4_2 = "own"
        SHX2_2(SHX3_2, SHX4_2)
      end
    end
  end
end
SHX51_1(SHX52_1, SHX53_1)
SHX51_1 = Citizen
SHX51_1 = SHX51_1.CreateThread
function SHX52_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  while true do
    SHX0_2 = SHX25_1
    if SHX0_2 > 0 then
      SHX0_2 = GetGameTimer
      SHX0_2 = SHX0_2()
      SHX1_2 = SHX25_1
      SHX0_2 = SHX0_2 - SHX1_2
      SHX1_2 = 300000
      if SHX0_2 > SHX1_2 then
        SHX0_2 = CMG
        SHX0_2 = SHX0_2.getClientUserId
        SHX0_2 = SHX0_2()
        SHX1_2 = SHX10_1
        if SHX1_2 then
          SHX1_2 = SHX10_1.pings
          if SHX1_2 then
            SHX1_2 = SHX10_1.pings
            SHX1_2 = SHX1_2[SHX0_2]
            if SHX1_2 then
              SHX1_2 = TriggerServerEvent
              SHX2_2 = "f1d8cdbd8e"
              SHX3_2 = nil
              SHX4_2 = false
              SHX1_2(SHX2_2, SHX3_2, SHX4_2)
            end
          end
        end
        SHX1_2 = 0
        SHX25_1 = SHX1_2
      end
    end
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 15000
    SHX0_2(SHX1_2)
  end
end
SHX51_1(SHX52_1)
SHX51_1 = AddEventHandler
SHX52_1 = "1c597fc419"
function SHX53_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  SHX26_1 = SHX0_2
  if SHX1_2 >= 0.0 and SHX1_2 <= 1.0 then
    SHX27_1 = SHX1_2
  end
end
SHX51_1(SHX52_1, SHX53_1)
SHX51_1 = RegisterNetEvent
SHX52_1 = "e35812009c"
function SHX53_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX10_1
  if SHX1_2 then
    SHX10_1.additionalRadios = SHX0_2
  end
end
SHX51_1(SHX52_1, SHX53_1)
SHX51_1 = RegisterNetEvent
SHX52_1 = "bdbde03161"
function SHX53_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2
  SHX3_2 = SHX30_1
  SHX3_2 = SHX3_2[SHX0_2]
  if SHX3_2 then
    SHX4_2 = SHX3_2.relationships
    SHX4_2[SHX1_2] = SHX2_2
  end
end
SHX51_1(SHX52_1, SHX53_1)
function SHX51_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.clearEnemyGamerTags
  SHX0_2()
end
SHX52_1 = false
SHX53_1 = Citizen
SHX53_1 = SHX53_1.CreateThread
function SHX54_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2, SHX37_2, SHX38_2
  SHX0_2 = SHX0_1.turfSystemEnabled
  if not SHX0_2 then
    SHX0_2 = true
    SHX52_1 = SHX0_2
    return
  end
  SHX0_2 = 30.0
  SHX1_2 = 40
  SHX2_2 = pairs
  SHX3_2 = SHX0_1.turfs
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = PolyZone
    SHX9_2 = SHX8_2
    SHX8_2 = SHX8_2.Create
    SHX10_2 = SHX7_2.bounds
    SHX11_2 = {}
    SHX12_2 = SHX7_2.name
    if not SHX12_2 then
      SHX12_2 = "turf_"
      SHX13_2 = SHX6_2
      SHX12_2 = SHX12_2 .. SHX13_2
    end
    SHX11_2.name = SHX12_2
    SHX11_2.minZ = 0.0
    SHX11_2.maxZ = 150.0
    SHX11_2.debugGrid = false
    SHX11_2.createLines = false
    SHX11_2.gridDivisions = 25
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2)
    SHX10_2 = SHX7_2.name
    SHX9_2 = SHX32_1
    SHX11_2 = {}
    SHX9_2[SHX10_2] = SHX11_2
    SHX9_2 = nil
    SHX10_2 = nil
    SHX11_2 = nil
    SHX12_2 = nil
    SHX13_2 = ipairs
    SHX14_2 = SHX7_2.bounds
    SHX13_2, SHX14_2, SHX15_2, SHX16_2 = SHX13_2(SHX14_2)
    for SHX17_2, SHX18_2 in SHX13_2, SHX14_2, SHX15_2, SHX16_2 do
      SHX19_2 = SHX18_2.x
      SHX20_2 = SHX18_2.y
      if 1 == SHX17_2 then
        SHX21_2 = SHX19_2
        SHX10_2 = SHX19_2
        SHX9_2 = SHX21_2
        SHX21_2 = SHX20_2
        SHX12_2 = SHX20_2
        SHX11_2 = SHX21_2
      else
        if SHX19_2 < SHX9_2 then
          SHX9_2 = SHX19_2
        end
        if SHX19_2 > SHX10_2 then
          SHX10_2 = SHX19_2
        end
        if SHX20_2 < SHX11_2 then
          SHX11_2 = SHX20_2
        end
        if SHX20_2 > SHX12_2 then
          SHX12_2 = SHX20_2
        end
      end
    end
    SHX13_2 = SHX7_2.bounds
    SHX13_2 = SHX13_2[1]
    if SHX13_2 then
      SHX13_2 = SHX7_2.bounds
      SHX13_2 = SHX13_2[1]
      SHX13_2 = SHX13_2.z
      if SHX13_2 then
        goto SHX_LABEL_77
      end
    end
    SHX13_2 = 0.0
    -- [FIX IF ERROR] Move ::SHX_LABEL_77:: outside nested blocks until all 'goto SHX_LABEL_77' can see it
    ::SHX_LABEL_77::
    SHX14_2 = SHX10_2 - SHX9_2
    SHX15_2 = SHX12_2 - SHX11_2
    SHX16_2 = math
    SHX16_2 = SHX16_2.floor
    SHX17_2 = SHX14_2 / SHX0_2
    SHX16_2 = SHX16_2(SHX17_2)
    SHX16_2 = SHX16_2 + 1
    SHX17_2 = math
    SHX17_2 = SHX17_2.floor
    SHX18_2 = SHX15_2 / SHX0_2
    SHX17_2 = SHX17_2(SHX18_2)
    SHX17_2 = SHX17_2 + 1
    SHX18_2 = {}
    SHX19_2 = 0
    SHX20_2 = SHX17_2 - 1
    SHX21_2 = 1
    for SHX22_2 = SHX19_2, SHX20_2, SHX21_2 do
      SHX23_2 = {}
      SHX18_2[SHX22_2] = SHX23_2
      SHX23_2 = SHX22_2 * SHX0_2
      SHX23_2 = SHX11_2 + SHX23_2
      SHX24_2 = 0
      SHX25_2 = SHX16_2 - 1
      SHX26_2 = 1
      for SHX27_2 = SHX24_2, SHX25_2, SHX26_2 do
        SHX28_2 = SHX27_2 * SHX0_2
        SHX28_2 = SHX9_2 + SHX28_2
        SHX29_2 = SHX0_2 * 0.5
        SHX29_2 = SHX28_2 + SHX29_2
        SHX30_2 = SHX0_2 * 0.5
        SHX30_2 = SHX23_2 + SHX30_2
        SHX31_2 = SHX18_2[SHX22_2]
        SHX33_2 = SHX8_2
        SHX32_2 = SHX8_2.isPointInside
        SHX34_2 = vector3
        SHX35_2 = SHX29_2
        SHX36_2 = SHX30_2
        SHX37_2 = SHX13_2
        SHX34_2, SHX35_2, SHX36_2, SHX37_2, SHX38_2 = SHX34_2(SHX35_2, SHX36_2, SHX37_2)
        SHX32_2 = SHX32_2(SHX33_2, SHX34_2, SHX35_2, SHX36_2, SHX37_2, SHX38_2)
        SHX31_2[SHX27_2] = SHX32_2
      end
    end
    SHX19_2 = 0
    SHX20_2 = 0
    SHX21_2 = SHX17_2 - 1
    SHX22_2 = 1
    for SHX23_2 = SHX20_2, SHX21_2, SHX22_2 do
      SHX24_2 = SHX18_2[SHX23_2]
      SHX25_2 = 0
      while SHX16_2 > SHX25_2 do
        SHX26_2 = SHX24_2[SHX25_2]
        if SHX26_2 then
          SHX26_2 = SHX25_2
          while true do
            SHX27_2 = SHX25_2 + 1
            if not (SHX16_2 > SHX27_2) then
              break
            end
            SHX27_2 = SHX25_2 + 1
            SHX27_2 = SHX24_2[SHX27_2]
            if not SHX27_2 then
              break
            end
            SHX25_2 = SHX25_2 + 1
          end
          SHX27_2 = SHX25_2
          SHX28_2 = SHX27_2 - SHX26_2
          SHX28_2 = SHX28_2 + 1
          SHX29_2 = SHX0_2 * SHX28_2
          SHX30_2 = SHX0_2
          SHX31_2 = SHX26_2 + SHX27_2
          SHX31_2 = SHX31_2 + 1
          SHX31_2 = SHX31_2 * 0.5
          SHX31_2 = SHX31_2 * SHX0_2
          SHX31_2 = SHX9_2 + SHX31_2
          SHX32_2 = SHX23_2 + 0.5
          SHX32_2 = SHX32_2 * SHX0_2
          SHX32_2 = SHX11_2 + SHX32_2
          SHX33_2 = AddBlipForArea
          SHX34_2 = SHX31_2
          SHX35_2 = SHX32_2
          SHX36_2 = SHX13_2
          SHX37_2 = SHX29_2
          SHX38_2 = SHX30_2
          SHX33_2 = SHX33_2(SHX34_2, SHX35_2, SHX36_2, SHX37_2, SHX38_2)
          SHX34_2 = SetBlipDisplay
          SHX35_2 = SHX33_2
          SHX36_2 = 3
          SHX34_2(SHX35_2, SHX36_2)
          SHX34_2 = SetBlipAlpha
          SHX35_2 = SHX33_2
          SHX36_2 = SHX0_1.blipAlpha
          SHX34_2(SHX35_2, SHX36_2)
          SHX34_2 = SetBlipColour
          SHX35_2 = SHX33_2
          SHX36_2 = SHX0_1.defaultTurfColour
          SHX34_2(SHX35_2, SHX36_2)
          SHX34_2 = SetBlipAsShortRange
          SHX35_2 = SHX33_2
          SHX36_2 = true
          SHX34_2(SHX35_2, SHX36_2)
          SHX34_2 = table
          SHX34_2 = SHX34_2.insert
          SHX36_2 = SHX7_2.name
          SHX35_2 = SHX32_1
          SHX35_2 = SHX35_2[SHX36_2]
          SHX36_2 = SHX33_2
          SHX34_2(SHX35_2, SHX36_2)
          SHX19_2 = SHX19_2 + 1
          if SHX1_2 <= SHX19_2 then
            SHX34_2 = print
            SHX35_2 = "[TURF] Reached max blips per turf for %s, stopping."
            SHX36_2 = SHX35_2
            SHX35_2 = SHX35_2.format
            SHX37_2 = SHX7_2.name
            SHX35_2, SHX36_2, SHX37_2, SHX38_2 = SHX35_2(SHX36_2, SHX37_2)
            SHX34_2(SHX35_2, SHX36_2, SHX37_2, SHX38_2)
            break
          end
        end
        SHX25_2 = SHX25_2 + 1
      end
      if SHX1_2 <= SHX19_2 then
        break
      end
    end
  end
  SHX2_2 = true
  SHX52_1 = SHX2_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.createThreadOnTick
  SHX3_2 = SHX51_1
  SHX4_2 = "Gang Turfs"
  SHX2_2(SHX3_2, SHX4_2)
end
SHX53_1(SHX54_1)
function SHX53_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  while true do
    SHX0_2 = SHX52_1
    if SHX0_2 then
      break
    end
    SHX0_2 = Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
  SHX0_2 = pairs
  SHX1_2 = SHX31_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX7_2 = SHX5_2.ownedByGangId
    SHX6_2 = SHX30_1
    SHX6_2 = SHX6_2[SHX7_2]
    SHX7_2 = SHX0_1.turfNameToIndex
    SHX7_2 = SHX7_2[SHX4_2]
    if SHX7_2 then
      SHX8_2 = SHX0_1.turfs
      SHX8_2 = SHX8_2[SHX7_2]
      SHX9_2 = SHX5_2.attackingBlip
      if SHX9_2 then
        SHX9_2 = RemoveBlip
        SHX10_2 = SHX5_2.attackingBlip
        SHX9_2(SHX10_2)
        SHX5_2.attackingBlip = nil
      end
      SHX9_2 = SHX5_2.ownedByGangId
      if SHX9_2 then
        SHX9_2 = SHX5_2.ownedByGangId
        SHX9_2 = SHX9_2 > 0
      end
      SHX10_2 = SHX9_2 or SHX10_2
      SHX10_2 = SHX6_2 or SHX10_2
      if SHX9_2 and SHX6_2 then
        SHX10_2 = SHX8_2.infoMarker
      end
      if not SHX10_2 then
        SHX11_2 = SHX5_2.ownerBlip
        if SHX11_2 then
          SHX11_2 = tCMG
          SHX11_2 = SHX11_2.removeBlip
          SHX12_2 = SHX5_2.ownerBlip
          SHX11_2(SHX12_2)
          SHX5_2.ownerBlip = nil
        end
      else
        SHX11_2 = SHX5_2.ownerBlip
        if not SHX11_2 then
          SHX11_2 = SHX6_1
          if SHX11_2 then
            SHX11_2 = tCMG
            SHX11_2 = SHX11_2.addBlip
            SHX12_2 = SHX8_2.infoMarker
            SHX12_2 = SHX12_2.x
            SHX13_2 = SHX8_2.infoMarker
            SHX13_2 = SHX13_2.y
            SHX14_2 = SHX8_2.infoMarker
            SHX14_2 = SHX14_2.z
            SHX15_2 = SHX6_2.blipId
            SHX16_2 = 1
            SHX17_2 = SHX6_2.name
            SHX18_2 = 1.0
            SHX19_2 = false
            SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
            SHX5_2.ownerBlip = SHX11_2
          end
        end
        SHX11_2 = SHX5_2.ownerBlip
        if SHX11_2 then
          SHX11_2 = SetBlipSprite
          SHX12_2 = SHX5_2.ownerBlip
          SHX13_2 = SHX6_2.blipId
          SHX11_2(SHX12_2, SHX13_2)
          SHX11_2 = SetBlipColour
          SHX12_2 = SHX5_2.ownerBlip
          SHX13_2 = 1
          SHX11_2(SHX12_2, SHX13_2)
          SHX11_2 = SetBlipScale
          SHX12_2 = SHX5_2.ownerBlip
          SHX13_2 = 1.0
          SHX11_2(SHX12_2, SHX13_2)
          SHX11_2 = AddTextEntryByHash
          SHX12_2 = GetHashKey
          SHX13_2 = SHX6_2.name
          SHX12_2 = SHX12_2(SHX13_2)
          SHX13_2 = SHX6_2.name
          SHX11_2(SHX12_2, SHX13_2)
          SHX11_2 = BeginTextCommandSetBlipName
          SHX12_2 = SHX6_2.name
          SHX11_2(SHX12_2)
          SHX11_2 = EndTextCommandSetBlipName
          SHX12_2 = SHX5_2.ownerBlip
          SHX11_2(SHX12_2)
        end
      end
    end
    SHX8_2 = SHX32_1
    SHX8_2 = SHX8_2[SHX4_2]
    if SHX8_2 then
      if SHX6_2 then
        SHX9_2 = SHX0_1.colourLookup
        SHX10_2 = SHX6_2.turfColour
        SHX9_2 = SHX9_2[SHX10_2]
        if not SHX9_2 then
          goto SHX_LABEL_141
        end
        SHX10_2 = SHX5_2.ownedByGangId
        if SHX10_2 then
          SHX10_2 = SHX9_2.blip
          if SHX10_2 then
            goto SHX_LABEL_118
          end
        end
        SHX10_2 = 0
        -- [FIX IF ERROR] Move ::SHX_LABEL_118:: outside nested blocks until all 'goto SHX_LABEL_118' can see it
        ::SHX_LABEL_118::
        SHX11_2 = pairs
        SHX12_2 = SHX8_2
        SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX11_2(SHX12_2)
        for SHX15_2, SHX16_2 in SHX11_2, SHX12_2, SHX13_2, SHX14_2 do
          SHX17_2 = SetBlipColour
          SHX18_2 = SHX16_2
          SHX19_2 = SHX10_2
          SHX17_2(SHX18_2, SHX19_2)
        end
      else
        SHX9_2 = pairs
        SHX10_2 = SHX8_2
        SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX9_2(SHX10_2)
        for SHX13_2, SHX14_2 in SHX9_2, SHX10_2, SHX11_2, SHX12_2 do
          SHX15_2 = SetBlipColour
          SHX16_2 = SHX14_2
          SHX17_2 = SHX0_1.defaultTurfColour
          SHX15_2(SHX16_2, SHX17_2)
        end
      end
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_141:: outside nested blocks until all 'goto SHX_LABEL_141' can see it
    ::SHX_LABEL_141::
  end
end
SHX54_1 = RegisterNetEvent
SHX55_1 = "adb903a8eb"
function SHX56_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = SHX30_1
  SHX2_2 = SHX2_2[SHX0_2]
  if SHX2_2 then
    SHX2_2.turfColour = SHX1_2
    SHX3_2 = SHX53_1
    SHX3_2()
  end
end
SHX54_1(SHX55_1, SHX56_1)
SHX54_1 = RegisterNetEvent
SHX55_1 = "db88e5e716"
function SHX56_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX30_1 = SHX0_2
  SHX1_2 = CMG
  SHX1_2.gangRecognisedGangs = SHX0_2
  SHX1_2 = SHX53_1
  SHX1_2()
end
SHX54_1(SHX55_1, SHX56_1)
SHX54_1 = RegisterNetEvent
SHX55_1 = "a014160254"
function SHX56_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX31_1 = SHX0_2
  SHX1_2 = CMG
  SHX1_2.gangCapturedTurfs = SHX0_2
  SHX1_2 = SHX53_1
  SHX1_2()
  SHX1_2 = TriggerEvent
  SHX2_2 = "e394af4876"
  SHX1_2(SHX2_2)
end
SHX54_1(SHX55_1, SHX56_1)
SHX54_1 = RegisterNetEvent
SHX55_1 = "62e40e243c"
function SHX56_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = SHX30_1
  SHX2_2 = SHX2_2[SHX0_2]
  if SHX2_2 then
    SHX3_2 = table
    SHX3_2 = SHX3_2.insert
    SHX4_2 = SHX2_2.onlinePlayers
    SHX5_2 = SHX1_2
    SHX3_2(SHX4_2, SHX5_2)
  end
end
SHX54_1(SHX55_1, SHX56_1)
SHX54_1 = RegisterNetEvent
SHX55_1 = "5da078c840"
function SHX56_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = SHX30_1
  SHX2_2 = SHX2_2[SHX0_2]
  if SHX2_2 then
    SHX3_2 = table
    SHX3_2 = SHX3_2.find
    SHX4_2 = SHX2_2.onlinePlayers
    SHX5_2 = SHX1_2
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
    SHX4_2 = assert
    SHX5_2 = SHX3_2
    SHX4_2(SHX5_2)
    SHX4_2 = table
    SHX4_2 = SHX4_2.insert
    SHX5_2 = SHX2_2.onlinePlayers
    SHX6_2 = SHX3_2
    SHX4_2(SHX5_2, SHX6_2)
  end
end
SHX54_1(SHX55_1, SHX56_1)
SHX54_1 = RegisterNetEvent
SHX55_1 = "b41c8a1869"
function SHX56_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = SHX0_1.turfs
  SHX2_2 = SHX2_2[SHX0_2]
  SHX4_2 = SHX2_2.name
  SHX3_2 = SHX31_1
  SHX3_2 = SHX3_2[SHX4_2]
  if not SHX3_2 then
    SHX4_2 = {}
    SHX3_2 = SHX4_2
    SHX5_2 = SHX2_2.name
    SHX4_2 = SHX31_1
    SHX4_2[SHX5_2] = SHX3_2
  end
  SHX3_2.ownedByGangId = SHX1_2
  SHX4_2 = SHX53_1
  SHX4_2()
end
SHX54_1(SHX55_1, SHX56_1)
SHX54_1 = CMG
function SHX55_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  if not SHX0_2 then
    SHX1_2 = SHX10_1
    SHX0_2 = SHX1_2 or SHX0_2
    if SHX1_2 then
      SHX0_2 = SHX10_1.id
    end
  end
  SHX1_2 = SHX30_1
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX2_2 = SHX1_2.textureName
    if SHX2_2 then
      SHX2_2 = SHX1_2.textureName
      return SHX2_2
    end
  end
  SHX2_2 = nil
  return SHX2_2
end
SHX54_1.getGangRecognisedTexture = SHX55_1
SHX54_1 = CMG
function SHX55_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX10_1
  if SHX0_2 then
    SHX0_2 = SHX10_1.id
  end
  return SHX0_2
end
SHX54_1.getGangId = SHX55_1
SHX54_1 = CMG
SHX54_1 = SHX54_1.registerDevMenuItems
SHX55_1 = "Gangs"
function SHX56_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = SHX10_1
  if not SHX0_2 then
    SHX0_2 = RageUI
    SHX0_2 = SHX0_2.Separator
    SHX1_2 = "~y~No Gang Selected."
    SHX0_2(SHX1_2)
    return
  end
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "Set Turf Owned Locally"
  SHX2_2 = "Sets the main gang to being owned locally. This will break sync, use in dev only."
  SHX3_2 = true
  function SHX4_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3
    if SHX2_3 then
      SHX3_3 = TriggerEvent
      SHX4_3 = "b41c8a1869"
      SHX5_3 = 1
      SHX6_3 = GetNetworkTime
      SHX6_3 = SHX6_3()
      SHX7_3 = SHX10_1.id
      SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "Debug Gang Blips"
  SHX2_2 = "Display all the gang blips near to 0,0. This is just to view them, does nothing else."
  SHX3_2 = true
  function SHX4_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3
    if SHX2_3 then
      SHX3_3 = pairs
      SHX4_3 = SHX0_1.debugGangBlips
      SHX3_3, SHX4_3, SHX5_3, SHX6_3 = SHX3_3(SHX4_3)
      for SHX7_3, SHX8_3 in SHX3_3, SHX4_3, SHX5_3, SHX6_3 do
        SHX9_3 = AddBlipForCoord
        SHX10_3 = 0.0
        SHX11_3 = SHX7_3 * 15.0
        SHX12_3 = 0.0
        SHX9_3 = SHX9_3(SHX10_3, SHX11_3, SHX12_3)
        SHX10_3 = SetBlipSprite
        SHX11_3 = SHX9_3
        SHX12_3 = SHX8_3
        SHX10_3(SHX11_3, SHX12_3)
      end
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
end
SHX54_1(SHX55_1, SHX56_1)
SHX54_1 = CMG
function SHX55_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX6_1 = SHX0_2
  if SHX0_2 then
    SHX1_2 = SHX0_1.blipAlpha
    if SHX1_2 then
      goto SHX_LABEL_8
    end
  end
  SHX1_2 = 0
  -- [FIX IF ERROR] Move ::SHX_LABEL_8:: outside nested blocks until all 'goto SHX_LABEL_8' can see it
  ::SHX_LABEL_8::
  SHX2_2 = pairs
  SHX3_2 = SHX32_1
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = pairs
    SHX9_2 = SHX7_2
    SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX8_2(SHX9_2)
    for SHX12_2, SHX13_2 in SHX8_2, SHX9_2, SHX10_2, SHX11_2 do
      SHX14_2 = DoesBlipExist
      SHX15_2 = SHX13_2
      SHX14_2 = SHX14_2(SHX15_2)
      if SHX14_2 then
        SHX14_2 = SetBlipAlpha
        SHX15_2 = SHX13_2
        SHX16_2 = SHX1_2
        SHX14_2(SHX15_2, SHX16_2)
      end
    end
  end
  SHX2_2 = pairs
  SHX3_2 = SHX31_1
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX7_2.ownerBlip
    if SHX8_2 then
      SHX8_2 = DoesBlipExist
      SHX9_2 = SHX7_2.ownerBlip
      SHX8_2 = SHX8_2(SHX9_2)
      if SHX8_2 then
        if SHX0_2 then
          SHX8_2 = 255
          if SHX8_2 then
            goto SHX_LABEL_49
          end
        end
        SHX8_2 = 0
        -- [FIX IF ERROR] Move ::SHX_LABEL_49:: outside nested blocks until all 'goto SHX_LABEL_49' can see it
        ::SHX_LABEL_49::
        SHX9_2 = SetBlipAlpha
        SHX10_2 = SHX7_2.ownerBlip
        SHX11_2 = SHX8_2
        SHX9_2(SHX10_2, SHX11_2)
      end
    end
    SHX8_2 = SHX7_2.attackingBlip
    if SHX8_2 then
      SHX8_2 = DoesBlipExist
      SHX9_2 = SHX7_2.attackingBlip
      SHX8_2 = SHX8_2(SHX9_2)
      if SHX8_2 then
        SHX8_2 = SetBlipAlpha
        SHX9_2 = SHX7_2.attackingBlip
        SHX10_2 = SHX1_2
        SHX8_2(SHX9_2, SHX10_2)
      end
    end
  end
end
SHX54_1.setShowTurfBlips = SHX55_1
SHX54_1 = false
function SHX55_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hasGangRpRagdollPerk
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX0_2 = false
    return SHX0_2
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.inEvent
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX0_2 = false
    return SHX0_2
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerCombatTimer
  SHX0_2 = SHX0_2()
  if SHX0_2 > 0 then
    SHX0_2 = false
    return SHX0_2
  end
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.canAnim
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX0_2 = false
    return SHX0_2
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  if 0 ~= SHX0_2 then
    SHX1_2 = IsEntityDead
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if not SHX1_2 then
      goto SHX_LABEL_41
    end
  end
  SHX1_2 = false
  return SHX1_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_41:: outside nested blocks until all 'goto SHX_LABEL_41' can see it
  ::SHX_LABEL_41::
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.isHandcuffed
  SHX1_2 = SHX1_2()
  if SHX1_2 then
    SHX1_2 = false
    return SHX1_2
  end
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.isInComa
  SHX1_2 = SHX1_2()
  if SHX1_2 then
    SHX1_2 = false
    return SHX1_2
  end
  SHX1_2 = IsPedInAnyVehicle
  SHX2_2 = SHX0_2
  SHX3_2 = false
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if SHX1_2 then
    SHX1_2 = false
    return SHX1_2
  end
  SHX1_2 = IsPedOnFoot
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = false
    return SHX1_2
  end
  SHX1_2 = IsPedSwimming
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = IsPedSwimmingUnderWater
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if not SHX1_2 then
      goto SHX_LABEL_82
    end
  end
  SHX1_2 = false
  return SHX1_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_82:: outside nested blocks until all 'goto SHX_LABEL_82' can see it
  ::SHX_LABEL_82::
  SHX1_2 = IsPedFalling
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = IsPedInParachuteFreeFall
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if not SHX1_2 then
      goto SHX_LABEL_94
    end
  end
  SHX1_2 = false
  return SHX1_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_94:: outside nested blocks until all 'goto SHX_LABEL_94' can see it
  ::SHX_LABEL_94::
  SHX1_2 = true
  return SHX1_2
end
SHX56_1 = RegisterCommand
SHX57_1 = "+cmgGangRpRagdoll"
function SHX58_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX55_1
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    return
  end
  SHX0_2 = true
  SHX54_1 = SHX0_2
  SHX0_2 = notify
  SHX1_2 = "~s~Release ~b~G ~s~to stop ragdolling."
  SHX0_2(SHX1_2)
end
SHX59_1 = false
SHX56_1(SHX57_1, SHX58_1, SHX59_1)
SHX56_1 = RegisterCommand
SHX57_1 = "-cmgGangRpRagdoll"
function SHX58_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = false
  SHX54_1 = SHX0_2
end
SHX59_1 = false
SHX56_1(SHX57_1, SHX58_1, SHX59_1)
SHX56_1 = RegisterKeyMapping
SHX57_1 = "+cmgGangRpRagdoll"
SHX58_1 = "Ragdoll (hold)"
SHX59_1 = "keyboard"
SHX60_1 = "G"
SHX56_1(SHX57_1, SHX58_1, SHX59_1, SHX60_1)
SHX56_1 = Citizen
SHX56_1 = SHX56_1.CreateThread
function SHX57_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  while true do
    SHX0_2 = SHX54_1
    if SHX0_2 then
      SHX0_2 = IsPauseMenuActive
      SHX0_2 = SHX0_2()
      if not SHX0_2 then
        SHX0_2 = SHX55_1
        SHX0_2 = SHX0_2()
        if SHX0_2 then
          goto SHX_LABEL_19
        end
      end
      SHX0_2 = false
      SHX54_1 = SHX0_2
      SHX0_2 = Citizen
      SHX0_2 = SHX0_2.Wait
      SHX1_2 = 200
      SHX0_2(SHX1_2)
      goto SHX_LABEL_42
      -- [FIX IF ERROR] Move ::SHX_LABEL_19:: outside nested blocks until all 'goto SHX_LABEL_19' can see it
      ::SHX_LABEL_19::
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.getPlayerPed
      SHX0_2 = SHX0_2()
      if 0 ~= SHX0_2 then
        SHX1_2 = SetPedToRagdoll
        SHX2_2 = SHX0_2
        SHX3_2 = 500
        SHX4_2 = 500
        SHX5_2 = 0
        SHX6_2 = false
        SHX7_2 = false
        SHX8_2 = false
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      end
      SHX1_2 = Citizen
      SHX1_2 = SHX1_2.Wait
      SHX2_2 = 0
      SHX1_2(SHX2_2)
    else
      SHX0_2 = Citizen
      SHX0_2 = SHX0_2.Wait
      SHX1_2 = 200
      SHX0_2(SHX1_2)
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_42:: outside nested blocks until all 'goto SHX_LABEL_42' can see it
    ::SHX_LABEL_42::
  end
end
SHX56_1(SHX57_1)
SHX56_1 = false
SHX57_1 = CMG
function SHX58_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX56_1
  if SHX1_2 then
    return
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.hasGangRpCarTheftPerk
  SHX1_2 = SHX1_2()
  if not SHX1_2 then
    return
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  if 0 ~= SHX1_2 then
    SHX2_2 = IsEntityDead
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if not SHX2_2 then
      goto SHX_LABEL_22
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_22:: outside nested blocks until all 'goto SHX_LABEL_22' can see it
  ::SHX_LABEL_22::
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.isHandcuffed
  SHX2_2 = SHX2_2()
  if SHX2_2 then
    return
  end
  SHX2_2 = tCMG
  SHX2_2 = SHX2_2.isInComa
  SHX2_2 = SHX2_2()
  if SHX2_2 then
    return
  end
  SHX2_2 = IsPedInAnyVehicle
  SHX3_2 = SHX1_2
  SHX4_2 = false
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  if SHX2_2 then
    return
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.isInGreenzone
  SHX2_2 = SHX2_2()
  if SHX2_2 then
    return
  end
  SHX2_2 = true
  SHX56_1 = SHX2_2
  SHX2_2 = TriggerServerEvent
  SHX3_2 = "8fe4aba1e5"
  SHX4_2 = SHX0_2
  SHX2_2(SHX3_2, SHX4_2)
end
SHX57_1.startGangCarjack = SHX58_1
SHX57_1 = RegisterNetEvent
SHX58_1 = "6539f54c12"
function SHX59_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = false
  SHX56_1 = SHX0_2
end
SHX57_1(SHX58_1, SHX59_1)
SHX57_1 = RegisterNetEvent
SHX58_1 = "7fbf0126af"
function SHX59_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX1_2 = GetPlayerFromServerId
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if -1 == SHX1_2 then
    SHX2_2 = false
    SHX56_1 = SHX2_2
    return
  end
  SHX2_2 = GetPlayerPed
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if 0 == SHX2_2 then
    SHX3_2 = false
    SHX56_1 = SHX3_2
    return
  end
  SHX3_2 = GetVehiclePedIsUsing
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if 0 == SHX3_2 then
    SHX4_2 = false
    SHX56_1 = SHX4_2
    return
  end
  SHX4_2 = PlayerPedId
  SHX4_2 = SHX4_2()
  SHX5_2 = GetPedRelationshipGroupHash
  SHX6_2 = SHX4_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = GetPedRelationshipGroupHash
  SHX7_2 = SHX2_2
  SHX6_2 = SHX6_2(SHX7_2)
  SHX7_2 = GetRelationshipBetweenGroups
  SHX8_2 = SHX5_2
  SHX9_2 = SHX6_2
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
  SHX8_2 = GetRelationshipBetweenGroups
  SHX9_2 = SHX6_2
  SHX10_2 = SHX5_2
  SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
  SHX9_2 = SetRelationshipBetweenGroups
  SHX10_2 = 5
  SHX11_2 = SHX5_2
  SHX12_2 = SHX6_2
  SHX9_2(SHX10_2, SHX11_2, SHX12_2)
  SHX9_2 = SetRelationshipBetweenGroups
  SHX10_2 = 5
  SHX11_2 = SHX6_2
  SHX12_2 = SHX5_2
  SHX9_2(SHX10_2, SHX11_2, SHX12_2)
  SHX9_2 = SetPedCanBeDraggedOut
  SHX10_2 = SHX2_2
  SHX11_2 = true
  SHX9_2(SHX10_2, SHX11_2)
  SHX9_2 = TaskEnterVehicle
  SHX10_2 = SHX4_2
  SHX11_2 = SHX3_2
  SHX12_2 = -1
  SHX13_2 = -1
  SHX14_2 = 1.0
  SHX15_2 = 8
  SHX16_2 = 0
  SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX9_2 = GetGameTimer
  SHX9_2 = SHX9_2()
  while true do
    SHX10_2 = GetVehiclePedIsIn
    SHX11_2 = SHX4_2
    SHX12_2 = false
    SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
    if SHX10_2 == SHX3_2 then
      break
    end
    SHX10_2 = GetGameTimer
    SHX10_2 = SHX10_2()
    SHX10_2 = SHX10_2 - SHX9_2
    SHX11_2 = 8000
    if SHX10_2 > SHX11_2 then
      break
    end
    SHX10_2 = Citizen
    SHX10_2 = SHX10_2.Wait
    SHX11_2 = 0
    SHX10_2(SHX11_2)
  end
  SHX10_2 = SetPedCanBeDraggedOut
  SHX11_2 = SHX2_2
  SHX12_2 = false
  SHX10_2(SHX11_2, SHX12_2)
  SHX10_2 = SetRelationshipBetweenGroups
  SHX11_2 = SHX7_2
  SHX12_2 = SHX5_2
  SHX13_2 = SHX6_2
  SHX10_2(SHX11_2, SHX12_2, SHX13_2)
  SHX10_2 = SetRelationshipBetweenGroups
  SHX11_2 = SHX8_2
  SHX12_2 = SHX6_2
  SHX13_2 = SHX5_2
  SHX10_2(SHX11_2, SHX12_2, SHX13_2)
  SHX10_2 = false
  SHX56_1 = SHX10_2
end
SHX57_1(SHX58_1, SHX59_1)
