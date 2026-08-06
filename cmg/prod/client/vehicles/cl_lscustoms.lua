-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_lscustoms"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = CMG
SHX1_1 = SHX1_1.loadModule
SHX2_1 = "cfg/cfg_store"
SHX1_1 = SHX1_1(SHX2_1)
SHX2_1 = RMenu
SHX2_1 = SHX2_1.Add
SHX3_1 = "lscustoms"
SHX4_1 = "repair"
SHX5_1 = RageUI
SHX5_1 = SHX5_1.CreateMenu
SHX6_1 = ""
SHX7_1 = "Repair Vehicle"
SHX8_1 = CMG
SHX8_1 = SHX8_1.getRageUIMenuWidth
SHX8_1 = SHX8_1()
SHX9_1 = CMG
SHX9_1 = SHX9_1.getRageUIMenuHeight
SHX9_1 = SHX9_1()
SHX10_1 = "cmg_lscustomsui"
SHX11_1 = "cmg_lscustomsui"
SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1)
SHX2_1(SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1)
SHX2_1 = RMenu
SHX2_1 = SHX2_1.Add
SHX3_1 = "lscustoms"
SHX4_1 = "mainmenu"
SHX5_1 = RageUI
SHX5_1 = SHX5_1.CreateMenu
SHX6_1 = ""
SHX7_1 = "Los Santos Customs"
SHX8_1 = CMG
SHX8_1 = SHX8_1.getRageUIMenuWidth
SHX8_1 = SHX8_1()
SHX9_1 = CMG
SHX9_1 = SHX9_1.getRageUIMenuHeight
SHX9_1 = SHX9_1()
SHX10_1 = "cmg_lscustomsui"
SHX11_1 = "cmg_lscustomsui"
SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1)
SHX2_1(SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1)
SHX2_1 = {}
function SHX3_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = table
  SHX1_2 = SHX1_2.concat
  SHX2_2 = SHX2_1
  SHX3_2 = "_"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX2_2 = table
  SHX2_2 = SHX2_2.insert
  SHX3_2 = SHX2_1
  SHX4_2 = string
  SHX4_2 = SHX4_2.lower
  SHX5_2 = string
  SHX5_2 = SHX5_2.gsub
  SHX6_2 = SHX0_2.name
  SHX7_2 = "%s+"
  SHX8_2 = ""
  SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX2_2 = table
  SHX2_2 = SHX2_2.concat
  SHX3_2 = SHX2_1
  SHX4_2 = "_"
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX0_2.menu = SHX2_2
  SHX2_2 = SHX0_2.name
  if "Main Menu" ~= SHX2_2 then
    SHX2_2 = RMenu
    SHX2_2 = SHX2_2.Add
    SHX3_2 = "lscustoms"
    SHX4_2 = SHX0_2.menu
    SHX5_2 = RageUI
    SHX5_2 = SHX5_2.CreateSubMenu
    SHX6_2 = RMenu
    SHX7_2 = SHX6_2
    SHX6_2 = SHX6_2.Get
    SHX8_2 = "lscustoms"
    SHX9_2 = SHX1_2
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
    SHX7_2 = ""
    SHX8_2 = SHX0_2.name
    SHX9_2 = CMG
    SHX9_2 = SHX9_2.getRageUIMenuWidth
    SHX9_2 = SHX9_2()
    SHX10_2 = CMG
    SHX10_2 = SHX10_2.getRageUIMenuHeight
    SHX10_2 = SHX10_2()
    SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  end
  SHX2_2 = SHX0_2.type
  if "categoryList" == SHX2_2 then
    SHX2_2 = pairs
    SHX3_2 = SHX0_2.categories
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
    for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
      SHX8_2 = SHX3_1
      SHX9_2 = SHX7_2
      SHX8_2(SHX9_2)
    end
  else
    SHX2_2 = RMenu
    SHX3_2 = SHX2_2
    SHX2_2 = SHX2_2.Get
    SHX4_2 = "lscustoms"
    SHX5_2 = SHX0_2.menu
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = SHX2_2
    SHX2_2 = SHX2_2.AddInstructionButton
    SHX4_2 = {}
    SHX5_2 = "~INPUT_NEXT_CAMERA~"
    SHX6_2 = "Change Camera"
    SHX4_2[1] = SHX5_2
    SHX4_2[2] = SHX6_2
    SHX2_2(SHX3_2, SHX4_2)
  end
  SHX2_2 = table
  SHX2_2 = SHX2_2.remove
  SHX3_2 = SHX2_1
  SHX2_2(SHX3_2)
end
SHX4_1 = SHX3_1
SHX5_1 = SHX0_1.category
SHX4_1(SHX5_1)
SHX4_1 = {}
SHX5_1 = nil
SHX6_1 = 0
SHX7_1 = nil
SHX8_1 = 0
SHX9_1 = 0
SHX10_1 = 0
SHX11_1 = -1
SHX12_1 = false
SHX13_1 = nil
SHX14_1 = nil
SHX15_1 = {}
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = {}
  SHX1_2 = -1
  SHX2_2 = GetVehicleLiveryCount
  SHX3_2 = SHX6_1
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = 1
  for SHX4_2 = SHX1_2, SHX2_2, SHX3_2 do
    SHX5_2 = table
    SHX5_2 = SHX5_2.insert
    SHX6_2 = SHX0_2
    SHX7_2 = SHX4_2
    SHX5_2(SHX6_2, SHX7_2)
  end
  return SHX0_2
end
SHX15_1.livery = SHX16_1
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = {}
  SHX1_2 = 0
  SHX2_2 = 128
  SHX3_2 = 1
  for SHX4_2 = SHX1_2, SHX2_2, SHX3_2 do
    SHX5_2 = DoesExtraExist
    SHX6_2 = SHX6_1
    SHX7_2 = SHX4_2
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
    if SHX5_2 then
      SHX5_2 = table
      SHX5_2 = SHX5_2.insert
      SHX6_2 = SHX0_2
      SHX7_2 = SHX4_2
      SHX5_2(SHX6_2, SHX7_2)
    end
  end
  return SHX0_2
end
SHX15_1.extra = SHX16_1
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = {}
  SHX1_2 = 1
  SHX2_2 = 3
  SHX3_2 = 1
  for SHX4_2 = SHX1_2, SHX2_2, SHX3_2 do
    SHX5_2 = table
    SHX5_2 = SHX5_2.insert
    SHX6_2 = SHX0_2
    SHX7_2 = SHX4_2
    SHX5_2(SHX6_2, SHX7_2)
  end
  return SHX0_2
end
SHX15_1.bootupgrade = SHX16_1
function SHX16_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX2_2 = SetCamActive
  SHX3_2 = SHX9_1
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = GetModelDimensions
  SHX3_2 = GetEntityModel
  SHX4_2 = SHX6_1
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX3_2(SHX4_2)
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX3_2 = SHX2_2.y
  SHX3_2 = SHX3_2 * -2.0
  SHX4_2 = SHX2_2.x
  SHX4_2 = SHX4_2 * -2.0
  SHX5_2 = SHX2_2.z
  SHX5_2 = SHX5_2 * -2.0
  SHX6_2 = nil
  if "front" == SHX0_2 then
    SHX7_2 = GetOffsetFromEntityInWorldCoords
    SHX8_2 = SHX6_1
    SHX9_2 = SHX1_2.x
    SHX10_2 = SHX3_2 / 2.0
    SHX11_2 = SHX1_2.y
    SHX10_2 = SHX10_2 + SHX11_2
    SHX11_2 = SHX1_2.z
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX6_2 = SHX7_2
  elseif "front-top" == SHX0_2 then
    SHX7_2 = GetOffsetFromEntityInWorldCoords
    SHX8_2 = SHX6_1
    SHX9_2 = SHX1_2.x
    SHX10_2 = SHX3_2 / 2.0
    SHX11_2 = SHX1_2.y
    SHX10_2 = SHX10_2 + SHX11_2
    SHX11_2 = SHX1_2.z
    SHX11_2 = SHX5_2 + SHX11_2
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX6_2 = SHX7_2
  elseif "back" == SHX0_2 then
    SHX7_2 = GetOffsetFromEntityInWorldCoords
    SHX8_2 = SHX6_1
    SHX9_2 = SHX1_2.x
    SHX10_2 = SHX3_2 / 2.0
    SHX10_2 = -SHX10_2
    SHX11_2 = SHX1_2.y
    SHX10_2 = SHX10_2 + SHX11_2
    SHX11_2 = SHX1_2.z
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX6_2 = SHX7_2
  elseif "back-top" == SHX0_2 then
    SHX7_2 = GetOffsetFromEntityInWorldCoords
    SHX8_2 = SHX6_1
    SHX9_2 = SHX1_2.x
    SHX10_2 = SHX3_2 / 2.0
    SHX10_2 = -SHX10_2
    SHX11_2 = SHX1_2.y
    SHX10_2 = SHX10_2 + SHX11_2
    SHX11_2 = SHX5_2 / 2.0
    SHX12_2 = SHX1_2.z
    SHX11_2 = SHX11_2 + SHX12_2
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX6_2 = SHX7_2
  elseif "left" == SHX0_2 then
    SHX7_2 = GetOffsetFromEntityInWorldCoords
    SHX8_2 = SHX6_1
    SHX9_2 = SHX4_2 / 2.0
    SHX9_2 = -SHX9_2
    SHX10_2 = SHX1_2.x
    SHX9_2 = SHX9_2 + SHX10_2
    SHX10_2 = SHX1_2.y
    SHX11_2 = SHX1_2.z
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX6_2 = SHX7_2
  elseif "right" == SHX0_2 then
    SHX7_2 = GetOffsetFromEntityInWorldCoords
    SHX8_2 = SHX6_1
    SHX9_2 = SHX4_2 / 2.0
    SHX10_2 = SHX1_2.x
    SHX9_2 = SHX9_2 + SHX10_2
    SHX10_2 = SHX1_2.y
    SHX11_2 = SHX1_2.z
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX6_2 = SHX7_2
  elseif "middle" == SHX0_2 then
    SHX7_2 = GetOffsetFromEntityInWorldCoords
    SHX8_2 = SHX6_1
    SHX9_2 = SHX1_2.x
    SHX10_2 = SHX1_2.y
    SHX11_2 = SHX5_2 / 2.0
    SHX12_2 = SHX1_2.z
    SHX11_2 = SHX11_2 + SHX12_2
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX6_2 = SHX7_2
  end
  SHX7_2 = SetCamCoord
  SHX8_2 = SHX9_1
  SHX9_2 = SHX6_2.x
  SHX10_2 = SHX6_2.y
  SHX11_2 = SHX6_2.z
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX7_2 = GetOffsetFromEntityInWorldCoords
  SHX8_2 = SHX6_1
  SHX9_2 = 0.0
  SHX10_2 = 0.0
  SHX11_2 = 0.0
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX8_2 = PointCamAtCoord
  SHX9_2 = SHX9_1
  SHX10_2 = SHX7_2.x
  SHX11_2 = SHX7_2.y
  SHX12_2 = SHX7_2.z
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX8_2 = RenderScriptCams
  SHX9_2 = true
  SHX10_2 = true
  SHX11_2 = 1000
  SHX12_2 = false
  SHX13_2 = false
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
end
function SHX17_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX2_2 = GetEntityBoneIndexByName
  SHX3_2 = SHX6_1
  SHX4_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  if -1 == SHX2_2 then
    return
  end
  SHX3_2 = GetWorldPositionOfEntityBone
  SHX4_2 = SHX6_1
  SHX5_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX4_2 = GetOffsetFromEntityGivenWorldCoords
  SHX5_2 = SHX6_1
  SHX6_2 = SHX3_2.x
  SHX7_2 = SHX3_2.y
  SHX8_2 = SHX3_2.z
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = GetOffsetFromEntityInWorldCoords
  SHX6_2 = SHX6_1
  SHX7_2 = SHX4_2.x
  SHX8_2 = SHX1_2.x
  SHX7_2 = SHX7_2 + SHX8_2
  SHX8_2 = SHX4_2.y
  SHX9_2 = SHX1_2.y
  SHX8_2 = SHX8_2 + SHX9_2
  SHX9_2 = SHX4_2.z
  SHX10_2 = SHX1_2.z
  SHX9_2 = SHX9_2 + SHX10_2
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX6_2 = SetCamActive
  SHX7_2 = SHX9_1
  SHX8_2 = true
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = SetCamCoord
  SHX7_2 = SHX9_1
  SHX8_2 = SHX5_2.x
  SHX9_2 = SHX5_2.y
  SHX10_2 = SHX5_2.z
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX6_2 = GetOffsetFromEntityInWorldCoords
  SHX7_2 = SHX6_1
  SHX8_2 = 0.0
  SHX9_2 = SHX4_2.y
  SHX10_2 = SHX4_2.z
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX7_2 = PointCamAtCoord
  SHX8_2 = SHX9_1
  SHX9_2 = SHX6_2.x
  SHX10_2 = SHX6_2.y
  SHX11_2 = SHX6_2.z
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX7_2 = RenderScriptCams
  SHX8_2 = true
  SHX9_2 = true
  SHX10_2 = 1000
  SHX11_2 = false
  SHX12_2 = false
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
end
function SHX18_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX1_2 = SHX9_1
  if 0 == SHX1_2 then
    return
  end
  SHX1_2 = SHX0_2.cameraPreset
  if not SHX1_2 then
    return
  end
  SHX2_2 = SHX0_1.cameraPresets
  SHX2_2 = SHX2_2[SHX1_2]
  SHX3_2 = assert
  SHX4_2 = SHX2_2
  SHX5_2 = string
  SHX5_2 = SHX5_2.format
  SHX6_2 = "Camera preset %s does not exist"
  SHX7_2 = SHX1_2
  SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX5_2(SHX6_2, SHX7_2)
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX3_2 = SHX2_2.type
  if "moveVeh" == SHX3_2 then
    SHX3_2 = SHX16_1
    SHX4_2 = SHX2_2.position
    SHX5_2 = SHX2_2.offset
    SHX3_2(SHX4_2, SHX5_2)
  else
    SHX3_2 = SHX2_2.type
    if "pointBone" == SHX3_2 then
      SHX3_2 = SHX17_1
      SHX4_2 = SHX2_2.bone
      SHX5_2 = SHX2_2.offset
      SHX3_2(SHX4_2, SHX5_2)
    else
      SHX3_2 = SHX2_2.type
      if "doors" == SHX3_2 then
        SHX3_2 = pairs
        SHX4_2 = SHX2_2.doors
        SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
        for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
          SHX9_2 = SetVehicleDoorOpen
          SHX10_2 = SHX6_1
          SHX11_2 = SHX8_2
          SHX12_2 = false
          SHX13_2 = false
          SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
        end
      else
        SHX3_2 = SHX2_2.type
        if "viewMode" == SHX3_2 then
          SHX3_2 = SetFollowVehicleCamViewMode
          SHX4_2 = SHX2_2.mode
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = SHX9_1
  if 0 == SHX0_2 then
    return
  end
  SHX0_2 = GetFinalRenderedCamCoord
  SHX0_2 = SHX0_2()
  SHX1_2 = SetCamCoord
  SHX2_2 = SHX9_1
  SHX3_2 = SHX0_2.x
  SHX4_2 = SHX0_2.y
  SHX5_2 = SHX0_2.z
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = GetGameplayCamRot
  SHX2_2 = 2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SetCamRot
  SHX3_2 = SHX9_1
  SHX4_2 = SHX1_2.x
  SHX5_2 = SHX1_2.y
  SHX6_2 = SHX1_2.z
  SHX7_2 = 2
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX2_2 = RenderScriptCams
  SHX3_2 = true
  SHX4_2 = true
  SHX5_2 = 0
  SHX6_2 = false
  SHX7_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX2_2 = RenderScriptCams
  SHX3_2 = false
  SHX4_2 = true
  SHX5_2 = 1000
  SHX6_2 = false
  SHX7_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX2_2 = SetCamActive
  SHX3_2 = SHX10_1
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = TogglePausedRenderphases
  SHX3_2 = true
  SHX2_2(SHX3_2)
  SHX2_2 = SetCamActive
  SHX3_2 = SHX9_1
  SHX4_2 = false
  SHX2_2(SHX3_2, SHX4_2)
end
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX1_2 = SHX0_2.cameraPreset
  if not SHX1_2 then
    return
  end
  SHX2_2 = SHX0_1.cameraPresets
  SHX2_2 = SHX2_2[SHX1_2]
  SHX3_2 = assert
  SHX4_2 = SHX2_2
  SHX5_2 = string
  SHX5_2 = SHX5_2.format
  SHX6_2 = "Camera preset %s does not exist"
  SHX7_2 = SHX1_2
  SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX5_2(SHX6_2, SHX7_2)
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX3_2 = SHX2_2.type
  if "moveVeh" == SHX3_2 then
    SHX3_2 = SHX19_1
    SHX3_2()
  else
    SHX3_2 = SHX2_2.type
    if "pointBone" == SHX3_2 then
      SHX3_2 = SHX19_1
      SHX3_2()
    else
      SHX3_2 = SHX2_2.type
      if "doors" == SHX3_2 then
        SHX3_2 = 0
        SHX4_2 = GetNumberOfVehicleDoors
        SHX5_2 = SHX6_1
        SHX4_2 = SHX4_2(SHX5_2)
        SHX5_2 = 1
        for SHX6_2 = SHX3_2, SHX4_2, SHX5_2 do
          SHX7_2 = SetVehicleDoorOpen
          SHX8_2 = SHX6_1
          SHX9_2 = SHX6_2
          SHX10_2 = false
          SHX11_2 = false
          SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
        end
      else
        SHX3_2 = SHX2_2.type
        if "viewMode" == SHX3_2 then
          SHX3_2 = SetFollowVehicleCamViewMode
          SHX4_2 = 1
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
function SHX21_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX2_2 = pairs
  SHX3_2 = SHX0_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    if true == SHX7_2 then
      SHX8_2 = SHX1_2
      SHX9_2 = SHX6_2
      SHX8_2(SHX9_2)
      return
    end
  end
  SHX2_2 = SHX1_2
  SHX3_2 = nil
  SHX2_2(SHX3_2)
end
function SHX22_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = {}
  SHX0_2[1] = 5
  SHX0_2[2] = 7
  SHX0_2[3] = 10
  SHX0_2[4] = 12
  SHX0_2[5] = 15
  SHX0_2[6] = 20
  SHX1_2 = 6
  SHX2_2 = 1
  SHX3_2 = -1
  for SHX4_2 = SHX1_2, SHX2_2, SHX3_2 do
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.hasClientSkill
    SHX6_2 = "mechanic_lsc_discount_"
    SHX7_2 = SHX4_2
    SHX6_2 = SHX6_2 .. SHX7_2
    SHX5_2 = SHX5_2(SHX6_2)
    if SHX5_2 then
      SHX5_2 = SHX0_2[SHX4_2]
      return SHX5_2
    end
  end
  SHX1_2 = 0
  return SHX1_2
end
function SHX23_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  if not SHX0_2 or SHX0_2 <= 0 then
    return SHX0_2
  end
  SHX1_2 = SHX22_1
  SHX1_2 = SHX1_2()
  SHX2_2 = math
  SHX2_2 = SHX2_2.floor
  SHX3_2 = SHX1_2 / 100
  SHX4_2 = 1
  SHX3_2 = SHX4_2 - SHX3_2
  SHX3_2 = SHX0_2 * SHX3_2
  return SHX2_2(SHX3_2)
end
function SHX24_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  if SHX0_2 then
    SHX3_2 = {}
    SHX4_2 = RageUI
    SHX4_2 = SHX4_2.BadgeStyle
    SHX4_2 = SHX4_2.CarWhite
    SHX3_2.RightBadge = SHX4_2
    return SHX3_2
  elseif SHX1_2 then
    SHX3_2 = {}
    SHX4_2 = RageUI
    SHX4_2 = SHX4_2.BadgeStyle
    SHX4_2 = SHX4_2.CarBlack
    SHX3_2.RightBadge = SHX4_2
    return SHX3_2
  else
    SHX3_2 = SHX23_1
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    SHX4_2 = {}
    SHX5_2 = "\194\163"
    SHX6_2 = getMoneyStringFormatted
    SHX7_2 = SHX3_2
    SHX6_2 = SHX6_2(SHX7_2)
    SHX5_2 = SHX5_2 .. SHX6_2
    SHX4_2.RightLabel = SHX5_2
    return SHX4_2
  end
end
function SHX25_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = SHX11_1
  if -1 ~= SHX0_2 then
    return
  end
  SHX0_2 = GetSoundId
  SHX0_2 = SHX0_2()
  SHX11_1 = SHX0_2
  SHX0_2 = PlaySoundFromEntity
  SHX1_2 = SHX11_1
  SHX2_2 = "Drill"
  SHX3_2 = PlayerPedId
  SHX3_2 = SHX3_2()
  SHX4_2 = "DLC_HEIST_FLEECA_SOUNDSET"
  SHX5_2 = true
  SHX6_2 = 0
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.CreateThread
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
    SHX0_3 = GetGameTimer
    SHX0_3 = SHX0_3()
    while true do
      SHX1_3 = GetGameTimer
      SHX1_3 = SHX1_3()
      SHX1_3 = SHX1_3 - SHX0_3
      SHX2_3 = 2000
      if not (SHX1_3 < SHX2_3) then
        break
      end
      SHX1_3 = GetGameTimer
      SHX1_3 = SHX1_3()
      SHX1_3 = SHX1_3 - SHX0_3
      SHX1_3 = SHX1_3 / 2000
      SHX2_3 = SetVariableOnSound
      SHX3_3 = SHX11_1
      SHX4_3 = "DrillState"
      SHX5_3 = SHX1_3
      SHX2_3(SHX3_3, SHX4_3, SHX5_3)
      SHX2_3 = Citizen
      SHX2_3 = SHX2_3.Wait
      SHX3_3 = 0
      SHX2_3(SHX3_3)
    end
    SHX1_3 = StopSound
    SHX2_3 = SHX11_1
    SHX1_3(SHX2_3)
    SHX1_3 = Citizen
    SHX1_3 = SHX1_3.Wait
    SHX2_3 = 1000
    SHX1_3(SHX2_3)
    SHX1_3 = ReleaseSoundId
    SHX2_3 = SHX11_1
    SHX1_3(SHX2_3)
    SHX1_3 = -1
    SHX11_1 = SHX1_3
  end
  SHX0_2(SHX1_2)
