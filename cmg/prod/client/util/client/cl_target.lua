-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1
function SHX0_1(SHX0_2)
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
GetCoordsFromCam = SHX0_1
function SHX0_1(SHX0_2, SHX1_2)
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
Target = SHX0_1
function SHX0_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SendNUIMessage
  SHX2_2 = {}
  SHX2_2.crosshair = SHX0_2
  SHX1_2(SHX2_2)
end
Crosshair = SHX0_1
