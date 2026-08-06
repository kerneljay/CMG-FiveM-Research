-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1, SHX78_1, SHX79_1, SHX80_1, SHX81_1, SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1, SHX92_1, SHX93_1, SHX94_1, SHX95_1, SHX96_1, SHX97_1, SHX98_1, SHX99_1, SHX100_1, SHX101_1, SHX102_1, SHX103_1, SHX104_1, SHX105_1, SHX106_1, SHX107_1, SHX108_1, SHX109_1, SHX110_1, SHX111_1, SHX112_1, SHX113_1, SHX114_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_mechanic"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = CMG
SHX1_1 = SHX1_1.loadModule
SHX2_1 = "cfg/cfg_garages"
SHX1_1 = SHX1_1(SHX2_1)
SHX2_1 = RegisterNetEvent
SHX3_1 = "579a73060c"
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getModelGender
  SHX0_2 = SHX0_2()
  if "male" == SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.loadCustomisationPreset
    SHX1_2 = "MechanicMale"
    SHX0_2(SHX1_2)
  else
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.loadCustomisationPreset
    SHX1_2 = "MechanicFemale"
    SHX0_2(SHX1_2)
  end
end
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = SHX0_1.impoundDropoff
if not SHX2_1 then
  SHX2_1 = vector3
  SHX3_1 = 389.40829467773
  SHX4_1 = -1622.1922607422
  SHX5_1 = 29.28772354126
  SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
end
SHX3_1 = 0.78
SHX4_1 = 920.0
SHX5_1 = 14.0
SHX6_1 = 5.0
SHX7_1 = 16.0
SHX8_1 = 5.5
SHX9_1 = 34.0
SHX10_1 = SHX0_1.mechanicFlatbedModelHashes
SHX11_1 = SHX0_1.mechanicTowTruckModelHashes
SHX12_1 = false
SHX13_1 = {}
SHX14_1 = nil
SHX15_1 = nil
SHX16_1 = 0
SHX17_1 = {}
SHX18_1 = {}
SHX19_1 = 0
SHX20_1 = nil
SHX21_1 = nil
SHX22_1 = "anim@heists@box_carry@"
SHX23_1 = "idle"
SHX24_1 = nil
SHX25_1 = 0
SHX26_1 = 1302435108
SHX27_1 = 0
SHX28_1 = 242383520
SHX29_1 = "timetable@gardener@filling_can"
SHX30_1 = "gar_ig_5_filling_can"
SHX31_1 = nil
SHX32_1 = 0
function SHX33_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  if 0 ~= SHX0_2 then
    SHX1_2 = StopAnimTask
    SHX2_2 = SHX0_2
    SHX3_2 = SHX29_1
    SHX4_2 = SHX30_1
    SHX5_2 = 1.0
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
    SHX1_2 = ClearPedSecondaryTask
    SHX2_2 = SHX0_2
    SHX1_2(SHX2_2)
  end
  SHX1_2 = SHX27_1
  if 0 ~= SHX1_2 then
    SHX1_2 = DoesEntityExist
    SHX2_2 = SHX27_1
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = DetachEntity
      SHX2_2 = SHX27_1
      SHX3_2 = true
      SHX4_2 = true
      SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      SHX1_2 = SetEntityAsMissionEntity
      SHX2_2 = SHX27_1
      SHX3_2 = true
      SHX4_2 = true
      SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      SHX1_2 = DeleteObject
      SHX2_2 = SHX27_1
      SHX1_2(SHX2_2)
    end
  end
  SHX1_2 = 0
  SHX27_1 = SHX1_2
  SHX1_2 = nil
  SHX31_1 = SHX1_2
  SHX1_2 = 0
  SHX32_1 = SHX1_2
end
function SHX34_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  SHX1_2 = tonumber
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX0_2 = SHX1_2
  if SHX0_2 then
    SHX1_2 = NetworkDoesNetworkIdExist
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      goto SHX_LABEL_13
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_13:: outside nested blocks until all 'goto SHX_LABEL_13' can see it
  ::SHX_LABEL_13::
  SHX1_2 = NetworkGetEntityFromNetworkId
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  if 0 ~= SHX1_2 then
    SHX3_2 = DoesEntityExist
    SHX4_2 = SHX1_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 and 0 ~= SHX2_2 then
      goto SHX_LABEL_29
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_29:: outside nested blocks until all 'goto SHX_LABEL_29' can see it
  ::SHX_LABEL_29::
  SHX3_2 = SHX33_1
  SHX3_2()
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.loadModel
  SHX4_2 = SHX28_1
  SHX3_2(SHX4_2)
  SHX3_2 = GetEntityCoords
  SHX4_2 = SHX2_2
  SHX5_2 = true
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX4_2 = CreateObject
  SHX5_2 = SHX28_1
  SHX6_2 = SHX3_2.x
  SHX7_2 = SHX3_2.y
  SHX8_2 = SHX3_2.z
  SHX8_2 = SHX8_2 + 0.2
  SHX9_2 = false
  SHX10_2 = false
  SHX11_2 = false
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  if 0 ~= SHX4_2 then
    SHX5_2 = DoesEntityExist
    SHX6_2 = SHX4_2
    SHX5_2 = SHX5_2(SHX6_2)
    if SHX5_2 then
      SHX5_2 = AttachEntityToEntity
      SHX6_2 = SHX4_2
      SHX7_2 = SHX2_2
      SHX8_2 = GetPedBoneIndex
      SHX9_2 = SHX2_2
      SHX10_2 = 60309
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
      SHX9_2 = 0.12
      SHX10_2 = 0.02
      SHX11_2 = -0.02
      SHX12_2 = 80.0
      SHX13_2 = 170.0
      SHX14_2 = 90.0
      SHX15_2 = true
      SHX16_2 = true
      SHX17_2 = false
      SHX18_2 = true
      SHX19_2 = 1
      SHX20_2 = true
      SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
      SHX27_1 = SHX4_2
    end
  end
  SHX5_2 = SetModelAsNoLongerNeeded
  SHX6_2 = SHX28_1
  SHX5_2(SHX6_2)
  SHX31_1 = SHX0_2
  SHX5_2 = GetGameTimer
  SHX5_2 = SHX5_2()
  SHX5_2 = SHX5_2 + 6500
  SHX32_1 = SHX5_2
end
function SHX35_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  if 0 ~= SHX0_2 then
    SHX1_2 = StopAnimTask
    SHX2_2 = SHX0_2
    SHX3_2 = SHX22_1
    SHX4_2 = SHX23_1
    SHX5_2 = 1.0
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
    SHX1_2 = ClearPedSecondaryTask
    SHX2_2 = SHX0_2
    SHX1_2(SHX2_2)
  end
end
function SHX36_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX25_1
  if 0 ~= SHX0_2 then
    SHX0_2 = SHX35_1
    SHX0_2()
    SHX0_2 = DoesEntityExist
    SHX1_2 = SHX25_1
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      SHX0_2 = DetachEntity
      SHX1_2 = SHX25_1
      SHX2_2 = true
      SHX3_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      SHX0_2 = SetEntityAsMissionEntity
      SHX1_2 = SHX25_1
      SHX2_2 = true
      SHX3_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      SHX0_2 = DeleteObject
      SHX1_2 = SHX25_1
      SHX0_2(SHX1_2)
    end
    SHX0_2 = 0
    SHX25_1 = SHX0_2
  end
end
function SHX37_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  if SHX0_2 then
    SHX1_2 = tonumber
    SHX2_2 = SHX0_2.stage
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      goto SHX_LABEL_9
    end
  end
  SHX1_2 = 1
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  if SHX0_2 then
    SHX2_2 = SHX0_2.type
    if "parts_run" == SHX2_2 and (2 == SHX1_2 or 4 == SHX1_2) then
      goto SHX_LABEL_21
    end
  end
  SHX2_2 = SHX36_1
  SHX2_2()
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_21:: outside nested blocks until all 'goto SHX_LABEL_21' can see it
  ::SHX_LABEL_21::
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  if 0 == SHX2_2 then
    SHX3_2 = SHX36_1
    SHX3_2()
    return
  end
  SHX3_2 = SHX25_1
  if 0 ~= SHX3_2 then
    SHX3_2 = DoesEntityExist
    SHX4_2 = SHX25_1
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      goto SHX_LABEL_87
    end
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.loadModel
  SHX4_2 = SHX26_1
  SHX3_2(SHX4_2)
  SHX3_2 = GetEntityCoords
  SHX4_2 = SHX2_2
  SHX5_2 = true
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX4_2 = CreateObject
  SHX5_2 = SHX26_1
  SHX6_2 = SHX3_2.x
  SHX7_2 = SHX3_2.y
  SHX8_2 = SHX3_2.z
  SHX8_2 = SHX8_2 + 0.2
  SHX9_2 = false
  SHX10_2 = false
  SHX11_2 = false
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  if 0 ~= SHX4_2 then
    SHX5_2 = DoesEntityExist
    SHX6_2 = SHX4_2
    SHX5_2 = SHX5_2(SHX6_2)
    if SHX5_2 then
      SHX5_2 = AttachEntityToEntity
      SHX6_2 = SHX4_2
      SHX7_2 = SHX2_2
      SHX8_2 = GetPedBoneIndex
      SHX9_2 = SHX2_2
      SHX10_2 = 60309
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
      SHX9_2 = 0.025
      SHX10_2 = 0.08
      SHX11_2 = 0.255
      SHX12_2 = -145.0
      SHX13_2 = 290.0
      SHX14_2 = 0.0
      SHX15_2 = true
      SHX16_2 = true
      SHX17_2 = false
      SHX18_2 = true
      SHX19_2 = 1
      SHX20_2 = true
      SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
      SHX25_1 = SHX4_2
    end
  end
  SHX5_2 = SetModelAsNoLongerNeeded
  SHX6_2 = SHX26_1
  SHX5_2(SHX6_2)
  -- [FIX IF ERROR] Move ::SHX_LABEL_87:: outside nested blocks until all 'goto SHX_LABEL_87' can see it
  ::SHX_LABEL_87::
  SHX3_2 = GetVehiclePedIsIn
  SHX4_2 = SHX2_2
  SHX5_2 = false
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  if 0 ~= SHX3_2 then
    return
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.loadAnimDict
  SHX4_2 = SHX22_1
  SHX3_2(SHX4_2)
  SHX3_2 = IsEntityPlayingAnim
  SHX4_2 = SHX2_2
  SHX5_2 = SHX22_1
  SHX6_2 = SHX23_1
  SHX7_2 = 3
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  if not SHX3_2 then
    SHX3_2 = TaskPlayAnim
    SHX4_2 = SHX2_2
    SHX5_2 = SHX22_1
    SHX6_2 = SHX23_1
    SHX7_2 = 8.0
    SHX8_2 = 8.0
    SHX9_2 = -1
    SHX10_2 = 49
    SHX11_2 = 0.0
    SHX12_2 = false
    SHX13_2 = false
    SHX14_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  end
end
function SHX38_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  if 0 ~= SHX0_2 then
    SHX1_2 = StopAnimTask
    SHX2_2 = SHX0_2
    SHX3_2 = SHX22_1
    SHX4_2 = SHX23_1
    SHX5_2 = 1.0
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
    SHX1_2 = ClearPedSecondaryTask
    SHX2_2 = SHX0_2
    SHX1_2(SHX2_2)
  end
end
function SHX39_1()
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
    SHX1_2 = SHX19_1
    if 0 ~= SHX1_2 then
      SHX1_2 = DoesEntityExist
      SHX2_2 = SHX19_1
      SHX1_2 = SHX1_2(SHX2_2)
      if SHX1_2 then
        goto SHX_LABEL_15
      end
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_15:: outside nested blocks until all 'goto SHX_LABEL_15' can see it
  ::SHX_LABEL_15::
  SHX1_2 = GetVehiclePedIsIn
  SHX2_2 = SHX0_2
  SHX3_2 = false
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if 0 ~= SHX1_2 then
    return
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadAnimDict
  SHX2_2 = SHX22_1
  SHX1_2(SHX2_2)
  SHX1_2 = IsEntityPlayingAnim
  SHX2_2 = SHX0_2
  SHX3_2 = SHX22_1
  SHX4_2 = SHX23_1
  SHX5_2 = 3
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  if not SHX1_2 then
    SHX1_2 = TaskPlayAnim
    SHX2_2 = SHX0_2
    SHX3_2 = SHX22_1
    SHX4_2 = SHX23_1
    SHX5_2 = 8.0
    SHX6_2 = 8.0
    SHX7_2 = -1
    SHX8_2 = 49
    SHX9_2 = 0.0
    SHX10_2 = false
    SHX11_2 = false
    SHX12_2 = false
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  end
end
function SHX40_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = BeginTextCommandDisplayHelp
  SHX2_2 = "STRING"
  SHX1_2(SHX2_2)
  SHX1_2 = AddTextComponentSubstringPlayerName
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = EndTextCommandDisplayHelp
  SHX2_2 = 0
  SHX3_2 = false
  SHX4_2 = true
  SHX5_2 = -1
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
function SHX41_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = SHX38_1
  SHX0_2()
  SHX0_2 = SHX19_1
  if 0 ~= SHX0_2 then
    SHX0_2 = DoesEntityExist
    SHX1_2 = SHX19_1
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      SHX0_2 = DetachEntity
      SHX1_2 = SHX19_1
      SHX2_2 = true
      SHX3_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      SHX0_2 = SetEntityAsMissionEntity
      SHX1_2 = SHX19_1
      SHX2_2 = true
      SHX3_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      SHX0_2 = DeleteObject
      SHX1_2 = SHX19_1
      SHX0_2(SHX1_2)
    end
  end
  SHX0_2 = 0
  SHX19_1 = SHX0_2
  SHX0_2 = nil
  SHX21_1 = SHX0_2
  SHX0_2 = SHX16_1
  if 0 ~= SHX0_2 then
    SHX0_2 = DoesEntityExist
    SHX1_2 = SHX16_1
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      SHX0_2 = DetachEntity
      SHX1_2 = SHX16_1
      SHX2_2 = true
      SHX3_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      SHX0_2 = SetEntityAsMissionEntity
      SHX1_2 = SHX16_1
      SHX2_2 = true
      SHX3_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      SHX0_2 = DeleteObject
      SHX1_2 = SHX16_1
      SHX0_2(SHX1_2)
    end
  end
  SHX0_2 = 0
  SHX16_1 = SHX0_2
  SHX0_2 = pairs
  SHX1_2 = SHX17_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    if SHX5_2 and 0 ~= SHX5_2 then
      SHX6_2 = DoesEntityExist
      SHX7_2 = SHX5_2
      SHX6_2 = SHX6_2(SHX7_2)
      if SHX6_2 then
        SHX6_2 = SetEntityAsMissionEntity
        SHX7_2 = SHX5_2
        SHX8_2 = true
        SHX9_2 = true
        SHX6_2(SHX7_2, SHX8_2, SHX9_2)
        SHX6_2 = DeleteObject
        SHX7_2 = SHX5_2
        SHX6_2(SHX7_2)
      end
    end
  end
  SHX0_2 = {}
  SHX17_1 = SHX0_2
  SHX0_2 = pairs
  SHX1_2 = SHX18_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    if SHX5_2 and 0 ~= SHX5_2 then
      SHX6_2 = DoesEntityExist
      SHX7_2 = SHX5_2
      SHX6_2 = SHX6_2(SHX7_2)
      if SHX6_2 then
        SHX6_2 = DetachEntity
        SHX7_2 = SHX5_2
        SHX8_2 = true
        SHX9_2 = true
        SHX6_2(SHX7_2, SHX8_2, SHX9_2)
        SHX6_2 = SetEntityAsMissionEntity
        SHX7_2 = SHX5_2
        SHX8_2 = true
        SHX9_2 = true
        SHX6_2(SHX7_2, SHX8_2, SHX9_2)
        SHX6_2 = DeleteObject
        SHX7_2 = SHX5_2
        SHX6_2(SHX7_2)
      end
    end
  end
  SHX0_2 = {}
  SHX18_1 = SHX0_2
  SHX0_2 = nil
  SHX20_1 = SHX0_2
end
SHX42_1 = CMG
function SHX43_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX19_1
  SHX0_2 = DoesEntityExist
  SHX1_2 = SHX19_1
  SHX0_2 = 0 ~= SHX0_2 and SHX0_2
  return SHX0_2
end
SHX42_1.isMechanicDebrisCarryingScrap = SHX43_1
function SHX42_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = SHX0_2.secondaryCleared
  SHX3_2 = type
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if "table" ~= SHX3_2 then
    SHX3_2 = false
    return SHX3_2
  end
  SHX3_2 = SHX2_2[SHX1_2]
  if not SHX3_2 then
    SHX3_2 = tostring
    SHX4_2 = SHX1_2
    SHX3_2 = SHX3_2(SHX4_2)
    SHX3_2 = SHX2_2[SHX3_2]
  end
  SHX4_2 = true == SHX3_2
  return SHX4_2
end
function SHX43_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX2_2 = type
  SHX3_2 = SHX0_2.secondary
  SHX2_2 = SHX2_2(SHX3_2)
  if "table" ~= SHX2_2 then
    SHX2_2 = nil
    return SHX2_2
  end
  SHX2_2 = ipairs
  SHX3_2 = SHX0_2.secondary
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = tonumber
    SHX9_2 = SHX7_2.slot
    SHX8_2 = SHX8_2(SHX9_2)
    if SHX8_2 == SHX1_2 then
      SHX8_2 = type
      SHX9_2 = SHX7_2.model
      SHX8_2 = SHX8_2(SHX9_2)
      if "string" == SHX8_2 then
        SHX8_2 = SHX7_2.model
        return SHX8_2
      end
    end
  end
  SHX2_2 = nil
  return SHX2_2
end
function SHX44_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = type
  SHX2_2 = SHX0_2.secondary
  SHX1_2 = SHX1_2(SHX2_2)
  if "table" == SHX1_2 then
    SHX1_2 = SHX0_2.secondary
    SHX1_2 = #SHX1_2
    if not (SHX1_2 < 1) then
      goto SHX_LABEL_12
    end
  end
  SHX1_2 = false
  return SHX1_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_12:: outside nested blocks until all 'goto SHX_LABEL_12' can see it
  ::SHX_LABEL_12::
  SHX1_2 = ipairs
  SHX2_2 = SHX0_2.secondary
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = tonumber
    SHX8_2 = SHX6_2.slot
    SHX7_2 = SHX7_2(SHX8_2)
    if SHX7_2 then
      SHX8_2 = SHX42_1
      SHX9_2 = SHX0_2
      SHX10_2 = SHX7_2
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
      if not SHX8_2 then
        SHX8_2 = false
        return SHX8_2
      end
    end
  end
  SHX1_2 = true
  return SHX1_2
end
function SHX45_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX3_2 = math
  SHX3_2 = SHX3_2.rad
  SHX4_2 = SHX2_2 + 0.0
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = math
  SHX4_2 = SHX4_2.cos
  SHX5_2 = SHX3_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = math
  SHX5_2 = SHX5_2.sin
  SHX6_2 = SHX3_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = SHX0_2 * SHX4_2
  SHX7_2 = SHX1_2 * SHX5_2
  SHX6_2 = SHX6_2 - SHX7_2
  SHX7_2 = SHX0_2 * SHX5_2
  SHX8_2 = SHX1_2 * SHX4_2
  SHX7_2 = SHX7_2 + SHX8_2
  return SHX6_2, SHX7_2
end
function SHX46_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX3_2 = SHX0_1.debrisLayoutGroups
  SHX4_2 = type
  SHX5_2 = SHX3_2
  SHX4_2 = SHX4_2(SHX5_2)
  if "table" == SHX4_2 then
    SHX4_2 = SHX1_2 or SHX4_2
    if not SHX1_2 then
      SHX4_2 = ""
    end
    SHX4_2 = SHX3_2[SHX4_2]
    if SHX4_2 then
      goto SHX_LABEL_14
    end
  end
  SHX4_2 = nil
  -- [FIX IF ERROR] Move ::SHX_LABEL_14:: outside nested blocks until all 'goto SHX_LABEL_14' can see it
  ::SHX_LABEL_14::
  SHX5_2 = type
  SHX6_2 = SHX4_2
  SHX5_2 = SHX5_2(SHX6_2)
  if "table" == SHX5_2 then
    SHX5_2 = SHX4_2.secondaryOffsets
    if SHX5_2 then
      goto SHX_LABEL_23
    end
  end
  SHX5_2 = nil
  -- [FIX IF ERROR] Move ::SHX_LABEL_23:: outside nested blocks until all 'goto SHX_LABEL_23' can see it
  ::SHX_LABEL_23::
  SHX6_2 = type
  SHX7_2 = SHX5_2
  SHX6_2 = SHX6_2(SHX7_2)
  if "table" == SHX6_2 then
    SHX6_2 = type
    SHX7_2 = SHX0_2
    SHX6_2 = SHX6_2(SHX7_2)
    if "string" == SHX6_2 and "" ~= SHX0_2 then
      SHX6_2 = SHX5_2[SHX0_2]
      SHX7_2 = type
      SHX8_2 = SHX6_2
      SHX7_2 = SHX7_2(SHX8_2)
      if "table" == SHX7_2 then
        SHX7_2 = {}
        SHX8_2 = tonumber
        SHX9_2 = SHX6_2.dx
        SHX8_2 = SHX8_2(SHX9_2)
        if not SHX8_2 then
          SHX8_2 = 0.0
        end
        SHX7_2.dx = SHX8_2
        SHX8_2 = tonumber
        SHX9_2 = SHX6_2.dy
        SHX8_2 = SHX8_2(SHX9_2)
        if not SHX8_2 then
          SHX8_2 = 0.0
        end
        SHX7_2.dy = SHX8_2
        SHX8_2 = tonumber
        SHX9_2 = SHX6_2.dz
        SHX8_2 = SHX8_2(SHX9_2)
        if not SHX8_2 then
          SHX8_2 = 0.0
        end
        SHX7_2.dz = SHX8_2
        SHX8_2 = tonumber
        SHX9_2 = SHX6_2.h
        SHX8_2 = SHX8_2(SHX9_2)
        if not SHX8_2 then
          SHX8_2 = 0.0
        end
        SHX7_2.h = SHX8_2
        return SHX7_2
      end
    end
  end
  SHX6_2 = {}
  SHX6_2.dx = 0.0
  SHX7_2 = SHX2_2 * 0.35
  SHX7_2 = 2.0 + SHX7_2
  SHX6_2.dy = SHX7_2
  SHX6_2.dz = 0.0
  SHX6_2.h = 0.0
  return SHX6_2
end
function SHX47_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX3_2 = SHX0_1.debrisLayoutGroups
  SHX4_2 = type
  SHX5_2 = SHX3_2
  SHX4_2 = SHX4_2(SHX5_2)
  if "table" == SHX4_2 then
    SHX4_2 = SHX1_2 or SHX4_2
    if not SHX1_2 then
      SHX4_2 = ""
    end
    SHX4_2 = SHX3_2[SHX4_2]
    if SHX4_2 then
      goto SHX_LABEL_14
    end
  end
  SHX4_2 = nil
  -- [FIX IF ERROR] Move ::SHX_LABEL_14:: outside nested blocks until all 'goto SHX_LABEL_14' can see it
  ::SHX_LABEL_14::
  SHX5_2 = type
  SHX6_2 = SHX4_2
  SHX5_2 = SHX5_2(SHX6_2)
  if "table" == SHX5_2 then
    SHX5_2 = SHX4_2.secondaryFlatbedAttach
    if SHX5_2 then
      goto SHX_LABEL_23
    end
  end
  SHX5_2 = nil
  -- [FIX IF ERROR] Move ::SHX_LABEL_23:: outside nested blocks until all 'goto SHX_LABEL_23' can see it
  ::SHX_LABEL_23::
  SHX6_2 = type
  SHX7_2 = SHX5_2
  SHX6_2 = SHX6_2(SHX7_2)
  if "table" == SHX6_2 then
    SHX6_2 = type
    SHX7_2 = SHX0_2
    SHX6_2 = SHX6_2(SHX7_2)
    if "string" == SHX6_2 and "" ~= SHX0_2 then
      SHX6_2 = SHX5_2[SHX0_2]
      SHX7_2 = type
      SHX8_2 = SHX6_2
      SHX7_2 = SHX7_2(SHX8_2)
      if "table" == SHX7_2 then
        SHX7_2 = {}
        SHX8_2 = tonumber
        SHX9_2 = SHX6_2.ox
        SHX8_2 = SHX8_2(SHX9_2)
        if not SHX8_2 then
          SHX8_2 = 0.0
        end
        SHX7_2.ox = SHX8_2
        SHX8_2 = tonumber
        SHX9_2 = SHX6_2.oy
        SHX8_2 = SHX8_2(SHX9_2)
        if not SHX8_2 then
          SHX8_2 = 0.0
        end
        SHX7_2.oy = SHX8_2
        SHX8_2 = tonumber
        SHX9_2 = SHX6_2.oz
        SHX8_2 = SHX8_2(SHX9_2)
        if not SHX8_2 then
          SHX8_2 = 0.55
        end
        SHX7_2.oz = SHX8_2
        SHX8_2 = tonumber
        SHX9_2 = SHX6_2.rx
        SHX8_2 = SHX8_2(SHX9_2)
        if not SHX8_2 then
          SHX8_2 = 0.0
        end
        SHX7_2.rx = SHX8_2
        SHX8_2 = tonumber
        SHX9_2 = SHX6_2.ry
        SHX8_2 = SHX8_2(SHX9_2)
        if not SHX8_2 then
          SHX8_2 = 0.0
        end
        SHX7_2.ry = SHX8_2
        SHX8_2 = tonumber
        SHX9_2 = SHX6_2.rz
        SHX8_2 = SHX8_2(SHX9_2)
        if not SHX8_2 then
          SHX8_2 = 0.0
        end
        SHX7_2.rz = SHX8_2
        return SHX7_2
      end
    end
  end
  SHX6_2 = {}
  SHX6_2.ox = 0.0
  SHX7_2 = SHX2_2 * 0.2
  SHX8_2 = -3.0
  SHX7_2 = SHX8_2 - SHX7_2
  SHX6_2.oy = SHX7_2
  SHX6_2.oz = 0.55
  SHX6_2.rx = 0.0
  SHX6_2.ry = 0.0
  SHX6_2.rz = 0.0
  return SHX6_2
end
function SHX48_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX0_1.debrisMainFlatbedAttach
  if not SHX1_2 then
    SHX1_2 = {}
  end
  SHX2_2 = {}
  SHX3_2 = tonumber
  SHX4_2 = SHX1_2.ox
  SHX3_2 = SHX3_2(SHX4_2)
  if not SHX3_2 then
    SHX3_2 = 0.0
  end
  SHX2_2.ox = SHX3_2
  SHX3_2 = tonumber
  SHX4_2 = SHX1_2.oy
  SHX3_2 = SHX3_2(SHX4_2)
  if not SHX3_2 then
    SHX3_2 = 0.0
  end
  SHX2_2.oy = SHX3_2
  SHX3_2 = tonumber
  SHX4_2 = SHX1_2.oz
  SHX3_2 = SHX3_2(SHX4_2)
  if not SHX3_2 then
    SHX3_2 = 0.0
  end
  SHX2_2.oz = SHX3_2
  SHX3_2 = tonumber
  SHX4_2 = SHX1_2.rx
  SHX3_2 = SHX3_2(SHX4_2)
  if not SHX3_2 then
    SHX3_2 = 0.0
  end
  SHX2_2.rx = SHX3_2
  SHX3_2 = tonumber
  SHX4_2 = SHX1_2.ry
  SHX3_2 = SHX3_2(SHX4_2)
  if not SHX3_2 then
    SHX3_2 = 0.0
  end
  SHX2_2.ry = SHX3_2
  SHX3_2 = tonumber
  SHX4_2 = SHX1_2.rz
  SHX3_2 = SHX3_2(SHX4_2)
  if not SHX3_2 then
    SHX3_2 = 0.0
  end
  SHX2_2.rz = SHX3_2
  return SHX2_2
end
function SHX49_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2
  if 0 ~= SHX0_2 then
    SHX2_2 = DoesEntityExist
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      SHX2_2 = SHX19_1
      if 0 ~= SHX2_2 then
        SHX2_2 = DoesEntityExist
        SHX3_2 = SHX19_1
        SHX2_2 = SHX2_2(SHX3_2)
        if SHX2_2 then
          goto SHX_LABEL_18
        end
      end
    end
  end
  SHX2_2 = false
  return SHX2_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_18:: outside nested blocks until all 'goto SHX_LABEL_18' can see it
  ::SHX_LABEL_18::
  SHX2_2 = tonumber
  SHX3_2 = SHX0_1.debrisSecondaryFlatbedBone
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    SHX2_2 = tonumber
    SHX3_2 = SHX0_1.debrisMainFlatbedBone
    SHX2_2 = SHX2_2(SHX3_2)
    if not SHX2_2 then
      SHX2_2 = 20
    end
  end
  SHX3_2 = SHX15_1
  if SHX3_2 then
    SHX4_2 = SHX43_1
    SHX5_2 = SHX3_2
    SHX6_2 = SHX1_2
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
    if SHX4_2 then
      goto SHX_LABEL_39
    end
  end
  SHX4_2 = nil
  -- [FIX IF ERROR] Move ::SHX_LABEL_39:: outside nested blocks until all 'goto SHX_LABEL_39' can see it
  ::SHX_LABEL_39::
  if SHX3_2 then
    SHX5_2 = SHX3_2.mainModel
    if SHX5_2 then
      goto SHX_LABEL_45
    end
  end
  SHX5_2 = nil
  -- [FIX IF ERROR] Move ::SHX_LABEL_45:: outside nested blocks until all 'goto SHX_LABEL_45' can see it
  ::SHX_LABEL_45::
  SHX6_2 = SHX47_1
  SHX7_2 = SHX4_2
  SHX8_2 = SHX5_2
  SHX9_2 = SHX1_2
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX7_2 = DetachEntity
  SHX8_2 = SHX19_1
  SHX9_2 = true
  SHX10_2 = true
  SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  SHX7_2 = FreezeEntityPosition
  SHX8_2 = SHX19_1
  SHX9_2 = false
  SHX7_2(SHX8_2, SHX9_2)
  SHX7_2 = tonumber
  SHX8_2 = SHX6_2.ox
  SHX7_2 = SHX7_2(SHX8_2)
  if not SHX7_2 then
    SHX7_2 = 0.0
  end
  SHX8_2 = tonumber
  SHX9_2 = SHX6_2.oy
  SHX8_2 = SHX8_2(SHX9_2)
  if not SHX8_2 then
    SHX8_2 = 0.0
  end
  SHX9_2 = tonumber
  SHX10_2 = SHX6_2.oz
  SHX9_2 = SHX9_2(SHX10_2)
  if not SHX9_2 then
    SHX9_2 = 0.55
  end
  SHX10_2 = tonumber
  SHX11_2 = SHX6_2.rx
  SHX10_2 = SHX10_2(SHX11_2)
  if not SHX10_2 then
    SHX10_2 = 0.0
  end
  SHX11_2 = tonumber
  SHX12_2 = SHX6_2.ry
  SHX11_2 = SHX11_2(SHX12_2)
  if not SHX11_2 then
    SHX11_2 = 0.0
  end
  SHX12_2 = tonumber
  SHX13_2 = SHX6_2.rz
  SHX12_2 = SHX12_2(SHX13_2)
  if not SHX12_2 then
    SHX12_2 = 0.0
  end
  SHX13_2 = AttachEntityToEntity
  SHX14_2 = SHX19_1
  SHX15_2 = SHX0_2
  SHX16_2 = SHX2_2
  SHX17_2 = SHX7_2
  SHX18_2 = SHX8_2
  SHX19_2 = SHX9_2
  SHX20_2 = SHX10_2
  SHX21_2 = SHX11_2
  SHX22_2 = SHX12_2
  SHX23_2 = false
  SHX24_2 = false
  SHX25_2 = false
  SHX26_2 = false
  SHX27_2 = 2
  SHX28_2 = true
  SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
  SHX13_2 = SetEntityCollision
  SHX14_2 = SHX19_1
  SHX15_2 = true
  SHX16_2 = true
  SHX13_2(SHX14_2, SHX15_2, SHX16_2)
  SHX13_2 = SHX18_1
  SHX14_2 = SHX19_1
  SHX13_2[SHX1_2] = SHX14_2
  SHX13_2 = 0
  SHX19_1 = SHX13_2
  SHX13_2 = nil
  SHX21_1 = SHX13_2
  SHX13_2 = SHX38_1
  SHX13_2()
  SHX13_2 = true
  return SHX13_2