end
function SHX26_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = SHX0_2.modType
  if 18 ~= SHX2_2 then
    SHX2_2 = SHX0_2.modType
    if 22 ~= SHX2_2 then
      goto SHX_LABEL_13
    end
  end
  SHX2_2 = ToggleVehicleMod
  SHX3_2 = SHX6_1
  SHX4_2 = SHX0_2.modType
  SHX5_2 = true
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  goto SHX_LABEL_20
  -- [FIX IF ERROR] Move ::SHX_LABEL_13:: outside nested blocks until all 'goto SHX_LABEL_13' can see it
  ::SHX_LABEL_13::
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.setVehicleMod
  SHX3_2 = SHX6_1
  SHX4_2 = SHX0_2.modType
  SHX5_2 = SHX1_2
  SHX6_2 = true
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  -- [FIX IF ERROR] Move ::SHX_LABEL_20:: outside nested blocks until all 'goto SHX_LABEL_20' can see it
  ::SHX_LABEL_20::
end
function SHX27_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX21_1
  SHX3_2 = SHX0_2.saveKey
  SHX2_2 = SHX4_1
  SHX2_2 = SHX2_2[SHX3_2]
  function SHX3_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
    if SHX0_3 then
      SHX1_3 = SHX0_2.modType
      if 18 ~= SHX1_3 then
        SHX1_3 = SHX0_2.modType
        if 2 ~= SHX1_3 then
          goto SHX_LABEL_15
        end
      end
      SHX1_3 = ToggleVehicleMod
      SHX2_3 = SHX6_1
      SHX3_3 = SHX0_2.modType
      SHX4_3 = true
      SHX1_3(SHX2_3, SHX3_3, SHX4_3)
      goto SHX_LABEL_47
      -- [FIX IF ERROR] Move ::SHX_LABEL_15:: outside nested blocks until all 'goto SHX_LABEL_15' can see it
      ::SHX_LABEL_15::
      SHX1_3 = CMG
      SHX1_3 = SHX1_3.setVehicleMod
      SHX2_3 = SHX6_1
      SHX3_3 = SHX0_2.modType
      SHX4_3 = tonumber
      SHX5_3 = SHX0_3
      SHX4_3 = SHX4_3(SHX5_3)
      if not SHX4_3 then
        SHX4_3 = 0
      end
      SHX5_3 = false
      SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    else
      SHX1_3 = SHX0_2.modType
      if 18 ~= SHX1_3 then
        SHX1_3 = SHX0_2.modType
        if 2 ~= SHX1_3 then
          goto SHX_LABEL_40
        end
      end
      SHX1_3 = ToggleVehicleMod
      SHX2_3 = SHX6_1
      SHX3_3 = SHX0_2.modType
      SHX4_3 = false
      SHX1_3(SHX2_3, SHX3_3, SHX4_3)
      goto SHX_LABEL_47
      -- [FIX IF ERROR] Move ::SHX_LABEL_40:: outside nested blocks until all 'goto SHX_LABEL_40' can see it
      ::SHX_LABEL_40::
      SHX1_3 = CMG
      SHX1_3 = SHX1_3.setVehicleMod
      SHX2_3 = SHX6_1
      SHX3_3 = SHX0_2.modType
      SHX4_3 = -1
      SHX5_3 = false
      SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_47:: outside nested blocks until all 'goto SHX_LABEL_47' can see it
    ::SHX_LABEL_47::
  end
  SHX1_2(SHX2_2, SHX3_2)
end
function SHX28_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX1_2 = -1
  SHX2_2 = GetNumVehicleMods
  SHX3_2 = SHX6_1
  SHX4_2 = SHX0_2.modType
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SHX2_2 - 1
  SHX3_2 = 1
  for SHX4_2 = SHX1_2, SHX2_2, SHX3_2 do
    SHX5_2 = "Stock"
    SHX6_2 = nil
    if SHX4_2 >= 0 then
      SHX7_2 = GetModTextLabel
      SHX8_2 = SHX6_1
      SHX9_2 = SHX0_2.modType
      SHX10_2 = SHX4_2
      SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
      SHX6_2 = SHX7_2
      SHX7_2 = GetLabelText
      SHX8_2 = SHX6_2
      SHX7_2 = SHX7_2(SHX8_2)
      SHX5_2 = SHX7_2 or SHX5_2
      if "NULL" == SHX7_2 or not SHX7_2 then
        SHX5_2 = "N/A"
      end
    end
    SHX8_2 = SHX0_2.saveKey
    SHX7_2 = SHX4_1
    SHX7_2 = SHX7_2[SHX8_2]
    SHX8_2 = tostring
    SHX9_2 = SHX4_2
    SHX8_2 = SHX8_2(SHX9_2)
    SHX7_2 = SHX7_2[SHX8_2]
    if SHX4_2 >= 0 then
      SHX8_2 = SHX0_2.price
      if SHX8_2 then
        goto SHX_LABEL_41
      end
    end
    SHX8_2 = 0
    -- [FIX IF ERROR] Move ::SHX_LABEL_41:: outside nested blocks until all 'goto SHX_LABEL_41' can see it
    ::SHX_LABEL_41::
    SHX9_2 = SHX24_1
    SHX10_2 = true == SHX7_2
    SHX11_2 = nil ~= SHX7_2
    SHX12_2 = SHX8_2
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
    SHX10_2 = RageUI
    SHX10_2 = SHX10_2.ButtonWithStyle
    SHX11_2 = SHX5_2
    SHX12_2 = nil
    SHX13_2 = SHX9_2
    SHX14_2 = true
    function SHX15_2(SHX0_3, SHX1_3, SHX2_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
      if SHX1_3 then
        SHX3_3 = SHX26_1
        SHX4_3 = SHX0_2
        SHX5_3 = SHX4_2
        SHX3_3(SHX4_3, SHX5_3)
      end
      if SHX2_3 then
        SHX3_3 = SHX7_2
        if true == SHX3_3 then
          SHX3_3 = notify
          SHX4_3 = "~r~You have already applied this mod"
          SHX3_3(SHX4_3)
        else
          SHX3_3 = SHX7_2
          if false == SHX3_3 then
            SHX3_3 = TriggerServerEvent
            SHX4_3 = "0da10c1417"
            SHX5_3 = SHX8_1
            SHX6_3 = SHX0_1.categoryToIndentifier
            SHX7_3 = SHX0_2
            SHX6_3 = SHX6_3[SHX7_3]
            SHX7_3 = SHX4_2
            SHX8_3 = SHX6_2
            SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
            SHX3_3 = SHX25_1
            SHX3_3()
          else
            SHX3_3 = TriggerServerEvent
            SHX4_3 = "bdba243925"
            SHX5_3 = SHX8_1
            SHX6_3 = SHX0_1.categoryToIndentifier
            SHX7_3 = SHX0_2
            SHX6_3 = SHX6_3[SHX7_3]
            SHX7_3 = SHX4_2
            SHX8_3 = SHX6_2
            SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
            SHX3_3 = SHX25_1
            SHX3_3()
          end
        end
      end
    end
    SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  end
end
function SHX29_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = SHX0_2.saveKey
  if "liveries" == SHX2_2 then
    SHX2_2 = SetVehicleLivery
    SHX3_2 = SHX6_1
    SHX4_2 = SHX1_2
    SHX2_2(SHX3_2, SHX4_2)
  end
end
function SHX30_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX0_2.saveKey
  if "liveries" == SHX1_2 then
    SHX1_2 = SHX21_1
    SHX3_2 = SHX0_2.saveKey
    SHX2_2 = SHX4_1
    SHX2_2 = SHX2_2[SHX3_2]
    function SHX3_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3, SHX3_3, SHX4_3
      if SHX0_3 then
        SHX1_3 = SetVehicleLivery
        SHX2_3 = SHX6_1
        SHX3_3 = tonumber
        SHX4_3 = SHX0_3
        SHX3_3 = SHX3_3(SHX4_3)
        if not SHX3_3 then
          SHX3_3 = 0
        end
        SHX1_3(SHX2_3, SHX3_3)
      else
        SHX1_3 = SetVehicleLivery
        SHX2_3 = SHX6_1
        SHX3_3 = -1
        SHX1_3(SHX2_3, SHX3_3)
      end
    end
    SHX1_2(SHX2_2, SHX3_2)
  end
end
function SHX31_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX2_2 = SHX0_2.generatorName
  SHX1_2 = SHX15_1
  SHX1_2 = SHX1_2[SHX2_2]
  SHX1_2 = SHX1_2()
  SHX2_2 = pairs
  SHX3_2 = SHX1_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX9_2 = SHX0_2.saveKey
    SHX8_2 = SHX4_1
    SHX8_2 = SHX8_2[SHX9_2]
    SHX9_2 = tostring
    SHX10_2 = SHX7_2
    SHX9_2 = SHX9_2(SHX10_2)
    SHX8_2 = SHX8_2[SHX9_2]
    SHX9_2 = SHX24_1
    SHX10_2 = true == SHX8_2
    SHX11_2 = nil ~= SHX8_2
    SHX12_2 = SHX0_2.price
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
    SHX10_2 = RageUI
    SHX10_2 = SHX10_2.ButtonWithStyle
    SHX11_2 = string
    SHX11_2 = SHX11_2.format
    SHX12_2 = "%s %d"
    SHX13_2 = SHX0_2.prefix
    SHX14_2 = SHX7_2
    SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2)
    SHX12_2 = nil
    SHX13_2 = SHX9_2
    SHX14_2 = true
    function SHX15_2(SHX0_3, SHX1_3, SHX2_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
      if SHX1_3 then
        SHX3_3 = SHX29_1
        SHX4_3 = SHX0_2
        SHX5_3 = SHX7_2
        SHX3_3(SHX4_3, SHX5_3)
      end
      if SHX2_3 then
        SHX3_3 = SHX8_2
        if true == SHX3_3 then
          SHX3_3 = notify
          SHX4_3 = "~r~You have already applied this mod"
          SHX3_3(SHX4_3)
        else
          SHX3_3 = SHX8_2
          if false == SHX3_3 then
            SHX3_3 = TriggerServerEvent
            SHX4_3 = "0da10c1417"
            SHX5_3 = SHX8_1
            SHX6_3 = SHX0_1.categoryToIndentifier
            SHX7_3 = SHX0_2
            SHX6_3 = SHX6_3[SHX7_3]
            SHX7_3 = SHX7_2
            SHX8_3 = nil
            SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
            SHX3_3 = SHX25_1
            SHX3_3()
          else
            SHX3_3 = TriggerServerEvent
            SHX4_3 = "bdba243925"
            SHX5_3 = SHX8_1
            SHX6_3 = SHX0_1.categoryToIndentifier
            SHX7_3 = SHX0_2
            SHX6_3 = SHX6_3[SHX7_3]
            SHX7_3 = SHX7_2
            SHX8_3 = nil
            SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
            SHX3_3 = SHX25_1
            SHX3_3()
          end
        end
      end
    end
    SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  end
end
function SHX32_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX2_2 = SHX0_2.generatorName
  SHX1_2 = SHX15_1
  SHX1_2 = SHX1_2[SHX2_2]
  SHX1_2 = SHX1_2()
  SHX2_2 = pairs
  SHX3_2 = SHX1_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX9_2 = SHX0_2.saveKey
    SHX8_2 = SHX4_1
    SHX8_2 = SHX8_2[SHX9_2]
    SHX9_2 = tostring
    SHX10_2 = SHX7_2
    SHX9_2 = SHX9_2(SHX10_2)
    SHX8_2 = SHX8_2[SHX9_2]
    SHX9_2 = SHX24_1
    SHX10_2 = true == SHX8_2
    SHX11_2 = nil ~= SHX8_2
    SHX12_2 = SHX0_2.price
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
    SHX10_2 = RageUI
    SHX10_2 = SHX10_2.ButtonWithStyle
    SHX11_2 = string
    SHX11_2 = SHX11_2.format
    SHX12_2 = "%s %d"
    SHX13_2 = SHX0_2.prefix
    SHX14_2 = SHX7_2
    SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2)
    SHX12_2 = nil
    SHX13_2 = SHX9_2
    SHX14_2 = true
    function SHX15_2(SHX0_3, SHX1_3, SHX2_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3
      if SHX2_3 then
        SHX3_3 = SHX8_2
        if true == SHX3_3 then
          SHX3_3 = TriggerServerEvent
          SHX4_3 = "2c48d37794"
          SHX5_3 = SHX8_1
          SHX6_3 = SHX0_1.categoryToIndentifier
          SHX7_3 = SHX0_2
          SHX6_3 = SHX6_3[SHX7_3]
          SHX7_3 = SHX7_2
          SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3)
          SHX3_3 = SHX25_1
          SHX3_3()
        else
          SHX3_3 = SHX8_2
          if false == SHX3_3 then
            SHX3_3 = TriggerServerEvent
            SHX4_3 = "4b2dc2521d"
            SHX5_3 = SHX8_1
            SHX6_3 = SHX0_1.categoryToIndentifier
            SHX7_3 = SHX0_2
            SHX6_3 = SHX6_3[SHX7_3]
            SHX7_3 = SHX7_2
            SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3)
            SHX3_3 = SHX25_1
            SHX3_3()
          else
            SHX3_3 = TriggerServerEvent
            SHX4_3 = "1f10937c56"
            SHX5_3 = SHX8_1
            SHX6_3 = SHX0_1.categoryToIndentifier
            SHX7_3 = SHX0_2
            SHX6_3 = SHX6_3[SHX7_3]
            SHX7_3 = SHX7_2
            SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3)
            SHX3_3 = SHX25_1
            SHX3_3()
          end
        end
      end
    end
    SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  end
