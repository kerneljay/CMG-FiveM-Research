-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1
SHX0_1 = 80.0
SHX1_1 = 10.0
SHX2_1 = 7.0
SHX3_1 = 7.0
SHX4_1 = 7.0
SHX5_1 = 51
SHX6_1 = 25
SHX7_1 = 154
SHX8_1 = 74
SHX9_1 = 22
SHX10_1 = false
SHX11_1 = false
SHX12_1 = false
SHX13_1 = 0
SHX14_1 = false
SHX15_1 = 0
SHX16_1 = {}
SHX17_1 = 837858166
SHX18_1 = -1572900542
SHX19_1 = 1457987098
SHX20_1 = 1783593694
SHX21_1 = 903317905
SHX22_1 = 895755432
SHX23_1 = -1519555388
SHX24_1 = -1634501443
SHX25_1 = -1758441398
SHX26_1 = 353883353
SHX27_1 = -877280795
SHX28_1 = -16554230
SHX29_1 = 1790592407
SHX30_1 = 1729276197
SHX31_1 = 465590640
SHX32_1 = 263279933
SHX33_1 = -93312325
SHX34_1 = -1159615601
SHX35_1 = -1504773962
SHX36_1 = -1412094181
SHX37_1 = 1875232888
SHX38_1 = 1418659670
SHX39_1 = 295054921
SHX16_1[1] = SHX17_1
SHX16_1[2] = SHX18_1
SHX16_1[3] = SHX19_1
SHX16_1[4] = SHX20_1
SHX16_1[5] = SHX21_1
SHX16_1[6] = SHX22_1
SHX16_1[7] = SHX23_1
SHX16_1[8] = SHX24_1
SHX16_1[9] = SHX25_1
SHX16_1[10] = SHX26_1
SHX16_1[11] = SHX27_1
SHX16_1[12] = SHX28_1
SHX16_1[13] = SHX29_1
SHX16_1[14] = SHX30_1
SHX16_1[15] = SHX31_1
SHX16_1[16] = SHX32_1
SHX16_1[17] = SHX33_1
SHX16_1[18] = SHX34_1
SHX16_1[19] = SHX35_1
SHX16_1[20] = SHX36_1
SHX16_1[21] = SHX37_1
SHX16_1[22] = SHX38_1
SHX16_1[23] = SHX39_1
SHX17_1 = CMG
function SHX18_1()
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
SHX17_1.isPlayerRappeling = SHX18_1
SHX17_1 = CMG
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX11_1
  return SHX0_2
end
SHX17_1.isPlayerInPoliceHeli = SHX18_1
SHX17_1 = SHX0_1 + SHX1_1
SHX17_1 = SHX17_1 * 0.5
SHX18_1 = 0
function SHX19_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = GetEntityHeightAboveGround
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = 1.5
  SHX1_2 = SHX1_2 > SHX2_2
  return SHX1_2
end
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = BeginScaleformMovieMethod
  SHX1_2 = SHX13_1
  SHX2_2 = "SET_CAMERA_TYPE"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SHX18_1
  if 0 == SHX0_2 then
    SHX0_2 = SetNightvision
    SHX1_2 = true
    SHX0_2(SHX1_2)
    SHX0_2 = 1
    SHX18_1 = SHX0_2
    SHX0_2 = ScaleformMovieMethodAddParamInt
    SHX1_2 = 3
    SHX0_2(SHX1_2)
  else
    SHX0_2 = SHX18_1
    if 1 == SHX0_2 then
      SHX0_2 = SetNightvision
      SHX1_2 = false
      SHX0_2(SHX1_2)
      SHX0_2 = SetSeethrough
      SHX1_2 = true
      SHX0_2(SHX1_2)
      SHX0_2 = 2
      SHX18_1 = SHX0_2
      SHX0_2 = ScaleformMovieMethodAddParamInt
      SHX1_2 = 2
      SHX0_2(SHX1_2)
    else
      SHX0_2 = SetSeethrough
      SHX1_2 = false
      SHX0_2(SHX1_2)
      SHX0_2 = 0
      SHX18_1 = SHX0_2
      SHX0_2 = ScaleformMovieMethodAddParamInt
      SHX1_2 = 1
      SHX0_2(SHX1_2)
    end
  end
  SHX0_2 = EndScaleformMovieMethod
  SHX0_2()
end
function SHX21_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = HideHelpTextThisFrame
  SHX0_2()
  SHX0_2 = HideHudAndRadarThisFrame
  SHX0_2()
  SHX0_2 = HideHudComponentThisFrame
  SHX1_2 = 19
  SHX0_2(SHX1_2)
  SHX0_2 = HideHudComponentThisFrame
  SHX1_2 = 1
  SHX0_2(SHX1_2)
  SHX0_2 = HideHudComponentThisFrame
  SHX1_2 = 2
  SHX0_2(SHX1_2)
  SHX0_2 = HideHudComponentThisFrame
  SHX1_2 = 3
  SHX0_2(SHX1_2)
  SHX0_2 = HideHudComponentThisFrame
  SHX1_2 = 4
  SHX0_2(SHX1_2)
  SHX0_2 = HideHudComponentThisFrame
  SHX1_2 = 13
  SHX0_2(SHX1_2)
  SHX0_2 = HideHudComponentThisFrame
  SHX1_2 = 11
  SHX0_2(SHX1_2)
  SHX0_2 = HideHudComponentThisFrame
  SHX1_2 = 12
  SHX0_2(SHX1_2)
  SHX0_2 = HideHudComponentThisFrame
  SHX1_2 = 15
  SHX0_2(SHX1_2)
  SHX0_2 = HideHudComponentThisFrame
  SHX1_2 = 18
  SHX0_2(SHX1_2)
