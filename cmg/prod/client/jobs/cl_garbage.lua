-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1, SHX78_1, SHX79_1, SHX80_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_garbage"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = "clipset@move@trash_fast_turn"
SHX2_1 = -499989876
SHX3_1 = "anim@heists@narcotics@trash"
SHX4_1 = "throw_b"
SHX5_1 = 1000
SHX6_1 = "__garbageDevSecondBagPreviewA"
SHX7_1 = "__garbageDevSecondBagPreviewB"
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hasClientSkill
  SHX1_2 = "garbage_dual_bag_carry"
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX0_2 = 2
    return SHX0_2
  end
  SHX0_2 = 1
  return SHX0_2
end
SHX9_1 = {}
SHX10_1 = 1
SHX11_1 = 2
SHX12_1 = 0.4
SHX13_1 = {}
SHX13_1.active = false
SHX13_1.sessionId = nil
SHX13_1.leaderUserId = nil
SHX13_1.routeIndex = nil
SHX13_1.stopIndex = nil
SHX13_1.phase = nil
SHX14_1 = {}
SHX13_1.deposited = SHX14_1
SHX14_1 = {}
SHX13_1.carryingBagKeys = SHX14_1
SHX14_1 = {}
SHX13_1.localCarryKeys = SHX14_1
SHX13_1.truckNetId = nil
SHX13_1.carryingKey = nil
SHX13_1.payPerBag = 0
SHX13_1.isLeader = false
SHX13_1.truckEntity = 0
SHX13_1.stopBlip = 0
SHX13_1.baseBlip = 0
SHX13_1.baseDepotMarkerId = nil
SHX13_1.depotReturnGuidanceDone = false
SHX13_1.carryObject = 0
SHX13_1.carryObject2 = 0
SHX13_1.depositInProgress = false
SHX13_1.pendingDepositThrownEnt = 0
SHX13_1.truckSpawnPoint = nil
SHX13_1.truckJobBlip = 0
SHX13_1.truckJobBlipEntity = 0
SHX13_1.garbageFinishNextAttemptAt = nil
SHX13_1.truckGuideMarkerConsumed = false
SHX13_1.throwStartedWithDualCarry = false
SHX13_1.truckGarageUuid = nil
SHX13_1.truckVehicleMods = nil
SHX14_1 = SHX0_1.vehicleModel
if not SHX14_1 then
  SHX14_1 = "trash"
end
SHX13_1.truckVehicleId = SHX14_1
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX13_1.localCarryKeys
  SHX0_2 = #SHX0_2
  SHX0_2 = 2 == SHX0_2
  return SHX0_2
end
SHX15_1 = CMG
SHX15_1 = SHX15_1.registerDevMenuState
SHX16_1 = "Garbage second bag"
function SHX17_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = SHX0_1.bagAttachSecond
  SHX1_2 = type
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if "table" == SHX1_2 then
    SHX1_2 = #SHX0_2
    if SHX1_2 >= 6 then
      SHX1_2 = {}
      SHX1_2.useOverride = false
      SHX1_2.axisIndex = 1
      SHX1_2.posStepIndex = 3
      SHX1_2.rotStepIndex = 2
      SHX1_2.bonePresetIndex = 1
      SHX2_2 = tonumber
      SHX3_2 = SHX0_2[1]
      SHX2_2 = SHX2_2(SHX3_2)
      if not SHX2_2 then
        SHX2_2 = 0.0
      end
      SHX1_2.ox = SHX2_2
      SHX2_2 = tonumber
      SHX3_2 = SHX0_2[2]
      SHX2_2 = SHX2_2(SHX3_2)
      if not SHX2_2 then
        SHX2_2 = 0.04
      end
      SHX1_2.oy = SHX2_2
      SHX2_2 = tonumber
      SHX3_2 = SHX0_2[3]
      SHX2_2 = SHX2_2(SHX3_2)
      if not SHX2_2 then
        SHX2_2 = -0.26
      end
      SHX1_2.oz = SHX2_2
      SHX2_2 = tonumber
      SHX3_2 = SHX0_2[4]
      SHX2_2 = SHX2_2(SHX3_2)
      if not SHX2_2 then
        SHX2_2 = 0.0
      end
      SHX1_2.rx = SHX2_2
      SHX2_2 = tonumber
      SHX3_2 = SHX0_2[5]
      SHX2_2 = SHX2_2(SHX3_2)
      if not SHX2_2 then
        SHX2_2 = 0.0
      end
      SHX1_2.ry = SHX2_2
      SHX2_2 = tonumber
      SHX3_2 = SHX0_2[6]
      SHX2_2 = SHX2_2(SHX3_2)
      if not SHX2_2 then
        SHX2_2 = 0.0
      end
      SHX1_2.rz = SHX2_2
      SHX2_2 = tonumber
      SHX3_2 = SHX0_1.bagAttachSecondBone
      SHX2_2 = SHX2_2(SHX3_2)
      if not SHX2_2 then
        SHX2_2 = 18905
      end
      SHX1_2.bone = SHX2_2
      return SHX1_2
    end
  end
  SHX1_2 = SHX0_1.bagAttach
  SHX2_2 = 0.0
  SHX3_2 = 0.04
  SHX4_2 = -0.26
  SHX5_2 = 0.0
  SHX6_2 = 0.0
  SHX7_2 = 0.0
  SHX8_2 = type
  SHX9_2 = SHX1_2
  SHX8_2 = SHX8_2(SHX9_2)
  if "table" == SHX8_2 then
    SHX8_2 = #SHX1_2
    if SHX8_2 >= 6 then
      SHX8_2 = SHX1_2[1]
      SHX9_2 = SHX1_2[2]
      SHX10_2 = SHX1_2[3]
      SHX11_2 = SHX1_2[4]
      SHX12_2 = SHX1_2[5]
      SHX7_2 = SHX1_2[6]
      SHX6_2 = SHX12_2
      SHX5_2 = SHX11_2
      SHX4_2 = SHX10_2
      SHX3_2 = SHX9_2
      SHX2_2 = SHX8_2
    end
  end
  SHX8_2 = {}
  SHX8_2.useOverride = false
  SHX8_2.axisIndex = 1
  SHX8_2.posStepIndex = 3
  SHX8_2.rotStepIndex = 2
  SHX8_2.bonePresetIndex = 1
  SHX9_2 = -SHX2_2
  SHX8_2.ox = SHX9_2
  SHX8_2.oy = SHX3_2
  SHX8_2.oz = SHX4_2
  SHX8_2.rx = SHX5_2
  SHX8_2.ry = SHX6_2
  SHX9_2 = SHX7_2 + 180.0
  SHX8_2.rz = SHX9_2
  SHX9_2 = tonumber
  SHX10_2 = SHX0_1.bagAttachSecondBone
  SHX9_2 = SHX9_2(SHX10_2)
  if not SHX9_2 then
    SHX9_2 = 18905
  end
  SHX8_2.bone = SHX9_2
  return SHX8_2
end
SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1, SHX78_1, SHX79_1, SHX80_1 = SHX17_1()
SHX15_1 = SHX15_1(SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1, SHX78_1, SHX79_1, SHX80_1)
SHX16_1 = {}
SHX17_1 = {}
SHX17_1.id = 18905
SHX17_1.label = "18905 L hand"
SHX18_1 = {}
SHX18_1.id = 60309
SHX18_1.label = "60309 L forearm"
SHX19_1 = {}
SHX19_1.id = 26611
SHX19_1.label = "26611 L upper arm"
SHX20_1 = {}
SHX20_1.id = 28252
SHX20_1.label = "28252 L clavicle"
SHX21_1 = {}
SHX21_1.id = 57005
SHX21_1.label = "57005 R hand (ref)"
SHX22_1 = {}
SHX22_1.id = 28422
SHX22_1.label = "28422 R hand (ref)"
SHX16_1[1] = SHX17_1
SHX16_1[2] = SHX18_1
SHX16_1[3] = SHX19_1
SHX16_1[4] = SHX20_1
SHX16_1[5] = SHX21_1
SHX16_1[6] = SHX22_1
SHX17_1 = {}
SHX18_1 = 0.005
SHX19_1 = 0.01
SHX20_1 = 0.02
SHX21_1 = 0.05
SHX22_1 = 0.1
SHX17_1[1] = SHX18_1
SHX17_1[2] = SHX19_1
SHX17_1[3] = SHX20_1
SHX17_1[4] = SHX21_1
SHX17_1[5] = SHX22_1
SHX18_1 = {}
SHX19_1 = "0.5cm"
SHX20_1 = "1cm"
SHX21_1 = "2cm"
SHX22_1 = "5cm"
SHX23_1 = "10cm"
SHX18_1[1] = SHX19_1
SHX18_1[2] = SHX20_1
SHX18_1[3] = SHX21_1
SHX18_1[4] = SHX22_1
SHX18_1[5] = SHX23_1
SHX19_1 = {}
SHX20_1 = 1.0
SHX21_1 = 5.0
SHX22_1 = 15.0
SHX23_1 = 45.0
SHX19_1[1] = SHX20_1
SHX19_1[2] = SHX21_1
SHX19_1[3] = SHX22_1
SHX19_1[4] = SHX23_1
SHX20_1 = {}
SHX21_1 = "1\194\176"
SHX22_1 = "5\194\176"
SHX23_1 = "15\194\176"
SHX24_1 = "45\194\176"
SHX20_1[1] = SHX21_1
SHX20_1[2] = SHX22_1
SHX20_1[3] = SHX23_1
SHX20_1[4] = SHX24_1
SHX21_1 = {}
SHX22_1 = "OX"
SHX23_1 = "OY"
SHX24_1 = "OZ"
SHX25_1 = "RX"
SHX26_1 = "RY"
SHX27_1 = "RZ"
SHX21_1[1] = SHX22_1
SHX21_1[2] = SHX23_1
SHX21_1[3] = SHX24_1
SHX21_1[4] = SHX25_1
SHX21_1[5] = SHX26_1
SHX21_1[6] = SHX27_1
SHX22_1 = {}
SHX23_1 = "ox"
SHX24_1 = "oy"
SHX25_1 = "oz"
SHX26_1 = "rx"
SHX27_1 = "ry"
SHX28_1 = "rz"
SHX22_1[1] = SHX23_1
SHX22_1[2] = SHX24_1
SHX22_1[3] = SHX25_1
SHX22_1[4] = SHX26_1
SHX22_1[5] = SHX27_1
SHX22_1[6] = SHX28_1
function SHX23_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  if not SHX1_2 or "" == SHX1_2 then
    return
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.isJobTerminalOpen
  SHX2_2 = SHX2_2()
  if SHX2_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.getClientJob
    SHX2_2 = SHX2_2()
    if "Garbage" == SHX2_2 then
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.uiSendMessage
      SHX3_2 = {}
      SHX3_2.action = "GARBAGE_NOTIFICATION"
      SHX4_2 = {}
      SHX4_2.success = SHX0_2
      SHX4_2.message = SHX1_2
      SHX3_2.payload = SHX4_2
      SHX2_2(SHX3_2)
  end
  else
    if SHX0_2 then
      SHX2_2 = "~g~"
      if SHX2_2 then
        goto SHX_LABEL_34
      end
    end
    SHX2_2 = "~r~"
    -- [FIX IF ERROR] Move ::SHX_LABEL_34:: outside nested blocks until all 'goto SHX_LABEL_34' can see it
    ::SHX_LABEL_34::
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.notify
    SHX4_2 = SHX2_2
    SHX5_2 = SHX1_2
    SHX4_2 = SHX4_2 .. SHX5_2
    SHX3_2(SHX4_2)
  end
end
SHX24_1 = RegisterNetEvent
SHX25_1 = "db020b65e8"
function SHX26_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = type
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if "string" ~= SHX2_2 or "" == SHX1_2 then
    return
  end
  SHX2_2 = SHX23_1
  SHX3_2 = true == SHX0_2
  SHX4_2 = SHX1_2
  SHX2_2(SHX3_2, SHX4_2)
end
SHX24_1(SHX25_1, SHX26_1)
function SHX24_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  if not SHX0_2 then
    return
  end
  SHX1_2 = SHX9_1
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX2_2 = DoesBlipExist
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      SHX2_2 = RemoveBlip
      SHX3_2 = SHX1_2
      SHX2_2(SHX3_2)
    end
  end
  SHX2_2 = SHX9_1
  SHX2_2[SHX0_2] = nil
end
function SHX25_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SetBlipSprite
  SHX2_2 = SHX0_2
  SHX3_2 = SHX10_1
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetBlipColour
  SHX2_2 = SHX0_2
  SHX3_2 = SHX11_1
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetBlipScale
  SHX2_2 = SHX0_2
  SHX3_2 = SHX12_1
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetBlipAsShortRange
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
end
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = pairs
  SHX1_2 = SHX9_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX24_1
    SHX7_2 = SHX4_2
    SHX6_2(SHX7_2)
  end
end
function SHX27_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  if not SHX0_2 then
    return
  end
  SHX1_2 = SHX24_1
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
function SHX28_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  if not SHX0_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerPed
    SHX1_2 = SHX1_2()
    SHX0_2 = SHX1_2
  end
  SHX1_2 = ResetPedMovementClipset
  SHX2_2 = SHX0_2
  SHX3_2 = 0.25
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = ResetPedWeaponMovementClipset
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = ResetPedStrafeClipset
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = SetPedCanSwitchWeapon
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
end
function SHX29_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  if not SHX0_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerPed
    SHX1_2 = SHX1_2()
    SHX0_2 = SHX1_2
  end
  SHX1_2 = HasPedGotWeapon
  SHX2_2 = SHX0_2
  SHX3_2 = SHX2_1
  SHX4_2 = false
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  if SHX1_2 then
    SHX1_2 = SetCurrentPedWeapon
    SHX2_2 = SHX0_2
    SHX3_2 = -1569615261
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = RemoveWeaponFromPed
    SHX2_2 = SHX0_2
    SHX3_2 = SHX2_1
    SHX1_2(SHX2_2, SHX3_2)
  end
end
function SHX30_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  if 0 == SHX0_2 then
    return
  end
  SHX1_2 = DoesEntityExist
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    return
  end
  SHX1_2 = FreezeEntityPosition
  SHX2_2 = SHX0_2
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetEntityAsMissionEntity
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = NetworkGetEntityIsNetworked
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = 1
    SHX2_2 = 25
    SHX3_2 = 1
    for SHX4_2 = SHX1_2, SHX2_2, SHX3_2 do
      SHX5_2 = NetworkHasControlOfEntity
      SHX6_2 = SHX0_2
      SHX5_2 = SHX5_2(SHX6_2)
      if SHX5_2 then
        break
      end
      SHX5_2 = NetworkRequestControlOfEntity
      SHX6_2 = SHX0_2
      SHX5_2(SHX6_2)
      SHX5_2 = Wait
      SHX6_2 = 0
      SHX5_2(SHX6_2)
    end
  end
  SHX1_2 = DetachEntity
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = Wait
  SHX2_2 = 0
  SHX1_2(SHX2_2)
  SHX1_2 = DetachEntity
  SHX2_2 = SHX0_2
  SHX3_2 = false
  SHX4_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = Wait
  SHX2_2 = 0
  SHX1_2(SHX2_2)
  SHX1_2 = DoesEntityExist
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = IsEntityAttached
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = DetachEntity
      SHX2_2 = SHX0_2
      SHX3_2 = true
      SHX4_2 = false
      SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      SHX1_2 = Wait
      SHX2_2 = 0
      SHX1_2(SHX2_2)
    end
  end
  SHX1_2 = DoesEntityExist
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    return
  end
  SHX1_2 = SetEntityAsMissionEntity
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = GetEntityType
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if 3 == SHX1_2 then
    SHX1_2 = DeleteObject
    SHX2_2 = SHX0_2
    SHX1_2(SHX2_2)
  else
    SHX1_2 = DeleteEntity
    SHX2_2 = SHX0_2
    SHX1_2(SHX2_2)
  end
  SHX1_2 = DoesEntityExist
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = DeleteEntity
    SHX2_2 = SHX0_2
    SHX1_2(SHX2_2)
  end
end
function SHX31_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX30_1
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
function SHX32_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX13_1.carryObject
  SHX1_2 = SHX13_1.carryObject2
  SHX13_1.carryObject = 0
  SHX13_1.carryObject2 = 0
  SHX2_2 = SHX31_1
  SHX3_2 = SHX0_2
  SHX2_2(SHX3_2)
  SHX2_2 = SHX31_1
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
end
function SHX33_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = {}
  SHX13_1.localCarryKeys = SHX0_2
  SHX0_2 = SHX32_1
  SHX0_2()
  SHX0_2 = SHX29_1
  SHX0_2()
  SHX0_2 = SHX28_1
  SHX0_2()
  SHX13_1.carryingKey = nil