end
function SHX33_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX2_2 = GetIsVehiclePrimaryColourCustom
  SHX3_2 = SHX6_1
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = ClearVehicleCustomPrimaryColour
    SHX3_2 = SHX6_1
    SHX2_2(SHX3_2)
  end
  SHX2_2 = SetVehicleModColor_1
  SHX3_2 = SHX6_1
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  SHX6_2 = 0
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = GetVehicleColours
  SHX3_2 = SHX6_1
  SHX2_2, SHX3_2 = SHX2_2(SHX3_2)
  SHX4_2 = SetVehicleColours
  SHX5_2 = SHX6_1
  SHX6_2 = SHX1_2
  SHX7_2 = SHX3_2
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
end
function SHX34_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX2_2 = GetIsVehicleSecondaryColourCustom
  SHX3_2 = SHX6_1
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = ClearVehicleCustomSecondaryColour
    SHX3_2 = SHX6_1
    SHX2_2(SHX3_2)
  end
  SHX2_2 = SetVehicleModColor_2
  SHX3_2 = SHX6_1
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = GetVehicleColours
  SHX3_2 = SHX6_1
  SHX2_2, SHX3_2 = SHX2_2(SHX3_2)
  SHX4_2 = SetVehicleColours
  SHX5_2 = SHX6_1
  SHX6_2 = SHX2_2
  SHX7_2 = SHX1_2
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
end
function SHX35_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX2_2 = SHX0_2.saveKey
  if "windowtint" == SHX2_2 then
    SHX3_2 = SetVehicleWindowTint
    SHX4_2 = SHX6_1
    SHX5_2 = SHX1_2.tint
    SHX3_2(SHX4_2, SHX5_2)
  elseif "frontwheel" == SHX2_2 then
    SHX3_2 = SetVehicleWheelType
    SHX4_2 = SHX6_1
    SHX5_2 = 6
    SHX3_2(SHX4_2, SHX5_2)
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.setVehicleMod
    SHX4_2 = SHX6_1
    SHX5_2 = 23
    SHX6_2 = SHX1_2.index
    SHX7_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  elseif "backwheel" == SHX2_2 then
    SHX3_2 = SetVehicleWheelType
    SHX4_2 = SHX6_1
    SHX5_2 = 6
    SHX3_2(SHX4_2, SHX5_2)
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.setVehicleMod
    SHX4_2 = SHX6_1
    SHX5_2 = 24
    SHX6_2 = SHX1_2.index
    SHX7_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  elseif "sportwheels" == SHX2_2 then
    SHX3_2 = SetVehicleWheelType
    SHX4_2 = SHX6_1
    SHX5_2 = 0
    SHX3_2(SHX4_2, SHX5_2)
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.setVehicleMod
    SHX4_2 = SHX6_1
    SHX5_2 = 23
    SHX6_2 = SHX1_2.index
    SHX7_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  elseif "musclewheels" == SHX2_2 then
    SHX3_2 = SetVehicleWheelType
    SHX4_2 = SHX6_1
    SHX5_2 = 1
    SHX3_2(SHX4_2, SHX5_2)
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.setVehicleMod
    SHX4_2 = SHX6_1
    SHX5_2 = 23
    SHX6_2 = SHX1_2.index
    SHX7_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  elseif "lowriderwheels" == SHX2_2 then
    SHX3_2 = SetVehicleWheelType
    SHX4_2 = SHX6_1
    SHX5_2 = 2
    SHX3_2(SHX4_2, SHX5_2)
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.setVehicleMod
    SHX4_2 = SHX6_1
    SHX5_2 = 23
    SHX6_2 = SHX1_2.index
    SHX7_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  elseif "highendwheels" == SHX2_2 then
    SHX3_2 = SetVehicleWheelType
    SHX4_2 = SHX6_1
    SHX5_2 = 7
    SHX3_2(SHX4_2, SHX5_2)
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.setVehicleMod
    SHX4_2 = SHX6_1
    SHX5_2 = 23
    SHX6_2 = SHX1_2.index
    SHX7_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  elseif "suvwheels" == SHX2_2 then
    SHX3_2 = SetVehicleWheelType
    SHX4_2 = SHX6_1
    SHX5_2 = 3
    SHX3_2(SHX4_2, SHX5_2)
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.setVehicleMod
    SHX4_2 = SHX6_1
    SHX5_2 = 23
    SHX6_2 = SHX1_2.index
    SHX7_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  elseif "offroadwheels" == SHX2_2 then
    SHX3_2 = SetVehicleWheelType
    SHX4_2 = SHX6_1
    SHX5_2 = 4
    SHX3_2(SHX4_2, SHX5_2)
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.setVehicleMod
    SHX4_2 = SHX6_1
    SHX5_2 = 23
    SHX6_2 = SHX1_2.index
    SHX7_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  elseif "tunerwheels" == SHX2_2 then
    SHX3_2 = SetVehicleWheelType
    SHX4_2 = SHX6_1
    SHX5_2 = 6
    SHX3_2(SHX4_2, SHX5_2)
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.setVehicleMod
    SHX4_2 = SHX6_1
    SHX5_2 = 23
    SHX6_2 = SHX1_2.index
    SHX7_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  elseif "bennysonewheels" == SHX2_2 then
    SHX3_2 = SetVehicleWheelType
    SHX4_2 = SHX6_1
    SHX5_2 = 8
    SHX3_2(SHX4_2, SHX5_2)
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.setVehicleMod
    SHX4_2 = SHX6_1
    SHX5_2 = 23
    SHX6_2 = SHX1_2.index
    SHX7_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  elseif "bennystwowheels" == SHX2_2 then
    SHX3_2 = SetVehicleWheelType
    SHX4_2 = SHX6_1
    SHX5_2 = 9
    SHX3_2(SHX4_2, SHX5_2)
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.setVehicleMod
    SHX4_2 = SHX6_1
    SHX5_2 = 23
    SHX6_2 = SHX1_2.index
    SHX7_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  elseif "openwheels" == SHX2_2 then
    SHX3_2 = SetVehicleWheelType
    SHX4_2 = SHX6_1
    SHX5_2 = 10
    SHX3_2(SHX4_2, SHX5_2)
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.setVehicleMod
    SHX4_2 = SHX6_1
    SHX5_2 = 23
    SHX6_2 = SHX1_2.index
    SHX7_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  elseif "streetwheels" == SHX2_2 then
    SHX3_2 = SetVehicleWheelType
    SHX4_2 = SHX6_1
    SHX5_2 = 11
    SHX3_2(SHX4_2, SHX5_2)
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.setVehicleMod
    SHX4_2 = SHX6_1
    SHX5_2 = 23
    SHX6_2 = SHX1_2.index
    SHX7_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  elseif "trackwheels" == SHX2_2 then
    SHX3_2 = SetVehicleWheelType
    SHX4_2 = SHX6_1
    SHX5_2 = 12
    SHX3_2(SHX4_2, SHX5_2)
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.setVehicleMod
    SHX4_2 = SHX6_1
    SHX5_2 = 23
    SHX6_2 = SHX1_2.index
    SHX7_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  elseif "wheelaccessories" == SHX2_2 then
    SHX3_2 = SetVehicleModKit
    SHX4_2 = SHX6_1
    SHX5_2 = 0
    SHX3_2(SHX4_2, SHX5_2)
    SHX3_2 = ToggleVehicleMod
    SHX4_2 = SHX6_1
    SHX5_2 = 20
    SHX6_2 = true
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    SHX3_2 = SetVehicleTyreSmokeColor
    SHX4_2 = SHX6_1
    SHX5_2 = SHX1_2.colour
    SHX5_2 = SHX5_2[1]
    SHX6_2 = SHX1_2.colour
    SHX6_2 = SHX6_2[2]
    SHX7_2 = SHX1_2.colour
    SHX7_2 = SHX7_2[3]
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  elseif "chrome" == SHX2_2 then
    SHX3_2 = SHX33_1
    SHX4_2 = 5
    SHX5_2 = SHX1_2.index
    SHX3_2(SHX4_2, SHX5_2)
  elseif "classic" == SHX2_2 then
    SHX3_2 = SHX33_1
    SHX4_2 = 0
    SHX5_2 = SHX1_2.index
    SHX3_2(SHX4_2, SHX5_2)
  elseif "matte" == SHX2_2 then
    SHX3_2 = SHX33_1
    SHX4_2 = 3
    SHX5_2 = SHX1_2.index
    SHX3_2(SHX4_2, SHX5_2)
  elseif "metals" == SHX2_2 then
    SHX3_2 = SHX33_1
    SHX4_2 = 4
    SHX5_2 = SHX1_2.index
    SHX3_2(SHX4_2, SHX5_2)
  elseif "metallic" == SHX2_2 then
    SHX3_2 = SHX33_1
    SHX4_2 = 1
    SHX5_2 = SHX1_2.index
    SHX3_2(SHX4_2, SHX5_2)
  elseif "util" == SHX2_2 then
    SHX3_2 = GetVehicleColours
    SHX4_2 = SHX6_1
    SHX3_2, SHX4_2 = SHX3_2(SHX4_2)
    SHX5_2 = SetVehicleColours
    SHX6_2 = SHX6_1
    SHX7_2 = SHX1_2.index
    SHX8_2 = SHX4_2
    SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  elseif "chameleon" == SHX2_2 then
    SHX3_2 = GetVehicleColours
    SHX4_2 = SHX6_1
    SHX3_2, SHX4_2 = SHX3_2(SHX4_2)
    SHX5_2 = SetVehicleColours
    SHX6_2 = SHX6_1
    SHX7_2 = SHX1_2.index
    SHX8_2 = SHX4_2
    SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  elseif "chrome2" == SHX2_2 then
    SHX3_2 = SHX34_1
    SHX4_2 = 5
    SHX5_2 = SHX1_2.index
    SHX3_2(SHX4_2, SHX5_2)
  elseif "classic2" == SHX2_2 then
    SHX3_2 = SHX34_1
    SHX4_2 = 0
    SHX5_2 = SHX1_2.index
    SHX3_2(SHX4_2, SHX5_2)
  elseif "matte2" == SHX2_2 then
    SHX3_2 = SHX34_1
    SHX4_2 = 3
    SHX5_2 = SHX1_2.index
    SHX3_2(SHX4_2, SHX5_2)
  elseif "metal2" == SHX2_2 then
    SHX3_2 = SHX34_1
    SHX4_2 = 4
    SHX5_2 = SHX1_2.index
    SHX3_2(SHX4_2, SHX5_2)
  elseif "metallic2" == SHX2_2 then
    SHX3_2 = SHX34_1
    SHX4_2 = 1
    SHX5_2 = SHX1_2.index
    SHX3_2(SHX4_2, SHX5_2)
  elseif "pearlescent" == SHX2_2 then
    SHX3_2 = GetVehicleColours
    SHX4_2 = SHX6_1
    SHX3_2, SHX4_2 = SHX3_2(SHX4_2)
    SHX5_2 = SetVehicleExtraColours
    SHX6_2 = SHX6_1
    SHX7_2 = SHX1_2.index
    SHX8_2 = SHX4_2
    SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  elseif "wheelcolor" == SHX2_2 then
    SHX3_2 = SetVehicleExtraColours
    SHX4_2 = SHX6_1
    SHX5_2 = GetVehicleColours
    SHX6_2 = SHX6_1
    SHX5_2 = SHX5_2(SHX6_2)
    SHX6_2 = SHX1_2.index
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  elseif "interiorcolour" == SHX2_2 then
    SHX3_2 = SetVehicleInteriorColor
    SHX4_2 = SHX6_1
    SHX5_2 = SHX1_2.index
    SHX3_2(SHX4_2, SHX5_2)
  elseif "dashboardcolour" == SHX2_2 then
    SHX3_2 = SetVehicleDashboardColor
    SHX4_2 = SHX6_1
    SHX5_2 = SHX1_2.index
    SHX3_2(SHX4_2, SHX5_2)
  elseif "mod_14" == SHX2_2 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.setVehicleMod
    SHX4_2 = SHX6_1
    SHX5_2 = 14
    SHX6_2 = SHX1_2.index
    SHX7_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  elseif "mod_15" == SHX2_2 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.setVehicleMod
    SHX4_2 = SHX6_1
    SHX5_2 = 15
    SHX6_2 = SHX1_2.index
    SHX7_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  elseif "mod_22" == SHX2_2 then
    SHX3_2 = ToggleVehicleMod
    SHX4_2 = SHX6_1
    SHX5_2 = 22
    SHX6_2 = SHX1_2.index
    SHX6_2 = SHX6_2 > 0
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  elseif "xenonlights" == SHX2_2 then
    SHX3_2 = ToggleVehicleMod
    SHX4_2 = SHX6_1
    SHX5_2 = 22
    SHX6_2 = true
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    SHX3_2 = SetVehicleXenonLightsColor
    SHX4_2 = SHX6_1
    SHX5_2 = SHX1_2.index
    SHX3_2(SHX4_2, SHX5_2)
  elseif "neonlayout" == SHX2_2 then
    SHX3_2 = SetVehicleNeonLightEnabled
    SHX4_2 = SHX6_1
    SHX5_2 = 0
    SHX6_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    SHX3_2 = SetVehicleNeonLightEnabled
    SHX4_2 = SHX6_1
    SHX5_2 = 1
    SHX6_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    SHX3_2 = SetVehicleNeonLightEnabled
    SHX4_2 = SHX6_1
    SHX5_2 = 2
    SHX6_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    SHX3_2 = SetVehicleNeonLightEnabled
    SHX4_2 = SHX6_1
    SHX5_2 = 3
    SHX6_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    SHX3_2 = SHX1_2.mod
    if 1 == SHX3_2 then
      SHX3_2 = SetVehicleNeonLightEnabled
      SHX4_2 = SHX6_1
      SHX5_2 = 0
      SHX6_2 = true
      SHX3_2(SHX4_2, SHX5_2, SHX6_2)
      SHX3_2 = SetVehicleNeonLightEnabled
      SHX4_2 = SHX6_1
      SHX5_2 = 1
      SHX6_2 = true
      SHX3_2(SHX4_2, SHX5_2, SHX6_2)
      SHX3_2 = SetVehicleNeonLightEnabled
      SHX4_2 = SHX6_1
      SHX5_2 = 2
      SHX6_2 = true
      SHX3_2(SHX4_2, SHX5_2, SHX6_2)
      SHX3_2 = SetVehicleNeonLightEnabled
      SHX4_2 = SHX6_1
      SHX5_2 = 3
      SHX6_2 = true
      SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    else
      SHX3_2 = SHX1_2.mod
      if 2 == SHX3_2 then
        SHX3_2 = SetVehicleNeonLightEnabled
        SHX4_2 = SHX6_1
        SHX5_2 = 2
        SHX6_2 = true
        SHX3_2(SHX4_2, SHX5_2, SHX6_2)
        SHX3_2 = SetVehicleNeonLightEnabled
        SHX4_2 = SHX6_1
        SHX5_2 = 3
        SHX6_2 = true
        SHX3_2(SHX4_2, SHX5_2, SHX6_2)
      else
        SHX3_2 = SHX1_2.mod
        if 3 == SHX3_2 then
          SHX3_2 = SetVehicleNeonLightEnabled
          SHX4_2 = SHX6_1
          SHX5_2 = 0
          SHX6_2 = true
          SHX3_2(SHX4_2, SHX5_2, SHX6_2)
          SHX3_2 = SetVehicleNeonLightEnabled
          SHX4_2 = SHX6_1
          SHX5_2 = 1
          SHX6_2 = true
          SHX3_2(SHX4_2, SHX5_2, SHX6_2)
          SHX3_2 = SetVehicleNeonLightEnabled
          SHX4_2 = SHX6_1
          SHX5_2 = 2
          SHX6_2 = true
          SHX3_2(SHX4_2, SHX5_2, SHX6_2)
        else
          SHX3_2 = SHX1_2.mod
          if 4 == SHX3_2 then
            SHX3_2 = SetVehicleNeonLightEnabled
            SHX4_2 = SHX6_1
            SHX5_2 = 0
            SHX6_2 = true
            SHX3_2(SHX4_2, SHX5_2, SHX6_2)
            SHX3_2 = SetVehicleNeonLightEnabled
            SHX4_2 = SHX6_1
            SHX5_2 = 1
            SHX6_2 = true
            SHX3_2(SHX4_2, SHX5_2, SHX6_2)
            SHX3_2 = SetVehicleNeonLightEnabled
            SHX4_2 = SHX6_1
            SHX5_2 = 3
            SHX6_2 = true
            SHX3_2(SHX4_2, SHX5_2, SHX6_2)
          end
        end
      end
    end
    SHX3_2 = SetVehicleNeonLightsColour
    SHX4_2 = SHX6_1
    SHX5_2 = 222
    SHX6_2 = 222
    SHX7_2 = 255
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  elseif "neoncolour" == SHX2_2 then
    SHX3_2 = SetVehicleNeonLightEnabled
    SHX4_2 = SHX6_1
    SHX5_2 = 0
    SHX6_2 = true
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    SHX3_2 = SetVehicleNeonLightEnabled
    SHX4_2 = SHX6_1
    SHX5_2 = 1
    SHX6_2 = true
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    SHX3_2 = SetVehicleNeonLightEnabled
    SHX4_2 = SHX6_1
    SHX5_2 = 2
    SHX6_2 = true
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    SHX3_2 = SetVehicleNeonLightEnabled
    SHX4_2 = SHX6_1
    SHX5_2 = 3
    SHX6_2 = true
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    SHX3_2 = SHX0_1.neonColours
    SHX4_2 = SHX1_2.name
    SHX3_2 = SHX3_2[SHX4_2]
    SHX4_2 = SetVehicleNeonLightsColour
    SHX5_2 = SHX6_1
    SHX6_2 = SHX3_2[1]
    SHX7_2 = SHX3_2[2]
    SHX8_2 = SHX3_2[3]
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  elseif "sounds" == SHX2_2 then
    SHX3_2 = EnableControlAction
    SHX4_2 = 0
    SHX5_2 = 71
    SHX6_2 = true
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    SHX3_2 = Entity
    SHX4_2 = SHX6_1
    SHX3_2 = SHX3_2(SHX4_2)
    SHX3_2 = SHX3_2.state
    SHX3_2 = SHX3_2.previewSoundId
    SHX4_2 = SHX1_2.soundId
    if SHX3_2 ~= SHX4_2 then
      SHX3_2 = ForceVehicleEngineAudio
      SHX4_2 = SHX6_1
      SHX5_2 = SHX1_2.soundId
      SHX3_2(SHX4_2, SHX5_2)
      SHX3_2 = SetTimeout
      SHX4_2 = 500
      function SHX5_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3, SHX2_3
        SHX0_3 = SetVehicleRadioEnabled
        SHX1_3 = SHX6_1
        SHX2_3 = false
        SHX0_3(SHX1_3, SHX2_3)
        SHX0_3 = SetVehRadioStation
        SHX1_3 = SHX6_1
        SHX2_3 = "OFF"
        SHX0_3(SHX1_3, SHX2_3)
      end
      SHX3_2(SHX4_2, SHX5_2)
      SHX3_2 = Entity
      SHX4_2 = SHX6_1
      SHX3_2 = SHX3_2(SHX4_2)
      SHX3_2 = SHX3_2.state
      SHX4_2 = SHX1_2.soundId
      SHX3_2.previewSoundId = SHX4_2
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
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX0_2.saveKey
  if "chrome" == SHX1_2 or "classic" == SHX1_2 or "matte" == SHX1_2 or "metallic" == SHX1_2 or "metals" == SHX1_2 or "util" == SHX1_2 or "chameleon" == SHX1_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.applyPrimaryVehicleColours
    SHX3_2 = SHX4_1
    SHX4_2 = SHX6_1
    SHX2_2(SHX3_2, SHX4_2)
  elseif "chrome2" == SHX1_2 or "classic2" == SHX1_2 or "matte2" == SHX1_2 or "metallic2" == SHX1_2 or "metal2" == SHX1_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.applySecondaryVehicleColours
    SHX3_2 = SHX4_1
    SHX4_2 = SHX6_1
    SHX2_2(SHX3_2, SHX4_2)
  elseif "windowtint" == SHX1_2 then
    SHX2_2 = SHX21_1
    SHX3_2 = SHX4_1.windowtint
    function SHX4_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3, SHX3_3, SHX4_3
      if SHX0_3 then
        SHX1_3 = SetVehicleWindowTint
        SHX2_3 = SHX6_1
        SHX3_3 = tonumber
        SHX4_3 = SHX0_3
        SHX3_3 = SHX3_3(SHX4_3)
        if not SHX3_3 then
          SHX3_3 = 0
        end
        SHX1_3(SHX2_3, SHX3_3)
      else
        SHX1_3 = SetVehicleWindowTint
        SHX2_3 = SHX6_1
        SHX3_3 = 0
        SHX1_3(SHX2_3, SHX3_3)
      end
    end
    SHX2_2(SHX3_2, SHX4_2)
  elseif "frontwheel" == SHX1_2 then
    SHX2_2 = SHX21_1
    SHX3_2 = SHX4_1.frontwheel
    function SHX4_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3
      SHX1_3 = SetVehicleWheelType
      SHX2_3 = SHX6_1
      SHX3_3 = 6
      SHX1_3(SHX2_3, SHX3_3)
      SHX1_3 = GetVehicleModVariation
      SHX2_3 = SHX6_1
      SHX3_3 = 23
      SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
      if SHX0_3 then
        SHX2_3 = CMG
        SHX2_3 = SHX2_3.setVehicleMod
        SHX3_3 = SHX6_1
        SHX4_3 = 23
        SHX5_3 = tonumber
        SHX6_3 = SHX0_3
        SHX5_3 = SHX5_3(SHX6_3)
        if not SHX5_3 then
          SHX5_3 = 0
        end
        SHX6_3 = SHX1_3
        SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3)
      else
        SHX2_3 = CMG
        SHX2_3 = SHX2_3.setVehicleMod
        SHX3_3 = SHX6_1
        SHX4_3 = 23
        SHX5_3 = 0
        SHX6_3 = SHX1_3
        SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3)
      end
    end
    SHX2_2(SHX3_2, SHX4_2)
  elseif "backwheel" == SHX1_2 then
    SHX2_2 = SHX21_1
    SHX3_2 = SHX4_1.backwheel
    function SHX4_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3
      SHX1_3 = SetVehicleWheelType
      SHX2_3 = SHX6_1
      SHX3_3 = 6
      SHX1_3(SHX2_3, SHX3_3)
      SHX1_3 = GetVehicleModVariation
      SHX2_3 = SHX6_1
      SHX3_3 = 24
      SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
      if SHX0_3 then
        SHX2_3 = CMG
        SHX2_3 = SHX2_3.setVehicleMod
        SHX3_3 = SHX6_1
        SHX4_3 = 24
        SHX5_3 = tonumber
        SHX6_3 = SHX0_3
        SHX5_3 = SHX5_3(SHX6_3)
        if not SHX5_3 then
          SHX5_3 = 0
        end
        SHX6_3 = SHX1_3
        SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3)
      else
        SHX2_3 = CMG
        SHX2_3 = SHX2_3.setVehicleMod
        SHX3_3 = SHX6_1
        SHX4_3 = 24
        SHX5_3 = 0
        SHX6_3 = SHX1_3
        SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3)
      end
    end
    SHX2_2(SHX3_2, SHX4_2)
  elseif "pearlescent" == SHX1_2 then
    SHX2_2 = SHX21_1
    SHX3_2 = SHX4_1.pearlescent
    function SHX4_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3
      SHX1_3 = GetVehicleColours
      SHX2_3 = SHX6_1
      SHX1_3, SHX2_3 = SHX1_3(SHX2_3)
      if SHX0_3 then
        SHX3_3 = SetVehicleExtraColours
        SHX4_3 = SHX6_1
        SHX5_3 = tonumber
        SHX6_3 = SHX0_3
        SHX5_3 = SHX5_3(SHX6_3)
        if not SHX5_3 then
          SHX5_3 = 0
        end
        SHX6_3 = SHX2_3
        SHX3_3(SHX4_3, SHX5_3, SHX6_3)
      else
        SHX3_3 = SetVehicleExtraColours
        SHX4_3 = SHX6_1
        SHX5_3 = 0
        SHX6_3 = SHX2_3
        SHX3_3(SHX4_3, SHX5_3, SHX6_3)
      end
    end
    SHX2_2(SHX3_2, SHX4_2)
  elseif "wheelcolor" == SHX1_2 then
    SHX2_2 = SHX21_1
    SHX3_2 = SHX4_1.wheelcolor
    function SHX4_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
      if SHX0_3 then
        SHX1_3 = SetVehicleExtraColours
        SHX2_3 = SHX6_1
        SHX3_3 = GetVehicleColours
        SHX4_3 = SHX6_1
        SHX3_3 = SHX3_3(SHX4_3)
        SHX4_3 = tonumber
        SHX5_3 = SHX0_3
        SHX4_3 = SHX4_3(SHX5_3)
        if not SHX4_3 then
          SHX4_3 = 0
        end
        SHX1_3(SHX2_3, SHX3_3, SHX4_3)
      else
        SHX1_3 = SetVehicleExtraColours
        SHX2_3 = SHX6_1
        SHX3_3 = GetVehicleColours
        SHX4_3 = SHX6_1
        SHX3_3 = SHX3_3(SHX4_3)
        SHX4_3 = 0
        SHX1_3(SHX2_3, SHX3_3, SHX4_3)
      end
    end
    SHX2_2(SHX3_2, SHX4_2)
  elseif "interiorcolour" == SHX1_2 then
    SHX2_2 = SHX21_1
    SHX3_2 = SHX4_1.interiorcolour
    function SHX4_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3, SHX3_3, SHX4_3
      if SHX0_3 then
        SHX1_3 = SetVehicleInteriorColor
        SHX2_3 = SHX6_1
        SHX3_3 = tonumber
        SHX4_3 = SHX0_3
        SHX3_3 = SHX3_3(SHX4_3)
        if not SHX3_3 then
          SHX3_3 = 0
        end
        SHX1_3(SHX2_3, SHX3_3)
      else
        SHX1_3 = SetVehicleInteriorColor
        SHX2_3 = SHX6_1
        SHX3_3 = 0
        SHX1_3(SHX2_3, SHX3_3)
      end
    end
    SHX2_2(SHX3_2, SHX4_2)
  elseif "dashboardcolour" == SHX1_2 then
    SHX2_2 = SHX21_1
    SHX3_2 = SHX4_1.dashboardcolour
    function SHX4_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3, SHX3_3, SHX4_3
      if SHX0_3 then
        SHX1_3 = SetVehicleDashboardColor
        SHX2_3 = SHX6_1
        SHX3_3 = tonumber
        SHX4_3 = SHX0_3
        SHX3_3 = SHX3_3(SHX4_3)
        if not SHX3_3 then
          SHX3_3 = 0
        end
        SHX1_3(SHX2_3, SHX3_3)
      else
        SHX1_3 = SetVehicleDashboardColor
        SHX2_3 = SHX6_1
        SHX3_3 = 0
        SHX1_3(SHX2_3, SHX3_3)
      end
    end
    SHX2_2(SHX3_2, SHX4_2)
  elseif "mod_14" == SHX1_2 then
    SHX2_2 = SHX21_1
    SHX3_2 = SHX4_1.mod_14
    function SHX4_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
      if SHX0_3 then
        SHX1_3 = CMG
        SHX1_3 = SHX1_3.setVehicleMod
        SHX2_3 = SHX6_1
        SHX3_3 = 14
        SHX4_3 = tonumber
        SHX5_3 = SHX0_3
        SHX4_3 = SHX4_3(SHX5_3)
        if not SHX4_3 then
          SHX4_3 = 0
        end
        SHX5_3 = false
        SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3)
      else
        SHX1_3 = CMG
        SHX1_3 = SHX1_3.setVehicleMod
        SHX2_3 = SHX6_1
        SHX3_3 = 14
        SHX4_3 = -1
        SHX5_3 = false
        SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3)
      end
    end
    SHX2_2(SHX3_2, SHX4_2)
  elseif "mod_15" == SHX1_2 then
    SHX2_2 = SHX21_1
    SHX3_2 = SHX4_1.mod_15
    function SHX4_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
      if SHX0_3 then
        SHX1_3 = CMG
        SHX1_3 = SHX1_3.setVehicleMod
        SHX2_3 = SHX6_1
        SHX3_3 = 15
        SHX4_3 = tonumber
        SHX5_3 = SHX0_3
        SHX4_3 = SHX4_3(SHX5_3)
        if not SHX4_3 then
          SHX4_3 = 0
        end
        SHX5_3 = false
        SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3)
      else
        SHX1_3 = CMG
        SHX1_3 = SHX1_3.setVehicleMod
        SHX2_3 = SHX6_1
        SHX3_3 = 15
        SHX4_3 = -1
        SHX5_3 = false
        SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3)
      end
    end
    SHX2_2(SHX3_2, SHX4_2)
  elseif "mod_22" == SHX1_2 or "xenonlights" == SHX1_2 then
    SHX2_2 = SHX21_1
    SHX3_2 = SHX4_1.mod_22
    function SHX4_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3, SHX3_3
      SHX1_3 = SHX21_1
      SHX2_3 = SHX4_1.xenonlights
      function SHX3_3(SHX0_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX1_4, SHX2_4, SHX3_4, SHX4_4
        SHX1_4 = SHX0_3
        if SHX1_4 then
          SHX1_4 = tonumber
          SHX2_4 = SHX0_3
          SHX1_4 = SHX1_4(SHX2_4)
          if SHX1_4 > 0 then
            SHX1_4 = ToggleVehicleMod
            SHX2_4 = SHX6_1
            SHX3_4 = 22
            SHX4_4 = true
            SHX1_4(SHX2_4, SHX3_4, SHX4_4)
            if SHX0_4 then
              SHX1_4 = SetVehicleXenonLightsColor
              SHX2_4 = SHX6_1
              SHX3_4 = tonumber
              SHX4_4 = SHX0_4
              SHX3_4 = SHX3_4(SHX4_4)
              if not SHX3_4 then
                SHX3_4 = 0
              end
              SHX1_4(SHX2_4, SHX3_4)
            end
        end
        else
          SHX1_4 = ToggleVehicleMod
          SHX2_4 = SHX6_1
          SHX3_4 = 22
          SHX4_4 = false
          SHX1_4(SHX2_4, SHX3_4, SHX4_4)
        end
      end
      SHX1_3(SHX2_3, SHX3_3)
    end
    SHX2_2(SHX3_2, SHX4_2)
  elseif "neonlayout" == SHX1_2 or "neoncolour" == SHX1_2 then
    SHX2_2 = SHX21_1
    SHX3_2 = SHX4_1.neonlayout
    function SHX4_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3, SHX3_3
      SHX1_3 = SHX21_1
      SHX2_3 = SHX4_1.neoncolour
      function SHX3_3(SHX0_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4
        SHX1_4 = SHX0_3
        if SHX1_4 then
          SHX1_4 = tonumber
          SHX2_4 = SHX0_3
          SHX1_4 = SHX1_4(SHX2_4)
          if SHX1_4 > 0 then
            SHX1_4 = tonumber
            SHX2_4 = SHX0_3
            SHX1_4 = SHX1_4(SHX2_4)
            if 1 == SHX1_4 then
              SHX2_4 = SetVehicleNeonLightEnabled
              SHX3_4 = SHX6_1
              SHX4_4 = 0
              SHX5_4 = true
              SHX2_4(SHX3_4, SHX4_4, SHX5_4)
              SHX2_4 = SetVehicleNeonLightEnabled
              SHX3_4 = SHX6_1
              SHX4_4 = 1
              SHX5_4 = true
              SHX2_4(SHX3_4, SHX4_4, SHX5_4)
              SHX2_4 = SetVehicleNeonLightEnabled
              SHX3_4 = SHX6_1
              SHX4_4 = 2
              SHX5_4 = true
              SHX2_4(SHX3_4, SHX4_4, SHX5_4)
              SHX2_4 = SetVehicleNeonLightEnabled
              SHX3_4 = SHX6_1
              SHX4_4 = 3
              SHX5_4 = true
              SHX2_4(SHX3_4, SHX4_4, SHX5_4)
            elseif 2 == SHX1_4 then
              SHX2_4 = SetVehicleNeonLightEnabled
              SHX3_4 = SHX6_1
              SHX4_4 = 2
              SHX5_4 = true
              SHX2_4(SHX3_4, SHX4_4, SHX5_4)
              SHX2_4 = SetVehicleNeonLightEnabled
              SHX3_4 = SHX6_1
              SHX4_4 = 3
              SHX5_4 = true
              SHX2_4(SHX3_4, SHX4_4, SHX5_4)
            elseif 3 == SHX1_4 then
              SHX2_4 = SetVehicleNeonLightEnabled
              SHX3_4 = SHX6_1
              SHX4_4 = 0
              SHX5_4 = true
              SHX2_4(SHX3_4, SHX4_4, SHX5_4)
              SHX2_4 = SetVehicleNeonLightEnabled
              SHX3_4 = SHX6_1
              SHX4_4 = 1
              SHX5_4 = true
              SHX2_4(SHX3_4, SHX4_4, SHX5_4)
              SHX2_4 = SetVehicleNeonLightEnabled
              SHX3_4 = SHX6_1
              SHX4_4 = 2
              SHX5_4 = true
              SHX2_4(SHX3_4, SHX4_4, SHX5_4)
            elseif 4 == SHX1_4 then
              SHX2_4 = SetVehicleNeonLightEnabled
              SHX3_4 = SHX6_1
              SHX4_4 = 0
              SHX5_4 = true
              SHX2_4(SHX3_4, SHX4_4, SHX5_4)
              SHX2_4 = SetVehicleNeonLightEnabled
              SHX3_4 = SHX6_1
              SHX4_4 = 1
              SHX5_4 = true
              SHX2_4(SHX3_4, SHX4_4, SHX5_4)
              SHX2_4 = SetVehicleNeonLightEnabled
              SHX3_4 = SHX6_1
              SHX4_4 = 3
              SHX5_4 = true
              SHX2_4(SHX3_4, SHX4_4, SHX5_4)
            end
            if SHX0_4 then
              SHX2_4 = SHX0_1.neonColours
              SHX2_4 = SHX2_4[SHX0_4]
              SHX3_4 = SetVehicleNeonLightsColour
              SHX4_4 = SHX6_1
              SHX5_4 = SHX2_4[1]
              SHX6_4 = SHX2_4[2]
              SHX7_4 = SHX2_4[3]
              SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4)
            else
              SHX2_4 = SetVehicleNeonLightsColour
              SHX3_4 = SHX6_1
              SHX4_4 = 222
              SHX5_4 = 222
              SHX6_4 = 255
              SHX2_4(SHX3_4, SHX4_4, SHX5_4, SHX6_4)
            end
        end
        else
          SHX1_4 = SetVehicleNeonLightEnabled
          SHX2_4 = SHX6_1
          SHX3_4 = 0
          SHX4_4 = false
          SHX1_4(SHX2_4, SHX3_4, SHX4_4)
          SHX1_4 = SetVehicleNeonLightEnabled
          SHX2_4 = SHX6_1
          SHX3_4 = 1
          SHX4_4 = false
          SHX1_4(SHX2_4, SHX3_4, SHX4_4)
          SHX1_4 = SetVehicleNeonLightEnabled
          SHX2_4 = SHX6_1
          SHX3_4 = 2
          SHX4_4 = false
          SHX1_4(SHX2_4, SHX3_4, SHX4_4)
          SHX1_4 = SetVehicleNeonLightEnabled
          SHX2_4 = SHX6_1
          SHX3_4 = 3
          SHX4_4 = false
          SHX1_4(SHX2_4, SHX3_4, SHX4_4)
        end
      end
      SHX1_3(SHX2_3, SHX3_3)
    end
    SHX2_2(SHX3_2, SHX4_2)
  elseif "sounds" == SHX1_2 then
    SHX2_2 = SHX21_1
    SHX3_2 = SHX4_1.sounds
    function SHX4_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
      if SHX0_3 then
        SHX1_3 = ForceVehicleEngineAudio
        SHX2_3 = SHX6_1
        SHX3_3 = CMG
        SHX3_3 = SHX3_3.getVehicleSoundNameFromId
        SHX4_3 = tonumber
        SHX5_3 = SHX0_3
        SHX4_3 = SHX4_3(SHX5_3)
        if not SHX4_3 then
          SHX4_3 = 0
        end
        SHX3_3, SHX4_3, SHX5_3 = SHX3_3(SHX4_3)
        SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3)
      else
        SHX1_3 = ForceVehicleEngineAudio
        SHX2_3 = SHX6_1
        SHX3_3 = ""
        SHX1_3(SHX2_3, SHX3_3)
      end
      SHX1_3 = SetTimeout
      SHX2_3 = 500
      function SHX3_3()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_4, SHX1_4, SHX2_4
        SHX0_4 = SetVehicleRadioEnabled
        SHX1_4 = SHX6_1
        SHX2_4 = false
        SHX0_4(SHX1_4, SHX2_4)
        SHX0_4 = SetVehRadioStation
        SHX1_4 = SHX6_1
        SHX2_4 = "OFF"
        SHX0_4(SHX1_4, SHX2_4)
      end
      SHX1_3(SHX2_3, SHX3_3)
    end
    SHX2_2(SHX3_2, SHX4_2)
  end