end
function SHX50_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2
  SHX1_2 = tonumber
  SHX2_2 = SHX0_2.carryingSecondarySlot
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX2_2 = SHX38_1
    SHX2_2()
    SHX2_2 = SHX19_1
    if 0 ~= SHX2_2 then
      SHX2_2 = DoesEntityExist
      SHX3_2 = SHX19_1
      SHX2_2 = SHX2_2(SHX3_2)
      if SHX2_2 then
        SHX2_2 = DetachEntity
        SHX3_2 = SHX19_1
        SHX4_2 = true
        SHX5_2 = true
        SHX2_2(SHX3_2, SHX4_2, SHX5_2)
        SHX2_2 = SetEntityAsMissionEntity
        SHX3_2 = SHX19_1
        SHX4_2 = true
        SHX5_2 = true
        SHX2_2(SHX3_2, SHX4_2, SHX5_2)
        SHX2_2 = DeleteObject
        SHX3_2 = SHX19_1
        SHX2_2(SHX3_2)
      end
    end
    SHX2_2 = 0
    SHX19_1 = SHX2_2
    SHX2_2 = nil
    SHX21_1 = SHX2_2
    return
  end
  SHX2_2 = SHX43_1
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  if not SHX2_2 then
    return
  end
  SHX3_2 = SHX21_1
  if SHX3_2 == SHX1_2 then
    SHX3_2 = SHX19_1
    if 0 ~= SHX3_2 then
      SHX3_2 = DoesEntityExist
      SHX4_2 = SHX19_1
      SHX3_2 = SHX3_2(SHX4_2)
      if SHX3_2 then
        return
      end
    end
  end
  SHX3_2 = SHX17_1
  SHX3_2 = SHX3_2[SHX1_2]
  if SHX3_2 and 0 ~= SHX3_2 then
    SHX4_2 = DoesEntityExist
    SHX5_2 = SHX3_2
    SHX4_2 = SHX4_2(SHX5_2)
    if SHX4_2 then
      SHX4_2 = SetEntityAsMissionEntity
      SHX5_2 = SHX3_2
      SHX6_2 = true
      SHX7_2 = true
      SHX4_2(SHX5_2, SHX6_2, SHX7_2)
      SHX4_2 = DeleteObject
      SHX5_2 = SHX3_2
      SHX4_2(SHX5_2)
    end
  end
  SHX4_2 = SHX17_1
  SHX4_2[SHX1_2] = nil
  SHX4_2 = SHX19_1
  if 0 ~= SHX4_2 then
    SHX4_2 = DoesEntityExist
    SHX5_2 = SHX19_1
    SHX4_2 = SHX4_2(SHX5_2)
    if SHX4_2 then
      SHX4_2 = SHX38_1
      SHX4_2()
      SHX4_2 = DetachEntity
      SHX5_2 = SHX19_1
      SHX6_2 = true
      SHX7_2 = true
      SHX4_2(SHX5_2, SHX6_2, SHX7_2)
      SHX4_2 = SetEntityAsMissionEntity
      SHX5_2 = SHX19_1
      SHX6_2 = true
      SHX7_2 = true
      SHX4_2(SHX5_2, SHX6_2, SHX7_2)
      SHX4_2 = DeleteObject
      SHX5_2 = SHX19_1
      SHX4_2(SHX5_2)
    end
  end
  SHX4_2 = 0
  SHX19_1 = SHX4_2
  SHX4_2 = GetHashKey
  SHX5_2 = SHX2_2
  SHX4_2 = SHX4_2(SHX5_2)
  if not SHX4_2 or 0 == SHX4_2 then
    return
  end
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.loadModel
  SHX6_2 = SHX4_2
  SHX5_2(SHX6_2)
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.getPlayerPed
  SHX5_2 = SHX5_2()
  SHX6_2 = GetEntityCoords
  SHX7_2 = SHX5_2
  SHX8_2 = true
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  SHX7_2 = CreateObject
  SHX8_2 = SHX4_2
  SHX9_2 = SHX6_2.x
  SHX10_2 = SHX6_2.y
  SHX11_2 = SHX6_2.z
  SHX11_2 = SHX11_2 + 0.2
  SHX12_2 = false
  SHX13_2 = false
  SHX14_2 = false
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  if SHX7_2 and 0 ~= SHX7_2 then
    SHX8_2 = DoesEntityExist
    SHX9_2 = SHX7_2
    SHX8_2 = SHX8_2(SHX9_2)
    if SHX8_2 then
      SHX8_2 = GetPedBoneIndex
      SHX9_2 = SHX5_2
      SHX10_2 = 60309
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
      SHX9_2 = AttachEntityToEntity
      SHX10_2 = SHX7_2
      SHX11_2 = SHX5_2
      SHX12_2 = SHX8_2
      SHX13_2 = 0.025
      SHX14_2 = 0.08
      SHX15_2 = 0.255
      SHX16_2 = -145.0
      SHX17_2 = 290.0
      SHX18_2 = 0.0
      SHX19_2 = true
      SHX20_2 = true
      SHX21_2 = false
      SHX22_2 = true
      SHX23_2 = 1
      SHX24_2 = true
      SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
      SHX19_1 = SHX7_2
      SHX21_1 = SHX1_2
      SHX9_2 = SHX39_1
      SHX9_2()
    end
  end
  SHX8_2 = SetModelAsNoLongerNeeded
  SHX9_2 = SHX4_2
  SHX8_2(SHX9_2)
end
function SHX51_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = SHX16_1
  if 0 ~= SHX0_2 then
    SHX0_2 = DoesEntityExist
    SHX1_2 = SHX16_1
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      SHX0_2 = DetachEntity
      SHX1_2 = SHX16_1
      SHX2_2 = true
      SHX3_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      SHX0_2 = SetEntityAsMissionEntity
      SHX1_2 = SHX16_1
      SHX2_2 = true
      SHX3_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      SHX0_2 = DeleteObject
      SHX1_2 = SHX16_1
      SHX0_2(SHX1_2)
    end
  end
  SHX0_2 = 0
  SHX16_1 = SHX0_2
  SHX0_2 = pairs
  SHX1_2 = SHX17_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    if SHX5_2 and 0 ~= SHX5_2 then
      SHX6_2 = DoesEntityExist
      SHX7_2 = SHX5_2
      SHX6_2 = SHX6_2(SHX7_2)
      if SHX6_2 then
        SHX6_2 = SetEntityAsMissionEntity
        SHX7_2 = SHX5_2
        SHX8_2 = true
        SHX9_2 = true
        SHX6_2(SHX7_2, SHX8_2, SHX9_2)
        SHX6_2 = DeleteObject
        SHX7_2 = SHX5_2
        SHX6_2(SHX7_2)
      end
    end
  end
  SHX0_2 = {}
  SHX17_1 = SHX0_2
end
function SHX52_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2
  SHX5_2 = SHX51_1
  SHX5_2()
  SHX5_2 = SHX0_2.mainModel
  SHX6_2 = type
  SHX7_2 = SHX5_2
  SHX6_2 = SHX6_2(SHX7_2)
  if "string" == SHX6_2 and "" ~= SHX5_2 then
    SHX6_2 = GetHashKey
    SHX7_2 = SHX5_2
    SHX6_2 = SHX6_2(SHX7_2)
    if SHX6_2 and 0 ~= SHX6_2 then
      SHX7_2 = CMG
      SHX7_2 = SHX7_2.loadModel
      SHX8_2 = SHX6_2
      SHX7_2(SHX8_2)
      SHX7_2 = CreateObject
      SHX8_2 = SHX6_2
      SHX9_2 = SHX1_2
      SHX10_2 = SHX2_2
      SHX11_2 = SHX3_2 + 0.05
      SHX12_2 = false
      SHX13_2 = false
      SHX14_2 = false
      SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
      if SHX7_2 and 0 ~= SHX7_2 then
        SHX8_2 = DoesEntityExist
        SHX9_2 = SHX7_2
        SHX8_2 = SHX8_2(SHX9_2)
        if SHX8_2 then
          SHX8_2 = SetEntityHeading
          SHX9_2 = SHX7_2
          SHX10_2 = SHX4_2 + 0.0
          SHX8_2(SHX9_2, SHX10_2)
          SHX8_2 = PlaceObjectOnGroundProperly
          SHX9_2 = SHX7_2
          SHX8_2(SHX9_2)
          SHX8_2 = FreezeEntityPosition
          SHX9_2 = SHX7_2
          SHX10_2 = true
          SHX8_2(SHX9_2, SHX10_2)
          SHX8_2 = SetEntityCollision
          SHX9_2 = SHX7_2
          SHX10_2 = true
          SHX11_2 = true
          SHX8_2(SHX9_2, SHX10_2, SHX11_2)
          SHX16_1 = SHX7_2
        end
      end
      SHX8_2 = SetModelAsNoLongerNeeded
      SHX9_2 = SHX6_2
      SHX8_2(SHX9_2)
    end
  end
  SHX6_2 = type
  SHX7_2 = SHX0_2.secondary
  SHX6_2 = SHX6_2(SHX7_2)
  if "table" == SHX6_2 then
    SHX6_2 = ipairs
    SHX7_2 = SHX0_2.secondary
    SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
    for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
      SHX12_2 = tonumber
      SHX13_2 = SHX11_2.slot
      SHX12_2 = SHX12_2(SHX13_2)
      if SHX12_2 then
        SHX13_2 = SHX42_1
        SHX14_2 = SHX0_2
        SHX15_2 = SHX12_2
        SHX13_2 = SHX13_2(SHX14_2, SHX15_2)
        if not SHX13_2 then
          SHX13_2 = tonumber
          SHX14_2 = SHX0_2.carryingSecondarySlot
          SHX13_2 = SHX13_2(SHX14_2)
          if SHX13_2 ~= SHX12_2 then
            SHX13_2 = SHX11_2.model
            SHX14_2 = type
            SHX15_2 = SHX13_2
            SHX14_2 = SHX14_2(SHX15_2)
            if "string" == SHX14_2 and "" ~= SHX13_2 then
              SHX14_2 = tonumber
              SHX15_2 = SHX11_2.dx
              SHX14_2 = SHX14_2(SHX15_2)
              if not SHX14_2 then
                SHX14_2 = 0.0
              end
              SHX15_2 = tonumber
              SHX16_2 = SHX11_2.dy
              SHX15_2 = SHX15_2(SHX16_2)
              if not SHX15_2 then
                SHX15_2 = 0.0
              end
              SHX16_2 = tonumber
              SHX17_2 = SHX11_2.dz
              SHX16_2 = SHX16_2(SHX17_2)
              if not SHX16_2 then
                SHX16_2 = 0.0
              end
              SHX17_2 = SHX45_1
              SHX18_2 = SHX14_2
              SHX19_2 = SHX15_2
              SHX20_2 = SHX4_2
              SHX17_2, SHX18_2 = SHX17_2(SHX18_2, SHX19_2, SHX20_2)
              SHX19_2 = GetHashKey
              SHX20_2 = SHX13_2
              SHX19_2 = SHX19_2(SHX20_2)
              if SHX19_2 and 0 ~= SHX19_2 then
                SHX20_2 = CMG
                SHX20_2 = SHX20_2.loadModel
                SHX21_2 = SHX19_2
                SHX20_2(SHX21_2)
                SHX20_2 = SHX1_2 + SHX17_2
                SHX21_2 = SHX2_2 + SHX18_2
                SHX22_2 = SHX3_2 + SHX16_2
                SHX23_2 = CreateObject
                SHX24_2 = SHX19_2
                SHX25_2 = SHX20_2
                SHX26_2 = SHX21_2
                SHX27_2 = SHX22_2
                SHX28_2 = false
                SHX29_2 = false
                SHX30_2 = false
                SHX23_2 = SHX23_2(SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2)
                if SHX23_2 and 0 ~= SHX23_2 then
                  SHX24_2 = DoesEntityExist
                  SHX25_2 = SHX23_2
                  SHX24_2 = SHX24_2(SHX25_2)
                  if SHX24_2 then
                    SHX24_2 = SetEntityHeading
                    SHX25_2 = SHX23_2
                    SHX26_2 = tonumber
                    SHX27_2 = SHX11_2.h
                    SHX26_2 = SHX26_2(SHX27_2)
                    if not SHX26_2 then
                      SHX26_2 = 0.0
                    end
                    SHX26_2 = SHX26_2 + SHX4_2
                    SHX24_2(SHX25_2, SHX26_2)
                    SHX24_2 = PlaceObjectOnGroundProperly
                    SHX25_2 = SHX23_2
                    SHX24_2(SHX25_2)
                    SHX24_2 = FreezeEntityPosition
                    SHX25_2 = SHX23_2
                    SHX26_2 = true
                    SHX24_2(SHX25_2, SHX26_2)
                    SHX24_2 = SetEntityCollision
                    SHX25_2 = SHX23_2
                    SHX26_2 = true
                    SHX27_2 = true
                    SHX24_2(SHX25_2, SHX26_2, SHX27_2)
                    SHX24_2 = SHX17_1
                    SHX24_2[SHX12_2] = SHX23_2
                  end
                end
                SHX24_2 = SetModelAsNoLongerNeeded
                SHX25_2 = SHX19_2
                SHX24_2(SHX25_2)
              end
            end
          end
        end
      end
    end
  end
end
function SHX53_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2
  SHX0_2 = SHX15_1
  SHX1_2 = tonumber
  SHX2_2 = SHX0_1.debrisPropSpawnNearMeters
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = 95.0
  end
  SHX2_2 = 32.0
  if SHX0_2 then
    SHX3_2 = SHX0_2.type
    if "debris" == SHX3_2 then
      SHX3_2 = type
      SHX4_2 = SHX0_2.anchor
      SHX3_2 = SHX3_2(SHX4_2)
      if "table" == SHX3_2 then
        SHX3_2 = type
        SHX4_2 = SHX0_2.anchor
        SHX4_2 = SHX4_2.x
        SHX3_2 = SHX3_2(SHX4_2)
        if "number" == SHX3_2 then
          goto SHX_LABEL_31
        end
      end
    end
  end
  SHX3_2 = SHX20_1
  if SHX3_2 then
    SHX3_2 = SHX41_1
    SHX3_2()
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_31:: outside nested blocks until all 'goto SHX_LABEL_31' can see it
  ::SHX_LABEL_31::
  SHX3_2 = SHX50_1
  SHX4_2 = SHX0_2
  SHX3_2(SHX4_2)
  SHX3_2 = SHX0_2.mainSecured
  if SHX3_2 then
    return
  end
  SHX3_2 = SHX0_2.anchor
  SHX3_2 = SHX3_2.x
  SHX3_2 = SHX3_2 + 0.0
  SHX4_2 = SHX0_2.anchor
  SHX4_2 = SHX4_2.y
  SHX4_2 = SHX4_2 + 0.0
  SHX5_2 = SHX0_2.anchor
  SHX5_2 = SHX5_2.z
  SHX5_2 = SHX5_2 + 0.0
  SHX6_2 = tostring
  SHX7_2 = SHX0_2.contractId
  if not SHX7_2 then
    SHX7_2 = ""
  end
  SHX6_2 = SHX6_2(SHX7_2)
  SHX7_2 = "_"
  SHX8_2 = tostring
  SHX9_2 = SHX0_2.mainModel
  if not SHX9_2 then
    SHX9_2 = ""
  end
  SHX8_2 = SHX8_2(SHX9_2)
  SHX6_2 = SHX6_2 .. SHX7_2 .. SHX8_2
  SHX7_2 = PlayerPedId
  SHX7_2 = SHX7_2()
  SHX8_2 = GetEntityCoords
  SHX9_2 = SHX7_2
  SHX10_2 = true
  SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
  SHX9_2 = vector3
  SHX10_2 = SHX3_2
  SHX11_2 = SHX4_2
  SHX12_2 = SHX5_2
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
  SHX9_2 = SHX8_2 - SHX9_2
  SHX9_2 = #SHX9_2
  SHX10_2 = SHX1_2 + SHX2_2
  if SHX9_2 > SHX10_2 then
    SHX10_2 = SHX20_1
    if SHX10_2 then
      SHX10_2 = false
      SHX11_2 = SHX16_1
      if 0 ~= SHX11_2 then
        SHX11_2 = DoesEntityExist
        SHX12_2 = SHX16_1
        SHX11_2 = SHX11_2(SHX12_2)
        if SHX11_2 then
          SHX11_2 = GetEntityAttachedTo
          SHX12_2 = SHX16_1
          SHX11_2 = SHX11_2(SHX12_2)
          if 0 ~= SHX11_2 then
            SHX12_2 = DoesEntityExist
            SHX13_2 = SHX11_2
            SHX12_2 = SHX12_2(SHX13_2)
            if SHX12_2 then
              SHX12_2 = IsEntityAVehicle
              SHX13_2 = SHX11_2
              SHX12_2 = SHX12_2(SHX13_2)
              if SHX12_2 then
                SHX10_2 = true
              end
            end
          end
        end
      end
      if SHX10_2 then
        SHX11_2 = pairs
        SHX12_2 = SHX17_1
        SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX11_2(SHX12_2)
        for SHX15_2, SHX16_2 in SHX11_2, SHX12_2, SHX13_2, SHX14_2 do
          if SHX16_2 and 0 ~= SHX16_2 then
            SHX17_2 = DoesEntityExist
            SHX18_2 = SHX16_2
            SHX17_2 = SHX17_2(SHX18_2)
            if SHX17_2 then
              SHX17_2 = SetEntityAsMissionEntity
              SHX18_2 = SHX16_2
              SHX19_2 = true
              SHX20_2 = true
              SHX17_2(SHX18_2, SHX19_2, SHX20_2)
              SHX17_2 = DeleteObject
              SHX18_2 = SHX16_2
              SHX17_2(SHX18_2)
            end
          end
        end
        SHX11_2 = {}
        SHX17_1 = SHX11_2
      else
        SHX11_2 = SHX51_1
        SHX11_2()
      end
      SHX11_2 = nil
      SHX20_1 = SHX11_2
    end
    return
  end
  SHX10_2 = GetGroundZFor_3dCoord
  SHX11_2 = SHX3_2
  SHX12_2 = SHX4_2
  SHX13_2 = SHX5_2 + 50.0
  SHX14_2 = 0.0
  SHX15_2 = false
  SHX10_2, SHX11_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  if SHX11_2 and SHX11_2 > 0.0 then
    SHX12_2 = SHX11_2 + 0.05
    if SHX12_2 then
      goto SHX_LABEL_162
    end
  end
  SHX12_2 = SHX5_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_162:: outside nested blocks until all 'goto SHX_LABEL_162' can see it
  ::SHX_LABEL_162::
  SHX13_2 = tonumber
  SHX14_2 = SHX0_2.mainHeading
  SHX13_2 = SHX13_2(SHX14_2)
  if not SHX13_2 then
    SHX13_2 = 0.0
  end
  if SHX1_2 >= SHX9_2 then
    SHX14_2 = SHX20_1
    if SHX14_2 ~= SHX6_2 then
      SHX14_2 = SHX52_1
      SHX15_2 = SHX0_2
      SHX16_2 = SHX3_2
      SHX17_2 = SHX4_2
      SHX18_2 = SHX12_2
      SHX19_2 = SHX13_2
      SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
      SHX20_1 = SHX6_2
  end
  else
    SHX14_2 = SHX20_1
    if SHX14_2 == SHX6_2 then
      SHX14_2 = type
      SHX15_2 = SHX0_2.secondary
      SHX14_2 = SHX14_2(SHX15_2)
      if "table" == SHX14_2 then
        SHX14_2 = ipairs
        SHX15_2 = SHX0_2.secondary
        SHX14_2, SHX15_2, SHX16_2, SHX17_2 = SHX14_2(SHX15_2)
        for SHX18_2, SHX19_2 in SHX14_2, SHX15_2, SHX16_2, SHX17_2 do
          SHX20_2 = tonumber
          SHX21_2 = SHX19_2.slot
          SHX20_2 = SHX20_2(SHX21_2)
          if SHX20_2 then
            SHX21_2 = SHX42_1
            SHX22_2 = SHX0_2
            SHX23_2 = SHX20_2
            SHX21_2 = SHX21_2(SHX22_2, SHX23_2)
            if SHX21_2 then
              SHX21_2 = SHX17_1
              SHX21_2 = SHX21_2[SHX20_2]
              if SHX21_2 then
                SHX21_2 = DoesEntityExist
                SHX22_2 = SHX17_1
                SHX22_2 = SHX22_2[SHX20_2]
                SHX21_2 = SHX21_2(SHX22_2)
                if SHX21_2 then
                  SHX21_2 = SetEntityAsMissionEntity
                  SHX22_2 = SHX17_1
                  SHX22_2 = SHX22_2[SHX20_2]
                  SHX23_2 = true
                  SHX24_2 = true
                  SHX21_2(SHX22_2, SHX23_2, SHX24_2)
                  SHX21_2 = DeleteObject
                  SHX22_2 = SHX17_1
                  SHX22_2 = SHX22_2[SHX20_2]
                  SHX21_2(SHX22_2)
                  SHX21_2 = SHX17_1
                  SHX21_2[SHX20_2] = nil
                end
              end
            end
          end
        end
      end
    end
  end
end
SHX54_1 = Citizen
SHX54_1 = SHX54_1.CreateThread
function SHX55_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  while true do
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 400
    SHX0_2(SHX1_2)
    SHX0_2 = SHX53_1
    SHX0_2()
  end
end
SHX54_1(SHX55_1)
function SHX54_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = pairs
  SHX1_2 = SHX13_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    if SHX5_2 and 0 ~= SHX5_2 then
      SHX6_2 = RemoveBlip
      SHX7_2 = SHX5_2
      SHX6_2(SHX7_2)
    end
  end
  SHX0_2 = {}
  SHX13_1 = SHX0_2
end
function SHX55_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX7_2 = AddBlipForCoord
  SHX8_2 = SHX0_2 + 0.0
  SHX9_2 = SHX1_2 + 0.0
  SHX10_2 = SHX2_2 + 0.0
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  SHX8_2 = SetBlipSprite
  SHX9_2 = SHX7_2
  SHX10_2 = SHX3_2 or SHX10_2
  if not SHX3_2 then
    SHX10_2 = 402
  end
  SHX8_2(SHX9_2, SHX10_2)
  SHX8_2 = SetBlipColour
  SHX9_2 = SHX7_2
  SHX10_2 = SHX4_2 or SHX10_2
  if not SHX4_2 then
    SHX10_2 = 5
  end
  SHX8_2(SHX9_2, SHX10_2)
  SHX8_2 = SetBlipAsShortRange
  SHX9_2 = SHX7_2
  SHX10_2 = false
  SHX8_2(SHX9_2, SHX10_2)
  SHX8_2 = tonumber
  SHX9_2 = SHX6_2
  SHX8_2 = SHX8_2(SHX9_2)
  if SHX8_2 and SHX8_2 > 0.0 then
    SHX9_2 = SetBlipScale
    SHX10_2 = SHX7_2
    SHX11_2 = SHX8_2
    SHX9_2(SHX10_2, SHX11_2)
  end
  SHX9_2 = BeginTextCommandSetBlipName
  SHX10_2 = "STRING"
  SHX9_2(SHX10_2)
  SHX9_2 = AddTextComponentSubstringPlayerName
  SHX10_2 = SHX5_2 or SHX10_2
  if not SHX5_2 then
    SHX10_2 = "Job"
  end
  SHX9_2(SHX10_2)
  SHX9_2 = EndTextCommandSetBlipName
  SHX10_2 = SHX7_2
  SHX9_2(SHX10_2)
  SHX9_2 = SHX13_1
  SHX9_2 = #SHX9_2
  SHX10_2 = SHX9_2 + 1
  SHX9_2 = SHX13_1
  SHX9_2[SHX10_2] = SHX7_2
  return SHX7_2
end
function SHX56_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX5_2 = AddBlipForEntity
  SHX6_2 = SHX0_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = SetBlipSprite
  SHX7_2 = SHX5_2
  SHX8_2 = SHX1_2 or SHX8_2
  if not SHX1_2 then
    SHX8_2 = 402
  end
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = SetBlipColour
  SHX7_2 = SHX5_2
  SHX8_2 = SHX2_2 or SHX8_2
  if not SHX2_2 then
    SHX8_2 = 5
  end
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = SetBlipAsShortRange
  SHX7_2 = SHX5_2
  SHX8_2 = false
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = tonumber
  SHX7_2 = SHX4_2
  SHX6_2 = SHX6_2(SHX7_2)
  if SHX6_2 and SHX6_2 > 0.0 then
    SHX7_2 = SetBlipScale
    SHX8_2 = SHX5_2
    SHX9_2 = SHX6_2
    SHX7_2(SHX8_2, SHX9_2)
  end
  SHX7_2 = BeginTextCommandSetBlipName
  SHX8_2 = "STRING"
  SHX7_2(SHX8_2)
  SHX7_2 = AddTextComponentSubstringPlayerName
  SHX8_2 = SHX3_2 or SHX8_2
  if not SHX3_2 then
    SHX8_2 = "Job"
  end
  SHX7_2(SHX8_2)
  SHX7_2 = EndTextCommandSetBlipName
  SHX8_2 = SHX5_2
  SHX7_2(SHX8_2)
  SHX7_2 = SHX13_1
  SHX7_2 = #SHX7_2
  SHX8_2 = SHX7_2 + 1
  SHX7_2 = SHX13_1
  SHX7_2[SHX8_2] = SHX5_2
  return SHX5_2
end
SHX57_1 = nil
function SHX58_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = SetNewWaypoint
  SHX3_2 = SHX0_2 + 0.0
  SHX4_2 = SHX1_2 + 0.0
  SHX2_2(SHX3_2, SHX4_2)
end
function SHX59_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  if SHX0_2 then
    SHX3_2 = SHX0_2.targetNetId
    if nil ~= SHX3_2 then
      SHX3_2 = SHX0_2.targetNetId
      if 0 ~= SHX3_2 then
        goto SHX_LABEL_11
      end
    end
  end
  SHX3_2 = false
  return SHX3_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_11:: outside nested blocks until all 'goto SHX_LABEL_11' can see it
  ::SHX_LABEL_11::
  SHX3_2 = tonumber
  SHX4_2 = SHX0_2.targetNetId
  SHX3_2 = SHX3_2(SHX4_2)
  if not SHX3_2 or 0 == SHX3_2 then
    SHX4_2 = false
    return SHX4_2
  end
  SHX4_2 = tonumber
  SHX5_2 = SHX2_2
  SHX4_2 = SHX4_2(SHX5_2)
  if SHX4_2 and SHX3_2 == SHX4_2 then
    SHX5_2 = true
    return SHX5_2
  end
  if 0 ~= SHX1_2 then
    SHX5_2 = DoesEntityExist
    SHX6_2 = SHX1_2
    SHX5_2 = SHX5_2(SHX6_2)
    if SHX5_2 then
      SHX5_2 = NetworkGetNetworkIdFromEntity
      SHX6_2 = SHX1_2
      SHX5_2 = SHX5_2(SHX6_2)
      if SHX5_2 and 0 ~= SHX5_2 then
        SHX6_2 = tonumber
        SHX7_2 = SHX5_2
        SHX6_2 = SHX6_2(SHX7_2)
        if SHX3_2 == SHX6_2 then
          SHX6_2 = true
          return SHX6_2
        end
      end
    end
  end
  SHX5_2 = false
  return SHX5_2
end
function SHX60_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  if 0 ~= SHX0_2 and SHX0_2 ~= SHX1_2 then
    SHX2_2 = DoesEntityExist
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      SHX2_2 = IsEntityAVehicle
      SHX3_2 = SHX0_2
      SHX2_2 = SHX2_2(SHX3_2)
      if SHX2_2 then
        goto SHX_LABEL_17
      end
    end
  end
  SHX2_2 = false
  return SHX2_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_17:: outside nested blocks until all 'goto SHX_LABEL_17' can see it
  ::SHX_LABEL_17::
  SHX2_2 = DoesEntityExist
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = IsEntityAVehicle
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      goto SHX_LABEL_29
    end
  end
  SHX2_2 = false
  return SHX2_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_29:: outside nested blocks until all 'goto SHX_LABEL_29' can see it
  ::SHX_LABEL_29::
  SHX2_2 = IsVehicleAttachedToTowTruck
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  return SHX2_2(SHX3_2, SHX4_2)
end
function SHX61_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  if 0 ~= SHX0_2 then
    SHX2_2 = DoesEntityExist
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      SHX2_2 = IsEntityAVehicle
      SHX3_2 = SHX0_2
      SHX2_2 = SHX2_2(SHX3_2)
      if SHX2_2 then
        goto SHX_LABEL_15
      end
    end
  end
  SHX2_2 = false
  return SHX2_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_15:: outside nested blocks until all 'goto SHX_LABEL_15' can see it
  ::SHX_LABEL_15::
  SHX2_2 = GetEntityAttachedTo
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if 0 ~= SHX2_2 then
    SHX3_2 = DoesEntityExist
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      SHX3_2 = IsEntityAVehicle
      SHX4_2 = SHX2_2
      SHX3_2 = SHX3_2(SHX4_2)
      if SHX3_2 then
        SHX3_2 = GetEntityModel
        SHX4_2 = SHX2_2
        SHX3_2 = SHX3_2(SHX4_2)
        SHX4_2 = SHX10_1
        SHX3_2 = SHX4_2[SHX3_2]
        if SHX3_2 then
          SHX3_2 = true
          return SHX3_2
        end
      end
    end
  end
  SHX3_2 = tonumber
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  if not SHX3_2 then
    SHX4_2 = false
    return SHX4_2
  end
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getPlayerPed
  SHX4_2 = SHX4_2()
  SHX5_2 = GetVehiclePedIsIn
  SHX6_2 = SHX4_2
  SHX7_2 = false
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
  SHX6_2 = GetVehiclePedIsIn
  SHX7_2 = SHX4_2
  SHX8_2 = true
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  SHX7_2 = ipairs
  SHX8_2 = {}
  SHX9_2 = SHX5_2
  SHX10_2 = SHX6_2
  SHX8_2[1] = SHX9_2
  SHX8_2[2] = SHX10_2
  SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
  for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
    if 0 ~= SHX12_2 and SHX12_2 ~= SHX0_2 then
      SHX13_2 = DoesEntityExist
      SHX14_2 = SHX12_2
      SHX13_2 = SHX13_2(SHX14_2)
      if SHX13_2 then
        SHX13_2 = IsEntityAVehicle
        SHX14_2 = SHX12_2
        SHX13_2 = SHX13_2(SHX14_2)
        if SHX13_2 then
          SHX13_2 = SHX60_1
          SHX14_2 = SHX12_2
          SHX15_2 = SHX0_2
          SHX13_2 = SHX13_2(SHX14_2, SHX15_2)
          if SHX13_2 then
            SHX13_2 = true
            return SHX13_2
          end
          SHX13_2 = SHX59_1
          SHX14_2 = Entity
          SHX15_2 = SHX12_2
          SHX14_2 = SHX14_2(SHX15_2)
          SHX14_2 = SHX14_2.state
          SHX14_2 = SHX14_2.towVehicle
          SHX15_2 = SHX0_2
          SHX16_2 = SHX3_2
          SHX13_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2)
          if SHX13_2 then
            SHX13_2 = true
            return SHX13_2
          end
        end
      end
    end
  end
  SHX7_2 = pairs
  SHX8_2 = GetGamePool
  SHX9_2 = "CVehicle"
  SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2 = SHX8_2(SHX9_2)
  SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
    if SHX12_2 ~= SHX0_2 then
      SHX13_2 = DoesEntityExist
      SHX14_2 = SHX12_2
      SHX13_2 = SHX13_2(SHX14_2)
      if SHX13_2 then
        SHX13_2 = IsEntityAVehicle
        SHX14_2 = SHX12_2
        SHX13_2 = SHX13_2(SHX14_2)
        if SHX13_2 then
          SHX13_2 = SHX60_1
          SHX14_2 = SHX12_2
          SHX15_2 = SHX0_2
          SHX13_2 = SHX13_2(SHX14_2, SHX15_2)
          if SHX13_2 then
            SHX13_2 = true
            return SHX13_2
          end
          SHX13_2 = SHX59_1
          SHX14_2 = Entity
          SHX15_2 = SHX12_2
          SHX14_2 = SHX14_2(SHX15_2)
          SHX14_2 = SHX14_2.state
          SHX14_2 = SHX14_2.towVehicle
          SHX15_2 = SHX0_2
          SHX16_2 = SHX3_2
          SHX13_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2)
          if SHX13_2 then
            SHX13_2 = true
            return SHX13_2
          end
        end
      end
    end
  end
  SHX7_2 = false
  return SHX7_2
