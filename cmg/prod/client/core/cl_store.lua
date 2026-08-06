-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_store"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = {}
SHX2_1 = {}
SHX3_1 = nil
SHX4_1 = {}
SHX5_1 = {}
SHX6_1 = nil
SHX7_1 = nil
SHX8_1 = nil
SHX9_1 = false
SHX10_1 = {}
SHX11_1 = {}
SHX12_1 = 0
SHX13_1 = {}
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = {}
  SHX1_2 = {}
  SHX0_2.speedBuffer = SHX1_2
  SHX0_2.speed = 0.0
  SHX0_2.speedDisplay = 0.0
  SHX0_2.accel = 0.0
  SHX0_2.accelDisplay = 0.0
  SHX0_2.decel = 0.0
  SHX0_2.decelDisplay = 0.0
  return SHX0_2
end
SHX15_1 = false
SHX16_1 = 0
SHX17_1 = 0
SHX18_1 = 0
SHX19_1 = SHX14_1
SHX19_1 = SHX19_1()
SHX20_1 = {}
SHX21_1 = "Speed"
SHX22_1 = "Drift"
SHX23_1 = "Handling"
SHX24_1 = "City"
SHX25_1 = "Airport"
SHX20_1[1] = SHX21_1
SHX20_1[2] = SHX22_1
SHX20_1[3] = SHX23_1
SHX20_1[4] = SHX24_1
SHX20_1[5] = SHX25_1
SHX21_1 = {}
SHX22_1 = vector3
SHX23_1 = 2370.8
SHX24_1 = 2856.58
SHX25_1 = 40.46
SHX22_1 = SHX22_1(SHX23_1, SHX24_1, SHX25_1)
SHX23_1 = vector3
SHX24_1 = 974.58
SHX25_1 = -3006.6
SHX26_1 = 5.9
SHX23_1 = SHX23_1(SHX24_1, SHX25_1, SHX26_1)
SHX24_1 = vector3
SHX25_1 = 1894.57
SHX26_1 = 3823.71
SHX27_1 = 31.98
SHX24_1 = SHX24_1(SHX25_1, SHX26_1, SHX27_1)
SHX25_1 = vector3
SHX26_1 = -482.63
SHX27_1 = -664.24
SHX28_1 = 32.74
SHX25_1 = SHX25_1(SHX26_1, SHX27_1, SHX28_1)
SHX26_1 = vector3
SHX27_1 = -1728.25
SHX28_1 = -2894.99
SHX29_1 = 13.94
SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1 = SHX26_1(SHX27_1, SHX28_1, SHX29_1)
SHX21_1[1] = SHX22_1
SHX21_1[2] = SHX23_1
SHX21_1[3] = SHX24_1
SHX21_1[4] = SHX25_1
SHX21_1[5] = SHX26_1
SHX21_1[6] = SHX27_1
SHX21_1[7] = SHX28_1
SHX21_1[8] = SHX29_1
SHX21_1[9] = SHX30_1
SHX21_1[10] = SHX31_1
SHX21_1[11] = SHX32_1
SHX21_1[12] = SHX33_1
SHX21_1[13] = SHX34_1
SHX21_1[14] = SHX35_1
SHX21_1[15] = SHX36_1
SHX21_1[16] = SHX37_1
SHX21_1[17] = SHX38_1
SHX21_1[18] = SHX39_1
SHX21_1[19] = SHX40_1
SHX21_1[20] = SHX41_1
SHX21_1[21] = SHX42_1
SHX21_1[22] = SHX43_1
SHX21_1[23] = SHX44_1
SHX21_1[24] = SHX45_1
SHX21_1[25] = SHX46_1
SHX21_1[26] = SHX47_1
SHX21_1[27] = SHX48_1
SHX21_1[28] = SHX49_1
SHX21_1[29] = SHX50_1
SHX21_1[30] = SHX51_1
SHX21_1[31] = SHX52_1
SHX21_1[32] = SHX53_1
SHX21_1[33] = SHX54_1
SHX21_1[34] = SHX55_1
SHX21_1[35] = SHX56_1
SHX21_1[36] = SHX57_1
SHX21_1[37] = SHX58_1
SHX21_1[38] = SHX59_1
SHX21_1[39] = SHX60_1
SHX21_1[40] = SHX61_1
SHX21_1[41] = SHX62_1
SHX21_1[42] = SHX63_1
SHX21_1[43] = SHX64_1
SHX21_1[44] = SHX65_1
SHX21_1[45] = SHX66_1
SHX21_1[46] = SHX67_1
SHX21_1[47] = SHX68_1
SHX22_1 = {}
SHX23_1 = "Heathrow"
SHX24_1 = "Sandy"
SHX22_1[1] = SHX23_1
SHX22_1[2] = SHX24_1
SHX23_1 = {}
SHX24_1 = vector3
SHX25_1 = -1617.911
SHX26_1 = -2980.999
SHX27_1 = 13.944
SHX24_1 = SHX24_1(SHX25_1, SHX26_1, SHX27_1)
SHX25_1 = vector3
SHX26_1 = 1584.309
SHX27_1 = 3218.135
SHX28_1 = 40.406
SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1 = SHX25_1(SHX26_1, SHX27_1, SHX28_1)
SHX23_1[1] = SHX24_1
SHX23_1[2] = SHX25_1
SHX23_1[3] = SHX26_1
SHX23_1[4] = SHX27_1
SHX23_1[5] = SHX28_1
SHX23_1[6] = SHX29_1
SHX23_1[7] = SHX30_1
SHX23_1[8] = SHX31_1
SHX23_1[9] = SHX32_1
SHX23_1[10] = SHX33_1
SHX23_1[11] = SHX34_1
SHX23_1[12] = SHX35_1
SHX23_1[13] = SHX36_1
SHX23_1[14] = SHX37_1
SHX23_1[15] = SHX38_1
SHX23_1[16] = SHX39_1
SHX23_1[17] = SHX40_1
SHX23_1[18] = SHX41_1
SHX23_1[19] = SHX42_1
SHX23_1[20] = SHX43_1
SHX23_1[21] = SHX44_1
SHX23_1[22] = SHX45_1
SHX23_1[23] = SHX46_1
SHX23_1[24] = SHX47_1
SHX23_1[25] = SHX48_1
SHX23_1[26] = SHX49_1
SHX23_1[27] = SHX50_1
SHX23_1[28] = SHX51_1
SHX23_1[29] = SHX52_1
SHX23_1[30] = SHX53_1
SHX23_1[31] = SHX54_1
SHX23_1[32] = SHX55_1
SHX23_1[33] = SHX56_1
SHX23_1[34] = SHX57_1
SHX23_1[35] = SHX58_1
SHX23_1[36] = SHX59_1
SHX23_1[37] = SHX60_1
SHX23_1[38] = SHX61_1
SHX23_1[39] = SHX62_1
SHX23_1[40] = SHX63_1
SHX23_1[41] = SHX64_1
SHX23_1[42] = SHX65_1
SHX23_1[43] = SHX66_1
SHX23_1[44] = SHX67_1
SHX23_1[45] = SHX68_1
SHX24_1 = {}
SHX25_1 = "Docks"
SHX26_1 = "Sandy Lake"
SHX24_1[1] = SHX25_1
SHX24_1[2] = SHX26_1
SHX25_1 = {}
SHX26_1 = vector3
SHX27_1 = -330.306
SHX28_1 = -3366.949
SHX29_1 = 0.953
SHX26_1 = SHX26_1(SHX27_1, SHX28_1, SHX29_1)
SHX27_1 = vector3
SHX28_1 = 318.469
SHX29_1 = 3811.26
SHX30_1 = 29.219
SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1 = SHX27_1(SHX28_1, SHX29_1, SHX30_1)
SHX25_1[1] = SHX26_1
SHX25_1[2] = SHX27_1
SHX25_1[3] = SHX28_1
SHX25_1[4] = SHX29_1
SHX25_1[5] = SHX30_1
SHX25_1[6] = SHX31_1
SHX25_1[7] = SHX32_1
SHX25_1[8] = SHX33_1
SHX25_1[9] = SHX34_1
SHX25_1[10] = SHX35_1
SHX25_1[11] = SHX36_1
SHX25_1[12] = SHX37_1
SHX25_1[13] = SHX38_1
SHX25_1[14] = SHX39_1
SHX25_1[15] = SHX40_1
SHX25_1[16] = SHX41_1
SHX25_1[17] = SHX42_1
SHX25_1[18] = SHX43_1
SHX25_1[19] = SHX44_1
SHX25_1[20] = SHX45_1
SHX25_1[21] = SHX46_1
SHX25_1[22] = SHX47_1
SHX25_1[23] = SHX48_1
SHX25_1[24] = SHX49_1
SHX25_1[25] = SHX50_1
SHX25_1[26] = SHX51_1
SHX25_1[27] = SHX52_1
SHX25_1[28] = SHX53_1
SHX25_1[29] = SHX54_1
SHX25_1[30] = SHX55_1
SHX25_1[31] = SHX56_1
SHX25_1[32] = SHX57_1
SHX25_1[33] = SHX58_1
SHX25_1[34] = SHX59_1
SHX25_1[35] = SHX60_1
SHX25_1[36] = SHX61_1
SHX25_1[37] = SHX62_1
SHX25_1[38] = SHX63_1
SHX25_1[39] = SHX64_1
SHX25_1[40] = SHX65_1
SHX25_1[41] = SHX66_1
SHX25_1[42] = SHX67_1
SHX25_1[43] = SHX68_1
SHX26_1 = 1
SHX27_1 = {}
SHX28_1 = vector3
SHX29_1 = 0
SHX30_1 = 0
SHX31_1 = 0
SHX28_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1)
SHX29_1 = vector3
SHX30_1 = 0
SHX31_1 = 0
SHX32_1 = 0
SHX29_1 = SHX29_1(SHX30_1, SHX31_1, SHX32_1)
SHX30_1 = nil
SHX31_1 = 1.0
SHX32_1 = "N/A"
SHX33_1 = RMenu
SHX33_1 = SHX33_1.Add
SHX34_1 = "store"
SHX35_1 = "mainmenu"
SHX36_1 = RageUI
SHX36_1 = SHX36_1.CreateMenu
SHX37_1 = ""
SHX38_1 = "Inventory"
SHX39_1 = CMG
SHX39_1 = SHX39_1.getRageUIMenuWidth
SHX39_1 = SHX39_1()
SHX40_1 = CMG
SHX40_1 = SHX40_1.getRageUIMenuHeight
SHX40_1 = SHX40_1()
SHX41_1 = "cmg_storeui"
SHX42_1 = "cmg_storeui"
SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1 = SHX36_1(SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1)
SHX33_1(SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1)
SHX33_1 = RMenu
SHX33_1 = SHX33_1.Add
SHX34_1 = "store"
SHX35_1 = "info"
SHX36_1 = RageUI
SHX36_1 = SHX36_1.CreateSubMenu
SHX37_1 = RMenu
SHX38_1 = SHX37_1
SHX37_1 = SHX37_1.Get
SHX39_1 = "store"
SHX40_1 = "mainmenu"
SHX37_1 = SHX37_1(SHX38_1, SHX39_1, SHX40_1)
SHX38_1 = ""
SHX39_1 = "Information"
SHX40_1 = CMG
SHX40_1 = SHX40_1.getRageUIMenuWidth
SHX40_1 = SHX40_1()
SHX41_1 = CMG
SHX41_1 = SHX41_1.getRageUIMenuHeight
SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1 = SHX41_1()
SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1 = SHX36_1(SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1)
SHX33_1(SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1)
SHX33_1 = RMenu
SHX33_1 = SHX33_1.Add
SHX34_1 = "store"
SHX35_1 = "redeem"
SHX36_1 = RageUI
SHX36_1 = SHX36_1.CreateSubMenu
SHX37_1 = RMenu
SHX38_1 = SHX37_1
SHX37_1 = SHX37_1.Get
SHX39_1 = "store"
SHX40_1 = "info"
SHX37_1 = SHX37_1(SHX38_1, SHX39_1, SHX40_1)
SHX38_1 = ""
SHX39_1 = "Redeem"
SHX40_1 = CMG
SHX40_1 = SHX40_1.getRageUIMenuWidth
SHX40_1 = SHX40_1()
SHX41_1 = CMG
SHX41_1 = SHX41_1.getRageUIMenuHeight
SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1 = SHX41_1()
SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1 = SHX36_1(SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1)
SHX33_1(SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1)
SHX33_1 = RMenu
SHX33_1 = SHX33_1.Add
SHX34_1 = "store"
SHX35_1 = "vehicleList"
SHX36_1 = RageUI
SHX36_1 = SHX36_1.CreateSubMenu
SHX37_1 = RMenu
SHX38_1 = SHX37_1
SHX37_1 = SHX37_1.Get
SHX39_1 = "store"
SHX40_1 = "redeem"
SHX37_1 = SHX37_1(SHX38_1, SHX39_1, SHX40_1)
SHX38_1 = ""
SHX39_1 = "Vehicles"
SHX40_1 = CMG
SHX40_1 = SHX40_1.getRageUIMenuWidth
SHX40_1 = SHX40_1()
SHX41_1 = CMG
SHX41_1 = SHX41_1.getRageUIMenuHeight
SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1 = SHX41_1()
SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1 = SHX36_1(SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1)
SHX33_1(SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1)
SHX33_1 = RMenu
SHX33_1 = SHX33_1.Add
SHX34_1 = "store"
SHX35_1 = "vehicleListInner"
SHX36_1 = RageUI
SHX36_1 = SHX36_1.CreateSubMenu
SHX37_1 = RMenu
SHX38_1 = SHX37_1
SHX37_1 = SHX37_1.Get
SHX39_1 = "store"
SHX40_1 = "vehicleList"
SHX37_1 = SHX37_1(SHX38_1, SHX39_1, SHX40_1)
SHX38_1 = ""
SHX39_1 = "Vehicles"
SHX40_1 = CMG
SHX40_1 = SHX40_1.getRageUIMenuWidth
SHX40_1 = SHX40_1()
SHX41_1 = CMG
SHX41_1 = SHX41_1.getRageUIMenuHeight
SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1 = SHX41_1()
SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1 = SHX36_1(SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1)
SHX33_1(SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1)
SHX33_1 = RMenu
SHX33_1 = SHX33_1.Add
SHX34_1 = "store"
SHX35_1 = "vehicleSelection"
SHX36_1 = RageUI
SHX36_1 = SHX36_1.CreateSubMenu
SHX37_1 = RMenu
SHX38_1 = SHX37_1
SHX37_1 = SHX37_1.Get
SHX39_1 = "store"
SHX40_1 = "vehicleList"
SHX37_1 = SHX37_1(SHX38_1, SHX39_1, SHX40_1)
SHX38_1 = ""
SHX39_1 = "Vehicle Options"
SHX40_1 = CMG
SHX40_1 = SHX40_1.getRageUIMenuWidth
SHX40_1 = SHX40_1()
SHX41_1 = CMG
SHX41_1 = SHX41_1.getRageUIMenuHeight
SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1 = SHX41_1()
SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1 = SHX36_1(SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1)
SHX33_1(SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1)
SHX33_1 = RMenu
SHX33_1 = SHX33_1.Add
SHX34_1 = "store"
SHX35_1 = "lockslots"
SHX36_1 = RageUI
SHX36_1 = SHX36_1.CreateSubMenu
SHX37_1 = RMenu
SHX38_1 = SHX37_1
SHX37_1 = SHX37_1.Get
SHX39_1 = "store"
SHX40_1 = "mainmenu"
SHX37_1 = SHX37_1(SHX38_1, SHX39_1, SHX40_1)
SHX38_1 = ""
SHX39_1 = "Purchase Lockslot"
SHX40_1 = CMG
SHX40_1 = SHX40_1.getRageUIMenuWidth
SHX40_1 = SHX40_1()
SHX41_1 = CMG
SHX41_1 = SHX41_1.getRageUIMenuHeight
SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1 = SHX41_1()
SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1 = SHX36_1(SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1)
SHX33_1(SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1)
SHX33_1 = RMenu
SHX33_1 = SHX33_1.Add
SHX34_1 = "store"
SHX35_1 = "confirmDelete"
SHX36_1 = RageUI
SHX36_1 = SHX36_1.CreateSubMenu
SHX37_1 = RMenu
SHX38_1 = SHX37_1
SHX37_1 = SHX37_1.Get
SHX39_1 = "store"
SHX40_1 = "info"
SHX37_1 = SHX37_1(SHX38_1, SHX39_1, SHX40_1)
SHX38_1 = ""
SHX39_1 = "~r~Are you sure?"
SHX40_1 = CMG
SHX40_1 = SHX40_1.getRageUIMenuWidth
SHX40_1 = SHX40_1()
SHX41_1 = CMG
SHX41_1 = SHX41_1.getRageUIMenuHeight
SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1 = SHX41_1()
SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1 = SHX36_1(SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1)
SHX33_1(SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1)
function SHX33_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = notify
  SHX3_2 = "~r~"
  SHX4_2 = SHX0_2.name
  SHX5_2 = " "
  SHX6_2 = SHX1_2
  SHX3_2 = SHX3_2 .. SHX4_2 .. SHX5_2 .. SHX6_2
  SHX2_2(SHX3_2)