end
function SHX37_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX0_2.saveKey
  if "mod_14" == SHX1_2 then
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.CreateThread
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
      SHX0_3 = GetGameTimer
      SHX0_3 = SHX0_3()
      while true do
        SHX1_3 = GetGameTimer
        SHX1_3 = SHX1_3()
        SHX1_3 = SHX1_3 - SHX0_3
        SHX2_3 = 2500
        if not (SHX1_3 < SHX2_3) then
          break
        end
        SHX1_3 = SetControlNormal
        SHX2_3 = 0
        SHX3_3 = 86
        SHX4_3 = 1.0
        SHX1_3(SHX2_3, SHX3_3, SHX4_3)
        SHX1_3 = Citizen
        SHX1_3 = SHX1_3.Wait
        SHX2_3 = 0
        SHX1_3(SHX2_3)
      end
    end
    SHX1_2(SHX2_2)
  else
    SHX1_2 = SHX25_1
    SHX1_2()
  end
  SHX1_2 = SHX0_2.name
  if "Chrome" ~= SHX1_2 then
    SHX1_2 = SHX0_2.name
    if "Classic" ~= SHX1_2 then
      SHX1_2 = SHX0_2.name
      if "Matte" ~= SHX1_2 then
        SHX1_2 = SHX0_2.name
        if "Metallic" ~= SHX1_2 then
          SHX1_2 = SHX0_2.name
          if "Metals" ~= SHX1_2 then
            SHX1_2 = SHX0_2.name
            if "Pearlescent" ~= SHX1_2 then
              SHX1_2 = SHX0_2.name
              if "Util" ~= SHX1_2 then
                SHX1_2 = SHX0_2.name
                if "Chameleon" ~= SHX1_2 then
                  return
                end
              end
            end
          end
        end
      end
    end
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.loadPtfx
    SHX1_3 = "scr_as_trans"
    SHX0_3(SHX1_3)
    SHX0_3 = UseParticleFxAsset
    SHX1_3 = "scr_as_trans"
    SHX0_3(SHX1_3)
    SHX0_3 = StartParticleFxLoopedOnEntity
    SHX1_3 = "scr_as_trans_smoke"
    SHX2_3 = SHX6_1
    SHX3_3 = 0.0
    SHX4_3 = 0.0
    SHX5_3 = 0.0
    SHX6_3 = 0.0
    SHX7_3 = 0.0
    SHX8_3 = 0.0
    SHX9_3 = 2.0
    SHX10_3 = false
    SHX11_3 = false
    SHX12_3 = false
    SHX0_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
    SHX1_3 = GetVehicleColor
    SHX2_3 = SHX6_1
    SHX1_3, SHX2_3, SHX3_3 = SHX1_3(SHX2_3)
    SHX4_3 = SetParticleFxLoopedColour
    SHX5_3 = SHX0_3
    SHX6_3 = SHX1_3 / 255
    SHX7_3 = SHX2_3 / 255
    SHX8_3 = SHX3_3 / 255
    SHX9_3 = false
    SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    SHX4_3 = Citizen
    SHX4_3 = SHX4_3.Wait
    SHX5_3 = 1000
    SHX4_3(SHX5_3)
    SHX4_3 = StopParticleFxLooped
    SHX5_3 = SHX0_3
    SHX6_3 = false
    SHX4_3(SHX5_3, SHX6_3)
    SHX4_3 = RemoveNamedPtfxAsset
    SHX5_3 = "scr_as_trans"
    SHX4_3(SHX5_3)
  end
  SHX1_2(SHX2_2)
end
SHX38_1 = 0.5
function SHX39_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = GetVehiclePedIsIn
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = false
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getVehicleIdFromModel
  SHX2_2 = GetEntityModel
  SHX3_2 = SHX0_2
  SHX2_2, SHX3_2 = SHX2_2(SHX3_2)
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX2_2 = SHX1_1.customCars
  SHX2_2 = SHX2_2.Imports
  SHX2_2 = SHX2_2[SHX1_2]
  if SHX2_2 then
    SHX2_2 = true
    return SHX2_2
  end
  SHX2_2 = false
  return SHX2_2
end
function SHX40_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  if "Engine Tunes" == SHX0_2 or "Transmission" == SHX0_2 or "Suspension" == SHX0_2 or "Turbo" == SHX0_2 or "Brakes" == SHX0_2 then
    SHX1_2 = true
    return SHX1_2
  end
  SHX1_2 = false
  return SHX1_2
end
function SHX41_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX1_2 = SHX0_2.helpText
  if SHX1_2 then
    SHX1_2 = drawNativeNotification
    SHX2_2 = SHX0_2.helpText
    SHX3_2 = true
    SHX1_2(SHX2_2, SHX3_2)
  end
  SHX1_2 = pairs
  SHX2_2 = SHX0_2.items
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX0_2.saveValue
    SHX7_2 = SHX6_2[SHX7_2]
    SHX8_2 = type
    SHX9_2 = SHX7_2
    SHX8_2 = SHX8_2(SHX9_2)
    if "table" == SHX8_2 then
      SHX8_2 = json
      SHX8_2 = SHX8_2.encode
      SHX9_2 = SHX7_2
      SHX8_2 = SHX8_2(SHX9_2)
      if SHX8_2 then
        goto SHX_LABEL_28
      end
    end
    SHX8_2 = tostring
    SHX9_2 = SHX7_2
    SHX8_2 = SHX8_2(SHX9_2)
    -- [FIX IF ERROR] Move ::SHX_LABEL_28:: outside nested blocks until all 'goto SHX_LABEL_28' can see it
    ::SHX_LABEL_28::
    SHX10_2 = SHX0_2.saveKey
    SHX9_2 = SHX4_1
    SHX9_2 = SHX9_2[SHX10_2]
    SHX9_2 = SHX9_2[SHX8_2]
    SHX10_2 = SHX6_2.price
    if not SHX10_2 then
      SHX10_2 = SHX0_2.price
    end
    SHX11_2 = SHX39_1
    SHX11_2 = SHX11_2()
    if SHX11_2 then
      SHX11_2 = SHX40_1
      SHX12_2 = SHX0_2.name
      SHX11_2 = SHX11_2(SHX12_2)
      if SHX11_2 then
        SHX11_2 = math
        SHX11_2 = SHX11_2.floor
        SHX12_2 = SHX38_1
        SHX12_2 = SHX10_2 * SHX12_2
        SHX11_2 = SHX11_2(SHX12_2)
        SHX10_2 = SHX11_2
      end
    end
    SHX11_2 = SHX24_1
    SHX12_2 = true == SHX9_2
    SHX13_2 = nil ~= SHX9_2
    SHX14_2 = SHX10_2
    SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2)
    SHX12_2 = RageUI
    SHX12_2 = SHX12_2.ButtonWithStyle
    SHX13_2 = SHX6_2.name
    SHX14_2 = nil
    SHX15_2 = SHX11_2
    SHX16_2 = true
    function SHX17_2(SHX0_3, SHX1_3, SHX2_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3
      if SHX1_3 then
        SHX3_3 = SHX35_1
        SHX4_3 = SHX0_2
        SHX5_3 = SHX6_2
        SHX3_3(SHX4_3, SHX5_3)
      end
      if SHX2_3 then
        SHX3_3 = SHX9_2
        if true == SHX3_3 then
          SHX3_3 = notify
          SHX4_3 = "~r~You have already applied this mod"
          SHX3_3(SHX4_3)
        else
          SHX3_3 = SHX9_2
          if false == SHX3_3 then
            SHX3_3 = TriggerServerEvent
            SHX4_3 = "1d97587305"
            SHX5_3 = SHX8_1
            SHX6_3 = SHX0_1.categoryToIndentifier
            SHX7_3 = SHX0_2
            SHX6_3 = SHX6_3[SHX7_3]
            SHX7_3 = SHX5_2
            SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3)
            SHX3_3 = SHX37_1
            SHX4_3 = SHX0_2
            SHX3_3(SHX4_3)
          else
            SHX3_3 = TriggerServerEvent
            SHX4_3 = "94c59aead0"
            SHX5_3 = SHX8_1
            SHX6_3 = SHX0_1.categoryToIndentifier
            SHX7_3 = SHX0_2
            SHX6_3 = SHX6_3[SHX7_3]
            SHX7_3 = SHX5_2
            SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3)
            SHX3_3 = SHX37_1
            SHX4_3 = SHX0_2
            SHX3_3(SHX4_3)
          end
        end
      end
    end
    SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  end
end
function SHX42_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX1_2 = pairs
  SHX2_2 = SHX0_2.items
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX8_2 = SHX0_2.saveKey
    SHX7_2 = SHX4_1
    SHX7_2 = SHX7_2[SHX8_2]
    if not SHX7_2 then
      SHX7_2 = 0
    end
    SHX8_2 = type
    SHX9_2 = SHX7_2
    SHX8_2 = SHX8_2(SHX9_2)
    if "number" ~= SHX8_2 then
      SHX8_2 = tonumber
      SHX9_2 = SHX7_2
      SHX8_2 = SHX8_2(SHX9_2)
      SHX7_2 = SHX8_2 or SHX7_2
      if not SHX8_2 then
        SHX7_2 = 0
      end
    end
    SHX8_2 = SHX24_1
    SHX9_2 = SHX0_2.ownedValue
    SHX9_2 = SHX7_2 == SHX9_2
    SHX10_2 = false
    SHX11_2 = SHX6_2.price
    if not SHX11_2 then
      SHX11_2 = SHX0_2.price
    end
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2)
    SHX9_2 = RageUI
    SHX9_2 = SHX9_2.ButtonWithStyle
    SHX10_2 = SHX6_2.name
    SHX11_2 = nil
    SHX12_2 = SHX8_2
    SHX13_2 = true
    function SHX14_2(SHX0_3, SHX1_3, SHX2_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3
      if SHX2_3 then
        SHX3_3 = SHX7_2
        SHX4_3 = SHX0_2.ownedValue
        if SHX3_3 == SHX4_3 then
          SHX3_3 = notify
          SHX4_3 = "~r~You have already applied this mod"
          SHX3_3(SHX4_3)
        else
          SHX3_3 = TriggerServerEvent
          SHX4_3 = "39ab80a2e4"
          SHX5_3 = SHX8_1
          SHX6_3 = SHX0_1.categoryToIndentifier
          SHX7_3 = SHX0_2
          SHX6_3 = SHX6_3[SHX7_3]
          SHX7_3 = SHX5_2
          SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3)
          SHX3_3 = SHX25_1
          SHX3_3()
        end
      end
    end
    SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  end