end
function SHX62_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  if SHX0_2 then
    SHX1_2 = SHX0_2.type
    if "breakdown" == SHX1_2 then
      goto SHX_LABEL_11
    end
    SHX1_2 = SHX0_2.type
    if "equipment" == SHX1_2 then
      goto SHX_LABEL_11
    end
  end
  SHX1_2 = false
  return SHX1_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_11:: outside nested blocks until all 'goto SHX_LABEL_11' can see it
  ::SHX_LABEL_11::
  SHX1_2 = SHX0_2.vehicleNetId
  if SHX1_2 then
    SHX1_2 = tonumber
    SHX2_2 = SHX0_2.vehicleNetId
    SHX1_2 = SHX1_2(SHX2_2)
  end
  if SHX1_2 then
    SHX2_2 = NetworkDoesNetworkIdExist
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      SHX2_2 = NetworkDoesEntityExistWithNetworkId
      SHX3_2 = SHX1_2
      SHX2_2 = SHX2_2(SHX3_2)
      if SHX2_2 then
        goto SHX_LABEL_31
      end
    end
  end
  SHX2_2 = false
  return SHX2_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_31:: outside nested blocks until all 'goto SHX_LABEL_31' can see it
  ::SHX_LABEL_31::
  SHX2_2 = NetworkGetEntityFromNetworkId
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = DoesEntityExist
  SHX4_2 = SHX2_2
  SHX3_2 = 0 ~= SHX2_2 and SHX3_2
  return SHX3_2
end
function SHX63_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  if SHX0_2 then
    SHX1_2 = SHX0_2.type
    if "breakdown" == SHX1_2 then
      goto SHX_LABEL_11
    end
    SHX1_2 = SHX0_2.type
    if "equipment" == SHX1_2 then
      goto SHX_LABEL_11
    end
  end
  SHX1_2 = false
  return SHX1_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_11:: outside nested blocks until all 'goto SHX_LABEL_11' can see it
  ::SHX_LABEL_11::
  SHX1_2 = SHX0_2.vehicleNetId
  if SHX1_2 then
    SHX1_2 = tonumber
    SHX2_2 = SHX0_2.vehicleNetId
    SHX1_2 = SHX1_2(SHX2_2)
  end
  if SHX1_2 then
    SHX2_2 = NetworkDoesNetworkIdExist
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      SHX2_2 = NetworkDoesEntityExistWithNetworkId
      SHX3_2 = SHX1_2
      SHX2_2 = SHX2_2(SHX3_2)
      if SHX2_2 then
        goto SHX_LABEL_31
      end
    end
  end
  SHX2_2 = false
  return SHX2_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_31:: outside nested blocks until all 'goto SHX_LABEL_31' can see it
  ::SHX_LABEL_31::
  SHX2_2 = NetworkGetEntityFromNetworkId
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if 0 ~= SHX2_2 then
    SHX3_2 = DoesEntityExist
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      goto SHX_LABEL_43
    end
  end
  SHX3_2 = false
  return SHX3_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_43:: outside nested blocks until all 'goto SHX_LABEL_43' can see it
  ::SHX_LABEL_43::
  SHX3_2 = SHX61_1
  SHX4_2 = SHX2_2
  SHX5_2 = SHX1_2
  return SHX3_2(SHX4_2, SHX5_2)
end
function SHX64_1()
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
  if 0 == SHX0_2 then
    SHX1_2 = nil
    return SHX1_2
  end
  SHX1_2 = GetVehiclePedIsIn
  SHX2_2 = SHX0_2
  SHX3_2 = false
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if 0 ~= SHX1_2 then
    SHX2_2 = GetPedInVehicleSeat
    SHX3_2 = SHX1_2
    SHX4_2 = -1
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if SHX2_2 == SHX0_2 then
      SHX2_2 = GetEntityModel
      SHX3_2 = SHX1_2
      SHX2_2 = SHX2_2(SHX3_2)
      SHX3_2 = SHX10_1
      SHX3_2 = SHX3_2[SHX2_2]
      if SHX3_2 then
        SHX3_2 = "flatbed"
        return SHX3_2
      end
      SHX3_2 = SHX11_1
      SHX3_2 = SHX3_2[SHX2_2]
      if SHX3_2 then
        SHX3_2 = "tow"
        return SHX3_2
      end
      SHX3_2 = nil
      return SHX3_2
    end
  end
  SHX2_2 = GetEntityCoords
  SHX3_2 = SHX0_2
  SHX4_2 = true
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = nil
  SHX4_2 = 38.0
  SHX5_2 = pairs
  SHX6_2 = GetGamePool
  SHX7_2 = "CVehicle"
  SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX6_2(SHX7_2)
  SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
    if 0 ~= SHX10_2 then
      SHX11_2 = DoesEntityExist
      SHX12_2 = SHX10_2
      SHX11_2 = SHX11_2(SHX12_2)
      if SHX11_2 then
        SHX11_2 = IsEntityAVehicle
        SHX12_2 = SHX10_2
        SHX11_2 = SHX11_2(SHX12_2)
        if SHX11_2 then
          SHX11_2 = GetEntityModel
          SHX12_2 = SHX10_2
          SHX11_2 = SHX11_2(SHX12_2)
          SHX12_2 = SHX10_1
          SHX12_2 = SHX12_2[SHX11_2]
          if SHX12_2 then
            SHX12_2 = "flatbed"
            if SHX12_2 then
              goto SHX_LABEL_79
            end
          end
          SHX12_2 = SHX11_1
          SHX12_2 = SHX12_2[SHX11_2]
          if SHX12_2 then
            SHX12_2 = "tow"
            if SHX12_2 then
              goto SHX_LABEL_79
            end
          end
          SHX12_2 = nil
          -- [FIX IF ERROR] Move ::SHX_LABEL_79:: outside nested blocks until all 'goto SHX_LABEL_79' can see it
          ::SHX_LABEL_79::
          if SHX12_2 then
            SHX13_2 = GetEntityCoords
            SHX14_2 = SHX10_2
            SHX15_2 = true
            SHX13_2 = SHX13_2(SHX14_2, SHX15_2)
            SHX13_2 = SHX13_2 - SHX2_2
            SHX13_2 = #SHX13_2
            if SHX4_2 > SHX13_2 then
              SHX4_2 = SHX13_2
              SHX3_2 = SHX12_2
            end
          end
        end
      end
    end
  end
  return SHX3_2
end
function SHX65_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX1_2 = SHX0_2.vehicleNetId
  if SHX1_2 then
    SHX1_2 = tonumber
    SHX2_2 = SHX0_2.vehicleNetId
    SHX1_2 = SHX1_2(SHX2_2)
  end
  if SHX1_2 then
    SHX2_2 = NetworkDoesNetworkIdExist
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      SHX2_2 = NetworkDoesEntityExistWithNetworkId
      SHX3_2 = SHX1_2
      SHX2_2 = SHX2_2(SHX3_2)
      if SHX2_2 then
        goto SHX_LABEL_21
      end
    end
  end
  SHX2_2 = "Drive into the depot, then press ~INPUT_CONTEXT~ on your flatbed to detach the vehicle"
  return SHX2_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_21:: outside nested blocks until all 'goto SHX_LABEL_21' can see it
  ::SHX_LABEL_21::
  SHX2_2 = NetworkGetEntityFromNetworkId
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if 0 ~= SHX2_2 then
    SHX3_2 = DoesEntityExist
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      goto SHX_LABEL_33
    end
  end
  SHX3_2 = "Drive into the depot, then press ~INPUT_CONTEXT~ on your flatbed to detach the vehicle"
  return SHX3_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_33:: outside nested blocks until all 'goto SHX_LABEL_33' can see it
  ::SHX_LABEL_33::
  SHX3_2 = GetEntityAttachedTo
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if 0 ~= SHX3_2 then
    SHX4_2 = DoesEntityExist
    SHX5_2 = SHX3_2
    SHX4_2 = SHX4_2(SHX5_2)
    if SHX4_2 then
      SHX4_2 = IsEntityAVehicle
      SHX5_2 = SHX3_2
      SHX4_2 = SHX4_2(SHX5_2)
      if SHX4_2 then
        SHX4_2 = GetEntityModel
        SHX5_2 = SHX3_2
        SHX4_2 = SHX4_2(SHX5_2)
        SHX5_2 = SHX10_1
        SHX4_2 = SHX5_2[SHX4_2]
        if SHX4_2 then
          SHX4_2 = "Drive into the depot, then press ~INPUT_CONTEXT~ on your flatbed to detach the vehicle"
          return SHX4_2
        end
      end
    end
  end
  SHX4_2 = pairs
  SHX5_2 = GetGamePool
  SHX6_2 = "CVehicle"
  SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX5_2(SHX6_2)
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    if SHX9_2 ~= SHX2_2 and 0 ~= SHX9_2 then
      SHX10_2 = DoesEntityExist
      SHX11_2 = SHX9_2
      SHX10_2 = SHX10_2(SHX11_2)
      if SHX10_2 then
        SHX10_2 = SHX60_1
        SHX11_2 = SHX9_2
        SHX12_2 = SHX2_2
        SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
        if SHX10_2 then
          SHX10_2 = "Drive into the depot, then hold ~INPUT_VEH_HEADLIGHT~ in your tow truck to detach the vehicle"
          return SHX10_2
        end
      end
    end
  end
  SHX4_2 = "Drive into the depot, then press ~INPUT_CONTEXT~ on your flatbed to detach the vehicle"
  return SHX4_2
end
function SHX66_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = SHX15_1
  if SHX0_2 then
    SHX1_2 = SHX0_2.type
    if "breakdown" == SHX1_2 then
      goto SHX_LABEL_13
    end
    SHX1_2 = SHX0_2.type
    if "equipment" == SHX1_2 then
      goto SHX_LABEL_13
    end
  end
  SHX1_2 = false
  SHX12_1 = SHX1_2
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_13:: outside nested blocks until all 'goto SHX_LABEL_13' can see it
  ::SHX_LABEL_13::
  SHX1_2 = SHX63_1
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX12_1
  if SHX1_2 ~= SHX2_2 then
    SHX2_2 = SHX12_1
    SHX12_1 = SHX1_2
    SHX3_2 = SHX57_1
    SHX4_2 = SHX0_2
    SHX3_2(SHX4_2)
    if SHX2_2 and not SHX1_2 then
      SHX3_2 = SHX0_2.vehicleNetId
      if SHX3_2 then
        SHX3_2 = tonumber
        SHX4_2 = SHX0_2.vehicleNetId
        SHX3_2 = SHX3_2(SHX4_2)
      end
      if SHX3_2 then
        SHX4_2 = NetworkDoesNetworkIdExist
        SHX5_2 = SHX3_2
        SHX4_2 = SHX4_2(SHX5_2)
        if SHX4_2 then
          SHX4_2 = NetworkGetEntityFromNetworkId
          SHX5_2 = SHX3_2
          SHX4_2 = SHX4_2(SHX5_2)
          if 0 ~= SHX4_2 then
            SHX5_2 = DoesEntityExist
            SHX6_2 = SHX4_2
            SHX5_2 = SHX5_2(SHX6_2)
            if SHX5_2 then
              SHX5_2 = GetEntityCoords
              SHX6_2 = SHX4_2
              SHX7_2 = true
              SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
              SHX6_2 = SHX2_1
              SHX6_2 = SHX5_2 - SHX6_2
              SHX6_2 = #SHX6_2
              if SHX6_2 < 35.0 then
                SHX6_2 = TriggerServerEvent
                SHX7_2 = "9053b9a3f5"
                SHX8_2 = SHX3_2
                SHX6_2(SHX7_2, SHX8_2)
              end
            end
          end
        end
      end
    end
  end
end
function SHX67_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  if SHX0_2 then
    SHX1_2 = type
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if "table" == SHX1_2 then
      goto SHX_LABEL_10
    end
  end
  SHX1_2 = nil
  SHX2_2 = nil
  return SHX1_2, SHX2_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX1_2 = SHX0_2.type
  if "debris" == SHX1_2 then
    SHX1_2 = type
    SHX2_2 = SHX0_2.anchor
    SHX1_2 = SHX1_2(SHX2_2)
    if "table" == SHX1_2 then
      SHX1_2 = type
      SHX2_2 = SHX0_2.anchor
      SHX2_2 = SHX2_2.x
      SHX1_2 = SHX1_2(SHX2_2)
      if "number" == SHX1_2 then
        SHX1_2 = SHX0_2.mainSecured
        if SHX1_2 then
          SHX1_2 = SHX0_2.debrisDepotComplete
          if true ~= SHX1_2 then
            SHX1_2 = SHX2_1.x
            SHX1_2 = SHX1_2 + 0.0
            SHX2_2 = SHX2_1.y
            SHX2_2 = SHX2_2 + 0.0
            return SHX1_2, SHX2_2
          end
        end
        SHX1_2 = SHX0_2.anchor
        SHX1_2 = SHX1_2.x
        SHX1_2 = SHX1_2 + 0.0
        SHX2_2 = SHX0_2.anchor
        SHX2_2 = SHX2_2.y
        SHX2_2 = SHX2_2 + 0.0
        return SHX1_2, SHX2_2
    end
  end
  else
    SHX1_2 = SHX0_2.type
    if "parts_run" == SHX1_2 then
      SHX1_2 = tonumber
      SHX2_2 = SHX0_2.stage
      SHX1_2 = SHX1_2(SHX2_2)
      if not SHX1_2 then
        SHX1_2 = 1
      end
      if 1 == SHX1_2 or 2 == SHX1_2 then
        SHX2_2 = SHX0_2.pickup
        if SHX2_2 then
          goto SHX_LABEL_64
        end
      end
      SHX2_2 = SHX0_2.dropoff
      -- [FIX IF ERROR] Move ::SHX_LABEL_64:: outside nested blocks until all 'goto SHX_LABEL_64' can see it
      ::SHX_LABEL_64::
      if SHX2_2 then
        SHX3_2 = SHX2_2.x
        if SHX3_2 then
          SHX3_2 = SHX2_2.x
          SHX3_2 = SHX3_2 + 0.0
          SHX4_2 = SHX2_2.y
          SHX4_2 = SHX4_2 + 0.0
          return SHX3_2, SHX4_2
        end
      end
    else
      SHX1_2 = SHX0_2.type
      if "breakdown" ~= SHX1_2 then
        SHX1_2 = SHX0_2.type
        if "equipment" ~= SHX1_2 then
          SHX1_2 = SHX0_2.type
          if "fuel_runout" ~= SHX1_2 then
            goto SHX_LABEL_149
          end
        end
      end
      SHX1_2 = SHX0_2.type
      if "breakdown" ~= SHX1_2 then
        SHX1_2 = SHX0_2.type
        if "equipment" ~= SHX1_2 then
          goto SHX_LABEL_104
        end
      end
      SHX1_2 = SHX63_1
      SHX2_2 = SHX0_2
      SHX1_2 = SHX1_2(SHX2_2)
      if SHX1_2 then
        SHX1_2 = SHX2_1.x
        SHX1_2 = SHX1_2 + 0.0
        SHX2_2 = SHX2_1.y
        SHX2_2 = SHX2_2 + 0.0
        return SHX1_2, SHX2_2
      end
      -- [FIX IF ERROR] Move ::SHX_LABEL_104:: outside nested blocks until all 'goto SHX_LABEL_104' can see it
      ::SHX_LABEL_104::
      SHX1_2 = SHX0_2.vehicleNetId
      if SHX1_2 then
        SHX1_2 = tonumber
        SHX2_2 = SHX0_2.vehicleNetId
        SHX1_2 = SHX1_2(SHX2_2)
      end
      if SHX1_2 then
        SHX2_2 = NetworkDoesNetworkIdExist
        SHX3_2 = SHX1_2
        SHX2_2 = SHX2_2(SHX3_2)
        if SHX2_2 then
          SHX2_2 = NetworkDoesEntityExistWithNetworkId
          SHX3_2 = SHX1_2
          SHX2_2 = SHX2_2(SHX3_2)
          if SHX2_2 then
            SHX2_2 = NetworkGetEntityFromNetworkId
            SHX3_2 = SHX1_2
            SHX2_2 = SHX2_2(SHX3_2)
            if 0 ~= SHX2_2 then
              SHX3_2 = DoesEntityExist
              SHX4_2 = SHX2_2
              SHX3_2 = SHX3_2(SHX4_2)
              if SHX3_2 then
                SHX3_2 = GetEntityCoords
                SHX4_2 = SHX2_2
                SHX5_2 = true
                SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
                SHX4_2 = SHX3_2.x
                SHX5_2 = SHX3_2.y
                return SHX4_2, SHX5_2
              end
            end
          end
        end
      end
      SHX2_2 = SHX0_2.spawnX
      if SHX2_2 then
        SHX2_2 = SHX0_2.spawnX
        SHX2_2 = SHX2_2 + 0.0
        SHX3_2 = SHX0_2.spawnY
        SHX3_2 = SHX3_2 + 0.0
        return SHX2_2, SHX3_2
      end
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_149:: outside nested blocks until all 'goto SHX_LABEL_149' can see it
  ::SHX_LABEL_149::
  SHX1_2 = nil
  SHX2_2 = nil
  return SHX1_2, SHX2_2
end
function SHX68_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = SHX15_1
  SHX1_2 = SHX67_1
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2 = SHX1_2(SHX2_2)
  if SHX1_2 and SHX2_2 then
    SHX3_2 = SHX58_1
    SHX4_2 = SHX1_2
    SHX5_2 = SHX2_2
    SHX3_2(SHX4_2, SHX5_2)
  end
  SHX3_2 = SHX57_1
  SHX4_2 = SHX0_2
  SHX3_2(SHX4_2)
end
function SHX69_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = SHX54_1
  SHX1_2()
  if SHX0_2 then
    SHX1_2 = type
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if "table" == SHX1_2 then
      goto SHX_LABEL_11
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_11:: outside nested blocks until all 'goto SHX_LABEL_11' can see it
  ::SHX_LABEL_11::
  SHX1_2 = SHX0_2.type
  if "debris" == SHX1_2 then
    SHX1_2 = type
    SHX2_2 = SHX0_2.anchor
    SHX1_2 = SHX1_2(SHX2_2)
    if "table" == SHX1_2 then
      SHX1_2 = type
      SHX2_2 = SHX0_2.anchor
      SHX2_2 = SHX2_2.x
      SHX1_2 = SHX1_2(SHX2_2)
      if "number" == SHX1_2 then
        SHX1_2 = SHX0_2.mainSecured
        if SHX1_2 then
          SHX1_2 = SHX0_2.debrisDepotComplete
          if true ~= SHX1_2 then
            SHX1_2 = SHX55_1
            SHX2_2 = SHX2_1.x
            SHX3_2 = SHX2_1.y
            SHX4_2 = SHX2_1.z
            SHX5_2 = 50
            SHX6_2 = 2
            SHX7_2 = "Depot"
            SHX8_2 = SHX3_1
            SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
            SHX1_2 = SHX58_1
            SHX2_2 = SHX2_1.x
            SHX3_2 = SHX2_1.y
            SHX1_2(SHX2_2, SHX3_2)
            return
          end
        end
        SHX1_2 = SHX55_1
        SHX2_2 = SHX0_2.anchor
        SHX2_2 = SHX2_2.x
        SHX3_2 = SHX0_2.anchor
        SHX3_2 = SHX3_2.y
        SHX4_2 = SHX0_2.anchor
        SHX4_2 = SHX4_2.z
        SHX5_2 = 318
        SHX6_2 = 5
        SHX7_2 = "Clear-up"
        SHX8_2 = SHX3_1
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
        SHX1_2 = SHX58_1
        SHX2_2 = SHX0_2.anchor
        SHX2_2 = SHX2_2.x
        SHX3_2 = SHX0_2.anchor
        SHX3_2 = SHX3_2.y
        SHX1_2(SHX2_2, SHX3_2)
    end
  end
  else
    SHX1_2 = SHX0_2.type
    if "parts_run" == SHX1_2 then
      SHX1_2 = tonumber
      SHX2_2 = SHX0_2.stage
      SHX1_2 = SHX1_2(SHX2_2)
      if not SHX1_2 then
        SHX1_2 = 1
      end
      if 1 == SHX1_2 or 2 == SHX1_2 then
        SHX2_2 = SHX0_2.pickup
        if SHX2_2 then
          SHX2_2 = SHX55_1
          SHX3_2 = SHX0_2.pickup
          SHX3_2 = SHX3_2.x
          SHX4_2 = SHX0_2.pickup
          SHX4_2 = SHX4_2.y
          SHX5_2 = SHX0_2.pickup
          SHX5_2 = SHX5_2.z
          SHX6_2 = 478
          SHX7_2 = 2
          SHX8_2 = "Supplier"
          SHX9_2 = SHX3_1
          SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
          SHX2_2 = SHX58_1
          SHX3_2 = SHX0_2.pickup
          SHX3_2 = SHX3_2.x
          SHX4_2 = SHX0_2.pickup
          SHX4_2 = SHX4_2.y
          SHX2_2(SHX3_2, SHX4_2)
      end
      elseif 3 == SHX1_2 or 4 == SHX1_2 then
        SHX2_2 = SHX0_2.dropoff
        if SHX2_2 then
          SHX2_2 = SHX55_1
          SHX3_2 = SHX0_2.dropoff
          SHX3_2 = SHX3_2.x
          SHX4_2 = SHX0_2.dropoff
          SHX4_2 = SHX4_2.y
          SHX5_2 = SHX0_2.dropoff
          SHX5_2 = SHX5_2.z
          SHX6_2 = 478
          SHX7_2 = 2
          SHX8_2 = "Drop-off"
          SHX9_2 = SHX3_1
          SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
          SHX2_2 = SHX58_1
          SHX3_2 = SHX0_2.dropoff
          SHX3_2 = SHX3_2.x
          SHX4_2 = SHX0_2.dropoff
          SHX4_2 = SHX4_2.y
          SHX2_2(SHX3_2, SHX4_2)
        end
      end
    else
      SHX1_2 = SHX0_2.type
      if "breakdown" ~= SHX1_2 then
        SHX1_2 = SHX0_2.type
        if "equipment" ~= SHX1_2 then
          SHX1_2 = SHX0_2.type
          if "fuel_runout" ~= SHX1_2 then
            goto SHX_LABEL_236
          end
        end
      end
      SHX1_2 = SHX0_2.vehicleNetId
      if SHX1_2 then
        SHX1_2 = tonumber
        SHX2_2 = SHX0_2.vehicleNetId
        SHX1_2 = SHX1_2(SHX2_2)
      end
      if SHX1_2 then
        SHX2_2 = NetworkDoesNetworkIdExist
        SHX3_2 = SHX1_2
        SHX2_2 = SHX2_2(SHX3_2)
        if SHX2_2 then
          SHX2_2 = NetworkDoesEntityExistWithNetworkId
          SHX3_2 = SHX1_2
          SHX2_2 = SHX2_2(SHX3_2)
          if SHX2_2 then
            SHX2_2 = NetworkGetEntityFromNetworkId
            SHX3_2 = SHX1_2
            SHX2_2 = SHX2_2(SHX3_2)
            if 0 == SHX2_2 then
              goto SHX_LABEL_236
            end
            SHX3_2 = DoesEntityExist
            SHX4_2 = SHX2_2
            SHX3_2 = SHX3_2(SHX4_2)
            if not SHX3_2 then
              goto SHX_LABEL_236
            end
            SHX3_2 = SHX0_2.type
            if "breakdown" ~= SHX3_2 then
              SHX3_2 = SHX0_2.type
              if "equipment" ~= SHX3_2 then
                goto SHX_LABEL_187
              end
            end
            SHX3_2 = SHX63_1
            SHX4_2 = SHX0_2
            SHX3_2 = SHX3_2(SHX4_2)
            if SHX3_2 then
              SHX3_2 = SHX55_1
              SHX4_2 = SHX2_1.x
              SHX5_2 = SHX2_1.y
              SHX6_2 = SHX2_1.z
              SHX7_2 = 50
              SHX8_2 = 2
              SHX9_2 = "Yard"
              SHX10_2 = SHX3_1
              SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
              SHX3_2 = SHX58_1
              SHX4_2 = SHX2_1.x
              SHX5_2 = SHX2_1.y
              SHX3_2(SHX4_2, SHX5_2)
              return
            end
            -- [FIX IF ERROR] Move ::SHX_LABEL_187:: outside nested blocks until all 'goto SHX_LABEL_187' can see it
            ::SHX_LABEL_187::
            SHX3_2 = SHX56_1
            SHX4_2 = SHX2_2
            SHX5_2 = 402
            SHX6_2 = 5
            SHX7_2 = "Callout"
            SHX8_2 = SHX3_1
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
            SHX3_2 = SHX0_2.type
            if "breakdown" ~= SHX3_2 then
              SHX3_2 = SHX0_2.type
              if "equipment" ~= SHX3_2 then
                goto SHX_LABEL_211
              end
            end
            SHX3_2 = SHX55_1
            SHX4_2 = SHX2_1.x
            SHX5_2 = SHX2_1.y
            SHX6_2 = SHX2_1.z
            SHX7_2 = 50
            SHX8_2 = 2
            SHX9_2 = "Depot yard"
            SHX10_2 = SHX3_1
            SHX10_2 = SHX10_2 * 0.92
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
            -- [FIX IF ERROR] Move ::SHX_LABEL_211:: outside nested blocks until all 'goto SHX_LABEL_211' can see it
            ::SHX_LABEL_211::
            SHX3_2 = GetEntityCoords
            SHX4_2 = SHX2_2
            SHX5_2 = true
            SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
            SHX4_2 = SHX58_1
            SHX5_2 = SHX3_2.x
            SHX6_2 = SHX3_2.y
            SHX4_2(SHX5_2, SHX6_2)
        end
      end
      else
        SHX2_2 = SHX0_2.spawnX
        if SHX2_2 then
          SHX2_2 = SHX55_1
          SHX3_2 = SHX0_2.spawnX
          SHX4_2 = SHX0_2.spawnY
          SHX5_2 = SHX0_2.spawnZ
          SHX6_2 = 402
          SHX7_2 = 5
          SHX8_2 = "Callout"
          SHX9_2 = SHX3_1
          SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
          SHX2_2 = SHX58_1
          SHX3_2 = SHX0_2.spawnX
          SHX4_2 = SHX0_2.spawnY
          SHX2_2(SHX3_2, SHX4_2)
        end
      end
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_236:: outside nested blocks until all 'goto SHX_LABEL_236' can see it
  ::SHX_LABEL_236::
end
SHX57_1 = SHX69_1
SHX69_1 = AddStateBagChangeHandler
SHX70_1 = "towVehicle"
SHX71_1 = nil
function SHX72_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX3_2 = SHX15_1
  if not SHX3_2 then
    return
  end
  SHX4_2 = SHX3_2.type
  if "breakdown" ~= SHX4_2 then
    SHX4_2 = SHX3_2.type
    if "equipment" ~= SHX4_2 then
      return
    end
  end
  SHX4_2 = tonumber
  SHX5_2 = SHX3_2.vehicleNetId
  SHX4_2 = SHX4_2(SHX5_2)
  if not SHX4_2 then
    return
  end
  if SHX2_2 then
    SHX5_2 = tonumber
    SHX6_2 = SHX2_2.targetNetId
    SHX5_2 = SHX5_2(SHX6_2)
    if SHX5_2 == SHX4_2 then
      SHX5_2 = SHX12_1
      if not SHX5_2 then
        SHX5_2 = true
        SHX12_1 = SHX5_2
        SHX5_2 = SHX57_1
        SHX6_2 = SHX3_2
        SHX5_2(SHX6_2)
      end
    end
  end
end
SHX69_1(SHX70_1, SHX71_1, SHX72_1)
function SHX69_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  if SHX0_2 then
    SHX1_2 = type
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if "table" == SHX1_2 then
      goto SHX_LABEL_11
    end
  end
  SHX1_2 = nil
  SHX14_1 = SHX1_2
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_11:: outside nested blocks until all 'goto SHX_LABEL_11' can see it
  ::SHX_LABEL_11::
  SHX1_2 = SHX0_2.vehicleNetId
  if SHX1_2 then
    SHX1_2 = nil
    SHX14_1 = SHX1_2
    return
  end
  SHX1_2 = SHX0_2.type
  if "breakdown" ~= SHX1_2 then
    SHX1_2 = SHX0_2.type
    if "equipment" ~= SHX1_2 then
      SHX1_2 = SHX0_2.type
      if "fuel_runout" ~= SHX1_2 then
        goto SHX_LABEL_109
      end
    end
  end
  SHX1_2 = SHX0_2.spawnX
  if SHX1_2 then
    SHX1_2 = SHX0_2.contractId
    if SHX1_2 then
      SHX1_2 = SHX0_2.modelName
      if SHX1_2 then
        SHX1_2 = nil
        SHX2_2 = nil
        SHX3_2 = SHX0_2.type
        if "breakdown" == SHX3_2 then
          SHX3_2 = tonumber
          SHX4_2 = SHX0_1.missionVehicleEngineHealth
          SHX3_2 = SHX3_2(SHX4_2)
          SHX1_2 = SHX3_2 or SHX1_2
          if not SHX3_2 then
            SHX1_2 = 150.0
          end
          SHX3_2 = tonumber
          SHX4_2 = SHX0_1.missionVehicleBodyHealth
          SHX3_2 = SHX3_2(SHX4_2)
          SHX2_2 = SHX3_2 or SHX2_2
          if not SHX3_2 then
            SHX2_2 = 250.0
          end
        else
          SHX3_2 = SHX0_2.type
          if "equipment" == SHX3_2 then
            SHX3_2 = tonumber
            SHX4_2 = SHX0_1.missionVehicleEngineHealth
            SHX3_2 = SHX3_2(SHX4_2)
            SHX1_2 = SHX3_2 or SHX1_2
            if not SHX3_2 then
              SHX1_2 = 150.0
            end
            SHX3_2 = tonumber
            SHX4_2 = SHX0_1.missionVehicleBodyHealth
            SHX3_2 = SHX3_2(SHX4_2)
            SHX2_2 = SHX3_2 or SHX2_2
            if not SHX3_2 then
              SHX2_2 = 250.0
            end
          else
            SHX3_2 = tonumber
            SHX4_2 = SHX0_1.fuelMissionEngineHealth
            SHX3_2 = SHX3_2(SHX4_2)
            SHX1_2 = SHX3_2 or SHX1_2
            if not SHX3_2 then
              SHX1_2 = 900.0
            end
            SHX3_2 = tonumber
            SHX4_2 = SHX0_1.fuelMissionBodyHealth
            SHX3_2 = SHX3_2(SHX4_2)
            SHX2_2 = SHX3_2 or SHX2_2
            if not SHX3_2 then
              SHX2_2 = 950.0
            end
          end
        end
        SHX3_2 = {}
        SHX4_2 = SHX0_2.contractId
        SHX3_2.contractId = SHX4_2
        SHX4_2 = SHX0_2.modelName
        SHX3_2.modelName = SHX4_2
        SHX4_2 = SHX0_2.spawnX
        SHX3_2.x = SHX4_2
        SHX4_2 = SHX0_2.spawnY
        SHX3_2.y = SHX4_2
        SHX4_2 = SHX0_2.spawnZ
        SHX3_2.z = SHX4_2
        SHX4_2 = SHX0_2.spawnW
        if not SHX4_2 then
          SHX4_2 = 0.0
        end
        SHX3_2.w = SHX4_2
        SHX3_2.engineHealth = SHX1_2
        SHX3_2.bodyHealth = SHX2_2
        SHX4_2 = tonumber
        SHX5_2 = SHX0_1.vehicleSpawnNearMeters
        SHX4_2 = SHX4_2(SHX5_2)
        if not SHX4_2 then
          SHX4_2 = 110.0
        end
        SHX3_2.spawnNearMeters = SHX4_2
        SHX4_2 = SHX0_2.type
        SHX3_2.jobKind = SHX4_2
        SHX14_1 = SHX3_2
      end
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_109:: outside nested blocks until all 'goto SHX_LABEL_109' can see it
  ::SHX_LABEL_109::