end
function SHX34_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX2_2 = SHX1_2 or nil
  if not SHX1_2 then
    SHX3_2 = SHX0_2.field
    SHX2_2 = SHX4_1
    SHX2_2 = SHX2_2[SHX3_2]
  end
  if not SHX2_2 then
    SHX3_2 = SHX33_1
    SHX4_2 = SHX0_2
    SHX5_2 = "must not be empty."
    SHX3_2(SHX4_2, SHX5_2)
    SHX3_2 = false
    return SHX3_2
  else
    SHX3_2 = SHX0_2.minLength
    if SHX3_2 then
      SHX3_2 = #SHX2_2
      SHX4_2 = SHX0_2.minLength
      if SHX3_2 < SHX4_2 then
        SHX3_2 = SHX33_1
        SHX4_2 = SHX0_2
        SHX5_2 = "must be "
        SHX6_2 = tostring
        SHX7_2 = SHX0_2.minLength
        SHX6_2 = SHX6_2(SHX7_2)
        SHX7_2 = " characters or greater."
        SHX5_2 = SHX5_2 .. SHX6_2 .. SHX7_2
        SHX3_2(SHX4_2, SHX5_2)
        SHX3_2 = false
        return SHX3_2
    end
    else
      SHX3_2 = SHX0_2.maxLength
      if SHX3_2 then
        SHX3_2 = #SHX2_2
        SHX4_2 = SHX0_2.maxLength
        if SHX3_2 > SHX4_2 then
          SHX3_2 = SHX33_1
          SHX4_2 = SHX0_2
          SHX5_2 = "must be "
          SHX6_2 = tostring
          SHX7_2 = SHX0_2.maxLength
          SHX6_2 = SHX6_2(SHX7_2)
          SHX7_2 = " characters or less."
          SHX5_2 = SHX5_2 .. SHX6_2 .. SHX7_2
          SHX3_2(SHX4_2, SHX5_2)
          SHX3_2 = false
          return SHX3_2
        end
      end
    end
  end
  SHX3_2 = true
  return SHX3_2
end
function SHX35_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX2_2 = SHX0_2.field
  SHX1_2 = SHX4_1
  SHX1_2 = SHX1_2[SHX2_2]
  if SHX1_2 then
    SHX2_2 = SHX0_2.items
    SHX2_2 = SHX2_2[SHX1_2]
    if SHX2_2 then
      SHX2_2 = SHX0_2.items
      SHX2_2 = SHX2_2[SHX1_2]
      return SHX2_2
    else
      SHX2_2 = pairs
      SHX3_2 = SHX0_2.items
      SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
      for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
        SHX8_2 = type
        SHX9_2 = SHX7_2
        SHX8_2 = SHX8_2(SHX9_2)
        if "table" == SHX8_2 then
          SHX8_2 = SHX7_2[SHX1_2]
          if SHX8_2 then
            SHX8_2 = SHX7_2[SHX1_2]
            return SHX8_2
          end
        end
      end
    end
  end
  SHX2_2 = ""
  return SHX2_2
end
function SHX36_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX0_2.allowEmpty
  if not SHX1_2 then
    SHX1_2 = SHX35_1
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if "" == SHX1_2 then
      SHX1_2 = SHX33_1
      SHX2_2 = SHX0_2
      SHX3_2 = "can not be empty."
      SHX1_2(SHX2_2, SHX3_2)
      SHX1_2 = false
      return SHX1_2
    end
  end
  SHX1_2 = true
  return SHX1_2
end
function SHX37_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX2_2 = SHX0_2.field
  SHX1_2 = SHX4_1
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = SHX1_2 or SHX2_2
  SHX2_2 = SHX1_2 and "" ~= SHX1_2
  return SHX2_2