end
function SHX34_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.getClientUserId
  SHX6_2 = SHX6_2()
  SHX7_2 = SHX15_1.useOverride
  if true == SHX7_2 and SHX6_2 then
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.isDeveloper
    SHX8_2 = SHX6_2
    SHX7_2 = SHX7_2(SHX8_2)
    if SHX7_2 then
      SHX7_2 = tonumber
      SHX8_2 = SHX15_1.bone
      SHX7_2 = SHX7_2(SHX8_2)
      if not SHX7_2 then
        SHX7_2 = 18905
      end
      SHX8_2 = SHX7_2
      SHX9_2 = tonumber
      SHX10_2 = SHX15_1.ox
      SHX9_2 = SHX9_2(SHX10_2)
      if not SHX9_2 then
        SHX9_2 = 0.0
      end
      SHX10_2 = tonumber
      SHX11_2 = SHX15_1.oy
      SHX10_2 = SHX10_2(SHX11_2)
      if not SHX10_2 then
        SHX10_2 = 0.04
      end
      SHX11_2 = tonumber
      SHX12_2 = SHX15_1.oz
      SHX11_2 = SHX11_2(SHX12_2)
      if not SHX11_2 then
        SHX11_2 = -0.26
      end
      SHX12_2 = tonumber
      SHX13_2 = SHX15_1.rx
      SHX12_2 = SHX12_2(SHX13_2)
      if not SHX12_2 then
        SHX12_2 = 0.0
      end
      SHX13_2 = tonumber
      SHX14_2 = SHX15_1.ry
      SHX13_2 = SHX13_2(SHX14_2)
      if not SHX13_2 then
        SHX13_2 = 0.0
      end
      SHX14_2 = tonumber
      SHX15_2 = SHX15_1.rz
      SHX14_2 = SHX14_2(SHX15_2)
      if not SHX14_2 then
        SHX14_2 = 0.0
      end
      return SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
    end
  end
  SHX7_2 = tonumber
  SHX8_2 = SHX0_1.bagAttachSecondBone
  SHX7_2 = SHX7_2(SHX8_2)
  if not SHX7_2 then
    SHX7_2 = 18905
  end
  SHX8_2 = SHX0_1.bagAttachSecond
  SHX9_2 = -SHX0_2
  SHX10_2 = SHX1_2
  SHX11_2 = SHX2_2
  SHX12_2 = SHX3_2
  SHX13_2 = SHX4_2
  SHX14_2 = SHX5_2 + 180.0
  SHX15_2 = type
  SHX16_2 = SHX8_2
  SHX15_2 = SHX15_2(SHX16_2)
  if "table" == SHX15_2 then
    SHX15_2 = #SHX8_2
    if SHX15_2 >= 6 then
      SHX15_2 = SHX8_2[1]
      SHX16_2 = SHX8_2[2]
      SHX17_2 = SHX8_2[3]
      SHX18_2 = SHX8_2[4]
      SHX19_2 = SHX8_2[5]
      SHX14_2 = SHX8_2[6]
      SHX13_2 = SHX19_2
      SHX12_2 = SHX18_2
      SHX11_2 = SHX17_2
      SHX10_2 = SHX16_2
      SHX9_2 = SHX15_2
    end
  end
  SHX15_2 = SHX7_2
  SHX16_2 = SHX9_2
  SHX17_2 = SHX10_2
  SHX18_2 = SHX11_2
  SHX19_2 = SHX12_2
  SHX20_2 = SHX13_2
  SHX21_2 = SHX14_2
  return SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2
end
function SHX35_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2, SHX37_2, SHX38_2, SHX39_2
  SHX0_2 = SHX13_1.localCarryKeys
  SHX0_2 = #SHX0_2
  if SHX0_2 < 2 then
    SHX0_2 = false
    return SHX0_2
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getClientUserId
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.isDeveloper
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if true == SHX1_2 then
      goto SHX_LABEL_20
    end
  end
  SHX1_2 = false
  return SHX1_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_20:: outside nested blocks until all 'goto SHX_LABEL_20' can see it
  ::SHX_LABEL_20::
  SHX1_2 = SHX15_1.useOverride
  if true ~= SHX1_2 then
    SHX1_2 = false
    return SHX1_2
  end
  SHX1_2 = SHX13_1.active
  SHX1_2 = SHX14_1
  SHX1_2 = not SHX1_2 and SHX1_2
  SHX2_2 = SHX13_1.active
  if SHX2_2 then
    SHX2_2 = SHX15_1.useOverride
    SHX2_2 = true == SHX2_2
  end
  if not SHX1_2 and not SHX2_2 then
    SHX3_2 = false
    return SHX3_2
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerPed
  SHX3_2 = SHX3_2()
  SHX4_2 = SHX13_1.carryObject
  if 0 ~= SHX4_2 then
    SHX5_2 = DoesEntityExist
    SHX6_2 = SHX4_2
    SHX5_2 = SHX5_2(SHX6_2)
    if SHX5_2 then
      goto SHX_LABEL_60
    end
  end
  SHX5_2 = false
  return SHX5_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_60:: outside nested blocks until all 'goto SHX_LABEL_60' can see it
  ::SHX_LABEL_60::
  SHX5_2 = SHX13_1.carryObject2
  SHX13_1.carryObject2 = 0
  if 0 ~= SHX5_2 then
    SHX6_2 = SHX30_1
    SHX7_2 = SHX5_2
    SHX6_2(SHX7_2)
  end
  SHX6_2 = GetHashKey
  SHX7_2 = SHX0_1.bagPropModel
  SHX6_2 = SHX6_2(SHX7_2)
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.loadModel
  SHX8_2 = SHX6_2
  SHX7_2(SHX8_2)
  SHX7_2 = SHX0_1.bagAttach
  SHX8_2 = 0.0
  SHX9_2 = 0.04
  SHX10_2 = -0.26
  SHX11_2 = 0.0
  SHX12_2 = 0.0
  SHX13_2 = 0.0
  SHX14_2 = type
  SHX15_2 = SHX7_2
  SHX14_2 = SHX14_2(SHX15_2)
  if "table" == SHX14_2 then
    SHX14_2 = #SHX7_2
    if SHX14_2 >= 6 then
      SHX14_2 = SHX7_2[1]
      SHX15_2 = SHX7_2[2]
      SHX16_2 = SHX7_2[3]
      SHX17_2 = SHX7_2[4]
      SHX18_2 = SHX7_2[5]
      SHX13_2 = SHX7_2[6]
      SHX12_2 = SHX18_2
      SHX11_2 = SHX17_2
      SHX10_2 = SHX16_2
      SHX9_2 = SHX15_2
      SHX8_2 = SHX14_2
    end
  end
  SHX14_2 = SHX34_1
  SHX15_2 = SHX8_2
  SHX16_2 = SHX9_2
  SHX17_2 = SHX10_2
  SHX18_2 = SHX11_2
  SHX19_2 = SHX12_2
  SHX20_2 = SHX13_2
  SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2 = SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
  SHX21_2 = CMG
  SHX21_2 = SHX21_2.getPlayerCoords
  SHX21_2 = SHX21_2()
  if not SHX1_2 then
    SHX22_2 = CMG
    SHX22_2 = SHX22_2.requestEntitySpawn
    SHX23_2 = "garbage_bag_object"
    SHX22_2(SHX23_2)
  end
  SHX22_2 = CreateObject
  SHX23_2 = SHX6_2
  SHX24_2 = SHX21_2.x
  SHX25_2 = SHX21_2.y
  SHX26_2 = SHX21_2.z
  SHX27_2 = not SHX1_2
  SHX28_2 = true
  SHX29_2 = false
  SHX22_2 = SHX22_2(SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2)
  if SHX22_2 then
    SHX23_2 = DoesEntityExist
    SHX24_2 = SHX22_2
    SHX23_2 = SHX23_2(SHX24_2)
    if SHX23_2 then
      goto SHX_LABEL_138
    end
  end
  SHX23_2 = SetModelAsNoLongerNeeded
  SHX24_2 = SHX6_2
  SHX23_2(SHX24_2)
  SHX23_2 = false
  return SHX23_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_138:: outside nested blocks until all 'goto SHX_LABEL_138' can see it
  ::SHX_LABEL_138::
  SHX23_2 = GetPedBoneIndex
  SHX24_2 = SHX3_2
  SHX25_2 = SHX14_2
  SHX23_2 = SHX23_2(SHX24_2, SHX25_2)
  SHX24_2 = AttachEntityToEntity
  SHX25_2 = SHX22_2
  SHX26_2 = SHX3_2
  SHX27_2 = SHX23_2
  SHX28_2 = SHX15_2
  SHX29_2 = SHX16_2
  SHX30_2 = SHX17_2
  SHX31_2 = SHX18_2
  SHX32_2 = SHX19_2
  SHX33_2 = SHX20_2
  SHX34_2 = true
  SHX35_2 = true
  SHX36_2 = false
  SHX37_2 = true
  SHX38_2 = 1
  SHX39_2 = false
  SHX24_2(SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2, SHX37_2, SHX38_2, SHX39_2)
  SHX13_1.carryObject2 = SHX22_2
  SHX24_2 = SetModelAsNoLongerNeeded
  SHX25_2 = SHX6_2
  SHX24_2(SHX25_2)
  SHX24_2 = true
  return SHX24_2