end
SHX70_1 = RegisterNetEvent
SHX71_1 = "35ef91c369"
function SHX72_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = type
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if "table" == SHX1_2 then
    SHX1_2 = SHX0_2.contract
    SHX15_1 = SHX1_2
    SHX1_2 = SHX15_1
    if SHX1_2 then
      SHX1_2 = SHX15_1.type
      if "debris" == SHX1_2 then
        goto SHX_LABEL_16
      end
    end
    SHX1_2 = SHX41_1
    SHX1_2()
    -- [FIX IF ERROR] Move ::SHX_LABEL_16:: outside nested blocks until all 'goto SHX_LABEL_16' can see it
    ::SHX_LABEL_16::
    SHX1_2 = SHX57_1
    SHX2_2 = SHX15_1
    SHX1_2(SHX2_2)
    SHX1_2 = SHX15_1
    if SHX1_2 then
      SHX1_2 = SHX15_1.vehicleNetId
      if not SHX1_2 then
        SHX1_2 = SHX69_1
        SHX2_2 = SHX15_1
        SHX1_2(SHX2_2)
    end
    else
      SHX1_2 = SHX15_1
      if SHX1_2 then
        SHX1_2 = SHX15_1.vehicleNetId
        if SHX1_2 then
          SHX1_2 = nil
          SHX14_1 = SHX1_2
      end
      else
        SHX1_2 = SHX15_1
        if not SHX1_2 then
          SHX1_2 = nil
          SHX14_1 = SHX1_2
        end
      end
    end
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.uiSendMessage
  SHX2_2 = {}
  SHX2_2.type = "MECHANIC_SYNC"
  SHX3_2 = SHX0_2 or SHX3_2
  if not SHX0_2 then
    SHX3_2 = {}
  end
  SHX2_2.payload = SHX3_2
  SHX1_2(SHX2_2)
end
SHX70_1(SHX71_1, SHX72_1)
SHX70_1 = RegisterNetEvent
SHX71_1 = "31a7475ed5"
function SHX72_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = type
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if "table" == SHX1_2 then
    SHX1_2 = SHX0_2.modelName
    if SHX1_2 then
      SHX1_2 = SHX0_2.contractId
      if SHX1_2 then
        goto SHX_LABEL_13
      end
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_13:: outside nested blocks until all 'goto SHX_LABEL_13' can see it
  ::SHX_LABEL_13::
  SHX14_1 = SHX0_2
  SHX1_2 = SHX0_2.x
  if SHX1_2 then
    SHX1_2 = SHX0_2.y
    if SHX1_2 then
      SHX1_2 = SHX58_1
      SHX2_2 = SHX0_2.x
      SHX3_2 = SHX0_2.y
      SHX1_2(SHX2_2, SHX3_2)
    end
  end
end
SHX70_1(SHX71_1, SHX72_1)
function SHX70_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = SHX14_1
  if SHX0_2 then
    SHX1_2 = SHX0_2.contractId
    if SHX1_2 then
      SHX1_2 = SHX0_2.modelName
      if SHX1_2 then
        goto SHX_LABEL_11
      end
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_11:: outside nested blocks until all 'goto SHX_LABEL_11' can see it
  ::SHX_LABEL_11::
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.requestEntitySpawn
  SHX2_2 = "mechanic_contract_vehicle"
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.spawnVehicle
  SHX2_2 = SHX0_2.modelName
  SHX3_2 = SHX0_2.x
  SHX4_2 = SHX0_2.y
  SHX5_2 = SHX0_2.z
  SHX6_2 = SHX0_2.w
  if not SHX6_2 then
    SHX6_2 = 0.0
  end
  SHX7_2 = false
  SHX8_2 = true
  SHX9_2 = true
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  if SHX1_2 and 0 ~= SHX1_2 then
    SHX2_2 = DoesEntityExist
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      goto SHX_LABEL_44
    end
  end
  SHX2_2 = TriggerServerEvent
  SHX3_2 = "516e22ccad"
  SHX2_2(SHX3_2)
  SHX2_2 = nil
  SHX14_1 = SHX2_2
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_44:: outside nested blocks until all 'goto SHX_LABEL_44' can see it
  ::SHX_LABEL_44::
  SHX2_2 = SetEntityHeading
  SHX3_2 = SHX1_2
  SHX4_2 = SHX0_2.w
  if not SHX4_2 then
    SHX4_2 = 0.0
  end
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = tonumber
  SHX3_2 = SHX0_2.engineHealth
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = tonumber
  SHX4_2 = SHX0_2.bodyHealth
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX2_2 then
    SHX4_2 = SetVehicleEngineHealth
    SHX5_2 = SHX1_2
    SHX6_2 = SHX2_2 + 0.0
    SHX4_2(SHX5_2, SHX6_2)
  end
  if SHX3_2 then
    SHX4_2 = SetVehicleBodyHealth
    SHX5_2 = SHX1_2
    SHX6_2 = SHX3_2 + 0.0
    SHX4_2(SHX5_2, SHX6_2)
  end
  SHX4_2 = SetVehiclePetrolTankHealth
  SHX5_2 = SHX1_2
  SHX6_2 = 400.0
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SHX0_2.jobKind
  if "fuel_runout" == SHX4_2 then
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.setVehicleFuel
    if SHX4_2 then
      SHX4_2 = CMG
      SHX4_2 = SHX4_2.setVehicleFuel
      SHX5_2 = SHX1_2
      SHX6_2 = 3.0
      SHX4_2(SHX5_2, SHX6_2)
    else
      SHX4_2 = SetVehicleFuelLevel
      SHX5_2 = SHX1_2
      SHX6_2 = 3.0
      SHX4_2(SHX5_2, SHX6_2)
    end
  end
  SHX4_2 = NetworkGetNetworkIdFromEntity
  SHX5_2 = SHX1_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = TriggerServerEvent
  SHX6_2 = "65a26e05a8"
  SHX7_2 = SHX4_2
  SHX8_2 = SHX0_2.contractId
  SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = nil
  SHX14_1 = SHX5_2
  SHX5_2 = SHX54_1
  SHX5_2()
end
SHX71_1 = Citizen
SHX71_1 = SHX71_1.CreateThread
function SHX72_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  while true do
    SHX0_2 = 1500
    SHX1_2 = SHX14_1
    if SHX1_2 then
      SHX1_2 = SHX14_1.x
      if SHX1_2 then
        SHX0_2 = 400
        SHX1_2 = PlayerPedId
        SHX1_2 = SHX1_2()
        SHX2_2 = GetEntityCoords
        SHX3_2 = SHX1_2
        SHX4_2 = true
        SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
        SHX3_2 = tonumber
        SHX4_2 = SHX14_1.spawnNearMeters
        SHX3_2 = SHX3_2(SHX4_2)
        if not SHX3_2 then
          SHX3_2 = 110.0
        end
        SHX4_2 = vector3
        SHX5_2 = SHX14_1.x
        SHX5_2 = SHX5_2 + 0.0
        SHX6_2 = SHX14_1.y
        SHX6_2 = SHX6_2 + 0.0
        SHX7_2 = SHX14_1.z
        SHX7_2 = SHX7_2 + 0.0
        SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
        SHX4_2 = SHX2_2 - SHX4_2
        SHX4_2 = #SHX4_2
        if SHX3_2 >= SHX4_2 then
          SHX4_2 = SHX70_1
          SHX4_2()
        end
      end
    end
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = SHX0_2
    SHX1_2(SHX2_2)
  end
end
SHX71_1(SHX72_1)
SHX71_1 = Citizen
SHX71_1 = SHX71_1.CreateThread
function SHX72_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  while true do
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 400
    SHX0_2(SHX1_2)
    SHX0_2 = SHX66_1
    SHX0_2()
  end
end
SHX71_1(SHX72_1)
SHX71_1 = Citizen
SHX71_1 = SHX71_1.CreateThread
function SHX72_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2
  while true do
    SHX0_2 = SHX15_1
    SHX1_2 = 1500
    if SHX0_2 then
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.hasClientPermission
      SHX3_2 = "aa.onduty.permission"
      SHX2_2 = SHX2_2(SHX3_2)
      if SHX2_2 then
        SHX2_2 = nil
        SHX3_2 = nil
        SHX4_2 = nil
        SHX5_2 = SHX0_2.type
        if "breakdown" ~= SHX5_2 then
          SHX5_2 = SHX0_2.type
          if "equipment" ~= SHX5_2 then
            SHX5_2 = SHX0_2.type
            if "fuel_runout" ~= SHX5_2 then
              goto SHX_LABEL_87
            end
          end
        end
        SHX5_2 = SHX0_2.vehicleNetId
        if SHX5_2 then
          SHX5_2 = tonumber
          SHX6_2 = SHX0_2.vehicleNetId
          SHX5_2 = SHX5_2(SHX6_2)
        end
        if SHX5_2 then
          SHX6_2 = NetworkDoesNetworkIdExist
          SHX7_2 = SHX5_2
          SHX6_2 = SHX6_2(SHX7_2)
          if SHX6_2 then
            SHX6_2 = NetworkDoesEntityExistWithNetworkId
            SHX7_2 = SHX5_2
            SHX6_2 = SHX6_2(SHX7_2)
            if SHX6_2 then
              SHX6_2 = NetworkGetEntityFromNetworkId
              SHX7_2 = SHX5_2
              SHX6_2 = SHX6_2(SHX7_2)
              if 0 == SHX6_2 then
                goto SHX_LABEL_87
              end
              SHX7_2 = DoesEntityExist
              SHX8_2 = SHX6_2
              SHX7_2 = SHX7_2(SHX8_2)
              if not SHX7_2 then
                goto SHX_LABEL_87
              end
              SHX7_2 = SHX0_2.type
              if "breakdown" ~= SHX7_2 then
                SHX7_2 = SHX0_2.type
                if "equipment" ~= SHX7_2 then
                  goto SHX_LABEL_65
                end
              end
              SHX7_2 = SHX63_1
              SHX8_2 = SHX0_2
              SHX7_2 = SHX7_2(SHX8_2)
              if SHX7_2 then
                SHX7_2 = nil
                SHX8_2 = nil
                SHX4_2 = nil
                SHX3_2 = SHX8_2
                SHX2_2 = SHX7_2
              else
                -- [FIX IF ERROR] Move ::SHX_LABEL_65:: outside nested blocks until all 'goto SHX_LABEL_65' can see it
                ::SHX_LABEL_65::
                SHX7_2 = GetEntityCoords
                SHX8_2 = SHX6_2
                SHX9_2 = true
                SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
                SHX8_2 = SHX7_2.x
                SHX9_2 = SHX7_2.y
                SHX4_2 = SHX7_2.z
                SHX3_2 = SHX9_2
                SHX2_2 = SHX8_2
              end
          end
        end
        else
          SHX6_2 = SHX0_2.spawnX
          if SHX6_2 then
            SHX6_2 = SHX0_2.spawnX
            SHX2_2 = SHX6_2 + 0.0
            SHX6_2 = SHX0_2.spawnY
            SHX3_2 = SHX6_2 + 0.0
            SHX6_2 = SHX0_2.spawnZ
            SHX4_2 = SHX6_2 + 0.0
          end
        end
        -- [FIX IF ERROR] Move ::SHX_LABEL_87:: outside nested blocks until all 'goto SHX_LABEL_87' can see it
        ::SHX_LABEL_87::
        if SHX2_2 then
          SHX5_2 = PlayerPedId
          SHX5_2 = SHX5_2()
          SHX6_2 = GetEntityCoords
          SHX7_2 = SHX5_2
          SHX8_2 = true
          SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
          SHX7_2 = vector3
          SHX8_2 = SHX2_2 + 0.0
          SHX9_2 = SHX3_2 + 0.0
          SHX10_2 = SHX4_2 + 0.0
          SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
          SHX7_2 = SHX6_2 - SHX7_2
          SHX7_2 = #SHX7_2
          SHX8_2 = SHX4_1
          if SHX7_2 < SHX8_2 then
            SHX1_2 = 0
            SHX8_2 = DrawMarker
            SHX9_2 = 1
            SHX10_2 = SHX2_2 + 0.0
            SHX11_2 = SHX3_2 + 0.0
            SHX12_2 = SHX4_2 - 1.0
            SHX13_2 = 0.0
            SHX14_2 = 0.0
            SHX15_2 = 0.0
            SHX16_2 = 0.0
            SHX17_2 = 0.0
            SHX18_2 = 0.0
            SHX19_2 = SHX5_1
            SHX20_2 = SHX5_1
            SHX21_2 = SHX6_1
            SHX22_2 = 255
            SHX23_2 = 210
            SHX24_2 = 72
            SHX25_2 = 150
            SHX26_2 = false
            SHX27_2 = false
            SHX28_2 = 2
            SHX29_2 = false
            SHX30_2 = nil
            SHX31_2 = nil
            SHX32_2 = false
            SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2)
            if SHX7_2 < 22.0 then
              SHX8_2 = SHX0_2.type
              if "breakdown" ~= SHX8_2 then
                SHX8_2 = SHX0_2.type
                if "equipment" ~= SHX8_2 then
                  goto SHX_LABEL_168
                end
              end
              SHX8_2 = SHX63_1
              SHX9_2 = SHX0_2
              SHX8_2 = SHX8_2(SHX9_2)
              if not SHX8_2 then
                SHX8_2 = SHX64_1
                SHX8_2 = SHX8_2()
                if "tow" == SHX8_2 then
                  SHX9_2 = SHX40_1
                  SHX10_2 = "Use ~INPUT_VEH_FLY_PITCH_DOWN_ONLY~ to lower the tow hook, ~INPUT_VEH_FLY_PITCH_UP_ONLY~ to raise."
                  SHX9_2(SHX10_2)
                elseif "flatbed" == SHX8_2 then
                  SHX9_2 = SHX40_1
                  SHX10_2 = "Press ~INPUT_CONTEXT~ on the target vehicle to attach it to your flatbed"
                  SHX9_2(SHX10_2)
                else
                  SHX9_2 = SHX40_1
                  SHX10_2 = "~y~Flatbed:~w~ ~INPUT_CONTEXT~ on the vehicle. ~y~Tow truck:~w~ ~INPUT_VEH_FLY_PITCH_DOWN_ONLY~ / ~INPUT_VEH_FLY_PITCH_UP_ONLY~ for the hook, then reverse to attach"
                  SHX9_2(SHX10_2)
                end
              end
            end
          end
        end
      end
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_168:: outside nested blocks until all 'goto SHX_LABEL_168' can see it
    ::SHX_LABEL_168::
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = SHX1_2
    SHX2_2(SHX3_2)
  end
end
SHX71_1(SHX72_1)
SHX71_1 = Citizen
SHX71_1 = SHX71_1.CreateThread
function SHX72_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2
  while true do
    SHX0_2 = SHX15_1
    SHX1_2 = 1200
    if SHX0_2 then
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.hasClientPermission
      SHX3_2 = "aa.onduty.permission"
      SHX2_2 = SHX2_2(SHX3_2)
      if SHX2_2 then
        SHX2_2 = SHX62_1
        SHX3_2 = SHX0_2
        SHX2_2 = SHX2_2(SHX3_2)
        if SHX2_2 then
          SHX2_2 = SHX2_1.x
          SHX2_2 = SHX2_2 + 0.0
          SHX3_2 = SHX2_1.y
          SHX3_2 = SHX3_2 + 0.0
          SHX4_2 = SHX2_1.z
          SHX4_2 = SHX4_2 + 0.0
          SHX5_2 = PlayerPedId
          SHX5_2 = SHX5_2()
          SHX6_2 = GetEntityCoords
          SHX7_2 = SHX5_2
          SHX8_2 = true
          SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
          SHX7_2 = GetGroundZFor_3dCoord
          SHX8_2 = SHX2_2
          SHX9_2 = SHX3_2
          SHX10_2 = SHX4_2 + 80.0
          SHX11_2 = 0.0
          SHX12_2 = false
          SHX7_2, SHX8_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
          if SHX8_2 and SHX8_2 > 0.0 then
            SHX9_2 = SHX8_2 + 0.12
            if SHX9_2 then
              goto SHX_LABEL_48
            end
          end
          SHX9_2 = SHX4_2
          -- [FIX IF ERROR] Move ::SHX_LABEL_48:: outside nested blocks until all 'goto SHX_LABEL_48' can see it
          ::SHX_LABEL_48::
          SHX10_2 = vector3
          SHX11_2 = SHX2_2
          SHX12_2 = SHX3_2
          SHX13_2 = SHX9_2
          SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
          SHX10_2 = SHX6_2 - SHX10_2
          SHX10_2 = #SHX10_2
          SHX11_2 = SHX4_1
          if SHX10_2 < SHX11_2 then
            SHX1_2 = 0
            SHX11_2 = DrawMarker
            SHX12_2 = 1
            SHX13_2 = SHX2_2
            SHX14_2 = SHX3_2
            SHX15_2 = SHX9_2 - 0.35
            SHX16_2 = 0.0
            SHX17_2 = 0.0
            SHX18_2 = 0.0
            SHX19_2 = 0.0
            SHX20_2 = 0.0
            SHX21_2 = 0.0
            SHX22_2 = SHX7_1
            SHX23_2 = SHX7_1
            SHX24_2 = SHX8_1
            SHX25_2 = 72
            SHX26_2 = 255
            SHX27_2 = 140
            SHX28_2 = 195
            SHX29_2 = false
            SHX30_2 = false
            SHX31_2 = 2
            SHX32_2 = false
            SHX33_2 = nil
            SHX34_2 = nil
            SHX35_2 = false
            SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2)
          end
          SHX11_2 = SHX63_1
          SHX12_2 = SHX0_2
          SHX11_2 = SHX11_2(SHX12_2)
          if SHX11_2 then
            SHX11_2 = SHX9_1
            if SHX10_2 < SHX11_2 then
              SHX1_2 = 0
              SHX11_2 = SHX40_1
              SHX12_2 = SHX65_1
              SHX13_2 = SHX0_2
              SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2 = SHX12_2(SHX13_2)
              SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2)
            end
          end
        end
      end
    end
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = SHX1_2
    SHX2_2(SHX3_2)
  end
end
SHX71_1(SHX72_1)
SHX71_1 = Citizen
SHX71_1 = SHX71_1.CreateThread
function SHX72_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  while true do
    SHX0_2 = SHX15_1
    if SHX0_2 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.hasClientPermission
      SHX2_2 = "aa.onduty.permission"
      SHX1_2 = SHX1_2(SHX2_2)
      if SHX1_2 then
        SHX1_2 = SHX37_1
        SHX2_2 = SHX0_2
        SHX1_2(SHX2_2)
        SHX1_2 = Citizen
        SHX1_2 = SHX1_2.Wait
        SHX2_2 = 0
        SHX1_2(SHX2_2)
    end
    else
      SHX1_2 = SHX36_1
      SHX1_2()
      SHX1_2 = Citizen
      SHX1_2 = SHX1_2.Wait
      SHX2_2 = 1200
      SHX1_2(SHX2_2)
    end
  end
end
SHX71_1(SHX72_1)
function SHX71_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = GetVehiclePedIsIn
  SHX2_2 = SHX0_2
  SHX3_2 = false
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if 0 ~= SHX1_2 then
    SHX2_2 = GetPedInVehicleSeat
    SHX3_2 = SHX1_2
    SHX4_2 = -1
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if SHX2_2 == SHX0_2 then
      SHX2_2 = GetEntityModel
      SHX3_2 = SHX1_2
      SHX2_2 = SHX2_2(SHX3_2)
      SHX3_2 = SHX10_1
      SHX2_2 = SHX3_2[SHX2_2]
      if SHX2_2 then
        return SHX1_2
      end
    end
  end
  SHX2_2 = 0
  return SHX2_2
end
function SHX72_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = GetEntityCoords
  SHX3_2 = SHX1_2
  SHX4_2 = true
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = 0
  SHX4_2 = SHX0_2 + 0.01
  SHX5_2 = pairs
  SHX6_2 = GetGamePool
  SHX7_2 = "CVehicle"
  SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX6_2(SHX7_2)
  SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
    if 0 ~= SHX10_2 then
      SHX11_2 = DoesEntityExist
      SHX12_2 = SHX10_2
      SHX11_2 = SHX11_2(SHX12_2)
      if SHX11_2 then
        SHX11_2 = GetEntityModel
        SHX12_2 = SHX10_2
        SHX11_2 = SHX11_2(SHX12_2)
        SHX12_2 = SHX10_1
        SHX11_2 = SHX12_2[SHX11_2]
        if SHX11_2 then
          SHX11_2 = GetOffsetFromEntityInWorldCoords
          SHX12_2 = SHX10_2
          SHX13_2 = 0.0
          SHX14_2 = -3.85
          SHX15_2 = 0.55
          SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2)
          SHX12_2 = SHX2_2 - SHX11_2
          SHX12_2 = #SHX12_2
          if SHX4_2 > SHX12_2 then
            SHX4_2 = SHX12_2
            SHX3_2 = SHX10_2
          end
        end
      end
    end
  end
  SHX5_2 = SHX3_2
  SHX6_2 = SHX4_2
  return SHX5_2, SHX6_2
end
function SHX73_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = GetEntityCoords
  SHX3_2 = SHX1_2
  SHX4_2 = true
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = 0
  SHX4_2 = SHX0_2 + 0.01
  SHX5_2 = pairs
  SHX6_2 = GetGamePool
  SHX7_2 = "CVehicle"
  SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX6_2(SHX7_2)
  SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
    if 0 ~= SHX10_2 then
      SHX11_2 = DoesEntityExist
      SHX12_2 = SHX10_2
      SHX11_2 = SHX11_2(SHX12_2)
      if SHX11_2 then
        SHX11_2 = IsEntityAVehicle
        SHX12_2 = SHX10_2
        SHX11_2 = SHX11_2(SHX12_2)
        if SHX11_2 then
          SHX11_2 = GetOffsetFromEntityInWorldCoords
          SHX12_2 = SHX10_2
          SHX13_2 = 0.0
          SHX14_2 = -3.25
          SHX15_2 = 0.55
          SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2)
          SHX12_2 = SHX2_2 - SHX11_2
          SHX12_2 = #SHX12_2
          if SHX4_2 > SHX12_2 then
            SHX4_2 = SHX12_2
            SHX3_2 = SHX10_2
          end
        end
      end
    end
  end
  SHX5_2 = SHX3_2
  SHX6_2 = SHX4_2
  return SHX5_2, SHX6_2