end
function SHX38_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = true
  SHX2_2 = SHX0_2.args
  if SHX2_2 then
    SHX2_2 = pairs
    SHX3_2 = SHX0_1.argsTemplate
    SHX4_2 = SHX0_2.args
    SHX3_2 = SHX3_2[SHX4_2]
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
    for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
      SHX8_2 = SHX7_2.type
      if "string" == SHX8_2 then
        SHX8_2 = SHX34_1
        SHX9_2 = SHX7_2
        SHX8_2 = SHX8_2(SHX9_2)
        if not SHX8_2 then
          SHX1_2 = false
      end
      else
        SHX8_2 = SHX7_2.type
        if "vehicleList" == SHX8_2 then
          SHX8_2 = SHX36_1
          SHX9_2 = SHX7_2
          SHX8_2 = SHX8_2(SHX9_2)
          if not SHX8_2 then
            SHX1_2 = false
        end
        else
          SHX8_2 = SHX7_2.type
          if "permIdList" == SHX8_2 then
            SHX8_2 = SHX37_1
            SHX9_2 = SHX7_2
            SHX8_2 = SHX8_2(SHX9_2)
            if not SHX8_2 then
              SHX1_2 = false
            end
          end
        end
      end
    end
  end
  return SHX1_2
end
function SHX39_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.ButtonWithStyle
  SHX2_2 = SHX0_2.name
  SHX3_2 = SHX0_2.description
  SHX4_2 = {}
  SHX6_2 = SHX0_2.field
  SHX5_2 = SHX4_1
  SHX5_2 = SHX5_2[SHX6_2]
  SHX4_2.RightLabel = SHX5_2
  SHX5_2 = true
  function SHX6_2(SHX0_3, SHX1_3, SHX2_3)
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
      SHX4_3 = SHX0_2.name
      SHX5_3 = ""
      function SHX6_3(SHX0_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX1_4, SHX2_4, SHX3_4
        SHX1_4 = SHX34_1
        SHX2_4 = SHX0_2
        SHX3_4 = SHX0_4
        SHX1_4 = SHX1_4(SHX2_4, SHX3_4)
        if SHX1_4 then
          SHX2_4 = SHX0_2.field
          SHX1_4 = SHX4_1
          SHX1_4[SHX2_4] = SHX0_4
        end
      end
      SHX3_3(SHX4_3, SHX5_3, SHX6_3)
    end
  end
  SHX7_2 = nil
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
end
function SHX40_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX1_2 = SHX35_1
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if "" == SHX1_2 then
    SHX2_2 = SHX0_2.emptyText
    if SHX2_2 then
      SHX1_2 = SHX0_2.emptyText
    end
  end
  SHX2_2 = RageUI
  SHX2_2 = SHX2_2.ButtonWithStyle
  SHX3_2 = SHX0_2.name
  SHX4_2 = SHX0_2.description
  SHX5_2 = {}
  SHX5_2.RightLabel = SHX1_2
  SHX6_2 = true
  function SHX7_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3
    if SHX2_3 then
      SHX3_3 = SHX0_2
      SHX5_1 = SHX3_3
      SHX3_3 = table
      SHX3_3 = SHX3_3.count
      SHX4_3 = SHX13_1
      SHX3_3 = SHX3_3(SHX4_3)
      if 0 == SHX3_3 then
        SHX3_3 = TriggerServerEvent
        SHX4_3 = "7920f0299e"
        SHX3_3(SHX4_3)
      end
    end
  end
  SHX8_2 = RMenu
  SHX9_2 = SHX8_2
  SHX8_2 = SHX8_2.Get
  SHX10_2 = "store"
  SHX11_2 = "vehicleList"
  SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
end
SHX41_1 = {}
function SHX42_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX1_2 = {}
  SHX2_2 = pairs
  SHX3_2 = SHX0_2.items
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX11_1
    SHX8_2 = SHX8_2[SHX7_2]
    if SHX8_2 then
      SHX8_2 = table
      SHX8_2 = SHX8_2.insert
      SHX9_2 = SHX1_2
      SHX10_2 = SHX7_2
      SHX8_2(SHX9_2, SHX10_2)
    end
  end
  SHX2_2 = SHX0_2.extraItems
  if SHX2_2 then
    SHX2_2 = pairs
    SHX3_2 = SHX0_2.extraItems
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
    for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
      SHX8_2 = SHX41_1
      SHX8_2 = SHX8_2[SHX6_2]
      if SHX8_2 then
        SHX9_2 = pairs
        SHX10_2 = SHX7_2
        SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX9_2(SHX10_2)
        for SHX13_2, SHX14_2 in SHX9_2, SHX10_2, SHX11_2, SHX12_2 do
          SHX15_2 = SHX11_1
          SHX15_2 = SHX15_2[SHX14_2]
          if SHX15_2 then
            SHX15_2 = table
            SHX15_2 = SHX15_2.insert
            SHX16_2 = SHX1_2
            SHX17_2 = SHX14_2
            SHX15_2(SHX16_2, SHX17_2)
          end
        end
      end
    end
  end
  return SHX1_2
end
function SHX43_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX1_2 = SHX42_1
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = pairs
  SHX3_2 = SHX1_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = RageUI
    SHX8_2 = SHX8_2.Checkbox
    SHX9_2 = "Perm ID "
    SHX10_2 = tostring
    SHX11_2 = SHX7_2
    SHX10_2 = SHX10_2(SHX11_2)
    SHX9_2 = SHX9_2 .. SHX10_2
    SHX10_2 = SHX0_2.description
    SHX12_2 = SHX0_2.field
    SHX11_2 = SHX4_1
    SHX11_2 = SHX11_2[SHX12_2]
    SHX11_2 = SHX11_2 == SHX7_2
    SHX12_2 = {}
    function SHX13_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX4_3, SHX5_3, SHX6_3
      if SHX3_3 then
        SHX5_3 = SHX0_2.field
        SHX4_3 = SHX4_1
        SHX6_3 = SHX7_2
        SHX4_3[SHX5_3] = SHX6_3
      end
    end
    SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  end
end
function SHX44_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX1_2 = true
  SHX15_1 = SHX1_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "39e37ff016"
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerCoords
  SHX1_2 = SHX1_2()
  SHX29_1 = SHX1_2
  SHX1_2 = 1
  SHX26_1 = SHX1_2
  SHX1_2 = GetHashKey
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = IsThisModelABoat
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = SHX24_1
    SHX27_1 = SHX2_2
    SHX2_2 = SHX25_1
    SHX28_1 = SHX2_2
  else
    SHX2_2 = IsThisModelAPlane
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if not SHX2_2 then
      SHX2_2 = IsThisModelAHeli
      SHX3_2 = SHX1_2
      SHX2_2 = SHX2_2(SHX3_2)
      if not SHX2_2 then
        goto SHX_LABEL_41
      end
    end
    SHX2_2 = SHX22_1
    SHX27_1 = SHX2_2
    SHX2_2 = SHX23_1
    SHX28_1 = SHX2_2
    goto SHX_LABEL_45
    -- [FIX IF ERROR] Move ::SHX_LABEL_41:: outside nested blocks until all 'goto SHX_LABEL_41' can see it
    ::SHX_LABEL_41::
    SHX2_2 = SHX20_1
    SHX27_1 = SHX2_2
    SHX2_2 = SHX21_1
    SHX28_1 = SHX2_2
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_45:: outside nested blocks until all 'goto SHX_LABEL_45' can see it
  ::SHX_LABEL_45::
  SHX3_2 = SHX26_1
  SHX2_2 = SHX28_1
  SHX2_2 = SHX2_2[SHX3_2]
  SHX3_2 = GetEntityHeading
  SHX4_2 = PlayerPedId
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX4_2()
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.spawnVehicle
  SHX5_2 = SHX0_2
  SHX6_2 = SHX2_2.x
  SHX7_2 = SHX2_2.y
  SHX8_2 = SHX2_2.z
  SHX9_2 = SHX3_2
  SHX10_2 = true
  SHX11_2 = false
  SHX12_2 = false
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX16_1 = SHX4_2
  SHX4_2 = GetGameTimer
  SHX4_2 = SHX4_2()
  SHX17_1 = SHX4_2
end
function SHX45_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX1_2 = {}
  SHX2_2 = pairs
  SHX3_2 = SHX0_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX0_1.items
    SHX9_2 = SHX7_2.item
    SHX8_2 = SHX8_2[SHX9_2]
    SHX9_2 = SHX8_2.name
    SHX10_2 = SHX8_2.metadataFormat
    if SHX10_2 then
      SHX10_2 = SHX8_2.metadataFields
      if SHX10_2 then
        SHX10_2 = SHX7_2.metadata
        if SHX10_2 then
          SHX10_2 = {}
          SHX11_2 = pairs
          SHX12_2 = SHX8_2.metadataFields
          SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX11_2(SHX12_2)
          for SHX15_2, SHX16_2 in SHX11_2, SHX12_2, SHX13_2, SHX14_2 do
            SHX17_2 = table
            SHX17_2 = SHX17_2.insert
            SHX18_2 = SHX10_2
            SHX19_2 = SHX7_2.metadata
            SHX19_2 = SHX19_2[SHX16_2]
            SHX17_2(SHX18_2, SHX19_2)
          end
          SHX11_2 = #SHX10_2
          if SHX11_2 > 0 then
            SHX11_2 = SHX9_2
            SHX12_2 = " ("
            SHX13_2 = string
            SHX13_2 = SHX13_2.format
            SHX14_2 = SHX8_2.metadataFormat
            SHX15_2 = table
            SHX15_2 = SHX15_2.unpack
            SHX16_2 = SHX10_2
            SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2 = SHX15_2(SHX16_2)
            SHX13_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
            SHX14_2 = ")"
            SHX11_2 = SHX11_2 .. SHX12_2 .. SHX13_2 .. SHX14_2
            SHX9_2 = SHX11_2
          end
        end
      end
    end
    SHX10_2 = SHX10_1
    SHX10_2 = SHX10_2[SHX6_2]
    if not SHX10_2 then
      SHX10_2 = SHX9_2
    end
    SHX11_2 = table
    SHX11_2 = SHX11_2.insert
    SHX12_2 = SHX1_2
    SHX13_2 = {}
    SHX14_2 = SHX10_2
    SHX15_2 = {}
    SHX15_2.uuid = SHX6_2
    SHX16_2 = SHX7_2.metadata
    SHX15_2.metadata = SHX16_2
    SHX13_2[1] = SHX14_2
    SHX13_2[2] = SHX15_2
    SHX11_2(SHX12_2, SHX13_2)
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
    
    local SHX2_3, SHX3_3, SHX4_3
    SHX2_3 = SHX0_3[1]
    SHX3_3 = SHX1_3[1]
    if SHX2_3 == SHX3_3 then
      SHX2_3 = SHX0_3[2]
      SHX2_3 = SHX2_3.uuid
      SHX3_3 = SHX1_3[2]
      SHX3_3 = SHX3_3.uuid
      SHX2_3 = SHX2_3 < SHX3_3
      return SHX2_3
    else
      SHX2_3 = string
      SHX2_3 = SHX2_3.lower
      SHX3_3 = SHX0_3[1]
      SHX2_3 = SHX2_3(SHX3_3)
      SHX3_3 = string
      SHX3_3 = SHX3_3.lower
      SHX4_3 = SHX1_3[1]
      SHX3_3 = SHX3_3(SHX4_3)
      SHX2_3 = SHX2_3 < SHX3_3
      return SHX2_3
    end
  end
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = 0
  function SHX3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3
    SHX0_3 = SHX2_2
    SHX0_3 = SHX0_3 + 1
    SHX2_2 = SHX0_3
    SHX1_3 = SHX2_2
    SHX0_3 = SHX1_2
    SHX0_3 = SHX0_3[SHX1_3]
    if SHX0_3 then
      SHX1_3 = SHX2_2
      SHX0_3 = SHX1_2
      SHX0_3 = SHX0_3[SHX1_3]
      SHX0_3 = SHX0_3[1]
      SHX2_3 = SHX2_2
      SHX1_3 = SHX1_2
      SHX1_3 = SHX1_3[SHX2_3]
      SHX1_3 = SHX1_3[2]
      return SHX0_3, SHX1_3
    else
      SHX0_3 = nil
      SHX1_3 = nil
      return SHX0_3, SHX1_3
    end
  end
  return SHX3_2
end
function SHX46_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX2_2 = {}
  SHX3_2 = pairs
  SHX4_2 = SHX0_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = table
    SHX9_2 = SHX9_2.insert
    SHX10_2 = SHX2_2
    SHX11_2 = {}
    SHX12_2 = SHX7_2
    SHX13_2 = SHX8_2
    SHX11_2[1] = SHX12_2
    SHX11_2[2] = SHX13_2
    SHX9_2(SHX10_2, SHX11_2)
  end
  SHX3_2 = table
  SHX3_2 = SHX3_2.sort
  SHX4_2 = SHX2_2
  function SHX5_2(SHX0_3, SHX1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX2_3, SHX3_3
    SHX2_3 = SHX1_2
    if SHX2_3 then
      SHX2_3 = SHX0_3[2]
      SHX3_3 = SHX1_3[2]
      SHX2_3 = SHX2_3 < SHX3_3
      return SHX2_3
    else
      SHX2_3 = SHX0_3[1]
      SHX3_3 = SHX1_3[1]
      SHX2_3 = SHX2_3 < SHX3_3
      return SHX2_3
    end
  end
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = 0
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3
    SHX0_3 = SHX3_2
    SHX0_3 = SHX0_3 + 1
    SHX3_2 = SHX0_3
    SHX1_3 = SHX3_2
    SHX0_3 = SHX2_2
    SHX0_3 = SHX0_3[SHX1_3]
    if SHX0_3 then
      SHX1_3 = SHX3_2
      SHX0_3 = SHX2_2
      SHX0_3 = SHX0_3[SHX1_3]
      SHX0_3 = SHX0_3[1]
      SHX2_3 = SHX3_2
      SHX1_3 = SHX2_2
      SHX1_3 = SHX1_3[SHX2_3]
      SHX1_3 = SHX1_3[2]
      return SHX0_3, SHX1_3
    else
      SHX0_3 = nil
      SHX1_3 = nil
      return SHX0_3, SHX1_3
    end
  end
  return SHX4_2
end
SHX47_1 = RageUI
SHX47_1 = SHX47_1.CreateWhile
SHX48_1 = 1.0
SHX49_1 = RMenu
SHX50_1 = SHX49_1
SHX49_1 = SHX49_1.Get
SHX51_1 = "store"
SHX52_1 = "mainmenu"
SHX49_1 = SHX49_1(SHX50_1, SHX51_1, SHX52_1)
SHX50_1 = nil
function SHX51_1()
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
  SHX3_2 = "store"
  SHX4_2 = "mainmenu"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3
    SHX0_3 = SHX8_1
    if SHX0_3 then
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Separator
      SHX1_3 = "~g~Your rank is "
      SHX2_3 = SHX8_1
      SHX1_3 = SHX1_3 .. SHX2_3
      SHX0_3(SHX1_3)
    end
    SHX0_3 = SHX31_1
    if SHX0_3 > 1.0 then
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Separator
      SHX1_3 = string
      SHX1_3 = SHX1_3.format
      SHX2_3 = "~g~Current XP Boost is %s%% (until %s)"
      SHX3_3 = math
      SHX3_3 = SHX3_3.floor
      SHX4_3 = SHX31_1
      SHX4_3 = SHX4_3 - 1.0
      SHX4_3 = SHX4_3 * 100
      SHX3_3 = SHX3_3(SHX4_3)
      SHX4_3 = SHX32_1
      SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3)
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3)
    end
    SHX0_3 = SHX45_1
    SHX1_3 = SHX1_1
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
    for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      SHX6_3 = RageUI
      SHX6_3 = SHX6_3.ButtonWithStyle
      SHX7_3 = SHX4_3
      SHX8_3 = ""
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
          SHX3_4 = SHX5_3.uuid
          SHX4_4 = SHX3_1
          if SHX3_4 ~= SHX4_4 then
            SHX3_4 = {}
            SHX4_1 = SHX3_4
          end
          SHX3_4 = SHX5_3.uuid
          SHX3_1 = SHX3_4
          SHX3_4 = false
          SHX9_1 = SHX3_4
        end
      end
      SHX12_3 = RMenu
      SHX13_3 = SHX12_3
      SHX12_3 = SHX12_3.Get
      SHX14_3 = "store"
      SHX15_3 = "info"
      SHX12_3, SHX13_3, SHX14_3, SHX15_3 = SHX12_3(SHX13_3, SHX14_3, SHX15_3)
      SHX6_3(SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "store"
  SHX4_2 = "info"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3
    SHX1_3 = SHX3_1
    SHX0_3 = SHX1_1
    SHX0_3 = SHX0_3[SHX1_3]
    if not SHX0_3 then
      SHX1_3 = RageUI
      SHX1_3 = SHX1_3.CloseAll
      SHX1_3()
      return
    end
    SHX1_3 = SHX0_1.items
    SHX2_3 = SHX0_3.item
    SHX1_3 = SHX1_3[SHX2_3]
    SHX2_3 = "~y~"
    SHX3_3 = SHX1_3.name
    SHX4_3 = "   |   "
    SHX5_3 = SHX3_1
    SHX2_3 = SHX2_3 .. SHX3_3 .. SHX4_3 .. SHX5_3
    SHX3_3 = RageUI
    SHX3_3 = SHX3_3.Separator
    SHX4_3 = SHX2_3
    SHX3_3(SHX4_3)
    SHX3_3 = SHX1_3.metadataFormat
    if SHX3_3 then
      SHX3_3 = {}
      SHX4_3 = pairs
      SHX5_3 = SHX1_3.metadataFields
      SHX4_3, SHX5_3, SHX6_3, SHX7_3 = SHX4_3(SHX5_3)
      for SHX8_3, SHX9_3 in SHX4_3, SHX5_3, SHX6_3, SHX7_3 do
        SHX10_3 = table
        SHX10_3 = SHX10_3.insert
        SHX11_3 = SHX3_3
        SHX12_3 = SHX0_3.metadata
        SHX12_3 = SHX12_3[SHX9_3]
        SHX10_3(SHX11_3, SHX12_3)
      end
      SHX4_3 = RageUI
      SHX4_3 = SHX4_3.Separator
      SHX5_3 = string
      SHX5_3 = SHX5_3.format
      SHX6_3 = "~g~"
      SHX7_3 = SHX1_3.metadataFormat
      SHX6_3 = SHX6_3 .. SHX7_3
      SHX7_3 = table
      SHX7_3 = SHX7_3.unpack
      SHX8_3 = SHX3_3
      SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3 = SHX7_3(SHX8_3)
      SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3 = SHX5_3(SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3)
      SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3)
    end
    SHX3_3 = SHX1_3.manuallyRedeemable
    if SHX3_3 then
      SHX3_3 = RageUI
      SHX3_3 = SHX3_3.ButtonWithStyle
      SHX4_3 = "Redeem Item"
      SHX5_3 = SHX1_3.description
      SHX6_3 = {}
      SHX6_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
      SHX7_3 = true
      function SHX8_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4
        if SHX2_4 then
          SHX3_4 = TriggerServerEvent
          SHX4_4 = "dc21aa19f9"
          SHX3_4(SHX4_4)
        end
      end
      SHX9_3 = RMenu
      SHX10_3 = SHX9_3
      SHX9_3 = SHX9_3.Get
      SHX11_3 = "store"
      SHX12_3 = "redeem"
      SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3 = SHX9_3(SHX10_3, SHX11_3, SHX12_3)
      SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3)
    else
      SHX3_3 = RageUI
      SHX3_3 = SHX3_3.Button
      SHX4_3 = "Redeem Item"
      SHX5_3 = SHX1_3.description
      SHX6_3 = false
      function SHX7_3()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_4, SHX1_4
      end
      SHX8_3 = nil
      SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
    end
    SHX3_3 = SHX1_3.canTransfer
    if SHX3_3 then
      SHX3_3 = RageUI
      SHX3_3 = SHX3_3.ButtonWithStyle
      SHX4_3 = "Sell To Player"
      SHX5_3 = "This will transfer the entire package, including any redeemable content, to the specified player."
      SHX6_3 = {}
      SHX6_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
      SHX7_3 = true
      function SHX8_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4
        if SHX2_4 then
          SHX3_4 = tCMG
          SHX3_4 = SHX3_4.isInGreenzone
          SHX4_4 = false
          SHX3_4 = SHX3_4(SHX4_4)
          if SHX3_4 then
            SHX3_4 = TriggerServerEvent
            SHX4_4 = "0ddb1b6e9d"
            SHX5_4 = SHX3_1
            SHX3_4(SHX4_4, SHX5_4)
          else
            SHX3_4 = notify
            SHX4_4 = "~r~You must be in a greenzone to sell."
            SHX3_4(SHX4_4)
          end
        end
      end
      SHX9_3 = nil
      SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    else
      SHX3_3 = RageUI
      SHX3_3 = SHX3_3.Button
      SHX4_3 = "Sell To Player"
      SHX5_3 = ""
      SHX6_3 = false
      function SHX7_3()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_4, SHX1_4
      end
      SHX8_3 = nil
      SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
    end
    SHX3_3 = SHX9_1
    if SHX3_3 then
      SHX3_3 = string
      SHX3_3 = SHX3_3.format
      SHX4_3 = "~g~Copied %s into your clipboard!"
      SHX5_3 = SHX3_1
      SHX3_3 = SHX3_3(SHX4_3, SHX5_3)
      if SHX3_3 then
        goto SHX_LABEL_118
      end
    end
    SHX3_3 = string
    SHX3_3 = SHX3_3.format
    SHX4_3 = "Copies %s into your clipboard."
    SHX5_3 = SHX3_1
    SHX3_3 = SHX3_3(SHX4_3, SHX5_3)
    -- [FIX IF ERROR] Move ::SHX_LABEL_118:: outside nested blocks until all 'goto SHX_LABEL_118' can see it
    ::SHX_LABEL_118::
    SHX4_3 = RageUI
    SHX4_3 = SHX4_3.ButtonWithStyle
    SHX5_3 = "Copy Code to Clipboard"
    SHX6_3 = SHX3_3
    SHX7_3 = {}
    SHX7_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
    SHX8_3 = true
    function SHX9_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4
      if SHX2_4 then
        SHX3_4 = SHX3_1
        if SHX3_4 then
          SHX3_4 = CMG
          SHX3_4 = SHX3_4.copyToClipboard
          SHX4_4 = SHX3_1
          SHX3_4(SHX4_4)
          SHX3_4 = true
          SHX9_1 = SHX3_4
        end
      end
    end
    SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    SHX4_3 = RageUI
    SHX4_3 = SHX4_3.ButtonWithStyle
    SHX5_3 = "Assign Custom Name"
    SHX6_3 = "Assigns a custom name to this item. This name is only visible to you and is not transferred when sold or visible by donation support."
    SHX7_3 = {}
    SHX7_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
    SHX8_3 = true
    function SHX9_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4
      if SHX2_4 then
        SHX3_4 = CMG
        SHX3_4 = SHX3_4.clientPrompt
        SHX4_4 = "Enter custom name (leave blank to reset)"
        SHX5_4 = ""
        function SHX6_4(SHX0_5)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX1_5, SHX2_5, SHX3_5, SHX4_5, SHX5_5, SHX6_5
          SHX1_5 = SHX3_1
          if not SHX1_5 then
            return
          end
          if SHX0_5 then
            SHX1_5 = #SHX0_5
            if not (SHX1_5 <= 1) then
              goto SHX_LABEL_14
            end
          end
          SHX2_5 = SHX3_1
          SHX1_5 = SHX10_1
          SHX1_5[SHX2_5] = nil
          goto SHX_LABEL_23
          -- [FIX IF ERROR] Move ::SHX_LABEL_14:: outside nested blocks until all 'goto SHX_LABEL_14' can see it
          ::SHX_LABEL_14::
          SHX2_5 = SHX3_1
          SHX1_5 = SHX10_1
          SHX3_5 = string
          SHX3_5 = SHX3_5.sub
          SHX4_5 = SHX0_5
          SHX5_5 = 1
          SHX6_5 = 50
          SHX3_5 = SHX3_5(SHX4_5, SHX5_5, SHX6_5)
          SHX1_5[SHX2_5] = SHX3_5
          -- [FIX IF ERROR] Move ::SHX_LABEL_23:: outside nested blocks until all 'goto SHX_LABEL_23' can see it
          ::SHX_LABEL_23::
          SHX1_5 = SetResourceKvp
          SHX2_5 = "cmg_customStoreNameUUIDs"
          SHX3_5 = json
          SHX3_5 = SHX3_5.encode
          SHX4_5 = SHX10_1
          SHX3_5, SHX4_5, SHX5_5, SHX6_5 = SHX3_5(SHX4_5)
          SHX1_5(SHX2_5, SHX3_5, SHX4_5, SHX5_5, SHX6_5)
        end
        SHX3_4(SHX4_4, SHX5_4, SHX6_4)
      end
    end
    SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    SHX4_3 = SHX1_3.canDelete
    if SHX4_3 then
      SHX4_3 = RageUI
      SHX4_3 = SHX4_3.ButtonWithStyle
      SHX5_3 = "~r~Delete Item"
      SHX6_3 = "Permanently removes this item from your store. This cannot be undone."
      SHX7_3 = {}
      SHX7_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
      SHX8_3 = true
      function SHX9_3()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_4, SHX1_4
      end
      SHX10_3 = RMenu
      SHX11_3 = SHX10_3
      SHX10_3 = SHX10_3.Get
      SHX12_3 = "store"
      SHX13_3 = "confirmDelete"
      SHX10_3, SHX11_3, SHX12_3, SHX13_3 = SHX10_3(SHX11_3, SHX12_3, SHX13_3)
      SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "store"
  SHX4_2 = "confirmDelete"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "~r~This cannot be undone."
    SHX0_3(SHX1_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "No"
    SHX2_3 = ""
    SHX3_3 = {}
    SHX3_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
    SHX4_3 = true
    function SHX5_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    SHX6_3 = RMenu
    SHX7_3 = SHX6_3
    SHX6_3 = SHX6_3.Get
    SHX8_3 = "store"
    SHX9_3 = "info"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Yes"
    SHX2_3 = ""
    SHX3_3 = {}
    SHX3_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
    SHX4_3 = true
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4
      if SHX2_4 then
        SHX3_4 = SHX3_1
        if SHX3_4 then
          SHX4_4 = TriggerServerEvent
          SHX5_4 = "0ee232fdca"
          SHX6_4 = SHX3_4
          SHX4_4(SHX5_4, SHX6_4)
          SHX4_4 = SHX10_1
          SHX4_4[SHX3_4] = nil
          SHX4_4 = SetResourceKvp
          SHX5_4 = "cmg_customStoreNameUUIDs"
          SHX6_4 = json
          SHX6_4 = SHX6_4.encode
          SHX7_4 = SHX10_1
          SHX6_4, SHX7_4 = SHX6_4(SHX7_4)
          SHX4_4(SHX5_4, SHX6_4, SHX7_4)
        end
      end
    end
    SHX6_3 = RMenu
    SHX7_3 = SHX6_3
    SHX6_3 = SHX6_3.Get
    SHX8_3 = "store"
    SHX9_3 = "mainmenu"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "store"
  SHX4_2 = "redeem"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3
    SHX1_3 = SHX3_1
    SHX0_3 = SHX1_1
    SHX0_3 = SHX0_3[SHX1_3]
    if not SHX0_3 then
      SHX1_3 = RageUI
      SHX1_3 = SHX1_3.CloseAll
      SHX1_3()
      return
    end
    SHX1_3 = SHX0_1.items
    SHX2_3 = SHX0_3.item
    SHX1_3 = SHX1_3[SHX2_3]
    SHX2_3 = SHX1_3.args
    if SHX2_3 then
      SHX2_3 = pairs
      SHX3_3 = SHX0_1.argsTemplate
      SHX4_3 = SHX1_3.args
      SHX3_3 = SHX3_3[SHX4_3]
      SHX2_3, SHX3_3, SHX4_3, SHX5_3 = SHX2_3(SHX3_3)
      for SHX6_3, SHX7_3 in SHX2_3, SHX3_3, SHX4_3, SHX5_3 do
        SHX8_3 = SHX7_3.type
        if "string" == SHX8_3 then
          SHX8_3 = SHX39_1
          SHX9_3 = SHX7_3
          SHX8_3(SHX9_3)
        else
          SHX8_3 = SHX7_3.type
          if "vehicleList" == SHX8_3 then
            SHX8_3 = SHX40_1
            SHX9_3 = SHX7_3
            SHX8_3(SHX9_3)
          else
            SHX8_3 = SHX7_3.type
            if "permIdList" == SHX8_3 then
              SHX8_3 = SHX43_1
              SHX9_3 = SHX7_3
              SHX8_3(SHX9_3)
            end
          end
        end
      end
    end
    SHX2_3 = RageUI
    SHX2_3 = SHX2_3.ButtonWithStyle
    SHX3_3 = "~g~Redeem "
    SHX4_3 = SHX1_3.name
    SHX3_3 = SHX3_3 .. SHX4_3
    SHX4_3 = ""
    SHX5_3 = {}
    SHX5_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
    SHX6_3 = true
    function SHX7_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4
      if SHX2_4 then
        SHX3_4 = SHX38_1
        SHX4_4 = SHX1_3
        SHX3_4 = SHX3_4(SHX4_4)
        if SHX3_4 then
          SHX3_4 = TriggerServerEvent
          SHX4_4 = "6d07788b0f"
          SHX5_4 = SHX3_1
          SHX6_4 = SHX4_1
          SHX3_4(SHX4_4, SHX5_4, SHX6_4)
        else
          SHX3_4 = notify
          SHX4_4 = "~r~Unable to redeem, one or more argument is invalid."
          SHX3_4(SHX4_4)
        end
      end
    end
    SHX8_3 = nil
    SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "store"
  SHX4_2 = "vehicleList"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3
    SHX0_3 = SHX46_1
    SHX1_3 = SHX5_1.items
    SHX2_3 = false
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3, SHX2_3)
    for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      SHX6_3 = type
      SHX7_3 = SHX5_3
      SHX6_3 = SHX6_3(SHX7_3)
      if "table" == SHX6_3 then
        SHX6_3 = SHX2_1
        SHX6_3 = SHX6_3[SHX4_3]
        SHX6_3 = not SHX6_3
        if SHX6_3 then
          SHX7_3 = ""
          if SHX7_3 then
            goto SHX_LABEL_20
          end
        end
        SHX7_3 = "You do not have access to this garage."
        -- [FIX IF ERROR] Move ::SHX_LABEL_20:: outside nested blocks until all 'goto SHX_LABEL_20' can see it
        ::SHX_LABEL_20::
        SHX8_3 = RageUI
        SHX8_3 = SHX8_3.ButtonWithStyle
        SHX9_3 = SHX4_3
        SHX10_3 = SHX7_3
        SHX11_3 = {}
        SHX11_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
        SHX12_3 = SHX6_3
        function SHX13_3(SHX0_4, SHX1_4, SHX2_4)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX3_4
          if SHX2_4 then
            SHX3_4 = SHX4_3
            SHX7_1 = SHX3_4
          end
        end
        SHX14_3 = RMenu
        SHX15_3 = SHX14_3
        SHX14_3 = SHX14_3.Get
        SHX16_3 = "store"
        SHX17_3 = "vehicleListInner"
        SHX14_3, SHX15_3, SHX16_3, SHX17_3 = SHX14_3(SHX15_3, SHX16_3, SHX17_3)
        SHX8_3(SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3)
      else
        SHX6_3 = SHX13_1
        SHX6_3 = SHX6_3[SHX4_3]
        if not SHX6_3 then
          SHX6_3 = SHX12_1
        end
        SHX7_3 = RageUI
        SHX7_3 = SHX7_3.ButtonWithStyle
        SHX8_3 = SHX5_3
        SHX9_3 = "Inventory size: "
        SHX10_3 = tostring
        SHX11_3 = SHX6_3
        SHX10_3 = SHX10_3(SHX11_3)
        SHX11_3 = "kg"
        SHX9_3 = SHX9_3 .. SHX10_3 .. SHX11_3
        SHX10_3 = {}
        SHX10_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
        SHX11_3 = true
        function SHX12_3(SHX0_4, SHX1_4, SHX2_4)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX3_4
          if SHX2_4 then
            SHX3_4 = SHX4_3
            SHX6_1 = SHX3_4
          end
        end
        SHX13_3 = RMenu
        SHX14_3 = SHX13_3
        SHX13_3 = SHX13_3.Get
        SHX15_3 = "store"
        SHX16_3 = "vehicleSelection"
        SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3 = SHX13_3(SHX14_3, SHX15_3, SHX16_3)
        SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3)
      end
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "store"
  SHX4_2 = "vehicleListInner"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3
    SHX0_3 = SHX46_1
    SHX1_3 = SHX5_1.items
    SHX2_3 = SHX7_1
    SHX1_3 = SHX1_3[SHX2_3]
    SHX2_3 = true
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3, SHX2_3)
    for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      SHX6_3 = SHX13_1
      SHX6_3 = SHX6_3[SHX4_3]
      if not SHX6_3 then
        SHX6_3 = SHX12_1
      end
      SHX7_3 = RageUI
      SHX7_3 = SHX7_3.ButtonWithStyle
      SHX8_3 = SHX5_3
      SHX9_3 = "Inventory size: "
      SHX10_3 = tostring
      SHX11_3 = SHX6_3
      SHX10_3 = SHX10_3(SHX11_3)
      SHX11_3 = "kg"
      SHX9_3 = SHX9_3 .. SHX10_3 .. SHX11_3
      SHX10_3 = {}
      SHX10_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
      SHX11_3 = true
      function SHX12_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4
        if SHX2_4 then
          SHX3_4 = SHX4_3
          SHX6_1 = SHX3_4
        end
      end
      SHX13_3 = RMenu
      SHX14_3 = SHX13_3
      SHX13_3 = SHX13_3.Get
      SHX15_3 = "store"
      SHX16_3 = "vehicleSelection"
      SHX13_3, SHX14_3, SHX15_3, SHX16_3 = SHX13_3(SHX14_3, SHX15_3, SHX16_3)
      SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "store"
  SHX4_2 = "vehicleSelection"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Select Vehicle"
    SHX2_3 = ""
    SHX3_3 = {}
    SHX3_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
    SHX4_3 = true
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4
      if SHX2_4 then
        SHX4_4 = SHX5_1.field
        SHX3_4 = SHX4_1
        SHX5_4 = SHX6_1
        SHX3_4[SHX4_4] = SHX5_4
      end
    end
    SHX6_3 = RMenu
    SHX7_3 = SHX6_3
    SHX6_3 = SHX6_3.Get
    SHX8_3 = "store"
    SHX9_3 = "redeem"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Preview Vehicle"
    SHX2_3 = ""
    SHX3_3 = {}
    SHX3_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
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
        SHX3_4 = tCMG
        SHX3_4 = SHX3_4.canAnim
        SHX3_4 = SHX3_4()
        if SHX3_4 then
          SHX3_4 = CMG
          SHX3_4 = SHX3_4.getPlayerCombatTimer
          SHX3_4 = SHX3_4()
          if 0 == SHX3_4 then
            SHX3_4 = CMG
            SHX3_4 = SHX3_4.getPlayerVehicle
            SHX3_4 = SHX3_4()
            if 0 == SHX3_4 then
              SHX3_4 = CMG
              SHX3_4 = SHX3_4.isPlayerInRedZone
              SHX3_4 = SHX3_4()
              if not SHX3_4 then
                SHX3_4 = CMG
                SHX3_4 = SHX3_4.getPlayerBucket
                SHX3_4 = SHX3_4()
                if 0 == SHX3_4 then
                  SHX3_4 = SHX44_1
                  SHX4_4 = SHX6_1
                  SHX3_4(SHX4_4)
              end
            end
          end
        end
        else
          SHX3_4 = notify
          SHX4_4 = "~r~You can not preview right now."
          SHX3_4(SHX4_4)
        end
      end
    end
    SHX6_3 = nil
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "store"
  SHX4_2 = "lockslots"
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
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "Lockslot Price: \194\163"
    SHX2_3 = getMoneyStringFormatted
    SHX3_3 = SHX0_1.lockslotPurchasePrice
    SHX2_3 = SHX2_3(SHX3_3)
    SHX1_3 = SHX1_3 .. SHX2_3
    SHX0_3(SHX1_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "~y~Purchase Lockslot"
    SHX2_3 = ""
    SHX3_3 = {}
    SHX3_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
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
        SHX4_4 = "80f8eda00b"
        SHX3_4(SHX4_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX47_1(SHX48_1, SHX49_1, SHX50_1, SHX51_1)
SHX47_1 = RegisterNetEvent
SHX48_1 = "7186a02c28"
function SHX49_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_1 = SHX0_2
end
SHX47_1(SHX48_1, SHX49_1)
SHX47_1 = RMenu
SHX47_1 = SHX47_1.Add
SHX48_1 = "vehicletesting"
SHX49_1 = "mainmenu"
SHX50_1 = RageUI
SHX50_1 = SHX50_1.CreateMenu
SHX51_1 = ""
SHX52_1 = "Main Menu"
SHX53_1 = CMG
SHX53_1 = SHX53_1.getRageUIMenuWidth
SHX53_1 = SHX53_1()
SHX54_1 = CMG
SHX54_1 = SHX54_1.getRageUIMenuHeight
SHX54_1 = SHX54_1()
SHX55_1 = "cmg_storeui"
SHX56_1 = "cmg_storeui"
SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1 = SHX50_1(SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1)
SHX47_1(SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1)
SHX47_1 = RMenu
SHX47_1 = SHX47_1.Add
SHX48_1 = "vehicletesting"
SHX49_1 = "extras"
SHX50_1 = RageUI
SHX50_1 = SHX50_1.CreateSubMenu
SHX51_1 = RMenu
SHX52_1 = SHX51_1
SHX51_1 = SHX51_1.Get
SHX53_1 = "vehicletesting"
SHX54_1 = "mainmenu"
SHX51_1 = SHX51_1(SHX52_1, SHX53_1, SHX54_1)
SHX52_1 = ""
SHX53_1 = "Extras"
SHX54_1 = CMG
SHX54_1 = SHX54_1.getRageUIMenuWidth
SHX54_1 = SHX54_1()
SHX55_1 = CMG
SHX55_1 = SHX55_1.getRageUIMenuHeight
SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1 = SHX55_1()
SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1 = SHX50_1(SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1)
SHX47_1(SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1)
function SHX47_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = GetEntitySpeed
  SHX1_2 = SHX16_1
  SHX0_2 = SHX0_2(SHX1_2)
  SHX1_2 = table
  SHX1_2 = SHX1_2.insert
  SHX2_2 = SHX19_1.speedBuffer
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SHX19_1.speedBuffer
  SHX1_2 = #SHX1_2
  if SHX1_2 > 100 then
    SHX1_2 = table
    SHX1_2 = SHX1_2.remove
    SHX2_2 = SHX19_1.speedBuffer
    SHX3_2 = 1
    SHX1_2(SHX2_2, SHX3_2)
  end
  SHX1_2 = 0.0
  SHX2_2 = 0.0
  SHX3_2 = 0
  SHX4_2 = 0
  SHX5_2 = ipairs
  SHX6_2 = SHX19_1.speedBuffer
  SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
  for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
    if SHX9_2 > 1 then
      SHX11_2 = SHX19_1.speedBuffer
      SHX12_2 = SHX9_2 - 1
      SHX11_2 = SHX11_2[SHX12_2]
      SHX11_2 = SHX10_2 - SHX11_2
      if SHX11_2 > 0.0 then
        SHX1_2 = SHX1_2 + SHX11_2
        SHX3_2 = SHX3_2 + 1
      else
        SHX2_2 = SHX1_2 + SHX11_2
        SHX4_2 = SHX4_2 + 1
      end
    end
  end
  SHX1_2 = SHX1_2 / SHX3_2
  SHX2_2 = SHX2_2 / SHX4_2
  SHX5_2 = math
  SHX5_2 = SHX5_2.max
  SHX6_2 = SHX19_1.speed
  SHX7_2 = SHX0_2
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
  SHX19_1.speed = SHX5_2
  SHX5_2 = SHX19_1.speed
  SHX5_2 = SHX5_2 * 2.236936
  SHX19_1.speedDisplay = SHX5_2
  SHX5_2 = math
  SHX5_2 = SHX5_2.max
  SHX6_2 = SHX19_1.accel
  SHX7_2 = SHX1_2
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
  SHX19_1.accel = SHX5_2
  SHX5_2 = SHX19_1.accel
  SHX5_2 = SHX5_2 * 60.0
  SHX5_2 = SHX5_2 * 2.236936
  SHX19_1.accelDisplay = SHX5_2
  SHX5_2 = math
  SHX5_2 = SHX5_2.min
  SHX6_2 = SHX19_1.decel
  SHX7_2 = SHX2_2
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
  SHX19_1.decel = SHX5_2
  SHX5_2 = math
  SHX5_2 = SHX5_2.abs
  SHX6_2 = SHX19_1.decel
  SHX5_2 = SHX5_2(SHX6_2)
  SHX5_2 = SHX5_2 * 60.0
  SHX5_2 = SHX5_2 * 2.236936
  SHX19_1.decelDisplay = SHX5_2
end
function SHX48_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SetVehicleEngineHealth
  SHX1_2 = SHX16_1
  SHX2_2 = 9999
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetVehiclePetrolTankHealth
  SHX1_2 = SHX16_1
  SHX2_2 = 9999
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetVehicleFixed
  SHX1_2 = SHX16_1
  SHX0_2(SHX1_2)
end
function SHX49_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = false
  SHX1_2 = 1
  SHX2_2 = 12
  SHX3_2 = 1
  for SHX4_2 = SHX1_2, SHX2_2, SHX3_2 do
    SHX5_2 = DoesExtraExist
    SHX6_2 = SHX16_1
    SHX7_2 = SHX4_2
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
    if SHX5_2 then
      SHX0_2 = true
    end
  end
  return SHX0_2
end
function SHX50_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = false
  SHX15_1 = SHX0_2
  SHX0_2 = nil
  SHX30_1 = SHX0_2
  SHX0_2 = DeleteEntity
  SHX1_2 = SHX16_1
  SHX0_2(SHX1_2)
  SHX0_2 = SetEntityCoordsNoOffset
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX29_1.x
  SHX3_2 = SHX29_1.y
  SHX4_2 = SHX29_1.z
  SHX5_2 = false
  SHX6_2 = false
  SHX7_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "39e37ff016"
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Visible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "store"
  SHX4_2 = "vehicleSelection"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
end
SHX51_1 = RageUI
SHX51_1 = SHX51_1.CreateWhile
SHX52_1 = 1.0
SHX53_1 = RMenu
SHX54_1 = SHX53_1
SHX53_1 = SHX53_1.Get
SHX55_1 = "vehicletesting"
SHX56_1 = "mainmenu"
SHX53_1 = SHX53_1(SHX54_1, SHX55_1, SHX56_1)
SHX54_1 = nil
function SHX55_1()
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
  SHX3_2 = "vehicletesting"
  SHX4_2 = "mainmenu"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "Statistics"
    SHX0_3(SHX1_3)
    SHX0_3 = 0
    SHX1_3 = SHX18_1
    if 0 ~= SHX1_3 then
      SHX1_3 = SHX18_1
      SHX2_3 = SHX17_1
      SHX0_3 = SHX1_3 - SHX2_3
    else
      SHX1_3 = GetGameTimer
      SHX1_3 = SHX1_3()
      SHX2_3 = SHX17_1
      SHX0_3 = SHX1_3 - SHX2_3
    end
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.ButtonWithStyle
    SHX2_3 = "Time Elapsed"
    SHX3_3 = ""
    SHX4_3 = {}
    SHX5_3 = string
    SHX5_3 = SHX5_3.format
    SHX6_3 = "%.1fs"
    SHX7_3 = SHX0_3 / 1000.0
    SHX5_3 = SHX5_3(SHX6_3, SHX7_3)
    SHX4_3.RightLabel = SHX5_3
    SHX5_3 = true
    function SHX6_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    SHX7_3 = nil
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.ButtonWithStyle
    SHX2_3 = "Top Speed"
    SHX3_3 = ""
    SHX4_3 = {}
    SHX5_3 = string
    SHX5_3 = SHX5_3.format
    SHX6_3 = "%.1f MPH"
    SHX7_3 = SHX19_1.speedDisplay
    SHX5_3 = SHX5_3(SHX6_3, SHX7_3)
    SHX4_3.RightLabel = SHX5_3
    SHX5_3 = true
    function SHX6_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    SHX7_3 = nil
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.ButtonWithStyle
    SHX2_3 = "Top Acceleration"
    SHX3_3 = ""
    SHX4_3 = {}
    SHX5_3 = string
    SHX5_3 = SHX5_3.format
    SHX6_3 = "%.1f MPH"
    SHX7_3 = SHX19_1.accelDisplay
    SHX5_3 = SHX5_3(SHX6_3, SHX7_3)
    SHX4_3.RightLabel = SHX5_3
    SHX5_3 = true
    function SHX6_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    SHX7_3 = nil
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.ButtonWithStyle
    SHX2_3 = "Top Deacceleration"
    SHX3_3 = ""
    SHX4_3 = {}
    SHX5_3 = string
    SHX5_3 = SHX5_3.format
    SHX6_3 = "%.1f MPH"
    SHX7_3 = SHX19_1.decelDisplay
    SHX5_3 = SHX5_3(SHX6_3, SHX7_3)
    SHX4_3.RightLabel = SHX5_3
    SHX5_3 = true
    function SHX6_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    SHX7_3 = nil
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.Separator
    SHX2_3 = "Vehicle Options"
    SHX1_3(SHX2_3)
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.List
    SHX2_3 = "Teleport Location"
    SHX3_3 = SHX27_1
    SHX4_3 = SHX26_1
    SHX5_3 = ""
    SHX6_3 = {}
    SHX7_3 = true
    function SHX8_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4, SHX12_4
      SHX26_1 = SHX3_4
      if SHX2_4 then
        SHX5_4 = SHX26_1
        SHX4_4 = SHX28_1
        SHX4_4 = SHX4_4[SHX5_4]
        SHX5_4 = SetEntityCoordsNoOffset
        SHX6_4 = SHX16_1
        SHX7_4 = SHX4_4.x
        SHX8_4 = SHX4_4.y
        SHX9_4 = SHX4_4.z
        SHX10_4 = true
        SHX11_4 = false
        SHX12_4 = false
        SHX5_4(SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4, SHX12_4)
      end
    end
    function SHX9_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    SHX10_3 = nil
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3)
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.Button
    SHX2_3 = "Repair Vehicle"
    SHX3_3 = ""
    SHX4_3 = true
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4
      if SHX2_4 then
        SHX3_4 = SHX48_1
        SHX3_4()
        SHX3_4 = IsVehicleOnAllWheels
        SHX4_4 = SHX16_1
        SHX3_4 = SHX3_4(SHX4_4)
        if not SHX3_4 then
          SHX3_4 = GetEntityCoords
          SHX4_4 = SHX16_1
          SHX5_4 = true
          SHX3_4 = SHX3_4(SHX4_4, SHX5_4)
          SHX4_4 = SetEntityCoordsNoOffset
          SHX5_4 = SHX16_1
          SHX6_4 = SHX3_4.x
          SHX7_4 = SHX3_4.y
          SHX8_4 = SHX3_4.z
          SHX9_4 = true
          SHX10_4 = false
          SHX11_4 = false
          SHX4_4(SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4)
        end
      end
    end
    SHX6_3 = nil
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
    SHX1_3 = SHX49_1
    SHX1_3 = SHX1_3()
    if SHX1_3 then
      SHX1_3 = RageUI
      SHX1_3 = SHX1_3.ButtonWithStyle
      SHX2_3 = "Extras"
      SHX3_3 = ""
      SHX4_3 = {}
      SHX4_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
      SHX5_3 = true
      function SHX6_3()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_4, SHX1_4
      end
      SHX7_3 = RMenu
      SHX8_3 = SHX7_3
      SHX7_3 = SHX7_3.Get
      SHX9_3 = "vehicletesting"
      SHX10_3 = "extras"
      SHX7_3, SHX8_3, SHX9_3, SHX10_3 = SHX7_3(SHX8_3, SHX9_3, SHX10_3)
      SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3)
    end
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.ButtonWithStyle
    SHX2_3 = "~r~Stop Previewing"
    SHX3_3 = ""
    SHX4_3 = {}
    SHX4_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
    SHX5_3 = true
    function SHX6_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4
      if SHX2_4 then
        SHX3_4 = SHX50_1
        SHX3_4()
      end
    end
    SHX7_3 = nil
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "vehicletesting"
  SHX4_2 = "extras"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3
    SHX0_3 = 1
    SHX1_3 = 12
    SHX2_3 = 1
    for SHX3_3 = SHX0_3, SHX1_3, SHX2_3 do
      SHX4_3 = DoesExtraExist
      SHX5_3 = SHX16_1
      SHX6_3 = SHX3_3
      SHX4_3 = SHX4_3(SHX5_3, SHX6_3)
      if SHX4_3 then
        SHX4_3 = IsVehicleExtraTurnedOn
        SHX5_3 = SHX16_1
        SHX6_3 = SHX3_3
        SHX4_3 = SHX4_3(SHX5_3, SHX6_3)
        if SHX4_3 then
          SHX4_3 = RageUI
          SHX4_3 = SHX4_3.Button
          SHX5_3 = "Disable Extra "
          SHX6_3 = SHX3_3
          SHX5_3 = SHX5_3 .. SHX6_3
          SHX6_3 = nil
          SHX7_3 = true
          function SHX8_3(SHX0_4, SHX1_4, SHX2_4)
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX3_4, SHX4_4, SHX5_4, SHX6_4
            if SHX2_4 then
              SHX3_4 = SetVehicleExtra
              SHX4_4 = SHX16_1
              SHX5_4 = SHX3_3
              SHX6_4 = true
              SHX3_4(SHX4_4, SHX5_4, SHX6_4)
            end
          end
          SHX9_3 = nil
          SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
        else
          SHX4_3 = RageUI
          SHX4_3 = SHX4_3.Button
          SHX5_3 = "Enable Extra "
          SHX6_3 = SHX3_3
          SHX5_3 = SHX5_3 .. SHX6_3
          SHX6_3 = nil
          SHX7_3 = true
          function SHX8_3(SHX0_4, SHX1_4, SHX2_4)
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX3_4, SHX4_4, SHX5_4, SHX6_4
            if SHX2_4 then
              SHX3_4 = SetVehicleExtra
              SHX4_4 = SHX16_1
              SHX5_4 = SHX3_3
              SHX6_4 = false
              SHX3_4(SHX4_4, SHX5_4, SHX6_4)
              SHX3_4 = SHX48_1
              SHX3_4()
            end
          end
          SHX9_3 = nil
          SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
        end
      end
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX51_1(SHX52_1, SHX53_1, SHX54_1, SHX55_1)
function SHX51_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = SHX15_1
  if SHX0_2 then
    SHX0_2 = RageUI
    SHX0_2 = SHX0_2.Visible
    SHX1_2 = RMenu
    SHX2_2 = SHX1_2
    SHX1_2 = SHX1_2.Get
    SHX3_2 = "vehicletesting"
    SHX4_2 = "mainmenu"
    SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
    if not SHX0_2 then
      SHX0_2 = RageUI
      SHX0_2 = SHX0_2.Visible
      SHX1_2 = RMenu
      SHX2_2 = SHX1_2
      SHX1_2 = SHX1_2.Get
      SHX3_2 = "vehicletesting"
      SHX4_2 = "extras"
      SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
      if not SHX0_2 then
        SHX0_2 = RageUI
        SHX0_2 = SHX0_2.Visible
        SHX1_2 = RMenu
        SHX2_2 = SHX1_2
        SHX1_2 = SHX1_2.Get
        SHX3_2 = "vehicletesting"
        SHX4_2 = "mainmenu"
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
        SHX2_2 = true
        SHX0_2(SHX1_2, SHX2_2)
      end
    end
    SHX0_2 = DisableControlAction
    SHX1_2 = 0
    SHX2_2 = 23
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = DisableControlAction
    SHX1_2 = 0
    SHX2_2 = 75
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerVehicle
    SHX0_2, SHX1_2 = SHX0_2()
    SHX2_2 = SHX16_1
    if SHX0_2 ~= SHX2_2 or not SHX1_2 then
      SHX2_2 = DoesEntityExist
      SHX3_2 = SHX16_1
      SHX2_2 = SHX2_2(SHX3_2)
      if SHX2_2 then
        SHX2_2 = SetPedIntoVehicle
        SHX3_2 = PlayerPedId
        SHX3_2 = SHX3_2()
        SHX4_2 = SHX16_1
        SHX5_2 = -1
        SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      end
    end
    SHX2_2 = SHX18_1
    if 0 == SHX2_2 then
      SHX2_2 = subtitleText
      SHX3_2 = "~y~Press [E] to stop recording stats"
      SHX2_2(SHX3_2)
      SHX2_2 = SHX47_1
      SHX2_2()
      SHX2_2 = IsControlJustPressed
      SHX3_2 = 0
      SHX4_2 = 51
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
      if SHX2_2 then
        SHX2_2 = GetGameTimer
        SHX2_2 = SHX2_2()
        SHX18_1 = SHX2_2
      end
    else
      SHX2_2 = subtitleText
      SHX3_2 = "~y~Press [E] to start recording stats"
      SHX2_2(SHX3_2)
      SHX2_2 = IsControlJustPressed
      SHX3_2 = 0
      SHX4_2 = 51
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
      if SHX2_2 then
        SHX2_2 = SHX14_1
        SHX2_2 = SHX2_2()
        SHX19_1 = SHX2_2
        SHX2_2 = GetGameTimer
        SHX2_2 = SHX2_2()
        SHX17_1 = SHX2_2
        SHX2_2 = 0
        SHX18_1 = SHX2_2
      end
    end
  end