end
function SHX22_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX2_2 = GetDisabledControlNormal
  SHX3_2 = 0
  SHX4_2 = 220
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = GetDisabledControlNormal
  SHX4_2 = 0
  SHX5_2 = 221
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX4_2 = GetCamRot
  SHX5_2 = SHX0_2
  SHX6_2 = 2
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  if 0.0 ~= SHX2_2 or 0.0 ~= SHX3_2 then
    SHX5_2 = SHX4_2.z
    SHX6_2 = SHX2_2 * -1.0
    SHX7_2 = SHX4_1
    SHX6_2 = SHX6_2 * SHX7_2
    SHX7_2 = SHX1_2 + 0.1
    SHX6_2 = SHX6_2 * SHX7_2
    SHX5_2 = SHX5_2 + SHX6_2
    SHX6_2 = math
    SHX6_2 = SHX6_2.max
    SHX7_2 = math
    SHX7_2 = SHX7_2.min
    SHX8_2 = 20.0
    SHX9_2 = SHX4_2.x
    SHX10_2 = SHX3_2 * -1.0
    SHX11_2 = SHX3_1
    SHX10_2 = SHX10_2 * SHX11_2
    SHX11_2 = SHX1_2 + 0.1
    SHX10_2 = SHX10_2 * SHX11_2
    SHX9_2 = SHX9_2 + SHX10_2
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
    SHX8_2 = -89.5
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
    SHX7_2 = SetCamRot
    SHX8_2 = SHX0_2
    SHX9_2 = SHX6_2
    SHX10_2 = 0.0
    SHX11_2 = SHX5_2
    SHX12_2 = 2
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  end
end
function SHX23_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = IsControlJustPressed
  SHX2_2 = 0
  SHX3_2 = 241
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if SHX1_2 then
    SHX1_2 = math
    SHX1_2 = SHX1_2.max
    SHX2_2 = SHX17_1
    SHX3_2 = SHX2_1
    SHX2_2 = SHX2_2 - SHX3_2
    SHX3_2 = SHX1_1
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    SHX17_1 = SHX1_2
  end
  SHX1_2 = IsControlJustPressed
  SHX2_2 = 0
  SHX3_2 = 242
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if SHX1_2 then
    SHX1_2 = math
    SHX1_2 = SHX1_2.min
    SHX2_2 = SHX17_1
    SHX3_2 = SHX2_1
    SHX2_2 = SHX2_2 + SHX3_2
    SHX3_2 = SHX0_1
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    SHX17_1 = SHX1_2
  end
  SHX1_2 = GetCamFov
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = math
  SHX2_2 = SHX2_2.abs
  SHX3_2 = SHX17_1
  SHX3_2 = SHX3_2 - SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = 0.1
  if SHX2_2 < SHX3_2 then
    SHX17_1 = SHX1_2
  end
  SHX2_2 = SetCamFov
  SHX3_2 = SHX0_2
  SHX4_2 = SHX17_1
  SHX4_2 = SHX4_2 - SHX1_2
  SHX4_2 = SHX4_2 * 0.05
  SHX4_2 = SHX1_2 + SHX4_2
  SHX2_2(SHX3_2, SHX4_2)
end
function SHX24_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = math
  SHX1_2 = SHX1_2.rad
  SHX2_2 = SHX0_2.z
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = math
  SHX2_2 = SHX2_2.rad
  SHX3_2 = SHX0_2.x
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = math
  SHX3_2 = SHX3_2.abs
  SHX4_2 = math
  SHX4_2 = SHX4_2.cos
  SHX5_2 = SHX2_2
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX4_2(SHX5_2)
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX4_2 = vector3
  SHX5_2 = math
  SHX5_2 = SHX5_2.sin
  SHX6_2 = SHX1_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX5_2 = -SHX5_2
  SHX5_2 = SHX5_2 * SHX3_2
  SHX6_2 = math
  SHX6_2 = SHX6_2.cos
  SHX7_2 = SHX1_2
  SHX6_2 = SHX6_2(SHX7_2)
  SHX6_2 = SHX6_2 * SHX3_2
  SHX7_2 = math
  SHX7_2 = SHX7_2.sin
  SHX8_2 = SHX2_2
  SHX7_2, SHX8_2 = SHX7_2(SHX8_2)
  return SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
end
function SHX25_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX1_2 = GetCamCoord
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX24_1
  SHX3_2 = GetCamRot
  SHX4_2 = SHX0_2
  SHX5_2 = 2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX3_2 = SHX2_2 * 200.0
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
  SHX11_2 = 10
  SHX12_2 = GetVehiclePedIsIn
  SHX13_2 = PlayerPedId
  SHX13_2 = SHX13_2()
  SHX14_2 = false
  SHX12_2 = SHX12_2(SHX13_2, SHX14_2)
  SHX13_2 = 0
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX5_2 = GetShapeTestResult
  SHX6_2 = SHX4_2
  SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX5_2(SHX6_2)
  if SHX9_2 > 0 then
    SHX10_2 = IsEntityAVehicle
    SHX11_2 = SHX9_2
    SHX10_2 = SHX10_2(SHX11_2)
    if SHX10_2 then
      return SHX9_2
  end
  else
    SHX10_2 = nil
    return SHX10_2
  end
end
function SHX26_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = SHX0_2 + 2000
  SHX1_2 = math
  SHX1_2 = SHX1_2.floor
  SHX2_2 = SHX0_2 / 40
  SHX1_2 = SHX1_2(SHX2_2)
  SHX0_2 = SHX1_2
  SHX1_2 = math
  SHX1_2 = SHX1_2.max
  SHX2_2 = math
  SHX2_2 = SHX2_2.min
  SHX3_2 = SHX0_2
  SHX4_2 = 99
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = 0
  return SHX1_2(SHX2_2, SHX3_2)