end
SHX74_1 = Citizen
SHX74_1 = SHX74_1.CreateThread
function SHX75_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2
  while true do
    SHX0_2 = SHX15_1
    if SHX0_2 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.hasClientPermission
      SHX2_2 = "aa.onduty.permission"
      SHX1_2 = SHX1_2(SHX2_2)
      if SHX1_2 then
        goto SHX_LABEL_19
      end
    end
    if not SHX0_2 then
      SHX1_2 = nil
      SHX24_1 = SHX1_2
    end
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = 1200
    SHX1_2(SHX2_2)
    goto SHX_LABEL_866
    -- [FIX IF ERROR] Move ::SHX_LABEL_19:: outside nested blocks until all 'goto SHX_LABEL_19' can see it
    ::SHX_LABEL_19::
    SHX1_2 = SHX0_2.type
    if "debris" ~= SHX1_2 then
      SHX1_2 = nil
      SHX24_1 = SHX1_2
    end
    SHX1_2 = PlayerPedId
    SHX1_2 = SHX1_2()
    SHX2_2 = GetEntityCoords
    SHX3_2 = SHX1_2
    SHX4_2 = true
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    SHX3_2 = 600
    SHX4_2 = SHX0_2.type
    if "debris" == SHX4_2 then
      SHX4_2 = type
      SHX5_2 = SHX0_2.anchor
      SHX4_2 = SHX4_2(SHX5_2)
      if "table" == SHX4_2 then
        SHX4_2 = type
        SHX5_2 = SHX0_2.anchor
        SHX5_2 = SHX5_2.x
        SHX4_2 = SHX4_2(SHX5_2)
        if "number" == SHX4_2 then
          SHX4_2 = SHX0_2.mainSecured
          if not SHX4_2 then
            SHX4_2 = SHX0_2.anchor
            SHX4_2 = SHX4_2.x
            SHX4_2 = SHX4_2 + 0.0
            SHX5_2 = SHX0_2.anchor
            SHX5_2 = SHX5_2.y
            SHX5_2 = SHX5_2 + 0.0
            SHX6_2 = SHX0_2.anchor
            SHX6_2 = SHX6_2.z
            SHX6_2 = SHX6_2 + 0.0
            SHX7_2 = vector3
            SHX8_2 = SHX4_2
            SHX9_2 = SHX5_2
            SHX10_2 = SHX6_2
            SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
            SHX7_2 = SHX2_2 - SHX7_2
            SHX7_2 = #SHX7_2
            if SHX7_2 < 42.0 then
              SHX3_2 = 0
              SHX8_2 = DrawMarker
              SHX9_2 = 1
              SHX10_2 = SHX4_2
              SHX11_2 = SHX5_2
              SHX12_2 = SHX6_2 - 1.0
              SHX13_2 = 0.0
              SHX14_2 = 0.0
              SHX15_2 = 0.0
              SHX16_2 = 0.0
              SHX17_2 = 0.0
              SHX18_2 = 0.0
              SHX19_2 = 3.2
              SHX20_2 = 3.2
              SHX21_2 = 1.1
              SHX22_2 = 200
              SHX23_2 = 200
              SHX24_2 = 80
              SHX25_2 = 110
              SHX26_2 = false
              SHX27_2 = false
              SHX28_2 = 2
              SHX29_2 = false
              SHX30_2 = nil
              SHX31_2 = nil
              SHX32_2 = false
              SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2)
            end
            SHX8_2 = tonumber
            SHX9_2 = SHX0_2.carryingSecondarySlot
            SHX8_2 = SHX8_2(SHX9_2)
            if SHX8_2 then
              SHX9_2 = SHX72_1
              SHX10_2 = 5.5
              SHX9_2, SHX10_2 = SHX9_2(SHX10_2)
              if 0 ~= SHX9_2 then
                SHX11_2 = GetVehiclePedIsIn
                SHX12_2 = SHX1_2
                SHX13_2 = false
                SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
                if 0 == SHX11_2 then
                  SHX3_2 = 0
                  SHX11_2 = 4.2
                  if SHX10_2 < SHX11_2 then
                    SHX11_2 = SHX40_1
                    SHX12_2 = "~INPUT_CONTEXT~ to stack it on the bed"
                    SHX11_2(SHX12_2)
                    SHX11_2 = IsControlJustPressed
                    SHX12_2 = 0
                    SHX13_2 = 51
                    SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
                    if SHX11_2 then
                      SHX11_2 = SHX8_2
                      SHX12_2 = SHX9_2
                      SHX13_2 = DoesEntityExist
                      SHX14_2 = SHX12_2
                      SHX13_2 = SHX13_2(SHX14_2)
                      if SHX13_2 then
                        SHX13_2 = SHX49_1
                        SHX14_2 = SHX12_2
                        SHX15_2 = SHX11_2
                        SHX13_2 = SHX13_2(SHX14_2, SHX15_2)
                        if SHX13_2 then
                          SHX13_2 = TriggerServerEvent
                          SHX14_2 = "9e60778b9c"
                          SHX15_2 = NetworkGetNetworkIdFromEntity
                          SHX16_2 = SHX12_2
                          SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2 = SHX15_2(SHX16_2)
                          SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2)
                        end
                      end
                      SHX13_2 = Citizen
                      SHX13_2 = SHX13_2.Wait
                      SHX14_2 = 800
                      SHX13_2(SHX14_2)
                    end
                  else
                    SHX11_2 = SHX40_1
                    SHX12_2 = "Take it to the back of the flatbed"
                    SHX11_2(SHX12_2)
                  end
                end
              end
            else
              SHX9_2 = nil
              SHX10_2 = 2.85
              SHX11_2 = pairs
              SHX12_2 = SHX17_1
              SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX11_2(SHX12_2)
              for SHX15_2, SHX16_2 in SHX11_2, SHX12_2, SHX13_2, SHX14_2 do
                if SHX16_2 and 0 ~= SHX16_2 then
                  SHX17_2 = DoesEntityExist
                  SHX18_2 = SHX16_2
                  SHX17_2 = SHX17_2(SHX18_2)
                  if SHX17_2 then
                    SHX17_2 = SHX42_1
                    SHX18_2 = SHX0_2
                    SHX19_2 = SHX15_2
                    SHX17_2 = SHX17_2(SHX18_2, SHX19_2)
                    if not SHX17_2 then
                      SHX17_2 = GetEntityCoords
                      SHX18_2 = SHX16_2
                      SHX19_2 = true
                      SHX17_2 = SHX17_2(SHX18_2, SHX19_2)
                      SHX18_2 = SHX2_2 - SHX17_2
                      SHX18_2 = #SHX18_2
                      if SHX10_2 > SHX18_2 then
                        SHX10_2 = SHX18_2
                        SHX9_2 = SHX15_2
                      end
                    end
                  end
                end
              end
              if SHX9_2 then
                SHX11_2 = GetVehiclePedIsIn
                SHX12_2 = SHX1_2
                SHX13_2 = false
                SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
                if 0 == SHX11_2 then
                  SHX11_2 = 2.75
                  if SHX10_2 < SHX11_2 then
                    SHX3_2 = 0
                    SHX11_2 = SHX40_1
                    SHX12_2 = "~INPUT_CONTEXT~ to grab a piece of debris"
                    SHX11_2(SHX12_2)
                    SHX11_2 = IsControlJustPressed
                    SHX12_2 = 0
                    SHX13_2 = 51
                    SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
                    if SHX11_2 then
                      SHX11_2 = TriggerServerEvent
                      SHX12_2 = "c6e44e597f"
                      SHX13_2 = SHX9_2
                      SHX11_2(SHX12_2, SHX13_2)
                      SHX11_2 = Citizen
                      SHX11_2 = SHX11_2.Wait
                      SHX12_2 = 800
                      SHX11_2(SHX12_2)
                    end
                  end
                end
              end
            end
            SHX9_2 = SHX44_1
            SHX10_2 = SHX0_2
            SHX9_2 = SHX9_2(SHX10_2)
            if SHX9_2 then
              SHX9_2 = tonumber
              SHX10_2 = SHX0_2.carryingSecondarySlot
              SHX9_2 = SHX9_2(SHX10_2)
              if not SHX9_2 then
                SHX9_2 = tostring
                SHX10_2 = SHX0_2.contractId
                if not SHX10_2 then
                  SHX10_2 = ""
                end
                SHX9_2 = SHX9_2(SHX10_2)
                if "" == SHX9_2 then
                  SHX9_2 = "debris"
                end
                SHX10_2 = SHX24_1
                if SHX10_2 ~= SHX9_2 then
                  SHX24_1 = SHX9_2
                  SHX10_2 = drawNativeNotification
                  SHX11_2 = "Junk's cleared. Jump in the ~y~flatbed~w~, tuck up to the shell, ~y~winch~w~ it on (~INPUT_CONTEXT~)."
                  SHX12_2 = false
                  SHX10_2(SHX11_2, SHX12_2)
                end
              end
            end
            SHX9_2 = SHX44_1
            SHX10_2 = SHX0_2
            SHX9_2 = SHX9_2(SHX10_2)
            if SHX9_2 then
              SHX9_2 = SHX16_1
              if 0 ~= SHX9_2 then
                SHX9_2 = DoesEntityExist
                SHX10_2 = SHX16_1
                SHX9_2 = SHX9_2(SHX10_2)
                if SHX9_2 then
                  SHX9_2 = SHX71_1
                  SHX9_2 = SHX9_2()
                  SHX10_2 = GetEntityCoords
                  SHX11_2 = SHX16_1
                  SHX12_2 = true
                  SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
                  if 0 ~= SHX9_2 then
                    SHX11_2 = GetEntityCoords
                    SHX12_2 = SHX9_2
                    SHX13_2 = true
                    SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
                    SHX11_2 = SHX11_2 - SHX10_2
                    SHX11_2 = #SHX11_2
                    SHX12_2 = 13.5
                    if SHX11_2 < SHX12_2 then
                      SHX3_2 = 0
                      SHX12_2 = DrawMarker
                      SHX13_2 = 1
                      SHX14_2 = SHX10_2.x
                      SHX15_2 = SHX10_2.y
                      SHX16_2 = SHX10_2.z
                      SHX16_2 = SHX16_2 - 0.5
                      SHX17_2 = 0.0
                      SHX18_2 = 0.0
                      SHX19_2 = 0.0
                      SHX20_2 = 0.0
                      SHX21_2 = 0.0
                      SHX22_2 = 0.0
                      SHX23_2 = 2.0
                      SHX24_2 = 2.0
                      SHX25_2 = 0.8
                      SHX26_2 = 255
                      SHX27_2 = 180
                      SHX28_2 = 64
                      SHX29_2 = 130
                      SHX30_2 = false
                      SHX31_2 = false
                      SHX32_2 = 2
                      SHX33_2 = false
                      SHX34_2 = nil
                      SHX35_2 = nil
                      SHX36_2 = false
                      SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2)
                      SHX12_2 = SHX40_1
                      SHX13_2 = "~INPUT_CONTEXT~ to winch the vehicle onto the flatbed"
                      SHX12_2(SHX13_2)
                      SHX12_2 = IsControlJustPressed
                      SHX13_2 = 0
                      SHX14_2 = 51
                      SHX12_2 = SHX12_2(SHX13_2, SHX14_2)
                      if SHX12_2 then
                        SHX12_2 = DoesEntityExist
                        SHX13_2 = SHX16_1
                        SHX12_2 = SHX12_2(SHX13_2)
                        if SHX12_2 then
                          SHX12_2 = DoesEntityExist
                          SHX13_2 = SHX9_2
                          SHX12_2 = SHX12_2(SHX13_2)
                          if SHX12_2 then
                            SHX12_2 = tonumber
                            SHX13_2 = SHX0_1.debrisMainFlatbedBone
                            SHX12_2 = SHX12_2(SHX13_2)
                            if not SHX12_2 then
                              SHX12_2 = 20
                            end
                            SHX13_2 = SHX48_1
                            SHX14_2 = SHX0_2.mainModel
                            SHX13_2 = SHX13_2(SHX14_2)
                            SHX14_2 = tonumber
                            SHX15_2 = SHX13_2.ox
                            SHX14_2 = SHX14_2(SHX15_2)
                            if not SHX14_2 then
                              SHX14_2 = 0.0
                            end
                            SHX15_2 = tonumber
                            SHX16_2 = SHX13_2.oy
                            SHX15_2 = SHX15_2(SHX16_2)
                            if not SHX15_2 then
                              SHX15_2 = 0.0
                            end
                            SHX16_2 = tonumber
                            SHX17_2 = SHX13_2.oz
                            SHX16_2 = SHX16_2(SHX17_2)
                            if not SHX16_2 then
                              SHX16_2 = 0.0
                            end
                            SHX17_2 = tonumber
                            SHX18_2 = SHX13_2.rx
                            SHX17_2 = SHX17_2(SHX18_2)
                            if not SHX17_2 then
                              SHX17_2 = 0.0
                            end
                            SHX18_2 = tonumber
                            SHX19_2 = SHX13_2.ry
                            SHX18_2 = SHX18_2(SHX19_2)
                            if not SHX18_2 then
                              SHX18_2 = 0.0
                            end
                            SHX19_2 = tonumber
                            SHX20_2 = SHX13_2.rz
                            SHX19_2 = SHX19_2(SHX20_2)
                            if not SHX19_2 then
                              SHX19_2 = 0.0
                            end
                            SHX20_2 = FreezeEntityPosition
                            SHX21_2 = SHX16_1
                            SHX22_2 = false
                            SHX20_2(SHX21_2, SHX22_2)
                            SHX20_2 = DetachEntity
                            SHX21_2 = SHX16_1
                            SHX22_2 = true
                            SHX23_2 = true
                            SHX20_2(SHX21_2, SHX22_2, SHX23_2)
                            SHX20_2 = AttachEntityToEntity
                            SHX21_2 = SHX16_1
                            SHX22_2 = SHX9_2
                            SHX23_2 = SHX12_2
                            SHX24_2 = SHX14_2
                            SHX25_2 = SHX15_2
                            SHX26_2 = SHX16_2
                            SHX27_2 = SHX17_2
                            SHX28_2 = SHX18_2
                            SHX29_2 = SHX19_2
                            SHX30_2 = false
                            SHX31_2 = false
                            SHX32_2 = false
                            SHX33_2 = false
                            SHX34_2 = 2
                            SHX35_2 = true
                            SHX20_2(SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2)
                            SHX20_2 = TriggerServerEvent
                            SHX21_2 = "62a9a8a2cb"
                            SHX22_2 = NetworkGetNetworkIdFromEntity
                            SHX23_2 = SHX9_2
                            SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2 = SHX22_2(SHX23_2)
                            SHX20_2(SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2)
                          end
                        end
                        SHX12_2 = Citizen
                        SHX12_2 = SHX12_2.Wait
                        SHX13_2 = 800
                        SHX12_2(SHX13_2)
                      end
                    end
                  end
                end
              end
            end
        end
      end
    end
    else
      SHX4_2 = SHX0_2.type
      if "debris" == SHX4_2 then
        SHX4_2 = SHX0_2.mainSecured
        if SHX4_2 then
          SHX4_2 = SHX0_2.debrisDepotComplete
          if true ~= SHX4_2 then
            SHX4_2 = SHX2_1.x
            SHX4_2 = SHX4_2 + 0.0
            SHX5_2 = SHX2_1.y
            SHX5_2 = SHX5_2 + 0.0
            SHX6_2 = SHX2_1.z
            SHX6_2 = SHX6_2 + 0.0
            SHX7_2 = vector3
            SHX8_2 = SHX4_2
            SHX9_2 = SHX5_2
            SHX10_2 = SHX6_2
            SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
            SHX8_2 = GetGroundZFor_3dCoord
            SHX9_2 = SHX4_2
            SHX10_2 = SHX5_2
            SHX11_2 = SHX6_2 + 80.0
            SHX12_2 = 0.0
            SHX13_2 = false
            SHX8_2, SHX9_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
            if SHX9_2 and SHX9_2 > 0.0 then
              SHX10_2 = SHX9_2 + 0.12
              if SHX10_2 then
                goto SHX_LABEL_445
              end
            end
            SHX10_2 = SHX6_2
            -- [FIX IF ERROR] Move ::SHX_LABEL_445:: outside nested blocks until all 'goto SHX_LABEL_445' can see it
            ::SHX_LABEL_445::
            SHX11_2 = vector3
            SHX12_2 = SHX4_2
            SHX13_2 = SHX5_2
            SHX14_2 = SHX10_2
            SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2)
            SHX11_2 = SHX2_2 - SHX11_2
            SHX11_2 = #SHX11_2
            SHX12_2 = SHX4_1
            if SHX11_2 < SHX12_2 then
              SHX3_2 = 0
              SHX12_2 = DrawMarker
              SHX13_2 = 1
              SHX14_2 = SHX4_2
              SHX15_2 = SHX5_2
              SHX16_2 = SHX10_2 - 0.35
              SHX17_2 = 0.0
              SHX18_2 = 0.0
              SHX19_2 = 0.0
              SHX20_2 = 0.0
              SHX21_2 = 0.0
              SHX22_2 = 0.0
              SHX23_2 = SHX7_1
              SHX24_2 = SHX7_1
              SHX25_2 = SHX8_1
              SHX26_2 = 72
              SHX27_2 = 255
              SHX28_2 = 140
              SHX29_2 = 195
              SHX30_2 = false
              SHX31_2 = false
              SHX32_2 = 2
              SHX33_2 = false
              SHX34_2 = nil
              SHX35_2 = nil
              SHX36_2 = false
              SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2)
            end
            SHX12_2 = SHX71_1
            SHX12_2 = SHX12_2()
            if 0 ~= SHX12_2 then
              SHX13_2 = tonumber
              SHX14_2 = SHX0_1.debrisDepotDeliverRadius
              SHX13_2 = SHX13_2(SHX14_2)
              if not SHX13_2 then
                SHX13_2 = 24.0
              end
              SHX14_2 = GetEntityCoords
              SHX15_2 = SHX12_2
              SHX16_2 = true
              SHX14_2 = SHX14_2(SHX15_2, SHX16_2)
              SHX14_2 = SHX14_2 - SHX7_2
              SHX14_2 = #SHX14_2
              if SHX13_2 >= SHX14_2 and SHX11_2 < 85.0 then
                SHX3_2 = 0
                SHX14_2 = SHX40_1
                SHX15_2 = "~INPUT_CONTEXT~ to sign the load in at the yard"
                SHX14_2(SHX15_2)
                SHX14_2 = IsControlJustPressed
                SHX15_2 = 0
                SHX16_2 = 51
                SHX14_2 = SHX14_2(SHX15_2, SHX16_2)
                if SHX14_2 then
                  SHX14_2 = TriggerServerEvent
                  SHX15_2 = "b44a868830"
                  SHX14_2(SHX15_2)
                  SHX14_2 = Citizen
                  SHX14_2 = SHX14_2.Wait
                  SHX15_2 = 800
                  SHX14_2(SHX15_2)
                end
              end
            end
        end
      end
      else
        SHX4_2 = SHX0_2.type
        if "parts_run" == SHX4_2 then
          SHX4_2 = tonumber
          SHX5_2 = SHX0_2.stage
          SHX4_2 = SHX4_2(SHX5_2)
          if not SHX4_2 then
            SHX4_2 = 1
          end
          if 1 == SHX4_2 then
            SHX5_2 = SHX0_2.pickup
            if SHX5_2 then
              goto SHX_LABEL_537
            end
          end
          SHX5_2 = SHX0_2.dropoff
          -- [FIX IF ERROR] Move ::SHX_LABEL_537:: outside nested blocks until all 'goto SHX_LABEL_537' can see it
          ::SHX_LABEL_537::
          if SHX5_2 then
            SHX6_2 = SHX5_2.x
            if SHX6_2 then
              SHX6_2 = vector3
              SHX7_2 = SHX5_2.x
              SHX8_2 = SHX5_2.y
              SHX9_2 = SHX5_2.z
              SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
              SHX6_2 = SHX2_2 - SHX6_2
              SHX6_2 = #SHX6_2
              if SHX6_2 < 35.0 then
                SHX3_2 = 0
                SHX7_2 = DrawMarker
                SHX8_2 = 1
                SHX9_2 = SHX5_2.x
                SHX10_2 = SHX5_2.y
                SHX11_2 = SHX5_2.z
                SHX11_2 = SHX11_2 - 1.0
                SHX12_2 = 0.0
                SHX13_2 = 0.0
                SHX14_2 = 0.0
                SHX15_2 = 0.0
                SHX16_2 = 0.0
                SHX17_2 = 0.0
                SHX18_2 = 2.2
                SHX19_2 = 2.2
                SHX20_2 = 1.0
                SHX21_2 = 80
                SHX22_2 = 160
                SHX23_2 = 255
                SHX24_2 = 110
                SHX25_2 = false
                SHX26_2 = false
                SHX27_2 = 2
                SHX28_2 = false
                SHX29_2 = nil
                SHX30_2 = nil
                SHX31_2 = false
                SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2)
              end
              if 1 == SHX4_2 then
                SHX7_2 = 2.5
                if SHX6_2 < SHX7_2 then
                  SHX7_2 = IsPedInAnyVehicle
                  SHX8_2 = SHX1_2
                  SHX9_2 = false
                  SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
                  if not SHX7_2 then
                    SHX7_2 = SHX40_1
                    SHX8_2 = "~INPUT_CONTEXT~ to collect the order"
                    SHX7_2(SHX8_2)
                    SHX7_2 = IsControlJustPressed
                    SHX8_2 = 0
                    SHX9_2 = 51
                    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
                    if SHX7_2 then
                      SHX7_2 = TriggerServerEvent
                      SHX8_2 = "7c931c7bd2"
                      SHX7_2(SHX8_2)
                      SHX7_2 = Citizen
                      SHX7_2 = SHX7_2.Wait
                      SHX8_2 = 800
                      SHX7_2(SHX8_2)
                    end
                end
                else
                  SHX7_2 = 2.5
                  if SHX6_2 < SHX7_2 then
                    SHX7_2 = IsPedInAnyVehicle
                    SHX8_2 = SHX1_2
                    SHX9_2 = false
                    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
                    if SHX7_2 then
                      SHX7_2 = SHX40_1
                      SHX8_2 = "Hop out to grab the order."
                      SHX7_2(SHX8_2)
                    end
                  end
                end
              elseif 2 == SHX4_2 then
                SHX3_2 = 0
                SHX7_2 = SHX73_1
                SHX8_2 = 5.5
                SHX7_2, SHX8_2 = SHX7_2(SHX8_2)
                SHX9_2 = IsPedInAnyVehicle
                SHX10_2 = SHX1_2
                SHX11_2 = false
                SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
                if SHX9_2 then
                  SHX9_2 = SHX40_1
                  SHX10_2 = "Out of the cab, then load at the rear."
                  SHX9_2(SHX10_2)
                else
                  if 0 ~= SHX7_2 then
                    SHX9_2 = 4.2
                    if SHX8_2 < SHX9_2 then
                      SHX9_2 = SHX40_1
                      SHX10_2 = "~INPUT_CONTEXT~ to chuck it in the boot"
                      SHX9_2(SHX10_2)
                      SHX9_2 = IsControlJustPressed
                      SHX10_2 = 0
                      SHX11_2 = 51
                      SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
                      if SHX9_2 then
                        SHX9_2 = TriggerServerEvent
                        SHX10_2 = "7c931c7bd2"
                        SHX11_2 = NetworkGetNetworkIdFromEntity
                        SHX12_2 = SHX7_2
                        SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2 = SHX11_2(SHX12_2)
                        SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2)
                        SHX9_2 = Citizen
                        SHX9_2 = SHX9_2.Wait
                        SHX10_2 = 800
                        SHX9_2(SHX10_2)
                      end
                  end
                  else
                    SHX9_2 = SHX40_1
                    SHX10_2 = "Bring the box to the ~y~rear of your ride~w~."
                    SHX9_2(SHX10_2)
                  end
                end
              elseif 3 == SHX4_2 then
                if SHX6_2 < 35.0 then
                  SHX3_2 = 0
                end
                SHX7_2 = SHX73_1
                SHX8_2 = 5.5
                SHX7_2, SHX8_2 = SHX7_2(SHX8_2)
                SHX9_2 = IsPedInAnyVehicle
                SHX10_2 = SHX1_2
                SHX11_2 = false
                SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
                if SHX9_2 and SHX6_2 < 14.0 then
                  SHX9_2 = SHX40_1
                  SHX10_2 = "Park up, hop out, grab it from the boot."
                  SHX9_2(SHX10_2)
                elseif SHX6_2 < 14.0 and 0 ~= SHX7_2 then
                  SHX9_2 = 4.2
                  if SHX8_2 < SHX9_2 then
                    SHX3_2 = 0
                    SHX9_2 = SHX40_1
                    SHX10_2 = "~INPUT_CONTEXT~ to pull the box from the boot"
                    SHX9_2(SHX10_2)
                    SHX9_2 = IsControlJustPressed
                    SHX10_2 = 0
                    SHX11_2 = 51
                    SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
                    if SHX9_2 then
                      SHX9_2 = TriggerServerEvent
                      SHX10_2 = "7c931c7bd2"
                      SHX11_2 = NetworkGetNetworkIdFromEntity
                      SHX12_2 = SHX7_2
                      SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2 = SHX11_2(SHX12_2)
                      SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2)
                      SHX9_2 = Citizen
                      SHX9_2 = SHX9_2.Wait
                      SHX10_2 = 800
                      SHX9_2(SHX10_2)
                    end
                  end
                end
              elseif 4 == SHX4_2 then
                SHX7_2 = 2.5
                if SHX6_2 < SHX7_2 then
                  SHX7_2 = IsPedInAnyVehicle
                  SHX8_2 = SHX1_2
                  SHX9_2 = false
                  SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
                  if not SHX7_2 then
                    SHX7_2 = SHX40_1
                    SHX8_2 = "~INPUT_CONTEXT~ to hand it over"
                    SHX7_2(SHX8_2)
                    SHX7_2 = IsControlJustPressed
                    SHX8_2 = 0
                    SHX9_2 = 51
                    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
                    if SHX7_2 then
                      SHX7_2 = TriggerServerEvent
                      SHX8_2 = "7c931c7bd2"
                      SHX7_2(SHX8_2)
                      SHX7_2 = Citizen
                      SHX7_2 = SHX7_2.Wait
                      SHX8_2 = 800
                      SHX7_2(SHX8_2)
                    end
                end
                else
                  SHX7_2 = 2.5
                  if SHX6_2 < SHX7_2 then
                    SHX7_2 = IsPedInAnyVehicle
                    SHX8_2 = SHX1_2
                    SHX9_2 = false
                    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
                    if SHX7_2 then
                      SHX7_2 = SHX40_1
                      SHX8_2 = "Exit the vehicle for the handover."
                      SHX7_2(SHX8_2)
                    end
                  end
                end
              end
            end
          end
        else
          SHX4_2 = SHX0_2.type
          if "fuel_runout" == SHX4_2 then
            SHX4_2 = SHX0_2.vehicleNetId
            if SHX4_2 then
              SHX4_2 = tonumber
              SHX5_2 = SHX0_2.vehicleNetId
              SHX4_2 = SHX4_2(SHX5_2)
              if SHX4_2 then
                SHX5_2 = NetworkDoesNetworkIdExist
                SHX6_2 = SHX4_2
                SHX5_2 = SHX5_2(SHX6_2)
                if SHX5_2 then
                  SHX5_2 = NetworkDoesEntityExistWithNetworkId
                  SHX6_2 = SHX4_2
                  SHX5_2 = SHX5_2(SHX6_2)
                  if SHX5_2 then
                    SHX5_2 = NetworkGetEntityFromNetworkId
                    SHX6_2 = SHX4_2
                    SHX5_2 = SHX5_2(SHX6_2)
                    if 0 ~= SHX5_2 then
                      SHX6_2 = DoesEntityExist
                      SHX7_2 = SHX5_2
                      SHX6_2 = SHX6_2(SHX7_2)
                      if SHX6_2 then
                        SHX6_2 = GetEntityCoords
                        SHX7_2 = SHX5_2
                        SHX8_2 = true
                        SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
                        SHX7_2 = SHX2_2 - SHX6_2
                        SHX7_2 = #SHX7_2
                        if SHX7_2 < 18.0 then
                          SHX3_2 = 0
                        end
                        SHX8_2 = 3.2
                        if SHX7_2 < SHX8_2 then
                          SHX8_2 = IsPedInAnyVehicle
                          SHX9_2 = SHX1_2
                          SHX10_2 = false
                          SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
                          if not SHX8_2 then
                            SHX8_2 = tonumber
                            SHX9_2 = SHX31_1
                            SHX8_2 = SHX8_2(SHX9_2)
                            if SHX8_2 ~= SHX4_2 then
                              SHX8_2 = SHX40_1
                              SHX9_2 = "~INPUT_CONTEXT~ to top up their tank"
                              SHX8_2(SHX9_2)
                              SHX8_2 = IsControlJustPressed
                              SHX9_2 = 0
                              SHX10_2 = 51
                              SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
                              if SHX8_2 then
                                SHX8_2 = SHX34_1
                                SHX9_2 = SHX4_2
                                SHX8_2(SHX9_2)
                                SHX8_2 = Citizen
                                SHX8_2 = SHX8_2.Wait
                                SHX9_2 = 800
                                SHX8_2(SHX9_2)
                              end
                          end
                        end
                        else
                          SHX8_2 = tonumber
                          SHX9_2 = SHX31_1
                          SHX8_2 = SHX8_2(SHX9_2)
                          if SHX8_2 == SHX4_2 then
                            SHX8_2 = SHX40_1
                            SHX9_2 = "Hang tight till the pour's done."
                            SHX8_2(SHX9_2)
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
    end
    SHX4_2 = SHX0_2.type
    if "debris" == SHX4_2 then
      SHX4_2 = SHX19_1
      if 0 ~= SHX4_2 then
        SHX4_2 = DoesEntityExist
        SHX5_2 = SHX19_1
        SHX4_2 = SHX4_2(SHX5_2)
        if SHX4_2 then
          SHX4_2 = tonumber
          SHX5_2 = SHX0_2.carryingSecondarySlot
          SHX4_2 = SHX4_2(SHX5_2)
          if SHX4_2 then
            SHX4_2 = GetVehiclePedIsIn
            SHX5_2 = SHX1_2
            SHX6_2 = false
            SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
            if 0 == SHX4_2 then
              SHX4_2 = SHX39_1
              SHX4_2()
            else
              SHX4_2 = SHX38_1
              SHX4_2()
            end
          end
        end
      end
    end
    SHX4_2 = Citizen
    SHX4_2 = SHX4_2.Wait
    SHX5_2 = SHX3_2
    SHX4_2(SHX5_2)
    -- [FIX IF ERROR] Move ::SHX_LABEL_866:: outside nested blocks until all 'goto SHX_LABEL_866' can see it
    ::SHX_LABEL_866::
  end
end
SHX74_1(SHX75_1)
SHX74_1 = Citizen
SHX74_1 = SHX74_1.CreateThread
function SHX75_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  while true do
    SHX0_2 = tonumber
    SHX1_2 = SHX31_1
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      SHX1_2 = NetworkDoesNetworkIdExist
      SHX2_2 = SHX0_2
      SHX1_2 = SHX1_2(SHX2_2)
      if SHX1_2 then
        SHX1_2 = CMG
        SHX1_2 = SHX1_2.getPlayerPed
        SHX1_2 = SHX1_2()
        SHX2_2 = NetworkGetEntityFromNetworkId
        SHX3_2 = SHX0_2
        SHX2_2 = SHX2_2(SHX3_2)
        if 0 ~= SHX1_2 and 0 ~= SHX2_2 then
          SHX3_2 = DoesEntityExist
          SHX4_2 = SHX2_2
          SHX3_2 = SHX3_2(SHX4_2)
          if SHX3_2 then
            goto SHX_LABEL_33
          end
        end
        SHX3_2 = SHX33_1
        SHX3_2()
        SHX3_2 = Citizen
        SHX3_2 = SHX3_2.Wait
        SHX4_2 = 0
        SHX3_2(SHX4_2)
        goto SHX_LABEL_108
        -- [FIX IF ERROR] Move ::SHX_LABEL_33:: outside nested blocks until all 'goto SHX_LABEL_33' can see it
        ::SHX_LABEL_33::
        SHX3_2 = GetEntityCoords
        SHX4_2 = SHX1_2
        SHX5_2 = true
        SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
        SHX4_2 = GetEntityCoords
        SHX5_2 = SHX2_2
        SHX6_2 = true
        SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
        SHX5_2 = GetVehiclePedIsIn
        SHX6_2 = SHX1_2
        SHX7_2 = false
        SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
        if 0 == SHX5_2 then
          SHX5_2 = SHX3_2 - SHX4_2
          SHX5_2 = #SHX5_2
          SHX6_2 = 3.5
          if not (SHX5_2 > SHX6_2) then
            goto SHX_LABEL_64
          end
        end
        SHX5_2 = SHX33_1
        SHX5_2()
        SHX5_2 = tCMG
        SHX5_2 = SHX5_2.notify
        SHX6_2 = "~r~Refuel stopped."
        SHX5_2(SHX6_2)
        SHX5_2 = Citizen
        SHX5_2 = SHX5_2.Wait
        SHX6_2 = 0
        SHX5_2(SHX6_2)
        goto SHX_LABEL_108
        -- [FIX IF ERROR] Move ::SHX_LABEL_64:: outside nested blocks until all 'goto SHX_LABEL_64' can see it
        ::SHX_LABEL_64::
        SHX5_2 = CMG
        SHX5_2 = SHX5_2.loadAnimDict
        SHX6_2 = SHX29_1
        SHX5_2(SHX6_2)
        SHX5_2 = IsEntityPlayingAnim
        SHX6_2 = SHX1_2
        SHX7_2 = SHX29_1
        SHX8_2 = SHX30_1
        SHX9_2 = 3
        SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
        if not SHX5_2 then
          SHX5_2 = TaskPlayAnim
          SHX6_2 = SHX1_2
          SHX7_2 = SHX29_1
          SHX8_2 = SHX30_1
          SHX9_2 = 2.0
          SHX10_2 = 8.0
          SHX11_2 = -1
          SHX12_2 = 50
          SHX13_2 = 0.0
          SHX14_2 = false
          SHX15_2 = false
          SHX16_2 = false
          SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
        end
        SHX5_2 = GetGameTimer
        SHX5_2 = SHX5_2()
        SHX6_2 = SHX32_1
        if SHX5_2 >= SHX6_2 then
          SHX5_2 = SHX33_1
          SHX5_2()
          SHX5_2 = TriggerServerEvent
          SHX6_2 = "dfa22cde0c"
          SHX5_2(SHX6_2)
        end
        SHX5_2 = Citizen
        SHX5_2 = SHX5_2.Wait
        SHX6_2 = 0
        SHX5_2(SHX6_2)
    end
    else
      SHX1_2 = Citizen
      SHX1_2 = SHX1_2.Wait
      SHX2_2 = 1200
      SHX1_2(SHX2_2)
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_108:: outside nested blocks until all 'goto SHX_LABEL_108' can see it
    ::SHX_LABEL_108::
  end
end
SHX74_1(SHX75_1)
SHX74_1 = RegisterNetEvent
SHX75_1 = "c7dc2846b3"
function SHX76_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = tonumber
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX0_2 = SHX1_2
  if SHX0_2 then
    SHX1_2 = NetworkDoesNetworkIdExist
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      goto SHX_LABEL_13
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_13:: outside nested blocks until all 'goto SHX_LABEL_13' can see it
  ::SHX_LABEL_13::
  SHX1_2 = NetworkGetEntityFromNetworkId
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if 0 ~= SHX1_2 then
    SHX2_2 = DoesEntityExist
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      goto SHX_LABEL_24
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_24:: outside nested blocks until all 'goto SHX_LABEL_24' can see it
  ::SHX_LABEL_24::
  SHX2_2 = SHX33_1
  SHX2_2()
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.setVehicleFuel
  if SHX2_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.setVehicleFuel
    SHX3_2 = SHX1_2
    SHX4_2 = 72.0
    SHX2_2(SHX3_2, SHX4_2)
  else
    SHX2_2 = SetVehicleFuelLevel
    SHX3_2 = SHX1_2
    SHX4_2 = 72.0
    SHX2_2(SHX3_2, SHX4_2)
  end
end
SHX74_1(SHX75_1, SHX76_1)
SHX74_1 = RegisterNetEvent
SHX75_1 = "824c168eef"
function SHX76_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = SHX15_1
  SHX1_2 = SHX0_2 or SHX1_2
  if SHX0_2 then
    SHX1_2 = SHX0_2.vehicleNetId
    if SHX1_2 then
      SHX1_2 = tonumber
      SHX2_2 = SHX0_2.vehicleNetId
      SHX1_2 = SHX1_2(SHX2_2)
    end
  end
  SHX2_2 = SHX54_1
  SHX2_2()
  SHX2_2 = SHX41_1
  SHX2_2()
  SHX2_2 = SHX36_1
  SHX2_2()
  SHX2_2 = SHX33_1
  SHX2_2()
  SHX2_2 = nil
  SHX14_1 = SHX2_2
  SHX2_2 = nil
  SHX15_1 = SHX2_2
  SHX2_2 = false
  SHX12_1 = SHX2_2
  if SHX1_2 then
    SHX2_2 = NetworkDoesNetworkIdExist
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      SHX2_2 = NetworkGetEntityFromNetworkId
      SHX3_2 = SHX1_2
      SHX2_2 = SHX2_2(SHX3_2)
      if 0 ~= SHX2_2 then
        SHX3_2 = DoesEntityExist
        SHX4_2 = SHX2_2
        SHX3_2 = SHX3_2(SHX4_2)
        if SHX3_2 then
          SHX3_2 = IsEntityAVehicle
          SHX4_2 = SHX2_2
          SHX3_2 = SHX3_2(SHX4_2)
          if SHX3_2 then
            SHX3_2 = NetworkRequestControlOfEntity
            SHX4_2 = SHX2_2
            SHX3_2(SHX4_2)
            SHX3_2 = GetGameTimer
            SHX3_2 = SHX3_2()
            SHX3_2 = SHX3_2 + 800
            while true do
              SHX4_2 = GetGameTimer
              SHX4_2 = SHX4_2()
              if not (SHX3_2 > SHX4_2) then
                break
              end
              SHX4_2 = NetworkHasControlOfEntity
              SHX5_2 = SHX2_2
              SHX4_2 = SHX4_2(SHX5_2)
              if SHX4_2 then
                break
              end
              SHX4_2 = NetworkRequestControlOfEntity
              SHX5_2 = SHX2_2
              SHX4_2(SHX5_2)
              SHX4_2 = Citizen
              SHX4_2 = SHX4_2.Wait
              SHX5_2 = 0
              SHX4_2(SHX5_2)
            end
            SHX4_2 = SetEntityAsMissionEntity
            SHX5_2 = SHX2_2
            SHX6_2 = true
            SHX7_2 = true
            SHX4_2(SHX5_2, SHX6_2, SHX7_2)
            SHX4_2 = DeleteEntity
            SHX5_2 = SHX2_2
            SHX4_2(SHX5_2)
          end
        end
      end
    end
  end
end
SHX74_1(SHX75_1, SHX76_1)
SHX74_1 = RegisterNetEvent
SHX75_1 = "edaac23639"
function SHX76_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = tonumber
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX0_2 = SHX1_2
  if SHX0_2 then
    SHX1_2 = NetworkDoesNetworkIdExist
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      goto SHX_LABEL_13
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_13:: outside nested blocks until all 'goto SHX_LABEL_13' can see it
  ::SHX_LABEL_13::
  SHX1_2 = NetworkGetEntityFromNetworkId
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if 0 ~= SHX1_2 then
    SHX2_2 = DoesEntityExist
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      SHX2_2 = IsEntityAVehicle
      SHX3_2 = SHX1_2
      SHX2_2 = SHX2_2(SHX3_2)
      if SHX2_2 then
        goto SHX_LABEL_29
      end
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_29:: outside nested blocks until all 'goto SHX_LABEL_29' can see it
  ::SHX_LABEL_29::
  SHX2_2 = NetworkRequestControlOfEntity
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
  SHX2_2 = GetGameTimer
  SHX2_2 = SHX2_2()
  SHX2_2 = SHX2_2 + 800
  while true do
    SHX3_2 = GetGameTimer
    SHX3_2 = SHX3_2()
    if not (SHX2_2 > SHX3_2) then
      break
    end
    SHX3_2 = NetworkHasControlOfEntity
    SHX4_2 = SHX1_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      break
    end
    SHX3_2 = NetworkRequestControlOfEntity
    SHX4_2 = SHX1_2
    SHX3_2(SHX4_2)
    SHX3_2 = Citizen
    SHX3_2 = SHX3_2.Wait
    SHX4_2 = 0
    SHX3_2(SHX4_2)
  end
  SHX3_2 = SetEntityAsMissionEntity
  SHX4_2 = SHX1_2
  SHX5_2 = true
  SHX6_2 = true
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = DeleteEntity
  SHX4_2 = SHX1_2
  SHX3_2(SHX4_2)
end
SHX74_1(SHX75_1, SHX76_1)
SHX74_1 = RegisterNetEvent
SHX75_1 = "a31d6248f4"
function SHX76_1(SHX0_2)
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
  SHX2_2.type = "MECHANIC_LEVEL_LIST"
  SHX3_2 = {}
  SHX4_2 = SHX0_2 or SHX4_2
  if not SHX0_2 then
    SHX4_2 = {}
  end
  SHX3_2.levels = SHX4_2
  SHX2_2.payload = SHX3_2
  SHX1_2(SHX2_2)
end
SHX74_1(SHX75_1, SHX76_1)
SHX74_1 = CMG
function SHX75_1(SHX0_2, SHX1_2)
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
    if "Mechanic" == SHX2_2 then
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.uiSendMessage
      SHX3_2 = {}
      SHX3_2.action = "MECHANIC_JOB_NOTIFICATION"
      SHX4_2 = {}
      SHX5_2 = true == SHX0_2
      SHX4_2.success = SHX5_2
      SHX4_2.message = SHX1_2
      SHX3_2.payload = SHX4_2
      SHX2_2(SHX3_2)
  end
  else
    if SHX0_2 then
      SHX2_2 = "~g~"
      if SHX2_2 then
        goto SHX_LABEL_38
      end
    end
    SHX2_2 = "~r~"
    -- [FIX IF ERROR] Move ::SHX_LABEL_38:: outside nested blocks until all 'goto SHX_LABEL_38' can see it
    ::SHX_LABEL_38::
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.notify
    SHX4_2 = SHX2_2
    SHX5_2 = SHX1_2
    SHX4_2 = SHX4_2 .. SHX5_2
    SHX3_2(SHX4_2)
  end
end
SHX74_1.showMechanicJobNuiNotify = SHX75_1
SHX74_1 = RegisterNetEvent
SHX75_1 = "e9fb295005"
function SHX76_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.showMechanicJobNuiNotify
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX2_2(SHX3_2, SHX4_2)
end
SHX74_1(SHX75_1, SHX76_1)
SHX74_1 = CMG
SHX74_1 = SHX74_1.uiRegisterCallback
SHX75_1 = "mechanicJobRequestSync"
function SHX76_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "5c8eb44f1a"
  SHX0_2(SHX1_2)
end
SHX74_1(SHX75_1, SHX76_1)
SHX74_1 = CMG
SHX74_1 = SHX74_1.uiRegisterCallback
SHX75_1 = "getMechanicLevels"
function SHX76_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "faf016b7ca"
  SHX0_2(SHX1_2)