end
SHX52_1 = CMG
SHX52_1 = SHX52_1.createThreadOnTick
SHX53_1 = SHX51_1
SHX54_1 = "Store Testing"
SHX52_1(SHX53_1, SHX54_1)
SHX52_1 = CMG
function SHX53_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX15_1
  return SHX0_2
end
SHX52_1.isInStoreTesting = SHX53_1
SHX52_1 = RegisterNetEvent
SHX53_1 = "3496b19fd4"
function SHX54_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.loadPtfx
  SHX1_2 = "scr_xs_celebration"
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.loadPtfx
  SHX1_2 = "scr_rcpaparazzo1"
  SHX0_2(SHX1_2)
  SHX0_2 = 1
  SHX1_2 = 4
  SHX2_2 = 1
  for SHX3_2 = SHX0_2, SHX1_2, SHX2_2 do
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.getPlayerCoords
    SHX4_2 = SHX4_2()
    SHX5_2 = UseParticleFxAsset
    SHX6_2 = "scr_xs_celebration"
    SHX5_2(SHX6_2)
    SHX5_2 = StartParticleFxNonLoopedAtCoord
    SHX6_2 = "scr_xs_confetti_burst"
    SHX7_2 = SHX4_2.x
    SHX8_2 = SHX4_2.y
    SHX9_2 = SHX4_2.z
    SHX9_2 = SHX9_2 - 0.8
    SHX10_2 = 0.0
    SHX11_2 = 0.0
    SHX12_2 = 0.0
    SHX13_2 = 1.2
    SHX14_2 = false
    SHX15_2 = false
    SHX16_2 = false
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
    SHX5_2 = UseParticleFxAsset
    SHX6_2 = "scr_rcpaparazzo1"
    SHX5_2(SHX6_2)
    SHX5_2 = StartParticleFxNonLoopedAtCoord
    SHX6_2 = "scr_mich4_firework_burst_spawn"
    SHX7_2 = SHX4_2.x
    SHX8_2 = SHX4_2.y
    SHX9_2 = SHX4_2.z
    SHX10_2 = 0.0
    SHX11_2 = 0.0
    SHX12_2 = 0.0
    SHX13_2 = 1.0
    SHX14_2 = false
    SHX15_2 = false
    SHX16_2 = false
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
    SHX5_2 = Citizen
    SHX5_2 = SHX5_2.Wait
    SHX6_2 = 500
    SHX5_2(SHX6_2)
  end
  SHX0_2 = RemoveNamedPtfxAsset
  SHX1_2 = "scr_xs_celebration"
  SHX0_2(SHX1_2)
  SHX0_2 = RemoveNamedPtfxAsset
  SHX1_2 = "scr_rcpaparazzo1"
  SHX0_2(SHX1_2)