end
function SHX27_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX2_2 = math
  SHX2_2 = SHX2_2.floor
  SHX3_2 = GetEntityHeading
  SHX4_2 = SHX1_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX3_2(SHX4_2)
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX3_2 = GetEntityCoords
  SHX4_2 = SHX1_2
  SHX5_2 = true
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX4_2 = math
  SHX4_2 = SHX4_2.floor
  SHX5_2 = SHX3_2.z
  SHX5_2 = SHX5_2 * 3.28084
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = GetEntityCoords
  SHX6_2 = SHX0_2
  SHX7_2 = true
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
  SHX6_2 = math
  SHX6_2 = SHX6_2.floor
  SHX7_2 = SHX3_2 - SHX5_2
  SHX7_2 = #SHX7_2
  SHX6_2 = SHX6_2(SHX7_2)
  SHX7_2 = BeginScaleformMovieMethod
  SHX8_2 = SHX13_1
  SHX9_2 = "SET_TARGET_INFORMATION"
  SHX7_2(SHX8_2, SHX9_2)
  SHX7_2 = ScaleformMovieMethodAddParamInt
  SHX8_2 = SHX26_1
  SHX9_2 = SHX3_2.x
  SHX8_2, SHX9_2 = SHX8_2(SHX9_2)
  SHX7_2(SHX8_2, SHX9_2)
  SHX7_2 = ScaleformMovieMethodAddParamInt
  SHX8_2 = SHX26_1
  SHX9_2 = SHX3_2.y
  SHX8_2, SHX9_2 = SHX8_2(SHX9_2)
  SHX7_2(SHX8_2, SHX9_2)
  SHX7_2 = ScaleformMovieMethodAddParamInt
  SHX8_2 = SHX2_2
  SHX7_2(SHX8_2)
  SHX7_2 = ScaleformMovieMethodAddParamInt
  SHX8_2 = SHX4_2
  SHX7_2(SHX8_2)
  SHX7_2 = ScaleformMovieMethodAddParamInt
  SHX8_2 = SHX6_2
  SHX7_2(SHX8_2)
  SHX7_2 = EndScaleformMovieMethod
  SHX7_2()
end
function SHX28_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX1_2 = GetCamCoord
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.rotationToDirection
  SHX3_2 = GetCamRot
  SHX4_2 = SHX0_2
  SHX5_2 = 2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX2_2 = SHX2_2 * 500.0
  SHX2_2 = SHX1_2 + SHX2_2
  SHX3_2 = _ENV
  SHX4_2 = "StartExpensiveSynchronousShapeTestLosProbe"
  SHX3_2 = SHX3_2[SHX4_2]
  SHX4_2 = SHX1_2.x
  SHX5_2 = SHX1_2.y
  SHX6_2 = SHX1_2.z
  SHX7_2 = SHX2_2.x
  SHX8_2 = SHX2_2.y
  SHX9_2 = SHX2_2.z
  SHX10_2 = -1
  SHX11_2 = CMG
  SHX11_2 = SHX11_2.getPlayerVehicle
  SHX11_2 = SHX11_2()
  SHX12_2 = 4
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX4_2 = GetShapeTestResult
  SHX5_2 = SHX3_2
  SHX4_2, SHX5_2, SHX6_2 = SHX4_2(SHX5_2)
  if SHX5_2 then
    SHX7_2 = BeginScaleformMovieMethod
    SHX8_2 = SHX13_1
    SHX9_2 = "SET_TARGET_INFORMATION"
    SHX7_2(SHX8_2, SHX9_2)
    SHX7_2 = ScaleformMovieMethodAddParamInt
    SHX8_2 = SHX26_1
    SHX9_2 = SHX6_2.x
    SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX8_2(SHX9_2)
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX7_2 = ScaleformMovieMethodAddParamInt
    SHX8_2 = SHX26_1
    SHX9_2 = SHX6_2.y
    SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX8_2(SHX9_2)
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX7_2 = ScaleformMovieMethodAddParamInt
    SHX8_2 = math
    SHX8_2 = SHX8_2.floor
    SHX9_2 = GetHeadingFromVector_2d
    SHX10_2 = SHX6_2.x
    SHX11_2 = SHX1_2.x
    SHX10_2 = SHX10_2 - SHX11_2
    SHX11_2 = SHX6_2.y
    SHX12_2 = SHX1_2.y
    SHX11_2 = SHX11_2 - SHX12_2
    SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX9_2(SHX10_2, SHX11_2)
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX9_2 = 360
    SHX8_2 = SHX9_2 - SHX8_2
    SHX7_2(SHX8_2)
    SHX7_2 = ScaleformMovieMethodAddParamInt
    SHX8_2 = math
    SHX8_2 = SHX8_2.floor
    SHX9_2 = SHX6_2.z
    SHX9_2 = SHX9_2 * 3.28084
    SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX8_2(SHX9_2)
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX7_2 = ScaleformMovieMethodAddParamInt
    SHX8_2 = math
    SHX8_2 = SHX8_2.floor
    SHX9_2 = SHX1_2 - SHX6_2
    SHX9_2 = #SHX9_2
    SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX8_2(SHX9_2)
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX7_2 = EndScaleformMovieMethod
    SHX7_2()
  end
end
function SHX29_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = math
  SHX1_2 = SHX1_2.floor
  SHX2_2 = GetEntityHeading
  SHX3_2 = SHX0_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX2_2(SHX3_2)
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = GetEntityCoords
  SHX3_2 = SHX0_2
  SHX4_2 = true
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = math
  SHX3_2 = SHX3_2.floor
  SHX4_2 = SHX2_2.z
  SHX4_2 = SHX4_2 * 3.28084
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = BeginScaleformMovieMethod
  SHX5_2 = SHX13_1
  SHX6_2 = "SET_AIRCRAFT_INFORMATION"
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = ScaleformMovieMethodAddParamInt
  SHX5_2 = SHX26_1
  SHX6_2 = SHX2_2.x
  SHX5_2, SHX6_2 = SHX5_2(SHX6_2)
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = ScaleformMovieMethodAddParamInt
  SHX5_2 = SHX26_1
  SHX6_2 = SHX2_2.y
  SHX5_2, SHX6_2 = SHX5_2(SHX6_2)
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = ScaleformMovieMethodAddParamInt
  SHX5_2 = SHX1_2
  SHX4_2(SHX5_2)
  SHX4_2 = ScaleformMovieMethodAddParamInt
  SHX5_2 = SHX3_2
  SHX4_2(SHX5_2)
  SHX4_2 = EndScaleformMovieMethod
  SHX4_2()