end
SHX74_1(SHX75_1, SHX76_1)
SHX74_1 = CMG
SHX74_1 = SHX74_1.uiRegisterCallback
SHX75_1 = "getMechanicLeaderboard"
function SHX76_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "5bfcf45d60"
  SHX0_2(SHX1_2)
end
SHX74_1(SHX75_1, SHX76_1)
SHX74_1 = RegisterNetEvent
SHX75_1 = "ded48a8b46"
function SHX76_1(SHX0_2)
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
  SHX2_2.type = "MECHANIC_LEADERBOARD"
  SHX3_2 = {}
  SHX4_2 = SHX0_2 or SHX4_2
  if not SHX0_2 then
    SHX4_2 = {}
  end
  SHX3_2.mechanics = SHX4_2
  SHX2_2.payload = SHX3_2
  SHX1_2(SHX2_2)
end
SHX74_1(SHX75_1, SHX76_1)
SHX74_1 = CMG
SHX74_1 = SHX74_1.uiRegisterCallback
SHX75_1 = "mechanicJobStartBreakdown"
function SHX76_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "b87fb49f5f"
  SHX0_2(SHX1_2)
end
SHX74_1(SHX75_1, SHX76_1)
SHX74_1 = CMG
SHX74_1 = SHX74_1.uiRegisterCallback
SHX75_1 = "mechanicJobStartSolo"
function SHX76_1(SHX0_2)
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
  SHX1_2 = "table" == SHX1_2 and SHX1_2
  SHX2_2 = type
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if "string" ~= SHX2_2 or "" == SHX1_2 then
    return
  end
  SHX2_2 = TriggerServerEvent
  SHX3_2 = "9bd49860b5"
  SHX4_2 = SHX1_2
  SHX2_2(SHX3_2, SHX4_2)
end
SHX74_1(SHX75_1, SHX76_1)
SHX74_1 = CMG
SHX74_1 = SHX74_1.uiRegisterCallback
SHX75_1 = "mechanicJobCancelContract"
function SHX76_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX54_1
  SHX0_2()
  SHX0_2 = SHX41_1
  SHX0_2()
  SHX0_2 = nil
  SHX14_1 = SHX0_2
  SHX0_2 = nil
  SHX15_1 = SHX0_2
  SHX0_2 = false
  SHX12_1 = SHX0_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "421a80d091"
  SHX0_2(SHX1_2)
end
SHX74_1(SHX75_1, SHX76_1)
SHX74_1 = CMG
SHX74_1 = SHX74_1.uiRegisterCallback
SHX75_1 = "mechanicJobSetWaypointAgain"
function SHX76_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX68_1
  SHX0_2()
end
SHX74_1(SHX75_1, SHX76_1)
SHX74_1 = CMG
SHX74_1 = SHX74_1.uiRegisterCallback
SHX75_1 = "mechanicOpenCallManager"
function SHX76_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerEvent
  SHX1_2 = "b4fcca60d5"
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.openCallManagerFromJobMenu
  SHX0_2()
end
SHX74_1(SHX75_1, SHX76_1)
function SHX74_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  if 0 ~= SHX0_2 then
    SHX1_2 = DoesEntityExist
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = IsEntityAVehicle
      SHX2_2 = SHX0_2
      SHX1_2 = SHX1_2(SHX2_2)
      if SHX1_2 then
        goto SHX_LABEL_15
      end
    end
  end
  SHX1_2 = false
  return SHX1_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_15:: outside nested blocks until all 'goto SHX_LABEL_15' can see it
  ::SHX_LABEL_15::
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getVehicleIdFromModel
  SHX2_2 = GetEntityModel
  SHX3_2 = SHX0_2
  SHX2_2, SHX3_2 = SHX2_2(SHX3_2)
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if SHX1_2 then
    SHX2_2 = SHX1_1.garages
    if SHX2_2 then
      SHX2_2 = SHX1_1.garages
      SHX2_2 = SHX2_2.Mechanics
      if SHX2_2 then
        SHX2_2 = SHX1_1.garages
        SHX2_2 = SHX2_2.Mechanics
        SHX2_2 = SHX2_2[SHX1_2]
        if SHX2_2 then
          SHX2_2 = true
          return SHX2_2
        end
      end
    end
  end
  SHX2_2 = false
  return SHX2_2
end
function SHX75_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX15_1
  if SHX1_2 then
    SHX2_2 = SHX1_2.vehicleNetId
    if SHX2_2 then
      goto SHX_LABEL_9
    end
  end
  SHX2_2 = false
  return SHX2_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  SHX2_2 = tonumber
  SHX3_2 = SHX1_2.vehicleNetId
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX3_2 = NetworkDoesNetworkIdExist
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      goto SHX_LABEL_21
    end
  end
  SHX3_2 = false
  return SHX3_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_21:: outside nested blocks until all 'goto SHX_LABEL_21' can see it
  ::SHX_LABEL_21::
  SHX3_2 = NetworkGetEntityFromNetworkId
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = 0 ~= SHX3_2 and SHX3_2 == SHX0_2
  return SHX4_2
end
function SHX76_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX74_1
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = SHX75_1
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if not SHX1_2 then
      goto SHX_LABEL_13
    end
  end
  SHX1_2 = true
  return SHX1_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_13:: outside nested blocks until all 'goto SHX_LABEL_13' can see it
  ::SHX_LABEL_13::
  if 0 ~= SHX0_2 then
    SHX1_2 = DoesEntityExist
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = IsEntityAVehicle
      SHX2_2 = SHX0_2
      SHX1_2 = SHX1_2(SHX2_2)
      if SHX1_2 then
        goto SHX_LABEL_27
      end
    end
  end
  SHX1_2 = false
  return SHX1_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_27:: outside nested blocks until all 'goto SHX_LABEL_27' can see it
  ::SHX_LABEL_27::
  SHX1_2 = GetEntityModel
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if -956048545 == SHX1_2 then
    SHX2_2 = true
    return SHX2_2
  end
  SHX2_2 = SHX10_1
  SHX2_2 = SHX2_2[SHX1_2]
  if not SHX2_2 then
    SHX2_2 = SHX11_1
    SHX2_2 = SHX2_2[SHX1_2]
    if not SHX2_2 then
      goto SHX_LABEL_44
    end
  end
  SHX2_2 = true
  return SHX2_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_44:: outside nested blocks until all 'goto SHX_LABEL_44' can see it
  ::SHX_LABEL_44::
  SHX2_2 = SHX0_1.mechanicWorkVehicleModelHashes
  if SHX2_2 then
    SHX3_2 = SHX2_2[SHX1_2]
    if SHX3_2 then
      SHX3_2 = true
      return SHX3_2
    end
  end
  SHX3_2 = false
  return SHX3_2
end
SHX77_1 = 0
SHX78_1 = "~r~You can only use mechanic job vehicles whilst clocked on."
SHX79_1 = 0
function SHX80_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
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
  SHX1_2 = NetworkRequestControlOfEntity
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = NetworkHasControlOfEntity
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = SetEntityAsMissionEntity
    SHX2_2 = SHX0_2
    SHX3_2 = true
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = DeleteEntity
    SHX2_2 = SHX0_2
    SHX1_2(SHX2_2)
  end
end
function SHX81_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX0_2 = SHX79_1
  if 0 ~= SHX0_2 then
    SHX0_2 = SHX79_1
    SHX1_2 = DoesEntityExist
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if not SHX1_2 then
      SHX1_2 = 0
      SHX79_1 = SHX1_2
    else
      SHX1_2 = SHX80_1
      SHX2_2 = SHX0_2
      SHX1_2(SHX2_2)
      SHX1_2 = DoesEntityExist
      SHX2_2 = SHX0_2
      SHX1_2 = SHX1_2(SHX2_2)
      if not SHX1_2 then
        SHX1_2 = 0
        SHX79_1 = SHX1_2
      end
    end
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hasClientPermission
  SHX1_2 = "aa.onduty.permission"
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 then
    return
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isJobTutorialRunning
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    return
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isSimeonsVehiclePreviewActive
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    return
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isBenchmarking
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    return
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isHandcuffed
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    return
  end
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = GetVehiclePedIsEntering
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if 0 ~= SHX1_2 then
    SHX2_2 = SHX76_1
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if not SHX2_2 then
      SHX2_2 = ClearPedTasks
      SHX3_2 = SHX0_2
      SHX2_2(SHX3_2)
      SHX2_2 = notify
      SHX3_2 = SHX78_1
      SHX2_2(SHX3_2)
    end
  end
  SHX2_2 = GetVehiclePedIsIn
  SHX3_2 = SHX0_2
  SHX4_2 = false
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  if 0 ~= SHX2_2 then
    SHX3_2 = SHX76_1
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    if not SHX3_2 then
      SHX3_2 = GetPedInVehicleSeat
      SHX4_2 = SHX2_2
      SHX5_2 = -1
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
      SHX3_2 = SHX3_2 == SHX0_2
      SHX4_2 = GetOffsetFromEntityInWorldCoords
      SHX5_2 = SHX2_2
      SHX6_2 = 1.8
      SHX7_2 = 0.0
      SHX8_2 = 0.3
      SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX5_2 = GetGroundZFor_3dCoord
      SHX6_2 = SHX4_2.x
      SHX7_2 = SHX4_2.y
      SHX8_2 = SHX4_2.z
      SHX8_2 = SHX8_2 + 1.0
      SHX9_2 = 0
      SHX10_2 = false
      SHX5_2, SHX6_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
      if SHX5_2 and SHX6_2 > 0.0 then
        SHX7_2 = SHX6_2 + 0.5
        if SHX7_2 then
          goto SHX_LABEL_117
        end
      end
      SHX7_2 = SHX4_2.z
      SHX7_2 = SHX7_2 + 0.5
      -- [FIX IF ERROR] Move ::SHX_LABEL_117:: outside nested blocks until all 'goto SHX_LABEL_117' can see it
      ::SHX_LABEL_117::
      SHX8_2 = SetEntityCoordsNoOffset
      SHX9_2 = SHX0_2
      SHX10_2 = SHX4_2.x
      SHX11_2 = SHX4_2.y
      SHX12_2 = SHX7_2
      SHX13_2 = false
      SHX14_2 = false
      SHX15_2 = false
      SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
      SHX8_2 = ClearPedTasksImmediately
      SHX9_2 = SHX0_2
      SHX8_2(SHX9_2)
      if SHX3_2 then
        SHX79_1 = SHX2_2
        SHX8_2 = SHX80_1
        SHX9_2 = SHX2_2
        SHX8_2(SHX9_2)
        SHX8_2 = DoesEntityExist
        SHX9_2 = SHX2_2
        SHX8_2 = SHX8_2(SHX9_2)
        if not SHX8_2 then
          SHX8_2 = 0
          SHX79_1 = SHX8_2
        end
      end
      SHX8_2 = GetGameTimer
      SHX8_2 = SHX8_2()
      SHX9_2 = SHX77_1
      if SHX8_2 >= SHX9_2 then
        SHX9_2 = SHX8_2 + 4000
        SHX77_1 = SHX9_2
        SHX9_2 = notify
        SHX10_2 = SHX78_1
        SHX9_2(SHX10_2)
      end
    end
  end
end
SHX82_1 = CMG
SHX82_1 = SHX82_1.createThreadOnTick
SHX83_1 = SHX81_1
SHX84_1 = "Mechanic Vehicle Restrict"
SHX82_1(SHX83_1, SHX84_1)
SHX82_1 = CMG
SHX82_1 = SHX82_1.registerDevMenuState
SHX83_1 = "Mechanic/Debris layout"
SHX84_1 = {}
SHX84_1.mainModelIndex = 1
SHX84_1.step = 0.1
SHX84_1.selectedIndex = 0
SHX84_1.nudgeStepListIndex = 3
SHX84_1.offsetKindIndex = 1
SHX84_1.secondarySlot1ModelIdx = 1
SHX84_1.secondarySlot2ModelIdx = 1
SHX84_1.secondarySlot3ModelIdx = 1
SHX84_1.secondarySlot4ModelIdx = 1
SHX82_1 = SHX82_1(SHX83_1, SHX84_1)
SHX83_1 = {}
SHX83_1.active = false
SHX83_1.kind = "ground"
SHX83_1.anchor = nil
SHX83_1.baseZ = 0.0
SHX83_1.mainEnt = 0
SHX83_1.mainModelName = ""
SHX84_1 = {}
SHX83_1.slotEnts = SHX84_1
SHX83_1.flatbedVeh = 0
SHX83_1.flatbedAttach = nil
SHX83_1.mainFlatbedAttach = nil
SHX84_1 = {}
SHX85_1 = "Main wreck"
SHX86_1 = "Secondary slot 1"
SHX87_1 = "Secondary slot 2"
SHX88_1 = "Secondary slot 3"
SHX89_1 = "Secondary slot 4"
SHX84_1[1] = SHX85_1
SHX84_1[2] = SHX86_1
SHX84_1[3] = SHX87_1
SHX84_1[4] = SHX88_1
SHX84_1[5] = SHX89_1
SHX85_1 = {}
SHX86_1 = "Main wreck"
SHX87_1 = "Bed slot 1"
SHX88_1 = "Bed slot 2"
SHX89_1 = "Bed slot 3"
SHX90_1 = "Bed slot 4"
SHX85_1[1] = SHX86_1
SHX85_1[2] = SHX87_1
SHX85_1[3] = SHX88_1
SHX85_1[4] = SHX89_1
SHX85_1[5] = SHX90_1
SHX86_1 = {}
SHX87_1 = "Ground: pile / scene offsets"
SHX88_1 = "Flatbed: bed attach (bone-local)"
SHX86_1[1] = SHX87_1
SHX86_1[2] = SHX88_1
function SHX87_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = tonumber
  SHX1_2 = SHX82_1.offsetKindIndex
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 then
    SHX0_2 = 1
  end
  if 2 == SHX0_2 then
    SHX0_2 = "flatbed"
    if SHX0_2 then
      goto SHX_LABEL_13
    end
  end
  SHX0_2 = "ground"
  -- [FIX IF ERROR] Move ::SHX_LABEL_13:: outside nested blocks until all 'goto SHX_LABEL_13' can see it
  ::SHX_LABEL_13::
  return SHX0_2
end
function SHX88_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getClientUserId
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX0_2 or SHX1_2
  if SHX0_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.isDeveloper
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
  end
  return SHX1_2
end
function SHX89_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX3_2 = math
  SHX3_2 = SHX3_2.rad
  SHX4_2 = SHX2_2 + 0.0
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = math
  SHX4_2 = SHX4_2.cos
  SHX5_2 = SHX3_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = math
  SHX5_2 = SHX5_2.sin
  SHX6_2 = SHX3_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = SHX0_2 * SHX4_2
  SHX7_2 = SHX1_2 * SHX5_2
  SHX6_2 = SHX6_2 + SHX7_2
  SHX7_2 = -SHX0_2
  SHX7_2 = SHX7_2 * SHX5_2
  SHX8_2 = SHX1_2 * SHX4_2
  SHX7_2 = SHX7_2 + SHX8_2
  SHX8_2 = SHX6_2
  SHX9_2 = SHX7_2
  return SHX8_2, SHX9_2
end
function SHX90_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX83_1.mainEnt
  if 0 ~= SHX0_2 then
    SHX0_2 = DoesEntityExist
    SHX1_2 = SHX83_1.mainEnt
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      SHX0_2 = GetEntityHeading
      SHX1_2 = SHX83_1.mainEnt
      return SHX0_2(SHX1_2)
    end
  end
  SHX0_2 = 0.0
  return SHX0_2
end
function SHX91_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX2_2 = SHX45_1
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX5_2 = SHX90_1
  SHX5_2, SHX6_2, SHX7_2 = SHX5_2()
  SHX2_2, SHX3_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = vector3
  SHX5_2 = SHX2_2
  SHX6_2 = SHX3_2
  SHX7_2 = 0.0
  return SHX4_2(SHX5_2, SHX6_2, SHX7_2)
end
function SHX92_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX83_1.active = false
  SHX83_1.kind = "ground"
  SHX83_1.flatbedVeh = 0
  SHX83_1.flatbedAttach = nil
  SHX83_1.mainFlatbedAttach = nil
  SHX0_2 = SHX83_1.mainEnt
  if 0 ~= SHX0_2 then
    SHX0_2 = DoesEntityExist
    SHX1_2 = SHX83_1.mainEnt
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      SHX0_2 = SetEntityAsMissionEntity
      SHX1_2 = SHX83_1.mainEnt
      SHX2_2 = true
      SHX3_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      SHX0_2 = DeleteObject
      SHX1_2 = SHX83_1.mainEnt
      SHX0_2(SHX1_2)
    end
  end
  SHX83_1.mainEnt = 0
  SHX0_2 = 1
  SHX1_2 = 4
  SHX2_2 = 1
  for SHX3_2 = SHX0_2, SHX1_2, SHX2_2 do
    SHX4_2 = SHX83_1.slotEnts
    SHX4_2 = SHX4_2[SHX3_2]
    if SHX4_2 and 0 ~= SHX4_2 then
      SHX5_2 = DoesEntityExist
      SHX6_2 = SHX4_2
      SHX5_2 = SHX5_2(SHX6_2)
      if SHX5_2 then
        SHX5_2 = DetachEntity
        SHX6_2 = SHX4_2
        SHX7_2 = true
        SHX8_2 = true
        SHX5_2(SHX6_2, SHX7_2, SHX8_2)
        SHX5_2 = SetEntityAsMissionEntity
        SHX6_2 = SHX4_2
        SHX7_2 = true
        SHX8_2 = true
        SHX5_2(SHX6_2, SHX7_2, SHX8_2)
        SHX5_2 = DeleteObject
        SHX6_2 = SHX4_2
        SHX5_2(SHX6_2)
      end
    end
    SHX5_2 = SHX83_1.slotEnts
    SHX5_2[SHX3_2] = nil
  end
  SHX83_1.anchor = nil
  SHX83_1.mainModelName = ""
end
function SHX93_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX0_1.debrisMainWreckModels
  SHX1_2 = type
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if "table" == SHX1_2 then
    SHX1_2 = #SHX0_2
    if not (SHX1_2 < 1) then
      goto SHX_LABEL_15
    end
  end
  SHX1_2 = {}
  SHX2_2 = "prop_rub_carwreck_8"
  SHX1_2[1] = SHX2_2
  return SHX1_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_15:: outside nested blocks until all 'goto SHX_LABEL_15' can see it
  ::SHX_LABEL_15::
  return SHX0_2
end
function SHX94_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = SHX0_1.debrisLayoutGroups
  SHX1_2 = SHX83_1.mainModelName
  SHX2_2 = type
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if "table" == SHX2_2 then
    SHX2_2 = SHX1_2 or SHX2_2
    if not SHX1_2 then
      SHX2_2 = ""
    end
    SHX2_2 = SHX0_2[SHX2_2]
    if SHX2_2 then
      goto SHX_LABEL_15
    end
  end
  SHX2_2 = nil
  -- [FIX IF ERROR] Move ::SHX_LABEL_15:: outside nested blocks until all 'goto SHX_LABEL_15' can see it
  ::SHX_LABEL_15::
  SHX3_2 = type
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if "table" == SHX3_2 then
    SHX3_2 = SHX2_2.secondaryModels
    if SHX3_2 then
      goto SHX_LABEL_24
    end
  end
  SHX3_2 = nil
  -- [FIX IF ERROR] Move ::SHX_LABEL_24:: outside nested blocks until all 'goto SHX_LABEL_24' can see it
  ::SHX_LABEL_24::
  SHX4_2 = type
  SHX5_2 = SHX3_2
  SHX4_2 = SHX4_2(SHX5_2)
  if "table" == SHX4_2 then
    SHX4_2 = #SHX3_2
    if not (SHX4_2 < 1) then
      goto SHX_LABEL_40
    end
  end
  SHX4_2 = {}
  SHX5_2 = "prop_rub_carpart_02"
  SHX6_2 = "prop_wheel_rim_02"
  SHX7_2 = "prop_car_exhaust_01"
  SHX8_2 = "lr_smod_car_seat_001"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX4_2[3] = SHX7_2
  SHX4_2[4] = SHX8_2
  return SHX4_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_40:: outside nested blocks until all 'goto SHX_LABEL_40' can see it
  ::SHX_LABEL_40::
  return SHX3_2
end
function SHX95_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX0_2 = {}
  SHX1_2 = {}
  function SHX2_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3
    SHX1_3 = type
    SHX2_3 = SHX0_3
    SHX1_3 = SHX1_3(SHX2_3)
    if "string" ~= SHX1_3 or "" == SHX0_3 then
      return
    end
    SHX1_3 = SHX0_2
    SHX1_3 = SHX1_3[SHX0_3]
    if SHX1_3 then
      return
    end
    SHX1_3 = SHX0_2
    SHX1_3[SHX0_3] = true
    SHX1_3 = SHX1_2
    SHX1_3 = #SHX1_3
    SHX2_3 = SHX1_3 + 1
    SHX1_3 = SHX1_2
    SHX1_3[SHX2_3] = SHX0_3
  end
  SHX3_2 = SHX0_1.debrisLayoutGroups
  SHX4_2 = type
  SHX5_2 = SHX3_2
  SHX4_2 = SHX4_2(SHX5_2)
  if "table" == SHX4_2 then
    SHX4_2 = pairs
    SHX5_2 = SHX3_2
    SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
    for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
      SHX10_2 = type
      SHX11_2 = SHX9_2
      SHX10_2 = SHX10_2(SHX11_2)
      if "table" == SHX10_2 then
        SHX10_2 = type
        SHX11_2 = SHX9_2.secondaryModels
        SHX10_2 = SHX10_2(SHX11_2)
        if "table" == SHX10_2 then
          SHX10_2 = ipairs
          SHX11_2 = SHX9_2.secondaryModels
          SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX10_2(SHX11_2)
          for SHX14_2, SHX15_2 in SHX10_2, SHX11_2, SHX12_2, SHX13_2 do
            SHX16_2 = SHX2_2
            SHX17_2 = SHX15_2
            SHX16_2(SHX17_2)
          end
        end
      end
    end
  end
  SHX4_2 = ipairs
  SHX5_2 = SHX94_1
  SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2 = SHX5_2()
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    SHX10_2 = SHX2_2
    SHX11_2 = SHX9_2
    SHX10_2(SHX11_2)
  end
  SHX4_2 = #SHX1_2
  if SHX4_2 < 1 then
    SHX4_2 = {}
    SHX5_2 = "prop_rub_carpart_02"
    SHX4_2[1] = SHX5_2
    return SHX4_2
  end
  return SHX1_2
end
function SHX96_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = "secondarySlot"
  SHX2_2 = SHX0_2
  SHX3_2 = "ModelIdx"
  SHX1_2 = SHX1_2 .. SHX2_2 .. SHX3_2
  return SHX1_2
end
function SHX97_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX2_2 = SHX1_2 or nil
  if not SHX1_2 then
    SHX2_2 = SHX95_1
    SHX2_2 = SHX2_2()
  end
  SHX3_2 = #SHX2_2
  if SHX3_2 < 1 then
    SHX4_2 = "prop_rub_carpart_02"
    return SHX4_2
  end
  SHX4_2 = SHX96_1
  SHX5_2 = SHX0_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = math
  SHX5_2 = SHX5_2.max
  SHX6_2 = 1
  SHX7_2 = math
  SHX7_2 = SHX7_2.min
  SHX8_2 = SHX3_2
  SHX9_2 = math
  SHX9_2 = SHX9_2.floor
  SHX10_2 = tonumber
  SHX11_2 = SHX82_1
  SHX11_2 = SHX11_2[SHX4_2]
  SHX10_2 = SHX10_2(SHX11_2)
  if not SHX10_2 then
    SHX10_2 = 1
  end
  SHX9_2, SHX10_2, SHX11_2 = SHX9_2(SHX10_2)
  SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX6_2 = SHX82_1
  SHX6_2[SHX4_2] = SHX5_2
  SHX6_2 = SHX2_2[SHX5_2]
  return SHX6_2
end
function SHX98_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX1_2 = {}
  SHX2_2 = SHX0_2 or SHX2_2
  if not SHX0_2 then
    SHX2_2 = SHX95_1
    SHX2_2 = SHX2_2()
  end
  SHX3_2 = 1
  SHX4_2 = 4
  SHX5_2 = 1
  for SHX6_2 = SHX3_2, SHX4_2, SHX5_2 do
    SHX7_2 = SHX97_1
    SHX8_2 = SHX6_2
    SHX9_2 = SHX2_2
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
    SHX8_2 = SHX47_1
    SHX9_2 = SHX7_2
    SHX10_2 = SHX83_1.mainModelName
    SHX11_2 = SHX6_2
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2)
    SHX1_2[SHX6_2] = SHX8_2
  end
  return SHX1_2
end
function SHX99_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX48_1
  SHX2_2 = SHX0_2
  return SHX1_2(SHX2_2)
end
function SHX100_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX0_2 = SHX83_1.flatbedVeh
  if 0 ~= SHX0_2 then
    SHX1_2 = DoesEntityExist
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      goto SHX_LABEL_10
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX1_2 = SHX83_1.mainEnt
  if 0 ~= SHX1_2 then
    SHX2_2 = DoesEntityExist
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      goto SHX_LABEL_19
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_19:: outside nested blocks until all 'goto SHX_LABEL_19' can see it
  ::SHX_LABEL_19::
  SHX2_2 = SHX83_1.mainFlatbedAttach
  SHX3_2 = type
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if "table" ~= SHX3_2 then
    return
  end
  SHX3_2 = tonumber
  SHX4_2 = SHX0_1.debrisMainFlatbedBone
  SHX3_2 = SHX3_2(SHX4_2)
  if not SHX3_2 then
    SHX3_2 = 20
  end
  SHX4_2 = DetachEntity
  SHX5_2 = SHX1_2
  SHX6_2 = true
  SHX7_2 = true
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = AttachEntityToEntity
  SHX5_2 = SHX1_2
  SHX6_2 = SHX0_2
  SHX7_2 = SHX3_2
  SHX8_2 = SHX2_2.ox
  SHX9_2 = SHX2_2.oy
  SHX10_2 = SHX2_2.oz
  SHX11_2 = SHX2_2.rx
  SHX12_2 = SHX2_2.ry
  SHX13_2 = SHX2_2.rz
  SHX14_2 = false
  SHX15_2 = false
  SHX16_2 = false
  SHX17_2 = false
  SHX18_2 = 2
  SHX19_2 = true
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
  SHX4_2 = SetEntityCollision
  SHX5_2 = SHX1_2
  SHX6_2 = false
  SHX7_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
end
function SHX101_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2
  SHX0_2 = SHX83_1.flatbedVeh
  if 0 ~= SHX0_2 then
    SHX1_2 = DoesEntityExist
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      goto SHX_LABEL_10
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX1_2 = SHX100_1
  SHX1_2()
  SHX1_2 = tonumber
  SHX2_2 = SHX0_1.debrisSecondaryFlatbedBone
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = tonumber
    SHX2_2 = SHX0_1.debrisMainFlatbedBone
    SHX1_2 = SHX1_2(SHX2_2)
    if not SHX1_2 then
      SHX1_2 = 20
    end
  end
  SHX2_2 = 1
  SHX3_2 = 4
  SHX4_2 = 1
  for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = SHX83_1.slotEnts
    SHX6_2 = SHX6_2[SHX5_2]
    SHX7_2 = SHX83_1.flatbedAttach
    if SHX7_2 then
      SHX7_2 = SHX83_1.flatbedAttach
      SHX7_2 = SHX7_2[SHX5_2]
    end
    if SHX6_2 and 0 ~= SHX6_2 then
      SHX8_2 = DoesEntityExist
      SHX9_2 = SHX6_2
      SHX8_2 = SHX8_2(SHX9_2)
      if SHX8_2 and SHX7_2 then
        SHX8_2 = DetachEntity
        SHX9_2 = SHX6_2
        SHX10_2 = true
        SHX11_2 = true
        SHX8_2(SHX9_2, SHX10_2, SHX11_2)
        SHX8_2 = AttachEntityToEntity
        SHX9_2 = SHX6_2
        SHX10_2 = SHX0_2
        SHX11_2 = SHX1_2
        SHX12_2 = SHX7_2.ox
        SHX13_2 = SHX7_2.oy
        SHX14_2 = SHX7_2.oz
        SHX15_2 = SHX7_2.rx
        SHX16_2 = SHX7_2.ry
        SHX17_2 = SHX7_2.rz
        SHX18_2 = false
        SHX19_2 = false
        SHX20_2 = false
        SHX21_2 = false
        SHX22_2 = 2
        SHX23_2 = true
        SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
        SHX8_2 = SetEntityCollision
        SHX9_2 = SHX6_2
        SHX10_2 = false
        SHX11_2 = false
        SHX8_2(SHX9_2, SHX10_2, SHX11_2)
      end
    end
  end
end
function SHX102_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = SHX95_1
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX97_1
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = SHX46_1
  SHX4_2 = SHX2_2
  SHX5_2 = SHX83_1.mainModelName
  SHX6_2 = SHX0_2
  return SHX3_2(SHX4_2, SHX5_2, SHX6_2)