end
SHX52_1(SHX53_1, SHX54_1)
SHX52_1 = RegisterNetEvent
SHX53_1 = "46e04ab78a"
function SHX54_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX2_1 = SHX0_2
end
SHX52_1(SHX53_1, SHX54_1)
SHX52_1 = RegisterCommand
SHX53_1 = "store"
function SHX54_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Visible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "store"
  SHX4_2 = "mainmenu"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "965a575cfd"
  SHX0_2(SHX1_2)
end
SHX55_1 = false
SHX52_1(SHX53_1, SHX54_1, SHX55_1)
SHX52_1 = RegisterNetEvent
SHX53_1 = "2d25483829"
function SHX54_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX8_1 = SHX0_2
end
SHX52_1(SHX53_1, SHX54_1)
SHX52_1 = RegisterNetEvent
SHX53_1 = "7fc7111a60"
function SHX54_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Visible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "store"
  SHX4_2 = "mainmenu"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
end
SHX52_1(SHX53_1, SHX54_1)
SHX52_1 = Citizen
SHX52_1 = SHX52_1.CreateThread
function SHX53_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = GetResourceKvpString
  SHX1_2 = "cmg_customStoreNameUUIDs"
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX1_2 = json
    SHX1_2 = SHX1_2.decode
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if not SHX1_2 then
      SHX1_2 = {}
    end
    SHX10_1 = SHX1_2
  end