end
function SHX30_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = GetCamRot
  SHX2_2 = SHX0_2
  SHX3_2 = 2
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX2_2 = BeginScaleformMovieMethod
  SHX3_2 = SHX13_1
  SHX4_2 = "SET_CAMERA_PITCH"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = ScaleformMovieMethodAddParamFloat
  SHX3_2 = SHX1_2.x
  SHX2_2(SHX3_2)
  SHX2_2 = EndScaleformMovieMethod
  SHX2_2()
  SHX2_2 = BeginScaleformMovieMethod
  SHX3_2 = SHX13_1
  SHX4_2 = "SET_CAMERA_HEADING"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = ScaleformMovieMethodAddParamFloat
  SHX3_2 = SHX1_2.z
  SHX2_2(SHX3_2)
  SHX2_2 = EndScaleformMovieMethod
  SHX2_2()
end
function SHX31_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = GetEntityModel
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = GetLabelText
  SHX3_2 = GetDisplayNameFromVehicleModel
  SHX4_2 = SHX1_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX3_2(SHX4_2)
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getFlatLicensePlate
  SHX4_2 = GetVehicleNumberPlateText
  SHX5_2 = SHX0_2
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX4_2(SHX5_2)
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.DrawText
  SHX5_2 = 0.45
  SHX6_2 = 0.9
  SHX7_2 = "Model: "
  SHX8_2 = SHX2_2
  SHX9_2 = [[

Plate: ]]
  SHX10_2 = SHX3_2
  SHX7_2 = SHX7_2 .. SHX8_2 .. SHX9_2 .. SHX10_2
  SHX8_2 = 0.55
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
end
function SHX32_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = PlaySoundFrontend
  SHX1_2 = -1
  SHX2_2 = "BEEP_GREEN"
  SHX3_2 = "DLC_HEIST_HACKING_SNAKE_SOUNDS"
  SHX4_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.Wait
  SHX1_2 = 2000
  SHX0_2(SHX1_2)
  SHX0_2 = PlaySoundFrontend
  SHX1_2 = -1
  SHX2_2 = "BEEP_GREEN"
  SHX3_2 = "DLC_HEIST_HACKING_SNAKE_SOUNDS"
  SHX4_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
end
SHX33_1 = 0
function SHX34_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX2_2 = GetCamCoord
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = GetEntityCoords
  SHX4_2 = SHX1_2
  SHX5_2 = true
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX4_2 = _ENV
  SHX5_2 = "StartExpensiveSynchronousShapeTestLosProbe"
  SHX4_2 = SHX4_2[SHX5_2]
  SHX5_2 = SHX2_2.x
  SHX6_2 = SHX2_2.y
  SHX7_2 = SHX2_2.z
  SHX8_2 = SHX3_2.x
  SHX9_2 = SHX3_2.y
  SHX10_2 = SHX3_2.z
  SHX11_2 = 1
  SHX12_2 = SHX1_2
  SHX13_2 = 4
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX5_2 = GetShapeTestResult
  SHX6_2 = SHX4_2
  SHX5_2, SHX6_2 = SHX5_2(SHX6_2)
  if 0 == SHX6_2 then
    SHX7_2 = GetGameTimer
    SHX7_2 = SHX7_2()
    SHX33_1 = SHX7_2
    SHX7_2 = true
    return SHX7_2
  else
    SHX7_2 = GetGameTimer
    SHX7_2 = SHX7_2()
    SHX8_2 = SHX33_1
    SHX7_2 = SHX7_2 - SHX8_2
    SHX8_2 = 500
    SHX7_2 = SHX7_2 <= SHX8_2
    if not SHX7_2 then
      SHX8_2 = notify
      SHX9_2 = "~r~Lost line of sight to vehicle, tracking deactivated."
      SHX8_2(SHX9_2)
    end
    return SHX7_2
  end