end
SHX36_1 = false
SHX37_1 = false
function SHX38_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2
  SHX0_2 = SHX36_1
  if SHX0_2 then
    SHX0_2 = true
    SHX37_1 = SHX0_2
    return
  end
  SHX0_2 = true
  SHX36_1 = SHX0_2
  function SHX0_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = false
    SHX36_1 = SHX0_3
    SHX0_3 = SHX37_1
    if SHX0_3 then
      SHX0_3 = false
      SHX37_1 = SHX0_3
      SHX0_3 = SHX38_1
      SHX0_3()
    end
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX32_1
  SHX2_2()
  SHX2_2 = SHX13_1.localCarryKeys
  SHX2_2 = #SHX2_2
  if SHX2_2 < 1 then
    SHX13_1.carryingKey = nil
    SHX3_2 = SHX29_1
    SHX4_2 = SHX1_2
    SHX3_2(SHX4_2)
    SHX3_2 = SHX28_1
    SHX4_2 = SHX1_2
    SHX3_2(SHX4_2)
    SHX3_2 = SHX0_2
    SHX3_2()
    return
  end
  SHX3_2 = SHX13_1.localCarryKeys
  SHX3_2 = SHX3_2[1]
  SHX13_1.carryingKey = SHX3_2
  SHX3_2 = SetPedCanSwitchWeapon
  SHX4_2 = SHX1_2
  SHX5_2 = false
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = RequestAnimSet
  SHX4_2 = SHX1_1
  SHX3_2(SHX4_2)
  SHX3_2 = 0
  while true do
    SHX4_2 = HasAnimSetLoaded
    SHX5_2 = SHX1_1
    SHX4_2 = SHX4_2(SHX5_2)
    if SHX4_2 then
      break
    end
    SHX4_2 = 200
    if not (SHX3_2 < SHX4_2) then
      break
    end
    SHX4_2 = Wait
    SHX5_2 = 0
    SHX4_2(SHX5_2)
    SHX3_2 = SHX3_2 + 1
  end
  SHX4_2 = HasAnimSetLoaded
  SHX5_2 = SHX1_1
  SHX4_2 = SHX4_2(SHX5_2)
  if SHX4_2 then
    SHX4_2 = SetPedMovementClipset
    SHX5_2 = SHX1_2
    SHX6_2 = SHX1_1
    SHX7_2 = 1.0
    SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  end
  SHX4_2 = GiveWeaponToPed
  SHX5_2 = SHX1_2
  SHX6_2 = SHX2_1
  SHX7_2 = 0
  SHX8_2 = false
  SHX9_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX4_2 = SetCurrentPedWeapon
  SHX5_2 = SHX1_2
  SHX6_2 = SHX2_1
  SHX7_2 = true
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = GetHashKey
  SHX5_2 = SHX0_1.bagPropModel
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.loadModel
  SHX6_2 = SHX4_2
  SHX5_2(SHX6_2)
  SHX5_2 = SHX13_1.active
  SHX5_2 = SHX14_1
  SHX5_2 = not SHX5_2 and SHX5_2
  function SHX6_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3
    SHX8_3 = SHX5_2
    if not SHX8_3 then
      SHX8_3 = CMG
      SHX8_3 = SHX8_3.requestEntitySpawn
      SHX9_3 = "garbage_bag_object"
      SHX8_3(SHX9_3)
    end
    SHX8_3 = CMG
    SHX8_3 = SHX8_3.getPlayerCoords
    SHX8_3 = SHX8_3()
    SHX9_3 = CreateObject
    SHX10_3 = SHX4_2
    SHX11_3 = SHX8_3.x
    SHX12_3 = SHX8_3.y
    SHX13_3 = SHX8_3.z
    SHX14_3 = SHX5_2
    SHX14_3 = not SHX14_3
    SHX15_3 = true
    SHX16_3 = false
    SHX9_3 = SHX9_3(SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3)
    if SHX9_3 then
      SHX10_3 = DoesEntityExist
      SHX11_3 = SHX9_3
      SHX10_3 = SHX10_3(SHX11_3)
      if SHX10_3 then
        goto SHX_LABEL_29
      end
    end
    return
    -- [FIX IF ERROR] Move ::SHX_LABEL_29:: outside nested blocks until all 'goto SHX_LABEL_29' can see it
    ::SHX_LABEL_29::
    SHX10_3 = GetPedBoneIndex
    SHX11_3 = SHX1_2
    SHX12_3 = SHX0_3
    SHX10_3 = SHX10_3(SHX11_3, SHX12_3)
    SHX11_3 = AttachEntityToEntity
    SHX12_3 = SHX9_3
    SHX13_3 = SHX1_2
    SHX14_3 = SHX10_3
    SHX15_3 = SHX1_3
    SHX16_3 = SHX2_3
    SHX17_3 = SHX3_3
    SHX18_3 = SHX4_3
    SHX19_3 = SHX5_3
    SHX20_3 = SHX6_3
    SHX21_3 = true
    SHX22_3 = true
    SHX23_3 = false
    SHX24_3 = true
    SHX25_3 = 1
    SHX26_3 = false
    SHX11_3(SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3)
    if 1 == SHX7_3 then
      SHX13_1.carryObject = SHX9_3
    else
      SHX13_1.carryObject2 = SHX9_3
    end
  end
  SHX7_2 = SHX0_1.bagAttach
  SHX8_2 = 0.0
  SHX9_2 = 0.04
  SHX10_2 = -0.26
  SHX11_2 = 0.0
  SHX12_2 = 0.0
  SHX13_2 = 0.0
  SHX14_2 = type
  SHX15_2 = SHX7_2
  SHX14_2 = SHX14_2(SHX15_2)
  if "table" == SHX14_2 then
    SHX14_2 = #SHX7_2
    if SHX14_2 >= 6 then
      SHX14_2 = SHX7_2[1]
      SHX15_2 = SHX7_2[2]
      SHX16_2 = SHX7_2[3]
      SHX17_2 = SHX7_2[4]
      SHX18_2 = SHX7_2[5]
      SHX13_2 = SHX7_2[6]
      SHX12_2 = SHX18_2
      SHX11_2 = SHX17_2
      SHX10_2 = SHX16_2
      SHX9_2 = SHX15_2
      SHX8_2 = SHX14_2
    end
  end
  SHX14_2 = SHX0_1.bagAttachBone
  if not SHX14_2 then
    SHX14_2 = 28422
  end
  SHX15_2 = SHX6_2
  SHX16_2 = SHX14_2
  SHX17_2 = SHX8_2
  SHX18_2 = SHX9_2
  SHX19_2 = SHX10_2
  SHX20_2 = SHX11_2
  SHX21_2 = SHX12_2
  SHX22_2 = SHX13_2
  SHX23_2 = 1
  SHX15_2(SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
  if SHX2_2 >= 2 then
    SHX15_2 = SHX34_1
    SHX16_2 = SHX8_2
    SHX17_2 = SHX9_2
    SHX18_2 = SHX10_2
    SHX19_2 = SHX11_2
    SHX20_2 = SHX12_2
    SHX21_2 = SHX13_2
    SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2 = SHX15_2(SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
    SHX22_2 = SHX6_2
    SHX23_2 = SHX15_2
    SHX24_2 = SHX16_2
    SHX25_2 = SHX17_2
    SHX26_2 = SHX18_2
    SHX27_2 = SHX19_2
    SHX28_2 = SHX20_2
    SHX29_2 = SHX21_2
    SHX30_2 = 2
    SHX22_2(SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2)
  end
  SHX15_2 = SetModelAsNoLongerNeeded
  SHX16_2 = SHX4_2
  SHX15_2(SHX16_2)
  SHX15_2 = SHX0_2
  SHX15_2()
end
SHX39_1 = false
function SHX40_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX39_1
  if SHX0_2 then
    return
  end
  SHX0_2 = true
  SHX39_1 = SHX0_2
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.SetTimeout
  SHX1_2 = 0
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = false
    SHX39_1 = SHX0_3
    SHX0_3 = SHX38_1
    SHX0_3()
  end
  SHX0_2(SHX1_2, SHX2_2)
end
function SHX41_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX13_1.depositInProgress = false
  SHX0_2 = ClearPedSecondaryTask
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX0_2(SHX1_2)
  SHX0_2 = SHX26_1
  SHX0_2()
  SHX0_2 = SHX33_1
  SHX0_2()
  SHX0_2 = SHX13_1.stopBlip
  if 0 ~= SHX0_2 then
    SHX0_2 = RemoveBlip
    SHX1_2 = SHX13_1.stopBlip
    SHX0_2(SHX1_2)
    SHX13_1.stopBlip = 0
  end
  SHX0_2 = SHX13_1.baseBlip
  if 0 ~= SHX0_2 then
    SHX0_2 = RemoveBlip
    SHX1_2 = SHX13_1.baseBlip
    SHX0_2(SHX1_2)
    SHX13_1.baseBlip = 0
  end
  SHX0_2 = SHX13_1.baseDepotMarkerId
  if SHX0_2 then
    SHX0_2 = tCMG
    SHX0_2 = SHX0_2.removeMarker
    SHX1_2 = SHX13_1.baseDepotMarkerId
    SHX0_2(SHX1_2)
    SHX13_1.baseDepotMarkerId = nil
  end
  SHX13_1.depotReturnGuidanceDone = false
  SHX0_2 = {}
  SHX13_1.carryingBagKeys = SHX0_2
  SHX0_2 = {}
  SHX13_1.localCarryKeys = SHX0_2
  SHX13_1.truckEntity = 0
  SHX13_1.carryingKey = nil
  SHX13_1.truckSpawnPoint = nil
  SHX0_2 = SHX13_1.truckJobBlip
  if 0 ~= SHX0_2 then
    SHX0_2 = DoesBlipExist
    SHX1_2 = SHX13_1.truckJobBlip
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      SHX0_2 = RemoveBlip
      SHX1_2 = SHX13_1.truckJobBlip
      SHX0_2(SHX1_2)
    end
  end
  SHX13_1.truckJobBlip = 0
  SHX13_1.truckJobBlipEntity = 0
  SHX13_1.garbageFinishNextAttemptAt = nil
  SHX13_1.truckGuideMarkerConsumed = false
  SHX13_1.pendingDepositThrownEnt = 0
  SHX13_1.throwStartedWithDualCarry = false
end
function SHX42_1(SHX0_2)
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
  SHX0_2 = SHX1_2
  if not SHX0_2 or 0 == SHX0_2 then
    return
  end
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
    SHX0_3 = NetworkGetEntityFromNetworkId
    SHX1_3 = SHX0_2
    SHX0_3 = SHX0_3(SHX1_3)
    if 0 ~= SHX0_3 then
      SHX1_3 = DoesEntityExist
      SHX2_3 = SHX0_3
      SHX1_3 = SHX1_3(SHX2_3)
      if SHX1_3 then
        goto SHX_LABEL_12
      end
    end
    return
    -- [FIX IF ERROR] Move ::SHX_LABEL_12:: outside nested blocks until all 'goto SHX_LABEL_12' can see it
    ::SHX_LABEL_12::
    SHX1_3 = CMG
    SHX1_3 = SHX1_3.getPlayerPed
    SHX1_3 = SHX1_3()
    SHX2_3 = GetVehiclePedIsIn
    SHX3_3 = SHX1_3
    SHX4_3 = false
    SHX2_3 = SHX2_3(SHX3_3, SHX4_3)
    if SHX2_3 == SHX0_3 then
      SHX2_3 = TaskLeaveVehicle
      SHX3_3 = SHX1_3
      SHX4_3 = SHX0_3
      SHX5_3 = 0
      SHX2_3(SHX3_3, SHX4_3, SHX5_3)
      SHX2_3 = GetGameTimer
      SHX2_3 = SHX2_3()
      SHX2_3 = SHX2_3 + 3000
      while true do
        SHX3_3 = GetVehiclePedIsIn
        SHX4_3 = SHX1_3
        SHX5_3 = false
        SHX3_3 = SHX3_3(SHX4_3, SHX5_3)
        if SHX3_3 ~= SHX0_3 then
          break
        end
        SHX3_3 = GetGameTimer
        SHX3_3 = SHX3_3()
        if not (SHX2_3 > SHX3_3) then
          break
        end
        SHX3_3 = Wait
        SHX4_3 = 0
        SHX3_3(SHX4_3)
      end
    end
    SHX2_3 = DoesEntityExist
    SHX3_3 = SHX0_3
    SHX2_3 = SHX2_3(SHX3_3)
    if not SHX2_3 then
      return
    end
    SHX2_3 = NetworkRequestControlOfEntity
    SHX3_3 = SHX0_3
    SHX2_3(SHX3_3)
    SHX2_3 = GetGameTimer
    SHX2_3 = SHX2_3()
    SHX2_3 = SHX2_3 + 800
    while true do
      SHX3_3 = NetworkHasControlOfEntity
      SHX4_3 = SHX0_3
      SHX3_3 = SHX3_3(SHX4_3)
      if SHX3_3 then
        break
      end
      SHX3_3 = GetGameTimer
      SHX3_3 = SHX3_3()
      if not (SHX2_3 > SHX3_3) then
        break
      end
      SHX3_3 = Wait
      SHX4_3 = 0
      SHX3_3(SHX4_3)
      SHX3_3 = NetworkRequestControlOfEntity
      SHX4_3 = SHX0_3
      SHX3_3(SHX4_3)
    end
    SHX3_3 = DoesEntityExist
    SHX4_3 = SHX0_3
    SHX3_3 = SHX3_3(SHX4_3)
    if SHX3_3 then
      SHX3_3 = SetEntityAsMissionEntity
      SHX4_3 = SHX0_3
      SHX5_3 = true
      SHX6_3 = true
      SHX3_3(SHX4_3, SHX5_3, SHX6_3)
      SHX3_3 = DeleteVehicle
      SHX4_3 = SHX0_3
      SHX3_3(SHX4_3)
    end
  end
  SHX1_2(SHX2_2)
end
function SHX43_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX13_1.truckSpawnPoint
  if SHX0_2 then
    SHX0_2 = SHX13_1.truckSpawnPoint
    return SHX0_2
  end
  SHX0_2 = SHX0_1.truckSpawns
  if SHX0_2 then
    SHX0_2 = SHX0_1.truckSpawns
    SHX0_2 = #SHX0_2
    if SHX0_2 > 0 then
      SHX0_2 = SHX0_1.truckSpawns
      SHX0_2 = SHX0_2[1]
      return SHX0_2
    end
  end
  SHX0_2 = SHX0_1.truckSpawn
  return SHX0_2
end
function SHX44_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX13_1.routeIndex
  if SHX0_2 then
    SHX1_2 = SHX0_1.routes
    if SHX1_2 then
      SHX1_2 = SHX0_1.routes
      SHX1_2 = SHX1_2[SHX0_2]
      if SHX1_2 then
        goto SHX_LABEL_13
      end
    end
  end
  SHX1_2 = nil
  return SHX1_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_13:: outside nested blocks until all 'goto SHX_LABEL_13' can see it
  ::SHX_LABEL_13::
  SHX1_2 = SHX0_1.routes
  SHX1_2 = SHX1_2[SHX0_2]
  return SHX1_2
end
function SHX45_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX44_1
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX13_1.stopIndex
  if SHX0_2 and SHX1_2 then
    SHX2_2 = SHX0_2.stops
    if SHX2_2 then
      SHX2_2 = SHX0_2.stops
      SHX2_2 = SHX2_2[SHX1_2]
      if SHX2_2 then
        goto SHX_LABEL_17
      end
    end
  end
  SHX2_2 = nil
  return SHX2_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_17:: outside nested blocks until all 'goto SHX_LABEL_17' can see it
  ::SHX_LABEL_17::
  SHX2_2 = SHX0_2.stops
  SHX2_2 = SHX2_2[SHX1_2]
  return SHX2_2
end
function SHX46_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = 0
  SHX1_2 = pairs
  SHX2_2 = SHX13_1.deposited
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    if true == SHX6_2 then
      SHX0_2 = SHX0_2 + 1
    end
  end
  return SHX0_2
end
function SHX47_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = SHX44_1
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX1_2 = SHX0_2.stops
    if SHX1_2 then
      goto SHX_LABEL_10
    end
  end
  SHX1_2 = 0
  return SHX1_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX1_2 = 0
  SHX2_2 = ipairs
  SHX3_2 = SHX0_2.stops
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX7_2.bags
    if SHX8_2 then
      SHX9_2 = #SHX8_2
      SHX1_2 = SHX1_2 + SHX9_2
    end
  end
  return SHX1_2
end
SHX48_1 = CMG
SHX48_1 = SHX48_1.registerHudTimerBarProvider
SHX49_1 = "garbageJob"
function SHX50_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = SHX13_1.active
  if not SHX1_2 then
    return
  end
  SHX1_2 = SHX47_1
  SHX1_2 = SHX1_2()
  if SHX1_2 < 1 then
    return
  end
  SHX2_2 = SHX46_1
  SHX2_2 = SHX2_2()
  SHX3_2 = SHX0_2.push
  SHX4_2 = "~g~BAGS:"
  SHX5_2 = "%d/%d"
  SHX6_2 = SHX5_2
  SHX5_2 = SHX5_2.format
  SHX7_2 = SHX2_2
  SHX8_2 = SHX1_2
  SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
end
SHX48_1(SHX49_1, SHX50_1)
function SHX48_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX2_2 = math
  SHX2_2 = SHX2_2.floor
  SHX3_2 = tonumber
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  if not SHX3_2 then
    SHX3_2 = 0
  end
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = math
  SHX3_2 = SHX3_2.floor
  SHX4_2 = tonumber
  SHX5_2 = SHX1_2
  SHX4_2 = SHX4_2(SHX5_2)
  if not SHX4_2 then
    SHX4_2 = 0
  end
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = "%d_%d"
  SHX5_2 = SHX4_2
  SHX4_2 = SHX4_2.format
  SHX6_2 = SHX2_2
  SHX7_2 = SHX3_2
  return SHX4_2(SHX5_2, SHX6_2, SHX7_2)
end
function SHX49_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = SHX48_1
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = SHX13_1.deposited
  SHX3_2 = SHX3_2[SHX2_2]
  SHX3_2 = true == SHX3_2
  return SHX3_2
end
function SHX50_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = SHX48_1
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = SHX13_1.carryingBagKeys
  SHX3_2 = SHX3_2[SHX2_2]
  SHX3_2 = true == SHX3_2
  return SHX3_2
end
function SHX51_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = SHX26_1
  SHX0_2()
  SHX0_2 = SHX13_1.stopBlip
  if 0 ~= SHX0_2 then
    SHX0_2 = RemoveBlip
    SHX1_2 = SHX13_1.stopBlip
    SHX0_2(SHX1_2)
    SHX13_1.stopBlip = 0
  end
  SHX0_2 = SHX13_1.phase
  if "stops" ~= SHX0_2 then
    return
  end
  SHX0_2 = SHX45_1
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX1_2 = SHX0_2.bags
    if SHX1_2 then
      goto SHX_LABEL_22
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_22:: outside nested blocks until all 'goto SHX_LABEL_22' can see it
  ::SHX_LABEL_22::
  SHX1_2 = SHX13_1.stopIndex
  SHX2_2 = vector3
  SHX3_2 = 0
  SHX4_2 = 0
  SHX5_2 = 0
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX3_2 = 0
  SHX4_2 = ipairs
  SHX5_2 = SHX0_2.bags
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
  for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    SHX10_2 = SHX49_1
    SHX11_2 = SHX1_2
    SHX12_2 = SHX8_2
    SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
    if not SHX10_2 then
      SHX10_2 = SHX50_1
      SHX11_2 = SHX1_2
      SHX12_2 = SHX8_2
      SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
      if not SHX10_2 then
        SHX10_2 = SHX48_1
        SHX11_2 = SHX1_2
        SHX12_2 = SHX8_2
        SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
        SHX11_2 = AddBlipForCoord
        SHX12_2 = SHX9_2.x
        SHX13_2 = SHX9_2.y
        SHX14_2 = SHX9_2.z
        SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2)
        SHX12_2 = SHX25_1
        SHX13_2 = SHX11_2
        SHX12_2(SHX13_2)
        SHX12_2 = SHX9_1
        SHX12_2[SHX10_2] = SHX11_2
        SHX2_2 = SHX2_2 + SHX9_2
        SHX3_2 = SHX3_2 + 1
      end
    end
  end
  if SHX3_2 > 0 then
    SHX4_2 = SHX2_2 / SHX3_2
    SHX5_2 = AddBlipForCoord
    SHX6_2 = SHX4_2.x
    SHX7_2 = SHX4_2.y
    SHX8_2 = SHX4_2.z
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
    SHX13_1.stopBlip = SHX5_2
    SHX5_2 = SetBlipSprite
    SHX6_2 = SHX13_1.stopBlip
    SHX7_2 = 318
    SHX5_2(SHX6_2, SHX7_2)
    SHX5_2 = SetBlipRoute
    SHX6_2 = SHX13_1.stopBlip
    SHX7_2 = true
    SHX5_2(SHX6_2, SHX7_2)
  end
end
function SHX52_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX0_2 = SHX13_1.baseBlip
  if 0 ~= SHX0_2 then
    SHX0_2 = RemoveBlip
    SHX1_2 = SHX13_1.baseBlip
    SHX0_2(SHX1_2)
    SHX13_1.baseBlip = 0
  end
  SHX0_2 = SHX13_1.phase
  if "return" ~= SHX0_2 then
    SHX0_2 = SHX13_1.baseDepotMarkerId
    if SHX0_2 then
      SHX0_2 = tCMG
      SHX0_2 = SHX0_2.removeMarker
      SHX1_2 = SHX13_1.baseDepotMarkerId
      SHX0_2(SHX1_2)
      SHX13_1.baseDepotMarkerId = nil
    end
    SHX13_1.depotReturnGuidanceDone = false
    return
  end
  SHX0_2 = SHX0_1.baseReturn
  SHX1_2 = SHX13_1.depotReturnGuidanceDone
  if not SHX1_2 then
    SHX1_2 = SetNewWaypoint
    SHX2_2 = SHX0_2.x
    SHX2_2 = SHX2_2 + 0.0
    SHX3_2 = SHX0_2.y
    SHX3_2 = SHX3_2 + 0.0
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX13_1.baseDepotMarkerId
    if SHX1_2 then
      SHX1_2 = tCMG
      SHX1_2 = SHX1_2.removeMarker
      SHX2_2 = SHX13_1.baseDepotMarkerId
      SHX1_2(SHX2_2)
      SHX13_1.baseDepotMarkerId = nil
    end
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.addMarker
    SHX2_2 = SHX0_2.x
    SHX3_2 = SHX0_2.y
    SHX4_2 = SHX0_2.z
    SHX4_2 = SHX4_2 - 1.0
    SHX5_2 = 3.5
    SHX6_2 = 3.5
    SHX7_2 = 1.2
    SHX8_2 = 60
    SHX9_2 = 200
    SHX10_2 = 120
    SHX11_2 = 160
    SHX12_2 = 70.0
    SHX13_2 = 1
    SHX14_2 = false
    SHX15_2 = false
    SHX16_2 = false
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
    SHX13_1.baseDepotMarkerId = SHX1_2
    SHX13_1.depotReturnGuidanceDone = true
  end
end
function SHX53_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX13_1.truckNetId
  if SHX0_2 then
    SHX0_2 = SHX13_1.truckNetId
    if 0 ~= SHX0_2 then
      SHX0_2 = NetworkGetEntityFromNetworkId
      SHX1_2 = SHX13_1.truckNetId
      SHX0_2 = SHX0_2(SHX1_2)
      if SHX0_2 and 0 ~= SHX0_2 then
        SHX1_2 = DoesEntityExist
        SHX2_2 = SHX0_2
        SHX1_2 = SHX1_2(SHX2_2)
        if SHX1_2 then
          SHX13_1.truckEntity = SHX0_2
        end
      end
    end
  end
end
SHX54_1 = CMG
function SHX55_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = SHX13_1.active
  if SHX1_2 then
    SHX1_2 = SHX13_1.truckNetId
    if SHX1_2 then
      SHX1_2 = SHX13_1.truckNetId
      if 0 ~= SHX1_2 then
        goto SHX_LABEL_12
      end
    end
  end
  SHX1_2 = false
  return SHX1_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_12:: outside nested blocks until all 'goto SHX_LABEL_12' can see it
  ::SHX_LABEL_12::
  SHX1_2 = SHX53_1
  SHX1_2()
  SHX1_2 = SHX13_1.truckEntity
  if SHX1_2 and 0 ~= SHX1_2 then
    SHX2_2 = DoesEntityExist
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      goto SHX_LABEL_26
    end
  end
  SHX2_2 = false
  return SHX2_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_26:: outside nested blocks until all 'goto SHX_LABEL_26' can see it
  ::SHX_LABEL_26::
  SHX2_2 = GetEntityCoords
  SHX3_2 = SHX1_2
  SHX4_2 = true
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = GetEntityCoords
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getPlayerPed
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2()
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX2_2 = SHX2_2 - SHX3_2
  SHX2_2 = #SHX2_2
  SHX3_2 = SHX0_2 + 1.0E-4
  if SHX2_2 > SHX3_2 then
    SHX2_2 = false
    return SHX2_2
  end
  SHX2_2 = GetVehicleDoorLockStatus
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX2_2 = SHX2_2 >= 2
  SHX3_2 = NetworkGetNetworkIdFromEntity
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  if 0 == SHX3_2 then
    SHX4_2 = false
    return SHX4_2
  end
  SHX4_2 = tCMG
  SHX4_2 = SHX4_2.notify
  SHX5_2 = "Vehicle "
  if SHX2_2 then
    SHX6_2 = "unlocked"
    if SHX6_2 then
      goto SHX_LABEL_67
    end
  end
  SHX6_2 = "locked"
  -- [FIX IF ERROR] Move ::SHX_LABEL_67:: outside nested blocks until all 'goto SHX_LABEL_67' can see it
  ::SHX_LABEL_67::
  SHX7_2 = "."
  SHX5_2 = SHX5_2 .. SHX6_2 .. SHX7_2
  SHX4_2(SHX5_2)
  SHX4_2 = NetworkHasControlOfEntity
  SHX5_2 = SHX1_2
  SHX4_2 = SHX4_2(SHX5_2)
  if SHX4_2 then
    SHX4_2 = TriggerEvent
    SHX5_2 = "126d6c2d61"
    SHX6_2 = SHX3_2
    SHX7_2 = not SHX2_2
    SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  else
    SHX4_2 = TriggerServerEvent
    SHX5_2 = "126d6c2d61"
    SHX6_2 = SHX3_2
    SHX7_2 = not SHX2_2
    SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  end
  SHX4_2 = true
  return SHX4_2
end
SHX54_1.tryToggleGarbageJobTruckLock = SHX55_1
function SHX54_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = SHX53_1
  SHX0_2()
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = GetVehiclePedIsIn
  SHX2_2 = SHX0_2
  SHX3_2 = false
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if 0 ~= SHX1_2 then
    SHX2_2 = DoesEntityExist
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      goto SHX_LABEL_19
    end
  end
  SHX2_2 = false
  return SHX2_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_19:: outside nested blocks until all 'goto SHX_LABEL_19' can see it
  ::SHX_LABEL_19::
  SHX2_2 = SHX13_1.truckEntity
  if 0 ~= SHX2_2 then
    SHX3_2 = DoesEntityExist
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 and SHX1_2 == SHX2_2 then
      SHX3_2 = true
      return SHX3_2
    end
  end
  SHX3_2 = SHX13_1.truckNetId
  if SHX3_2 and 0 ~= SHX3_2 then
    SHX4_2 = NetworkGetNetworkIdFromEntity
    SHX5_2 = SHX1_2
    SHX4_2 = SHX4_2(SHX5_2)
    if SHX4_2 == SHX3_2 then
      SHX4_2 = true
      return SHX4_2
    end
  end
  SHX4_2 = false
  return SHX4_2
end
function SHX55_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = SHX13_1.active
  if not SHX0_2 then
    SHX0_2 = SHX13_1.truckJobBlip
    if 0 ~= SHX0_2 then
      SHX0_2 = DoesBlipExist
      SHX1_2 = SHX13_1.truckJobBlip
      SHX0_2 = SHX0_2(SHX1_2)
      if SHX0_2 then
        SHX0_2 = RemoveBlip
        SHX1_2 = SHX13_1.truckJobBlip
        SHX0_2(SHX1_2)
      end
    end
    SHX13_1.truckJobBlip = 0
    SHX13_1.truckJobBlipEntity = 0
    return
  end
  SHX0_2 = SHX13_1.truckNetId
  if SHX0_2 then
    SHX0_2 = SHX13_1.truckNetId
    if 0 ~= SHX0_2 then
      goto SHX_LABEL_38
    end
  end
  SHX0_2 = SHX13_1.truckJobBlip
  if 0 ~= SHX0_2 then
    SHX0_2 = DoesBlipExist
    SHX1_2 = SHX13_1.truckJobBlip
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      SHX0_2 = RemoveBlip
      SHX1_2 = SHX13_1.truckJobBlip
      SHX0_2(SHX1_2)
    end
  end
  SHX13_1.truckJobBlip = 0
  SHX13_1.truckJobBlipEntity = 0
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_38:: outside nested blocks until all 'goto SHX_LABEL_38' can see it
  ::SHX_LABEL_38::
  SHX0_2 = SHX53_1
  SHX0_2()
  SHX0_2 = SHX13_1.truckEntity
  if SHX0_2 and 0 ~= SHX0_2 then
    SHX1_2 = DoesEntityExist
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      goto SHX_LABEL_64
    end
  end
  SHX1_2 = SHX13_1.truckJobBlip
  if 0 ~= SHX1_2 then
    SHX1_2 = DoesBlipExist
    SHX2_2 = SHX13_1.truckJobBlip
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = RemoveBlip
      SHX2_2 = SHX13_1.truckJobBlip
      SHX1_2(SHX2_2)
    end
  end
  SHX13_1.truckJobBlip = 0
  SHX13_1.truckJobBlipEntity = 0
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_64:: outside nested blocks until all 'goto SHX_LABEL_64' can see it
  ::SHX_LABEL_64::
  SHX1_2 = SHX54_1
  SHX1_2 = SHX1_2()
  if SHX1_2 then
    SHX1_2 = SHX13_1.truckJobBlip
    if 0 ~= SHX1_2 then
      SHX1_2 = DoesBlipExist
      SHX2_2 = SHX13_1.truckJobBlip
      SHX1_2 = SHX1_2(SHX2_2)
      if SHX1_2 then
        SHX1_2 = RemoveBlip
        SHX2_2 = SHX13_1.truckJobBlip
        SHX1_2(SHX2_2)
      end
    end
    SHX13_1.truckJobBlip = 0
    SHX13_1.truckJobBlipEntity = 0
    return
  end
  SHX1_2 = SHX13_1.truckJobBlip
  if 0 ~= SHX1_2 then
    SHX1_2 = DoesBlipExist
    SHX2_2 = SHX13_1.truckJobBlip
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = SHX13_1.truckJobBlipEntity
      if SHX1_2 == SHX0_2 then
        return
      end
    end
  end
  SHX1_2 = SHX13_1.truckJobBlip
  if 0 ~= SHX1_2 then
    SHX1_2 = DoesBlipExist
    SHX2_2 = SHX13_1.truckJobBlip
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = RemoveBlip
      SHX2_2 = SHX13_1.truckJobBlip
      SHX1_2(SHX2_2)
    end
  end
  SHX1_2 = AddBlipForEntity
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SetBlipSprite
  SHX3_2 = SHX1_2
  SHX4_2 = 477
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetBlipColour
  SHX3_2 = SHX1_2
  SHX4_2 = SHX11_1
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetBlipScale
  SHX3_2 = SHX1_2
  SHX4_2 = 0.85
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetBlipAsShortRange
  SHX3_2 = SHX1_2
  SHX4_2 = false
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetBlipAsFriendly
  SHX3_2 = SHX1_2
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = BeginTextCommandSetBlipName
  SHX3_2 = "STRING"
  SHX2_2(SHX3_2)
  SHX2_2 = AddTextComponentSubstringPlayerName
  SHX3_2 = "Your garbage truck"
  SHX2_2(SHX3_2)
  SHX2_2 = EndTextCommandSetBlipName
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
  SHX13_1.truckJobBlip = SHX1_2
  SHX13_1.truckJobBlipEntity = SHX0_2
end
function SHX56_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = SHX53_1
  SHX0_2()
  SHX0_2 = SHX13_1.truckEntity
  if SHX0_2 and 0 ~= SHX0_2 then
    SHX1_2 = DoesEntityExist
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      goto SHX_LABEL_15
    end
  end
  SHX1_2 = nil
  return SHX1_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_15:: outside nested blocks until all 'goto SHX_LABEL_15' can see it
  ::SHX_LABEL_15::
  SHX1_2 = SHX0_1.truckDepositLocalOffset
  SHX2_2 = GetOffsetFromEntityInWorldCoords
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2.x
  SHX5_2 = SHX1_2.y
  SHX6_2 = SHX1_2.z
  return SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
end
function SHX57_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
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
  SHX1_2 = tonumber
  SHX2_2 = SHX0_1.truckDepositDoorMinRatio
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = 0.12
  end
  SHX2_2 = SHX0_1.truckDepositDoorIndices
  if not SHX2_2 then
    SHX2_2 = {}
    SHX3_2 = 5
    SHX4_2 = 2
    SHX5_2 = 3
    SHX2_2[1] = SHX3_2
    SHX2_2[2] = SHX4_2
    SHX2_2[3] = SHX5_2
  end
  SHX3_2 = 1
  SHX4_2 = #SHX2_2
  SHX5_2 = 1
  for SHX6_2 = SHX3_2, SHX4_2, SHX5_2 do
    SHX7_2 = SHX2_2[SHX6_2]
    SHX8_2 = GetVehicleDoorAngleRatio
    SHX9_2 = SHX0_2
    SHX10_2 = SHX7_2
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
    if SHX8_2 and SHX1_2 < SHX8_2 then
      SHX9_2 = true
      return SHX9_2
    end
  end
  SHX3_2 = false
  return SHX3_2
end
function SHX58_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  if 0 ~= SHX0_2 then
    SHX1_2 = DoesEntityExist
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      goto SHX_LABEL_9
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  SHX1_2 = NetworkHasControlOfEntity
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = NetworkRequestControlOfEntity
    SHX2_2 = SHX0_2
    SHX1_2(SHX2_2)
  end
  SHX1_2 = SHX0_1.truckDepositDoorIndices
  if not SHX1_2 then
    SHX1_2 = {}
    SHX2_2 = 5
    SHX3_2 = 2
    SHX4_2 = 3
    SHX1_2[1] = SHX2_2
    SHX1_2[2] = SHX3_2
    SHX1_2[3] = SHX4_2
  end
  SHX2_2 = 1
  SHX3_2 = #SHX1_2
  SHX4_2 = 1
  for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = SetVehicleDoorOpen
    SHX7_2 = SHX0_2
    SHX8_2 = SHX1_2[SHX5_2]
    SHX9_2 = false
    SHX10_2 = false
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  end
end
function SHX59_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = SHX13_1.depositInProgress
  if not SHX0_2 then
    SHX0_2 = SHX13_1.localCarryKeys
    SHX0_2 = #SHX0_2
    if not (SHX0_2 < 1) then
      SHX0_2 = SHX13_1.active
      if SHX0_2 then
        goto SHX_LABEL_12
      end
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_12:: outside nested blocks until all 'goto SHX_LABEL_12' can see it
  ::SHX_LABEL_12::
  SHX0_2 = SHX53_1
  SHX0_2()
  SHX0_2 = SHX13_1.truckEntity
  if 0 ~= SHX0_2 then
    SHX1_2 = SHX57_1
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      goto SHX_LABEL_27
    end
  end
  SHX1_2 = SHX23_1
  SHX2_2 = false
  SHX3_2 = "Open the back of the truck first."
  SHX1_2(SHX2_2, SHX3_2)
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_27:: outside nested blocks until all 'goto SHX_LABEL_27' can see it
  ::SHX_LABEL_27::
  SHX13_1.depositInProgress = true
  SHX1_2 = SHX13_1.carryObject
  SHX13_1.pendingDepositThrownEnt = SHX1_2
  SHX1_2 = SHX13_1.localCarryKeys
  SHX1_2 = #SHX1_2
  SHX1_2 = SHX1_2 >= 2
  SHX13_1.throwStartedWithDualCarry = SHX1_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.loadAnimDict
  SHX3_2 = SHX3_1
  SHX2_2(SHX3_2)
  SHX2_2 = TaskPlayAnim
  SHX3_2 = SHX1_2
  SHX4_2 = SHX3_1
  SHX5_2 = SHX4_1
  SHX6_2 = 8.0
  SHX7_2 = -8.0
  SHX8_2 = -1
  SHX9_2 = 0
  SHX10_2 = 0
  SHX11_2 = false
  SHX12_2 = false
  SHX13_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX2_2 = GetAnimDuration
  SHX3_2 = SHX3_1
  SHX4_2 = SHX4_1
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  if not SHX2_2 or SHX2_2 <= 0.0 then
    SHX2_2 = 2.0
  end
  SHX3_2 = math
  SHX3_2 = SHX3_2.floor
  SHX4_2 = SHX2_2 * 1000
  SHX3_2 = SHX3_2(SHX4_2)
  SHX3_2 = SHX3_2 + 250
  SHX4_2 = Citizen
  SHX4_2 = SHX4_2.SetTimeout
  SHX5_2 = 180
  function SHX6_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = SHX13_1.active
    if SHX0_3 then
      SHX0_3 = SHX13_1.localCarryKeys
      SHX0_3 = #SHX0_3
      if SHX0_3 >= 1 then
        SHX0_3 = SHX13_1.depositInProgress
        if SHX0_3 then
          SHX0_3 = TriggerServerEvent
          SHX1_3 = "7c0e7a5e52"
          SHX0_3(SHX1_3)
        end
      end
    end
  end
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = Citizen
  SHX4_2 = SHX4_2.SetTimeout
  SHX5_2 = SHX3_2
  function SHX6_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
    SHX13_1.depositInProgress = false
    SHX0_3 = DoesEntityExist
    SHX1_3 = SHX1_2
    SHX0_3 = SHX0_3(SHX1_3)
    if SHX0_3 then
      SHX0_3 = StopAnimTask
      SHX1_3 = SHX1_2
      SHX2_3 = SHX3_1
      SHX3_3 = SHX4_1
      SHX4_3 = 1.0
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
      SHX0_3 = ClearPedSecondaryTask
      SHX1_3 = SHX1_2
      SHX0_3(SHX1_3)
    end
    SHX0_3 = RemoveAnimDict
    SHX1_3 = SHX3_1
    SHX0_3(SHX1_3)
  end
  SHX4_2(SHX5_2, SHX6_2)
end
function SHX60_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX0_2 = SHX13_1.isLeader
  if not SHX0_2 then
    return
  end
  SHX0_2 = SHX43_1
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX1_2 = SHX0_2.x
    if nil ~= SHX1_2 then
      SHX1_2 = SHX0_2.y
      if nil ~= SHX1_2 then
        SHX1_2 = SHX0_2.z
        if nil ~= SHX1_2 then
          goto SHX_LABEL_19
        end
      end
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_19:: outside nested blocks until all 'goto SHX_LABEL_19' can see it
  ::SHX_LABEL_19::
  SHX1_2 = SHX0_2.w
  if not SHX1_2 then
    SHX1_2 = 0.0
  end
  SHX2_2 = 0
  SHX3_2 = SHX13_1.truckGarageUuid
  if SHX3_2 then
    SHX3_2 = SHX13_1.truckVehicleMods
    if SHX3_2 then
      SHX3_2 = SHX13_1.truckGarageUuid
      SHX4_2 = SHX13_1.truckVehicleMods
      SHX5_2 = SHX13_1.truckVehicleId
      if not SHX5_2 then
        SHX5_2 = SHX0_1.vehicleModel
        if not SHX5_2 then
          SHX5_2 = "trash"
        end
      end
      SHX6_2 = CMG
      SHX6_2 = SHX6_2.loadModel
      SHX7_2 = SHX5_2
      SHX6_2 = SHX6_2(SHX7_2)
      if nil == SHX6_2 then
        SHX7_2 = SHX23_1
        SHX8_2 = false
        SHX9_2 = "Could not load your truck."
        SHX7_2(SHX8_2, SHX9_2)
        return
      end
      SHX7_2 = CMG
      SHX7_2 = SHX7_2.requestEntitySpawn
      SHX8_2 = "garbage_truck_garage"
      SHX9_2 = SHX3_2
      SHX7_2(SHX8_2, SHX9_2)
      SHX7_2 = CMG
      SHX7_2 = SHX7_2.spawnVehicle
      SHX8_2 = SHX6_2
      SHX9_2 = SHX0_2.x
      SHX10_2 = SHX0_2.y
      SHX11_2 = SHX0_2.z
      SHX12_2 = SHX1_2
      SHX13_2 = false
      SHX14_2 = true
      SHX15_2 = true
      SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
      SHX2_2 = SHX7_2
      if SHX2_2 and 0 ~= SHX2_2 then
        SHX7_2 = DoesEntityExist
        SHX8_2 = SHX2_2
        SHX7_2 = SHX7_2(SHX8_2)
        if SHX7_2 then
          SHX7_2 = SetEntityHeading
          SHX8_2 = SHX2_2
          SHX9_2 = SHX1_2
          SHX7_2(SHX8_2, SHX9_2)
          SHX7_2 = CMG
          SHX7_2 = SHX7_2.getClientUserId
          SHX7_2 = SHX7_2()
          if SHX7_2 then
            SHX8_2 = DecorSetInt
            SHX9_2 = SHX2_2
            SHX10_2 = "ac76c9d452"
            SHX11_2 = SHX7_2
            SHX8_2(SHX9_2, SHX10_2, SHX11_2)
          end
          SHX8_2 = DecorSetInt
          SHX9_2 = SHX2_2
          SHX10_2 = "0a6cf607ed"
          SHX11_2 = SHX3_2
          SHX8_2(SHX9_2, SHX10_2, SHX11_2)
          SHX8_2 = tonumber
          SHX9_2 = SHX4_2.fuel
          SHX8_2 = SHX8_2(SHX9_2)
          if not SHX8_2 then
            SHX8_2 = 0
          end
          SHX9_2 = CMG
          SHX9_2 = SHX9_2.setVehicleFuel
          SHX10_2 = SHX2_2
          SHX11_2 = SHX8_2
          SHX9_2(SHX10_2, SHX11_2)
          SHX9_2 = tCMG
          SHX9_2 = SHX9_2.applyModsOnVehicle
          SHX10_2 = SHX4_2
          SHX11_2 = SHX3_2
          SHX12_2 = SHX2_2
          SHX9_2(SHX10_2, SHX11_2, SHX12_2)
        end
      end
  end
  else
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.requestEntitySpawn
    SHX4_2 = "garbage_truck"
    SHX3_2(SHX4_2)
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.spawnVehicle
    SHX4_2 = SHX13_1.truckVehicleId
    if not SHX4_2 then
      SHX4_2 = SHX0_1.vehicleModel
    end
    SHX5_2 = SHX0_2.x
    SHX6_2 = SHX0_2.y
    SHX7_2 = SHX0_2.z
    SHX8_2 = SHX1_2
    SHX9_2 = false
    SHX10_2 = true
    SHX11_2 = true
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX2_2 = SHX3_2
    if SHX2_2 and 0 ~= SHX2_2 then
      SHX3_2 = DoesEntityExist
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if SHX3_2 then
        SHX3_2 = SetEntityHeading
        SHX4_2 = SHX2_2
        SHX5_2 = SHX1_2
        SHX3_2(SHX4_2, SHX5_2)
      end
    end
  end
  if SHX2_2 and 0 ~= SHX2_2 then
    SHX3_2 = DoesEntityExist
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      SHX13_1.truckEntity = SHX2_2
      SHX3_2 = NetworkGetNetworkIdFromEntity
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      SHX13_1.truckNetId = SHX3_2
      SHX4_2 = SHX55_1
      SHX4_2()
      SHX4_2 = TriggerServerEvent
      SHX5_2 = "310ffe3e16"
      SHX6_2 = SHX3_2
      SHX4_2(SHX5_2, SHX6_2)
  end
  else
    SHX3_2 = SHX23_1
    SHX4_2 = false
    SHX5_2 = "Could not spawn the garbage truck."
    SHX3_2(SHX4_2, SHX5_2)
  end
end
function SHX61_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX2_2 = type
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if "table" == SHX2_2 then
    SHX2_2 = type
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if "table" == SHX2_2 then
      goto SHX_LABEL_13
    end
  end
  SHX2_2 = false
  return SHX2_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_13:: outside nested blocks until all 'goto SHX_LABEL_13' can see it
  ::SHX_LABEL_13::
  SHX2_2 = #SHX0_2
  SHX3_2 = #SHX1_2
  if SHX2_2 ~= SHX3_2 then
    SHX2_2 = false
    return SHX2_2
  end
  SHX2_2 = 1
  SHX3_2 = #SHX0_2
  SHX4_2 = 1
  for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = SHX0_2[SHX5_2]
    SHX7_2 = SHX1_2[SHX5_2]
    if SHX6_2 ~= SHX7_2 then
      SHX6_2 = false
      return SHX6_2
    end
  end
  SHX2_2 = true
  return SHX2_2
end
function SHX62_1(SHX0_2)
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
  SHX1_2 = SHX0_2.leaderUserId
  if nil ~= SHX1_2 then
    SHX1_2 = SHX0_2.leaderUserId
    SHX13_1.leaderUserId = SHX1_2
  end
  SHX1_2 = SHX0_2.isLeader
  if nil ~= SHX1_2 then
    SHX1_2 = SHX0_2.isLeader
    SHX1_2 = true == SHX1_2
    SHX13_1.isLeader = SHX1_2
  end
  SHX1_2 = SHX0_2.stopIndex
  if not SHX1_2 then
    SHX1_2 = SHX13_1.stopIndex
  end
  SHX13_1.stopIndex = SHX1_2
  SHX1_2 = type
  SHX2_2 = SHX0_2.phase
  SHX1_2 = SHX1_2(SHX2_2)
  if "string" == SHX1_2 then
    SHX1_2 = SHX0_2.phase
    if "" ~= SHX1_2 then
      SHX1_2 = SHX0_2.phase
      SHX13_1.phase = SHX1_2
    end
  end
  SHX1_2 = SHX0_2.deposited
  if not SHX1_2 then
    SHX1_2 = SHX13_1.deposited
  end
  SHX13_1.deposited = SHX1_2
  SHX1_2 = SHX0_2.carryingBagKeys
  if nil ~= SHX1_2 then
    SHX1_2 = {}
    SHX2_2 = type
    SHX3_2 = SHX0_2.carryingBagKeys
    SHX2_2 = SHX2_2(SHX3_2)
    if "table" == SHX2_2 then
      SHX2_2 = ipairs
      SHX3_2 = SHX0_2.carryingBagKeys
      SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
      for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
        SHX8_2 = type
        SHX9_2 = SHX7_2
        SHX8_2 = SHX8_2(SHX9_2)
        if "string" == SHX8_2 then
          SHX1_2[SHX7_2] = true
        end
      end
    end
    SHX13_1.carryingBagKeys = SHX1_2
  end
  SHX1_2 = SHX0_2.myCarryingKeys
  if nil ~= SHX1_2 then
    SHX1_2 = {}
    SHX2_2 = type
    SHX3_2 = SHX0_2.myCarryingKeys
    SHX2_2 = SHX2_2(SHX3_2)
    if "table" == SHX2_2 then
      SHX2_2 = ipairs
      SHX3_2 = SHX0_2.myCarryingKeys
      SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
      for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
        SHX8_2 = type
        SHX9_2 = SHX7_2
        SHX8_2 = SHX8_2(SHX9_2)
        if "string" == SHX8_2 and "" ~= SHX7_2 then
          SHX8_2 = #SHX1_2
          SHX8_2 = SHX8_2 + 1
          SHX1_2[SHX8_2] = SHX7_2
        end
      end
    end
    SHX2_2 = SHX61_1
    SHX3_2 = SHX13_1.localCarryKeys
    SHX4_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    SHX2_2 = not SHX2_2
    SHX13_1.localCarryKeys = SHX1_2
    if SHX2_2 then
      SHX3_2 = SHX13_1.depositInProgress
      if not SHX3_2 then
        SHX3_2 = SHX38_1
        SHX3_2()
      end
    end
  end
  SHX1_2 = SHX0_2.truckNetId
  if SHX1_2 then
    SHX1_2 = SHX0_2.truckNetId
    SHX13_1.truckNetId = SHX1_2
  end
  SHX1_2 = SHX51_1
  SHX1_2()
  SHX1_2 = SHX52_1
  SHX1_2()
end
SHX63_1 = RegisterNetEvent
SHX64_1 = "1d86e687ab"
function SHX65_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  if SHX0_2 and SHX1_2 then
    SHX2_2 = SetNewWaypoint
    SHX3_2 = SHX0_2 + 0.0
    SHX4_2 = SHX1_2 + 0.0
    SHX2_2(SHX3_2, SHX4_2)
  end
end
SHX63_1(SHX64_1, SHX65_1)
SHX63_1 = RegisterNetEvent
SHX64_1 = "7718048412"
function SHX65_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.uiSendMessage
  SHX2_2 = {}
  SHX2_2.type = "GARBAGE_LOBBY"
  SHX3_2 = SHX0_2 or SHX3_2
  if not SHX0_2 then
    SHX3_2 = {}
  end
  SHX2_2.payload = SHX3_2
  SHX1_2(SHX2_2)
end
SHX63_1(SHX64_1, SHX65_1)
SHX63_1 = RegisterNetEvent
SHX64_1 = "c77105f3b9"
function SHX65_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.uiSendMessage
  SHX2_2 = {}
  SHX2_2.type = "GARBAGE_SEARCH_RESULT"
  SHX3_2 = {}
  SHX4_2 = SHX0_2 or SHX4_2
  if not SHX0_2 then
    SHX4_2 = {}
  end
  SHX3_2.players = SHX4_2
  SHX2_2.payload = SHX3_2
  SHX1_2(SHX2_2)
end
SHX63_1(SHX64_1, SHX65_1)
SHX63_1 = RegisterNetEvent
SHX64_1 = "2e2d0ea5c2"
function SHX65_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = SHX41_1
  SHX1_2()
  SHX13_1.active = true
  SHX1_2 = SHX0_2.sessionId
  SHX13_1.sessionId = SHX1_2
  SHX1_2 = SHX0_2.leaderUserId
  SHX13_1.leaderUserId = SHX1_2
  SHX1_2 = SHX0_2.routeIndex
  SHX13_1.routeIndex = SHX1_2
  SHX1_2 = SHX0_2.stopIndex
  if not SHX1_2 then
    SHX1_2 = 1
  end
  SHX13_1.stopIndex = SHX1_2
  SHX1_2 = SHX0_2.phase
  if not SHX1_2 then
    SHX1_2 = "stops"
  end
  SHX13_1.phase = SHX1_2
  SHX1_2 = {}
  SHX13_1.deposited = SHX1_2
  SHX1_2 = {}
  SHX13_1.carryingBagKeys = SHX1_2
  SHX1_2 = {}
  SHX13_1.localCarryKeys = SHX1_2
  SHX13_1.truckNetId = nil
  SHX13_1.carryingKey = nil
  SHX13_1.garbageFinishNextAttemptAt = nil
  SHX1_2 = SHX0_2.payPerBag
  if not SHX1_2 then
    SHX1_2 = 0
  end
  SHX13_1.payPerBag = SHX1_2
  SHX1_2 = SHX0_2.isLeader
  SHX1_2 = true == SHX1_2
  SHX13_1.isLeader = SHX1_2
  SHX13_1.truckEntity = 0
  SHX1_2 = SHX0_2.truckGarageUuid
  SHX13_1.truckGarageUuid = SHX1_2
  SHX1_2 = SHX0_2.truckVehicleMods
  SHX13_1.truckVehicleMods = SHX1_2
  SHX1_2 = SHX0_2.truckVehicleId
  if not SHX1_2 then
    SHX1_2 = SHX0_1.vehicleModel
    if not SHX1_2 then
      SHX1_2 = "trash"
    end
  end
  SHX13_1.truckVehicleId = SHX1_2
  SHX1_2 = SHX0_2.truckSpawn
  SHX2_2 = type
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if "table" == SHX2_2 then
    SHX2_2 = SHX1_2.x
    if nil ~= SHX2_2 then
      SHX2_2 = SHX1_2.y
      if nil ~= SHX2_2 then
        SHX2_2 = SHX1_2.z
        if nil ~= SHX2_2 then
          SHX2_2 = vector4
          SHX3_2 = SHX1_2.x
          SHX4_2 = SHX1_2.y
          SHX5_2 = SHX1_2.z
          SHX6_2 = tonumber
          SHX7_2 = SHX1_2.w
          SHX6_2 = SHX6_2(SHX7_2)
          if not SHX6_2 then
            SHX6_2 = 0.0
          end
          SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
          SHX13_1.truckSpawnPoint = SHX2_2
      end
    end
  end
  else
    SHX13_1.truckSpawnPoint = nil
  end
  SHX2_2 = GetEntityModel
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerPed
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX3_2()
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  if 1885233650 == SHX2_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.lockCustomisationPreset
    SHX3_2 = "GarbageMale"
    SHX2_2(SHX3_2)
  else
    SHX2_2 = GetEntityModel
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.getPlayerPed
    SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX3_2()
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
    if -1667301416 == SHX2_2 then
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.lockCustomisationPreset
      SHX3_2 = "GarbageFemale"
      SHX2_2(SHX3_2)
    else
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.lockCustomisationPreset
      SHX3_2 = "GarbageMale"
      SHX2_2(SHX3_2)
    end
  end
  SHX2_2 = SHX13_1.isLeader
  if SHX2_2 then
    SHX2_2 = SHX60_1
    SHX2_2()
  end
  SHX2_2 = SHX51_1
  SHX2_2()
  SHX2_2 = SHX52_1
  SHX2_2()
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.setHudTimerBarProviderActive
  SHX3_2 = "garbageJob"
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SHX23_1
  SHX3_2 = true
  SHX4_2 = "Run started. Get in the truck, then follow the route to collect bags."
  SHX2_2(SHX3_2, SHX4_2)
end
SHX63_1(SHX64_1, SHX65_1)
SHX63_1 = RegisterNetEvent
SHX64_1 = "ee96587e34"
function SHX65_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX13_1.active
  if not SHX1_2 then
    return
  end
  SHX1_2 = SHX62_1
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
SHX63_1(SHX64_1, SHX65_1)
SHX63_1 = RegisterNetEvent
SHX64_1 = "1329895e80"
function SHX65_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX13_1.carryingKey = nil
  SHX13_1.depositInProgress = false
  SHX13_1.throwStartedWithDualCarry = false
  SHX0_2 = SHX33_1
  SHX0_2()
end
SHX63_1(SHX64_1, SHX65_1)
SHX63_1 = RegisterNetEvent
SHX64_1 = "7831bf8fd7"
function SHX65_1(SHX0_2)
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
  if "string" ~= SHX1_2 or "" == SHX0_2 then
    return
  end
  SHX1_2 = SHX27_1
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = false
  SHX2_2 = ipairs
  SHX3_2 = SHX13_1.localCarryKeys
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    if SHX7_2 == SHX0_2 then
      SHX1_2 = true
      break
    end
  end
  if not SHX1_2 then
    SHX2_2 = SHX13_1.localCarryKeys
    SHX3_2 = SHX13_1.localCarryKeys
    SHX3_2 = #SHX3_2
    SHX3_2 = SHX3_2 + 1
    SHX2_2[SHX3_2] = SHX0_2
  end
  SHX2_2 = SHX38_1
  SHX2_2()
end
SHX63_1(SHX64_1, SHX65_1)
SHX63_1 = RegisterNetEvent
SHX64_1 = "4dbbfeac16"
function SHX65_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX13_1.depositInProgress = false
  SHX13_1.throwStartedWithDualCarry = false
  SHX13_1.pendingDepositThrownEnt = 0
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = DoesEntityExist
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = StopAnimTask
    SHX3_2 = SHX1_2
    SHX4_2 = SHX3_1
    SHX5_2 = SHX4_1
    SHX6_2 = 1.0
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    SHX2_2 = ClearPedSecondaryTask
    SHX3_2 = SHX1_2
    SHX2_2(SHX3_2)
  end
  SHX2_2 = SHX13_1.active
  if SHX2_2 then
    SHX2_2 = SHX38_1
    SHX2_2()
  end
  if "door" == SHX0_2 then
    SHX2_2 = SHX23_1
    SHX3_2 = false
    SHX4_2 = "Open the back of the truck first."
    SHX2_2(SHX3_2, SHX4_2)
  end
end
SHX63_1(SHX64_1, SHX65_1)
SHX63_1 = RegisterNetEvent
SHX64_1 = "a83262be3d"
function SHX65_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = SHX13_1.pendingDepositThrownEnt
  SHX2_2 = SHX1_2 or SHX2_2
  if 0 == SHX1_2 or not SHX1_2 then
    SHX2_2 = SHX13_1.carryObject
  end
  SHX13_1.pendingDepositThrownEnt = 0
  SHX13_1.carryingKey = nil
  SHX3_2 = type
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  if "table" == SHX3_2 then
    SHX3_2 = {}
    SHX13_1.localCarryKeys = SHX3_2
    SHX3_2 = 1
    SHX4_2 = #SHX0_2
    SHX5_2 = 1
    for SHX6_2 = SHX3_2, SHX4_2, SHX5_2 do
      SHX7_2 = SHX0_2[SHX6_2]
      SHX8_2 = type
      SHX9_2 = SHX7_2
      SHX8_2 = SHX8_2(SHX9_2)
      if "string" == SHX8_2 and "" ~= SHX7_2 then
        SHX8_2 = SHX13_1.localCarryKeys
        SHX9_2 = SHX13_1.localCarryKeys
        SHX9_2 = #SHX9_2
        SHX9_2 = SHX9_2 + 1
        SHX8_2[SHX9_2] = SHX7_2
      end
    end
  end
  SHX3_2 = SHX13_1.active
  if not SHX3_2 then
    SHX13_1.throwStartedWithDualCarry = false
    return
  end
  SHX3_2 = tonumber
  SHX4_2 = SHX0_1.depositBagRemoveDelayMs
  SHX3_2 = SHX3_2(SHX4_2)
  if not SHX3_2 then
    SHX3_2 = 850
  end
  if SHX3_2 < 0 then
    SHX3_2 = 0
  end
  SHX4_2 = SHX3_2
  SHX5_2 = SHX13_1.throwStartedWithDualCarry
  if SHX5_2 then
    SHX5_2 = type
    SHX6_2 = SHX0_2
    SHX5_2 = SHX5_2(SHX6_2)
    if "table" == SHX5_2 then
      SHX5_2 = #SHX0_2
      if 1 == SHX5_2 then
        SHX5_2 = SHX5_1
        SHX4_2 = SHX3_2 + SHX5_2
      end
    end
  end
  SHX5_2 = Citizen
  SHX5_2 = SHX5_2.SetTimeout
  SHX6_2 = SHX4_2
  function SHX7_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
    SHX0_3 = SHX13_1.active
    if not SHX0_3 then
      SHX13_1.throwStartedWithDualCarry = false
      return
    end
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.getPlayerPed
    SHX0_3 = SHX0_3()
    SHX1_3 = DoesEntityExist
    SHX2_3 = SHX0_3
    SHX1_3 = SHX1_3(SHX2_3)
    if SHX1_3 then
      SHX1_3 = StopAnimTask
      SHX2_3 = SHX0_3
      SHX3_3 = SHX3_1
      SHX4_3 = SHX4_1
      SHX5_3 = 1.0
      SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3)
      SHX1_3 = ClearPedSecondaryTask
      SHX2_3 = SHX0_3
      SHX1_3(SHX2_3)
    end
    SHX1_3 = SHX2_2
    if 0 ~= SHX1_3 then
      SHX1_3 = DoesEntityExist
      SHX2_3 = SHX2_2
      SHX1_3 = SHX1_3(SHX2_3)
      if SHX1_3 then
        SHX1_3 = SHX30_1
        SHX2_3 = SHX2_2
        SHX1_3(SHX2_3)
      end
    end
    SHX1_3 = SHX13_1.carryObject
    SHX2_3 = SHX2_2
    if SHX1_3 == SHX2_3 then
      SHX13_1.carryObject = 0
    end
    SHX1_3 = SHX38_1
    SHX1_3()
    SHX13_1.throwStartedWithDualCarry = false
  end
  SHX5_2(SHX6_2, SHX7_2)