end
function SHX103_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX1_2 = SHX83_1.active
  if not SHX1_2 then
    return
  end
  if SHX0_2 < 1 or SHX0_2 > 4 then
    return
  end
  SHX1_2 = SHX83_1.kind
  if "ground" ~= SHX1_2 and "flatbed" ~= SHX1_2 then
    return
  end
  SHX2_2 = SHX95_1
  SHX2_2 = SHX2_2()
  SHX3_2 = SHX97_1
  SHX4_2 = SHX0_2
  SHX5_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX4_2 = GetHashKey
  SHX5_2 = SHX3_2
  SHX4_2 = SHX4_2(SHX5_2)
  if not SHX4_2 or 0 == SHX4_2 then
    return
  end
  SHX5_2 = SHX83_1.slotEnts
  SHX5_2 = SHX5_2[SHX0_2]
  if SHX5_2 and 0 ~= SHX5_2 then
    SHX6_2 = DoesEntityExist
    SHX7_2 = SHX5_2
    SHX6_2 = SHX6_2(SHX7_2)
    if SHX6_2 then
      SHX6_2 = GetEntityModel
      SHX7_2 = SHX5_2
      SHX6_2 = SHX6_2(SHX7_2)
      if SHX6_2 == SHX4_2 then
        return
      end
    end
  end
  if "flatbed" == SHX1_2 then
    SHX6_2 = SHX83_1.flatbedVeh
    if 0 ~= SHX6_2 then
      SHX7_2 = DoesEntityExist
      SHX8_2 = SHX6_2
      SHX7_2 = SHX7_2(SHX8_2)
      if SHX7_2 then
        goto SHX_LABEL_58
      end
    end
    return
    -- [FIX IF ERROR] Move ::SHX_LABEL_58:: outside nested blocks until all 'goto SHX_LABEL_58' can see it
    ::SHX_LABEL_58::
    if SHX5_2 and 0 ~= SHX5_2 then
      SHX7_2 = DoesEntityExist
      SHX8_2 = SHX5_2
      SHX7_2 = SHX7_2(SHX8_2)
      if SHX7_2 then
        SHX7_2 = DetachEntity
        SHX8_2 = SHX5_2
        SHX9_2 = true
        SHX10_2 = true
        SHX7_2(SHX8_2, SHX9_2, SHX10_2)
        SHX7_2 = SetEntityAsMissionEntity
        SHX8_2 = SHX5_2
        SHX9_2 = true
        SHX10_2 = true
        SHX7_2(SHX8_2, SHX9_2, SHX10_2)
        SHX7_2 = DeleteObject
        SHX8_2 = SHX5_2
        SHX7_2(SHX8_2)
      end
    end
    SHX7_2 = SHX83_1.slotEnts
    SHX7_2[SHX0_2] = nil
    SHX7_2 = SHX83_1.flatbedAttach
    if SHX7_2 then
      SHX7_2 = SHX83_1.flatbedAttach
      SHX8_2 = SHX47_1
      SHX9_2 = SHX3_2
      SHX10_2 = SHX83_1.mainModelName
      SHX11_2 = SHX0_2
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2)
      SHX7_2[SHX0_2] = SHX8_2
    end
    SHX7_2 = GetEntityCoords
    SHX8_2 = SHX6_2
    SHX9_2 = true
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
    SHX8_2 = CMG
    SHX8_2 = SHX8_2.loadModel
    SHX9_2 = SHX4_2
    SHX8_2(SHX9_2)
    SHX8_2 = CreateObject
    SHX9_2 = SHX4_2
    SHX10_2 = SHX7_2.x
    SHX11_2 = SHX7_2.y
    SHX12_2 = SHX7_2.z
    SHX12_2 = SHX12_2 + 0.5
    SHX13_2 = false
    SHX14_2 = false
    SHX15_2 = false
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    if 0 ~= SHX8_2 then
      SHX9_2 = DoesEntityExist
      SHX10_2 = SHX8_2
      SHX9_2 = SHX9_2(SHX10_2)
      if SHX9_2 then
        SHX9_2 = SHX83_1.slotEnts
        SHX9_2[SHX0_2] = SHX8_2
      end
    end
    SHX9_2 = SetModelAsNoLongerNeeded
    SHX10_2 = SHX4_2
    SHX9_2(SHX10_2)
    SHX9_2 = SHX101_1
    SHX9_2()
    return
  end
  SHX6_2 = SHX83_1.anchor
  if not SHX6_2 then
    return
  end
  SHX7_2 = tonumber
  SHX8_2 = SHX83_1.baseZ
  SHX7_2 = SHX7_2(SHX8_2)
  if not SHX7_2 then
    SHX7_2 = 0.0
  end
  SHX8_2 = nil
  SHX9_2 = nil
  SHX10_2 = nil
  SHX11_2 = nil
  if SHX5_2 and 0 ~= SHX5_2 then
    SHX12_2 = DoesEntityExist
    SHX13_2 = SHX5_2
    SHX12_2 = SHX12_2(SHX13_2)
    if SHX12_2 then
      SHX12_2 = GetEntityCoords
      SHX13_2 = SHX5_2
      SHX14_2 = true
      SHX12_2 = SHX12_2(SHX13_2, SHX14_2)
      SHX13_2 = SHX12_2.x
      SHX14_2 = SHX12_2.y
      SHX10_2 = SHX12_2.z
      SHX9_2 = SHX14_2
      SHX8_2 = SHX13_2
      SHX13_2 = GetEntityHeading
      SHX14_2 = SHX5_2
      SHX13_2 = SHX13_2(SHX14_2)
      SHX11_2 = SHX13_2
      SHX13_2 = SetEntityAsMissionEntity
      SHX14_2 = SHX5_2
      SHX15_2 = true
      SHX16_2 = true
      SHX13_2(SHX14_2, SHX15_2, SHX16_2)
      SHX13_2 = DeleteObject
      SHX14_2 = SHX5_2
      SHX13_2(SHX14_2)
  end
  else
    SHX12_2 = SHX90_1
    SHX12_2 = SHX12_2()
    SHX13_2 = SHX102_1
    SHX14_2 = SHX0_2
    SHX13_2 = SHX13_2(SHX14_2)
    SHX14_2 = SHX45_1
    SHX15_2 = SHX13_2.dx
    SHX16_2 = SHX13_2.dy
    SHX17_2 = SHX12_2
    SHX14_2, SHX15_2 = SHX14_2(SHX15_2, SHX16_2, SHX17_2)
    SHX16_2 = SHX6_2.x
    SHX8_2 = SHX16_2 + SHX14_2
    SHX16_2 = SHX6_2.y
    SHX9_2 = SHX16_2 + SHX15_2
    SHX16_2 = SHX13_2.dz
    SHX10_2 = SHX7_2 + SHX16_2
    SHX16_2 = SHX13_2.h
    SHX11_2 = SHX16_2 + SHX12_2
  end
  SHX12_2 = SHX83_1.slotEnts
  SHX12_2[SHX0_2] = nil
  SHX12_2 = CMG
  SHX12_2 = SHX12_2.loadModel
  SHX13_2 = SHX4_2
  SHX12_2(SHX13_2)
  SHX12_2 = CreateObject
  SHX13_2 = SHX4_2
  SHX14_2 = SHX8_2
  SHX15_2 = SHX9_2
  SHX16_2 = SHX10_2
  SHX17_2 = false
  SHX18_2 = false
  SHX19_2 = false
  SHX12_2 = SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
  if 0 ~= SHX12_2 then
    SHX13_2 = DoesEntityExist
    SHX14_2 = SHX12_2
    SHX13_2 = SHX13_2(SHX14_2)
    if SHX13_2 then
      SHX13_2 = SetEntityHeading
      SHX14_2 = SHX12_2
      SHX15_2 = SHX11_2
      SHX13_2(SHX14_2, SHX15_2)
      SHX13_2 = FreezeEntityPosition
      SHX14_2 = SHX12_2
      SHX15_2 = false
      SHX13_2(SHX14_2, SHX15_2)
      SHX13_2 = SetEntityCollision
      SHX14_2 = SHX12_2
      SHX15_2 = false
      SHX16_2 = false
      SHX13_2(SHX14_2, SHX15_2, SHX16_2)
      SHX13_2 = SHX83_1.slotEnts
      SHX13_2[SHX0_2] = SHX12_2
    end
  end
  SHX13_2 = SetModelAsNoLongerNeeded
  SHX14_2 = SHX4_2
  SHX13_2(SHX14_2)
end
function SHX104_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2
  SHX0_2 = SHX88_1
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    return
  end
  SHX0_2 = SHX92_1
  SHX0_2()
  SHX0_2 = SHX93_1
  SHX0_2 = SHX0_2()
  SHX1_2 = math
  SHX1_2 = SHX1_2.max
  SHX2_2 = 1
  SHX3_2 = math
  SHX3_2 = SHX3_2.min
  SHX4_2 = #SHX0_2
  SHX5_2 = math
  SHX5_2 = SHX5_2.floor
  SHX6_2 = SHX82_1.mainModelIndex
  if not SHX6_2 then
    SHX6_2 = 1
  end
  SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2 = SHX5_2(SHX6_2)
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2)
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2)
  SHX82_1.mainModelIndex = SHX1_2
  SHX2_2 = SHX0_2[SHX1_2]
  SHX83_1.mainModelName = SHX2_2
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerPed
  SHX3_2 = SHX3_2()
  SHX4_2 = GetEntityCoords
  SHX5_2 = SHX3_2
  SHX6_2 = true
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX5_2 = GetGroundZFor_3dCoord
  SHX6_2 = SHX4_2.x
  SHX7_2 = SHX4_2.y
  SHX8_2 = SHX4_2.z
  SHX8_2 = SHX8_2 + 50.0
  SHX9_2 = 0.0
  SHX10_2 = false
  SHX5_2, SHX6_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  if SHX6_2 and SHX6_2 > 0.0 then
    SHX7_2 = SHX6_2 + 0.05
    if SHX7_2 then
      goto SHX_LABEL_53
    end
  end
  SHX7_2 = SHX4_2.z
  -- [FIX IF ERROR] Move ::SHX_LABEL_53:: outside nested blocks until all 'goto SHX_LABEL_53' can see it
  ::SHX_LABEL_53::
  SHX83_1.baseZ = SHX7_2
  SHX7_2 = vector3
  SHX8_2 = SHX4_2.x
  SHX9_2 = SHX4_2.y
  SHX10_2 = SHX83_1.baseZ
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  SHX83_1.anchor = SHX7_2
  SHX7_2 = GetEntityHeading
  SHX8_2 = SHX3_2
  SHX7_2 = SHX7_2(SHX8_2)
  SHX8_2 = GetHashKey
  SHX9_2 = SHX2_2
  SHX8_2 = SHX8_2(SHX9_2)
  if not SHX8_2 or 0 == SHX8_2 then
    SHX9_2 = tCMG
    SHX9_2 = SHX9_2.notify
    SHX10_2 = "~r~Invalid main wreck model."
    SHX9_2(SHX10_2)
    return
  end
  SHX9_2 = CMG
  SHX9_2 = SHX9_2.loadModel
  SHX10_2 = SHX8_2
  SHX9_2(SHX10_2)
  SHX9_2 = CreateObject
  SHX10_2 = SHX8_2
  SHX11_2 = SHX83_1.anchor
  SHX11_2 = SHX11_2.x
  SHX12_2 = SHX83_1.anchor
  SHX12_2 = SHX12_2.y
  SHX13_2 = SHX83_1.baseZ
  SHX13_2 = SHX13_2 + 0.05
  SHX14_2 = false
  SHX15_2 = false
  SHX16_2 = false
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX83_1.mainEnt = SHX9_2
  SHX9_2 = SHX83_1.mainEnt
  if 0 ~= SHX9_2 then
    SHX9_2 = DoesEntityExist
    SHX10_2 = SHX83_1.mainEnt
    SHX9_2 = SHX9_2(SHX10_2)
    if SHX9_2 then
      goto SHX_LABEL_109
    end
  end
  SHX9_2 = tCMG
  SHX9_2 = SHX9_2.notify
  SHX10_2 = "~r~Failed to spawn main wreck."
  SHX9_2(SHX10_2)
  SHX9_2 = SetModelAsNoLongerNeeded
  SHX10_2 = SHX8_2
  SHX9_2(SHX10_2)
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_109:: outside nested blocks until all 'goto SHX_LABEL_109' can see it
  ::SHX_LABEL_109::
  SHX9_2 = SetEntityHeading
  SHX10_2 = SHX83_1.mainEnt
  SHX11_2 = SHX7_2
  SHX9_2(SHX10_2, SHX11_2)
  SHX9_2 = PlaceObjectOnGroundProperly
  SHX10_2 = SHX83_1.mainEnt
  SHX9_2(SHX10_2)
  SHX9_2 = SetEntityCollision
  SHX10_2 = SHX83_1.mainEnt
  SHX11_2 = false
  SHX12_2 = false
  SHX9_2(SHX10_2, SHX11_2, SHX12_2)
  SHX9_2 = GetEntityCoords
  SHX10_2 = SHX83_1.mainEnt
  SHX11_2 = true
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
  SHX10_2 = vector3
  SHX11_2 = SHX9_2.x
  SHX12_2 = SHX9_2.y
  SHX13_2 = SHX83_1.baseZ
  SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
  SHX83_1.anchor = SHX10_2
  SHX10_2 = SetModelAsNoLongerNeeded
  SHX11_2 = SHX8_2
  SHX10_2(SHX11_2)
  SHX10_2 = GetEntityHeading
  SHX11_2 = SHX83_1.mainEnt
  SHX10_2 = SHX10_2(SHX11_2)
  SHX11_2 = SHX95_1
  SHX11_2 = SHX11_2()
  SHX12_2 = 1
  SHX13_2 = 4
  SHX14_2 = 1
  for SHX15_2 = SHX12_2, SHX13_2, SHX14_2 do
    SHX16_2 = SHX102_1
    SHX17_2 = SHX15_2
    SHX16_2 = SHX16_2(SHX17_2)
    SHX17_2 = SHX45_1
    SHX18_2 = SHX16_2.dx
    SHX19_2 = SHX16_2.dy
    SHX20_2 = SHX10_2
    SHX17_2, SHX18_2 = SHX17_2(SHX18_2, SHX19_2, SHX20_2)
    SHX19_2 = SHX83_1.anchor
    SHX19_2 = SHX19_2.x
    SHX19_2 = SHX19_2 + SHX17_2
    SHX20_2 = SHX83_1.anchor
    SHX20_2 = SHX20_2.y
    SHX20_2 = SHX20_2 + SHX18_2
    SHX21_2 = SHX83_1.baseZ
    SHX22_2 = SHX16_2.dz
    SHX21_2 = SHX21_2 + SHX22_2
    SHX22_2 = SHX97_1
    SHX23_2 = SHX15_2
    SHX24_2 = SHX11_2
    SHX22_2 = SHX22_2(SHX23_2, SHX24_2)
    SHX23_2 = GetHashKey
    SHX24_2 = SHX22_2
    SHX23_2 = SHX23_2(SHX24_2)
    if SHX23_2 and 0 ~= SHX23_2 then
      SHX24_2 = CMG
      SHX24_2 = SHX24_2.loadModel
      SHX25_2 = SHX23_2
      SHX24_2(SHX25_2)
      SHX24_2 = CreateObject
      SHX25_2 = SHX23_2
      SHX26_2 = SHX19_2
      SHX27_2 = SHX20_2
      SHX28_2 = SHX21_2
      SHX29_2 = false
      SHX30_2 = false
      SHX31_2 = false
      SHX24_2 = SHX24_2(SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2)
      if 0 ~= SHX24_2 then
        SHX25_2 = DoesEntityExist
        SHX26_2 = SHX24_2
        SHX25_2 = SHX25_2(SHX26_2)
        if SHX25_2 then
          SHX25_2 = SetEntityHeading
          SHX26_2 = SHX24_2
          SHX27_2 = SHX16_2.h
          SHX27_2 = SHX27_2 + SHX10_2
          SHX25_2(SHX26_2, SHX27_2)
          SHX25_2 = PlaceObjectOnGroundProperly
          SHX26_2 = SHX24_2
          SHX25_2(SHX26_2)
          SHX25_2 = FreezeEntityPosition
          SHX26_2 = SHX24_2
          SHX27_2 = false
          SHX25_2(SHX26_2, SHX27_2)
          SHX25_2 = SetEntityCollision
          SHX26_2 = SHX24_2
          SHX27_2 = false
          SHX28_2 = false
          SHX25_2(SHX26_2, SHX27_2, SHX28_2)
          SHX25_2 = SHX83_1.slotEnts
          SHX25_2[SHX15_2] = SHX24_2
        end
      end
      SHX25_2 = SetModelAsNoLongerNeeded
      SHX26_2 = SHX23_2
      SHX25_2(SHX26_2)
    end
  end
  SHX83_1.kind = "ground"
  SHX83_1.flatbedVeh = 0
  SHX83_1.flatbedAttach = nil
  SHX83_1.active = true
  SHX12_2 = tCMG
  SHX12_2 = SHX12_2.notify
  SHX13_2 = "~g~Ground layout spawned (collision off). Print \226\134\146 cfg.debrisLayoutGroups[mainModel].secondaryOffsets."
  SHX12_2(SHX13_2)
end
function SHX105_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2
  SHX0_2 = SHX88_1
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    return
  end
  SHX0_2 = SHX71_1
  SHX0_2 = SHX0_2()
  if 0 ~= SHX0_2 then
    SHX1_2 = GetEntityModel
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    SHX2_2 = SHX10_1
    SHX1_2 = SHX2_2[SHX1_2]
    if SHX1_2 then
      goto SHX_LABEL_22
    end
  end
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.notify
  SHX2_2 = "~r~Sit in your Mechanic flatbed driver seat to tune bed attach offsets."
  SHX1_2(SHX2_2)
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_22:: outside nested blocks until all 'goto SHX_LABEL_22' can see it
  ::SHX_LABEL_22::
  SHX1_2 = SHX92_1
  SHX1_2()
  SHX83_1.flatbedVeh = SHX0_2
  SHX1_2 = SHX93_1
  SHX1_2 = SHX1_2()
  SHX2_2 = math
  SHX2_2 = SHX2_2.max
  SHX3_2 = 1
  SHX4_2 = math
  SHX4_2 = SHX4_2.min
  SHX5_2 = #SHX1_2
  SHX6_2 = math
  SHX6_2 = SHX6_2.floor
  SHX7_2 = SHX82_1.mainModelIndex
  if not SHX7_2 then
    SHX7_2 = 1
  end
  SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2 = SHX6_2(SHX7_2)
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
  SHX82_1.mainModelIndex = SHX2_2
  SHX3_2 = SHX1_2[SHX2_2]
  SHX83_1.mainModelName = SHX3_2
  SHX4_2 = SHX95_1
  SHX4_2 = SHX4_2()
  SHX5_2 = SHX98_1
  SHX6_2 = SHX4_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX83_1.flatbedAttach = SHX5_2
  SHX5_2 = SHX99_1
  SHX6_2 = SHX3_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX83_1.mainFlatbedAttach = SHX5_2
  SHX5_2 = GetHashKey
  SHX6_2 = SHX3_2
  SHX5_2 = SHX5_2(SHX6_2)
  if not SHX5_2 or 0 == SHX5_2 then
    SHX6_2 = tCMG
    SHX6_2 = SHX6_2.notify
    SHX7_2 = "~r~Invalid main wreck model."
    SHX6_2(SHX7_2)
    SHX6_2 = SHX92_1
    SHX6_2()
    return
  end
  SHX6_2 = GetEntityCoords
  SHX7_2 = SHX0_2
  SHX8_2 = true
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.loadModel
  SHX8_2 = SHX5_2
  SHX7_2(SHX8_2)
  SHX7_2 = CreateObject
  SHX8_2 = SHX5_2
  SHX9_2 = SHX6_2.x
  SHX10_2 = SHX6_2.y
  SHX11_2 = SHX6_2.z
  SHX11_2 = SHX11_2 + 0.5
  SHX12_2 = false
  SHX13_2 = false
  SHX14_2 = false
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX83_1.mainEnt = SHX7_2
  SHX7_2 = SHX83_1.mainEnt
  if 0 ~= SHX7_2 then
    SHX7_2 = DoesEntityExist
    SHX8_2 = SHX83_1.mainEnt
    SHX7_2 = SHX7_2(SHX8_2)
    if SHX7_2 then
      goto SHX_LABEL_107
    end
  end
  SHX7_2 = tCMG
  SHX7_2 = SHX7_2.notify
  SHX8_2 = "~r~Failed to spawn main wreck."
  SHX7_2(SHX8_2)
  SHX7_2 = SetModelAsNoLongerNeeded
  SHX8_2 = SHX5_2
  SHX7_2(SHX8_2)
  SHX7_2 = SHX92_1
  SHX7_2()
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_107:: outside nested blocks until all 'goto SHX_LABEL_107' can see it
  ::SHX_LABEL_107::
  SHX7_2 = SetModelAsNoLongerNeeded
  SHX8_2 = SHX5_2
  SHX7_2(SHX8_2)
  SHX83_1.kind = "flatbed"
  SHX7_2 = 1
  SHX8_2 = 4
  SHX9_2 = 1
  for SHX10_2 = SHX7_2, SHX8_2, SHX9_2 do
    SHX11_2 = SHX97_1
    SHX12_2 = SHX10_2
    SHX13_2 = SHX4_2
    SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
    SHX12_2 = GetHashKey
    SHX13_2 = SHX11_2
    SHX12_2 = SHX12_2(SHX13_2)
    SHX13_2 = SHX83_1.flatbedAttach
    SHX13_2 = SHX13_2[SHX10_2]
    if SHX12_2 and 0 ~= SHX12_2 and SHX13_2 then
      SHX14_2 = CMG
      SHX14_2 = SHX14_2.loadModel
      SHX15_2 = SHX12_2
      SHX14_2(SHX15_2)
      SHX14_2 = CreateObject
      SHX15_2 = SHX12_2
      SHX16_2 = SHX6_2.x
      SHX17_2 = SHX6_2.y
      SHX18_2 = SHX6_2.z
      SHX18_2 = SHX18_2 + 0.5
      SHX19_2 = false
      SHX20_2 = false
      SHX21_2 = false
      SHX14_2 = SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
      if 0 ~= SHX14_2 then
        SHX15_2 = DoesEntityExist
        SHX16_2 = SHX14_2
        SHX15_2 = SHX15_2(SHX16_2)
        if SHX15_2 then
          SHX15_2 = SHX83_1.slotEnts
          SHX15_2[SHX10_2] = SHX14_2
        end
      end
      SHX15_2 = SetModelAsNoLongerNeeded
      SHX16_2 = SHX12_2
      SHX15_2(SHX16_2)
    end
  end
  SHX7_2 = SHX101_1
  SHX7_2()
  SHX83_1.active = true
  SHX7_2 = tCMG
  SHX7_2 = SHX7_2.notify
  SHX8_2 = "~g~Main wreck + four props on flatbed (collision off). Nudge = ox/oy/oz; Heading \194\177 = rz. Print \226\134\146 cfg.debrisLayoutGroups[mainModel].secondaryFlatbedAttach."
  SHX7_2(SHX8_2)
end
function SHX106_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = SHX83_1.kind
  if "flatbed" == SHX0_2 then
    SHX0_2 = math
    SHX0_2 = SHX0_2.max
    SHX1_2 = 0
    SHX2_2 = math
    SHX2_2 = SHX2_2.min
    SHX3_2 = 4
    SHX4_2 = math
    SHX4_2 = SHX4_2.floor
    SHX5_2 = tonumber
    SHX6_2 = SHX82_1.selectedIndex
    SHX5_2 = SHX5_2(SHX6_2)
    if not SHX5_2 then
      SHX5_2 = 0
    end
    SHX4_2, SHX5_2, SHX6_2 = SHX4_2(SHX5_2)
    SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    if 0 == SHX0_2 then
      SHX1_2 = SHX83_1.mainEnt
      return SHX1_2
    end
    SHX1_2 = SHX83_1.slotEnts
    SHX1_2 = SHX1_2[SHX0_2]
    if not SHX1_2 then
      SHX1_2 = 0
    end
    return SHX1_2
  end
  SHX0_2 = math
  SHX0_2 = SHX0_2.max
  SHX1_2 = 0
  SHX2_2 = math
  SHX2_2 = SHX2_2.min
  SHX3_2 = 4
  SHX4_2 = math
  SHX4_2 = SHX4_2.floor
  SHX5_2 = SHX82_1.selectedIndex
  if not SHX5_2 then
    SHX5_2 = 0
  end
  SHX4_2, SHX5_2, SHX6_2 = SHX4_2(SHX5_2)
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  if 0 == SHX0_2 then
    SHX1_2 = SHX83_1.mainEnt
    return SHX1_2
  end
  SHX1_2 = SHX83_1.slotEnts
  SHX1_2 = SHX1_2[SHX0_2]
  if not SHX1_2 then
    SHX1_2 = 0
  end
  return SHX1_2
end
function SHX107_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX3_2 = SHX83_1.kind
  if "flatbed" == SHX3_2 then
    SHX3_2 = math
    SHX3_2 = SHX3_2.max
    SHX4_2 = 0
    SHX5_2 = math
    SHX5_2 = SHX5_2.min
    SHX6_2 = 4
    SHX7_2 = math
    SHX7_2 = SHX7_2.floor
    SHX8_2 = tonumber
    SHX9_2 = SHX82_1.selectedIndex
    SHX8_2 = SHX8_2(SHX9_2)
    if not SHX8_2 then
      SHX8_2 = 0
    end
    SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX7_2(SHX8_2)
    SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    if 0 == SHX3_2 then
      SHX4_2 = SHX83_1.mainFlatbedAttach
      SHX5_2 = SHX83_1.mainEnt
      if SHX4_2 and 0 ~= SHX5_2 then
        SHX6_2 = DoesEntityExist
        SHX7_2 = SHX5_2
        SHX6_2 = SHX6_2(SHX7_2)
        if SHX6_2 then
          goto SHX_LABEL_35
        end
      end
      return
      -- [FIX IF ERROR] Move ::SHX_LABEL_35:: outside nested blocks until all 'goto SHX_LABEL_35' can see it
      ::SHX_LABEL_35::
      SHX6_2 = tonumber
      SHX7_2 = SHX82_1.step
      SHX6_2 = SHX6_2(SHX7_2)
      if not SHX6_2 then
        SHX6_2 = 0.1
      end
      SHX7_2 = SHX4_2.ox
      SHX8_2 = SHX0_2 or SHX8_2
      if not SHX0_2 then
        SHX8_2 = 0.0
      end
      SHX8_2 = SHX8_2 * SHX6_2
      SHX7_2 = SHX7_2 + SHX8_2
      SHX4_2.ox = SHX7_2
      SHX7_2 = SHX4_2.oy
      SHX8_2 = SHX1_2 or SHX8_2
      if not SHX1_2 then
        SHX8_2 = 0.0
      end
      SHX8_2 = SHX8_2 * SHX6_2
      SHX7_2 = SHX7_2 + SHX8_2
      SHX4_2.oy = SHX7_2
      SHX7_2 = SHX4_2.oz
      SHX8_2 = SHX2_2 or SHX8_2
      if not SHX2_2 then
        SHX8_2 = 0.0
      end
      SHX8_2 = SHX8_2 * SHX6_2
      SHX7_2 = SHX7_2 + SHX8_2
      SHX4_2.oz = SHX7_2
      SHX7_2 = SHX100_1
      SHX7_2()
      return
    end
    SHX4_2 = SHX83_1.flatbedAttach
    if SHX4_2 then
      SHX4_2 = SHX83_1.flatbedAttach
      SHX4_2 = SHX4_2[SHX3_2]
    end
    SHX5_2 = SHX83_1.slotEnts
    SHX5_2 = SHX5_2[SHX3_2]
    if SHX4_2 and 0 ~= SHX5_2 then
      SHX6_2 = DoesEntityExist
      SHX7_2 = SHX5_2
      SHX6_2 = SHX6_2(SHX7_2)
      if SHX6_2 then
        goto SHX_LABEL_88
      end
    end
    return
    -- [FIX IF ERROR] Move ::SHX_LABEL_88:: outside nested blocks until all 'goto SHX_LABEL_88' can see it
    ::SHX_LABEL_88::
    SHX6_2 = tonumber
    SHX7_2 = SHX82_1.step
    SHX6_2 = SHX6_2(SHX7_2)
    if not SHX6_2 then
      SHX6_2 = 0.1
    end
    SHX7_2 = SHX4_2.ox
    SHX8_2 = SHX0_2 or SHX8_2
    if not SHX0_2 then
      SHX8_2 = 0.0
    end
    SHX8_2 = SHX8_2 * SHX6_2
    SHX7_2 = SHX7_2 + SHX8_2
    SHX4_2.ox = SHX7_2
    SHX7_2 = SHX4_2.oy
    SHX8_2 = SHX1_2 or SHX8_2
    if not SHX1_2 then
      SHX8_2 = 0.0
    end
    SHX8_2 = SHX8_2 * SHX6_2
    SHX7_2 = SHX7_2 + SHX8_2
    SHX4_2.oy = SHX7_2
    SHX7_2 = SHX4_2.oz
    SHX8_2 = SHX2_2 or SHX8_2
    if not SHX2_2 then
      SHX8_2 = 0.0
    end
    SHX8_2 = SHX8_2 * SHX6_2
    SHX7_2 = SHX7_2 + SHX8_2
    SHX4_2.oz = SHX7_2
    SHX7_2 = SHX101_1
    SHX7_2()
    return
  end
  SHX3_2 = SHX106_1
  SHX3_2 = SHX3_2()
  if 0 ~= SHX3_2 then
    SHX4_2 = DoesEntityExist
    SHX5_2 = SHX3_2
    SHX4_2 = SHX4_2(SHX5_2)
    if SHX4_2 then
      goto SHX_LABEL_134
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_134:: outside nested blocks until all 'goto SHX_LABEL_134' can see it
  ::SHX_LABEL_134::
  SHX4_2 = tonumber
  SHX5_2 = SHX82_1.step
  SHX4_2 = SHX4_2(SHX5_2)
  if not SHX4_2 then
    SHX4_2 = 0.1
  end
  SHX5_2 = SHX91_1
  SHX6_2 = SHX0_2 * SHX4_2
  SHX7_2 = SHX1_2 * SHX4_2
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
  SHX6_2 = GetEntityCoords
  SHX7_2 = SHX3_2
  SHX8_2 = true
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  SHX7_2 = SetEntityCoordsNoOffset
  SHX8_2 = SHX3_2
  SHX9_2 = SHX6_2.x
  SHX10_2 = SHX5_2.x
  SHX9_2 = SHX9_2 + SHX10_2
  SHX10_2 = SHX6_2.y
  SHX11_2 = SHX5_2.y
  SHX10_2 = SHX10_2 + SHX11_2
  SHX11_2 = SHX6_2.z
  SHX12_2 = SHX5_2.z
  SHX11_2 = SHX11_2 + SHX12_2
  SHX12_2 = SHX2_2 or SHX12_2
  if not SHX2_2 then
    SHX12_2 = 0.0
  end
  SHX12_2 = SHX12_2 * SHX4_2
  SHX11_2 = SHX11_2 + SHX12_2
  SHX12_2 = false
  SHX13_2 = false
  SHX14_2 = false
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
end
function SHX108_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = SHX83_1.kind
  if "flatbed" == SHX1_2 then
    SHX1_2 = math
    SHX1_2 = SHX1_2.max
    SHX2_2 = 0
    SHX3_2 = math
    SHX3_2 = SHX3_2.min
    SHX4_2 = 4
    SHX5_2 = math
    SHX5_2 = SHX5_2.floor
    SHX6_2 = tonumber
    SHX7_2 = SHX82_1.selectedIndex
    SHX6_2 = SHX6_2(SHX7_2)
    if not SHX6_2 then
      SHX6_2 = 0
    end
    SHX5_2, SHX6_2, SHX7_2 = SHX5_2(SHX6_2)
    SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
    if 0 == SHX1_2 then
      SHX2_2 = SHX83_1.mainFlatbedAttach
      if not SHX2_2 then
        return
      end
      SHX3_2 = SHX2_2.rz
      SHX3_2 = SHX3_2 + SHX0_2
      SHX2_2.rz = SHX3_2
      SHX3_2 = SHX100_1
      SHX3_2()
      return
    end
    SHX2_2 = SHX83_1.flatbedAttach
    if SHX2_2 then
      SHX2_2 = SHX83_1.flatbedAttach
      SHX2_2 = SHX2_2[SHX1_2]
    end
    if not SHX2_2 then
      return
    end
    SHX3_2 = SHX2_2.rz
    SHX3_2 = SHX3_2 + SHX0_2
    SHX2_2.rz = SHX3_2
    SHX3_2 = SHX101_1
    SHX3_2()
    return
  end
  SHX1_2 = SHX106_1
  SHX1_2 = SHX1_2()
  if 0 ~= SHX1_2 then
    SHX2_2 = DoesEntityExist
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      goto SHX_LABEL_59
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_59:: outside nested blocks until all 'goto SHX_LABEL_59' can see it
  ::SHX_LABEL_59::
  SHX2_2 = SetEntityHeading
  SHX3_2 = SHX1_2
  SHX4_2 = GetEntityHeading
  SHX5_2 = SHX1_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX4_2 = SHX4_2 + SHX0_2
  SHX2_2(SHX3_2, SHX4_2)