end
SHX52_1(SHX53_1)
SHX52_1 = RegisterNetEvent
SHX53_1 = "3355341629"
function SHX54_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX41_1 = SHX0_2
end
SHX52_1(SHX53_1, SHX54_1)
SHX52_1 = RegisterNetEvent
SHX53_1 = "de6c00047f"
function SHX54_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX11_1 = SHX0_2
end
SHX52_1(SHX53_1, SHX54_1)
SHX52_1 = AddEventHandler
SHX53_1 = "CMG:onClientSpawn"
function SHX54_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  if SHX1_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.isDevMode
    SHX2_2 = SHX2_2()
    if SHX2_2 then
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.isDeveloper
      SHX3_2 = SHX0_2
      SHX2_2 = SHX2_2(SHX3_2)
      if SHX2_2 then
        goto SHX_LABEL_15
      end
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_15:: outside nested blocks until all 'goto SHX_LABEL_15' can see it
  ::SHX_LABEL_15::
  SHX2_2 = {}
  SHX3_2 = pairs
  SHX4_2 = SHX0_1.vipCars
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX8_2 = IsModelValid
    SHX9_2 = GetHashKey
    SHX10_2 = SHX7_2
    SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2 = SHX9_2(SHX10_2)
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
    if not SHX8_2 then
      SHX8_2 = table
      SHX8_2 = SHX8_2.insert
      SHX9_2 = SHX2_2
      SHX10_2 = SHX7_2
      SHX8_2(SHX9_2, SHX10_2)
    end
  end
  SHX3_2 = pairs
  SHX4_2 = SHX0_1.customCars
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = pairs
    SHX10_2 = SHX8_2
    SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX9_2(SHX10_2)
    for SHX13_2 in SHX9_2, SHX10_2, SHX11_2, SHX12_2 do
      SHX14_2 = IsModelValid
      SHX15_2 = GetHashKey
      SHX16_2 = SHX13_2
      SHX15_2, SHX16_2 = SHX15_2(SHX16_2)
      SHX14_2 = SHX14_2(SHX15_2, SHX16_2)
      if not SHX14_2 then
        SHX14_2 = table
        SHX14_2 = SHX14_2.insert
        SHX15_2 = SHX2_2
        SHX16_2 = SHX13_2
        SHX14_2(SHX15_2, SHX16_2)
      end
    end
  end
  SHX3_2 = TriggerServerEvent
  SHX4_2 = "51208becbd"
  SHX5_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2)