end
SHX63_1(SHX64_1, SHX65_1)
SHX63_1 = RegisterNetEvent
SHX64_1 = "39aecce185"
function SHX65_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.setHudTimerBarProviderActive
  SHX4_2 = "garbageJob"
  SHX5_2 = false
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.unlockCustomisationPreset
  SHX3_2()
  if false ~= SHX2_2 then
    SHX3_2 = SHX42_1
    SHX4_2 = SHX1_2
    SHX3_2(SHX4_2)
  end
  SHX3_2 = SHX41_1
  SHX3_2()
  SHX13_1.truckNetId = nil
  SHX13_1.active = false
  SHX13_1.sessionId = nil
  SHX13_1.isLeader = false
  SHX13_1.truckGarageUuid = nil
  SHX13_1.truckVehicleMods = nil
  SHX3_2 = SHX0_1.vehicleModel
  if not SHX3_2 then
    SHX3_2 = "trash"
  end
  SHX13_1.truckVehicleId = SHX3_2
  if "complete" == SHX0_2 then
    SHX3_2 = SHX23_1
    SHX4_2 = true
    SHX5_2 = "Run finished."
    SHX3_2(SHX4_2, SHX5_2)
  elseif "member_left" == SHX0_2 then
    SHX3_2 = SHX23_1
    SHX4_2 = false
    SHX5_2 = "Run ended (someone left the crew)."
    SHX3_2(SHX4_2, SHX5_2)
  elseif "cancelled" == SHX0_2 then
    SHX3_2 = SHX23_1
    SHX4_2 = false
    SHX5_2 = "Run cancelled."
    SHX3_2(SHX4_2, SHX5_2)
  else
    SHX3_2 = SHX23_1
    SHX4_2 = false
    SHX5_2 = "Run ended."
    SHX3_2(SHX4_2, SHX5_2)
  end
  SHX3_2 = TriggerServerEvent
  SHX4_2 = "d910ec8d2b"
  SHX3_2(SHX4_2)