end
function SHX43_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX2_2 = SHX0_2.saveKey
  SHX1_2 = SHX4_1
  SHX1_2 = SHX1_2[SHX2_2]
  if not SHX1_2 then
    SHX1_2 = {}
  end
  SHX2_2 = #SHX1_2
  if SHX2_2 > 0 then
    SHX2_2 = drawNativeNotification
    SHX3_2 = string
    SHX3_2 = SHX3_2.format
    SHX4_2 = "Press ~INPUT_FRONTEND_ACCEPT~ to change %s"
    SHX5_2 = SHX0_2.helpSuffix
    SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX3_2(SHX4_2, SHX5_2)
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  end
  SHX2_2 = pairs
  SHX3_2 = SHX1_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = RageUI
    SHX8_2 = SHX8_2.ButtonWithStyle
    SHX9_2 = string
    SHX9_2 = SHX9_2.format
    SHX10_2 = "%s%d"
    SHX11_2 = SHX0_2.indexPrefix
    SHX12_2 = SHX6_2
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
    SHX10_2 = ""
    SHX11_2 = {}
    SHX12_2 = tostring
    SHX13_2 = SHX7_2
    SHX12_2 = SHX12_2(SHX13_2)
    SHX11_2.RightLabel = SHX12_2
    SHX12_2 = true
    function SHX13_2(SHX0_3, SHX1_3, SHX2_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_3, SHX4_3, SHX5_3, SHX6_3
      if SHX2_3 then
        SHX3_3 = CMG
        SHX3_3 = SHX3_3.clientPrompt
        SHX4_3 = SHX0_2.inputTitle
        SHX5_3 = ""
        function SHX6_3(SHX0_4)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4
          SHX2_4 = SHX6_2
          SHX1_4 = SHX1_2
          SHX1_4 = SHX1_4[SHX2_4]
          SHX2_4 = nil
          SHX3_4 = SHX0_2.valueType
          if "number" == SHX3_4 then
            SHX3_4 = tonumber
            SHX4_4 = SHX0_4
            SHX3_4 = SHX3_4(SHX4_4)
            if SHX3_4 then
              SHX2_4 = SHX3_4
            else
              SHX4_4 = notify
              SHX5_4 = "~r~Could not parse number."
              SHX4_4(SHX5_4)
            end
          else
            SHX2_4 = SHX0_4
          end
          if SHX2_4 and SHX2_4 ~= SHX1_4 then
            SHX3_4 = TriggerServerEvent
            SHX4_4 = "50bb6e7b72"
            SHX5_4 = SHX8_1
            SHX6_4 = SHX0_1.categoryToIndentifier
            SHX7_4 = SHX0_2
            SHX6_4 = SHX6_4[SHX7_4]
            SHX7_4 = SHX6_2
            SHX8_4 = SHX2_4
            SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4)
          end
        end
        SHX3_3(SHX4_3, SHX5_3, SHX6_3)
      end
    end
    SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  end
  SHX2_2 = RageUI
  SHX2_2 = SHX2_2.ButtonWithStyle
  SHX3_2 = SHX0_2.buyTitle
  SHX4_2 = ""
  SHX5_2 = {}
  SHX6_2 = "\194\163"
  SHX7_2 = getMoneyStringFormatted
  SHX8_2 = SHX23_1
  SHX9_2 = SHX0_2.price
  SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX8_2(SHX9_2)
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX6_2 = SHX6_2 .. SHX7_2
  SHX5_2.RightLabel = SHX6_2
  SHX6_2 = true
  function SHX7_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3
    if SHX2_3 then
      SHX3_3 = TriggerServerEvent
      SHX4_3 = "7a505e9225"
      SHX5_3 = SHX8_1
      SHX6_3 = SHX0_1.categoryToIndentifier
      SHX7_3 = SHX0_2
      SHX6_3 = SHX6_3[SHX7_3]
      SHX3_3(SHX4_3, SHX5_3, SHX6_3)
    end
  end
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
end
function SHX44_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX2_2 = SHX0_2.saveKey
  if "primaryrgb" == SHX2_2 then
    SHX3_2 = SetVehicleCustomPrimaryColour
    SHX4_2 = SHX6_1
    SHX5_2 = SHX1_2.red
    SHX6_2 = SHX1_2.green
    SHX7_2 = SHX1_2.blue
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  end
end
function SHX45_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX2_2 = SHX0_2.saveKey
  SHX1_2 = SHX4_1
  SHX1_2 = SHX1_2[SHX2_2]
  function SHX2_2(SHX0_3, SHX1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX2_3, SHX3_3, SHX4_3, SHX5_3
    if SHX0_3 then
      SHX2_3 = CMG
      SHX2_3 = SHX2_3.clientPrompt
      SHX3_3 = "Enter Value (0 - 255)"
      SHX4_3 = ""
      function SHX5_3(SHX0_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX1_4, SHX2_4, SHX3_4
        SHX1_4 = tonumber
        SHX2_4 = SHX0_4
        SHX1_4 = SHX1_4(SHX2_4)
        if SHX1_4 then
          SHX2_4 = math
          SHX2_4 = SHX2_4.type
          SHX3_4 = SHX1_4
          SHX2_4 = SHX2_4(SHX3_4)
          if "integer" == SHX2_4 and SHX1_4 >= 0 then
            SHX2_4 = 255
            if SHX1_4 <= SHX2_4 then
              SHX2_4 = SHX1_3
              SHX3_4 = SHX1_4
              SHX2_4(SHX3_4)
            end
          end
        end
      end
      SHX2_3(SHX3_3, SHX4_3, SHX5_3)
    end
  end
  function SHX3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3
    SHX0_3 = SHX44_1
    SHX1_3 = SHX0_2
    SHX2_3 = SHX1_2
    SHX0_3(SHX1_3, SHX2_3)
    SHX0_3 = TriggerServerEvent
    SHX1_3 = "e4da2894cf"
    SHX2_3 = SHX8_1
    SHX3_3 = SHX0_1.categoryToIndentifier
    SHX4_3 = SHX0_2
    SHX3_3 = SHX3_3[SHX4_3]
    SHX4_3 = SHX1_2.red
    SHX5_3 = SHX1_2.green
    SHX6_3 = SHX1_2.blue
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
  end
  if not SHX1_2 then
    SHX4_2 = RageUI
    SHX4_2 = SHX4_2.ButtonWithStyle
    SHX5_2 = "Purchase Colour Picker"
    SHX6_2 = ""
    SHX7_2 = {}
    SHX8_2 = "\194\163"
    SHX9_2 = getMoneyStringFormatted
    SHX10_2 = SHX23_1
    SHX11_2 = SHX0_2.price
    SHX10_2, SHX11_2, SHX12_2 = SHX10_2(SHX11_2)
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
    SHX8_2 = SHX8_2 .. SHX9_2
    SHX7_2.RightLabel = SHX8_2
    SHX8_2 = true
    function SHX9_2(SHX0_3, SHX1_3, SHX2_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3
      if SHX2_3 then
        SHX3_3 = TriggerServerEvent
        SHX4_3 = "a3c480899a"
        SHX5_3 = SHX8_1
        SHX6_3 = SHX0_1.categoryToIndentifier
        SHX7_3 = SHX0_2
        SHX6_3 = SHX6_3[SHX7_3]
        SHX3_3(SHX4_3, SHX5_3, SHX6_3)
      end
    end
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  else
    SHX4_2 = drawNativeNotification
    SHX5_2 = "Press ~INPUT_FRONTEND_ACCEPT~ to enter an RGB value."
    SHX4_2(SHX5_2)
  end
  SHX4_2 = RageUI
  SHX4_2 = SHX4_2.Slider
  SHX5_2 = "Red"
  if SHX1_2 then
    SHX6_2 = SHX1_2.red
    if SHX6_2 then
      goto SHX_LABEL_38
    end
  end
  SHX6_2 = 0
  -- [FIX IF ERROR] Move ::SHX_LABEL_38:: outside nested blocks until all 'goto SHX_LABEL_38' can see it
  ::SHX_LABEL_38::
  SHX7_2 = 255
  SHX8_2 = ""
  SHX9_2 = false
  SHX10_2 = {}
  SHX11_2 = nil ~= SHX1_2
  function SHX12_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX4_3, SHX5_3, SHX6_3
    SHX4_3 = SHX2_2
    SHX5_3 = SHX2_3
    function SHX6_3(SHX0_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_4
      SHX1_2.red = SHX0_4
      SHX1_4 = SHX3_2
      SHX1_4()
    end
    SHX4_3(SHX5_3, SHX6_3)
    SHX4_3 = SHX1_2.red
    if SHX4_3 ~= SHX3_3 then
      SHX1_2.red = SHX3_3
      SHX4_3 = SHX3_2
      SHX4_3()
    end
  end
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX4_2 = RageUI
  SHX4_2 = SHX4_2.Slider
  SHX5_2 = "Green"
  if SHX1_2 then
    SHX6_2 = SHX1_2.green
    if SHX6_2 then
      goto SHX_LABEL_58
    end
  end
  SHX6_2 = 0
  -- [FIX IF ERROR] Move ::SHX_LABEL_58:: outside nested blocks until all 'goto SHX_LABEL_58' can see it
  ::SHX_LABEL_58::
  SHX7_2 = 255
  SHX8_2 = ""
  SHX9_2 = false
  SHX10_2 = {}
  SHX11_2 = nil ~= SHX1_2
  function SHX12_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX4_3, SHX5_3, SHX6_3
    SHX4_3 = SHX2_2
    SHX5_3 = SHX2_3
    function SHX6_3(SHX0_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_4
      SHX1_2.green = SHX0_4
      SHX1_4 = SHX3_2
      SHX1_4()
    end
    SHX4_3(SHX5_3, SHX6_3)
    SHX4_3 = SHX1_2.green
    if SHX4_3 ~= SHX3_3 then
      SHX1_2.green = SHX3_3
      SHX4_3 = SHX3_2
      SHX4_3()
    end
  end
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX4_2 = RageUI
  SHX4_2 = SHX4_2.Slider
  SHX5_2 = "Blue"
  if SHX1_2 then
    SHX6_2 = SHX1_2.blue
    if SHX6_2 then
      goto SHX_LABEL_78
    end
  end
  SHX6_2 = 0
  -- [FIX IF ERROR] Move ::SHX_LABEL_78:: outside nested blocks until all 'goto SHX_LABEL_78' can see it
  ::SHX_LABEL_78::
  SHX7_2 = 255
  SHX8_2 = ""
  SHX9_2 = false
  SHX10_2 = {}
  SHX11_2 = nil ~= SHX1_2
  function SHX12_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX4_3, SHX5_3, SHX6_3
    SHX4_3 = SHX2_2
    SHX5_3 = SHX2_3
    function SHX6_3(SHX0_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_4
      SHX1_2.blue = SHX0_4
      SHX1_4 = SHX3_2
      SHX1_4()
    end
    SHX4_3(SHX5_3, SHX6_3)
    SHX4_3 = SHX1_2.blue
    if SHX4_3 ~= SHX3_3 then
      SHX1_2.blue = SHX3_3
      SHX4_3 = SHX3_2
      SHX4_3()
    end
  end
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
end
function SHX46_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX2_2 = RageUI
  SHX2_2 = SHX2_2.ButtonWithStyle
  SHX3_2 = SHX0_2.name
  SHX4_2 = SHX0_2.description
  SHX5_2 = {}
  SHX5_2.RightLabel = "\226\134\146\226\134\146\226\134\146"
  SHX6_2 = true
  function SHX7_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3
    if SHX2_3 then
      SHX3_3 = TriggerEvent
      SHX4_3 = "e3500806d7"
      SHX5_3 = SHX0_2.menuType
      SHX6_3 = SHX6_1
      SHX7_3 = SHX8_1
      SHX8_3 = SHX4_1
      SHX9_3 = SHX1_2
      SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    end
  end
  SHX8_2 = RMenu
  SHX9_2 = SHX8_2
  SHX8_2 = SHX8_2.Get
  SHX10_2 = SHX0_2.menuType
  SHX11_2 = SHX0_2.menuName
  SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
end
function SHX47_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = IsControlJustPressed
  SHX2_2 = 0
  SHX3_2 = 0
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if SHX1_2 then
    SHX1_2 = SHX9_1
    if 0 == SHX1_2 then
      SHX1_2 = SHX18_1
      SHX2_2 = SHX0_2
      SHX1_2(SHX2_2)
    else
      SHX1_2 = SHX19_1
      SHX1_2()
    end
  end
end
function SHX48_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = {}
  SHX2_2 = pairs
  SHX3_2 = SHX0_2.categories
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = table
    SHX8_2 = SHX8_2.insert
    SHX9_2 = SHX1_2
    SHX10_2 = SHX7_2
    SHX8_2(SHX9_2, SHX10_2)
  end
  SHX2_2 = table
  SHX2_2 = SHX2_2.sort
  SHX3_2 = SHX1_2
  function SHX4_2(SHX0_3, SHX1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX2_3, SHX3_3
    SHX2_3 = SHX0_3.name
    if not SHX2_3 then
      SHX2_3 = ""
    end
    SHX3_3 = SHX1_3.name
    if not SHX3_3 then
      SHX3_3 = ""
    end
    SHX2_3 = SHX2_3 < SHX3_3
    return SHX2_3
  end
  SHX2_2(SHX3_2, SHX4_2)
  return SHX1_2
end
function SHX49_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.IsVisible
  SHX2_2 = RMenu
  SHX3_2 = SHX2_2
  SHX2_2 = SHX2_2.Get
  SHX4_2 = "lscustoms"
  SHX5_2 = SHX0_2.menu
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX3_2 = true
  SHX4_2 = true
  SHX5_2 = true
  function SHX6_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.BackspaceMenuCallback
    function SHX1_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
      SHX0_4 = SHX20_1
      SHX1_4 = SHX0_2
      SHX0_4(SHX1_4)
      SHX0_4 = SHX0_2.type
      if "modList" == SHX0_4 then
        SHX0_4 = SHX27_1
        SHX1_4 = SHX0_2
        SHX0_4(SHX1_4)
      else
        SHX0_4 = SHX0_2.type
        if "staticList" == SHX0_4 then
          SHX0_4 = SHX36_1
          SHX1_4 = SHX0_2
          SHX0_4(SHX1_4)
        else
          SHX0_4 = SHX0_2.type
          if "indexModList" == SHX0_4 then
            SHX0_4 = SHX30_1
            SHX1_4 = SHX0_2
            SHX0_4(SHX1_4)
          end
        end
      end
    end
    SHX0_3(SHX1_3)
    SHX0_3 = SHX0_2.type
    if "modList" == SHX0_3 then
      SHX0_3 = SHX28_1
      SHX1_3 = SHX0_2
      SHX0_3(SHX1_3)
      SHX0_3 = SHX47_1
      SHX1_3 = SHX0_2
      SHX0_3(SHX1_3)
    else
      SHX0_3 = SHX0_2.type
      if "indexModList" == SHX0_3 then
        SHX0_3 = SHX31_1
        SHX1_3 = SHX0_2
        SHX0_3(SHX1_3)
        SHX0_3 = SHX47_1
        SHX1_3 = SHX0_2
        SHX0_3(SHX1_3)
      else
        SHX0_3 = SHX0_2.type
        if "indexMultiList" == SHX0_3 then
          SHX0_3 = SHX32_1
          SHX1_3 = SHX0_2
          SHX0_3(SHX1_3)
          SHX0_3 = SHX47_1
          SHX1_3 = SHX0_2
          SHX0_3(SHX1_3)
        else
          SHX0_3 = SHX0_2.type
          if "staticList" == SHX0_3 then
            SHX0_3 = SHX41_1
            SHX1_3 = SHX0_2
            SHX0_3(SHX1_3)
            SHX0_3 = SHX47_1
            SHX1_3 = SHX0_2
            SHX0_3(SHX1_3)
          else
            SHX0_3 = SHX0_2.type
            if "staticValueList" == SHX0_3 then
              SHX0_3 = SHX42_1
              SHX1_3 = SHX0_2
              SHX0_3(SHX1_3)
              SHX0_3 = SHX47_1
              SHX1_3 = SHX0_2
              SHX0_3(SHX1_3)
            else
              SHX0_3 = SHX0_2.type
              if "valueInputList" == SHX0_3 then
                SHX0_3 = SHX43_1
                SHX1_3 = SHX0_2
                SHX0_3(SHX1_3)
                SHX0_3 = SHX47_1
                SHX1_3 = SHX0_2
                SHX0_3(SHX1_3)
              else
                SHX0_3 = SHX0_2.type
                if "colourPicker" == SHX0_3 then
                  SHX0_3 = SHX45_1
                  SHX1_3 = SHX0_2
                  SHX0_3(SHX1_3)
                  SHX0_3 = SHX47_1
                  SHX1_3 = SHX0_2
                  SHX0_3(SHX1_3)
                else
                  SHX0_3 = SHX0_2.type
                  if "categoryList" == SHX0_3 then
                    SHX0_3 = ipairs
                    SHX1_3 = SHX48_1
                    SHX2_3 = SHX0_2
                    SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3 = SHX1_3(SHX2_3)
                    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3)
                    for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
                      SHX6_3 = SHX5_3.visible
                      if SHX6_3 then
                        SHX6_3 = SHX5_3.type
                        if "externalMenu" == SHX6_3 then
                          SHX6_3 = SHX46_1
                          SHX7_3 = SHX5_3
                          SHX8_3 = {}
                          SHX9_3 = "lscustoms"
                          SHX10_3 = SHX0_2.menu
                          SHX8_3[1] = SHX9_3
                          SHX8_3[2] = SHX10_3
                          SHX6_3(SHX7_3, SHX8_3)
                        else
                          SHX6_3 = RageUI
                          SHX6_3 = SHX6_3.ButtonWithStyle
                          SHX7_3 = SHX5_3.name
                          SHX8_3 = SHX5_3.description
                          SHX9_3 = {}
                          SHX9_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
                          SHX10_3 = true
                          function SHX11_3(SHX0_4, SHX1_4, SHX2_4)
                            -- [AI CLEANUP] Decompiled Lua - Fix these:
                            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                            -- 3. Replace goto/label with while/repeat-until where possible
                            -- 4. Remove decompiler comments, add meaningful ones
                            -- 5. Fix indentation and formatting
                            
                            local SHX3_4, SHX4_4
                            if SHX2_4 then
                              SHX3_4 = SHX18_1
                              SHX4_4 = SHX5_3
                              SHX3_4(SHX4_4)
                            end
                          end
                          SHX12_3 = RMenu
                          SHX13_3 = SHX12_3
                          SHX12_3 = SHX12_3.Get
                          SHX14_3 = "lscustoms"
                          SHX15_3 = SHX5_3.menu
                          SHX12_3, SHX13_3, SHX14_3, SHX15_3 = SHX12_3(SHX13_3, SHX14_3, SHX15_3)
                          SHX6_3(SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3)
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
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX1_2 = SHX0_2.type
  if "categoryList" == SHX1_2 then
    SHX1_2 = pairs
    SHX2_2 = SHX0_2.categories
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
    for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
      SHX7_2 = SHX49_1
      SHX8_2 = SHX6_2
      SHX7_2(SHX8_2)
    end
  end
end
SHX50_1 = RageUI
SHX50_1 = SHX50_1.CreateWhile
SHX51_1 = 1.0
SHX52_1 = RMenu
SHX53_1 = SHX52_1
SHX52_1 = SHX52_1.Get
SHX54_1 = "lscustoms"
SHX55_1 = "mainmenu"
SHX52_1 = SHX52_1(SHX53_1, SHX54_1, SHX55_1)
SHX53_1 = nil
function SHX54_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "lscustoms"
  SHX4_2 = "repair"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX3_2 = true
  SHX4_2 = true
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Repair Vehicle"
    SHX2_3 = nil
    SHX3_3 = {}
    SHX3_3.RightLabel = "\194\1631,000"
    SHX4_3 = true
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4
      if SHX2_4 then
        SHX3_4 = TriggerServerEvent
        SHX4_4 = "d4574bdb4a"
        SHX3_4(SHX4_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = SHX49_1
  SHX1_2 = SHX0_1.category
  SHX0_2(SHX1_2)
end
SHX50_1(SHX51_1, SHX52_1, SHX53_1, SHX54_1)
SHX50_1 = {}
function SHX51_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = true
  return SHX0_2
end
SHX50_1.default = SHX51_1
function SHX51_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = IsThisModelACar
  SHX1_2 = GetEntityModel
  SHX2_2 = SHX6_1
  SHX1_2, SHX2_2 = SHX1_2(SHX2_2)
  return SHX0_2(SHX1_2, SHX2_2)
end
SHX50_1.isCar = SHX51_1
function SHX51_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = IsThisModelABike
  SHX1_2 = GetEntityModel
  SHX2_2 = SHX6_1
  SHX1_2, SHX2_2 = SHX1_2(SHX2_2)
  return SHX0_2(SHX1_2, SHX2_2)
end
SHX50_1.isBike = SHX51_1
function SHX51_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = IsThisModelAPlane
  SHX1_2 = GetEntityModel
  SHX2_2 = SHX6_1
  SHX1_2, SHX2_2 = SHX1_2(SHX2_2)
  return SHX0_2(SHX1_2, SHX2_2)
end
SHX50_1.isPlane = SHX51_1
function SHX51_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = GetNumVehicleMods
  SHX1_2 = SHX6_1
  SHX2_2 = 1
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SHX0_2 > 0
  return SHX0_2
end
SHX50_1.hasFrontBumper = SHX51_1
function SHX51_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = GetNumVehicleMods
  SHX1_2 = SHX6_1
  SHX2_2 = 2
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SHX0_2 > 0
  return SHX0_2
end
SHX50_1.hasRearBumper = SHX51_1
function SHX51_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = GetNumVehicleMods
  SHX1_2 = SHX6_1
  SHX2_2 = 1
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SHX0_2 > 0
  return SHX0_2
end
SHX50_1.hasAnyBumper = SHX51_1
function SHX51_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = 42
  SHX1_2 = 46
  SHX2_2 = 1
  for SHX3_2 = SHX0_2, SHX1_2, SHX2_2 do
    SHX4_2 = GetNumVehicleMods
    SHX5_2 = SHX6_1
    SHX6_2 = SHX3_2
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
    if SHX4_2 > 0 then
      SHX4_2 = true
      return SHX4_2
    end
  end
  SHX0_2 = GetNumVehicleMods
  SHX1_2 = SHX6_1
  SHX2_2 = 5
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SHX0_2 > 0
  return SHX0_2
end
SHX50_1.hasChassis = SHX51_1
function SHX51_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = 27
  SHX1_2 = 37
  SHX2_2 = 1
  for SHX3_2 = SHX0_2, SHX1_2, SHX2_2 do
    SHX4_2 = GetNumVehicleMods
    SHX5_2 = SHX6_1
    SHX6_2 = SHX3_2
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
    if SHX4_2 > 0 then
      SHX4_2 = true
      return SHX4_2
    end
  end
  SHX0_2 = false
  return SHX0_2
end
SHX50_1.hasInterior = SHX51_1
function SHX51_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = GetNumVehicleMods
  SHX1_2 = SHX6_1
  SHX2_2 = 25
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SHX0_2 > 0
  return SHX0_2
end
SHX50_1.hasPlates = SHX51_1
function SHX51_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = IsThisModelACar
  SHX1_2 = GetEntityModel
  SHX2_2 = SHX6_1
  SHX1_2, SHX2_2 = SHX1_2(SHX2_2)
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if not SHX0_2 then
    SHX0_2 = IsThisModelABike
    SHX1_2 = GetEntityModel
    SHX2_2 = SHX6_1
    SHX1_2, SHX2_2 = SHX1_2(SHX2_2)
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  end
  return SHX0_2
end
SHX50_1.isCarOrBike = SHX51_1
function SHX51_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = GetEntityModel
  SHX1_2 = SHX6_1
  SHX0_2 = SHX0_2(SHX1_2)
  SHX1_2 = IsThisModelACar
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = IsThisModelABike
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if not SHX1_2 then
      SHX1_2 = IsThisModelAHeli
      SHX2_2 = SHX0_2
      SHX1_2 = SHX1_2(SHX2_2)
    end
  end
  return SHX1_2
end
SHX50_1.isCarOrBikeOrHeli = SHX51_1
function SHX51_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX4_1
  if SHX0_2 then
    SHX0_2 = SHX4_1.security
    if SHX0_2 then
      SHX0_2 = SHX4_1.security
      SHX0_2 = SHX0_2["21"]
      SHX0_2 = nil ~= SHX0_2
    end
  end
  return SHX0_2
end
SHX50_1.hasBiometricLock = SHX51_1
SHX51_1 = {}
SHX51_1[18] = true
SHX51_1[22] = true
function SHX52_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2.visible = true
  SHX1_2 = SHX0_2.type
  if "modList" == SHX1_2 then
    SHX1_2 = GetNumVehicleMods
    SHX2_2 = SHX6_1
    SHX3_2 = SHX0_2.modType
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX1_2 > 0
    SHX0_2.visible = SHX1_2
  else
    SHX1_2 = SHX0_2.type
    if "indexModList" ~= SHX1_2 then
      SHX1_2 = SHX0_2.type
      if "indexMultiList" ~= SHX1_2 then
        goto SHX_LABEL_34
      end
    end
    SHX1_2 = table
    SHX1_2 = SHX1_2.count
    SHX3_2 = SHX0_2.generatorName
    SHX2_2 = SHX15_1
    SHX2_2 = SHX2_2[SHX3_2]
    SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX2_2()
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX1_2 = SHX1_2 > 0
    SHX0_2.visible = SHX1_2
    goto SHX_LABEL_100
    -- [FIX IF ERROR] Move ::SHX_LABEL_34:: outside nested blocks until all 'goto SHX_LABEL_34' can see it
    ::SHX_LABEL_34::
    SHX1_2 = SHX0_2.type
    if "staticList" == SHX1_2 then
      SHX1_2 = string
      SHX1_2 = SHX1_2.match
      SHX2_2 = SHX0_2.saveKey
      SHX3_2 = "mod_"
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
      if SHX1_2 then
        SHX1_2 = tonumber
        SHX2_2 = string
        SHX2_2 = SHX2_2.sub
        SHX3_2 = SHX0_2.saveKey
        SHX4_2 = 5
        SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX2_2(SHX3_2, SHX4_2)
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
        if SHX1_2 then
          SHX2_2 = SHX51_1
          SHX2_2 = SHX2_2[SHX1_2]
          if not SHX2_2 then
            SHX2_2 = GetNumVehicleMods
            SHX3_2 = SHX6_1
            SHX4_2 = SHX1_2
            SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
            if 0 == SHX2_2 then
              SHX0_2.visible = false
            end
          end
        end
      end
    end
    SHX1_2 = SHX0_2.requirements
    if SHX1_2 then
      SHX1_2 = stringsplit
      SHX2_2 = SHX0_2.requirements
      SHX3_2 = ","
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
      SHX2_2 = pairs
      SHX3_2 = SHX1_2
      SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
      for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
        SHX8_2 = string
        SHX8_2 = SHX8_2.gsub
        SHX9_2 = SHX7_2
        SHX10_2 = "%s+"
        SHX11_2 = ""
        SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2)
        SHX7_2 = SHX8_2
        SHX8_2 = SHX50_1
        SHX8_2 = SHX8_2[SHX7_2]
        SHX9_2 = SHX8_2
        SHX9_2 = SHX9_2()
        if not SHX9_2 then
          SHX0_2.visible = false
          break
        end
      end
    else
      SHX1_2 = SHX0_2.visible
      if SHX1_2 then
        SHX1_2 = SHX50_1.default
        SHX1_2 = SHX1_2()
        SHX0_2.visible = SHX1_2
      end
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_100:: outside nested blocks until all 'goto SHX_LABEL_100' can see it
  ::SHX_LABEL_100::
  SHX1_2 = SHX0_2.type
  if "categoryList" == SHX1_2 then
    SHX1_2 = false
    SHX2_2 = pairs
    SHX3_2 = SHX0_2.categories
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
    for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
      SHX8_2 = SHX52_1
      SHX9_2 = SHX7_2
      SHX8_2(SHX9_2)
      SHX8_2 = SHX7_2.visible
      if SHX8_2 then
        SHX1_2 = true
      end
    end
    if not SHX1_2 then
      SHX0_2.visible = false
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
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getVehicleIdFromModel
  SHX1_2 = GetEntityModel
  SHX2_2 = SHX6_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX1_2(SHX2_2)
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX7_1 = SHX0_2
  SHX0_2 = DecorExistOn
  SHX1_2 = SHX6_1
  SHX2_2 = "0a6cf607ed"
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = DecorGetInt
    SHX1_2 = SHX6_1
    SHX2_2 = "0a6cf607ed"
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    SHX8_1 = SHX0_2
  else
    SHX0_2 = 0
    SHX8_1 = SHX0_2
  end
  SHX0_2 = SHX7_1
  if nil ~= SHX0_2 then
    SHX0_2 = SHX8_1
    if 0 ~= SHX0_2 then
      SHX0_2 = SHX5_1
      if SHX0_2 then
        goto SHX_LABEL_39
      end
    end
  end
  SHX0_2 = notify
  SHX1_2 = "~r~Could not identify the vehicle you are in."
  SHX0_2(SHX1_2)
  SHX0_2 = nil
  SHX5_1 = SHX0_2
  SHX0_2 = 0
  SHX6_1 = SHX0_2
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_39:: outside nested blocks until all 'goto SHX_LABEL_39' can see it
  ::SHX_LABEL_39::
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "233c2baede"
  SHX2_2 = SHX8_1
  SHX0_2(SHX1_2, SHX2_2)
  while true do
    SHX0_2 = SHX4_1
    if SHX0_2 then
      break
    end
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
  SHX0_2 = DisplayRadar
  SHX1_2 = false
  SHX0_2(SHX1_2)
  SHX0_2 = SetPlayerControl
  SHX1_2 = PlayerId
  SHX1_2 = SHX1_2()
  SHX2_2 = false
  SHX3_2 = 0
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "ae63f8542b"
  SHX2_2 = SHX5_1.index
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DoScreenFadeOut
  SHX1_2 = 500
  SHX0_2(SHX1_2)
  while true do
    SHX0_2 = IsScreenFadingOut
    SHX0_2 = SHX0_2()
    if not SHX0_2 then
      break
    end
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
  SHX0_2 = SHX5_1.driveIn
  SHX1_2 = SetEntityCoordsNoOffset
  SHX2_2 = SHX6_1
  SHX3_2 = SHX0_2.position
  SHX3_2 = SHX3_2.x
  SHX4_2 = SHX0_2.position
  SHX4_2 = SHX4_2.y
  SHX5_2 = SHX0_2.position
  SHX5_2 = SHX5_2.z
  SHX6_2 = false
  SHX7_2 = false
  SHX8_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX1_2 = SetEntityHeading
  SHX2_2 = SHX6_1
  SHX3_2 = SHX0_2.heading
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = FadeOutLocalPlayer
  SHX2_2 = true
  SHX1_2(SHX2_2)
  SHX1_2 = SetVehicleOnGroundProperly
  SHX2_2 = SHX6_1
  SHX1_2(SHX2_2)
  SHX1_2 = SetVehicleLights
  SHX2_2 = SHX6_1
  SHX3_2 = 2
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetVehicleInteriorlight
  SHX2_2 = SHX6_1
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetVehicleDoorsLocked
  SHX2_2 = SHX6_1
  SHX3_2 = 4
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetPlayerInvincible
  SHX2_2 = PlayerId
  SHX2_2 = SHX2_2()
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetEntityInvincible
  SHX2_2 = SHX6_1
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetEntityCanBeDamaged
  SHX2_2 = SHX6_1
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetVehRadioStation
  SHX2_2 = SHX6_1
  SHX3_2 = "OFF"
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SHX5_1.interior
  if SHX1_2 then
    SHX2_2 = ForceRoomForEntity
    SHX3_2 = PlayerPedId
    SHX3_2 = SHX3_2()
    SHX4_2 = SHX1_2.key
    SHX5_2 = SHX1_2.room
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = ForceRoomForEntity
    SHX3_2 = SHX6_1
    SHX4_2 = SHX1_2.key
    SHX5_2 = SHX1_2.room
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = ForceRoomForGameViewport
    SHX3_2 = SHX1_2.key
    SHX4_2 = SHX1_2.room
    SHX2_2(SHX3_2, SHX4_2)
  end
  SHX2_2 = SHX5_1.type
  if "automobile" == SHX2_2 then
    SHX2_2 = SHX5_1.camera
    SHX3_2 = GetRenderingCam
    SHX3_2 = SHX3_2()
    SHX10_1 = SHX3_2
    SHX3_2 = CreateCam
    SHX4_2 = "DEFAULT_SCRIPTED_CAMERA"
    SHX5_2 = true
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
    SHX9_1 = SHX3_2
    SHX3_2 = SetCamCoord
    SHX4_2 = SHX9_1
    SHX5_2 = SHX2_2.position
    SHX5_2 = SHX5_2.x
    SHX6_2 = SHX2_2.position
    SHX6_2 = SHX6_2.y
    SHX7_2 = SHX2_2.position
    SHX7_2 = SHX7_2.z
    SHX7_2 = SHX7_2 + 1.0
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
    SHX3_2 = PointCamAtEntity
    SHX4_2 = SHX9_1
    SHX5_2 = SHX6_1
    SHX6_2 = 1
    SHX7_2 = 1
    SHX8_2 = 1
    SHX9_2 = true
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    SHX3_2 = SetCamActive
    SHX4_2 = SHX9_1
    SHX5_2 = true
    SHX3_2(SHX4_2, SHX5_2)
    SHX3_2 = RenderScriptCams
    SHX4_2 = true
    SHX5_2 = false
    SHX6_2 = 0
    SHX7_2 = false
    SHX8_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX3_2 = SHX5_1.inside
    SHX4_2 = TaskVehicleDriveToCoord
    SHX5_2 = PlayerPedId
    SHX5_2 = SHX5_2()
    SHX6_2 = SHX6_1
    SHX7_2 = SHX3_2.position
    SHX7_2 = SHX7_2.x
    SHX8_2 = SHX3_2.position
    SHX8_2 = SHX8_2.y
    SHX9_2 = SHX3_2.position
    SHX9_2 = SHX9_2.z
    SHX10_2 = 3.0
    SHX11_2 = 1.0
    SHX12_2 = GetEntityModel
    SHX13_2 = SHX6_1
    SHX12_2 = SHX12_2(SHX13_2)
    SHX13_2 = 16777216
    SHX14_2 = 0.1
    SHX15_2 = 1
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  end
  if SHX1_2 then
    SHX2_2 = ForceRoomForEntity
    SHX3_2 = PlayerPedId
    SHX3_2 = SHX3_2()
    SHX4_2 = SHX1_2.key
    SHX5_2 = SHX1_2.room
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = ForceRoomForEntity
    SHX3_2 = SHX6_1
    SHX4_2 = SHX1_2.key
    SHX5_2 = SHX1_2.room
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = ForceRoomForGameViewport
    SHX3_2 = SHX1_2.key
    SHX4_2 = SHX1_2.room
    SHX2_2(SHX3_2, SHX4_2)
  end
  SHX2_2 = DoScreenFadeIn
  SHX3_2 = 3000
  SHX2_2(SHX3_2)
  while true do
    SHX2_2 = IsScreenFadingIn
    SHX2_2 = SHX2_2()
    if not SHX2_2 then
      break
    end
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
  SHX2_2 = GetGameTimer
  SHX2_2 = SHX2_2()
  while true do
    SHX3_2 = IsVehicleStopped
    SHX4_2 = SHX6_1
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      break
    end
    SHX3_2 = GetGameTimer
    SHX3_2 = SHX3_2()
    SHX3_2 = SHX3_2 - SHX2_2
    SHX4_2 = 15000
    if SHX3_2 > SHX4_2 then
      break
    end
    SHX3_2 = Citizen
    SHX3_2 = SHX3_2.Wait
    SHX4_2 = 0
    SHX3_2(SHX4_2)
  end
  SHX3_2 = ClearPedTasks
  SHX4_2 = PlayerPedId
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX4_2()
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX3_2 = SHX5_1.type
  if "automobile" == SHX3_2 then
    SHX3_2 = GetFinalRenderedCamCoord
    SHX3_2 = SHX3_2()
    SHX4_2 = SetCamCoord
    SHX5_2 = SHX9_1
    SHX6_2 = SHX3_2.x
    SHX7_2 = SHX3_2.y
    SHX8_2 = SHX3_2.z
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX4_2 = GetGameplayCamRot
    SHX5_2 = 2
    SHX4_2 = SHX4_2(SHX5_2)
    SHX5_2 = SetCamRot
    SHX6_2 = SHX9_1
    SHX7_2 = SHX4_2.x
    SHX8_2 = SHX4_2.y
    SHX9_2 = SHX4_2.z
    SHX10_2 = 2
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    SHX5_2 = RenderScriptCams
    SHX6_2 = true
    SHX7_2 = true
    SHX8_2 = 0
    SHX9_2 = false
    SHX10_2 = false
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    SHX5_2 = RenderScriptCams
    SHX6_2 = false
    SHX7_2 = true
    SHX8_2 = 1000
    SHX9_2 = false
    SHX10_2 = false
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    SHX5_2 = SetCamActive
    SHX6_2 = SHX9_1
    SHX7_2 = true
    SHX5_2(SHX6_2, SHX7_2)
    SHX5_2 = TogglePausedRenderphases
    SHX6_2 = true
    SHX5_2(SHX6_2)
    SHX5_2 = SetCamActive
    SHX6_2 = SHX9_1
    SHX7_2 = false
    SHX5_2(SHX6_2, SHX7_2)
  end
  SHX3_2 = FreezeEntityPosition
  SHX4_2 = SHX6_1
  SHX5_2 = true
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SetEntityCollision
  SHX4_2 = SHX6_1
  SHX5_2 = false
  SHX6_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = SetPlayerControl
  SHX4_2 = PlayerId
  SHX4_2 = SHX4_2()
  SHX5_2 = true
  SHX6_2 = 0
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = RequestScriptAudioBank
  SHX4_2 = "DLC_MPHEIST\\HEIST_FLEECA_DRILL"
  SHX5_2 = false
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = RequestScriptAudioBank
  SHX4_2 = "DLC_MPHEIST\\HEIST_FLEECA_DRILL_2"
  SHX5_2 = false
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = RMenu
  SHX4_2 = SHX3_2
  SHX3_2 = SHX3_2.Get
  SHX5_2 = "lscustoms"
  SHX6_2 = "mainmenu"
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX4_2 = SHX3_2
  SHX3_2 = SHX3_2.SetSubtitle
  SHX5_2 = SHX5_1.name
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SHX52_1
  SHX4_2 = SHX0_1.category
  SHX3_2(SHX4_2)
  SHX3_2 = IsVehicleDamaged
  SHX4_2 = SHX6_1
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = RageUI
    SHX3_2 = SHX3_2.Visible
    SHX4_2 = RMenu
    SHX5_2 = SHX4_2
    SHX4_2 = SHX4_2.Get
    SHX6_2 = "lscustoms"
    SHX7_2 = "repair"
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    SHX5_2 = true
    SHX3_2(SHX4_2, SHX5_2)
  else
    SHX3_2 = RageUI
    SHX3_2 = SHX3_2.Visible
    SHX4_2 = RMenu
    SHX5_2 = SHX4_2
    SHX4_2 = SHX4_2.Get
    SHX6_2 = "lscustoms"
    SHX7_2 = "mainmenu"
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    SHX5_2 = true
    SHX3_2(SHX4_2, SHX5_2)
  end
  SHX3_2 = true
  SHX12_1 = SHX3_2
end
function SHX54_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getVehicleIdFromModel
  SHX1_2 = GetEntityModel
  SHX2_2 = SHX6_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX1_2(SHX2_2)
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX7_1 = SHX0_2
  SHX0_2 = DecorExistOn
  SHX1_2 = SHX6_1
  SHX2_2 = "0a6cf607ed"
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = DecorGetInt
    SHX1_2 = SHX6_1
    SHX2_2 = "0a6cf607ed"
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    SHX8_1 = SHX0_2
  else
    SHX0_2 = 0
    SHX8_1 = SHX0_2
  end
  SHX0_2 = SHX7_1
  if nil ~= SHX0_2 then
    SHX0_2 = SHX8_1
    if 0 ~= SHX0_2 then
      SHX0_2 = SHX5_1
      if SHX0_2 then
        goto SHX_LABEL_51
      end
    end
  end
  SHX0_2 = notify
  SHX1_2 = "~r~Could not identify the vehicle you are in."
  SHX0_2(SHX1_2)
  SHX0_2 = SHX5_1
  if SHX0_2 then
    SHX0_2 = TriggerServerEvent
    SHX1_2 = "ae63f8542b"
    SHX2_2 = SHX5_1.index
    SHX3_2 = false
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  end
  SHX0_2 = nil
  SHX5_1 = SHX0_2
  SHX0_2 = 0
  SHX6_1 = SHX0_2
  SHX0_2 = nil
  SHX13_1 = SHX0_2
  SHX0_2 = nil
  SHX14_1 = SHX0_2
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_51:: outside nested blocks until all 'goto SHX_LABEL_51' can see it
  ::SHX_LABEL_51::
  SHX0_2 = nil
  SHX4_1 = SHX0_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "233c2baede"
  SHX2_2 = SHX8_1
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = GetGameTimer
  SHX0_2 = SHX0_2()
  SHX0_2 = SHX0_2 + 15000
  while true do
    SHX1_2 = SHX4_1
    if nil ~= SHX1_2 then
      break
    end
    SHX1_2 = GetGameTimer
    SHX1_2 = SHX1_2()
    if not (SHX0_2 > SHX1_2) then
      break
    end
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
  end
  SHX1_2 = SHX4_1
  if nil == SHX1_2 then
    SHX1_2 = notify
    SHX2_2 = "~r~Could not load vehicle customizations."
    SHX1_2(SHX2_2)
    SHX1_2 = TriggerServerEvent
    SHX2_2 = "ae63f8542b"
    SHX3_2 = SHX5_1.index
    SHX4_2 = false
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = nil
    SHX5_1 = SHX1_2
    SHX1_2 = 0
    SHX6_1 = SHX1_2
    SHX1_2 = nil
    SHX13_1 = SHX1_2
    SHX1_2 = nil
    SHX14_1 = SHX1_2
    return
  end
  SHX1_2 = DisplayRadar
  SHX2_2 = false
  SHX1_2(SHX2_2)
  SHX1_2 = SetPlayerControl
  SHX2_2 = PlayerId
  SHX2_2 = SHX2_2()
  SHX3_2 = false
  SHX4_2 = 0
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "ae63f8542b"
  SHX3_2 = SHX5_1.index
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = DoScreenFadeOut
  SHX2_2 = 500
  SHX1_2(SHX2_2)
  while true do
    SHX1_2 = IsScreenFadingOut
    SHX1_2 = SHX1_2()
    if not SHX1_2 then
      break
    end
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
  end
  SHX1_2 = SHX5_1.inside
  SHX2_2 = SHX5_1.driveIn
  SHX3_2 = SetEntityCoordsNoOffset
  SHX4_2 = SHX6_1
  SHX5_2 = SHX1_2.position
  SHX5_2 = SHX5_2.x
  SHX6_2 = SHX1_2.position
  SHX6_2 = SHX6_2.y
  SHX7_2 = SHX1_2.position
  SHX7_2 = SHX7_2.z
  SHX8_2 = false
  SHX9_2 = false
  SHX10_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX3_2 = SetEntityHeading
  SHX4_2 = SHX6_1
  SHX5_2 = SHX1_2.heading
  if not SHX5_2 then
    SHX5_2 = SHX2_2.heading
  end
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = GetPedInVehicleSeat
  SHX4_2 = SHX6_1
  SHX5_2 = -1
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX4_2 = PlayerPedId
  SHX4_2 = SHX4_2()
  if SHX3_2 ~= SHX4_2 then
    SHX3_2 = TaskWarpPedIntoVehicle
    SHX4_2 = PlayerPedId
    SHX4_2 = SHX4_2()
    SHX5_2 = SHX6_1
    SHX6_2 = -1
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    SHX3_2 = Citizen
    SHX3_2 = SHX3_2.Wait
    SHX4_2 = 250
    SHX3_2(SHX4_2)
  end
  SHX3_2 = FadeOutLocalPlayer
  SHX4_2 = true
  SHX3_2(SHX4_2)
  SHX3_2 = SetVehicleOnGroundProperly
  SHX4_2 = SHX6_1
  SHX3_2(SHX4_2)
  SHX3_2 = SetVehicleLights
  SHX4_2 = SHX6_1
  SHX5_2 = 2
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SetVehicleInteriorlight
  SHX4_2 = SHX6_1
  SHX5_2 = true
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SetVehicleDoorsLocked
  SHX4_2 = SHX6_1
  SHX5_2 = 4
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SetPlayerInvincible
  SHX4_2 = PlayerId
  SHX4_2 = SHX4_2()
  SHX5_2 = true
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SetEntityInvincible
  SHX4_2 = SHX6_1
  SHX5_2 = true
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SetEntityCanBeDamaged
  SHX4_2 = SHX6_1
  SHX5_2 = false
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SetVehRadioStation
  SHX4_2 = SHX6_1
  SHX5_2 = "OFF"
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SHX5_1.interior
  if SHX3_2 then
    SHX4_2 = ForceRoomForEntity
    SHX5_2 = PlayerPedId
    SHX5_2 = SHX5_2()
    SHX6_2 = SHX3_2.key
    SHX7_2 = SHX3_2.room
    SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    SHX4_2 = ForceRoomForEntity
    SHX5_2 = SHX6_1
    SHX6_2 = SHX3_2.key
    SHX7_2 = SHX3_2.room
    SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    SHX4_2 = ForceRoomForGameViewport
    SHX5_2 = SHX3_2.key
    SHX6_2 = SHX3_2.room
    SHX4_2(SHX5_2, SHX6_2)
  end
  SHX4_2 = SHX5_1.type
  if "automobile" == SHX4_2 then
    SHX4_2 = SHX5_1.camera
    SHX5_2 = GetRenderingCam
    SHX5_2 = SHX5_2()
    SHX10_1 = SHX5_2
    SHX5_2 = CreateCam
    SHX6_2 = "DEFAULT_SCRIPTED_CAMERA"
    SHX7_2 = true
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
    SHX9_1 = SHX5_2
    SHX5_2 = SetCamCoord
    SHX6_2 = SHX9_1
    SHX7_2 = SHX4_2.position
    SHX7_2 = SHX7_2.x
    SHX8_2 = SHX4_2.position
    SHX8_2 = SHX8_2.y
    SHX9_2 = SHX4_2.position
    SHX9_2 = SHX9_2.z
    SHX9_2 = SHX9_2 + 1.0
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    SHX5_2 = PointCamAtEntity
    SHX6_2 = SHX9_1
    SHX7_2 = SHX6_1
    SHX8_2 = 1
    SHX9_2 = 1
    SHX10_2 = 1
    SHX11_2 = true
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX5_2 = SetCamActive
    SHX6_2 = SHX9_1
    SHX7_2 = true
    SHX5_2(SHX6_2, SHX7_2)
    SHX5_2 = RenderScriptCams
    SHX6_2 = true
    SHX7_2 = false
    SHX8_2 = 0
    SHX9_2 = false
    SHX10_2 = false
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  end
  if SHX3_2 then
    SHX4_2 = ForceRoomForEntity
    SHX5_2 = PlayerPedId
    SHX5_2 = SHX5_2()
    SHX6_2 = SHX3_2.key
    SHX7_2 = SHX3_2.room
    SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    SHX4_2 = ForceRoomForEntity
    SHX5_2 = SHX6_1
    SHX6_2 = SHX3_2.key
    SHX7_2 = SHX3_2.room
    SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    SHX4_2 = ForceRoomForGameViewport
    SHX5_2 = SHX3_2.key
    SHX6_2 = SHX3_2.room
    SHX4_2(SHX5_2, SHX6_2)
  end
  SHX4_2 = DoScreenFadeIn
  SHX5_2 = 800
  SHX4_2(SHX5_2)
  while true do
    SHX4_2 = IsScreenFadingIn
    SHX4_2 = SHX4_2()
    if not SHX4_2 then
      break
    end
    SHX4_2 = Citizen
    SHX4_2 = SHX4_2.Wait
    SHX5_2 = 0
    SHX4_2(SHX5_2)
  end
  SHX4_2 = Citizen
  SHX4_2 = SHX4_2.Wait
  SHX5_2 = 400
  SHX4_2(SHX5_2)
  SHX4_2 = SHX5_1.type
  if "automobile" == SHX4_2 then
    SHX4_2 = SHX9_1
    if 0 ~= SHX4_2 then
      SHX4_2 = GetFinalRenderedCamCoord
      SHX4_2 = SHX4_2()
      SHX5_2 = SetCamCoord
      SHX6_2 = SHX9_1
      SHX7_2 = SHX4_2.x
      SHX8_2 = SHX4_2.y
      SHX9_2 = SHX4_2.z
      SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
      SHX5_2 = GetGameplayCamRot
      SHX6_2 = 2
      SHX5_2 = SHX5_2(SHX6_2)
      SHX6_2 = SetCamRot
      SHX7_2 = SHX9_1
      SHX8_2 = SHX5_2.x
      SHX9_2 = SHX5_2.y
      SHX10_2 = SHX5_2.z
      SHX11_2 = 2
      SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
      SHX6_2 = RenderScriptCams
      SHX7_2 = true
      SHX8_2 = true
      SHX9_2 = 0
      SHX10_2 = false
      SHX11_2 = false
      SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
      SHX6_2 = RenderScriptCams
      SHX7_2 = false
      SHX8_2 = true
      SHX9_2 = 1000
      SHX10_2 = false
      SHX11_2 = false
      SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
      SHX6_2 = SetCamActive
      SHX7_2 = SHX9_1
      SHX8_2 = true
      SHX6_2(SHX7_2, SHX8_2)
      SHX6_2 = TogglePausedRenderphases
      SHX7_2 = true
      SHX6_2(SHX7_2)
      SHX6_2 = SetCamActive
      SHX7_2 = SHX9_1
      SHX8_2 = false
      SHX6_2(SHX7_2, SHX8_2)
    end
  end
  SHX4_2 = FreezeEntityPosition
  SHX5_2 = SHX6_1
  SHX6_2 = true
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SetEntityCollision
  SHX5_2 = SHX6_1
  SHX6_2 = false
  SHX7_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = SetPlayerControl
  SHX5_2 = PlayerId
  SHX5_2 = SHX5_2()
  SHX6_2 = true
  SHX7_2 = 0
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = RequestScriptAudioBank
  SHX5_2 = "DLC_MPHEIST\\HEIST_FLEECA_DRILL"
  SHX6_2 = false
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = RequestScriptAudioBank
  SHX5_2 = "DLC_MPHEIST\\HEIST_FLEECA_DRILL_2"
  SHX6_2 = false
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = RMenu
  SHX5_2 = SHX4_2
  SHX4_2 = SHX4_2.Get
  SHX6_2 = "lscustoms"
  SHX7_2 = "mainmenu"
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX5_2 = SHX4_2
  SHX4_2 = SHX4_2.SetSubtitle
  SHX6_2 = SHX5_1.name
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SHX52_1
  SHX5_2 = SHX0_1.category
  SHX4_2(SHX5_2)
  SHX4_2 = IsVehicleDamaged
  SHX5_2 = SHX6_1
  SHX4_2 = SHX4_2(SHX5_2)
  if SHX4_2 then
    SHX4_2 = RageUI
    SHX4_2 = SHX4_2.Visible
    SHX5_2 = RMenu
    SHX6_2 = SHX5_2
    SHX5_2 = SHX5_2.Get
    SHX7_2 = "lscustoms"
    SHX8_2 = "repair"
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
    SHX6_2 = true
    SHX4_2(SHX5_2, SHX6_2)
  else
    SHX4_2 = RageUI
    SHX4_2 = SHX4_2.Visible
    SHX5_2 = RMenu
    SHX6_2 = SHX5_2
    SHX5_2 = SHX5_2.Get
    SHX7_2 = "lscustoms"
    SHX8_2 = "mainmenu"
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
    SHX6_2 = true
    SHX4_2(SHX5_2, SHX6_2)
  end
  SHX4_2 = true
  SHX12_1 = SHX4_2
end
SHX55_1 = CMG
function SHX56_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  if SHX0_2 and 0 ~= SHX0_2 then
    SHX3_2 = DoesEntityExist
    SHX4_2 = SHX0_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      goto SHX_LABEL_11
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_11:: outside nested blocks until all 'goto SHX_LABEL_11' can see it
  ::SHX_LABEL_11::
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.isInsideLsCustoms
  SHX3_2 = SHX3_2()
  if SHX3_2 then
    return
  end
  if SHX1_2 then
    SHX3_2 = SHX1_2.x
    if SHX3_2 then
      SHX3_2 = SHX1_2.y
      if SHX3_2 then
        SHX3_2 = SHX1_2.z
        if SHX3_2 then
          SHX13_1 = SHX1_2
          SHX3_2 = SHX2_2 or SHX3_2
          if not SHX2_2 then
            SHX3_2 = 0.0
          end
          SHX14_1 = SHX3_2
      end
    end
  end
  else
    SHX3_2 = nil
    SHX13_1 = SHX3_2
    SHX3_2 = nil
    SHX14_1 = SHX3_2
  end
  SHX3_2 = nil
  SHX4_2 = pairs
  SHX5_2 = SHX0_1.garages
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
  for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    SHX10_2 = SHX9_2.remoteOnly
    if SHX10_2 then
      SHX3_2 = SHX9_2
      break
    end
  end
  if SHX3_2 then
    SHX4_2 = SHX3_2.index
    if SHX4_2 then
      goto SHX_LABEL_64
    end
  end
  SHX4_2 = notify
  SHX5_2 = "~r~Remote LS Customs is not available."
  SHX4_2(SHX5_2)
  SHX4_2 = nil
  SHX13_1 = SHX4_2
  SHX4_2 = nil
  SHX14_1 = SHX4_2
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_64:: outside nested blocks until all 'goto SHX_LABEL_64' can see it
  ::SHX_LABEL_64::
  SHX4_2 = GetEntityModel
  SHX5_2 = SHX0_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = IsThisModelACar
  SHX6_2 = SHX4_2
  SHX5_2 = SHX5_2(SHX6_2)
  if not SHX5_2 then
    SHX5_2 = IsThisModelABike
    SHX6_2 = SHX4_2
    SHX5_2 = SHX5_2(SHX6_2)
    if not SHX5_2 then
      SHX5_2 = notify
      SHX6_2 = "~r~Remote LS Customs is only for cars and bikes."
      SHX5_2(SHX6_2)
      SHX5_2 = nil
      SHX13_1 = SHX5_2
      SHX5_2 = nil
      SHX14_1 = SHX5_2
      return
    end
  end
  SHX5_1 = SHX3_2
  SHX6_1 = SHX0_2
  SHX5_2 = Citizen
  SHX5_2 = SHX5_2.CreateThread
  SHX6_2 = SHX54_1
  SHX5_2(SHX6_2)
end
SHX55_1.enterRemoteLsCustomsFromGarage = SHX56_1
function SHX55_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = assert
  SHX1_2 = SHX5_1
  SHX2_2 = "Unable to drive out of garage without a current garage assigned"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetPlayerControl
  SHX1_2 = PlayerId
  SHX1_2 = SHX1_2()
  SHX2_2 = false
  SHX3_2 = 0
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DoScreenFadeOut
  SHX1_2 = 500
  SHX0_2(SHX1_2)
  while true do
    SHX0_2 = IsScreenFadingOut
    SHX0_2 = SHX0_2()
    if not SHX0_2 then
      break
    end
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.applyModsOnVehicle
  SHX1_2 = SHX4_1
  SHX2_2 = SHX8_1
  SHX3_2 = SHX6_1
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = SHX5_1.remoteOnly
  if SHX0_2 then
    SHX0_2 = SHX13_1
    if SHX0_2 then
      SHX0_2 = SHX13_1
      SHX1_2 = SHX14_1
      if not SHX1_2 then
        SHX1_2 = 0.0
      end
      SHX2_2 = SHX5_1.index
      SHX3_2 = nil
      SHX13_1 = SHX3_2
      SHX3_2 = nil
      SHX14_1 = SHX3_2
      SHX3_2 = FadeOutLocalPlayer
      SHX4_2 = false
      SHX3_2(SHX4_2)
      SHX3_2 = SHX9_1
      if 0 ~= SHX3_2 then
        SHX3_2 = SetCamActive
        SHX4_2 = SHX9_1
        SHX5_2 = false
        SHX3_2(SHX4_2, SHX5_2)
        SHX3_2 = RenderScriptCams
        SHX4_2 = false
        SHX5_2 = false
        SHX6_2 = 0
        SHX7_2 = false
        SHX8_2 = false
        SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
        SHX3_2 = DestroyCam
        SHX4_2 = SHX9_1
        SHX5_2 = false
        SHX3_2(SHX4_2, SHX5_2)
        SHX3_2 = 0
        SHX9_1 = SHX3_2
      end
      SHX3_2 = SetEntityCoords
      SHX4_2 = SHX6_1
      SHX5_2 = SHX0_2.x
      SHX6_2 = SHX0_2.y
      SHX7_2 = SHX0_2.z
      SHX7_2 = SHX7_2 + 0.5
      SHX8_2 = false
      SHX9_2 = false
      SHX10_2 = false
      SHX11_2 = false
      SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
      SHX3_2 = SetEntityHeading
      SHX4_2 = SHX6_1
      SHX5_2 = SHX1_2
      SHX3_2(SHX4_2, SHX5_2)
      SHX3_2 = GetPedInVehicleSeat
      SHX4_2 = SHX6_1
      SHX5_2 = -1
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
      SHX4_2 = PlayerPedId
      SHX4_2 = SHX4_2()
      if SHX3_2 ~= SHX4_2 then
        SHX3_2 = TaskWarpPedIntoVehicle
        SHX4_2 = PlayerPedId
        SHX4_2 = SHX4_2()
        SHX5_2 = SHX6_1
        SHX6_2 = -1
        SHX3_2(SHX4_2, SHX5_2, SHX6_2)
        SHX3_2 = GetGameTimer
        SHX3_2 = SHX3_2()
        SHX3_2 = SHX3_2 + 2000
        while true do
          SHX4_2 = GetPedInVehicleSeat
          SHX5_2 = SHX6_1
          SHX6_2 = -1
          SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
          SHX5_2 = PlayerPedId
          SHX5_2 = SHX5_2()
          if SHX4_2 == SHX5_2 then
            break
          end
          SHX4_2 = GetGameTimer
          SHX4_2 = SHX4_2()
          if not (SHX3_2 > SHX4_2) then
            break
          end
          SHX4_2 = Citizen
          SHX4_2 = SHX4_2.Wait
          SHX5_2 = 0
          SHX4_2(SHX5_2)
        end
      end
      SHX3_2 = SetEntityCollision
      SHX4_2 = SHX6_1
      SHX5_2 = true
      SHX6_2 = true
      SHX3_2(SHX4_2, SHX5_2, SHX6_2)
      SHX3_2 = FreezeEntityPosition
      SHX4_2 = SHX6_1
      SHX5_2 = false
      SHX3_2(SHX4_2, SHX5_2)
      SHX3_2 = SetVehicleOnGroundProperly
      SHX4_2 = SHX6_1
      SHX3_2(SHX4_2)
      SHX3_2 = SetVehicleDoorsLocked
      SHX4_2 = SHX6_1
      SHX5_2 = 0
      SHX3_2(SHX4_2, SHX5_2)
      SHX3_2 = SetPlayerInvincible
      SHX4_2 = PlayerId
      SHX4_2 = SHX4_2()
      SHX5_2 = false
      SHX3_2(SHX4_2, SHX5_2)
      SHX3_2 = SetVehicleLights
      SHX4_2 = SHX6_1
      SHX5_2 = 0
      SHX3_2(SHX4_2, SHX5_2)
      SHX3_2 = NetworkLeaveTransition
      SHX3_2()
      SHX3_2 = ClearPedTasks
      SHX4_2 = PlayerPedId
      SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX4_2()
      SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
      SHX3_2 = SetEntityInvincible
      SHX4_2 = SHX6_1
      SHX5_2 = false
      SHX3_2(SHX4_2, SHX5_2)
      SHX3_2 = SetEntityCanBeDamaged
      SHX4_2 = SHX6_1
      SHX5_2 = true
      SHX3_2(SHX4_2, SHX5_2)
      SHX3_2 = CMG
      SHX3_2 = SHX3_2.setVehicleFixedPreservingFuel
      SHX4_2 = SHX6_1
      SHX3_2(SHX4_2)
      SHX3_2 = ReleaseNamedScriptAudioBank
      SHX4_2 = "DLC_MPHEIST\\HEIST_FLEECA_DRILL"
      SHX3_2(SHX4_2)
      SHX3_2 = ReleaseNamedScriptAudioBank
      SHX4_2 = "DLC_MPHEIST\\HEIST_FLEECA_DRILL_2"
      SHX3_2(SHX4_2)
      SHX3_2 = TriggerServerEvent
      SHX4_2 = "ae63f8542b"
      SHX5_2 = SHX2_2
      SHX6_2 = false
      SHX3_2(SHX4_2, SHX5_2, SHX6_2)
      SHX3_2 = nil
      SHX5_1 = SHX3_2
      SHX3_2 = 0
      SHX6_1 = SHX3_2
      SHX3_2 = SetPlayerControl
      SHX4_2 = PlayerId
      SHX4_2 = SHX4_2()
      SHX5_2 = true
      SHX6_2 = 0
      SHX3_2(SHX4_2, SHX5_2, SHX6_2)
      SHX3_2 = DisplayRadar
      SHX4_2 = true
      SHX3_2(SHX4_2)
      SHX3_2 = DoScreenFadeIn
      SHX4_2 = 500
      SHX3_2(SHX4_2)
      while true do
        SHX3_2 = IsScreenFadingIn
        SHX3_2 = SHX3_2()
        if not SHX3_2 then
          break
        end
        SHX3_2 = Citizen
        SHX3_2 = SHX3_2.Wait
        SHX4_2 = 0
        SHX3_2(SHX4_2)
      end
      return
    end
  end
  SHX0_2 = SHX5_1.driveOut
  SHX1_2 = SetEntityCoords
  SHX2_2 = SHX6_1
  SHX3_2 = SHX0_2.position
  SHX3_2 = SHX3_2.x
  SHX4_2 = SHX0_2.position
  SHX4_2 = SHX4_2.y
  SHX5_2 = SHX0_2.position
  SHX5_2 = SHX5_2.z
  SHX6_2 = false
  SHX7_2 = false
  SHX8_2 = false
  SHX9_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX1_2 = SetEntityHeading
  SHX2_2 = SHX6_1
  SHX3_2 = SHX0_2.heading
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetEntityCollision
  SHX2_2 = SHX6_1
  SHX3_2 = true
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = FreezeEntityPosition
  SHX2_2 = SHX6_1
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetVehicleOnGroundProperly
  SHX2_2 = SHX6_1
  SHX1_2(SHX2_2)
  SHX1_2 = SetVehicleDoorsLocked
  SHX2_2 = SHX6_1
  SHX3_2 = 0
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetPlayerInvincible
  SHX2_2 = PlayerId
  SHX2_2 = SHX2_2()
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetVehicleLights
  SHX2_2 = SHX6_1
  SHX3_2 = 0
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = NetworkLeaveTransition
  SHX1_2()
  SHX1_2 = SHX5_1.type
  if "automobile" == SHX1_2 then
    SHX1_2 = SHX5_1.teleportDontDriveOut
    if SHX1_2 then
      SHX1_2 = SetEntityCoords
      SHX2_2 = SHX6_1
      SHX3_2 = SHX5_1.outside
      SHX3_2 = SHX3_2.position
      SHX3_2 = SHX3_2.x
      SHX4_2 = SHX5_1.outside
      SHX4_2 = SHX4_2.position
      SHX4_2 = SHX4_2.y
      SHX5_2 = SHX5_1.outside
      SHX5_2 = SHX5_2.position
      SHX5_2 = SHX5_2.z
      SHX6_2 = false
      SHX7_2 = false
      SHX8_2 = false
      SHX9_2 = false
      SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    else
      SHX1_2 = SetCamActive
      SHX2_2 = SHX9_1
      SHX3_2 = false
      SHX1_2(SHX2_2, SHX3_2)
      SHX1_2 = RenderScriptCams
      SHX2_2 = false
      SHX3_2 = false
      SHX4_2 = 0
      SHX5_2 = false
      SHX6_2 = false
      SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      SHX1_2 = DestroyCam
      SHX2_2 = SHX9_1
      SHX3_2 = false
      SHX1_2(SHX2_2, SHX3_2)
      SHX1_2 = 0
      SHX9_1 = SHX1_2
      SHX1_2 = SHX5_1.outside
      SHX2_2 = TaskVehicleDriveToCoord
      SHX3_2 = PlayerPedId
      SHX3_2 = SHX3_2()
      SHX4_2 = SHX6_1
      SHX5_2 = SHX1_2.position
      SHX5_2 = SHX5_2.x
      SHX6_2 = SHX1_2.position
      SHX6_2 = SHX6_2.y
      SHX7_2 = SHX1_2.position
      SHX7_2 = SHX7_2.z
      SHX8_2 = 3.0
      SHX9_2 = 0.1
      SHX10_2 = GetEntityModel
      SHX11_2 = SHX6_1
      SHX10_2 = SHX10_2(SHX11_2)
      SHX11_2 = 16777216
      SHX12_2 = 0.1
      SHX13_2 = 1
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    end
  end
  SHX1_2 = SHX5_1.interior
  if SHX1_2 then
    SHX2_2 = ForceRoomForEntity
    SHX3_2 = PlayerPedId
    SHX3_2 = SHX3_2()
    SHX4_2 = SHX1_2.key
    SHX5_2 = SHX1_2.room
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = ForceRoomForEntity
    SHX3_2 = SHX6_1
    SHX4_2 = SHX1_2.key
    SHX5_2 = SHX1_2.room
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = ForceRoomForGameViewport
    SHX3_2 = SHX1_2.key
    SHX4_2 = SHX1_2.room
    SHX2_2(SHX3_2, SHX4_2)
  end
  SHX2_2 = DoScreenFadeIn
  SHX3_2 = 3000
  SHX2_2(SHX3_2)
  while true do
    SHX2_2 = IsScreenFadingIn
    SHX2_2 = SHX2_2()
    if not SHX2_2 then
      break
    end
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
  SHX2_2 = GetGameTimer
  SHX2_2 = SHX2_2()
  while true do
    SHX3_2 = IsVehicleStopped
    SHX4_2 = SHX6_1
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      break
    end
    SHX3_2 = GetGameTimer
    SHX3_2 = SHX3_2()
    SHX3_2 = SHX3_2 - SHX2_2
    SHX4_2 = 15000
    if SHX3_2 > SHX4_2 then
      break
    end
    SHX3_2 = Citizen
    SHX3_2 = SHX3_2.Wait
    SHX4_2 = 0
    SHX3_2(SHX4_2)
  end
  SHX3_2 = ClearPedTasks
  SHX4_2 = PlayerPedId
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX4_2()
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX3_2 = SetEntityInvincible
  SHX4_2 = SHX6_1
  SHX5_2 = false
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SetEntityCanBeDamaged
  SHX4_2 = SHX6_1
  SHX5_2 = true
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.setVehicleFixedPreservingFuel
  SHX4_2 = SHX6_1
  SHX3_2(SHX4_2)
  SHX3_2 = ReleaseNamedScriptAudioBank
  SHX4_2 = "DLC_MPHEIST\\HEIST_FLEECA_DRILL"
  SHX3_2(SHX4_2)
  SHX3_2 = ReleaseNamedScriptAudioBank
  SHX4_2 = "DLC_MPHEIST\\HEIST_FLEECA_DRILL_2"
  SHX3_2(SHX4_2)
  SHX3_2 = TriggerServerEvent
  SHX4_2 = "ae63f8542b"
  SHX5_2 = SHX5_1.index
  SHX6_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = nil
  SHX5_1 = SHX3_2
  SHX3_2 = 0
  SHX6_1 = SHX3_2
  SHX3_2 = SetPlayerControl
  SHX4_2 = PlayerId
  SHX4_2 = SHX4_2()
  SHX5_2 = true
  SHX6_2 = 0
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = DisplayRadar
  SHX4_2 = true
  SHX3_2(SHX4_2)
end
function SHX56_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.TriggerServerCallback
  SHX2_2 = "4268e2656a"
  SHX3_2 = SHX0_2.index
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX0_2.isLocked = SHX1_2
end
function SHX57_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerVehicle
  SHX1_2, SHX2_2 = SHX1_2()
  if 0 ~= SHX1_2 and SHX2_2 then
    SHX3_2 = SHX5_1
    if not SHX3_2 then
      goto SHX_LABEL_12
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_12:: outside nested blocks until all 'goto SHX_LABEL_12' can see it
  ::SHX_LABEL_12::
  SHX3_2 = tCMG
  SHX3_2 = SHX3_2.getVehicleInfos
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = GetEntityModel
  SHX5_2 = SHX1_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = SHX0_2.isLocked
  if SHX5_2 then
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.DrawText
    SHX6_2 = 0.5
    SHX7_2 = 0.8
    SHX8_2 = "~r~Locked, please wait~w~"
    SHX9_2 = 1.0
    SHX10_2 = 4
    SHX11_2 = 0
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  else
    SHX5_2 = SHX0_2.type
    if "plane" == SHX5_2 then
      SHX5_2 = IsThisModelAPlane
      SHX6_2 = SHX4_2
      SHX5_2 = SHX5_2(SHX6_2)
      if not SHX5_2 then
        SHX5_2 = CMG
        SHX5_2 = SHX5_2.DrawText
        SHX6_2 = 0.5
        SHX7_2 = 0.8
        SHX8_2 = "~r~You must be a in a plane to use this~w~"
        SHX9_2 = 1.0
        SHX10_2 = 4
        SHX11_2 = 0
        SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    end
    else
      SHX5_2 = SHX0_2.type
      if "boat" == SHX5_2 then
        SHX5_2 = IsThisModelABoat
        SHX6_2 = SHX4_2
        SHX5_2 = SHX5_2(SHX6_2)
        if not SHX5_2 then
          SHX5_2 = CMG
          SHX5_2 = SHX5_2.DrawText
          SHX6_2 = 0.5
          SHX7_2 = 0.8
          SHX8_2 = "~r~You must be a in a boat to use this~w~"
          SHX9_2 = 1.0
          SHX10_2 = 4
          SHX11_2 = 0
          SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
      end
      else
        SHX5_2 = CMG
        SHX5_2 = SHX5_2.getClientUserId
        SHX5_2 = SHX5_2()
        if SHX3_2 ~= SHX5_2 then
          SHX5_2 = CMG
          SHX5_2 = SHX5_2.DrawText
          SHX6_2 = 0.5
          SHX7_2 = 0.8
          SHX8_2 = "~r~Denied, you are not the vehicle owner~w~"
          SHX9_2 = 1.0
          SHX10_2 = 4
          SHX11_2 = 0
          SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
        else
          SHX5_2 = CMG
          SHX5_2 = SHX5_2.DrawText
          SHX6_2 = 0.5
          SHX7_2 = 0.8
          SHX8_2 = "Press ~b~ENTER~w~ to enter ~b~"
          SHX9_2 = SHX0_2.name
          SHX10_2 = "~w~"
          SHX8_2 = SHX8_2 .. SHX9_2 .. SHX10_2
          SHX9_2 = 1.0
          SHX10_2 = 4
          SHX11_2 = 0
          SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
          SHX5_2 = IsControlJustPressed
          SHX6_2 = 0
          SHX7_2 = 201
          SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
          if SHX5_2 then
            SHX5_2 = CMG
            SHX5_2 = SHX5_2.TriggerServerCallback
            SHX6_2 = "4268e2656a"
            SHX7_2 = SHX0_2.index
            SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
            SHX0_2.isLocked = SHX5_2
            SHX5_2 = SHX0_2.isLocked
            if not SHX5_2 then
              SHX5_1 = SHX0_2
              SHX6_1 = SHX1_2
              SHX5_2 = Citizen
              SHX5_2 = SHX5_2.CreateThread
              SHX6_2 = SHX53_1
              SHX5_2(SHX6_2)
            end
          end
        end
      end
    end
  end
end
function SHX58_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.Visible
  SHX2_2 = RMenu
  SHX3_2 = SHX2_2
  SHX2_2 = SHX2_2.Get
  SHX4_2 = "lscustoms"
  SHX5_2 = SHX0_2.menu
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  if SHX1_2 then
    SHX1_2 = true
    return SHX1_2
  end
  SHX1_2 = SHX0_2.type
  if "externalMenu" == SHX1_2 then
    SHX1_2 = RageUI
    SHX1_2 = SHX1_2.Visible
    SHX2_2 = RMenu
    SHX3_2 = SHX2_2
    SHX2_2 = SHX2_2.Get
    SHX4_2 = SHX0_2.menuType
    SHX5_2 = SHX0_2.menuName
    SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    return SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  else
    SHX1_2 = SHX0_2.type
    if "categoryList" == SHX1_2 then
      SHX1_2 = pairs
      SHX2_2 = SHX0_2.categories
      SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
      for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
        SHX7_2 = SHX58_1
        SHX8_2 = SHX6_2
        SHX7_2 = SHX7_2(SHX8_2)
        if SHX7_2 then
          SHX7_2 = true
          return SHX7_2
        end
      end
    end
  end
  SHX1_2 = false
  return SHX1_2
end
function SHX59_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = SHX5_1
  if SHX0_2 then
    SHX0_2 = SetLocalPlayerVisibleLocally
    SHX1_2 = true
    SHX0_2(SHX1_2)
    SHX0_2 = SHX12_1
    if SHX0_2 then
      SHX0_2 = SHX58_1
      SHX1_2 = SHX0_1.category
      SHX0_2 = SHX0_2(SHX1_2)
      if not SHX0_2 then
        SHX0_2 = RageUI
        SHX0_2 = SHX0_2.Visible
        SHX1_2 = RMenu
        SHX2_2 = SHX1_2
        SHX1_2 = SHX1_2.Get
        SHX3_2 = "lscustoms"
        SHX4_2 = "repair"
        SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
        if not SHX0_2 then
          SHX0_2 = Citizen
          SHX0_2 = SHX0_2.CreateThread
          SHX1_2 = SHX55_1
          SHX0_2(SHX1_2)
          SHX0_2 = false
          SHX12_1 = SHX0_2
        end
      end
    end
  end
end
SHX60_1 = Citizen
SHX60_1 = SHX60_1.CreateThread
function SHX61_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX0_2 = pairs
  SHX1_2 = SHX0_1.garages
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX5_2.index = SHX4_2
    SHX6_2 = SHX5_2.remoteOnly
    if SHX6_2 then
    else
      SHX6_2 = SHX5_2.type
      if "plane" == SHX6_2 then
        SHX6_2 = 3.0
        if SHX6_2 then
          goto SHX_LABEL_17
        end
      end
      SHX6_2 = 1.0
      -- [FIX IF ERROR] Move ::SHX_LABEL_17:: outside nested blocks until all 'goto SHX_LABEL_17' can see it
      ::SHX_LABEL_17::
      SHX7_2 = CMG
      SHX7_2 = SHX7_2.createArea
      SHX8_2 = "lscustoms_"
      SHX9_2 = tostring
      SHX10_2 = SHX4_2
      SHX9_2 = SHX9_2(SHX10_2)
      SHX8_2 = SHX8_2 .. SHX9_2
      SHX9_2 = SHX5_2.driveIn
      SHX9_2 = SHX9_2.position
      SHX10_2 = 5.0 * SHX6_2
      SHX11_2 = 6.0 * SHX6_2
      SHX12_2 = SHX56_1
      function SHX13_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3
      end
      SHX14_2 = SHX57_1
      SHX15_2 = SHX5_2
      SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
      SHX7_2 = SHX5_2.hiddenOnMap
      if not SHX7_2 then
        SHX7_2 = tCMG
        SHX7_2 = SHX7_2.addBlip
        SHX8_2 = SHX5_2.inside
        SHX8_2 = SHX8_2.position
        SHX8_2 = SHX8_2.x
        SHX9_2 = SHX5_2.inside
        SHX9_2 = SHX9_2.position
        SHX9_2 = SHX9_2.y
        SHX10_2 = SHX5_2.inside
        SHX10_2 = SHX10_2.position
        SHX10_2 = SHX10_2.z
        SHX11_2 = 72
        SHX12_2 = nil
        SHX13_2 = "LS Customs"
        SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
      end
    end
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.createThreadOnTick
  SHX1_2 = SHX59_1
  SHX2_2 = "LSCustoms"
  SHX0_2(SHX1_2, SHX2_2)
end
SHX60_1(SHX61_1)
SHX60_1 = RegisterNetEvent
SHX61_1 = "b5a8ef81c1"
function SHX62_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = pairs
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX0_1.garages
    SHX7_2 = SHX7_2[SHX6_2]
    SHX7_2.isLocked = true
  end
end
SHX60_1(SHX61_1, SHX62_1)
SHX60_1 = RegisterNetEvent
SHX61_1 = "08cf0d5d45"
function SHX62_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX4_1 = SHX0_2
end
SHX60_1(SHX61_1, SHX62_1)
SHX60_1 = RegisterNetEvent
SHX61_1 = "6b3c48e86c"
function SHX62_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX4_1
  SHX2_2[SHX0_2] = SHX1_2
end
SHX60_1(SHX61_1, SHX62_1)
SHX60_1 = RegisterNetEvent
SHX61_1 = "d4574bdb4a"
function SHX62_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setVehicleFixedPreservingFuel
  SHX1_2 = SHX6_1
  SHX0_2(SHX1_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Visible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "lscustoms"
  SHX4_2 = "mainmenu"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
end
SHX60_1(SHX61_1, SHX62_1)
SHX60_1 = CMG
function SHX61_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX5_1
  SHX0_2 = nil ~= SHX0_2
  return SHX0_2
end
SHX60_1.isInsideLsCustoms = SHX61_1
function SHX60_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = "Not Set"
  SHX2_2 = DecorGetInt
  SHX3_2 = SHX0_2
  SHX4_2 = "6939027d97"
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  if SHX2_2 and 0 ~= SHX2_2 then
    SHX3_2 = pairs
    SHX4_2 = SHX0_1.customExhausts
    SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
    for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
      SHX9_2 = GetHashKey
      SHX10_2 = SHX8_2.soundId
      SHX9_2 = SHX9_2(SHX10_2)
      if SHX9_2 == SHX2_2 then
        SHX1_2 = SHX8_2.name
        break
      end
    end
  end
  SHX3_2 = DecorGetBool
  SHX4_2 = SHX0_2
  SHX5_2 = "9d5712766f"
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  if SHX3_2 then
    SHX3_2 = "Yes"
    if SHX3_2 then
      goto SHX_LABEL_34
    end
  end
  SHX3_2 = "No"
  -- [FIX IF ERROR] Move ::SHX_LABEL_34:: outside nested blocks until all 'goto SHX_LABEL_34' can see it
  ::SHX_LABEL_34::
  SHX4_2 = json
  SHX4_2 = SHX4_2.encode
  SHX5_2 = Entity
  SHX6_2 = SHX0_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX5_2 = SHX5_2.state
  SHX5_2 = SHX5_2.biometricUsers
  if not SHX5_2 then
    SHX5_2 = {}
  end
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = string
  SHX5_2 = SHX5_2.format
  SHX6_2 = [[
Audio Override: %s
Biometric Lock: %s
Biometric Users: %s]]
  SHX7_2 = SHX1_2
  SHX8_2 = SHX3_2
  SHX9_2 = SHX4_2
  return SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
end
SHX61_1 = CMG
SHX61_1 = SHX61_1.registerDevMenuEntityEditor
SHX62_1 = "LS Customs"
SHX63_1 = "vehicle"
SHX64_1 = SHX60_1
function SHX65_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
SHX61_1(SHX62_1, SHX63_1, SHX64_1, SHX65_1)
SHX61_1 = {}
SHX61_1[0] = "cfg.sportsWheels"
SHX61_1[1] = "cfg.muscleWheels"
SHX61_1[2] = "cfg.lowriderWheels"
SHX61_1[3] = "cfg.suvWheels"
SHX61_1[4] = "cfg.offroadWheels"
SHX61_1[5] = "cfg.tunerWheels"
SHX61_1[6] = "cfg.bikeWheels"
SHX61_1[7] = "cfg.highendWheels"
SHX61_1[8] = "cfg.bennysOneWheels"
SHX61_1[9] = "cfg.beenysTwoWheels"
SHX61_1[10] = "cfg.openWheels"
SHX61_1[11] = "cfg.streetWheels"
SHX61_1[12] = "cfg.trackWheels"
function SHX62_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.loadModel
  SHX1_2 = -1216765807
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerCoords
  SHX0_2 = SHX0_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.spawnVehicle
  SHX2_2 = -1216765807
  SHX3_2 = SHX0_2.x
  SHX4_2 = SHX0_2.y
  SHX5_2 = SHX0_2.z
  SHX6_2 = 0.0
  SHX7_2 = false
  SHX8_2 = false
  SHX9_2 = false
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX2_2 = SetVehicleModKit
  SHX3_2 = SHX1_2
  SHX4_2 = 0
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = ""
  SHX3_2 = pairs
  SHX4_2 = SHX61_1
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = SHX2_2
    SHX10_2 = string
    SHX10_2 = SHX10_2.format
    SHX11_2 = [[
%s = {
	{name = "Stock", type = %s, index = -1, price = 0},
]]
    SHX12_2 = SHX8_2
    SHX13_2 = SHX7_2
    SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
    SHX9_2 = SHX9_2 .. SHX10_2
    SHX2_2 = SHX9_2
    SHX9_2 = SetVehicleWheelType
    SHX10_2 = SHX1_2
    SHX11_2 = SHX7_2
    SHX9_2(SHX10_2, SHX11_2)
    SHX9_2 = GetNumVehicleMods
    SHX10_2 = SHX1_2
    SHX11_2 = 23
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
    SHX10_2 = 0
    SHX11_2 = -1
    SHX12_2 = SHX9_2
    SHX13_2 = 1
    for SHX14_2 = SHX11_2, SHX12_2, SHX13_2 do
      SHX15_2 = GetModTextLabel
      SHX16_2 = SHX1_2
      SHX17_2 = 23
      SHX18_2 = SHX14_2
      SHX15_2 = SHX15_2(SHX16_2, SHX17_2, SHX18_2)
      if SHX15_2 then
        SHX16_2 = GetLabelText
        SHX17_2 = SHX15_2
        SHX16_2 = SHX16_2(SHX17_2)
        if "NULL" ~= SHX16_2 then
          SHX17_2 = SHX2_2
          SHX18_2 = string
          SHX18_2 = SHX18_2.format
          SHX19_2 = "\t{name = \"%s\", type = %s, index = %s, price = 50000},\n"
          SHX20_2 = SHX16_2
          SHX21_2 = SHX7_2
          SHX22_2 = SHX14_2
          SHX18_2 = SHX18_2(SHX19_2, SHX20_2, SHX21_2, SHX22_2)
          SHX17_2 = SHX17_2 .. SHX18_2
          SHX2_2 = SHX17_2
        else
          SHX10_2 = SHX10_2 + 1
        end
      else
        SHX10_2 = SHX10_2 + 1
      end
    end
    if SHX10_2 > 0 then
      SHX11_2 = print
      SHX12_2 = "^3Warning: %s wheels are missing from wheel type %s due to missing/invalid labels."
      SHX13_2 = SHX10_2
      SHX14_2 = SHX7_2
      SHX11_2(SHX12_2, SHX13_2, SHX14_2)
    end
    SHX11_2 = SHX2_2
    SHX12_2 = [[
}

]]
    SHX11_2 = SHX11_2 .. SHX12_2
    SHX2_2 = SHX11_2
  end
  SHX3_2 = DeleteEntity
  SHX4_2 = SHX1_2
  SHX3_2(SHX4_2)
  SHX3_2 = SetModelAsNoLongerNeeded
  SHX4_2 = -1216765807
  SHX3_2(SHX4_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.copyToClipboard
  SHX4_2 = SHX2_2
  SHX3_2(SHX4_2)
  SHX3_2 = notify
  SHX4_2 = source
  SHX5_2 = "~g~Wheels config copied to clipboard!"
  SHX3_2(SHX4_2, SHX5_2)
end
SHX63_1 = CMG
SHX63_1 = SHX63_1.registerDevMenuItems
SHX64_1 = "LS Customs"
function SHX65_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "Copy Wheels Config"
  SHX2_2 = "Copies the wheels config to the clipboard."
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
      SHX3_3 = SHX62_1
      SHX3_3()
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerVehicle
  SHX0_2 = SHX0_2()
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.Button
  SHX2_2 = "Set Wheel Type"
  SHX3_2 = string
  SHX3_2 = SHX3_2.format
  SHX4_2 = "Sets the wheel type for the current vehicle. Currently: %s"
  SHX5_2 = GetVehicleWheelType
  SHX6_2 = SHX0_2
  SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX4_2 = true
  function SHX5_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3
    if SHX2_3 then
      SHX3_3 = CMG
      SHX3_3 = SHX3_3.clientPrompt
      SHX4_3 = "Wheel Type"
      SHX5_3 = ""
      function SHX6_3(SHX0_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX1_4, SHX2_4, SHX3_4, SHX4_4
        SHX1_4 = tonumber
        SHX2_4 = SHX0_4
        SHX1_4 = SHX1_4(SHX2_4)
        if SHX1_4 then
          SHX2_4 = SetVehicleWheelType
          SHX3_4 = SHX0_2
          SHX4_4 = SHX1_4
          SHX2_4(SHX3_4, SHX4_4)
        end
      end
      SHX3_3(SHX4_3, SHX5_3, SHX6_3)
    end
  end
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.Button
  SHX2_2 = "Set Wheel Index"
  SHX3_2 = string
  SHX3_2 = SHX3_2.format
  SHX4_2 = "Sets the wheel index for the current vehicle. Currently: %s"
  SHX5_2 = GetVehicleMod
  SHX6_2 = SHX0_2
  SHX7_2 = 23
  SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2, SHX7_2)
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX4_2 = true
  function SHX5_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3
    if SHX2_3 then
      SHX3_3 = CMG
      SHX3_3 = SHX3_3.clientPrompt
      SHX4_3 = "Wheel Index"
      SHX5_3 = ""
      function SHX6_3(SHX0_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX1_4, SHX2_4, SHX3_4, SHX4_4, SHX5_4, SHX6_4
        SHX1_4 = tonumber
        SHX2_4 = SHX0_4
        SHX1_4 = SHX1_4(SHX2_4)
        if SHX1_4 then
          SHX2_4 = CMG
          SHX2_4 = SHX2_4.setVehicleMod
          SHX3_4 = SHX0_2
          SHX4_4 = 23
          SHX5_4 = SHX1_4
          SHX6_4 = false
          SHX2_4(SHX3_4, SHX4_4, SHX5_4, SHX6_4)
        end
      end
      SHX3_3(SHX4_3, SHX5_3, SHX6_3)
    end
  end
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = GetVehicleTyresCanBurst
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = RageUI
  SHX2_2 = SHX2_2.Checkbox
  SHX3_2 = "Tyres Can Burst"
  SHX4_2 = "Whether the vehicle you are currently in can burst its tyres."
  SHX5_2 = SHX1_2
  SHX6_2 = {}
  function SHX7_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX4_3, SHX5_3, SHX6_3
    SHX4_3 = SHX1_2
    if SHX4_3 ~= SHX3_3 then
      SHX4_3 = SetVehicleTyresCanBurst
      SHX5_3 = SHX0_2
      SHX6_3 = SHX3_3
      SHX4_3(SHX5_3, SHX6_3)
    end
  end
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX2_2 = DecorGetBool
  SHX3_2 = SHX0_2
  SHX4_2 = "bb6df5797c"
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = RageUI
  SHX3_2 = SHX3_2.Checkbox
  SHX4_2 = "Has Bulletproof Decor"
  SHX5_2 = "Whether the vehicle you are currently has the bulletproof decor."
  SHX6_2 = SHX2_2
  SHX7_2 = {}
  function SHX8_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX4_3, SHX5_3, SHX6_3, SHX7_3
    SHX4_3 = SHX2_2
    if SHX4_3 ~= SHX3_3 then
      SHX4_3 = DecorSetBool
      SHX5_3 = SHX0_2
      SHX6_3 = "bb6df5797c"
      SHX7_3 = SHX3_3
      SHX4_3(SHX5_3, SHX6_3, SHX7_3)
    end
  end
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
end
SHX63_1(SHX64_1, SHX65_1)
SHX63_1 = {}
SHX64_1 = 0
SHX65_1 = 1
SHX66_1 = 4
SHX67_1 = 5
SHX63_1[1] = SHX64_1
SHX63_1[2] = SHX65_1
SHX63_1[3] = SHX66_1
SHX63_1[4] = SHX67_1
function SHX64_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerVehicle
  SHX0_2, SHX1_2 = SHX0_2()
  if 0 ~= SHX0_2 and SHX1_2 then
    SHX2_2 = DecorGetBool
    SHX3_2 = SHX0_2
    SHX4_2 = "bb6df5797c"
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if SHX2_2 then
      goto SHX_LABEL_15
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_15:: outside nested blocks until all 'goto SHX_LABEL_15' can see it
  ::SHX_LABEL_15::
  SHX2_2 = pairs
  SHX3_2 = SHX63_1
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = GetTyreHealth
    SHX9_2 = SHX0_2
    SHX10_2 = SHX7_2
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
    SHX9_2 = 1000.0
    if SHX8_2 < SHX9_2 then
      SHX9_2 = DecorGetInt
      SHX10_2 = SHX0_2
      SHX11_2 = "b36fb0e830"
      SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
      SHX10_2 = SHX6_2 - 1
      SHX10_2 = SHX10_2 * 8
      SHX11_2 = SHX9_2 >> SHX10_2
      SHX11_2 = SHX11_2 & 255
      if SHX11_2 < 10 then
        SHX12_2 = SetTyreHealth
        SHX13_2 = SHX0_2
        SHX14_2 = SHX7_2
        SHX15_2 = 1000.0
        SHX12_2(SHX13_2, SHX14_2, SHX15_2)
        SHX12_2 = SetVehicleTyreFixed
        SHX13_2 = SHX0_2
        SHX14_2 = SHX7_2
        SHX12_2(SHX13_2, SHX14_2)
        SHX11_2 = SHX11_2 + 1
        SHX12_2 = 255
        SHX12_2 = SHX12_2 << SHX10_2
        SHX12_2 = ~SHX12_2
        SHX9_2 = SHX9_2 & SHX12_2
        SHX12_2 = SHX11_2 << SHX10_2
        SHX9_2 = SHX9_2 | SHX12_2
        SHX12_2 = DecorSetInt
        SHX13_2 = SHX0_2
        SHX14_2 = "b36fb0e830"
        SHX15_2 = SHX9_2
        SHX12_2(SHX13_2, SHX14_2, SHX15_2)
      end
    end
  end
end
SHX65_1 = CMG
SHX65_1 = SHX65_1.createThreadOnTick
SHX66_1 = SHX64_1
SHX67_1 = "Bullet Resistant Wheels"
SHX65_1(SHX66_1, SHX67_1)
SHX65_1 = DecorRegister
SHX66_1 = "bb6df5797c"
SHX67_1 = 2
SHX65_1(SHX66_1, SHX67_1)
SHX65_1 = DecorRegister
SHX66_1 = "b36fb0e830"
SHX67_1 = 3
SHX65_1(SHX66_1, SHX67_1)