end
function SHX35_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2
  while true do
    SHX0_2 = SHX11_1
    if SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.getPlayerPed
      SHX0_2 = SHX0_2()
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.getPlayerVehicle
      SHX1_2 = SHX1_2()
      SHX2_2 = SHX19_1
      SHX3_2 = SHX1_2
      SHX2_2 = SHX2_2(SHX3_2)
      if SHX2_2 then
        SHX2_2 = IsControlJustPressed
        SHX3_2 = 0
        SHX4_2 = SHX5_1
        SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
        if SHX2_2 then
          SHX2_2 = GetEntityModel
          SHX3_2 = SHX1_2
          SHX2_2 = SHX2_2(SHX3_2)
          SHX3_2 = 1875232888 == SHX2_2
          SHX4_2 = CMG
          SHX4_2 = SHX4_2.hasClientPermission
          SHX5_2 = "police.onduty.permission"
          SHX4_2 = SHX4_2(SHX5_2)
          if not SHX4_2 then
            SHX4_2 = CMG
            SHX4_2 = SHX4_2.hasClientPermission
            SHX5_2 = "nhs.onduty.permission"
            SHX4_2 = SHX4_2(SHX5_2)
            if not SHX4_2 then
              SHX4_2 = GetPedInVehicleSeat
              SHX5_2 = SHX1_2
              SHX6_2 = 0
              SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
              SHX4_2 = CMG
              SHX4_2 = SHX4_2.hasClientSkill
              SHX5_2 = "vigilante_helicopter_thermals"
              SHX4_2 = SHX4_2 == SHX0_2 and (not SHX3_2 or SHX4_2)
            end
          end
          if SHX4_2 then
            SHX5_2 = PlaySoundFrontend
            SHX6_2 = -1
            SHX7_2 = "SELECT"
            SHX8_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            SHX9_2 = false
            SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
            SHX5_2 = true
            SHX12_1 = SHX5_2
          end
        end
        SHX2_2 = IsDisabledControlJustPressed
        SHX3_2 = 0
        SHX4_2 = SHX7_1
        SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
        if SHX2_2 then
          SHX2_2 = GetPedInVehicleSeat
          SHX3_2 = SHX1_2
          SHX4_2 = -1
          SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
          if SHX2_2 ~= SHX0_2 then
            SHX2_2 = GetPedInVehicleSeat
            SHX3_2 = SHX1_2
            SHX4_2 = 0
            SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
            if SHX2_2 ~= SHX0_2 then
              SHX2_2 = CMG
              SHX2_2 = SHX2_2.isHandcuffed
              SHX2_2 = SHX2_2()
              if not SHX2_2 then
                SHX2_2 = true
                SHX10_1 = SHX2_2
                SHX2_2 = PlaySoundFrontend
                SHX3_2 = -1
                SHX4_2 = "SELECT"
                SHX5_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
                SHX6_2 = false
                SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
                SHX2_2 = TaskRappelFromHeli
                SHX3_2 = SHX0_2
                SHX4_2 = 1
                SHX2_2(SHX3_2, SHX4_2)
                SHX2_2 = Wait
                SHX3_2 = 1000
                SHX2_2(SHX3_2)
                SHX2_2 = GetSoundId
                SHX2_2 = SHX2_2()
                SHX3_2 = PlaySoundFrontend
                SHX4_2 = SHX2_2
                SHX5_2 = "Rappel_Loop"
                SHX6_2 = "GTAO_Rappel_Sounds"
                SHX7_2 = true
                SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
                while true do
                  SHX3_2 = GetIsTaskActive
                  SHX4_2 = PlayerPedId
                  SHX4_2 = SHX4_2()
                  SHX5_2 = 49
                  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
                  if not SHX3_2 then
                    SHX3_2 = GetIsTaskActive
                    SHX4_2 = PlayerPedId
                    SHX4_2 = SHX4_2()
                    SHX5_2 = 67
                    SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
                    if not SHX3_2 then
                      break
                    end
                  end
                  SHX3_2 = Wait
                  SHX4_2 = 0
                  SHX3_2(SHX4_2)
                end
                SHX3_2 = StopSound
                SHX4_2 = SHX2_2
                SHX3_2(SHX4_2)
                SHX3_2 = ReleaseSoundId
                SHX4_2 = SHX2_2
                SHX3_2(SHX4_2)
                SHX3_2 = GetSoundId
                SHX3_2 = SHX3_2()
                SHX4_2 = PlaySoundFrontend
                SHX5_2 = SHX3_2
                SHX6_2 = "Rappel_Land"
                SHX7_2 = "GTAO_Rappel_Sounds"
                SHX8_2 = true
                SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
                SHX4_2 = Wait
                SHX5_2 = 1000
                SHX4_2(SHX5_2)
                SHX4_2 = ReleaseSoundId
                SHX5_2 = SHX3_2
                SHX4_2(SHX5_2)
                SHX4_2 = ClearPedTasks
                SHX5_2 = PlayerPedId
                SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2 = SHX5_2()
                SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2)
                SHX4_2 = ClearPedTasksImmediately
                SHX5_2 = PlayerPedId
                SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2 = SHX5_2()
                SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2)
              end
            end
          end
        end
      end
    end
    SHX0_2 = SHX12_1
    if SHX0_2 then
      SHX0_2 = SetTimecycleModifier
      SHX1_2 = "heliGunCam"
      SHX0_2(SHX1_2)
      SHX0_2 = SetTimecycleModifierStrength
      SHX1_2 = 0.3
      SHX0_2(SHX1_2)
      SHX0_2 = RequestScaleformMovie
      SHX1_2 = "WESCAM_INTERFACE"
      SHX0_2 = SHX0_2(SHX1_2)
      SHX13_1 = SHX0_2
      while true do
        SHX0_2 = HasScaleformMovieLoaded
        SHX1_2 = SHX13_1
        SHX0_2 = SHX0_2(SHX1_2)
        if SHX0_2 then
          break
        end
        SHX0_2 = Citizen
        SHX0_2 = SHX0_2.Wait
        SHX1_2 = 0
        SHX0_2(SHX1_2)
      end
      SHX0_2 = GetLocalTime
      SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX0_2()
      SHX6_2 = BeginScaleformMovieMethod
      SHX7_2 = SHX13_1
      SHX8_2 = "SET_DATE"
      SHX6_2(SHX7_2, SHX8_2)
      SHX6_2 = ScaleformMovieMethodAddParamInt
      SHX7_2 = SHX2_2
      SHX6_2(SHX7_2)
      SHX6_2 = ScaleformMovieMethodAddParamInt
      SHX7_2 = SHX1_2
      SHX6_2(SHX7_2)
      SHX6_2 = ScaleformMovieMethodAddParamInt
      SHX7_2 = SHX0_2
      SHX6_2(SHX7_2)
      SHX6_2 = EndScaleformMovieMethod
      SHX6_2()
      SHX6_2 = CMG
      SHX6_2 = SHX6_2.getPlayerPed
      SHX6_2 = SHX6_2()
      SHX7_2 = CMG
      SHX7_2 = SHX7_2.getPlayerVehicle
      SHX7_2 = SHX7_2()
      SHX8_2 = CreateCam
      SHX9_2 = "DEFAULT_SCRIPTED_FLY_CAMERA"
      SHX10_2 = true
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
      SHX9_2 = CMG
      SHX9_2 = SHX9_2.hideAllDisplays
      SHX10_2 = "heli"
      SHX9_2(SHX10_2)
      SHX9_2 = AttachCamToEntity
      SHX10_2 = SHX8_2
      SHX11_2 = SHX7_2
      SHX12_2 = 0.0
      SHX13_2 = 0.0
      SHX14_2 = -2.0
      SHX15_2 = true
      SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
      SHX9_2 = SetCamRot
      SHX10_2 = SHX8_2
      SHX11_2 = 0.0
      SHX12_2 = 0.0
      SHX13_2 = GetEntityHeading
      SHX14_2 = SHX7_2
      SHX13_2 = SHX13_2(SHX14_2)
      SHX14_2 = 2
      SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
      SHX9_2 = SetCamFov
      SHX10_2 = SHX8_2
      SHX11_2 = SHX17_1
      SHX9_2(SHX10_2, SHX11_2)
      SHX9_2 = RenderScriptCams
      SHX10_2 = true
      SHX11_2 = false
      SHX12_2 = 0
      SHX13_2 = true
      SHX14_2 = false
      SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
      SHX9_2 = nil
      SHX10_2 = 0
      while true do
        SHX11_2 = SHX12_1
        if not SHX11_2 then
          break
        end
        SHX11_2 = IsEntityDead
        SHX12_2 = SHX6_2
        SHX11_2 = SHX11_2(SHX12_2)
        if SHX11_2 then
          break
        end
        SHX11_2 = GetVehiclePedIsIn
        SHX12_2 = SHX6_2
        SHX13_2 = false
        SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
        if SHX11_2 ~= SHX7_2 then
          break
        end
        SHX11_2 = SHX19_1
        SHX12_2 = SHX7_2
        SHX11_2 = SHX11_2(SHX12_2)
        if not SHX11_2 then
          break
        end
        SHX11_2 = IsDisabledControlJustPressed
        SHX12_2 = 0
        SHX13_2 = SHX5_1
        SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
        if SHX11_2 then
          SHX11_2 = PlaySoundFrontend
          SHX12_2 = -1
          SHX13_2 = "SELECT"
          SHX14_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          SHX15_2 = false
          SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2)
          SHX11_2 = false
          SHX12_1 = SHX11_2
        end
        SHX11_2 = IsDisabledControlJustPressed
        SHX12_2 = 0
        SHX13_2 = SHX6_1
        SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
        if SHX11_2 then
          SHX11_2 = PlaySoundFrontend
          SHX12_2 = -1
          SHX13_2 = "SELECT"
          SHX14_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
          SHX15_2 = false
          SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2)
          SHX11_2 = SHX20_1
          SHX11_2()
        end
        SHX11_2 = 0.0
        if SHX9_2 then
          SHX12_2 = DoesEntityExist
          SHX13_2 = SHX9_2
          SHX12_2 = SHX12_2(SHX13_2)
          if SHX12_2 then
            SHX12_2 = PointCamAtEntity
            SHX13_2 = SHX8_2
            SHX14_2 = SHX9_2
            SHX15_2 = 0.0
            SHX16_2 = 0.0
            SHX17_2 = 0.0
            SHX18_2 = true
            SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
            SHX12_2 = SHX31_1
            SHX13_2 = SHX9_2
            SHX12_2(SHX13_2)
            SHX12_2 = IsControlJustPressed
            SHX13_2 = 0
            SHX14_2 = SHX9_1
            SHX12_2 = SHX12_2(SHX13_2, SHX14_2)
            if not SHX12_2 then
              SHX12_2 = SHX34_1
              SHX13_2 = SHX8_2
              SHX14_2 = SHX9_2
              SHX12_2 = SHX12_2(SHX13_2, SHX14_2)
              if SHX12_2 then
                goto SHX_LABEL_369
              end
            end
            SHX12_2 = PlaySoundFrontend
            SHX13_2 = -1
            SHX14_2 = "SELECT"
            SHX15_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
            SHX16_2 = false
            SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2)
            SHX9_2 = nil
            SHX12_2 = GetCamRot
            SHX13_2 = SHX8_2
            SHX14_2 = 2
            SHX12_2 = SHX12_2(SHX13_2, SHX14_2)
            SHX13_2 = GetCamFov
            SHX14_2 = SHX8_2
            SHX13_2 = SHX13_2(SHX14_2)
            SHX14_2 = SHX8_2
            SHX15_2 = DestroyCam
            SHX16_2 = SHX14_2
            SHX17_2 = false
            SHX15_2(SHX16_2, SHX17_2)
            SHX15_2 = CreateCam
            SHX16_2 = "DEFAULT_SCRIPTED_FLY_CAMERA"
            SHX17_2 = true
            SHX15_2 = SHX15_2(SHX16_2, SHX17_2)
            SHX8_2 = SHX15_2
            SHX15_2 = AttachCamToEntity
            SHX16_2 = SHX8_2
            SHX17_2 = SHX7_2
            SHX18_2 = 0.0
            SHX19_2 = 0.0
            SHX20_2 = -1.5
            SHX21_2 = true
            SHX15_2(SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
            SHX15_2 = SetCamRot
            SHX16_2 = SHX8_2
            SHX17_2 = SHX12_2.x
            SHX18_2 = SHX12_2.y
            SHX19_2 = SHX12_2.z
            SHX20_2 = 2
            SHX15_2(SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
            SHX15_2 = SetCamFov
            SHX16_2 = SHX8_2
            SHX17_2 = SHX13_2
            SHX15_2(SHX16_2, SHX17_2)
            SHX15_2 = RenderScriptCams
            SHX16_2 = true
            SHX17_2 = false
            SHX18_2 = 0
            SHX19_2 = true
            SHX20_2 = false
            SHX15_2(SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
            -- [FIX IF ERROR] Move ::SHX_LABEL_369:: outside nested blocks until all 'goto SHX_LABEL_369' can see it
            ::SHX_LABEL_369::
            SHX12_2 = SHX27_1
            SHX13_2 = SHX7_2
            SHX14_2 = SHX9_2
            SHX12_2(SHX13_2, SHX14_2)
          else
            SHX9_2 = nil
          end
        else
          SHX12_2 = SHX0_1
          SHX13_2 = SHX1_1
          SHX12_2 = SHX12_2 - SHX13_2
          SHX13_2 = 1.0
          SHX12_2 = SHX13_2 / SHX12_2
          SHX13_2 = SHX17_1
          SHX14_2 = SHX1_1
          SHX13_2 = SHX13_2 - SHX14_2
          SHX11_2 = SHX12_2 * SHX13_2
          SHX12_2 = SHX22_1
          SHX13_2 = SHX8_2
          SHX14_2 = SHX11_2
          SHX12_2(SHX13_2, SHX14_2)
          SHX12_2 = SHX25_1
          SHX13_2 = SHX8_2
          SHX12_2 = SHX12_2(SHX13_2)
          if SHX12_2 then
            SHX13_2 = DoesEntityExist
            SHX14_2 = SHX12_2
            SHX13_2 = SHX13_2(SHX14_2)
            if SHX13_2 then
              SHX13_2 = SHX31_1
              SHX14_2 = SHX12_2
              SHX13_2(SHX14_2)
              SHX13_2 = IsControlJustPressed
              SHX14_2 = 0
              SHX15_2 = SHX9_1
              SHX13_2 = SHX13_2(SHX14_2, SHX15_2)
              if SHX13_2 then
                SHX13_2 = PlaySoundFrontend
                SHX14_2 = -1
                SHX15_2 = "SELECT"
                SHX16_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
                SHX17_2 = false
                SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2)
                SHX13_2 = CMG
                SHX13_2 = SHX13_2.isVehicleFlagged
                SHX14_2 = SHX12_2
                SHX13_2 = SHX13_2(SHX14_2)
                if SHX13_2 then
                  SHX13_2 = Citizen
                  SHX13_2 = SHX13_2.CreateThread
                  SHX14_2 = SHX32_1
                  SHX13_2(SHX14_2)
                end
                SHX9_2 = SHX12_2
              end
            end
          end
          SHX13_2 = SHX28_1
          SHX14_2 = SHX8_2
          SHX13_2(SHX14_2)
        end
        SHX12_2 = IsControlJustPressed
        SHX13_2 = 0
        SHX14_2 = SHX8_1
        SHX12_2 = SHX12_2(SHX13_2, SHX14_2)
        if SHX12_2 then
          SHX12_2 = SHX14_1
          SHX12_2 = not SHX12_2
          SHX14_1 = SHX12_2
        end
        SHX12_2 = SHX14_1
        if SHX12_2 then
          SHX12_2 = GetGameTimer
          SHX12_2 = SHX12_2()
          SHX13_2 = CMG
          SHX13_2 = SHX13_2.rotationToDirection
          SHX14_2 = GetCamRot
          SHX15_2 = SHX8_2
          SHX16_2 = 2
          SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2 = SHX14_2(SHX15_2, SHX16_2)
          SHX13_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2)
          SHX14_2 = SHX15_1
          SHX14_2 = SHX12_2 - SHX14_2
          SHX15_2 = 500
          if SHX14_2 >= SHX15_2 then
            SHX14_2 = GetEntityCoords
            SHX15_2 = SHX7_2
            SHX16_2 = true
            SHX14_2 = SHX14_2(SHX15_2, SHX16_2)
            SHX15_2 = SHX13_2 * 500.0
            SHX14_2 = SHX14_2 + SHX15_2
            SHX15_2 = TriggerServerEvent
            SHX16_2 = "9c20140c50"
            SHX17_2 = SHX14_2
            SHX15_2(SHX16_2, SHX17_2)
            SHX15_1 = SHX12_2
          end
          SHX14_2 = GetEntityCoords
          SHX15_2 = SHX7_2
          SHX16_2 = true
          SHX14_2 = SHX14_2(SHX15_2, SHX16_2)
          SHX15_2 = DrawSpotLight
          SHX16_2 = SHX14_2.x
          SHX17_2 = SHX14_2.y
          SHX18_2 = SHX14_2.z
          SHX19_2 = SHX13_2.x
          SHX20_2 = SHX13_2.y
          SHX21_2 = SHX13_2.z
          SHX22_2 = 255
          SHX23_2 = 255
          SHX24_2 = 255
          SHX25_2 = 500.0
          SHX26_2 = 20.0
          SHX27_2 = 5.0
          SHX28_2 = 15.0
          SHX29_2 = 50.0
          SHX15_2(SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2)
        end
        SHX12_2 = SHX23_1
        SHX13_2 = SHX8_2
        SHX12_2(SHX13_2)
        SHX12_2 = SHX21_1
        SHX12_2()
        SHX12_2 = GetLocalTime
        SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2 = SHX12_2()
        SHX5_2 = SHX17_2
        SHX4_2 = SHX16_2
        SHX3_2 = SHX15_2
        SHX2_2 = SHX14_2
        SHX1_2 = SHX13_2
        SHX0_2 = SHX12_2
        if SHX5_2 ~= SHX10_2 then
          SHX12_2 = BeginScaleformMovieMethod
          SHX13_2 = SHX13_1
          SHX14_2 = "SET_TIME"
          SHX12_2(SHX13_2, SHX14_2)
          SHX12_2 = ScaleformMovieMethodAddParamInt
          SHX13_2 = SHX3_2
          SHX12_2(SHX13_2)
          SHX12_2 = ScaleformMovieMethodAddParamInt
          SHX13_2 = SHX4_2
          SHX12_2(SHX13_2)
          SHX12_2 = ScaleformMovieMethodAddParamInt
          SHX13_2 = SHX5_2
          SHX12_2(SHX13_2)
          SHX12_2 = EndScaleformMovieMethod
          SHX12_2()
          SHX10_2 = SHX5_2
        end
        SHX12_2 = SHX29_1
        SHX13_2 = SHX7_2
        SHX12_2(SHX13_2)
        SHX12_2 = SHX30_1
        SHX13_2 = SHX8_2
        SHX12_2(SHX13_2)
        SHX12_2 = DrawScaleformMovieFullscreen
        SHX13_2 = SHX13_1
        SHX14_2 = 255
        SHX15_2 = 255
        SHX16_2 = 255
        SHX17_2 = 255
        SHX18_2 = 0
        SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
        SHX12_2 = Citizen
        SHX12_2 = SHX12_2.Wait
        SHX13_2 = 0
        SHX12_2(SHX13_2)
      end
      SHX11_2 = false
      SHX12_1 = SHX11_2
      SHX11_2 = ClearTimecycleModifier
      SHX11_2()
      SHX11_2 = SHX0_1
      SHX12_2 = SHX1_1
      SHX11_2 = SHX11_2 + SHX12_2
      SHX11_2 = SHX11_2 * 0.5
      SHX17_1 = SHX11_2
      SHX11_2 = RenderScriptCams
      SHX12_2 = false
      SHX13_2 = false
      SHX14_2 = 0
      SHX15_2 = true
      SHX16_2 = false
      SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
      SHX11_2 = SetScaleformMovieAsNoLongerNeeded
      SHX12_2 = SHX13_1
      SHX11_2(SHX12_2)
      SHX11_2 = DestroyCam
      SHX12_2 = SHX8_2
      SHX13_2 = false
      SHX11_2(SHX12_2, SHX13_2)
      SHX11_2 = SetNightvision
      SHX12_2 = false
      SHX11_2(SHX12_2)
      SHX11_2 = SetSeethrough
      SHX12_2 = false
      SHX11_2(SHX12_2)
      SHX11_2 = CMG
      SHX11_2 = SHX11_2.showAllDisplays
      SHX12_2 = "heli"
      SHX11_2(SHX12_2)
    end
    SHX0_2 = Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
end
SHX36_1 = Citizen
SHX36_1 = SHX36_1.CreateThread
SHX37_1 = SHX35_1
SHX36_1(SHX37_1)
SHX36_1 = Citizen
SHX36_1 = SHX36_1.CreateThread
function SHX37_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  while true do
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerPed
    SHX0_2 = SHX0_2()
    SHX1_2 = GetVehiclePedIsIn
    SHX2_2 = SHX0_2
    SHX3_2 = false
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    SHX2_2 = GetEntityModel
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    SHX3_2 = table
    SHX3_2 = SHX3_2.has
    SHX4_2 = SHX16_1
    SHX5_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
    if SHX3_2 then
      SHX3_2 = true
      SHX11_1 = SHX3_2
    else
      SHX3_2 = false
      SHX11_1 = SHX3_2
    end
    SHX3_2 = Wait
    SHX4_2 = 1000
    SHX3_2(SHX4_2)
  end
end
SHX36_1(SHX37_1)
SHX36_1 = {}
SHX37_1 = RegisterNetEvent
SHX38_1 = "9c20140c50"
function SHX39_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX2_2 = GetPlayerFromServerId
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if -1 == SHX2_2 then
    return
  end
  SHX3_2 = GetPlayerPed
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if 0 ~= SHX3_2 then
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.getPlayerPed
    SHX4_2 = SHX4_2()
    if SHX3_2 ~= SHX4_2 then
      goto SHX_LABEL_18
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_18:: outside nested blocks until all 'goto SHX_LABEL_18' can see it
  ::SHX_LABEL_18::
  SHX4_2 = GetVehiclePedIsUsing
  SHX5_2 = SHX3_2
  SHX4_2 = SHX4_2(SHX5_2)
  if 0 == SHX4_2 then
    return
  end
  SHX5_2 = SHX36_1
  SHX5_2 = SHX5_2[SHX0_2]
  if not SHX5_2 then
    SHX6_2 = {}
    SHX6_2.vehicle = SHX4_2
    SHX6_2.currentPosition = SHX1_2
    SHX7_2 = GetGameTimer
    SHX7_2 = SHX7_2()
    SHX6_2.currentTime = SHX7_2
    SHX5_2 = SHX6_2
    SHX6_2 = SHX36_1
    SHX6_2[SHX0_2] = SHX5_2
  end
  SHX6_2 = SHX5_2.currentPosition
  SHX5_2.previousPosition = SHX6_2
  SHX6_2 = SHX5_2.currentTime
  SHX5_2.previousTime = SHX6_2
  SHX5_2.currentPosition = SHX1_2
  SHX6_2 = GetGameTimer
  SHX6_2 = SHX6_2()
  SHX5_2.currentTime = SHX6_2
  SHX6_2 = GetEntityCoords
  SHX7_2 = SHX4_2
  SHX8_2 = true
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  SHX5_2.heliPosition = SHX6_2
end
SHX37_1(SHX38_1, SHX39_1)
function SHX37_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2
  SHX0_2 = GetGameTimer
  SHX0_2 = SHX0_2()
  SHX1_2 = pairs
  SHX2_2 = SHX36_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.currentTime
    SHX8_2 = SHX6_2.previousTime
    SHX7_2 = SHX7_2 - SHX8_2
    SHX8_2 = SHX6_2.currentTime
    SHX8_2 = SHX0_2 - SHX8_2
    SHX8_2 = SHX8_2 / SHX7_2
    SHX9_2 = SHX6_2.currentPosition
    SHX10_2 = GetEntityCoords
    SHX11_2 = SHX6_2.vehicle
    SHX12_2 = true
    SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
    SHX11_2 = SHX6_2.heliPosition
    SHX10_2 = SHX10_2 - SHX11_2
    SHX9_2 = SHX9_2 + SHX10_2
    SHX10_2 = SHX6_2.previousPosition
    SHX10_2 = SHX9_2 - SHX10_2
    SHX11_2 = SHX6_2.previousPosition
    SHX12_2 = SHX10_2 * SHX8_2
    SHX11_2 = SHX11_2 + SHX12_2
    SHX12_2 = norm
    SHX13_2 = SHX6_2.heliPosition
    SHX13_2 = SHX11_2 - SHX13_2
    SHX12_2 = SHX12_2(SHX13_2)
    SHX13_2 = DrawSpotLight
    SHX14_2 = SHX6_2.heliPosition
    SHX14_2 = SHX14_2.x
    SHX15_2 = SHX6_2.heliPosition
    SHX15_2 = SHX15_2.y
    SHX16_2 = SHX6_2.heliPosition
    SHX16_2 = SHX16_2.z
    SHX17_2 = SHX12_2.x
    SHX18_2 = SHX12_2.y
    SHX19_2 = SHX12_2.z
    SHX20_2 = 255
    SHX21_2 = 255
    SHX22_2 = 255
    SHX23_2 = 500.0
    SHX24_2 = 20.0
    SHX25_2 = 5.0
    SHX26_2 = 15.0
    SHX27_2 = 50.0
    SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2)
    SHX13_2 = SHX6_2.currentTime
    SHX13_2 = SHX0_2 - SHX13_2
    SHX14_2 = 1250
    if SHX13_2 > SHX14_2 then
      SHX13_2 = SHX36_1
      SHX13_2[SHX5_2] = nil
    end
  end
end
SHX38_1 = CMG
SHX38_1 = SHX38_1.createThreadOnTick
SHX39_1 = SHX37_1
SHX40_1 = "Interpolate Spotlight"
SHX38_1(SHX39_1, SHX40_1)