end
SHX63_1(SHX64_1, SHX65_1)
SHX63_1 = AddEventHandler
SHX64_1 = "a68d3374be"
function SHX65_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  if "Garbage" == SHX0_2 then
    SHX1_2 = TriggerServerEvent
    SHX2_2 = "d910ec8d2b"
    SHX1_2(SHX2_2)
  end
end
SHX63_1(SHX64_1, SHX65_1)
SHX63_1 = CMG
SHX63_1 = SHX63_1.uiRegisterCallback
SHX64_1 = "garbageRequestLobbySync"
function SHX65_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "d910ec8d2b"
  SHX0_2(SHX1_2)
end
SHX63_1(SHX64_1, SHX65_1)
SHX63_1 = CMG
SHX63_1 = SHX63_1.uiRegisterCallback
SHX64_1 = "getGarbageLevelState"
function SHX65_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "5a26a83e7a"
  SHX0_2(SHX1_2)
end
SHX63_1(SHX64_1, SHX65_1)
SHX63_1 = RegisterNetEvent
SHX64_1 = "3bc5672b8b"
function SHX65_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.uiSendMessage
  SHX4_2 = {}
  SHX4_2.type = "GARBAGE_LEVELS"
  SHX5_2 = {}
  SHX6_2 = SHX0_2 or SHX6_2
  if not SHX0_2 then
    SHX6_2 = 0
  end
  SHX5_2.level = SHX6_2
  SHX6_2 = SHX1_2 or SHX6_2
  if not SHX1_2 then
    SHX6_2 = 0
  end
  SHX5_2.xp = SHX6_2
  SHX6_2 = SHX2_2 or SHX6_2
  if not SHX2_2 then
    SHX6_2 = 0
  end
  SHX5_2.xpMax = SHX6_2
  SHX4_2.payload = SHX5_2
  SHX3_2(SHX4_2)