end
SHX52_1(SHX53_1, SHX54_1)
SHX52_1 = RegisterNetEvent
SHX53_1 = "f28f82d7c9"
function SHX54_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  SHX12_1 = SHX0_2
  SHX13_1 = SHX1_2
end
SHX52_1(SHX53_1, SHX54_1)
function SHX52_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = drawNativeNotification
  SHX1_2 = "Press ~INPUT_CONTEXT~ to open lockslot purchase menu"
  SHX0_2(SHX1_2)
  SHX0_2 = IsControlJustPressed
  SHX1_2 = 0
  SHX2_2 = 51
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = RageUI
    SHX0_2 = SHX0_2.Visible
    SHX1_2 = RMenu
    SHX2_2 = SHX1_2
    SHX1_2 = SHX1_2.Get
    SHX3_2 = "store"
    SHX4_2 = "lockslots"
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX2_2 = true
    SHX0_2(SHX1_2, SHX2_2)
  end
end
SHX53_1 = tCMG
SHX53_1 = SHX53_1.addMarker
SHX54_1 = SHX0_1.lockslotPurchaseLocation
SHX54_1 = SHX54_1.x
SHX55_1 = SHX0_1.lockslotPurchaseLocation
SHX55_1 = SHX55_1.y
SHX56_1 = SHX0_1.lockslotPurchaseLocation
SHX56_1 = SHX56_1.z
SHX57_1 = 1.0
SHX58_1 = 1.0
SHX59_1 = 1.0
SHX60_1 = 0
SHX61_1 = 0
SHX62_1 = 255
SHX63_1 = 100
SHX64_1 = 50
SHX65_1 = 27
SHX66_1 = false
SHX67_1 = false
SHX68_1 = true
SHX53_1(SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1)
SHX53_1 = CMG
SHX53_1 = SHX53_1.createArea
SHX54_1 = "purchase_lockslot"
SHX55_1 = SHX0_1.lockslotPurchaseLocation
SHX56_1 = 2.0
SHX57_1 = 2.0
function SHX58_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
function SHX59_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
SHX60_1 = SHX52_1
SHX61_1 = {}
SHX53_1(SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1)
SHX53_1 = RegisterNetEvent
SHX54_1 = "c0823e196e"
function SHX55_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX30_1 = SHX0_2
end
SHX53_1(SHX54_1, SHX55_1)
SHX53_1 = AddEventHandler
SHX54_1 = "919aefda0c"
function SHX55_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX30_1
  if SHX1_2 then
    SHX1_2 = SHX30_1
    if SHX0_2 ~= SHX1_2 then
      SHX1_2 = SHX50_1
      SHX1_2()
      SHX1_2 = notify
      SHX2_2 = "~r~Preview stopped due to unexpected change in bucket."
      SHX1_2(SHX2_2)
    end
  end
end
SHX53_1(SHX54_1, SHX55_1)
SHX53_1 = RegisterNetEvent
SHX54_1 = "8868f548de"
function SHX55_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  SHX31_1 = SHX0_2
  SHX32_1 = SHX1_2
end
SHX53_1(SHX54_1, SHX55_1)