end
function SHX109_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = SHX83_1.mainEnt
  if 0 ~= SHX0_2 then
    SHX0_2 = DoesEntityExist
    SHX1_2 = SHX83_1.mainEnt
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      SHX0_2 = SHX83_1.anchor
      if SHX0_2 then
        goto SHX_LABEL_13
      end
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_13:: outside nested blocks until all 'goto SHX_LABEL_13' can see it
  ::SHX_LABEL_13::
  SHX0_2 = SetEntityCoordsNoOffset
  SHX1_2 = SHX83_1.mainEnt
  SHX2_2 = SHX83_1.anchor
  SHX2_2 = SHX2_2.x
  SHX3_2 = SHX83_1.anchor
  SHX3_2 = SHX3_2.y
  SHX4_2 = SHX83_1.baseZ
  SHX4_2 = SHX4_2 + 0.05
  SHX5_2 = false
  SHX6_2 = false
  SHX7_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX0_2 = PlaceObjectOnGroundProperly
  SHX1_2 = SHX83_1.mainEnt
  SHX0_2(SHX1_2)
  SHX0_2 = SetEntityCollision
  SHX1_2 = SHX83_1.mainEnt
  SHX2_2 = false
  SHX3_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = GetEntityCoords
  SHX1_2 = SHX83_1.mainEnt
  SHX2_2 = true
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  SHX1_2 = vector3
  SHX2_2 = SHX0_2.x
  SHX3_2 = SHX0_2.y
  SHX4_2 = SHX83_1.baseZ
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX83_1.anchor = SHX1_2
end
function SHX110_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2
  SHX0_2 = SHX83_1.kind
  if "ground" ~= SHX0_2 then
    SHX0_2 = tCMG
    SHX0_2 = SHX0_2.notify
    SHX1_2 = "~r~Use Ground mode and spawn / reset at player to print pile offsets."
    SHX0_2(SHX1_2)
    return
  end
  SHX0_2 = SHX83_1.active
  if SHX0_2 then
    SHX0_2 = SHX83_1.anchor
    if SHX0_2 then
      SHX0_2 = SHX83_1.mainEnt
      if 0 ~= SHX0_2 then
        SHX0_2 = DoesEntityExist
        SHX1_2 = SHX83_1.mainEnt
        SHX0_2 = SHX0_2(SHX1_2)
        if SHX0_2 then
          goto SHX_LABEL_28
        end
      end
    end
  end
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.notify
  SHX1_2 = "~r~Start a ground layout session first."
  SHX0_2(SHX1_2)
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_28:: outside nested blocks until all 'goto SHX_LABEL_28' can see it
  ::SHX_LABEL_28::
  SHX0_2 = SHX83_1.anchor
  SHX0_2 = SHX0_2.x
  SHX1_2 = SHX83_1.anchor
  SHX1_2 = SHX1_2.y
  SHX2_2 = SHX83_1.baseZ
  SHX3_2 = SHX90_1
  SHX3_2 = SHX3_2()
  SHX4_2 = {}
  SHX5_2 = #SHX4_2
  SHX5_2 = SHX5_2 + 1
  SHX6_2 = string
  SHX6_2 = SHX6_2.format
  SHX7_2 = "-- Mechanic debris layout (dev export)  mainModel=%s  anchor=vector3(%.4f, %.4f, %.4f)  mainHeading=%.2f"
  SHX8_2 = SHX83_1.mainModelName
  SHX9_2 = SHX0_2
  SHX10_2 = SHX1_2
  SHX11_2 = SHX2_2
  SHX12_2 = SHX3_2
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX4_2[SHX5_2] = SHX6_2
  SHX5_2 = #SHX4_2
  SHX5_2 = SHX5_2 + 1
  SHX4_2[SHX5_2] = "-- Paste into cfg_mechanic.lua (adjust debrisSpawns site separately if needed)."
  SHX5_2 = #SHX4_2
  SHX5_2 = SHX5_2 + 1
  SHX4_2[SHX5_2] = "cfg.debrisLayoutGroups = cfg.debrisLayoutGroups or {}"
  SHX5_2 = #SHX4_2
  SHX5_2 = SHX5_2 + 1
  SHX6_2 = string
  SHX6_2 = SHX6_2.format
  SHX7_2 = "cfg.debrisLayoutGroups[\"%s\"] = cfg.debrisLayoutGroups[\"%s\"] or {}"
  SHX8_2 = SHX83_1.mainModelName
  SHX9_2 = SHX83_1.mainModelName
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX4_2[SHX5_2] = SHX6_2
  SHX5_2 = #SHX4_2
  SHX5_2 = SHX5_2 + 1
  SHX6_2 = string
  SHX6_2 = SHX6_2.format
  SHX7_2 = "cfg.debrisLayoutGroups[\"%s\"].secondaryOffsets = {"
  SHX8_2 = SHX83_1.mainModelName
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  SHX4_2[SHX5_2] = SHX6_2
  SHX5_2 = SHX95_1
  SHX5_2 = SHX5_2()
  SHX6_2 = 1
  SHX7_2 = 4
  SHX8_2 = 1
  for SHX9_2 = SHX6_2, SHX7_2, SHX8_2 do
    SHX10_2 = SHX83_1.slotEnts
    SHX10_2 = SHX10_2[SHX9_2]
    SHX11_2 = SHX97_1
    SHX12_2 = SHX9_2
    SHX13_2 = SHX5_2
    SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
    if SHX10_2 and 0 ~= SHX10_2 then
      SHX12_2 = DoesEntityExist
      SHX13_2 = SHX10_2
      SHX12_2 = SHX12_2(SHX13_2)
      if SHX12_2 then
        SHX12_2 = GetEntityCoords
        SHX13_2 = SHX10_2
        SHX14_2 = true
        SHX12_2 = SHX12_2(SHX13_2, SHX14_2)
        SHX13_2 = SHX12_2.x
        SHX13_2 = SHX13_2 - SHX0_2
        SHX14_2 = SHX12_2.y
        SHX14_2 = SHX14_2 - SHX1_2
        SHX15_2 = SHX12_2.z
        SHX15_2 = SHX15_2 - SHX2_2
        SHX16_2 = SHX89_1
        SHX17_2 = SHX13_2
        SHX18_2 = SHX14_2
        SHX19_2 = SHX3_2
        SHX16_2, SHX17_2 = SHX16_2(SHX17_2, SHX18_2, SHX19_2)
        SHX18_2 = GetEntityHeading
        SHX19_2 = SHX10_2
        SHX18_2 = SHX18_2(SHX19_2)
        SHX18_2 = SHX18_2 - SHX3_2
        while true do
          SHX19_2 = 180.0
          if not (SHX18_2 > SHX19_2) then
            break
          end
          SHX18_2 = SHX18_2 - 360.0
        end
        while true do
          SHX19_2 = -180.0
          if not (SHX18_2 < SHX19_2) then
            break
          end
          SHX18_2 = SHX18_2 + 360.0
        end
        SHX19_2 = #SHX4_2
        SHX19_2 = SHX19_2 + 1
        SHX20_2 = string
        SHX20_2 = SHX20_2.format
        SHX21_2 = "    [\"%s\"] = { dx = %.4f, dy = %.4f, dz = %.4f, h = %.2f },"
        SHX22_2 = SHX11_2
        SHX23_2 = SHX16_2
        SHX24_2 = SHX17_2
        SHX25_2 = SHX15_2
        SHX26_2 = SHX18_2
        SHX20_2 = SHX20_2(SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
        SHX4_2[SHX19_2] = SHX20_2
    end
    else
      SHX12_2 = #SHX4_2
      SHX12_2 = SHX12_2 + 1
      SHX13_2 = string
      SHX13_2 = SHX13_2.format
      SHX14_2 = "-- slot %d model=%s (no entity)"
      SHX15_2 = SHX9_2
      SHX16_2 = SHX11_2
      SHX13_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2)
      SHX4_2[SHX12_2] = SHX13_2
    end
  end
  SHX6_2 = #SHX4_2
  SHX6_2 = SHX6_2 + 1
  SHX4_2[SHX6_2] = "}"
  SHX6_2 = print
  SHX7_2 = table
  SHX7_2 = SHX7_2.concat
  SHX8_2 = SHX4_2
  SHX9_2 = "\n"
  SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2 = SHX7_2(SHX8_2, SHX9_2)
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
  SHX6_2 = tCMG
  SHX6_2 = SHX6_2.notify
  SHX7_2 = "~g~Printed ground offsets to F8 (cfg.debrisLayoutGroups[mainModel].secondaryOffsets)."
  SHX6_2(SHX7_2)
end
function SHX111_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  SHX0_2 = SHX83_1.kind
  if "flatbed" == SHX0_2 then
    SHX0_2 = type
    SHX1_2 = SHX83_1.flatbedAttach
    SHX0_2 = SHX0_2(SHX1_2)
    if "table" == SHX0_2 then
      goto SHX_LABEL_14
    end
  end
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.notify
  SHX1_2 = "~r~Use Flatbed mode and spawn on the flatbed first."
  SHX0_2(SHX1_2)
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_14:: outside nested blocks until all 'goto SHX_LABEL_14' can see it
  ::SHX_LABEL_14::
  SHX0_2 = tonumber
  SHX1_2 = SHX0_1.debrisSecondaryFlatbedBone
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 then
    SHX0_2 = tonumber
    SHX1_2 = SHX0_1.debrisMainFlatbedBone
    SHX0_2 = SHX0_2(SHX1_2)
    if not SHX0_2 then
      SHX0_2 = 20
    end
  end
  SHX1_2 = tonumber
  SHX2_2 = SHX0_1.debrisMainFlatbedBone
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = 20
  end
  SHX2_2 = {}
  SHX3_2 = #SHX2_2
  SHX3_2 = SHX3_2 + 1
  SHX2_2[SHX3_2] = "-- Mechanic lane clear: flatbed bed attach (dev export)"
  SHX3_2 = #SHX2_2
  SHX3_2 = SHX3_2 + 1
  SHX4_2 = string
  SHX4_2 = SHX4_2.format
  SHX5_2 = "-- mainModel=%s"
  SHX6_2 = SHX83_1.mainModelName
  if not SHX6_2 then
    SHX6_2 = ""
  end
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX2_2[SHX3_2] = SHX4_2
  SHX3_2 = SHX83_1.mainFlatbedAttach
  SHX4_2 = type
  SHX5_2 = SHX3_2
  SHX4_2 = SHX4_2(SHX5_2)
  if "table" == SHX4_2 then
    SHX4_2 = #SHX2_2
    SHX4_2 = SHX4_2 + 1
    SHX5_2 = string
    SHX5_2 = SHX5_2.format
    SHX6_2 = "cfg.debrisMainFlatbedBone = %d"
    SHX7_2 = SHX1_2
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
    SHX2_2[SHX4_2] = SHX5_2
    SHX4_2 = #SHX2_2
    SHX4_2 = SHX4_2 + 1
    SHX5_2 = string
    SHX5_2 = SHX5_2.format
    SHX6_2 = "cfg.debrisMainFlatbedAttach = { ox = %.4f, oy = %.4f, oz = %.4f, rx = %.4f, ry = %.4f, rz = %.4f },"
    SHX7_2 = SHX3_2.ox
    SHX8_2 = SHX3_2.oy
    SHX9_2 = SHX3_2.oz
    SHX10_2 = SHX3_2.rx
    SHX11_2 = SHX3_2.ry
    SHX12_2 = SHX3_2.rz
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX2_2[SHX4_2] = SHX5_2
  end
  SHX4_2 = #SHX2_2
  SHX4_2 = SHX4_2 + 1
  SHX5_2 = string
  SHX5_2 = SHX5_2.format
  SHX6_2 = "cfg.debrisSecondaryFlatbedBone = %d"
  SHX7_2 = SHX0_2
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
  SHX2_2[SHX4_2] = SHX5_2
  SHX4_2 = #SHX2_2
  SHX4_2 = SHX4_2 + 1
  SHX2_2[SHX4_2] = "cfg.debrisLayoutGroups = cfg.debrisLayoutGroups or {}"
  SHX4_2 = #SHX2_2
  SHX4_2 = SHX4_2 + 1
  SHX5_2 = string
  SHX5_2 = SHX5_2.format
  SHX6_2 = "cfg.debrisLayoutGroups[\"%s\"] = cfg.debrisLayoutGroups[\"%s\"] or {}"
  SHX7_2 = SHX83_1.mainModelName
  SHX8_2 = SHX83_1.mainModelName
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX2_2[SHX4_2] = SHX5_2
  SHX4_2 = #SHX2_2
  SHX4_2 = SHX4_2 + 1
  SHX5_2 = string
  SHX5_2 = SHX5_2.format
  SHX6_2 = "cfg.debrisLayoutGroups[\"%s\"].secondaryFlatbedAttach = {"
  SHX7_2 = SHX83_1.mainModelName
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
  SHX2_2[SHX4_2] = SHX5_2
  SHX4_2 = SHX95_1
  SHX4_2 = SHX4_2()
  SHX5_2 = 1
  SHX6_2 = 4
  SHX7_2 = 1
  for SHX8_2 = SHX5_2, SHX6_2, SHX7_2 do
    SHX9_2 = SHX83_1.flatbedAttach
    SHX9_2 = SHX9_2[SHX8_2]
    SHX10_2 = SHX97_1
    SHX11_2 = SHX8_2
    SHX12_2 = SHX4_2
    SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
    if SHX9_2 then
      SHX11_2 = #SHX2_2
      SHX11_2 = SHX11_2 + 1
      SHX12_2 = string
      SHX12_2 = SHX12_2.format
      SHX13_2 = "    [\"%s\"] = { ox = %.4f, oy = %.4f, oz = %.4f, rx = %.4f, ry = %.4f, rz = %.4f },"
      SHX14_2 = SHX10_2
      SHX15_2 = SHX9_2.ox
      SHX16_2 = SHX9_2.oy
      SHX17_2 = SHX9_2.oz
      SHX18_2 = SHX9_2.rx
      SHX19_2 = SHX9_2.ry
      SHX20_2 = SHX9_2.rz
      SHX12_2 = SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
      SHX2_2[SHX11_2] = SHX12_2
    end
  end
  SHX5_2 = #SHX2_2
  SHX5_2 = SHX5_2 + 1
  SHX2_2[SHX5_2] = "}"
  SHX5_2 = print
  SHX6_2 = table
  SHX6_2 = SHX6_2.concat
  SHX7_2 = SHX2_2
  SHX8_2 = "\n"
  SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2 = SHX6_2(SHX7_2, SHX8_2)
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
  SHX5_2 = tCMG
  SHX5_2 = SHX5_2.notify
  SHX6_2 = "~g~Printed flatbed attach to F8 (cfg.debrisLayoutGroups[mainModel].secondaryFlatbedAttach)."
  SHX5_2(SHX6_2)
end
SHX112_1 = CMG
SHX112_1 = SHX112_1.registerDevMenuItems
SHX113_1 = "Mechanic/Debris layout"
function SHX114_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Separator
  SHX1_2 = "Lane clear debris offsets (dev)"
  SHX0_2(SHX1_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Separator
  SHX1_2 = "Two modes: ground pile vs flatbed bone-local attach. Props: collision off."
  SHX0_2(SHX1_2)
  SHX0_2 = math
  SHX0_2 = SHX0_2.max
  SHX1_2 = 1
  SHX2_2 = math
  SHX2_2 = SHX2_2.min
  SHX3_2 = 2
  SHX4_2 = math
  SHX4_2 = SHX4_2.floor
  SHX5_2 = tonumber
  SHX6_2 = SHX82_1.offsetKindIndex
  SHX5_2 = SHX5_2(SHX6_2)
  if not SHX5_2 then
    SHX5_2 = 1
  end
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2 = SHX4_2(SHX5_2)
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
  SHX82_1.offsetKindIndex = SHX0_2
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.List
  SHX2_2 = "Offset mode"
  SHX3_2 = SHX86_1
  SHX4_2 = SHX0_2
  SHX5_2 = "Ground: cfg.debrisLayoutGroups[mainModel].secondaryOffsets. Flatbed: cfg.debrisLayoutGroups[mainModel].secondaryFlatbedAttach."
  SHX6_2 = {}
  SHX7_2 = true
  function SHX8_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX4_3, SHX5_3
    SHX4_3 = SHX82_1.offsetKindIndex
    if SHX4_3 ~= SHX3_3 then
      SHX4_3 = SHX83_1.active
      if SHX4_3 then
        SHX4_3 = SHX92_1
        SHX4_3()
        SHX4_3 = tCMG
        SHX4_3 = SHX4_3.notify
        SHX5_3 = "~y~Session cleared: offset mode changed."
        SHX4_3(SHX5_3)
      end
      SHX82_1.offsetKindIndex = SHX3_3
    end
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
  SHX1_2 = SHX87_1
  SHX1_2 = SHX1_2()
  if "flatbed" == SHX1_2 then
    SHX1_2 = "Flatbed driver seat. Spawns main + four secondaries (models from Slot 1\226\128\1474 lists) with cfg attaches; nudge ox/oy/oz/rz."
    if SHX1_2 then
      goto SHX_LABEL_47
    end
  end
  SHX1_2 = "Spawns main + four secondaries at your feet (Slot 1\226\128\1474 model lists + cfg scene offsets). No job vehicle checks."
  -- [FIX IF ERROR] Move ::SHX_LABEL_47:: outside nested blocks until all 'goto SHX_LABEL_47' can see it
  ::SHX_LABEL_47::
  SHX2_2 = RageUI
  SHX2_2 = SHX2_2.Button
  SHX3_2 = SHX87_1
  SHX3_2 = SHX3_2()
  if "flatbed" == SHX3_2 then
    SHX3_2 = "Spawn / reset on flatbed"
    if SHX3_2 then
      goto SHX_LABEL_57
    end
  end
  SHX3_2 = "Spawn / reset at player"
  -- [FIX IF ERROR] Move ::SHX_LABEL_57:: outside nested blocks until all 'goto SHX_LABEL_57' can see it
  ::SHX_LABEL_57::
  SHX4_2 = SHX1_2
  SHX5_2 = true
  function SHX6_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3
    if SHX2_3 then
      SHX3_3 = SHX87_1
      SHX3_3 = SHX3_3()
      if "flatbed" == SHX3_3 then
        SHX3_3 = SHX105_1
        SHX3_3()
      else
        SHX3_3 = SHX104_1
        SHX3_3()
      end
    end
  end
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = RageUI
  SHX2_2 = SHX2_2.Button
  SHX3_2 = "End session (delete props)"
  SHX4_2 = ""
  SHX5_2 = SHX83_1.active
  function SHX6_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3
    if SHX2_3 then
      SHX3_3 = SHX92_1
      SHX3_3()
      SHX3_3 = tCMG
      SHX3_3 = SHX3_3.notify
      SHX4_3 = "~y~Debris layout session cleared."
      SHX3_3(SHX4_3)
    end
  end
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = SHX93_1
  SHX2_2 = SHX2_2()
  SHX3_2 = SHX87_1
  SHX3_2 = SHX3_2()
  SHX3_2 = "ground" == SHX3_2
  SHX4_2 = RageUI
  SHX4_2 = SHX4_2.List
  SHX5_2 = "Main wreck model"
  SHX6_2 = SHX2_2
  SHX7_2 = SHX82_1.mainModelIndex
  SHX8_2 = "Used on next spawn (ground or flatbed mode)."
  SHX9_2 = {}
  SHX10_2 = true
  function SHX11_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    SHX82_1.mainModelIndex = SHX3_3
  end
  function SHX12_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX4_2 = SHX95_1
  SHX4_2 = SHX4_2()
  SHX5_2 = RageUI
  SHX5_2 = SHX5_2.Separator
  SHX6_2 = "Secondary props"
  SHX5_2(SHX6_2)
  SHX5_2 = 1
  SHX6_2 = 4
  SHX7_2 = 1
  for SHX8_2 = SHX5_2, SHX6_2, SHX7_2 do
    SHX9_2 = SHX96_1
    SHX10_2 = SHX8_2
    SHX9_2 = SHX9_2(SHX10_2)
    SHX10_2 = math
    SHX10_2 = SHX10_2.max
    SHX11_2 = 1
    SHX12_2 = math
    SHX12_2 = SHX12_2.min
    SHX13_2 = #SHX4_2
    SHX14_2 = math
    SHX14_2 = SHX14_2.floor
    SHX15_2 = tonumber
    SHX16_2 = SHX82_1
    SHX16_2 = SHX16_2[SHX9_2]
    SHX15_2 = SHX15_2(SHX16_2)
    if not SHX15_2 then
      SHX15_2 = 1
    end
    SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2 = SHX14_2(SHX15_2)
    SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2 = SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
    SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
    SHX11_2 = SHX82_1
    SHX11_2[SHX9_2] = SHX10_2
    SHX11_2 = RageUI
    SHX11_2 = SHX11_2.List
    SHX12_2 = "Slot "
    SHX13_2 = SHX8_2
    SHX14_2 = " model"
    SHX12_2 = SHX12_2 .. SHX13_2 .. SHX14_2
    SHX13_2 = SHX4_2
    SHX14_2 = SHX10_2
    SHX15_2 = "With an active session, changing model swaps that prop in place (offsets kept). Otherwise applies on next spawn."
    SHX16_2 = {}
    SHX17_2 = true
    function SHX18_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3
      SHX4_3 = math
      SHX4_3 = SHX4_3.max
      SHX5_3 = 1
      SHX6_3 = math
      SHX6_3 = SHX6_3.min
      SHX7_3 = SHX4_2
      SHX7_3 = #SHX7_3
      SHX8_3 = math
      SHX8_3 = SHX8_3.floor
      SHX9_3 = tonumber
      SHX11_3 = SHX9_2
      SHX10_3 = SHX82_1
      SHX10_3 = SHX10_3[SHX11_3]
      SHX9_3 = SHX9_3(SHX10_3)
      if not SHX9_3 then
        SHX9_3 = 1
      end
      SHX8_3, SHX9_3, SHX10_3, SHX11_3 = SHX8_3(SHX9_3)
      SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
      SHX4_3 = SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
      SHX6_3 = SHX9_2
      SHX5_3 = SHX82_1
      SHX5_3[SHX6_3] = SHX3_3
      SHX5_3 = SHX83_1.active
      if SHX5_3 and SHX4_3 ~= SHX3_3 then
        SHX5_3 = SHX103_1
        SHX6_3 = SHX8_2
        SHX5_3(SHX6_3)
      end
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
    SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
  end
  if SHX3_2 then
    SHX5_2 = RageUI
    SHX5_2 = SHX5_2.List
    SHX6_2 = "Selected entity"
    SHX7_2 = SHX84_1
    SHX8_2 = SHX82_1.selectedIndex
    SHX8_2 = SHX8_2 + 1
    SHX9_2 = "Nudge / rotate applies to this entity."
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
      SHX4_3 = SHX3_3 - 1
      SHX82_1.selectedIndex = SHX4_3
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
  else
    SHX5_2 = math
    SHX5_2 = SHX5_2.max
    SHX6_2 = 1
    SHX7_2 = math
    SHX7_2 = SHX7_2.min
    SHX8_2 = 5
    SHX9_2 = math
    SHX9_2 = SHX9_2.floor
    SHX10_2 = tonumber
    SHX11_2 = SHX82_1.selectedIndex
    SHX10_2 = SHX10_2(SHX11_2)
    if not SHX10_2 then
      SHX10_2 = 0
    end
    SHX9_2 = SHX9_2(SHX10_2)
    SHX9_2 = SHX9_2 + 1
    SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2 = SHX7_2(SHX8_2, SHX9_2)
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
    SHX6_2 = SHX5_2 - 1
    SHX82_1.selectedIndex = SHX6_2
    SHX6_2 = RageUI
    SHX6_2 = SHX6_2.List
    SHX7_2 = "Selected entity"
    SHX8_2 = SHX85_1
    SHX9_2 = SHX5_2
    SHX10_2 = "Main wreck uses cfg.debrisMainFlatbedAttach. Scrap uses cfg.debrisLayoutGroups[mainModel].secondaryFlatbedAttach."
    SHX11_2 = {}
    SHX12_2 = true
    function SHX13_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX4_3
      SHX4_3 = SHX3_3 - 1
      SHX82_1.selectedIndex = SHX4_3
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
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  end
  SHX5_2 = {}
  SHX6_2 = 0.02
  SHX7_2 = 0.05
  SHX8_2 = 0.1
  SHX9_2 = 0.2
  SHX10_2 = 0.5
  SHX5_2[1] = SHX6_2
  SHX5_2[2] = SHX7_2
  SHX5_2[3] = SHX8_2
  SHX5_2[4] = SHX9_2
  SHX5_2[5] = SHX10_2
  SHX6_2 = {}
  SHX7_2 = ipairs
  SHX8_2 = SHX5_2
  SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
  for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
    SHX13_2 = #SHX6_2
    SHX13_2 = SHX13_2 + 1
    SHX14_2 = tostring
    SHX15_2 = SHX12_2
    SHX14_2 = SHX14_2(SHX15_2)
    SHX15_2 = "m"
    SHX14_2 = SHX14_2 .. SHX15_2
    SHX6_2[SHX13_2] = SHX14_2
  end
  SHX7_2 = math
  SHX7_2 = SHX7_2.max
  SHX8_2 = 1
  SHX9_2 = math
  SHX9_2 = SHX9_2.min
  SHX10_2 = #SHX5_2
  SHX11_2 = math
  SHX11_2 = SHX11_2.floor
  SHX12_2 = SHX82_1.nudgeStepListIndex
  if not SHX12_2 then
    SHX12_2 = 3
  end
  SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2 = SHX11_2(SHX12_2)
  SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
  SHX82_1.nudgeStepListIndex = SHX7_2
  SHX8_2 = SHX5_2[SHX7_2]
  SHX82_1.step = SHX8_2
  SHX8_2 = RageUI
  SHX8_2 = SHX8_2.List
  SHX9_2 = "Nudge step"
  SHX10_2 = SHX6_2
  SHX11_2 = SHX7_2
  if SHX3_2 then
    SHX12_2 = "Distance per nudge (local X/Y or world Z)."
    if SHX12_2 then
      goto SHX_LABEL_245
    end
  end
  SHX12_2 = "Step size applied to ox, oy, oz (flatbed attach space)."
  -- [FIX IF ERROR] Move ::SHX_LABEL_245:: outside nested blocks until all 'goto SHX_LABEL_245' can see it
  ::SHX_LABEL_245::
  SHX13_2 = {}
  SHX14_2 = true
  function SHX15_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX4_3
    SHX82_1.nudgeStepListIndex = SHX3_3
    SHX4_3 = SHX5_2
    SHX4_3 = SHX4_3[SHX3_3]
    SHX82_1.step = SHX4_3
  end
  function SHX16_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  if SHX3_2 then
    SHX8_2 = RageUI
    SHX8_2 = SHX8_2.Separator
    SHX9_2 = "Nudge (local: +Y forward along wreck heading)"
    SHX8_2(SHX9_2)
  else
    SHX8_2 = RageUI
    SHX8_2 = SHX8_2.Separator
    SHX9_2 = "Nudge flatbed attach: +X = ox, +Y = oy, \194\177Z = oz"
    SHX8_2(SHX9_2)
  end
  SHX8_2 = RageUI
  SHX8_2 = SHX8_2.Button
  SHX9_2 = "Local +Y (forward)"
  SHX10_2 = ""
  SHX11_2 = SHX83_1.active
  function SHX12_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3
    if SHX2_3 then
      SHX3_3 = SHX107_1
      SHX4_3 = 0.0
      SHX5_3 = 1.0
      SHX6_3 = 0.0
      SHX3_3(SHX4_3, SHX5_3, SHX6_3)
    end
  end
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX8_2 = RageUI
  SHX8_2 = SHX8_2.Button
  SHX9_2 = "Local -Y (back)"
  SHX10_2 = ""
  SHX11_2 = SHX83_1.active
  function SHX12_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3
    if SHX2_3 then
      SHX3_3 = SHX107_1
      SHX4_3 = 0.0
      SHX5_3 = -1.0
      SHX6_3 = 0.0
      SHX3_3(SHX4_3, SHX5_3, SHX6_3)
    end
  end
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX8_2 = RageUI
  SHX8_2 = SHX8_2.Button
  SHX9_2 = "Local +X (right)"
  SHX10_2 = ""
  SHX11_2 = SHX83_1.active
  function SHX12_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3
    if SHX2_3 then
      SHX3_3 = SHX107_1
      SHX4_3 = 1.0
      SHX5_3 = 0.0
      SHX6_3 = 0.0
      SHX3_3(SHX4_3, SHX5_3, SHX6_3)
    end
  end
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX8_2 = RageUI
  SHX8_2 = SHX8_2.Button
  SHX9_2 = "Local -X (left)"
  SHX10_2 = ""
  SHX11_2 = SHX83_1.active
  function SHX12_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3
    if SHX2_3 then
      SHX3_3 = SHX107_1
      SHX4_3 = -1.0
      SHX5_3 = 0.0
      SHX6_3 = 0.0
      SHX3_3(SHX4_3, SHX5_3, SHX6_3)
    end
  end
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX8_2 = RageUI
  SHX8_2 = SHX8_2.Button
  SHX9_2 = "World +Z"
  SHX10_2 = ""
  SHX11_2 = SHX83_1.active
  function SHX12_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3
    if SHX2_3 then
      SHX3_3 = SHX107_1
      SHX4_3 = 0.0
      SHX5_3 = 0.0
      SHX6_3 = 1.0
      SHX3_3(SHX4_3, SHX5_3, SHX6_3)
    end
  end
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX8_2 = RageUI
  SHX8_2 = SHX8_2.Button
  SHX9_2 = "World -Z"
  SHX10_2 = ""
  SHX11_2 = SHX83_1.active
  function SHX12_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3
    if SHX2_3 then
      SHX3_3 = SHX107_1
      SHX4_3 = 0.0
      SHX5_3 = 0.0
      SHX6_3 = -1.0
      SHX3_3(SHX4_3, SHX5_3, SHX6_3)
    end
  end
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  if SHX3_2 then
    SHX8_2 = RageUI
    SHX8_2 = SHX8_2.Separator
    SHX9_2 = "Rotate selected (degrees)"
    SHX8_2(SHX9_2)
  else
    SHX8_2 = RageUI
    SHX8_2 = SHX8_2.Separator
    SHX9_2 = "Rotate: rz on bed attach (degrees)"
    SHX8_2(SHX9_2)
  end
  SHX8_2 = RageUI
  SHX8_2 = SHX8_2.Button
  SHX9_2 = "Heading +5\194\176"
  SHX10_2 = ""
  SHX11_2 = SHX83_1.active
  function SHX12_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3
    if SHX2_3 then
      SHX3_3 = SHX108_1
      SHX4_3 = 5.0
      SHX3_3(SHX4_3)
    end
  end
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX8_2 = RageUI
  SHX8_2 = SHX8_2.Button
  SHX9_2 = "Heading -5\194\176"
  SHX10_2 = ""
  SHX11_2 = SHX83_1.active
  function SHX12_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3
    if SHX2_3 then
      SHX3_3 = SHX108_1
      SHX4_3 = -5.0
      SHX3_3(SHX4_3)
    end
  end
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX8_2 = RageUI
  SHX8_2 = SHX8_2.Button
  SHX9_2 = "Snap main wreck to anchor"
  SHX10_2 = "Reset main XY to layout anchor."
  SHX11_2 = SHX83_1.active
  if SHX11_2 then
    SHX11_2 = SHX3_2
  end
  function SHX12_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3
    if SHX2_3 then
      SHX3_3 = SHX109_1
      SHX3_3()
    end
  end
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  if SHX3_2 then
    SHX8_2 = "Prints cfg.debrisLayoutGroups[mainModel].secondaryOffsets (ground)."
    if SHX8_2 then
      goto SHX_LABEL_345
    end
  end
  SHX8_2 = "Prints cfg.debrisLayoutGroups[mainModel].secondaryFlatbedAttach (bed)."
  -- [FIX IF ERROR] Move ::SHX_LABEL_345:: outside nested blocks until all 'goto SHX_LABEL_345' can see it
  ::SHX_LABEL_345::
  SHX9_2 = RageUI
  SHX9_2 = SHX9_2.Button
  SHX10_2 = "Print cfg snippet (F8 console)"
  SHX11_2 = SHX8_2
  SHX12_2 = SHX83_1.active
  function SHX13_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3
    if SHX2_3 then
      SHX3_3 = SHX3_2
      if SHX3_3 then
        SHX3_3 = SHX110_1
        SHX3_3()
      else
        SHX3_3 = SHX111_1
        SHX3_3()
      end
    end
  end
  SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
end
SHX112_1(SHX113_1, SHX114_1)
SHX112_1 = Citizen
SHX112_1 = SHX112_1.CreateThread
function SHX113_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2
  while true do
    SHX0_2 = SHX83_1.active
    if SHX0_2 then
      SHX0_2 = SHX83_1.anchor
      if SHX0_2 then
        SHX1_2 = DrawMarker
        SHX2_2 = 1
        SHX3_2 = SHX0_2.x
        SHX4_2 = SHX0_2.y
        SHX5_2 = SHX0_2.z
        SHX5_2 = SHX5_2 - 0.35
        SHX6_2 = 0.0
        SHX7_2 = 0.0
        SHX8_2 = 0.0
        SHX9_2 = 0.0
        SHX10_2 = 0.0
        SHX11_2 = 0.0
        SHX12_2 = 1.2
        SHX13_2 = 1.2
        SHX14_2 = 0.4
        SHX15_2 = 50
        SHX16_2 = 200
        SHX17_2 = 255
        SHX18_2 = 120
        SHX19_2 = false
        SHX20_2 = false
        SHX21_2 = 2
        SHX22_2 = false
        SHX23_2 = nil
        SHX24_2 = nil
        SHX25_2 = false
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
      end
      SHX1_2 = SHX106_1
      SHX1_2 = SHX1_2()
      if 0 ~= SHX1_2 then
        SHX2_2 = DoesEntityExist
        SHX3_2 = SHX1_2
        SHX2_2 = SHX2_2(SHX3_2)
        if SHX2_2 then
          SHX2_2 = GetEntityCoords
          SHX3_2 = SHX1_2
          SHX4_2 = true
          SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
          SHX3_2 = DrawMarker
          SHX4_2 = 1
          SHX5_2 = SHX2_2.x
          SHX6_2 = SHX2_2.y
          SHX7_2 = SHX2_2.z
          SHX7_2 = SHX7_2 - 0.2
          SHX8_2 = 0.0
          SHX9_2 = 0.0
          SHX10_2 = 0.0
          SHX11_2 = 0.0
          SHX12_2 = 0.0
          SHX13_2 = 0.0
          SHX14_2 = 0.65
          SHX15_2 = 0.65
          SHX16_2 = 0.35
          SHX17_2 = 255
          SHX18_2 = 180
          SHX19_2 = 50
          SHX20_2 = 160
          SHX21_2 = false
          SHX22_2 = false
          SHX23_2 = 2
          SHX24_2 = false
          SHX25_2 = nil
          SHX26_2 = nil
          SHX27_2 = false
          SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2)
        end
      end
      SHX2_2 = Wait
      SHX3_2 = 0
      SHX2_2(SHX3_2)
    else
      SHX0_2 = Wait
      SHX1_2 = 750
      SHX0_2(SHX1_2)
    end
  end
end
SHX112_1(SHX113_1)
SHX112_1 = AddEventHandler
SHX113_1 = "onResourceStop"
function SHX114_1(SHX0_2)
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
  SHX1_2 = SHX92_1
  SHX1_2()
end
SHX112_1(SHX113_1, SHX114_1)