end
SHX63_1(SHX64_1, SHX65_1)
SHX63_1 = CMG
SHX63_1 = SHX63_1.uiRegisterCallback
SHX64_1 = "getGarbageLevels"
function SHX65_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "8cf6517ad0"
  SHX0_2(SHX1_2)
end
SHX63_1(SHX64_1, SHX65_1)
SHX63_1 = RegisterNetEvent
SHX64_1 = "6d46ba943e"
function SHX65_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.uiSendMessage
  SHX2_2 = {}
  SHX2_2.type = "GARBAGE_LEVEL_LIST"
  SHX3_2 = {}
  SHX4_2 = SHX0_2 or SHX4_2
  if not SHX0_2 then
    SHX4_2 = {}
  end
  SHX3_2.levels = SHX4_2
  SHX2_2.payload = SHX3_2
  SHX1_2(SHX2_2)
end
SHX63_1(SHX64_1, SHX65_1)
SHX63_1 = CMG
SHX63_1 = SHX63_1.uiRegisterCallback
SHX64_1 = "getGarbageLeaderboard"
function SHX65_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "61205eda19"
  SHX0_2(SHX1_2)
end
SHX63_1(SHX64_1, SHX65_1)
SHX63_1 = RegisterNetEvent
SHX64_1 = "0a2c254e81"
function SHX65_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.uiSendMessage
  SHX2_2 = {}
  SHX2_2.type = "GARBAGE_LEADERBOARD"
  SHX3_2 = {}
  SHX4_2 = SHX0_2 or SHX4_2
  if not SHX0_2 then
    SHX4_2 = {}
  end
  SHX3_2.collectors = SHX4_2
  SHX2_2.payload = SHX3_2
  SHX1_2(SHX2_2)
end
SHX63_1(SHX64_1, SHX65_1)
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
    return SHX0_2
  end
  SHX1_2 = type
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if "string" == SHX1_2 and "" ~= SHX0_2 then
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
  end
  SHX1_2 = nil
  return SHX1_2
end
SHX64_1 = CMG
SHX64_1 = SHX64_1.uiRegisterCallback
SHX65_1 = "garbageSearchPlayers"
function SHX66_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX63_1
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX1_2 or SHX2_2
  if SHX1_2 then
    SHX2_2 = SHX1_2.query
  end
  SHX3_2 = type
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if "string" == SHX3_2 then
    SHX3_2 = TriggerServerEvent
    SHX4_2 = "c6f9287679"
    SHX5_2 = SHX2_2
    SHX3_2(SHX4_2, SHX5_2)
  end
end
SHX64_1(SHX65_1, SHX66_1)
SHX64_1 = CMG
SHX64_1 = SHX64_1.uiRegisterCallback
SHX65_1 = "garbageInvitePlayer"
function SHX66_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = SHX63_1
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX1_2 or SHX2_2
  if SHX1_2 then
    SHX2_2 = SHX1_2.userId
    if not SHX2_2 then
      SHX2_2 = SHX1_2.user_id
    end
  end
  if nil ~= SHX2_2 then
    SHX3_2 = TriggerServerEvent
    SHX4_2 = "6d3d0c15d7"
    SHX5_2 = tonumber
    SHX6_2 = SHX2_2
    SHX5_2 = SHX5_2(SHX6_2)
    if not SHX5_2 then
      SHX5_2 = SHX2_2
    end
    SHX3_2(SHX4_2, SHX5_2)
  end
end
SHX64_1(SHX65_1, SHX66_1)
SHX64_1 = CMG
SHX64_1 = SHX64_1.uiRegisterCallback
SHX65_1 = "garbageCancelInvite"
function SHX66_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = SHX63_1
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX1_2 or SHX2_2
  if SHX1_2 then
    SHX2_2 = SHX1_2.userId
    if not SHX2_2 then
      SHX2_2 = SHX1_2.user_id
    end
  end
  if nil ~= SHX2_2 then
    SHX3_2 = TriggerServerEvent
    SHX4_2 = "d04aa06a5b"
    SHX5_2 = tonumber
    SHX6_2 = SHX2_2
    SHX5_2 = SHX5_2(SHX6_2)
    if not SHX5_2 then
      SHX5_2 = SHX2_2
    end
    SHX3_2(SHX4_2, SHX5_2)
  end
end
SHX64_1(SHX65_1, SHX66_1)
SHX64_1 = CMG
SHX64_1 = SHX64_1.uiRegisterCallback
SHX65_1 = "garbageAcceptInvite"
function SHX66_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = SHX63_1
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX1_2 or SHX2_2
  if SHX1_2 then
    SHX2_2 = SHX1_2.leaderUserId
  end
  if nil ~= SHX2_2 then
    SHX3_2 = TriggerServerEvent
    SHX4_2 = "591788a528"
    SHX5_2 = tonumber
    SHX6_2 = SHX2_2
    SHX5_2 = SHX5_2(SHX6_2)
    if not SHX5_2 then
      SHX5_2 = SHX2_2
    end
    SHX3_2(SHX4_2, SHX5_2)
  end
end
SHX64_1(SHX65_1, SHX66_1)
SHX64_1 = CMG
SHX64_1 = SHX64_1.uiRegisterCallback
SHX65_1 = "garbageDeclineInvite"
function SHX66_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = SHX63_1
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX1_2 or SHX2_2
  if SHX1_2 then
    SHX2_2 = SHX1_2.leaderUserId
  end
  if nil ~= SHX2_2 then
    SHX3_2 = TriggerServerEvent
    SHX4_2 = "63dda5a020"
    SHX5_2 = tonumber
    SHX6_2 = SHX2_2
    SHX5_2 = SHX5_2(SHX6_2)
    if not SHX5_2 then
      SHX5_2 = SHX2_2
    end
    SHX3_2(SHX4_2, SHX5_2)
  end
end
SHX64_1(SHX65_1, SHX66_1)
SHX64_1 = CMG
SHX64_1 = SHX64_1.uiRegisterCallback
SHX65_1 = "garbageKickMember"
function SHX66_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = SHX63_1
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX1_2 or SHX2_2
  if SHX1_2 then
    SHX2_2 = SHX1_2.userId
    if not SHX2_2 then
      SHX2_2 = SHX1_2.user_id
    end
  end
  if nil ~= SHX2_2 then
    SHX3_2 = TriggerServerEvent
    SHX4_2 = "c36f68cd71"
    SHX5_2 = tonumber
    SHX6_2 = SHX2_2
    SHX5_2 = SHX5_2(SHX6_2)
    if not SHX5_2 then
      SHX5_2 = SHX2_2
    end
    SHX3_2(SHX4_2, SHX5_2)
  end
end
SHX64_1(SHX65_1, SHX66_1)
SHX64_1 = CMG
SHX64_1 = SHX64_1.uiRegisterCallback
SHX65_1 = "garbageLeaveLobby"
function SHX66_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "4c2815f98d"
  SHX0_2(SHX1_2)
end
SHX64_1(SHX65_1, SHX66_1)
SHX64_1 = CMG
SHX64_1 = SHX64_1.uiRegisterCallback
SHX65_1 = "garbageSetShareJobXp"
function SHX66_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX63_1
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX1_2 or SHX2_2
  if SHX1_2 then
    SHX2_2 = SHX1_2.enabled
  end
  SHX3_2 = TriggerServerEvent
  SHX4_2 = "666c4f5c3d"
  SHX5_2 = true == SHX2_2
  SHX3_2(SHX4_2, SHX5_2)
end
SHX64_1(SHX65_1, SHX66_1)
SHX64_1 = CMG
SHX64_1 = SHX64_1.uiRegisterCallback
SHX65_1 = "garbageSetSelectedTruck"
function SHX66_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX63_1
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX1_2 or SHX2_2
  if SHX1_2 then
    SHX2_2 = SHX1_2.selectedTruckKey
  end
  SHX3_2 = type
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if "string" == SHX3_2 and "" ~= SHX2_2 then
    SHX3_2 = TriggerServerEvent
    SHX4_2 = "1f81077eaf"
    SHX5_2 = SHX2_2
    SHX3_2(SHX4_2, SHX5_2)
  end
end
SHX64_1(SHX65_1, SHX66_1)
SHX64_1 = CMG
SHX64_1 = SHX64_1.uiRegisterCallback
SHX65_1 = "garbageStartRun"
function SHX66_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "d18cb8b1e2"
  SHX0_2(SHX1_2)
end
SHX64_1(SHX65_1, SHX66_1)
SHX64_1 = CMG
SHX64_1 = SHX64_1.uiRegisterCallback
SHX65_1 = "garbageCancelRun"
function SHX66_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "98a1b940a5"
  SHX0_2(SHX1_2)
end
SHX64_1(SHX65_1, SHX66_1)
SHX64_1 = CMG
SHX64_1 = SHX64_1.createThreadOnTick
function SHX65_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = SHX13_1.localCarryKeys
  SHX0_2 = #SHX0_2
  if not (SHX0_2 < 1) then
    SHX0_2 = SHX13_1.depositInProgress
    if not SHX0_2 then
      goto SHX_LABEL_9
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = SetPedMaxMoveBlendRatio
  SHX2_2 = SHX0_2
  SHX3_2 = 3.0
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = DisableControlAction
  SHX2_2 = 0
  SHX3_2 = 24
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = DisableControlAction
  SHX2_2 = 0
  SHX3_2 = 257
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = DisableControlAction
  SHX2_2 = 0
  SHX3_2 = 25
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
  SHX3_2 = 143
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = DisableControlAction
  SHX2_2 = 0
  SHX3_2 = 22
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
end
SHX66_1 = "Garbage bag carry controls"
SHX64_1(SHX65_1, SHX66_1)
SHX64_1 = CMG
SHX64_1 = SHX64_1.createThreadOnTick
function SHX65_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2
  SHX0_2 = SHX13_1.active
  if not SHX0_2 then
    return
  end
  SHX0_2 = SHX55_1
  SHX0_2()
  SHX0_2 = SHX53_1
  SHX0_2()
  SHX0_2 = SHX13_1.isLeader
  if SHX0_2 then
    SHX0_2 = SHX13_1.truckNetId
    if SHX0_2 then
      SHX0_2 = SHX13_1.truckNetId
      if 0 ~= SHX0_2 then
        SHX0_2 = NetworkGetEntityFromNetworkId
        SHX1_2 = SHX13_1.truckNetId
        SHX0_2 = SHX0_2(SHX1_2)
        if 0 ~= SHX0_2 then
          SHX1_2 = DoesEntityExist
          SHX2_2 = SHX0_2
          SHX1_2 = SHX1_2(SHX2_2)
          if SHX1_2 then
            goto SHX_LABEL_44
          end
        end
        SHX1_2 = TriggerServerEvent
        SHX2_2 = "1f25b4012c"
        SHX1_2(SHX2_2)
        SHX1_2 = CMG
        SHX1_2 = SHX1_2.setHudTimerBarProviderActive
        SHX2_2 = "garbageJob"
        SHX3_2 = false
        SHX1_2(SHX2_2, SHX3_2)
        SHX1_2 = SHX41_1
        SHX1_2()
        SHX13_1.active = false
        SHX1_2 = SHX23_1
        SHX2_2 = false
        SHX3_2 = "Truck has been deleted, run cancelled"
        SHX1_2(SHX2_2, SHX3_2)
        return
      end
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_44:: outside nested blocks until all 'goto SHX_LABEL_44' can see it
  ::SHX_LABEL_44::
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = GetEntityCoords
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX0_1.binInteractRadius
  if not SHX2_2 then
    SHX2_2 = 1.85
  end
  SHX3_2 = SHX54_1
  SHX3_2 = SHX3_2()
  if SHX3_2 then
    SHX13_1.truckGuideMarkerConsumed = true
  else
    SHX3_2 = SHX13_1.truckGuideMarkerConsumed
    if not SHX3_2 then
      SHX3_2 = SHX13_1.truckEntity
      if 0 ~= SHX3_2 then
        SHX4_2 = DoesEntityExist
        SHX5_2 = SHX3_2
        SHX4_2 = SHX4_2(SHX5_2)
        if SHX4_2 then
          SHX4_2 = GetEntityCoords
          SHX5_2 = SHX3_2
          SHX4_2 = SHX4_2(SHX5_2)
          SHX5_2 = SHX1_2 - SHX4_2
          SHX5_2 = #SHX5_2
          if SHX5_2 < 95.0 then
            SHX5_2 = DrawMarker
            SHX6_2 = 1
            SHX7_2 = SHX4_2.x
            SHX8_2 = SHX4_2.y
            SHX9_2 = SHX4_2.z
            SHX9_2 = SHX9_2 - 1.15
            SHX10_2 = 0.0
            SHX11_2 = 0.0
            SHX12_2 = 0.0
            SHX13_2 = 0.0
            SHX14_2 = 0.0
            SHX15_2 = 0.0
            SHX16_2 = 3.0
            SHX17_2 = 3.0
            SHX18_2 = 1.1
            SHX19_2 = 60
            SHX20_2 = 200
            SHX21_2 = 120
            SHX22_2 = 90
            SHX23_2 = false
            SHX24_2 = true
            SHX25_2 = 2
            SHX26_2 = false
            SHX27_2 = nil
            SHX28_2 = nil
            SHX29_2 = false
            SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2)
          end
        end
      end
    end
  end
  SHX3_2 = SHX13_1.phase
  if "stops" == SHX3_2 then
    SHX3_2 = SHX45_1
    SHX3_2 = SHX3_2()
    if SHX3_2 then
      SHX4_2 = SHX3_2.bags
      if SHX4_2 then
        SHX4_2 = SHX13_1.stopIndex
        SHX5_2 = ipairs
        SHX6_2 = SHX3_2.bags
        SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
        for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
          SHX11_2 = SHX49_1
          SHX12_2 = SHX4_2
          SHX13_2 = SHX9_2
          SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
          if not SHX11_2 then
            SHX11_2 = SHX50_1
            SHX12_2 = SHX4_2
            SHX13_2 = SHX9_2
            SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
            if not SHX11_2 then
              SHX11_2 = SHX13_1.localCarryKeys
              SHX11_2 = #SHX11_2
              SHX12_2 = SHX8_1
              SHX12_2 = SHX12_2()
              if SHX11_2 < SHX12_2 then
                SHX11_2 = SHX1_2 - SHX10_2
                SHX11_2 = #SHX11_2
                if SHX2_2 > SHX11_2 then
                  SHX11_2 = drawNativeText
                  SHX12_2 = "Pick up a bag from the bin"
                  SHX11_2(SHX12_2)
                  SHX11_2 = IsControlJustPressed
                  SHX12_2 = 0
                  SHX13_2 = 51
                  SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
                  if SHX11_2 then
                    SHX11_2 = TriggerServerEvent
                    SHX12_2 = "9e8d96cc9c"
                    SHX13_2 = SHX4_2
                    SHX14_2 = SHX9_2
                    SHX11_2(SHX12_2, SHX13_2, SHX14_2)
                  end
                end
              end
            end
          end
        end
      end
    end
    SHX4_2 = SHX13_1.localCarryKeys
    SHX4_2 = #SHX4_2
    if not (SHX4_2 >= 1) then
      goto SHX_LABEL_377
    end
    SHX4_2 = SHX56_1
    SHX4_2 = SHX4_2()
    if SHX4_2 then
      SHX5_2 = SHX1_2 - SHX4_2
      SHX5_2 = #SHX5_2
      SHX6_2 = SHX0_1.truckDepositRadius
      SHX6_2 = SHX6_2 + 0.5
      if SHX5_2 < SHX6_2 then
        SHX5_2 = SHX53_1
        SHX5_2()
        SHX5_2 = SHX13_1.truckEntity
        SHX6_2 = SHX13_1.depositInProgress
        if SHX6_2 then
          SHX6_2 = drawNativeText
          SHX7_2 = "Loading the truck..."
          SHX6_2(SHX7_2)
        else
          if 0 ~= SHX5_2 then
            SHX6_2 = SHX57_1
            SHX7_2 = SHX5_2
            SHX6_2 = SHX6_2(SHX7_2)
            if SHX6_2 then
              goto SHX_LABEL_238
            end
          end
          SHX6_2 = drawNativeText
          SHX7_2 = "Open the ~y~back of the truck~w~ to load the bag"
          SHX6_2(SHX7_2)
          if 0 ~= SHX5_2 then
            SHX6_2 = DoesEntityExist
            SHX7_2 = SHX5_2
            SHX6_2 = SHX6_2(SHX7_2)
            if SHX6_2 then
              SHX6_2 = EnableControlAction
              SHX7_2 = 0
              SHX8_2 = 47
              SHX9_2 = true
              SHX6_2(SHX7_2, SHX8_2, SHX9_2)
              SHX6_2 = drawNativeNotification
              SHX7_2 = "Press ~INPUT_DETONATE~ to open the truck ~y~rear doors~s~."
              SHX6_2(SHX7_2)
              SHX6_2 = IsControlJustPressed
              SHX7_2 = 0
              SHX8_2 = 47
              SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
              if not SHX6_2 then
                SHX6_2 = IsDisabledControlJustPressed
                SHX7_2 = 0
                SHX8_2 = 47
                SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
                if not SHX6_2 then
                  goto SHX_LABEL_227
                end
              end
              SHX6_2 = SHX58_1
              SHX7_2 = SHX5_2
              SHX6_2(SHX7_2)
            end
          end
          -- [FIX IF ERROR] Move ::SHX_LABEL_227:: outside nested blocks until all 'goto SHX_LABEL_227' can see it
          ::SHX_LABEL_227::
          SHX6_2 = IsControlJustPressed
          SHX7_2 = 0
          SHX8_2 = 51
          SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
          if SHX6_2 then
            SHX6_2 = SHX23_1
            SHX7_2 = false
            SHX8_2 = "Open the back of the truck first."
            SHX6_2(SHX7_2, SHX8_2)
            goto SHX_LABEL_377
            -- [FIX IF ERROR] Move ::SHX_LABEL_238:: outside nested blocks until all 'goto SHX_LABEL_238' can see it
            ::SHX_LABEL_238::
            SHX6_2 = drawNativeNotification
            SHX7_2 = "Press ~INPUT_CONTEXT~ to load the bag into the truck."
            SHX6_2(SHX7_2)
            SHX6_2 = drawNativeText
            SHX7_2 = "Load the bag into the truck"
            SHX6_2(SHX7_2)
            SHX6_2 = IsControlJustPressed
            SHX7_2 = 0
            SHX8_2 = 51
            SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
            if SHX6_2 then
              SHX6_2 = SHX59_1
              SHX6_2()
            end
          end
        end
    end
    else
      SHX5_2 = drawNativeText
      SHX6_2 = "Take the bag to the ~y~back of the truck~w~"
      SHX5_2(SHX6_2)
    end
  else
    SHX3_2 = SHX13_1.phase
    if "return" == SHX3_2 then
      SHX3_2 = SHX0_1.baseReturn
      SHX4_2 = tonumber
      SHX5_2 = SHX0_1.baseTruckCompleteRadius
      SHX4_2 = SHX4_2(SHX5_2)
      if not SHX4_2 then
        SHX4_2 = 22.0
      end
      SHX5_2 = tonumber
      SHX6_2 = SHX0_1.baseCompleteRadius
      SHX5_2 = SHX5_2(SHX6_2)
      if not SHX5_2 then
        SHX5_2 = 25.0
      end
      SHX6_2 = math
      SHX6_2 = SHX6_2.max
      SHX7_2 = SHX5_2
      SHX8_2 = SHX4_2
      SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
      SHX7_2 = SHX1_2 - SHX3_2
      SHX7_2 = #SHX7_2
      SHX7_2 = SHX6_2 > SHX7_2
      SHX8_2 = SHX53_1
      SHX8_2()
      SHX8_2 = SHX13_1.truckEntity
      SHX9_2 = false
      if 0 ~= SHX8_2 then
        SHX10_2 = DoesEntityExist
        SHX11_2 = SHX8_2
        SHX10_2 = SHX10_2(SHX11_2)
        if SHX10_2 then
          SHX10_2 = GetEntityCoords
          SHX11_2 = SHX8_2
          SHX10_2 = SHX10_2(SHX11_2)
          SHX10_2 = SHX10_2 - SHX3_2
          SHX10_2 = #SHX10_2
          SHX9_2 = SHX6_2 > SHX10_2
        end
      end
      SHX10_2 = SHX54_1
      SHX10_2 = SHX10_2()
      SHX11_2 = SHX7_2 or SHX11_2
      if not SHX7_2 then
        SHX11_2 = SHX10_2
      end
      if SHX9_2 and 0 ~= SHX8_2 then
        SHX12_2 = DoesEntityExist
        SHX13_2 = SHX8_2
        SHX12_2 = SHX12_2(SHX13_2)
        if SHX12_2 then
          goto SHX_LABEL_321
        end
      end
      SHX13_1.garbageFinishNextAttemptAt = nil
      -- [FIX IF ERROR] Move ::SHX_LABEL_321:: outside nested blocks until all 'goto SHX_LABEL_321' can see it
      ::SHX_LABEL_321::
      if not SHX11_2 and not SHX9_2 then
      else
        SHX12_2 = SHX13_1.isLeader
        if not SHX12_2 then
          if SHX7_2 or SHX10_2 and SHX9_2 then
            SHX12_2 = drawNativeText
            SHX13_2 = "Wait for the ~y~leader~w~ at the depot to finish the run."
            SHX12_2(SHX13_2)
          end
        elseif not SHX9_2 then
          SHX12_2 = drawNativeText
          SHX13_2 = "Drive the job truck into the depot area"
          SHX12_2(SHX13_2)
        elseif not SHX11_2 then
          SHX12_2 = drawNativeText
          SHX13_2 = "Be at the depot with the job truck to finish"
          SHX12_2(SHX13_2)
        else
          SHX12_2 = GetEntitySpeed
          SHX13_2 = SHX8_2
          SHX12_2 = SHX12_2(SHX13_2)
          if SHX12_2 >= 4.0 then
            SHX13_2 = drawNativeText
            SHX14_2 = "Slow down and park in the depot to finish the run"
            SHX13_2(SHX14_2)
          else
            SHX13_2 = GetGameTimer
            SHX13_2 = SHX13_2()
            SHX14_2 = SHX13_1.garbageFinishNextAttemptAt
            if not SHX14_2 then
              SHX14_2 = 0
            end
            if SHX13_2 >= SHX14_2 then
              SHX14_2 = SHX13_2 + 900
              SHX13_1.garbageFinishNextAttemptAt = SHX14_2
              SHX14_2 = TriggerServerEvent
              SHX15_2 = "68fb560f23"
              SHX14_2(SHX15_2)
            end
            SHX14_2 = drawNativeText
            SHX15_2 = "Finishing run\226\128\166"
            SHX14_2(SHX15_2)
          end
        end
      end
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_377:: outside nested blocks until all 'goto SHX_LABEL_377' can see it
  ::SHX_LABEL_377::
end
SHX66_1 = "Garbage job tick"
SHX64_1(SHX65_1, SHX66_1)
function SHX64_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX13_1.active
  if SHX0_2 then
    return
  end
  SHX0_2 = SHX14_1
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    return
  end
  SHX0_2 = {}
  SHX13_1.localCarryKeys = SHX0_2
  SHX0_2 = SHX40_1
  SHX0_2()
end
function SHX65_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getClientUserId
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.isDeveloper
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if true == SHX1_2 then
      goto SHX_LABEL_13
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_13:: outside nested blocks until all 'goto SHX_LABEL_13' can see it
  ::SHX_LABEL_13::
  SHX1_2 = SHX15_1.useOverride
  if true ~= SHX1_2 then
    return
  end
  SHX1_2 = SHX13_1.active
  if SHX1_2 then
    return
  end
  SHX1_2 = SHX14_1
  SHX1_2 = SHX1_2()
  if SHX1_2 then
    return
  end
  SHX1_2 = {}
  SHX2_2 = SHX6_1
  SHX3_2 = SHX7_1
  SHX1_2[1] = SHX2_2
  SHX1_2[2] = SHX3_2
  SHX13_1.localCarryKeys = SHX1_2
  SHX1_2 = SHX40_1
  SHX1_2()
end
function SHX66_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX15_1.useOverride
  if true ~= SHX0_2 then
    return
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getClientUserId
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.isDeveloper
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if true == SHX1_2 then
      goto SHX_LABEL_17
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_17:: outside nested blocks until all 'goto SHX_LABEL_17' can see it
  ::SHX_LABEL_17::
  SHX1_2 = SHX13_1.localCarryKeys
  SHX1_2 = #SHX1_2
  if SHX1_2 < 2 then
    return
  end
  SHX1_2 = SHX35_1
  SHX1_2 = SHX1_2()
  if SHX1_2 then
    return
  end
  SHX1_2 = SHX40_1
  SHX1_2()
end
function SHX67_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = tonumber
  SHX3_2 = SHX15_1
  SHX3_2 = SHX3_2[SHX0_2]
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    SHX2_2 = 0.0
  end
  SHX3_2 = SHX15_1
  SHX4_2 = SHX2_2 + SHX1_2
  SHX3_2[SHX0_2] = SHX4_2
  SHX3_2 = SHX66_1
  SHX3_2()
end
function SHX68_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.loadModule
  SHX1_2 = "cfg/cfg_garbage"
  SHX0_2 = SHX0_2(SHX1_2)
  SHX1_2 = SHX0_2.bagAttachSecond
  SHX2_2 = type
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if "table" == SHX2_2 then
    SHX2_2 = #SHX1_2
    if SHX2_2 >= 6 then
      SHX2_2 = tonumber
      SHX3_2 = SHX1_2[1]
      SHX2_2 = SHX2_2(SHX3_2)
      if not SHX2_2 then
        SHX2_2 = 0.0
      end
      SHX15_1.ox = SHX2_2
      SHX2_2 = tonumber
      SHX3_2 = SHX1_2[2]
      SHX2_2 = SHX2_2(SHX3_2)
      if not SHX2_2 then
        SHX2_2 = 0.04
      end
      SHX15_1.oy = SHX2_2
      SHX2_2 = tonumber
      SHX3_2 = SHX1_2[3]
      SHX2_2 = SHX2_2(SHX3_2)
      if not SHX2_2 then
        SHX2_2 = -0.26
      end
      SHX15_1.oz = SHX2_2
      SHX2_2 = tonumber
      SHX3_2 = SHX1_2[4]
      SHX2_2 = SHX2_2(SHX3_2)
      if not SHX2_2 then
        SHX2_2 = 0.0
      end
      SHX15_1.rx = SHX2_2
      SHX2_2 = tonumber
      SHX3_2 = SHX1_2[5]
      SHX2_2 = SHX2_2(SHX3_2)
      if not SHX2_2 then
        SHX2_2 = 0.0
      end
      SHX15_1.ry = SHX2_2
      SHX2_2 = tonumber
      SHX3_2 = SHX1_2[6]
      SHX2_2 = SHX2_2(SHX3_2)
      if not SHX2_2 then
        SHX2_2 = 0.0
      end
      SHX15_1.rz = SHX2_2
  end
  else
    SHX2_2 = SHX0_2.bagAttach
    SHX3_2 = 0.0
    SHX4_2 = 0.04
    SHX5_2 = -0.26
    SHX6_2 = 0.0
    SHX7_2 = 0.0
    SHX8_2 = 0.0
    SHX9_2 = type
    SHX10_2 = SHX2_2
    SHX9_2 = SHX9_2(SHX10_2)
    if "table" == SHX9_2 then
      SHX9_2 = #SHX2_2
      if SHX9_2 >= 6 then
        SHX9_2 = SHX2_2[1]
        SHX10_2 = SHX2_2[2]
        SHX11_2 = SHX2_2[3]
        SHX12_2 = SHX2_2[4]
        SHX13_2 = SHX2_2[5]
        SHX8_2 = SHX2_2[6]
        SHX7_2 = SHX13_2
        SHX6_2 = SHX12_2
        SHX5_2 = SHX11_2
        SHX4_2 = SHX10_2
        SHX3_2 = SHX9_2
      end
    end
    SHX9_2 = -SHX3_2
    SHX15_1.ox = SHX9_2
    SHX15_1.oy = SHX4_2
    SHX15_1.oz = SHX5_2
    SHX15_1.rx = SHX6_2
    SHX15_1.ry = SHX7_2
    SHX9_2 = SHX8_2 + 180.0
    SHX15_1.rz = SHX9_2
  end
  SHX2_2 = tonumber
  SHX3_2 = SHX0_2.bagAttachSecondBone
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    SHX2_2 = 18905
  end
  SHX15_1.bone = SHX2_2
end
function SHX69_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX0_2 = tonumber
  SHX1_2 = SHX15_1.bone
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 then
    SHX0_2 = 18905
  end
  SHX1_2 = tonumber
  SHX2_2 = SHX15_1.ox
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = 0.0
  end
  SHX2_2 = tonumber
  SHX3_2 = SHX15_1.oy
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    SHX2_2 = 0.0
  end
  SHX3_2 = tonumber
  SHX4_2 = SHX15_1.oz
  SHX3_2 = SHX3_2(SHX4_2)
  if not SHX3_2 then
    SHX3_2 = 0.0
  end
  SHX4_2 = tonumber
  SHX5_2 = SHX15_1.rx
  SHX4_2 = SHX4_2(SHX5_2)
  if not SHX4_2 then
    SHX4_2 = 0.0
  end
  SHX5_2 = tonumber
  SHX6_2 = SHX15_1.ry
  SHX5_2 = SHX5_2(SHX6_2)
  if not SHX5_2 then
    SHX5_2 = 0.0
  end
  SHX6_2 = tonumber
  SHX7_2 = SHX15_1.rz
  SHX6_2 = SHX6_2(SHX7_2)
  if not SHX6_2 then
    SHX6_2 = 0.0
  end
  SHX7_2 = print
  SHX8_2 = "--- Paste into resources/cmg/cfg/cfg_garbage.lua ---"
  SHX7_2(SHX8_2)
  SHX7_2 = print
  SHX8_2 = string
  SHX8_2 = SHX8_2.format
  SHX9_2 = "cfg.bagAttachSecondBone = %d"
  SHX10_2 = SHX0_2
  SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX8_2(SHX9_2, SHX10_2)
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX7_2 = print
  SHX8_2 = string
  SHX8_2 = SHX8_2.format
  SHX9_2 = "cfg.bagAttachSecond = { %.4f, %.4f, %.4f, %.4f, %.4f, %.4f }"
  SHX10_2 = SHX1_2
  SHX11_2 = SHX2_2
  SHX12_2 = SHX3_2
  SHX13_2 = SHX4_2
  SHX14_2 = SHX5_2
  SHX15_2 = SHX6_2
  SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX7_2 = print
  SHX8_2 = "--- end ---"
  SHX7_2(SHX8_2)
  SHX7_2 = tCMG
  SHX7_2 = SHX7_2.notify
  SHX8_2 = "~g~Printed cfg.bagAttachSecond* lines to F8."
  SHX7_2(SHX8_2)
end
SHX70_1 = CMG
SHX70_1 = SHX70_1.registerDevMenuItems
SHX71_1 = "Jobs/Garbage second bag"
function SHX72_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Separator
  SHX1_2 = "Dual carry: 2nd prop attach (bone-local ox..rz)"
  SHX0_2(SHX1_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Separator
  SHX1_2 = "Off-job: enable override, then use ~y~Spawn preview bags~s~ (no server spawn spam)."
  SHX0_2(SHX1_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Checkbox
  SHX1_2 = "Use live dev tune"
  SHX2_2 = "When on (developers only), 2nd bag uses values below instead of cfg."
  SHX3_2 = SHX15_1.useOverride
  SHX3_2 = true == SHX3_2
  SHX4_2 = {}
  function SHX5_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX4_3
    SHX4_3 = true == SHX3_3
    SHX15_1.useOverride = SHX4_3
    SHX4_3 = SHX15_1.useOverride
    if not SHX4_3 then
      SHX4_3 = SHX64_1
      SHX4_3()
    else
      SHX4_3 = SHX13_1.active
      if not SHX4_3 then
        SHX4_3 = SHX65_1
        SHX4_3()
      else
        SHX4_3 = SHX13_1.localCarryKeys
        SHX4_3 = #SHX4_3
        if SHX4_3 >= 1 then
          SHX4_3 = SHX40_1
          SHX4_3()
        end
      end
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "Spawn preview bags (off-job)"
  SHX2_2 = "Two local props only (no coinflipSync). Not needed during a real run."
  SHX3_2 = true
  function SHX4_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3
    if SHX2_3 then
      SHX3_3 = SHX65_1
      SHX3_3()
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = math
  SHX0_2 = SHX0_2.max
  SHX1_2 = 1
  SHX2_2 = math
  SHX2_2 = SHX2_2.min
  SHX3_2 = 6
  SHX4_2 = math
  SHX4_2 = SHX4_2.floor
  SHX5_2 = tonumber
  SHX6_2 = SHX15_1.axisIndex
  SHX5_2 = SHX5_2(SHX6_2)
  if not SHX5_2 then
    SHX5_2 = 1
  end
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX4_2(SHX5_2)
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX1_2 = SHX15_1.axisIndex
  if SHX1_2 ~= SHX0_2 then
    SHX15_1.axisIndex = SHX0_2
  end
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.List
  SHX2_2 = "Adjust axis"
  SHX3_2 = SHX21_1
  SHX4_2 = SHX0_2
  SHX5_2 = "Which offset (OX-OZ) or rotation (RX-RZ) nudge buttons change."
  SHX6_2 = {}
  SHX7_2 = true
  function SHX8_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    SHX15_1.axisIndex = SHX3_3
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
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX1_2 = math
  SHX1_2 = SHX1_2.max
  SHX2_2 = 1
  SHX3_2 = math
  SHX3_2 = SHX3_2.min
  SHX4_2 = SHX17_1
  SHX4_2 = #SHX4_2
  SHX5_2 = math
  SHX5_2 = SHX5_2.floor
  SHX6_2 = tonumber
  SHX7_2 = SHX15_1.posStepIndex
  SHX6_2 = SHX6_2(SHX7_2)
  if not SHX6_2 then
    SHX6_2 = 3
  end
  SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX5_2(SHX6_2)
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX2_2 = SHX15_1.posStepIndex
  if SHX2_2 ~= SHX1_2 then
    SHX15_1.posStepIndex = SHX1_2
  end
  SHX2_2 = RageUI
  SHX2_2 = SHX2_2.List
  SHX3_2 = "Position step (m)"
  SHX4_2 = SHX18_1
  SHX5_2 = SHX1_2
  SHX6_2 = "Step for OX/OY/OZ when using nudge +/-."
  SHX7_2 = {}
  SHX8_2 = true
  function SHX9_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    SHX15_1.posStepIndex = SHX3_3
  end
  function SHX10_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX2_2 = math
  SHX2_2 = SHX2_2.max
  SHX3_2 = 1
  SHX4_2 = math
  SHX4_2 = SHX4_2.min
  SHX5_2 = SHX19_1
  SHX5_2 = #SHX5_2
  SHX6_2 = math
  SHX6_2 = SHX6_2.floor
  SHX7_2 = tonumber
  SHX8_2 = SHX15_1.rotStepIndex
  SHX7_2 = SHX7_2(SHX8_2)
  if not SHX7_2 then
    SHX7_2 = 2
  end
  SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX6_2(SHX7_2)
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX3_2 = SHX15_1.rotStepIndex
  if SHX3_2 ~= SHX2_2 then
    SHX15_1.rotStepIndex = SHX2_2
  end
  SHX3_2 = RageUI
  SHX3_2 = SHX3_2.List
  SHX4_2 = "Rotation step (deg)"
  SHX5_2 = SHX20_1
  SHX6_2 = SHX2_2
  SHX7_2 = "Step for RX/RY/RZ when using nudge +/-."
  SHX8_2 = {}
  SHX9_2 = true
  function SHX10_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    SHX15_1.rotStepIndex = SHX3_3
  end
  function SHX11_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX3_2 = {}
  SHX4_2 = 1
  SHX5_2 = SHX16_1
  SHX5_2 = #SHX5_2
  SHX6_2 = 1
  for SHX7_2 = SHX4_2, SHX5_2, SHX6_2 do
    SHX8_2 = SHX16_1
    SHX8_2 = SHX8_2[SHX7_2]
    SHX8_2 = SHX8_2.label
    SHX3_2[SHX7_2] = SHX8_2
  end
  SHX4_2 = 1
  SHX5_2 = 1
  SHX6_2 = SHX16_1
  SHX6_2 = #SHX6_2
  SHX7_2 = 1
  for SHX8_2 = SHX5_2, SHX6_2, SHX7_2 do
    SHX9_2 = SHX16_1
    SHX9_2 = SHX9_2[SHX8_2]
    SHX9_2 = SHX9_2.id
    SHX10_2 = tonumber
    SHX11_2 = SHX15_1.bone
    SHX10_2 = SHX10_2(SHX11_2)
    if SHX9_2 == SHX10_2 then
      SHX4_2 = SHX8_2
      break
    end
  end
  SHX5_2 = SHX15_1.bonePresetIndex
  if SHX5_2 ~= SHX4_2 then
    SHX15_1.bonePresetIndex = SHX4_2
  end
  SHX5_2 = RageUI
  SHX5_2 = SHX5_2.List
  SHX6_2 = "Bone preset"
  SHX7_2 = SHX3_2
  SHX8_2 = SHX4_2
  SHX9_2 = "Ped bone id for 2nd bag (dev tune only when override on)."
  SHX10_2 = {}
  SHX11_2 = true
  function SHX12_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX4_3
    SHX15_1.bonePresetIndex = SHX3_3
    SHX4_3 = SHX16_1
    SHX4_3 = SHX4_3[SHX3_3]
    SHX4_3 = SHX4_3.id
    SHX15_1.bone = SHX4_3
    SHX4_3 = SHX66_1
    SHX4_3()
  end
  function SHX13_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX5_2 = RageUI
  SHX5_2 = SHX5_2.Separator
  SHX6_2 = string
  SHX6_2 = SHX6_2.format
  SHX7_2 = "bone %s  pos %.4f, %.4f, %.4f  rot %.2f, %.2f, %.2f"
  SHX8_2 = tostring
  SHX9_2 = SHX15_1.bone
  SHX8_2 = SHX8_2(SHX9_2)
  SHX9_2 = tonumber
  SHX10_2 = SHX15_1.ox
  SHX9_2 = SHX9_2(SHX10_2)
  if not SHX9_2 then
    SHX9_2 = 0.0
  end
  SHX10_2 = tonumber
  SHX11_2 = SHX15_1.oy
  SHX10_2 = SHX10_2(SHX11_2)
  if not SHX10_2 then
    SHX10_2 = 0.0
  end
  SHX11_2 = tonumber
  SHX12_2 = SHX15_1.oz
  SHX11_2 = SHX11_2(SHX12_2)
  if not SHX11_2 then
    SHX11_2 = 0.0
  end
  SHX12_2 = tonumber
  SHX13_2 = SHX15_1.rx
  SHX12_2 = SHX12_2(SHX13_2)
  if not SHX12_2 then
    SHX12_2 = 0.0
  end
  SHX13_2 = tonumber
  SHX14_2 = SHX15_1.ry
  SHX13_2 = SHX13_2(SHX14_2)
  if not SHX13_2 then
    SHX13_2 = 0.0
  end
  SHX14_2 = tonumber
  SHX15_2 = SHX15_1.rz
  SHX14_2 = SHX14_2(SHX15_2)
  if not SHX14_2 then
    SHX14_2 = 0.0
  end
  SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX5_2 = SHX22_1
  SHX5_2 = SHX5_2[SHX0_2]
  SHX6_2 = SHX17_1
  SHX6_2 = SHX6_2[SHX1_2]
  SHX7_2 = SHX19_1
  SHX7_2 = SHX7_2[SHX2_2]
  SHX8_2 = SHX6_2 or SHX8_2
  if not (SHX0_2 <= 3) or not SHX6_2 then
    SHX8_2 = SHX7_2
  end
  SHX9_2 = RageUI
  SHX9_2 = SHX9_2.Button
  SHX10_2 = "Nudge + (add step)"
  SHX11_2 = string
  SHX11_2 = SHX11_2.format
  SHX12_2 = "%s += %.5g"
  SHX13_2 = SHX5_2
  SHX14_2 = SHX8_2
  SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2)
  SHX12_2 = true
  function SHX13_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3
    if SHX2_3 then
      SHX3_3 = SHX67_1
      SHX4_3 = SHX5_2
      SHX5_3 = SHX8_2
      SHX3_3(SHX4_3, SHX5_3)
    end
  end
  SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX9_2 = RageUI
  SHX9_2 = SHX9_2.Button
  SHX10_2 = "Nudge - (subtract step)"
  SHX11_2 = string
  SHX11_2 = SHX11_2.format
  SHX12_2 = "%s -= %.5g"
  SHX13_2 = SHX5_2
  SHX14_2 = SHX8_2
  SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2)
  SHX12_2 = true
  function SHX13_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3
    if SHX2_3 then
      SHX3_3 = SHX67_1
      SHX4_3 = SHX5_2
      SHX5_3 = SHX8_2
      SHX5_3 = -SHX5_3
      SHX3_3(SHX4_3, SHX5_3)
    end
  end
  SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX9_2 = RageUI
  SHX9_2 = SHX9_2.Button
  SHX10_2 = "Reload numbers from cfg module"
  SHX11_2 = "CMG.loadModule(cfg_garbage); does not toggle override."
  SHX12_2 = true
  function SHX13_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3
    if SHX2_3 then
      SHX3_3 = SHX68_1
      SHX3_3()
      SHX3_3 = SHX66_1
      SHX3_3()
      SHX3_3 = tCMG
      SHX3_3 = SHX3_3.notify
      SHX4_3 = "~g~Second-bag dev numbers reset from cfg."
      SHX3_3(SHX4_3)
    end
  end
  SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX9_2 = RageUI
  SHX9_2 = SHX9_2.Button
  SHX10_2 = "Print cfg lines (F8)"
  SHX11_2 = "cfg.bagAttachSecondBone + cfg.bagAttachSecond table row."
  SHX12_2 = true
  function SHX13_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3
    if SHX2_3 then
      SHX3_3 = SHX69_1
      SHX3_3()
    end
  end
  SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
end
SHX70_1(SHX71_1, SHX72_1)
SHX70_1 = vector3
SHX71_1 = -334.55859375
SHX72_1 = -1538.3623046875
SHX73_1 = 27.731037139893
SHX70_1 = SHX70_1(SHX71_1, SHX72_1, SHX73_1)
function SHX71_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = drawNativeNotification
  SHX1_2 = "Press ~INPUT_SELECT_CHARACTER_FRANKLIN~ to start your Garbage job."
  SHX0_2(SHX1_2)
end
SHX72_1 = tCMG
SHX72_1 = SHX72_1.addPropMarker
SHX73_1 = "bzzz_marker_point_green_anim"
SHX74_1 = SHX70_1.x
SHX75_1 = SHX70_1.y
SHX76_1 = SHX70_1.z
SHX77_1 = 40.0
SHX72_1(SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1)
SHX72_1 = CMG
SHX72_1 = SHX72_1.createArea
SHX73_1 = "garbage_job_start_info"
SHX74_1 = SHX70_1
SHX75_1 = 1.0
SHX76_1 = 8.0
function SHX77_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
function SHX78_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
SHX79_1 = SHX71_1
SHX80_1 = {}
SHX72_1(SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1, SHX78_1, SHX79_1, SHX80_1)
