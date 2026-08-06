-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1, SHX78_1, SHX79_1, SHX80_1, SHX81_1, SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.registerCommand
SHX1_1 = "lfb_key"
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = ExecuteCommand
  SHX1_2 = "lfb"
  SHX0_2(SHX1_2)
end
SHX3_1 = false
SHX0_1(SHX1_1, SHX2_1, SHX3_1)
SHX0_1 = RegisterKeyMapping
SHX1_1 = "lfb_key"
SHX2_1 = "LFB Menu"
SHX3_1 = "keyboard"
SHX4_1 = "U"
SHX0_1(SHX1_1, SHX2_1, SHX3_1, SHX4_1)
SHX0_1 = TriggerEvent
SHX1_1 = "chat:addSuggestion"
SHX2_1 = "/lfb"
SHX3_1 = "Access your LFB menu"
SHX0_1(SHX1_1, SHX2_1, SHX3_1)
SHX0_1 = false
SHX1_1 = false
SHX2_1 = false
SHX3_1 = nil
SHX4_1 = nil
SHX5_1 = nil
SHX6_1 = nil
SHX7_1 = nil
SHX8_1 = nil
SHX9_1 = nil
SHX10_1 = nil
SHX11_1 = nil
SHX12_1 = nil
SHX13_1 = false
SHX14_1 = RMenu
SHX14_1 = SHX14_1.Add
SHX15_1 = "lfb"
SHX16_1 = "main"
SHX17_1 = RageUI
SHX17_1 = SHX17_1.CreateMenu
SHX18_1 = ""
SHX19_1 = "Status: ~g~Available"
SHX20_1 = CMG
SHX20_1 = SHX20_1.getRageUIMenuWidth
SHX20_1 = SHX20_1()
SHX21_1 = CMG
SHX21_1 = SHX21_1.getRageUIMenuHeight
SHX21_1 = SHX21_1()
SHX22_1 = "cmg_lfbui"
SHX23_1 = "cmg_lfbui"
SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1, SHX78_1, SHX79_1, SHX80_1, SHX81_1, SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1 = SHX17_1(SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1)
SHX14_1(SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1, SHX78_1, SHX79_1, SHX80_1, SHX81_1, SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1)
SHX14_1 = RMenu
SHX14_1 = SHX14_1.Add
SHX15_1 = "lfb"
SHX16_1 = "tools"
SHX17_1 = RageUI
SHX17_1 = SHX17_1.CreateSubMenu
SHX18_1 = RMenu
SHX19_1 = SHX18_1
SHX18_1 = SHX18_1.Get
SHX20_1 = "lfb"
SHX21_1 = "main"
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX19_1 = ""
SHX20_1 = "LFB: ~b~Tools"
SHX21_1 = CMG
SHX21_1 = SHX21_1.getRageUIMenuWidth
SHX21_1 = SHX21_1()
SHX22_1 = CMG
SHX22_1 = SHX22_1.getRageUIMenuHeight
SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1, SHX78_1, SHX79_1, SHX80_1, SHX81_1, SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1 = SHX22_1()
SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1, SHX78_1, SHX79_1, SHX80_1, SHX81_1, SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1 = SHX17_1(SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1, SHX78_1, SHX79_1, SHX80_1, SHX81_1, SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1)
SHX14_1(SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1, SHX78_1, SHX79_1, SHX80_1, SHX81_1, SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1)
SHX14_1 = RMenu
SHX14_1 = SHX14_1.Add
SHX15_1 = "lfb"
SHX16_1 = "water"
SHX17_1 = RageUI
SHX17_1 = SHX17_1.CreateSubMenu
SHX18_1 = RMenu
SHX19_1 = SHX18_1
SHX18_1 = SHX18_1.Get
SHX20_1 = "lfb"
SHX21_1 = "main"
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX19_1 = ""
SHX20_1 = "LFB: ~b~Water"
SHX21_1 = CMG
SHX21_1 = SHX21_1.getRageUIMenuWidth
SHX21_1 = SHX21_1()
SHX22_1 = CMG
SHX22_1 = SHX22_1.getRageUIMenuHeight
SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1, SHX78_1, SHX79_1, SHX80_1, SHX81_1, SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1 = SHX22_1()
SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1, SHX78_1, SHX79_1, SHX80_1, SHX81_1, SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1 = SHX17_1(SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1, SHX78_1, SHX79_1, SHX80_1, SHX81_1, SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1)
SHX14_1(SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1, SHX78_1, SHX79_1, SHX80_1, SHX81_1, SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1)
SHX14_1 = RMenu
SHX14_1 = SHX14_1.Add
SHX15_1 = "lfb"
SHX16_1 = "ba"
SHX17_1 = RageUI
SHX17_1 = SHX17_1.CreateSubMenu
SHX18_1 = RMenu
SHX19_1 = SHX18_1
SHX18_1 = SHX18_1.Get
SHX20_1 = "lfb"
SHX21_1 = "main"
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX19_1 = ""
SHX20_1 = "LFB: ~b~BA"
SHX21_1 = CMG
SHX21_1 = SHX21_1.getRageUIMenuWidth
SHX21_1 = SHX21_1()
SHX22_1 = CMG
SHX22_1 = SHX22_1.getRageUIMenuHeight
SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1, SHX78_1, SHX79_1, SHX80_1, SHX81_1, SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1 = SHX22_1()
SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1, SHX78_1, SHX79_1, SHX80_1, SHX81_1, SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1 = SHX17_1(SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1, SHX78_1, SHX79_1, SHX80_1, SHX81_1, SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1)
SHX14_1(SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1, SHX78_1, SHX79_1, SHX80_1, SHX81_1, SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1)
SHX14_1 = RMenu
SHX14_1 = SHX14_1.Add
SHX15_1 = "lfb"
SHX16_1 = "firemain"
SHX17_1 = RageUI
SHX17_1 = SHX17_1.CreateMenu
SHX18_1 = ""
SHX19_1 = "Manage Fires"
SHX20_1 = CMG
SHX20_1 = SHX20_1.getRageUIMenuWidth
SHX20_1 = SHX20_1()
SHX21_1 = CMG
SHX21_1 = SHX21_1.getRageUIMenuHeight
SHX21_1 = SHX21_1()
SHX22_1 = "cmg_lfbui"
SHX23_1 = "cmg_lfbui"
SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1, SHX78_1, SHX79_1, SHX80_1, SHX81_1, SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1 = SHX17_1(SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1)
SHX14_1(SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1, SHX78_1, SHX79_1, SHX80_1, SHX81_1, SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1)
SHX14_1 = RMenu
SHX14_1 = SHX14_1.Add
SHX15_1 = "lfb"
SHX16_1 = "fire"
SHX17_1 = RageUI
SHX17_1 = SHX17_1.CreateSubMenu
SHX18_1 = RMenu
SHX19_1 = SHX18_1
SHX18_1 = SHX18_1.Get
SHX20_1 = "lfb"
SHX21_1 = "firemain"
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX19_1 = ""
SHX20_1 = "LFB: ~b~Start Fires"
SHX21_1 = CMG
SHX21_1 = SHX21_1.getRageUIMenuWidth
SHX21_1 = SHX21_1()
SHX22_1 = CMG
SHX22_1 = SHX22_1.getRageUIMenuHeight
SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1, SHX78_1, SHX79_1, SHX80_1, SHX81_1, SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1 = SHX22_1()
SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1, SHX78_1, SHX79_1, SHX80_1, SHX81_1, SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1 = SHX17_1(SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1, SHX78_1, SHX79_1, SHX80_1, SHX81_1, SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1)
SHX14_1(SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1, SHX78_1, SHX79_1, SHX80_1, SHX81_1, SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1)
SHX14_1 = RMenu
SHX14_1 = SHX14_1.Add
SHX15_1 = "lfb"
SHX16_1 = "management"
SHX17_1 = RageUI
SHX17_1 = SHX17_1.CreateSubMenu
SHX18_1 = RMenu
SHX19_1 = SHX18_1
SHX18_1 = SHX18_1.Get
SHX20_1 = "lfb"
SHX21_1 = "firemain"
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX19_1 = ""
SHX20_1 = "LFB: ~b~Manage Fires"
SHX21_1 = CMG
SHX21_1 = SHX21_1.getRageUIMenuWidth
SHX21_1 = SHX21_1()
SHX22_1 = CMG
SHX22_1 = SHX22_1.getRageUIMenuHeight
SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1, SHX78_1, SHX79_1, SHX80_1, SHX81_1, SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1 = SHX22_1()
SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1, SHX78_1, SHX79_1, SHX80_1, SHX81_1, SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1 = SHX17_1(SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1, SHX78_1, SHX79_1, SHX80_1, SHX81_1, SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1)
SHX14_1(SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1, SHX78_1, SHX79_1, SHX80_1, SHX81_1, SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1)
SHX14_1 = RMenu
SHX14_1 = SHX14_1.Add
SHX15_1 = "lfb"
SHX16_1 = "settings"
SHX17_1 = RageUI
SHX17_1 = SHX17_1.CreateSubMenu
SHX18_1 = RMenu
SHX19_1 = SHX18_1
SHX18_1 = SHX18_1.Get
SHX20_1 = "lfb"
SHX21_1 = "firemain"
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX19_1 = ""
SHX20_1 = "LFB: ~b~Settings"
SHX21_1 = CMG
SHX21_1 = SHX21_1.getRageUIMenuWidth
SHX21_1 = SHX21_1()
SHX22_1 = CMG
SHX22_1 = SHX22_1.getRageUIMenuHeight
SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1, SHX78_1, SHX79_1, SHX80_1, SHX81_1, SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1 = SHX22_1()
SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1, SHX78_1, SHX79_1, SHX80_1, SHX81_1, SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1 = SHX17_1(SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1, SHX78_1, SHX79_1, SHX80_1, SHX81_1, SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1)
SHX14_1(SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1, SHX78_1, SHX79_1, SHX80_1, SHX81_1, SHX82_1, SHX83_1, SHX84_1, SHX85_1, SHX86_1, SHX87_1, SHX88_1, SHX89_1, SHX90_1, SHX91_1)
SHX14_1 = RageUI
SHX14_1 = SHX14_1.CreateWhile
SHX15_1 = 1.0
SHX16_1 = RMenu
SHX17_1 = SHX16_1
SHX16_1 = SHX16_1.Get
SHX18_1 = "lfb"
SHX19_1 = "main"
SHX16_1 = SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX17_1 = nil
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "lfb"
  SHX4_2 = "main"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX3_2 = false
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
    SHX1_3 = "Tools"
    SHX2_3 = "View and use your LFB tools"
    SHX3_3 = {}
    SHX4_3 = RageUI
    SHX4_3 = SHX4_3.BadgeStyle
    SHX4_3 = SHX4_3.Key
    SHX3_3.RightBadge = SHX4_3
    SHX4_3 = true
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
    end
    SHX6_3 = RMenu
    SHX7_3 = SHX6_3
    SHX6_3 = SHX6_3.Get
    SHX8_3 = "lfb"
    SHX9_3 = "tools"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Water"
    SHX2_3 = "Manage your hose and water supply"
    SHX3_3 = {}
    SHX4_3 = RageUI
    SHX4_3 = SHX4_3.BadgeStyle
    SHX4_3 = SHX4_3.Key
    SHX3_3.RightBadge = SHX4_3
    SHX4_3 = true
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
    end
    SHX6_3 = RMenu
    SHX7_3 = SHX6_3
    SHX6_3 = SHX6_3.Get
    SHX8_3 = "lfb"
    SHX9_3 = "water"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "BA"
    SHX2_3 = "Manage your BA"
    SHX3_3 = {}
    SHX4_3 = RageUI
    SHX4_3 = SHX4_3.BadgeStyle
    SHX4_3 = SHX4_3.Key
    SHX3_3.RightBadge = SHX4_3
    SHX4_3 = true
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
    end
    SHX6_3 = RMenu
    SHX7_3 = SHX6_3
    SHX6_3 = SHX6_3.Get
    SHX8_3 = "lfb"
    SHX9_3 = "ba"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
  end
  function SHX6_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "lfb"
  SHX4_2 = "tools"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX3_2 = false
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
    SHX1_3 = "Setup Decontamination Tent"
    SHX2_3 = "Setup a decontamination tent"
    SHX3_3 = {}
    SHX3_3.RightLabel = ""
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
        SHX3_4 = SHX9_1
        SHX4_4 = true
        SHX3_4(SHX4_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Remove Decontamination Tent"
    SHX2_3 = "Remove a decontamination tent"
    SHX3_3 = {}
    SHX3_3.RightLabel = ""
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
        SHX3_4 = SHX9_1
        SHX4_4 = false
        SHX3_4(SHX4_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Setup Rescue Cushion"
    SHX2_3 = "Setup a rescue cushion"
    SHX3_3 = {}
    SHX3_3.RightLabel = ""
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
        SHX3_4 = SHX12_1
        SHX4_4 = true
        SHX3_4(SHX4_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Remove Rescue Cushion"
    SHX2_3 = "Remove a rescue cushion"
    SHX3_3 = {}
    SHX3_3.RightLabel = ""
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
        SHX3_4 = SHX12_1
        SHX4_4 = false
        SHX3_4(SHX4_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = SHX13_1
    if SHX0_3 then
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.ButtonWithStyle
      SHX1_3 = "Remove Spreaders"
      SHX2_3 = "Remove vehicle spreaders"
      SHX3_3 = {}
      SHX3_3.RightLabel = ""
      SHX4_3 = true
      function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4
        if SHX2_4 then
          SHX3_4 = SHX8_1
          SHX3_4()
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    else
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.ButtonWithStyle
      SHX1_3 = "Use Spreaders"
      SHX2_3 = "Use vehicle spreaders"
      SHX3_3 = {}
      SHX3_3.RightLabel = ""
      SHX4_3 = true
      function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4
        if SHX2_4 then
          SHX3_4 = SHX8_1
          SHX3_4()
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    end
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Setup Stabilisers"
    SHX2_3 = "Setup vehicle stabilisers"
    SHX3_3 = {}
    SHX3_3.RightLabel = ""
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
        SHX3_4 = SHX5_1
        SHX4_4 = true
        SHX3_4(SHX4_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Remove Stabilisers"
    SHX2_3 = "Remove vehicle stabilisers"
    SHX3_3 = {}
    SHX3_3.RightLabel = ""
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
        SHX3_4 = SHX5_1
        SHX4_4 = false
        SHX3_4(SHX4_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Setup extractor fan"
    SHX2_3 = "Setup an extractor fan"
    SHX3_3 = {}
    SHX3_3.RightLabel = ""
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
        SHX3_4 = SHX3_1
        SHX4_4 = true
        SHX3_4(SHX4_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Remove extractor fan"
    SHX2_3 = "Remove an extractor fan"
    SHX3_3 = {}
    SHX3_3.RightLabel = ""
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
        SHX3_4 = SHX3_1
        SHX4_4 = false
        SHX3_4(SHX4_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Setup inflatable jack"
    SHX2_3 = "Setup an inflatable jack"
    SHX3_3 = {}
    SHX3_3.RightLabel = ""
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
        SHX3_4 = SHX6_1
        SHX4_4 = true
        SHX3_4(SHX4_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Remove inflatable jack"
    SHX2_3 = "Remove an inflatable jack"
    SHX3_3 = {}
    SHX3_3.RightLabel = ""
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
        SHX3_4 = SHX6_1
        SHX4_4 = false
        SHX3_4(SHX4_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Setup wheel chocks"
    SHX2_3 = "Setup wheel chocks"
    SHX3_3 = {}
    SHX3_3.RightLabel = ""
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
        SHX3_4 = SHX4_1
        SHX4_4 = true
        SHX3_4(SHX4_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Remove wheel chocks"
    SHX2_3 = "Remove wheel chocks"
    SHX3_3 = {}
    SHX3_3.RightLabel = ""
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
        SHX3_4 = SHX4_1
        SHX4_4 = false
        SHX3_4(SHX4_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Collect Ladder"
    SHX2_3 = "Collect a ladder from a nearby fire engine"
    SHX3_3 = {}
    SHX3_3.RightLabel = ""
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
        SHX3_4 = ExecuteCommand
        SHX4_4 = "ladder collect"
        SHX3_4(SHX4_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Store Ladder"
    SHX2_3 = "Store a ladder in a nearby fire engine"
    SHX3_3 = {}
    SHX3_3.RightLabel = ""
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
        SHX3_4 = ExecuteCommand
        SHX4_4 = "ladder store"
        SHX3_4(SHX4_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Use a throw bag"
    SHX2_3 = "Use a throw bag"
    SHX3_3 = {}
    SHX3_3.RightLabel = ""
    SHX4_3 = true
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4
      if SHX2_4 then
        SHX3_4 = false
        if SHX3_4 then
          SHX3_4 = SHX7_1
          SHX3_4()
        end
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
  end
  function SHX6_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "lfb"
  SHX4_2 = "water"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX3_2 = false
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
    SHX1_3 = "Get Fire Hose"
    SHX2_3 = "Get a fire hose"
    SHX3_3 = {}
    SHX3_3.RightLabel = ""
    SHX4_3 = true
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4
      if SHX2_4 then
        SHX3_4 = GiveWeaponToPed
        SHX4_4 = PlayerPedId
        SHX4_4 = SHX4_4()
        SHX5_4 = -1554970529
        SHX6_4 = 0
        SHX7_4 = false
        SHX8_4 = true
        SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Setup Supply Line"
    SHX2_3 = "Setup a supply line"
    SHX3_3 = {}
    SHX3_3.RightLabel = ""
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
        SHX3_4 = SHX11_1
        SHX4_4 = true
        SHX3_4(SHX4_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Remove Supply Line"
    SHX2_3 = "Remove a supply line"
    SHX3_3 = {}
    SHX3_3.RightLabel = ""
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
        SHX3_4 = SHX11_1
        SHX4_4 = false
        SHX3_4(SHX4_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Setup Water Monitor"
    SHX2_3 = "Setup a water monitor"
    SHX3_3 = {}
    SHX3_3.RightLabel = ""
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
        SHX3_4 = SHX10_1
        SHX4_4 = true
        SHX3_4(SHX4_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Remove Water Monitor"
    SHX2_3 = "Remove a water monitor"
    SHX3_3 = {}
    SHX3_3.RightLabel = ""
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
        SHX3_4 = SHX10_1
        SHX4_4 = false
        SHX3_4(SHX4_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
  end
  function SHX6_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "lfb"
  SHX4_2 = "ba"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX3_2 = false
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
    SHX1_3 = "Remove BA"
    SHX2_3 = "Removes your BA"
    SHX3_3 = {}
    SHX3_3.RightLabel = ""
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
        SHX3_4 = CMG
        SHX3_4 = SHX3_4.loadCustomisationPreset
        SHX4_4 = "NoBreathingApperatus"
        SHX3_4(SHX4_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "BA Down"
    SHX2_3 = "Puts your BA down"
    SHX3_3 = {}
    SHX3_3.RightLabel = ""
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
        SHX3_4 = CMG
        SHX3_4 = SHX3_4.getModelGender
        SHX3_4 = SHX3_4()
        if "male" == SHX3_4 then
          SHX3_4 = CMG
          SHX3_4 = SHX3_4.loadCustomisationPreset
          SHX4_4 = "BreathingApperatusDown"
          SHX3_4(SHX4_4)
        else
          SHX3_4 = CMG
          SHX3_4 = SHX3_4.loadCustomisationPreset
          SHX4_4 = "BreathingApperatusDownFemale"
          SHX3_4(SHX4_4)
        end
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "BA Up"
    SHX2_3 = "Puts your BA up"
    SHX3_3 = {}
    SHX3_3.RightLabel = ""
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
        SHX3_4 = CMG
        SHX3_4 = SHX3_4.getModelGender
        SHX3_4 = SHX3_4()
        if "male" == SHX3_4 then
          SHX3_4 = CMG
          SHX3_4 = SHX3_4.loadCustomisationPreset
          SHX4_4 = "BreathingApperatusUp"
          SHX3_4(SHX4_4)
        else
          SHX3_4 = CMG
          SHX3_4 = SHX3_4.loadCustomisationPreset
          SHX4_4 = "BreathingApperatusUpFemale"
          SHX3_4(SHX4_4)
        end
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
  end
  function SHX6_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
end
SHX14_1(SHX15_1, SHX16_1, SHX17_1, SHX18_1)
SHX14_1 = {}
SHX14_1.fireType = 1
SHX14_1.size = 1
SHX15_1 = {}
SHX16_1 = {}
SHX16_1.dict = "core"
SHX16_1.name = "ent_ray_meth_fires"
SHX16_1.smoke = false
SHX16_1.smokeType = "normal"
SHX16_1.chance = 30
SHX15_1.normal = SHX16_1
SHX16_1 = {}
SHX16_1.dict = "scr_trevor3"
SHX16_1.name = "scr_trev3_trailer_plume"
SHX16_1.smoke = false
SHX16_1.smokeType = "normal"
SHX16_1.chance = 30
SHX15_1.normal2 = SHX16_1
SHX16_1 = {}
SHX16_1.dict = "scr_michael2"
SHX16_1.name = "scr_mich3_heli_fire"
SHX16_1.smoke = false
SHX16_1.smokeType = "normal"
SHX16_1.chance = 20
SHX15_1.bonfire = SHX16_1
SHX16_1 = {}
SHX16_1.dict = "core"
SHX16_1.name = "fire_petroltank_truck"
SHX16_1.smoke = false
SHX16_1.smokeType = "normal"
SHX16_1.chance = 20
SHX15_1.chemical = SHX16_1
SHX16_1 = {}
SHX16_1.dict = "core"
SHX16_1.name = "fire_petroltank_truck"
SHX16_1.smoke = true
SHX16_1.smokeType = "electrical"
SHX16_1.chance = 20
SHX15_1.electrical = SHX16_1
SHX16_1 = {}
SHX17_1 = pairs
SHX18_1 = SHX15_1
SHX17_1, SHX18_1, SHX19_1, SHX20_1 = SHX17_1(SHX18_1)
for SHX21_1 in SHX17_1, SHX18_1, SHX19_1, SHX20_1 do
  SHX22_1 = table
  SHX22_1 = SHX22_1.insert
  SHX23_1 = SHX16_1
  SHX24_1 = SHX21_1
  SHX22_1(SHX23_1, SHX24_1)
end
SHX17_1 = {}
SHX18_1 = 1.0
SHX19_1 = 2.0
SHX20_1 = 3.0
SHX21_1 = 4.0
SHX22_1 = 5.0
SHX23_1 = 6.0
SHX24_1 = 7.0
SHX25_1 = 8.0
SHX26_1 = 9.0
SHX27_1 = 10.0
SHX17_1[1] = SHX18_1
SHX17_1[2] = SHX19_1
SHX17_1[3] = SHX20_1
SHX17_1[4] = SHX21_1
SHX17_1[5] = SHX22_1
SHX17_1[6] = SHX23_1
SHX17_1[7] = SHX24_1
SHX17_1[8] = SHX25_1
SHX17_1[9] = SHX26_1
SHX17_1[10] = SHX27_1
SHX18_1 = {}
SHX19_1 = 1
SHX20_1 = 2
SHX21_1 = 3
SHX22_1 = 4
SHX23_1 = 5
SHX24_1 = 6
SHX25_1 = 7
SHX26_1 = 8
SHX27_1 = 9
SHX28_1 = 10
SHX29_1 = 11
SHX30_1 = 12
SHX31_1 = 13
SHX32_1 = 14
SHX33_1 = 15
SHX34_1 = 16
SHX35_1 = 17
SHX36_1 = 18
SHX37_1 = 19
SHX38_1 = 20
SHX39_1 = 21
SHX40_1 = 22
SHX41_1 = 23
SHX42_1 = 24
SHX43_1 = 25
SHX44_1 = 26
SHX45_1 = 27
SHX46_1 = 28
SHX47_1 = 29
SHX48_1 = 30
SHX18_1[1] = SHX19_1
SHX18_1[2] = SHX20_1
SHX18_1[3] = SHX21_1
SHX18_1[4] = SHX22_1
SHX18_1[5] = SHX23_1
SHX18_1[6] = SHX24_1
SHX18_1[7] = SHX25_1
SHX18_1[8] = SHX26_1
SHX18_1[9] = SHX27_1
SHX18_1[10] = SHX28_1
SHX18_1[11] = SHX29_1
SHX18_1[12] = SHX30_1
SHX18_1[13] = SHX31_1
SHX18_1[14] = SHX32_1
SHX18_1[15] = SHX33_1
SHX18_1[16] = SHX34_1
SHX18_1[17] = SHX35_1
SHX18_1[18] = SHX36_1
SHX18_1[19] = SHX37_1
SHX18_1[20] = SHX38_1
SHX18_1[21] = SHX39_1
SHX18_1[22] = SHX40_1
SHX18_1[23] = SHX41_1
SHX18_1[24] = SHX42_1
SHX18_1[25] = SHX43_1
SHX18_1[26] = SHX44_1
SHX18_1[27] = SHX45_1
SHX18_1[28] = SHX46_1
SHX18_1[29] = SHX47_1
SHX18_1[30] = SHX48_1
SHX19_1 = true
SHX20_1 = 8
SHX21_1 = 5.0
SHX22_1 = 5
SHX23_1 = 8
function SHX24_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.generateUUID
  SHX1_2 = "fire"
  SHX2_2 = 20
  SHX3_2 = "alphanumeric"
  return SHX0_2(SHX1_2, SHX2_2, SHX3_2)
end
SHX25_1 = RageUI
SHX25_1 = SHX25_1.CreateWhile
SHX26_1 = 1.0
SHX27_1 = RMenu
SHX28_1 = SHX27_1
SHX27_1 = SHX27_1.Get
SHX29_1 = "lfb"
SHX30_1 = "firemain"
SHX27_1 = SHX27_1(SHX28_1, SHX29_1, SHX30_1)
SHX28_1 = nil
function SHX29_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "lfb"
  SHX4_2 = "firemain"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX3_2 = false
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
    SHX1_3 = "Start Fires"
    SHX2_3 = "Start Fires"
    SHX3_3 = {}
    SHX4_3 = RageUI
    SHX4_3 = SHX4_3.BadgeStyle
    SHX4_3 = SHX4_3.Key
    SHX3_3.RightBadge = SHX4_3
    SHX4_3 = true
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
    end
    SHX6_3 = RMenu
    SHX7_3 = SHX6_3
    SHX6_3 = SHX6_3.Get
    SHX8_3 = "lfb"
    SHX9_3 = "fire"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Call Settings"
    SHX2_3 = "Manage fire call settings"
    SHX3_3 = {}
    SHX4_3 = RageUI
    SHX4_3 = SHX4_3.BadgeStyle
    SHX4_3 = SHX4_3.Key
    SHX3_3.RightBadge = SHX4_3
    SHX4_3 = true
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
    end
    SHX6_3 = RMenu
    SHX7_3 = SHX6_3
    SHX6_3 = SHX6_3.Get
    SHX8_3 = "lfb"
    SHX9_3 = "settings"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Manage Fires"
    SHX2_3 = "Manage Fires"
    SHX3_3 = {}
    SHX4_3 = RageUI
    SHX4_3 = SHX4_3.BadgeStyle
    SHX4_3 = SHX4_3.Key
    SHX3_3.RightBadge = SHX4_3
    SHX4_3 = true
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
    end
    SHX6_3 = RMenu
    SHX7_3 = SHX6_3
    SHX6_3 = SHX6_3.Get
    SHX8_3 = "lfb"
    SHX9_3 = "management"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
  end
  function SHX6_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "lfb"
  SHX4_2 = "settings"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX3_2 = false
  SHX4_2 = true
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Checkbox
    SHX1_3 = "Toggle Automatic Fires"
    SHX2_3 = "Toggle automatic fire calls"
    SHX3_3 = SHX19_1
    SHX4_3 = {}
    function SHX5_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      SHX19_1 = SHX3_4
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.List
    SHX1_3 = "Automatic Fires Size"
    SHX2_3 = SHX17_1
    SHX3_3 = SHX22_1
    SHX4_3 = nil
    SHX5_3 = {}
    SHX6_3 = true
    function SHX7_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX4_4, SHX5_4
      if SHX1_4 then
        SHX22_1 = SHX3_4
        SHX5_4 = SHX22_1
        SHX4_4 = SHX17_1
        SHX4_4 = SHX4_4[SHX5_4]
        SHX21_1 = SHX4_4
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.List
    SHX1_3 = "Fire Cooldown (minutes)"
    SHX2_3 = SHX18_1
    SHX3_3 = SHX23_1
    SHX4_3 = nil
    SHX5_3 = {}
    SHX6_3 = true
    function SHX7_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX4_4, SHX5_4
      if SHX1_4 then
        SHX23_1 = SHX3_4
        SHX5_4 = SHX23_1
        SHX4_4 = SHX18_1
        SHX4_4 = SHX4_4[SHX5_4]
        SHX20_1 = SHX4_4
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Button
    SHX1_3 = "Save Options"
    SHX2_3 = nil
    SHX3_3 = true
    function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4
      if SHX2_4 then
        SHX3_4 = TriggerServerEvent
        SHX4_4 = "ba1852bd6b"
        SHX5_4 = SHX19_1
        SHX6_4 = SHX21_1
        SHX7_4 = SHX20_1
        SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
  end
  function SHX6_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "lfb"
  SHX4_2 = "management"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX3_2 = false
  SHX4_2 = true
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Button
    SHX1_3 = "Stop Nearby Fires"
    SHX2_3 = nil
    SHX3_3 = true
    function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4
      if SHX2_4 then
        SHX3_4 = TriggerServerEvent
        SHX4_4 = "f4afe89b21"
        SHX3_4(SHX4_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Button
    SHX1_3 = "Stop All Fires"
    SHX2_3 = nil
    SHX3_3 = true
    function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4
      if SHX2_4 then
        SHX3_4 = TriggerServerEvent
        SHX4_4 = "7fb00d47e4"
        SHX3_4(SHX4_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
  end
  function SHX6_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "lfb"
  SHX4_2 = "fire"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX3_2 = false
  SHX4_2 = true
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.List
    SHX1_3 = "Fire Type"
    SHX2_3 = SHX16_1
    SHX3_3 = SHX14_1.fireType
    SHX4_3 = nil
    SHX5_3 = {}
    SHX6_3 = true
    function SHX7_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      if SHX1_4 then
        SHX14_1.fireType = SHX3_4
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.List
    SHX1_3 = "Fire Size"
    SHX2_3 = SHX17_1
    SHX3_3 = SHX14_1.size
    SHX4_3 = nil
    SHX5_3 = {}
    SHX6_3 = true
    function SHX7_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      if SHX1_4 then
        SHX14_1.size = SHX3_4
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Button
    SHX1_3 = "Start Fire"
    SHX2_3 = nil
    SHX3_3 = true
    function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4, SHX12_4
      if SHX2_4 then
        SHX3_4 = SHX24_1
        SHX3_4 = SHX3_4()
        SHX4_4 = CMG
        SHX4_4 = SHX4_4.getPlayerCoords
        SHX4_4 = SHX4_4()
        SHX5_4 = {}
        SHX5_4.coords = SHX4_4
        SHX7_4 = SHX14_1.size
        SHX6_4 = SHX17_1
        SHX6_4 = SHX6_4[SHX7_4]
        SHX5_4.size = SHX6_4
        SHX7_4 = SHX14_1.fireType
        SHX6_4 = SHX16_1
        SHX6_4 = SHX6_4[SHX7_4]
        SHX5_4.type = SHX6_4
        SHX5_4.active = false
        SHX6_4 = TriggerServerEvent
        SHX7_4 = "52c48511f6"
        SHX8_4 = SHX3_4
        SHX9_4 = SHX5_4
        SHX10_4 = false
        SHX11_4 = false
        SHX12_4 = true
        SHX6_4(SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4, SHX12_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
  end
  function SHX6_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
end
SHX25_1(SHX26_1, SHX27_1, SHX28_1, SHX29_1)
SHX25_1 = RegisterNetEvent
SHX26_1 = "0630e1e706"
function SHX27_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.CloseAll
  SHX0_2()
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Visible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "lfb"
  SHX4_2 = "tools"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Visible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "lfb"
  SHX4_2 = "main"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Visible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "lfb"
  SHX4_2 = "water"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Visible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "lfb"
  SHX4_2 = "main"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
end
SHX25_1(SHX26_1, SHX27_1)
SHX25_1 = TriggerServerEvent
SHX26_1 = "bae34c691a"
SHX25_1(SHX26_1)
SHX25_1 = {}
SHX26_1 = {}
SHX27_1 = {}
SHX28_1 = {}
SHX29_1 = {}
SHX30_1 = {}
SHX31_1 = {}
SHX32_1 = {}
SHX33_1 = {}
function SHX34_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX25_1
  SHX1_2 = SHX1_2[SHX0_2]
  SHX1_2 = SHX1_2.handle
  if nil ~= SHX1_2 then
    SHX1_2 = StopParticleFxLooped
    SHX2_2 = SHX25_1
    SHX2_2 = SHX2_2[SHX0_2]
    SHX2_2 = SHX2_2.handle
    SHX3_2 = false
    SHX1_2(SHX2_2, SHX3_2)
  end
  SHX1_2 = SHX25_1
  SHX1_2 = SHX1_2[SHX0_2]
  SHX2_2 = SHX1_2.type
  SHX1_2 = SHX15_1
  SHX1_2 = SHX1_2[SHX2_2]
  SHX1_2 = SHX1_2.smoke
  if SHX1_2 then
    SHX1_2 = SHX25_1
    SHX1_2 = SHX1_2[SHX0_2]
    SHX1_2 = SHX1_2.smokeHandle
    if nil ~= SHX1_2 then
      SHX1_2 = StopParticleFxLooped
      SHX2_2 = SHX25_1
      SHX2_2 = SHX2_2[SHX0_2]
      SHX2_2 = SHX2_2.smokeHandle
      SHX3_2 = false
      SHX1_2(SHX2_2, SHX3_2)
    end
  end
  SHX1_2 = SHX25_1
  SHX1_2 = SHX1_2[SHX0_2]
  SHX1_2.active = false
end
SHX35_1 = RegisterNetEvent
SHX36_1 = "7a8883ddd6"
function SHX37_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = pairs
  SHX1_2 = SHX25_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX5_2.active
    if SHX6_2 then
      SHX6_2 = SHX34_1
      SHX7_2 = SHX4_2
      SHX6_2(SHX7_2)
    end
    SHX6_2 = SHX25_1
    SHX6_2[SHX4_2] = nil
  end
  SHX0_2 = {}
  SHX25_1 = SHX0_2
end
SHX35_1(SHX36_1, SHX37_1)
SHX35_1 = {}
SHX36_1 = {}
SHX36_1.dict = ""
SHX36_1.name = ""
SHX35_1.normal = SHX36_1
SHX36_1 = {}
SHX36_1.dict = "core"
SHX36_1.name = "ent_amb_elec_crackle"
SHX35_1.electrical = SHX36_1
SHX36_1 = RegisterNetEvent
SHX37_1 = "8797322ab7"
function SHX38_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX3_2 = RageUI
  SHX3_2 = SHX3_2.CloseAll
  SHX3_2()
  SHX3_2 = RageUI
  SHX3_2 = SHX3_2.Visible
  SHX4_2 = RMenu
  SHX5_2 = SHX4_2
  SHX4_2 = SHX4_2.Get
  SHX6_2 = "lfb"
  SHX7_2 = "tools"
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX5_2 = false
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = RageUI
  SHX3_2 = SHX3_2.Visible
  SHX4_2 = RMenu
  SHX5_2 = SHX4_2
  SHX4_2 = SHX4_2.Get
  SHX6_2 = "lfb"
  SHX7_2 = "main"
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX5_2 = false
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = RageUI
  SHX3_2 = SHX3_2.Visible
  SHX4_2 = RMenu
  SHX5_2 = SHX4_2
  SHX4_2 = SHX4_2.Get
  SHX6_2 = "lfb"
  SHX7_2 = "water"
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX5_2 = false
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = RageUI
  SHX3_2 = SHX3_2.Visible
  SHX4_2 = RMenu
  SHX5_2 = SHX4_2
  SHX4_2 = SHX4_2.Get
  SHX6_2 = "lfb"
  SHX7_2 = "fire"
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX5_2 = false
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = RageUI
  SHX3_2 = SHX3_2.Visible
  SHX4_2 = RMenu
  SHX5_2 = SHX4_2
  SHX4_2 = SHX4_2.Get
  SHX6_2 = "lfb"
  SHX7_2 = "management"
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX5_2 = false
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = RageUI
  SHX3_2 = SHX3_2.Visible
  SHX4_2 = RMenu
  SHX5_2 = SHX4_2
  SHX4_2 = SHX4_2.Get
  SHX6_2 = "lfb"
  SHX7_2 = "settings"
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX5_2 = false
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = RageUI
  SHX3_2 = SHX3_2.Visible
  SHX4_2 = RMenu
  SHX5_2 = SHX4_2
  SHX4_2 = SHX4_2.Get
  SHX6_2 = "lfb"
  SHX7_2 = "firemain"
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX5_2 = true
  SHX3_2(SHX4_2, SHX5_2)
  SHX19_1 = SHX0_2
  SHX20_1 = SHX1_2
  SHX21_1 = SHX2_2
end
SHX36_1(SHX37_1, SHX38_1)
SHX36_1 = {}
function SHX37_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX0_2 = pairs
  SHX1_2 = SHX27_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX5_2 = SHX27_1
    SHX5_2 = SHX5_2[SHX4_2]
    SHX5_2 = SHX5_2[4]
    if SHX5_2 then
      SHX5_2 = UseParticleFxAsset
      SHX6_2 = "core"
      SHX5_2(SHX6_2)
      SHX5_2 = SetParticleFxShootoutBoat
      SHX6_2 = 1
      SHX5_2(SHX6_2)
      SHX5_2 = SHX27_1
      SHX5_2 = SHX5_2[SHX4_2]
      SHX5_2 = SHX5_2[2]
      SHX6_2 = SHX36_1
      SHX7_2 = {}
      SHX6_2[SHX4_2] = SHX7_2
      SHX6_2 = SHX36_1
      SHX6_2 = SHX6_2[SHX4_2]
      SHX7_2 = StartParticleFxLoopedAtCoord
      SHX8_2 = "water_cannon_jet"
      SHX9_2 = SHX5_2.x
      SHX9_2 = SHX9_2 + 0.0
      SHX10_2 = SHX5_2.y
      SHX10_2 = SHX10_2 + 0.0
      SHX11_2 = SHX5_2.z
      SHX11_2 = SHX11_2 + 0.7
      SHX12_2 = 50.0
      SHX13_2 = 0.0
      SHX14_2 = SHX27_1
      SHX14_2 = SHX14_2[SHX4_2]
      SHX14_2 = SHX14_2[3]
      SHX15_2 = 1.0
      SHX16_2 = false
      SHX17_2 = false
      SHX18_2 = false
      SHX19_2 = false
      SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
      SHX6_2.handle = SHX7_2
      SHX6_2 = SHX36_1
      SHX6_2 = SHX6_2[SHX4_2]
      SHX7_2 = StartParticleFxLoopedAtCoord
      SHX8_2 = "water_cannon_spray"
      SHX9_2 = SHX5_2.x
      SHX9_2 = SHX9_2 + 0.0
      SHX10_2 = SHX5_2.y
      SHX10_2 = SHX10_2 + 0.0
      SHX11_2 = SHX5_2.z
      SHX11_2 = SHX11_2 + 0.7
      SHX12_2 = 50.0
      SHX13_2 = 0.0
      SHX14_2 = SHX27_1
      SHX14_2 = SHX14_2[SHX4_2]
      SHX14_2 = SHX14_2[3]
      SHX15_2 = 1.0
      SHX16_2 = false
      SHX17_2 = false
      SHX18_2 = false
      SHX19_2 = false
      SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
      SHX6_2.handle2 = SHX7_2
      SHX6_2 = SHX36_1
      SHX6_2 = SHX6_2[SHX4_2]
      SHX6_2.pitch = 50.0
    end
  end
end
SHX38_1 = RegisterNetEvent
SHX39_1 = "361aa1a3e6"
function SHX40_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX9_2
  SHX25_1 = SHX0_2
  SHX26_1 = SHX1_2
  SHX27_1 = SHX2_2
  SHX28_1 = SHX3_2
  SHX9_2 = SHX29_1
  SHX29_1 = SHX9_2
  SHX30_1 = SHX5_2
  SHX31_1 = SHX6_2
  SHX32_1 = SHX7_2
  SHX33_1 = SHX8_2
  SHX9_2 = SHX37_1
  SHX9_2()
end
SHX38_1(SHX39_1, SHX40_1)
function SHX38_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX25_1
  SHX1_2 = SHX1_2[SHX0_2]
  SHX1_2 = SHX1_2.handle
  if nil ~= SHX1_2 then
    SHX1_2 = DoesParticleFxLoopedExist
    SHX2_2 = SHX25_1
    SHX2_2 = SHX2_2[SHX0_2]
    SHX2_2 = SHX2_2.handle
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = SetParticleFxLoopedScale
      SHX2_2 = SHX25_1
      SHX2_2 = SHX2_2[SHX0_2]
      SHX2_2 = SHX2_2.handle
      SHX3_2 = SHX25_1
      SHX3_2 = SHX3_2[SHX0_2]
      SHX3_2 = SHX3_2.size
      SHX1_2(SHX2_2, SHX3_2)
    end
  end
end
SHX39_1 = RegisterNetEvent
SHX40_1 = "1d32bc1425"
function SHX41_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2
  if SHX2_2 then
    SHX4_2 = SHX25_1
    SHX4_2 = SHX4_2[SHX0_2]
    if nil ~= SHX4_2 then
      SHX4_2 = SHX25_1
      SHX4_2 = SHX4_2[SHX0_2]
      SHX4_2 = SHX4_2.active
      if nil ~= SHX4_2 then
        SHX4_2 = SHX25_1
        SHX4_2 = SHX4_2[SHX0_2]
        SHX4_2 = SHX4_2.active
        if SHX4_2 then
          SHX4_2 = SHX34_1
          SHX5_2 = SHX0_2
          SHX4_2(SHX5_2)
        end
      end
    end
    SHX4_2 = SHX25_1
    SHX4_2[SHX0_2] = nil
    return
  end
  if SHX3_2 then
    SHX4_2 = SHX25_1
    SHX4_2 = SHX4_2[SHX0_2]
    if nil ~= SHX4_2 then
      SHX4_2 = SHX1_2.size
      if nil ~= SHX4_2 then
        SHX4_2 = SHX25_1
        SHX4_2 = SHX4_2[SHX0_2]
        SHX5_2 = SHX1_2.size
        SHX4_2.size = SHX5_2
      end
    end
    SHX4_2 = SHX25_1
    SHX4_2 = SHX4_2[SHX0_2]
    if nil ~= SHX4_2 then
      SHX4_2 = SHX25_1
      SHX4_2 = SHX4_2[SHX0_2]
      SHX4_2 = SHX4_2.active
      if SHX4_2 then
        SHX4_2 = SHX38_1
        SHX5_2 = SHX0_2
        SHX4_2(SHX5_2)
      end
    end
  else
    SHX4_2 = SHX25_1
    SHX4_2[SHX0_2] = SHX1_2
  end
end
SHX39_1(SHX40_1, SHX41_1)
function SHX39_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX1_2 = SHX25_1
  SHX1_2 = SHX1_2[SHX0_2]
  SHX1_2.active = true
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadPtfx
  SHX2_2 = SHX25_1
  SHX2_2 = SHX2_2[SHX0_2]
  SHX3_2 = SHX2_2.type
  SHX2_2 = SHX15_1
  SHX2_2 = SHX2_2[SHX3_2]
  SHX2_2 = SHX2_2.dict
  SHX1_2(SHX2_2)
  SHX1_2 = UseParticleFxAsset
  SHX2_2 = SHX25_1
  SHX2_2 = SHX2_2[SHX0_2]
  SHX3_2 = SHX2_2.type
  SHX2_2 = SHX15_1
  SHX2_2 = SHX2_2[SHX3_2]
  SHX2_2 = SHX2_2.dict
  SHX1_2(SHX2_2)
  SHX1_2 = {}
  SHX2_2 = 0.0
  SHX3_2 = 0.0
  SHX4_2 = 0.0
  SHX1_2[1] = SHX2_2
  SHX1_2[2] = SHX3_2
  SHX1_2[3] = SHX4_2
  SHX2_2 = SHX25_1
  SHX2_2 = SHX2_2[SHX0_2]
  SHX3_2 = StartParticleFxLoopedAtCoord
  SHX4_2 = SHX25_1
  SHX4_2 = SHX4_2[SHX0_2]
  SHX5_2 = SHX4_2.type
  SHX4_2 = SHX15_1
  SHX4_2 = SHX4_2[SHX5_2]
  SHX4_2 = SHX4_2.name
  SHX5_2 = SHX25_1
  SHX5_2 = SHX5_2[SHX0_2]
  SHX5_2 = SHX5_2.coords
  SHX5_2 = SHX5_2.x
  SHX6_2 = SHX25_1
  SHX6_2 = SHX6_2[SHX0_2]
  SHX6_2 = SHX6_2.coords
  SHX6_2 = SHX6_2.y
  SHX7_2 = SHX25_1
  SHX7_2 = SHX7_2[SHX0_2]
  SHX7_2 = SHX7_2.coords
  SHX7_2 = SHX7_2.z
  SHX8_2 = SHX1_2[1]
  SHX9_2 = SHX1_2[2]
  SHX10_2 = SHX1_2[3]
  SHX11_2 = SHX25_1
  SHX11_2 = SHX11_2[SHX0_2]
  SHX11_2 = SHX11_2.size
  SHX12_2 = false
  SHX13_2 = false
  SHX14_2 = false
  SHX15_2 = false
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX2_2.handle = SHX3_2
  SHX2_2 = SHX25_1
  SHX2_2 = SHX2_2[SHX0_2]
  SHX3_2 = SHX2_2.type
  SHX2_2 = SHX15_1
  SHX2_2 = SHX2_2[SHX3_2]
  SHX2_2 = SHX2_2.smoke
  if SHX2_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.loadPtfx
    SHX3_2 = SHX25_1
    SHX3_2 = SHX3_2[SHX0_2]
    SHX4_2 = SHX3_2.type
    SHX3_2 = SHX15_1
    SHX3_2 = SHX3_2[SHX4_2]
    SHX4_2 = SHX3_2.smokeType
    SHX3_2 = SHX35_1
    SHX3_2 = SHX3_2[SHX4_2]
    SHX3_2 = SHX3_2.dict
    SHX2_2(SHX3_2)
    SHX2_2 = UseParticleFxAsset
    SHX3_2 = SHX25_1
    SHX3_2 = SHX3_2[SHX0_2]
    SHX4_2 = SHX3_2.type
    SHX3_2 = SHX15_1
    SHX3_2 = SHX3_2[SHX4_2]
    SHX4_2 = SHX3_2.smokeType
    SHX3_2 = SHX35_1
    SHX3_2 = SHX3_2[SHX4_2]
    SHX3_2 = SHX3_2.dict
    SHX2_2(SHX3_2)
    SHX2_2 = SHX25_1
    SHX2_2 = SHX2_2[SHX0_2]
    SHX2_2 = SHX2_2.size
    SHX2_2 = SHX2_2 * 2
    SHX3_2 = SHX25_1
    SHX3_2 = SHX3_2[SHX0_2]
    SHX4_2 = StartParticleFxLoopedAtCoord
    SHX5_2 = SHX25_1
    SHX5_2 = SHX5_2[SHX0_2]
    SHX6_2 = SHX5_2.type
    SHX5_2 = SHX15_1
    SHX5_2 = SHX5_2[SHX6_2]
    SHX6_2 = SHX5_2.smokeType
    SHX5_2 = SHX35_1
    SHX5_2 = SHX5_2[SHX6_2]
    SHX5_2 = SHX5_2.name
    SHX6_2 = SHX25_1
    SHX6_2 = SHX6_2[SHX0_2]
    SHX6_2 = SHX6_2.coords
    SHX6_2 = SHX6_2.x
    SHX7_2 = SHX25_1
    SHX7_2 = SHX7_2[SHX0_2]
    SHX7_2 = SHX7_2.coords
    SHX7_2 = SHX7_2.y
    SHX8_2 = SHX25_1
    SHX8_2 = SHX8_2[SHX0_2]
    SHX8_2 = SHX8_2.coords
    SHX8_2 = SHX8_2.z
    SHX9_2 = SHX1_2[1]
    SHX10_2 = SHX1_2[2]
    SHX11_2 = SHX1_2[3]
    SHX12_2 = SHX2_2
    SHX13_2 = false
    SHX14_2 = false
    SHX15_2 = false
    SHX16_2 = false
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
    SHX3_2.smokeHandle = SHX4_2
    SHX3_2 = RemoveNamedPtfxAsset
    SHX4_2 = SHX25_1
    SHX4_2 = SHX4_2[SHX0_2]
    SHX5_2 = SHX4_2.type
    SHX4_2 = SHX15_1
    SHX4_2 = SHX4_2[SHX5_2]
    SHX5_2 = SHX4_2.smokeType
    SHX4_2 = SHX35_1
    SHX4_2 = SHX4_2[SHX5_2]
    SHX4_2 = SHX4_2.dict
    SHX3_2(SHX4_2)
  end
  SHX2_2 = RemoveNamedPtfxAsset
  SHX3_2 = SHX25_1
  SHX3_2 = SHX3_2[SHX0_2]
  SHX4_2 = SHX3_2.type
  SHX3_2 = SHX15_1
  SHX3_2 = SHX3_2[SHX4_2]
  SHX3_2 = SHX3_2.dict
  SHX2_2(SHX3_2)
end
function SHX40_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerCoords
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX25_1
  if nil == SHX1_2 then
    SHX1_2 = {}
    SHX25_1 = SHX1_2
  end
  SHX1_2 = pairs
  SHX2_2 = SHX25_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.coords
    SHX7_2 = SHX0_2 - SHX7_2
    SHX7_2 = #SHX7_2
    SHX8_2 = 350.0
    if SHX7_2 < SHX8_2 then
      SHX8_2 = SHX6_2.active
      if nil ~= SHX8_2 then
        SHX8_2 = SHX6_2.active
        if not SHX8_2 then
          SHX8_2 = SHX39_1
          SHX9_2 = SHX5_2
          SHX8_2(SHX9_2)
        end
      end
    else
      SHX8_2 = SHX6_2.active
      if SHX8_2 then
        SHX8_2 = SHX34_1
        SHX9_2 = SHX5_2
        SHX8_2(SHX9_2)
      end
    end
  end
end
SHX41_1 = false
SHX42_1 = 0
SHX43_1 = {}
SHX44_1 = 0
SHX45_1 = false
SHX46_1 = 12.0
SHX47_1 = 876916270
SHX48_1 = {}
SHX49_1 = {}
SHX49_1.model = 1938952078
SHX49_1.bone = ""
SHX50_1 = {}
SHX51_1 = 2.0
SHX52_1 = -18.0
SHX53_1 = -0.75
SHX50_1[1] = SHX51_1
SHX50_1[2] = SHX52_1
SHX50_1[3] = SHX53_1
SHX49_1.offSet = SHX50_1
SHX50_1 = {}
SHX51_1 = 0.0
SHX52_1 = 0.0
SHX53_1 = 180.0
SHX50_1[1] = SHX51_1
SHX50_1[2] = SHX52_1
SHX50_1[3] = SHX53_1
SHX49_1.rotation = SHX50_1
SHX50_1 = {}
SHX50_1.model = -638337599
SHX50_1.bone = ""
SHX51_1 = {}
SHX52_1 = 2.0
SHX53_1 = -18.0
SHX54_1 = -0.75
SHX51_1[1] = SHX52_1
SHX51_1[2] = SHX53_1
SHX51_1[3] = SHX54_1
SHX50_1.offSet = SHX51_1
SHX51_1 = {}
SHX52_1 = 0.0
SHX53_1 = 0.0
SHX54_1 = 180.0
SHX51_1[1] = SHX52_1
SHX51_1[2] = SHX53_1
SHX51_1[3] = SHX54_1
SHX50_1.rotation = SHX51_1
SHX51_1 = {}
SHX51_1.model = 725442643
SHX51_1.bone = ""
SHX52_1 = {}
SHX53_1 = 2.0
SHX54_1 = -18.0
SHX55_1 = -0.75
SHX52_1[1] = SHX53_1
SHX52_1[2] = SHX54_1
SHX52_1[3] = SHX55_1
SHX51_1.offSet = SHX52_1
SHX52_1 = {}
SHX53_1 = 0.0
SHX54_1 = 0.0
SHX55_1 = 180.0
SHX52_1[1] = SHX53_1
SHX52_1[2] = SHX54_1
SHX52_1[3] = SHX55_1
SHX51_1.rotation = SHX52_1
SHX48_1[1] = SHX49_1
SHX48_1[2] = SHX50_1
SHX48_1[3] = SHX51_1
SHX49_1 = RegisterNetEvent
SHX50_1 = "37a8aa00f8"
function SHX51_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2
  if SHX2_2 then
    SHX3_2 = SHX26_1
    SHX3_2[SHX0_2] = nil
    return
  end
  SHX3_2 = SHX26_1
  SHX3_2[SHX0_2] = SHX1_2
  SHX3_2 = SHX43_1
  SHX3_2 = SHX3_2[SHX0_2]
  if nil ~= SHX3_2 then
    SHX3_2 = SHX43_1
    SHX3_2[SHX0_2] = nil
  end
end
SHX49_1(SHX50_1, SHX51_1)
function SHX49_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerCoords
  SHX1_2 = SHX1_2()
  SHX2_2 = GetOffsetFromEntityInWorldCoords
  SHX3_2 = SHX0_2
  SHX4_2 = 0.0
  SHX5_2 = 10.0
  SHX6_2 = 0.0
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = StartShapeTestCapsule
  SHX4_2 = SHX1_2.x
  SHX5_2 = SHX1_2.y
  SHX6_2 = SHX1_2.z
  SHX7_2 = SHX2_2.x
  SHX8_2 = SHX2_2.y
  SHX9_2 = SHX2_2.z
  SHX10_2 = 10.0
  SHX11_2 = 2
  SHX12_2 = SHX0_2
  SHX13_2 = 0
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX4_2 = GetShapeTestResult
  SHX5_2 = SHX3_2
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX4_2(SHX5_2)
  return SHX8_2
end
function SHX50_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerVehicle
  SHX1_2 = SHX1_2()
  if 0 ~= SHX1_2 then
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.notify
    SHX2_2 = "~r~Error~w~: You must not be inside a vehicle"
    SHX1_2(SHX2_2)
    return
  end
  SHX1_2 = SHX49_1
  SHX1_2 = SHX1_2()
  if 0 ~= SHX1_2 and nil ~= SHX1_2 then
    SHX2_2 = NetworkGetNetworkIdFromEntity
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    SHX3_2 = false
    SHX4_2 = pairs
    SHX5_2 = SHX26_1
    SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
    for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
      SHX10_2 = SHX9_2[1]
      if SHX10_2 == SHX2_2 then
        SHX3_2 = true
      end
    end
    if SHX0_2 then
      if SHX3_2 then
        SHX4_2 = tCMG
        SHX4_2 = SHX4_2.notify
        SHX5_2 = "~r~Error~w~: A supply line is already setup on this vehicle"
        SHX4_2(SHX5_2)
      else
        SHX4_2 = GetEntityModel
        SHX5_2 = SHX1_2
        SHX4_2 = SHX4_2(SHX5_2)
        SHX5_2 = 0
        SHX6_2 = false
        SHX7_2 = pairs
        SHX8_2 = SHX48_1
        SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
        for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
          SHX13_2 = SHX12_2.model
          if SHX13_2 == SHX4_2 then
            SHX5_2 = SHX11_2
            SHX6_2 = true
            break
          end
        end
        if SHX6_2 then
          SHX7_2 = FreezeEntityPosition
          SHX8_2 = SHX1_2
          SHX9_2 = true
          SHX7_2(SHX8_2, SHX9_2)
          SHX7_2 = CMG
          SHX7_2 = SHX7_2.loadModel
          SHX8_2 = SHX47_1
          SHX7_2(SHX8_2)
          SHX7_2 = GetEntityCoords
          SHX8_2 = SHX1_2
          SHX7_2 = SHX7_2(SHX8_2)
          SHX8_2 = CMG
          SHX8_2 = SHX8_2.requestEntitySpawn
          SHX9_2 = "lfb_prop"
          SHX10_2 = "supply"
          SHX11_2 = SHX7_2
          SHX8_2(SHX9_2, SHX10_2, SHX11_2)
          SHX8_2 = CreateObject
          SHX9_2 = SHX47_1
          SHX10_2 = SHX7_2.x
          SHX11_2 = SHX7_2.y
          SHX12_2 = SHX7_2.z
          SHX13_2 = true
          SHX14_2 = true
          SHX15_2 = true
          SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
          while true do
            SHX9_2 = DoesEntityExist
            SHX10_2 = SHX8_2
            SHX9_2 = SHX9_2(SHX10_2)
            if SHX9_2 then
              break
            end
            SHX9_2 = Wait
            SHX10_2 = 0
            SHX9_2(SHX10_2)
          end
          SHX9_2 = TriggerServerEvent
          SHX10_2 = "3a7f6a2bdf"
          SHX11_2 = "Supply Line"
          SHX12_2 = GetEntityCoords
          SHX13_2 = SHX8_2
          SHX14_2 = true
          SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2 = SHX12_2(SHX13_2, SHX14_2)
          SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
          SHX9_2 = GetEntityBoneIndexByName
          SHX10_2 = SHX1_2
          SHX11_2 = SHX48_1
          SHX11_2 = SHX11_2[SHX5_2]
          SHX11_2 = SHX11_2.bone
          SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
          SHX10_2 = FreezeEntityPosition
          SHX11_2 = SHX8_2
          SHX12_2 = true
          SHX10_2(SHX11_2, SHX12_2)
          SHX10_2 = AttachEntityToEntity
          SHX11_2 = SHX8_2
          SHX12_2 = SHX1_2
          SHX13_2 = SHX9_2
          SHX14_2 = SHX48_1
          SHX14_2 = SHX14_2[SHX5_2]
          SHX14_2 = SHX14_2.offSet
          SHX14_2 = SHX14_2[1]
          SHX15_2 = SHX48_1
          SHX15_2 = SHX15_2[SHX5_2]
          SHX15_2 = SHX15_2.offSet
          SHX15_2 = SHX15_2[2]
          SHX16_2 = SHX48_1
          SHX16_2 = SHX16_2[SHX5_2]
          SHX16_2 = SHX16_2.offSet
          SHX16_2 = SHX16_2[3]
          SHX17_2 = SHX48_1
          SHX17_2 = SHX17_2[SHX5_2]
          SHX17_2 = SHX17_2.rotation
          SHX17_2 = SHX17_2[1]
          SHX18_2 = SHX48_1
          SHX18_2 = SHX18_2[SHX5_2]
          SHX18_2 = SHX18_2.rotation
          SHX18_2 = SHX18_2[2]
          SHX19_2 = SHX48_1
          SHX19_2 = SHX19_2[SHX5_2]
          SHX19_2 = SHX19_2.rotation
          SHX19_2 = SHX19_2[3]
          SHX20_2 = true
          SHX21_2 = false
          SHX22_2 = true
          SHX23_2 = false
          SHX24_2 = 1
          SHX25_2 = true
          SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
          SHX10_2 = Wait
          SHX11_2 = 1000
          SHX10_2(SHX11_2)
          SHX10_2 = NetworkGetNetworkIdFromEntity
          SHX11_2 = SHX8_2
          SHX10_2 = SHX10_2(SHX11_2)
          SHX11_2 = SHX26_1
          SHX12_2 = {}
          SHX13_2 = SHX2_2
          SHX14_2 = SHX10_2
          SHX15_2 = SHX7_2
          SHX12_2[1] = SHX13_2
          SHX12_2[2] = SHX14_2
          SHX12_2[3] = SHX15_2
          SHX11_2[SHX2_2] = SHX12_2
          SHX11_2 = TriggerServerEvent
          SHX12_2 = "37a8aa00f8"
          SHX13_2 = SHX2_2
          SHX14_2 = SHX26_1
          SHX14_2 = SHX14_2[SHX2_2]
          SHX15_2 = false
          SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2)
          SHX11_2 = SetModelAsNoLongerNeeded
          SHX12_2 = SHX47_1
          SHX11_2(SHX12_2)
          SHX11_2 = tCMG
          SHX11_2 = SHX11_2.notify
          SHX12_2 = "~g~Success~w~: Supply line setup"
          SHX11_2(SHX12_2)
        else
          SHX7_2 = tCMG
          SHX7_2 = SHX7_2.notify
          SHX8_2 = "~r~Error~w~: You cannot setup a supply line on this vehicle"
          SHX7_2(SHX8_2)
        end
      end
    elseif SHX3_2 then
      SHX4_2 = TriggerServerEvent
      SHX5_2 = "37a8aa00f8"
      SHX6_2 = SHX2_2
      SHX7_2 = SHX26_1
      SHX7_2 = SHX7_2[SHX2_2]
      SHX8_2 = true
      SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX4_2 = TriggerServerEvent
      SHX5_2 = "6ebeca9722"
      SHX6_2 = SHX26_1
      SHX6_2 = SHX6_2[SHX2_2]
      SHX6_2 = SHX6_2[2]
      SHX4_2(SHX5_2, SHX6_2)
      SHX4_2 = TriggerServerEvent
      SHX5_2 = "9efbf4fd13"
      SHX6_2 = SHX2_2
      SHX4_2(SHX5_2, SHX6_2)
      SHX4_2 = SHX26_1
      SHX4_2[SHX2_2] = nil
      SHX4_2 = tCMG
      SHX4_2 = SHX4_2.notify
      SHX5_2 = "~g~Success~w~: Supply line removed"
      SHX4_2(SHX5_2)
    else
      SHX4_2 = tCMG
      SHX4_2 = SHX4_2.notify
      SHX5_2 = "~g~Success~w~: No supply line found"
      SHX4_2(SHX5_2)
    end
  else
    SHX2_2 = tCMG
    SHX2_2 = SHX2_2.notify
    SHX3_2 = "~r~Error~w~: No vehicle found"
    SHX2_2(SHX3_2)
  end
end
SHX11_1 = SHX50_1
SHX50_1 = 200
SHX51_1 = {}
SHX52_1 = -1554970529
SHX53_1 = false
function SHX54_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getObjectId
  SHX2_2 = SHX51_1
  SHX2_2 = SHX2_2[SHX0_2]
  SHX2_2 = SHX2_2[1]
  SHX3_2 = "hoseParticle"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if not SHX1_2 then
    return
  end
  SHX2_2 = GetEntityCoords
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerCoords
  SHX3_2 = SHX3_2()
  SHX3_2 = SHX3_2 - SHX2_2
  SHX3_2 = #SHX3_2
  if SHX3_2 < 100.0 then
    SHX3_2 = GetSelectedPedWeapon
    SHX4_2 = SHX1_2
    SHX3_2 = SHX3_2(SHX4_2)
    SHX4_2 = SHX52_1
    if SHX3_2 == SHX4_2 then
      SHX3_2 = CMG
      SHX3_2 = SHX3_2.loadPtfx
      SHX4_2 = "core"
      SHX3_2(SHX4_2)
      SHX3_2 = UseParticleFxAsset
      SHX4_2 = "core"
      SHX3_2(SHX4_2)
      SHX3_2 = SHX51_1
      SHX3_2 = SHX3_2[SHX0_2]
      SHX4_2 = StartParticleFxLoopedOnEntity
      SHX5_2 = "water_cannon_jet"
      SHX6_2 = SHX1_2
      SHX7_2 = 0.2
      SHX8_2 = 0.15
      SHX9_2 = 0.0
      SHX10_2 = 0.1
      SHX11_2 = 0.0
      SHX12_2 = 0.0
      SHX13_2 = 0.7
      SHX14_2 = false
      SHX15_2 = false
      SHX16_2 = false
      SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
      SHX3_2[4] = SHX4_2
      SHX3_2 = UseParticleFxAsset
      SHX4_2 = "core"
      SHX3_2(SHX4_2)
      SHX3_2 = SHX51_1
      SHX3_2 = SHX3_2[SHX0_2]
      SHX4_2 = StartParticleFxLoopedOnEntity
      SHX5_2 = "water_cannon_spray"
      SHX6_2 = SHX1_2
      SHX7_2 = 0.2
      SHX8_2 = SHX51_1
      SHX8_2 = SHX8_2[SHX0_2]
      SHX8_2 = SHX8_2[2]
      SHX8_2 = SHX8_2 * 0.4
      SHX8_2 = 9.0 + SHX8_2
      SHX9_2 = 0
      SHX10_2 = 0.1
      SHX11_2 = 0.0
      SHX12_2 = 0.0
      SHX13_2 = 0.9
      SHX14_2 = false
      SHX15_2 = false
      SHX16_2 = false
      SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
      SHX3_2[5] = SHX4_2
      SHX3_2 = UseParticleFxAsset
      SHX4_2 = "core"
      SHX3_2(SHX4_2)
      SHX3_2 = SHX51_1
      SHX3_2 = SHX3_2[SHX0_2]
      SHX4_2 = StartParticleFxLoopedOnEntity
      SHX5_2 = "water_cannon_spray"
      SHX6_2 = SHX1_2
      SHX7_2 = 0.2
      SHX8_2 = SHX51_1
      SHX8_2 = SHX8_2[SHX0_2]
      SHX8_2 = SHX8_2[2]
      SHX8_2 = SHX8_2 * 0.4
      SHX8_2 = 9.0 + SHX8_2
      SHX9_2 = 0
      SHX10_2 = 0.1
      SHX11_2 = 0.0
      SHX12_2 = 0.0
      SHX13_2 = 0.001
      SHX14_2 = false
      SHX15_2 = false
      SHX16_2 = false
      SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
      SHX3_2[6] = SHX4_2
      SHX3_2 = RemoveNamedPtfxAsset
      SHX4_2 = "core"
      SHX3_2(SHX4_2)
    end
  end
end
SHX55_1 = RegisterNetEvent
SHX56_1 = "f9185a186f"
function SHX57_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  if SHX2_2 then
    SHX3_2 = SHX51_1
    SHX3_2 = SHX3_2[SHX0_2]
    if nil ~= SHX3_2 then
      SHX3_2 = SHX51_1
      SHX3_2 = SHX3_2[SHX0_2]
      SHX3_2[3] = false
      SHX3_2 = SHX51_1
      SHX3_2 = SHX3_2[SHX0_2]
      SHX3_2 = SHX3_2[4]
      if nil ~= SHX3_2 then
        SHX3_2 = StopParticleFxLooped
        SHX4_2 = SHX51_1
        SHX4_2 = SHX4_2[SHX0_2]
        SHX4_2 = SHX4_2[4]
        SHX5_2 = false
        SHX3_2(SHX4_2, SHX5_2)
      end
      SHX3_2 = SHX51_1
      SHX3_2 = SHX3_2[SHX0_2]
      SHX3_2 = SHX3_2[5]
      if nil ~= SHX3_2 then
        SHX3_2 = StopParticleFxLooped
        SHX4_2 = SHX51_1
        SHX4_2 = SHX4_2[SHX0_2]
        SHX4_2 = SHX4_2[5]
        SHX5_2 = false
        SHX3_2(SHX4_2, SHX5_2)
      end
      SHX3_2 = SHX51_1
      SHX3_2 = SHX3_2[SHX0_2]
      SHX3_2 = SHX3_2[6]
      if nil ~= SHX3_2 then
        SHX3_2 = StopParticleFxLooped
        SHX4_2 = SHX51_1
        SHX4_2 = SHX4_2[SHX0_2]
        SHX4_2 = SHX4_2[6]
        SHX5_2 = false
        SHX3_2(SHX4_2, SHX5_2)
      end
      SHX3_2 = SHX51_1
      SHX3_2[SHX0_2] = nil
    end
  else
    SHX3_2 = SHX51_1
    SHX4_2 = {}
    SHX5_2 = SHX0_2
    SHX6_2 = SHX1_2
    SHX7_2 = true
    SHX8_2 = 0
    SHX9_2 = 0
    SHX10_2 = 0
    SHX4_2[1] = SHX5_2
    SHX4_2[2] = SHX6_2
    SHX4_2[3] = SHX7_2
    SHX4_2[4] = SHX8_2
    SHX4_2[5] = SHX9_2
    SHX4_2[6] = SHX10_2
    SHX3_2[SHX0_2] = SHX4_2
    SHX3_2 = SHX54_1
    SHX4_2 = SHX0_2
    SHX3_2(SHX4_2)
  end
end
SHX55_1(SHX56_1, SHX57_1)
SHX55_1 = 30.0
function SHX56_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerCoords
  SHX0_2 = SHX0_2()
  SHX1_2 = pairs
  SHX2_2 = SHX25_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.active
    if SHX7_2 then
      SHX7_2 = SHX6_2.coords
      SHX7_2 = SHX0_2 - SHX7_2
      SHX7_2 = #SHX7_2
      SHX8_2 = SHX55_1
      if SHX7_2 < SHX8_2 then
        SHX7_2 = GetOffsetFromEntityInWorldCoords
        SHX8_2 = CMG
        SHX8_2 = SHX8_2.getPlayerPed
        SHX8_2 = SHX8_2()
        SHX9_2 = 0.0
        SHX10_2 = 3.0
        SHX11_2 = 0.5
        SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
        SHX8_2 = SHX6_2.coords
        SHX8_2 = SHX7_2 - SHX8_2
        SHX8_2 = #SHX8_2
        if SHX8_2 < 7.0 then
          SHX8_2 = math
          SHX8_2 = SHX8_2.random
          SHX9_2 = 1
          SHX11_2 = SHX6_2.type
          SHX10_2 = SHX15_1
          SHX10_2 = SHX10_2[SHX11_2]
          SHX10_2 = SHX10_2.chance
          SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
          if 1 == SHX8_2 then
            SHX9_2 = SHX6_2.size
            SHX9_2 = SHX9_2 * 0.92
            SHX10_2 = 0.5
            if SHX9_2 < SHX10_2 then
              SHX10_2 = TriggerServerEvent
              SHX11_2 = "52c48511f6"
              SHX12_2 = SHX5_2
              SHX13_2 = SHX25_1
              SHX13_2 = SHX13_2[SHX5_2]
              SHX14_2 = true
              SHX15_2 = false
              SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
              SHX10_2 = Wait
              SHX11_2 = 5000
              SHX10_2(SHX11_2)
              break
            end
            SHX10_2 = SHX25_1
            SHX10_2 = SHX10_2[SHX5_2]
            SHX10_2.size = SHX9_2
            SHX10_2 = TriggerServerEvent
            SHX11_2 = "52c48511f6"
            SHX12_2 = SHX5_2
            SHX13_2 = SHX25_1
            SHX13_2 = SHX13_2[SHX5_2]
            SHX14_2 = false
            SHX15_2 = true
            SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
            SHX10_2 = Wait
            SHX11_2 = 5000
            SHX10_2(SHX11_2)
            break
          end
        end
      end
    end
  end
end
function SHX57_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getNetId
  SHX2_2 = SHX0_2
  SHX3_2 = "handleHose()"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX2_2 = TriggerServerEvent
  SHX3_2 = "9ebdb3b947"
  SHX4_2 = SHX1_2
  SHX5_2 = 0.0
  SHX6_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = true
  SHX53_1 = SHX2_2
  while true do
    SHX2_2 = SHX53_1
    if not SHX2_2 then
      break
    end
    SHX2_2 = DisableControlAction
    SHX3_2 = 0
    SHX4_2 = 24
    SHX5_2 = true
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX2_2 = DecorSetFloat
    SHX3_2 = SHX0_2
    SHX4_2 = "135893ed9f"
    SHX5_2 = GetGameplayCamRelativePitch
    SHX5_2, SHX6_2 = SHX5_2()
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    SHX2_2 = DisablePlayerFiring
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.getPlayerId
    SHX3_2 = SHX3_2()
    SHX4_2 = true
    SHX2_2(SHX3_2, SHX4_2)
    SHX2_2 = SHX56_1
    SHX2_2()
    SHX2_2 = IsDisabledControlPressed
    SHX3_2 = 0
    SHX4_2 = 24
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if SHX2_2 then
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.getPlayerVehicle
      SHX2_2 = SHX2_2()
      if 0 == SHX2_2 then
        SHX2_2 = IsPauseMenuActive
        SHX2_2 = SHX2_2()
        if not SHX2_2 then
          SHX2_2 = GetSelectedPedWeapon
          SHX3_2 = SHX0_2
          SHX2_2 = SHX2_2(SHX3_2)
          SHX3_2 = SHX52_1
          if SHX2_2 == SHX3_2 then
            SHX2_2 = IsPlayerFreeAiming
            SHX3_2 = CMG
            SHX3_2 = SHX3_2.getPlayerId
            SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2()
            SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
            if SHX2_2 then
              SHX2_2 = SHX41_1
              if SHX2_2 then
                goto SHX_LABEL_81
              end
              SHX2_2 = SHX44_1
              if not (SHX2_2 < 1) then
                goto SHX_LABEL_81
              end
            end
          end
        end
      end
    end
    SHX2_2 = false
    SHX53_1 = SHX2_2
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "9ebdb3b947"
    SHX4_2 = SHX1_2
    SHX5_2 = 0.0
    SHX6_2 = true
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    -- [FIX IF ERROR] Move ::SHX_LABEL_81:: outside nested blocks until all 'goto SHX_LABEL_81' can see it
    ::SHX_LABEL_81::
    SHX2_2 = Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
end
SHX58_1 = Citizen
SHX58_1 = SHX58_1.CreateThread
function SHX59_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = DecorRegister
  SHX1_2 = "135893ed9f"
  SHX2_2 = 1
  SHX0_2(SHX1_2, SHX2_2)
  while true do
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerPed
    SHX0_2 = SHX0_2()
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerVehicle
    SHX1_2 = SHX1_2()
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.hasClientPermission
    SHX3_2 = "lfb.onduty.permission"
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 and 0 == SHX1_2 then
      SHX2_2 = GetSelectedPedWeapon
      SHX3_2 = SHX0_2
      SHX2_2 = SHX2_2(SHX3_2)
      SHX3_2 = SHX52_1
      if SHX2_2 == SHX3_2 then
        SHX3_2 = IsPlayerFreeAiming
        SHX4_2 = CMG
        SHX4_2 = SHX4_2.getPlayerId
        SHX4_2, SHX5_2, SHX6_2 = SHX4_2()
        SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
        if SHX3_2 then
          SHX3_2 = true
          SHX45_1 = SHX3_2
          SHX3_2 = DisableControlAction
          SHX4_2 = 0
          SHX5_2 = 24
          SHX6_2 = true
          SHX3_2(SHX4_2, SHX5_2, SHX6_2)
          SHX3_2 = IsDisabledControlPressed
          SHX4_2 = 0
          SHX5_2 = 24
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
          if SHX3_2 then
            SHX3_2 = SHX44_1
            if not (SHX3_2 > 0) then
              SHX3_2 = SHX41_1
              if not SHX3_2 then
                goto SHX_LABEL_54
              end
            end
            SHX3_2 = SHX57_1
            SHX3_2()
            goto SHX_LABEL_58
            -- [FIX IF ERROR] Move ::SHX_LABEL_54:: outside nested blocks until all 'goto SHX_LABEL_54' can see it
            ::SHX_LABEL_54::
            SHX3_2 = tCMG
            SHX3_2 = SHX3_2.notify
            SHX4_2 = "~r~Notice~w~: You have no active supply of water"
            SHX3_2(SHX4_2)
          end
        end
      end
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_58:: outside nested blocks until all 'goto SHX_LABEL_58' can see it
    ::SHX_LABEL_58::
    SHX2_2 = Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
end
SHX58_1(SHX59_1)
SHX58_1 = Citizen
SHX58_1 = SHX58_1.CreateThread
function SHX59_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  while true do
    SHX0_2 = SHX40_1
    SHX0_2()
    SHX0_2 = Wait
    SHX1_2 = 1000
    SHX0_2(SHX1_2)
  end
end
SHX58_1(SHX59_1)
function SHX58_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = pairs
  SHX1_2 = SHX51_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX5_2[3]
    if SHX6_2 then
      SHX6_2 = DecorGetFloat
      SHX7_2 = CMG
      SHX7_2 = SHX7_2.getObjectId
      SHX8_2 = SHX5_2[1]
      SHX9_2 = "onTickHosePitch"
      SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
      if not SHX7_2 then
        SHX7_2 = 0
      end
      SHX8_2 = "135893ed9f"
      SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
      SHX7_2 = SHX5_2[4]
      if nil ~= SHX7_2 then
        SHX7_2 = SetParticleFxLoopedOffsets
        SHX8_2 = SHX5_2[4]
        SHX9_2 = 0.26
        SHX10_2 = 0.2
        SHX11_2 = 0.13
        SHX12_2 = SHX6_2
        SHX13_2 = 0.0
        SHX14_2 = 0.0
        SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
        SHX7_2 = SetParticleFxLoopedOffsets
        SHX8_2 = SHX5_2[5]
        SHX9_2 = 0.2
        SHX10_2 = SHX6_2 * 0.4
        SHX10_2 = 9.5 + SHX10_2
        SHX11_2 = -0.6
        SHX12_2 = SHX6_2
        SHX13_2 = 0.0
        SHX14_2 = 0.8
        SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
        SHX7_2 = SetParticleFxLoopedOffsets
        SHX8_2 = SHX5_2[6]
        SHX9_2 = 0.2
        SHX10_2 = SHX6_2 * 0.4
        SHX10_2 = 5.0 + SHX10_2
        SHX11_2 = SHX6_2 - 23.0
        SHX12_2 = SHX6_2
        SHX13_2 = 0.0
        SHX14_2 = 0.0
        SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
      end
    end
  end
end
SHX59_1 = CMG
SHX59_1 = SHX59_1.createThreadOnTick
SHX60_1 = SHX58_1
SHX61_1 = "LFB Hose Pitch"
SHX59_1(SHX60_1, SHX61_1)
SHX59_1 = RegisterNetEvent
SHX60_1 = "119add1130"
function SHX61_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2
  if SHX2_2 then
    SHX3_2 = SHX27_1
    SHX3_2[SHX0_2] = nil
    return
  end
  SHX3_2 = SHX27_1
  SHX3_2[SHX0_2] = SHX1_2
end
SHX59_1(SHX60_1, SHX61_1)
SHX59_1 = RegisterNetEvent
SHX60_1 = "98484239a1"
function SHX61_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX1_2 = SHX27_1
  SHX1_2 = SHX1_2[SHX0_2]
  if nil ~= SHX1_2 then
    SHX1_2 = SHX27_1
    SHX1_2 = SHX1_2[SHX0_2]
    SHX2_2 = SHX27_1
    SHX2_2 = SHX2_2[SHX0_2]
    SHX2_2 = SHX2_2[4]
    SHX2_2 = not SHX2_2
    SHX1_2[4] = SHX2_2
  end
  SHX1_2 = SHX36_1
  SHX1_2 = SHX1_2[SHX0_2]
  if nil ~= SHX1_2 then
    SHX1_2 = SHX36_1
    SHX1_2 = SHX1_2[SHX0_2]
    SHX1_2 = SHX1_2.handle
    if nil ~= SHX1_2 then
      SHX1_2 = DoesParticleFxLoopedExist
      SHX2_2 = SHX36_1
      SHX2_2 = SHX2_2[SHX0_2]
      SHX2_2 = SHX2_2.handle
      SHX1_2 = SHX1_2(SHX2_2)
      if SHX1_2 then
        SHX1_2 = StopParticleFxLooped
        SHX2_2 = SHX36_1
        SHX2_2 = SHX2_2[SHX0_2]
        SHX2_2 = SHX2_2.handle
        SHX3_2 = false
        SHX1_2(SHX2_2, SHX3_2)
        SHX1_2 = StopParticleFxLooped
        SHX2_2 = SHX36_1
        SHX2_2 = SHX2_2[SHX0_2]
        SHX2_2 = SHX2_2.handle2
        SHX3_2 = false
        SHX1_2(SHX2_2, SHX3_2)
        SHX1_2 = SHX36_1
        SHX1_2[SHX0_2] = nil
      end
    end
  end
  SHX1_2 = SHX27_1
  SHX1_2 = SHX1_2[SHX0_2]
  SHX1_2 = SHX1_2[4]
  if SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.loadPtfx
    SHX2_2 = "core"
    SHX1_2(SHX2_2)
    SHX1_2 = UseParticleFxAsset
    SHX2_2 = "core"
    SHX1_2(SHX2_2)
    SHX1_2 = SetParticleFxShootoutBoat
    SHX2_2 = 1
    SHX1_2(SHX2_2)
    SHX1_2 = SHX27_1
    SHX1_2 = SHX1_2[SHX0_2]
    SHX1_2 = SHX1_2[2]
    SHX2_2 = SHX36_1
    SHX3_2 = {}
    SHX2_2[SHX0_2] = SHX3_2
    SHX2_2 = SHX36_1
    SHX2_2 = SHX2_2[SHX0_2]
    SHX2_2.pitch = 50.0
    SHX2_2 = SHX36_1
    SHX2_2 = SHX2_2[SHX0_2]
    SHX3_2 = StartParticleFxLoopedAtCoord
    SHX4_2 = "water_cannon_jet"
    SHX5_2 = SHX1_2.x
    SHX6_2 = SHX1_2.y
    SHX7_2 = SHX1_2.z
    SHX8_2 = 50.0
    SHX9_2 = 0.0
    SHX10_2 = SHX27_1
    SHX10_2 = SHX10_2[SHX0_2]
    SHX10_2 = SHX10_2[3]
    SHX11_2 = 1.0
    SHX12_2 = false
    SHX13_2 = false
    SHX14_2 = false
    SHX15_2 = false
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    SHX2_2.handle = SHX3_2
    SHX2_2 = SHX36_1
    SHX2_2 = SHX2_2[SHX0_2]
    SHX3_2 = StartParticleFxLoopedAtCoord
    SHX4_2 = "water_cannon_spray"
    SHX5_2 = SHX1_2.x
    SHX6_2 = SHX1_2.y
    SHX7_2 = SHX1_2.z
    SHX8_2 = 50.0
    SHX9_2 = 0.0
    SHX10_2 = SHX27_1
    SHX10_2 = SHX10_2[SHX0_2]
    SHX10_2 = SHX10_2[3]
    SHX11_2 = 1.0
    SHX12_2 = false
    SHX13_2 = false
    SHX14_2 = false
    SHX15_2 = false
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    SHX2_2.handle2 = SHX3_2
    SHX2_2 = RemoveNamedPtfxAsset
    SHX3_2 = "core"
    SHX2_2(SHX3_2)
  end
end
SHX59_1(SHX60_1, SHX61_1)
SHX59_1 = 2087526838
function SHX60_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerVehicle
  SHX2_2 = SHX2_2()
  if 0 ~= SHX2_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.notify
    SHX4_2 = "~r~Error~w~: You must not be inside a vehicle"
    SHX3_2(SHX4_2)
    return
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerCoords
  SHX3_2 = SHX3_2()
  if SHX0_2 then
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.loadModel
    SHX5_2 = SHX59_1
    SHX4_2(SHX5_2)
    SHX4_2 = GetOffsetFromEntityInWorldCoords
    SHX5_2 = SHX1_2
    SHX6_2 = 0.0
    SHX7_2 = 1.5
    SHX8_2 = 0.0
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.requestEntitySpawn
    SHX6_2 = "lfb_prop"
    SHX7_2 = "monitor"
    SHX8_2 = SHX4_2
    SHX5_2(SHX6_2, SHX7_2, SHX8_2)
    SHX5_2 = CreateObject
    SHX6_2 = SHX59_1
    SHX7_2 = SHX4_2.x
    SHX8_2 = SHX4_2.y
    SHX9_2 = SHX4_2.z
    SHX10_2 = true
    SHX11_2 = true
    SHX12_2 = true
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    while true do
      SHX6_2 = DoesEntityExist
      SHX7_2 = SHX5_2
      SHX6_2 = SHX6_2(SHX7_2)
      if SHX6_2 then
        break
      end
      SHX6_2 = Wait
      SHX7_2 = 0
      SHX6_2(SHX7_2)
    end
    SHX6_2 = TriggerServerEvent
    SHX7_2 = "3a7f6a2bdf"
    SHX8_2 = "Water Monitor"
    SHX9_2 = GetEntityCoords
    SHX10_2 = SHX5_2
    SHX11_2 = true
    SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX9_2(SHX10_2, SHX11_2)
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX6_2 = SetEntityCollision
    SHX7_2 = SHX5_2
    SHX8_2 = false
    SHX9_2 = true
    SHX6_2(SHX7_2, SHX8_2, SHX9_2)
    SHX6_2 = NetworkGetNetworkIdFromEntity
    SHX7_2 = SHX5_2
    SHX6_2 = SHX6_2(SHX7_2)
    SHX7_2 = PlaceObjectOnGroundProperly
    SHX8_2 = SHX5_2
    SHX7_2(SHX8_2)
    SHX7_2 = FreezeEntityPosition
    SHX8_2 = SHX5_2
    SHX9_2 = true
    SHX7_2(SHX8_2, SHX9_2)
    SHX7_2 = SetEntityHeading
    SHX8_2 = SHX5_2
    SHX9_2 = GetEntityHeading
    SHX10_2 = SHX1_2
    SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX9_2(SHX10_2)
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX7_2 = GetOffsetFromEntityInWorldCoords
    SHX8_2 = SHX5_2
    SHX9_2 = 0.1
    SHX10_2 = 0.22
    SHX11_2 = 0.7
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX4_2 = SHX7_2
    SHX7_2 = SHX27_1
    SHX8_2 = {}
    SHX9_2 = SHX6_2
    SHX10_2 = SHX4_2
    SHX11_2 = GetEntityHeading
    SHX12_2 = SHX5_2
    SHX11_2 = SHX11_2(SHX12_2)
    SHX12_2 = false
    SHX13_2 = false
    SHX8_2[1] = SHX9_2
    SHX8_2[2] = SHX10_2
    SHX8_2[3] = SHX11_2
    SHX8_2[4] = SHX12_2
    SHX8_2[5] = SHX13_2
    SHX7_2[SHX6_2] = SHX8_2
    SHX7_2 = TriggerServerEvent
    SHX8_2 = "119add1130"
    SHX9_2 = SHX6_2
    SHX10_2 = SHX27_1
    SHX10_2 = SHX10_2[SHX6_2]
    SHX11_2 = false
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX7_2 = SetModelAsNoLongerNeeded
    SHX8_2 = SHX59_1
    SHX7_2(SHX8_2)
    SHX7_2 = tCMG
    SHX7_2 = SHX7_2.notify
    SHX8_2 = "~g~Success~w~: Water monitor setup"
    SHX7_2(SHX8_2)
  else
    SHX4_2 = false
    SHX5_2 = 0
    SHX6_2 = pairs
    SHX7_2 = SHX27_1
    SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
    for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
      SHX12_2 = SHX11_2[2]
      SHX12_2 = SHX3_2 - SHX12_2
      SHX12_2 = #SHX12_2
      if SHX12_2 < 15.0 then
        SHX5_2 = SHX10_2
        SHX4_2 = true
        break
      end
    end
    if SHX4_2 then
      SHX6_2 = SHX27_1
      SHX6_2 = SHX6_2[SHX5_2]
      SHX6_2 = SHX6_2[4]
      if SHX6_2 then
        SHX6_2 = tCMG
        SHX6_2 = SHX6_2.notify
        SHX7_2 = "~r~Error~w~: This monitor is active and cannot be removed"
        SHX6_2(SHX7_2)
      else
        SHX6_2 = CMG
        SHX6_2 = SHX6_2.getObjectId
        SHX7_2 = SHX27_1
        SHX7_2 = SHX7_2[SHX5_2]
        SHX7_2 = SHX7_2[1]
        SHX8_2 = "handleWaterMonitor"
        SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
        SHX7_2 = TriggerServerEvent
        SHX8_2 = "119add1130"
        SHX9_2 = SHX5_2
        SHX10_2 = SHX27_1
        SHX10_2 = SHX10_2[SHX5_2]
        SHX11_2 = true
        SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
        if SHX6_2 then
          SHX7_2 = DoesEntityExist
          SHX8_2 = SHX6_2
          SHX7_2 = SHX7_2(SHX8_2)
          if SHX7_2 then
            SHX7_2 = DeleteEntity
            SHX8_2 = SHX6_2
            SHX7_2(SHX8_2)
          end
        end
        SHX7_2 = SHX27_1
        SHX7_2[SHX5_2] = nil
        SHX7_2 = tCMG
        SHX7_2 = SHX7_2.notify
        SHX8_2 = "~g~Success~w~: Water monitor removed"
        SHX7_2(SHX8_2)
      end
    else
      SHX6_2 = tCMG
      SHX6_2 = SHX6_2.notify
      SHX7_2 = "~r~Error~w~: No water monitor found"
      SHX6_2(SHX7_2)
    end
  end
end
SHX10_1 = SHX60_1
SHX60_1 = RegisterNetEvent
SHX61_1 = "aa50955ca8"
function SHX62_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX2_2 = SHX36_1
  SHX2_2 = SHX2_2[SHX0_2]
  if nil ~= SHX2_2 then
    SHX2_2 = SHX36_1
    SHX2_2 = SHX2_2[SHX0_2]
    SHX2_2 = SHX2_2.handle
    if nil ~= SHX2_2 then
      SHX2_2 = DoesParticleFxLoopedExist
      SHX3_2 = SHX36_1
      SHX3_2 = SHX3_2[SHX0_2]
      SHX3_2 = SHX3_2.handle
      SHX2_2 = SHX2_2(SHX3_2)
      if SHX2_2 then
        SHX2_2 = SHX27_1
        SHX2_2 = SHX2_2[SHX0_2]
        SHX2_2 = SHX2_2[2]
        SHX3_2 = StopParticleFxLooped
        SHX4_2 = SHX36_1
        SHX4_2 = SHX4_2[SHX0_2]
        SHX4_2 = SHX4_2.handle
        SHX5_2 = false
        SHX3_2(SHX4_2, SHX5_2)
        SHX3_2 = StopParticleFxLooped
        SHX4_2 = SHX36_1
        SHX4_2 = SHX4_2[SHX0_2]
        SHX4_2 = SHX4_2.handle2
        SHX5_2 = false
        SHX3_2(SHX4_2, SHX5_2)
        SHX3_2 = SHX36_1
        SHX3_2 = SHX3_2[SHX0_2]
        SHX4_2 = SHX36_1
        SHX4_2 = SHX4_2[SHX0_2]
        SHX4_2 = SHX4_2.pitch
        SHX4_2 = SHX4_2 + SHX1_2
        SHX3_2.pitch = SHX4_2
        SHX3_2 = RequestNamedPtfxAsset
        SHX4_2 = "core"
        SHX3_2(SHX4_2)
        while true do
          SHX3_2 = HasNamedPtfxAssetLoaded
          SHX4_2 = "core"
          SHX3_2 = SHX3_2(SHX4_2)
          if SHX3_2 then
            break
          end
          SHX3_2 = Wait
          SHX4_2 = 0
          SHX3_2(SHX4_2)
        end
        SHX3_2 = UseParticleFxAsset
        SHX4_2 = "core"
        SHX3_2(SHX4_2)
        SHX3_2 = SetParticleFxShootoutBoat
        SHX4_2 = 1
        SHX3_2(SHX4_2)
        SHX3_2 = SHX36_1
        SHX3_2 = SHX3_2[SHX0_2]
        SHX4_2 = StartParticleFxLoopedAtCoord
        SHX5_2 = "water_cannon_jet"
        SHX6_2 = SHX2_2.x
        SHX7_2 = SHX2_2.y
        SHX8_2 = SHX2_2.z
        SHX9_2 = SHX36_1
        SHX9_2 = SHX9_2[SHX0_2]
        SHX9_2 = SHX9_2.pitch
        SHX10_2 = 0.0
        SHX11_2 = SHX27_1
        SHX11_2 = SHX11_2[SHX0_2]
        SHX11_2 = SHX11_2[3]
        SHX12_2 = 1.0
        SHX13_2 = false
        SHX14_2 = false
        SHX15_2 = false
        SHX16_2 = false
        SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
        SHX3_2.handle = SHX4_2
        SHX3_2 = SHX36_1
        SHX3_2 = SHX3_2[SHX0_2]
        SHX4_2 = StartParticleFxLoopedAtCoord
        SHX5_2 = "water_cannon_spray"
        SHX6_2 = SHX2_2.x
        SHX7_2 = SHX2_2.y
        SHX8_2 = SHX2_2.z
        SHX9_2 = SHX36_1
        SHX9_2 = SHX9_2[SHX0_2]
        SHX9_2 = SHX9_2.pitch
        SHX10_2 = 0.0
        SHX11_2 = SHX27_1
        SHX11_2 = SHX11_2[SHX0_2]
        SHX11_2 = SHX11_2[3]
        SHX12_2 = 1.0
        SHX13_2 = false
        SHX14_2 = false
        SHX15_2 = false
        SHX16_2 = false
        SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
        SHX3_2.handle2 = SHX4_2
        SHX3_2 = RemoveNamedPtfxAsset
        SHX4_2 = "core"
        SHX3_2(SHX4_2)
      end
    end
  end
end
SHX60_1(SHX61_1, SHX62_1)
SHX60_1 = 5.0
SHX61_1 = 5.0
SHX62_1 = 3
function SHX63_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = pairs
  SHX2_2 = SHX26_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2[3]
    SHX7_2 = SHX0_2 - SHX7_2
    SHX7_2 = #SHX7_2
    if SHX7_2 < 25.0 then
      SHX8_2 = true
      return SHX8_2
    end
  end
  SHX1_2 = false
  return SHX1_2
end
SHX64_1 = Citizen
SHX64_1 = SHX64_1.CreateThread
function SHX65_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  while true do
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.hasClientPermission
    SHX1_2 = "lfb.onduty.permission"
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.getPlayerCoords
      SHX0_2 = SHX0_2()
      SHX1_2 = pairs
      SHX2_2 = SHX27_1
      SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
      for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
        SHX7_2 = SHX6_2[5]
        if not SHX7_2 then
          SHX7_2 = SHX6_2[2]
          SHX7_2 = SHX0_2 - SHX7_2
          SHX7_2 = #SHX7_2
          SHX8_2 = SHX60_1
          if SHX7_2 < SHX8_2 then
            SHX8_2 = SHX61_1
            if SHX7_2 < SHX8_2 then
              SHX8_2 = SHX6_2[4]
              if SHX8_2 then
                SHX8_2 = DisableControlAction
                SHX9_2 = 0
                SHX10_2 = 172
                SHX11_2 = true
                SHX8_2(SHX9_2, SHX10_2, SHX11_2)
                SHX8_2 = DisableControlAction
                SHX9_2 = 0
                SHX10_2 = 173
                SHX11_2 = true
                SHX8_2(SHX9_2, SHX10_2, SHX11_2)
                SHX8_2 = 0.0
                SHX9_2 = IsDisabledControlPressed
                SHX10_2 = 0
                SHX11_2 = 172
                SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
                if SHX9_2 then
                  SHX8_2 = SHX8_2 + 15.0
                end
                SHX9_2 = IsDisabledControlPressed
                SHX10_2 = 0
                SHX11_2 = 173
                SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
                if SHX9_2 then
                  SHX8_2 = SHX8_2 - 15.0
                end
                if 0.0 ~= SHX8_2 then
                  SHX9_2 = TriggerServerEvent
                  SHX10_2 = "cab7906b1d"
                  SHX11_2 = SHX5_2
                  SHX12_2 = SHX8_2
                  SHX9_2(SHX10_2, SHX11_2, SHX12_2)
                  SHX9_2 = Wait
                  SHX10_2 = 1000
                  SHX9_2(SHX10_2)
                end
                SHX9_2 = DisableControlAction
                SHX10_2 = 0
                SHX11_2 = 38
                SHX12_2 = true
                SHX9_2(SHX10_2, SHX11_2, SHX12_2)
                SHX9_2 = IsDisabledControlPressed
                SHX10_2 = 0
                SHX11_2 = 38
                SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
                if SHX9_2 then
                  SHX9_2 = true
                  SHX1_1 = SHX9_2
                  SHX9_2 = TriggerServerEvent
                  SHX10_2 = "98397e121f"
                  SHX11_2 = SHX5_2
                  SHX9_2(SHX10_2, SHX11_2)
                  SHX9_2 = tCMG
                  SHX9_2 = SHX9_2.notify
                  SHX10_2 = "~g~Success~w~: Water monitor toggled"
                  SHX9_2(SHX10_2)
                  SHX9_2 = Wait
                  SHX10_2 = SHX62_1
                  SHX10_2 = SHX10_2 * 1000
                  SHX9_2(SHX10_2)
                end
              else
                SHX8_2 = SHX63_1
                SHX9_2 = SHX0_2
                SHX8_2 = SHX8_2(SHX9_2)
                if SHX8_2 then
                  SHX8_2 = DisableControlAction
                  SHX9_2 = 0
                  SHX10_2 = 38
                  SHX11_2 = true
                  SHX8_2(SHX9_2, SHX10_2, SHX11_2)
                  SHX8_2 = IsDisabledControlPressed
                  SHX9_2 = 0
                  SHX10_2 = 38
                  SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
                  if SHX8_2 then
                    SHX8_2 = TriggerServerEvent
                    SHX9_2 = "98397e121f"
                    SHX10_2 = SHX5_2
                    SHX8_2(SHX9_2, SHX10_2)
                    SHX8_2 = tCMG
                    SHX8_2 = SHX8_2.notify
                    SHX9_2 = "~g~Success~w~: Water monitor toggled"
                    SHX8_2(SHX9_2)
                    SHX8_2 = Wait
                    SHX9_2 = SHX62_1
                    SHX9_2 = SHX9_2 * 1000
                    SHX8_2(SHX9_2)
                  end
                else
                  SHX8_2 = tCMG
                  SHX8_2 = SHX8_2.notify
                  SHX9_2 = "~r~Error~w~: No active supply line found to enable this water monitor"
                  SHX8_2(SHX9_2)
                end
              end
            else
              SHX8_2 = SHX63_1
              SHX9_2 = SHX0_2
              SHX8_2 = SHX8_2(SHX9_2)
              if SHX8_2 then
                SHX8_2 = false
                SHX9_2 = false
                SHX1_1 = SHX9_2
                while not SHX8_2 do
                  SHX9_2 = DisableControlAction
                  SHX10_2 = 0
                  SHX11_2 = 38
                  SHX12_2 = true
                  SHX9_2(SHX10_2, SHX11_2, SHX12_2)
                  SHX9_2 = IsDisabledControlPressed
                  SHX10_2 = 0
                  SHX11_2 = 38
                  SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
                  if SHX9_2 then
                    SHX9_2 = true
                    SHX1_1 = SHX9_2
                    SHX8_2 = true
                  end
                  SHX9_2 = Wait
                  SHX10_2 = 0
                  SHX9_2(SHX10_2)
                end
                SHX9_2 = SHX1_1
                if SHX9_2 then
                  SHX9_2 = TriggerServerEvent
                  SHX10_2 = "98397e121f"
                  SHX11_2 = SHX5_2
                  SHX9_2(SHX10_2, SHX11_2)
                  SHX9_2 = tCMG
                  SHX9_2 = SHX9_2.notify
                  SHX10_2 = "~g~Success~w~: Water monitor toggled"
                  SHX9_2(SHX10_2)
                  SHX9_2 = Wait
                  SHX10_2 = SHX62_1
                  SHX10_2 = SHX10_2 * 1000
                  SHX9_2(SHX10_2)
                end
              else
                SHX8_2 = tCMG
                SHX8_2 = SHX8_2.notify
                SHX9_2 = "~r~Error~w~: No active supply line found to enable this water monitor"
                SHX8_2(SHX9_2)
                SHX8_2 = SHX6_2[4]
                if SHX8_2 then
                  SHX8_2 = DisableControlAction
                  SHX9_2 = 0
                  SHX10_2 = 38
                  SHX11_2 = true
                  SHX8_2(SHX9_2, SHX10_2, SHX11_2)
                  SHX8_2 = IsDisabledControlPressed
                  SHX9_2 = 0
                  SHX10_2 = 38
                  SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
                  if SHX8_2 then
                    SHX8_2 = true
                    SHX1_1 = SHX8_2
                    SHX8_2 = TriggerServerEvent
                    SHX9_2 = "98397e121f"
                    SHX10_2 = SHX5_2
                    SHX8_2(SHX9_2, SHX10_2)
                    SHX8_2 = tCMG
                    SHX8_2 = SHX8_2.notify
                    SHX9_2 = "~g~Success~w~: Water monitor toggled"
                    SHX8_2(SHX9_2)
                    SHX8_2 = Wait
                    SHX9_2 = SHX62_1
                    SHX9_2 = SHX9_2 * 1000
                    SHX8_2(SHX9_2)
                  end
                end
              end
            end
          end
        end
      end
    end
    SHX0_2 = Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
end
SHX64_1(SHX65_1)
SHX64_1 = 0
SHX65_1 = Citizen
SHX65_1 = SHX65_1.CreateThread
function SHX66_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  while true do
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.hasClientPermission
    SHX1_2 = "lfb.onduty.permission"
    SHX0_2 = SHX0_2(SHX1_2)
    if not SHX0_2 then
      SHX0_2 = false
      SHX45_1 = SHX0_2
    end
    SHX0_2 = SHX45_1
    if SHX0_2 then
      SHX0_2 = SHX53_1
      if SHX0_2 then
        SHX0_2 = SHX41_1
        if not SHX0_2 then
          SHX0_2 = SHX44_1
          if SHX0_2 < 1 then
            SHX0_2 = 0
            SHX44_1 = SHX0_2
            SHX0_2 = tCMG
            SHX0_2 = SHX0_2.notify
            SHX1_2 = "~r~Notice~w~: You have no active supply of water"
            SHX0_2(SHX1_2)
          end
          SHX0_2 = SHX44_1
          SHX0_2 = SHX0_2 - 1
          SHX44_1 = SHX0_2
        end
        SHX0_2 = Wait
        SHX1_2 = 1000
        SHX0_2(SHX1_2)
      end
      SHX0_2 = SHX44_1
      SHX1_2 = SHX50_1
      SHX0_2 = SHX0_2 / SHX1_2
      SHX0_2 = SHX0_2 * 100
      SHX64_1 = SHX0_2
      SHX0_2 = math
      SHX0_2 = SHX0_2.floor
      SHX1_2 = SHX64_1
      SHX1_2 = SHX1_2 + 0.5
      SHX0_2 = SHX0_2(SHX1_2)
      SHX64_1 = SHX0_2
      SHX0_2 = SHX64_1
      if -1 == SHX0_2 then
        SHX0_2 = 0
        SHX64_1 = SHX0_2
      end
      SHX0_2 = SHX41_1
      if not SHX0_2 then
        SHX0_2 = CMG
        SHX0_2 = SHX0_2.getPlayerCoords
        SHX0_2 = SHX0_2()
        SHX1_2 = CMG
        SHX1_2 = SHX1_2.getPlayerVehicle
        SHX1_2 = SHX1_2()
        if 0 == SHX1_2 then
          SHX1_2 = SHX49_1
          SHX1_2 = SHX1_2()
          SHX2_2 = pairs
          SHX3_2 = SHX26_1
          SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
          for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
            SHX8_2 = SHX7_2[3]
            SHX8_2 = SHX0_2 - SHX8_2
            SHX8_2 = #SHX8_2
            SHX9_2 = SHX46_1
            if SHX8_2 < SHX9_2 then
              SHX9_2 = false
              SHX10_2 = Citizen
              SHX10_2 = SHX10_2.SetTimeout
              SHX11_2 = 5000
              function SHX12_2()
                -- [AI CLEANUP] Decompiled Lua - Fix these:
                -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                -- 3. Replace goto/label with while/repeat-until where possible
                -- 4. Remove decompiler comments, add meaningful ones
                -- 5. Fix indentation and formatting
                
                local SHX0_3, SHX1_3
                SHX0_3 = true
                SHX9_2 = SHX0_3
              end
              SHX10_2(SHX11_2, SHX12_2)
              SHX10_2 = drawNativeNotification
              SHX11_2 = "Press ~INPUT_FRONTEND_RDOWN~ to connect to this vehicle"
              SHX10_2(SHX11_2)
              while not SHX9_2 do
                SHX10_2 = DisableControlAction
                SHX11_2 = 0
                SHX12_2 = 191
                SHX13_2 = true
                SHX10_2(SHX11_2, SHX12_2, SHX13_2)
                SHX10_2 = IsDisabledControlJustPressed
                SHX11_2 = 0
                SHX12_2 = 191
                SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
                if SHX10_2 then
                  SHX10_2 = true
                  SHX41_1 = SHX10_2
                  SHX42_1 = SHX6_2
                  SHX10_2 = tCMG
                  SHX10_2 = SHX10_2.notify
                  SHX11_2 = "~g~Success~w~: You are now connected to this vehicle"
                  SHX10_2(SHX11_2)
                  SHX9_2 = true
                  SHX10_2 = SHX50_1
                  SHX44_1 = SHX10_2
                  break
                end
                SHX10_2 = Wait
                SHX11_2 = 0
                SHX10_2(SHX11_2)
              end
            end
          end
          SHX2_2 = SHX41_1
          if not SHX2_2 and 0 ~= SHX1_2 and nil ~= SHX1_2 then
            SHX2_2 = GetEntityModel
            SHX3_2 = SHX1_2
            SHX2_2 = SHX2_2(SHX3_2)
            SHX3_2 = false
            SHX4_2 = pairs
            SHX5_2 = SHX48_1
            SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
            for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
              SHX10_2 = SHX9_2.model
              if SHX10_2 == SHX2_2 then
                SHX3_2 = true
                break
              end
            end
            if SHX3_2 then
              SHX4_2 = NetworkGetNetworkIdFromEntity
              SHX5_2 = SHX1_2
              SHX4_2 = SHX4_2(SHX5_2)
              SHX5_2 = false
              SHX6_2 = pairs
              SHX7_2 = SHX43_1
              SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
              for SHX10_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
                SHX11_2 = SHX43_1
                SHX11_2 = SHX11_2[SHX10_2]
                if SHX4_2 == SHX11_2 then
                  SHX5_2 = true
                end
              end
              if not SHX5_2 then
                SHX6_2 = SHX44_1
                if SHX6_2 < 1 then
                  SHX6_2 = SHX50_1
                  SHX44_1 = SHX6_2
                  SHX6_2 = SHX43_1
                  SHX6_2[SHX4_2] = SHX4_2
                  SHX6_2 = Citizen
                  SHX6_2 = SHX6_2.SetTimeout
                  SHX7_2 = 180000
                  function SHX8_2()
                    -- [AI CLEANUP] Decompiled Lua - Fix these:
                    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                    -- 3. Replace goto/label with while/repeat-until where possible
                    -- 4. Remove decompiler comments, add meaningful ones
                    -- 5. Fix indentation and formatting
                    
                    local SHX0_3, SHX1_3
                    SHX1_3 = SHX4_2
                    SHX0_3 = SHX43_1
                    SHX0_3[SHX1_3] = nil
                  end
                  SHX6_2(SHX7_2, SHX8_2)
                  SHX6_2 = tCMG
                  SHX6_2 = SHX6_2.notify
                  SHX7_2 = "~g~Success~w~: You now have a limited supply of water from the nearest vehicle"
                  SHX6_2(SHX7_2)
                end
              else
                SHX6_2 = SHX44_1
                if SHX6_2 < 1 then
                  SHX6_2 = tCMG
                  SHX6_2 = SHX6_2.notify
                  SHX7_2 = "~r~Notice~w~: This vehicle has already supplied you with water, setup a supply line for more"
                  SHX6_2(SHX7_2)
                  SHX6_2 = Wait
                  SHX7_2 = 5000
                  SHX6_2(SHX7_2)
                end
              end
            end
          end
        end
      else
        SHX0_2 = SHX42_1
        if 0 ~= SHX0_2 then
          SHX1_2 = SHX42_1
          SHX0_2 = SHX26_1
          SHX0_2 = SHX0_2[SHX1_2]
          if nil == SHX0_2 then
            SHX0_2 = tCMG
            SHX0_2 = SHX0_2.notify
            SHX1_2 = "~r~Notice~w~: You have now been disconnected from the supply line"
            SHX0_2(SHX1_2)
            SHX0_2 = false
            SHX41_1 = SHX0_2
          end
        end
        SHX0_2 = SHX41_1
        if SHX0_2 then
          SHX0_2 = CMG
          SHX0_2 = SHX0_2.getPlayerCoords
          SHX0_2 = SHX0_2()
          SHX2_2 = SHX42_1
          SHX1_2 = SHX26_1
          SHX1_2 = SHX1_2[SHX2_2]
          SHX1_2 = SHX1_2[3]
          SHX1_2 = SHX0_2 - SHX1_2
          SHX1_2 = #SHX1_2
          SHX2_2 = 200.0
          if SHX1_2 > SHX2_2 then
            SHX2_2 = false
            SHX41_1 = SHX2_2
            SHX2_2 = 0
            SHX42_1 = SHX2_2
            SHX2_2 = tCMG
            SHX2_2 = SHX2_2.notify
            SHX3_2 = "~r~Notice~w~: You have now been disconnected from the supply line"
            SHX2_2(SHX3_2)
          end
        end
      end
    end
    SHX0_2 = Wait
    SHX1_2 = 1000
    SHX0_2(SHX1_2)
  end
end
SHX65_1(SHX66_1)
function SHX65_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX45_1
  if SHX0_2 then
    SHX0_2 = drawNativeText
    SHX1_2 = "~b~Supply Line~w~: "
    SHX2_2 = tostring
    SHX3_2 = SHX64_1
    SHX2_2 = SHX2_2(SHX3_2)
    SHX3_2 = "/100 %"
    SHX1_2 = SHX1_2 .. SHX2_2 .. SHX3_2
    SHX0_2(SHX1_2)
  end
end
SHX66_1 = CMG
SHX66_1 = SHX66_1.createThreadOnTick
SHX67_1 = SHX65_1
SHX68_1 = "LFB Hose UI"
SHX66_1(SHX67_1, SHX68_1)
SHX66_1 = {}
SHX67_1 = 2.0
SHX68_1 = RegisterNetEvent
SHX69_1 = "611bb4aa94"
function SHX70_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX1_2 = SHX28_1
  SHX1_2 = SHX1_2[SHX0_2]
  if nil ~= SHX1_2 then
    SHX1_2 = SHX28_1
    SHX1_2 = SHX1_2[SHX0_2]
    SHX2_2 = SHX28_1
    SHX2_2 = SHX2_2[SHX0_2]
    SHX2_2 = SHX2_2[8]
    SHX2_2 = not SHX2_2
    SHX1_2[8] = SHX2_2
  end
  SHX1_2 = SHX66_1
  SHX1_2 = SHX1_2[SHX0_2]
  if nil ~= SHX1_2 then
    SHX1_2 = SHX66_1
    SHX1_2 = SHX1_2[SHX0_2]
    SHX1_2 = SHX1_2.handle
    if nil ~= SHX1_2 then
      SHX1_2 = DoesParticleFxLoopedExist
      SHX2_2 = SHX66_1
      SHX2_2 = SHX2_2[SHX0_2]
      SHX2_2 = SHX2_2.handle
      SHX1_2 = SHX1_2(SHX2_2)
      if SHX1_2 then
        SHX1_2 = StopParticleFxLooped
        SHX2_2 = SHX66_1
        SHX2_2 = SHX2_2[SHX0_2]
        SHX2_2 = SHX2_2.handle
        SHX3_2 = false
        SHX1_2(SHX2_2, SHX3_2)
        SHX1_2 = StopParticleFxLooped
        SHX2_2 = SHX66_1
        SHX2_2 = SHX2_2[SHX0_2]
        SHX2_2 = SHX2_2.handle2
        SHX3_2 = false
        SHX1_2(SHX2_2, SHX3_2)
        SHX1_2 = StopParticleFxLooped
        SHX2_2 = SHX66_1
        SHX2_2 = SHX2_2[SHX0_2]
        SHX2_2 = SHX2_2.handle3
        SHX3_2 = false
        SHX1_2(SHX2_2, SHX3_2)
        SHX1_2 = StopParticleFxLooped
        SHX2_2 = SHX66_1
        SHX2_2 = SHX2_2[SHX0_2]
        SHX2_2 = SHX2_2.handle4
        SHX3_2 = false
        SHX1_2(SHX2_2, SHX3_2)
        SHX1_2 = SHX66_1
        SHX1_2[SHX0_2] = nil
      end
    end
  end
  SHX1_2 = SHX28_1
  SHX1_2 = SHX1_2[SHX0_2]
  if nil ~= SHX1_2 then
    SHX1_2 = SHX28_1
    SHX1_2 = SHX1_2[SHX0_2]
    SHX1_2 = SHX1_2[8]
    if SHX1_2 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.loadPtfx
      SHX2_2 = "core"
      SHX1_2(SHX2_2)
      SHX1_2 = UseParticleFxAsset
      SHX2_2 = "core"
      SHX1_2(SHX2_2)
      SHX1_2 = SetParticleFxShootoutBoat
      SHX2_2 = 1
      SHX1_2(SHX2_2)
      SHX1_2 = SHX66_1
      SHX2_2 = {}
      SHX1_2[SHX0_2] = SHX2_2
      SHX1_2 = SHX66_1
      SHX1_2 = SHX1_2[SHX0_2]
      SHX2_2 = StartParticleFxLoopedAtCoord
      SHX3_2 = "water_cannon_jet"
      SHX4_2 = SHX28_1
      SHX4_2 = SHX4_2[SHX0_2]
      SHX4_2 = SHX4_2[3]
      SHX4_2 = SHX4_2.x
      SHX5_2 = SHX28_1
      SHX5_2 = SHX5_2[SHX0_2]
      SHX5_2 = SHX5_2[3]
      SHX5_2 = SHX5_2.y
      SHX6_2 = SHX28_1
      SHX6_2 = SHX6_2[SHX0_2]
      SHX6_2 = SHX6_2[3]
      SHX6_2 = SHX6_2.z
      SHX7_2 = -90.0
      SHX8_2 = 0.0
      SHX9_2 = 0.0
      SHX10_2 = SHX67_1
      SHX11_2 = false
      SHX12_2 = false
      SHX13_2 = false
      SHX14_2 = false
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
      SHX1_2.handle = SHX2_2
      SHX1_2 = UseParticleFxAsset
      SHX2_2 = "core"
      SHX1_2(SHX2_2)
      SHX1_2 = SetParticleFxShootoutBoat
      SHX2_2 = 1
      SHX1_2(SHX2_2)
      SHX1_2 = SHX66_1
      SHX1_2 = SHX1_2[SHX0_2]
      SHX2_2 = StartParticleFxLoopedAtCoord
      SHX3_2 = "water_cannon_jet"
      SHX4_2 = SHX28_1
      SHX4_2 = SHX4_2[SHX0_2]
      SHX4_2 = SHX4_2[4]
      SHX4_2 = SHX4_2.x
      SHX5_2 = SHX28_1
      SHX5_2 = SHX5_2[SHX0_2]
      SHX5_2 = SHX5_2[4]
      SHX5_2 = SHX5_2.y
      SHX6_2 = SHX28_1
      SHX6_2 = SHX6_2[SHX0_2]
      SHX6_2 = SHX6_2[4]
      SHX6_2 = SHX6_2.z
      SHX7_2 = -90.0
      SHX8_2 = 0.0
      SHX9_2 = 0.0
      SHX10_2 = SHX67_1
      SHX11_2 = false
      SHX12_2 = false
      SHX13_2 = false
      SHX14_2 = false
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
      SHX1_2.handle2 = SHX2_2
      SHX1_2 = UseParticleFxAsset
      SHX2_2 = "core"
      SHX1_2(SHX2_2)
      SHX1_2 = SetParticleFxShootoutBoat
      SHX2_2 = 1
      SHX1_2(SHX2_2)
      SHX1_2 = SHX66_1
      SHX1_2 = SHX1_2[SHX0_2]
      SHX2_2 = StartParticleFxLoopedAtCoord
      SHX3_2 = "water_cannon_jet"
      SHX4_2 = SHX28_1
      SHX4_2 = SHX4_2[SHX0_2]
      SHX4_2 = SHX4_2[5]
      SHX4_2 = SHX4_2.x
      SHX5_2 = SHX28_1
      SHX5_2 = SHX5_2[SHX0_2]
      SHX5_2 = SHX5_2[5]
      SHX5_2 = SHX5_2.y
      SHX6_2 = SHX28_1
      SHX6_2 = SHX6_2[SHX0_2]
      SHX6_2 = SHX6_2[5]
      SHX6_2 = SHX6_2.z
      SHX7_2 = -90.0
      SHX8_2 = 0.0
      SHX9_2 = 0.0
      SHX10_2 = SHX67_1
      SHX11_2 = false
      SHX12_2 = false
      SHX13_2 = false
      SHX14_2 = false
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
      SHX1_2.handle3 = SHX2_2
      SHX1_2 = UseParticleFxAsset
      SHX2_2 = "core"
      SHX1_2(SHX2_2)
      SHX1_2 = SetParticleFxShootoutBoat
      SHX2_2 = 1
      SHX1_2(SHX2_2)
      SHX1_2 = SHX66_1
      SHX1_2 = SHX1_2[SHX0_2]
      SHX2_2 = StartParticleFxLoopedAtCoord
      SHX3_2 = "water_cannon_jet"
      SHX4_2 = SHX28_1
      SHX4_2 = SHX4_2[SHX0_2]
      SHX4_2 = SHX4_2[6]
      SHX4_2 = SHX4_2.x
      SHX5_2 = SHX28_1
      SHX5_2 = SHX5_2[SHX0_2]
      SHX5_2 = SHX5_2[6]
      SHX5_2 = SHX5_2.y
      SHX6_2 = SHX28_1
      SHX6_2 = SHX6_2[SHX0_2]
      SHX6_2 = SHX6_2[6]
      SHX6_2 = SHX6_2.z
      SHX7_2 = -90.0
      SHX8_2 = 0.0
      SHX9_2 = 0.0
      SHX10_2 = SHX67_1
      SHX11_2 = false
      SHX12_2 = false
      SHX13_2 = false
      SHX14_2 = false
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
      SHX1_2.handle4 = SHX2_2
      SHX1_2 = RemoveNamedPtfxAsset
      SHX2_2 = "core"
      SHX1_2(SHX2_2)
    end
  end
end
SHX68_1(SHX69_1, SHX70_1)
SHX68_1 = -431813309
function SHX69_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerVehicle
  SHX2_2 = SHX2_2()
  if 0 ~= SHX2_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.notify
    SHX4_2 = "~r~Error~w~: You must not be inside a vehicle"
    SHX3_2(SHX4_2)
    return
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerCoords
  SHX3_2 = SHX3_2()
  if SHX0_2 then
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.loadModel
    SHX5_2 = SHX68_1
    SHX4_2(SHX5_2)
    SHX4_2 = GetOffsetFromEntityInWorldCoords
    SHX5_2 = SHX1_2
    SHX6_2 = 0.0
    SHX7_2 = 5.0
    SHX8_2 = 0.0
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.requestEntitySpawn
    SHX6_2 = "lfb_prop"
    SHX7_2 = "tent"
    SHX8_2 = SHX4_2
    SHX5_2(SHX6_2, SHX7_2, SHX8_2)
    SHX5_2 = CreateObject
    SHX6_2 = SHX68_1
    SHX7_2 = SHX4_2.x
    SHX8_2 = SHX4_2.y
    SHX9_2 = SHX4_2.z
    SHX10_2 = true
    SHX11_2 = true
    SHX12_2 = true
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    while true do
      SHX6_2 = DoesEntityExist
      SHX7_2 = SHX5_2
      SHX6_2 = SHX6_2(SHX7_2)
      if SHX6_2 then
        break
      end
      SHX6_2 = Wait
      SHX7_2 = 0
      SHX6_2(SHX7_2)
    end
    SHX6_2 = TriggerServerEvent
    SHX7_2 = "3a7f6a2bdf"
    SHX8_2 = "Decontamination Tent"
    SHX9_2 = GetEntityCoords
    SHX10_2 = SHX5_2
    SHX11_2 = true
    SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2 = SHX9_2(SHX10_2, SHX11_2)
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
    SHX6_2 = NetworkGetNetworkIdFromEntity
    SHX7_2 = SHX5_2
    SHX6_2 = SHX6_2(SHX7_2)
    SHX7_2 = PlaceObjectOnGroundProperly
    SHX8_2 = SHX5_2
    SHX7_2(SHX8_2)
    SHX7_2 = FreezeEntityPosition
    SHX8_2 = SHX5_2
    SHX9_2 = true
    SHX7_2(SHX8_2, SHX9_2)
    SHX7_2 = SetEntityHeading
    SHX8_2 = SHX5_2
    SHX9_2 = GetEntityHeading
    SHX10_2 = SHX1_2
    SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2 = SHX9_2(SHX10_2)
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
    SHX7_2 = GetOffsetFromEntityInWorldCoords
    SHX8_2 = SHX5_2
    SHX9_2 = -1.75
    SHX10_2 = 0.0
    SHX11_2 = 2.9
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX8_2 = GetOffsetFromEntityInWorldCoords
    SHX9_2 = SHX5_2
    SHX10_2 = -0.63
    SHX11_2 = 0.0
    SHX12_2 = 2.9
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX9_2 = GetOffsetFromEntityInWorldCoords
    SHX10_2 = SHX5_2
    SHX11_2 = 0.63
    SHX12_2 = 0.0
    SHX13_2 = 2.9
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX10_2 = GetOffsetFromEntityInWorldCoords
    SHX11_2 = SHX5_2
    SHX12_2 = 1.75
    SHX13_2 = 0.0
    SHX14_2 = 2.9
    SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX11_2 = SHX28_1
    SHX12_2 = {}
    SHX13_2 = SHX6_2
    SHX14_2 = SHX4_2
    SHX15_2 = SHX7_2
    SHX16_2 = SHX8_2
    SHX17_2 = SHX9_2
    SHX18_2 = SHX10_2
    SHX19_2 = GetEntityHeading
    SHX20_2 = SHX5_2
    SHX19_2 = SHX19_2(SHX20_2)
    SHX20_2 = false
    SHX12_2[1] = SHX13_2
    SHX12_2[2] = SHX14_2
    SHX12_2[3] = SHX15_2
    SHX12_2[4] = SHX16_2
    SHX12_2[5] = SHX17_2
    SHX12_2[6] = SHX18_2
    SHX12_2[7] = SHX19_2
    SHX12_2[8] = SHX20_2
    SHX11_2[SHX6_2] = SHX12_2
    SHX11_2 = TriggerServerEvent
    SHX12_2 = "e504a7e25b"
    SHX13_2 = SHX6_2
    SHX14_2 = SHX28_1
    SHX14_2 = SHX14_2[SHX6_2]
    SHX15_2 = false
    SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    SHX11_2 = SetModelAsNoLongerNeeded
    SHX12_2 = SHX68_1
    SHX11_2(SHX12_2)
    SHX11_2 = tCMG
    SHX11_2 = SHX11_2.notify
    SHX12_2 = "~g~Success~w~: Decontamination tent setup"
    SHX11_2(SHX12_2)
  else
    SHX4_2 = false
    SHX5_2 = 0
    SHX6_2 = pairs
    SHX7_2 = SHX28_1
    SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
    for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
      SHX12_2 = SHX11_2[2]
      SHX12_2 = SHX3_2 - SHX12_2
      SHX12_2 = #SHX12_2
      if SHX12_2 < 25.0 then
        SHX5_2 = SHX10_2
        SHX4_2 = true
        break
      end
    end
    if SHX4_2 then
      SHX6_2 = SHX28_1
      SHX6_2 = SHX6_2[SHX5_2]
      SHX6_2 = SHX6_2[8]
      if SHX6_2 then
        SHX6_2 = tCMG
        SHX6_2 = SHX6_2.notify
        SHX7_2 = "~r~Error~w~: This decontamination tent is active and cannot be removed"
        SHX6_2(SHX7_2)
      else
        SHX6_2 = CMG
        SHX6_2 = SHX6_2.getObjectId
        SHX7_2 = SHX28_1
        SHX7_2 = SHX7_2[SHX5_2]
        SHX7_2 = SHX7_2[1]
        SHX8_2 = "handleDecontaminationTent"
        SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
        SHX7_2 = TriggerServerEvent
        SHX8_2 = "e504a7e25b"
        SHX9_2 = SHX5_2
        SHX10_2 = SHX28_1
        SHX10_2 = SHX10_2[SHX5_2]
        SHX11_2 = true
        SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
        if SHX6_2 then
          SHX7_2 = DoesEntityExist
          SHX8_2 = SHX6_2
          SHX7_2 = SHX7_2(SHX8_2)
          if SHX7_2 then
            SHX7_2 = DeleteEntity
            SHX8_2 = SHX6_2
            SHX7_2(SHX8_2)
          end
        end
        SHX7_2 = SHX28_1
        SHX7_2[SHX5_2] = nil
        SHX7_2 = tCMG
        SHX7_2 = SHX7_2.notify
        SHX8_2 = "~g~Success~w~: Decontamination tent removed"
        SHX7_2(SHX8_2)
      end
    else
      SHX6_2 = tCMG
      SHX6_2 = SHX6_2.notify
      SHX7_2 = "~r~Error~w~: No decontamination tent found"
      SHX6_2(SHX7_2)
    end
  end
end
SHX9_1 = SHX69_1
SHX69_1 = RegisterNetEvent
SHX70_1 = "e504a7e25b"
function SHX71_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2
  if SHX2_2 then
    SHX3_2 = SHX28_1
    SHX3_2[SHX0_2] = nil
    return
  end
  SHX3_2 = SHX28_1
  SHX3_2[SHX0_2] = SHX1_2
end
SHX69_1(SHX70_1, SHX71_1)
SHX69_1 = 15.0
function SHX70_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hasClientPermission
  SHX1_2 = "lfb.onduty.permission"
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerCoords
    SHX0_2 = SHX0_2()
    SHX1_2 = pairs
    SHX2_2 = SHX28_1
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
    for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
      SHX7_2 = SHX6_2[2]
      SHX7_2 = SHX0_2 - SHX7_2
      SHX7_2 = #SHX7_2
      SHX8_2 = SHX69_1
      if SHX7_2 < SHX8_2 then
        SHX8_2 = drawNativeNotification
        SHX9_2 = "Press ~INPUT_PICKUP~ to toggle the ~b~decontamination showers"
        SHX8_2(SHX9_2)
        SHX8_2 = DisableControlAction
        SHX9_2 = 0
        SHX10_2 = 38
        SHX11_2 = true
        SHX8_2(SHX9_2, SHX10_2, SHX11_2)
        SHX8_2 = IsDisabledControlJustPressed
        SHX9_2 = 0
        SHX10_2 = 38
        SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
        if SHX8_2 then
          SHX8_2 = TriggerServerEvent
          SHX9_2 = "611bb4aa94"
          SHX10_2 = SHX5_2
          SHX8_2(SHX9_2, SHX10_2)
          SHX8_2 = tCMG
          SHX8_2 = SHX8_2.notify
          SHX9_2 = "~g~Success~w~: Decontamination showers toggled"
          SHX8_2(SHX9_2)
        end
      end
    end
  end
end
SHX71_1 = CMG
SHX71_1 = SHX71_1.createThreadOnTick
SHX72_1 = SHX70_1
SHX73_1 = "LFB Showers"
SHX71_1(SHX72_1, SHX73_1)
SHX71_1 = RegisterNetEvent
SHX72_1 = "0004c6d062"
function SHX73_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2
  if SHX2_2 then
    SHX3_2 = SHX29_1
    SHX3_2[SHX0_2] = nil
    return
  end
  SHX3_2 = SHX29_1
  SHX3_2[SHX0_2] = SHX1_2
end
SHX71_1(SHX72_1, SHX73_1)
SHX71_1 = 1230203395
function SHX72_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerVehicle
  SHX2_2 = SHX2_2()
  if 0 ~= SHX2_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.notify
    SHX4_2 = "~r~Error~w~: You must not be inside a vehicle"
    SHX3_2(SHX4_2)
    return
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerCoords
  SHX3_2 = SHX3_2()
  if SHX0_2 then
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.loadModel
    SHX5_2 = SHX71_1
    SHX4_2(SHX5_2)
    SHX4_2 = GetOffsetFromEntityInWorldCoords
    SHX5_2 = SHX1_2
    SHX6_2 = 0.0
    SHX7_2 = 1.5
    SHX8_2 = 0.0
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.requestEntitySpawn
    SHX6_2 = "lfb_prop"
    SHX7_2 = "cushion"
    SHX8_2 = SHX4_2
    SHX5_2(SHX6_2, SHX7_2, SHX8_2)
    SHX5_2 = CreateObject
    SHX6_2 = SHX71_1
    SHX7_2 = SHX4_2.x
    SHX8_2 = SHX4_2.y
    SHX9_2 = SHX4_2.z
    SHX10_2 = true
    SHX11_2 = true
    SHX12_2 = true
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    while true do
      SHX6_2 = DoesEntityExist
      SHX7_2 = SHX5_2
      SHX6_2 = SHX6_2(SHX7_2)
      if SHX6_2 then
        break
      end
      SHX6_2 = Wait
      SHX7_2 = 0
      SHX6_2(SHX7_2)
    end
    SHX6_2 = TriggerServerEvent
    SHX7_2 = "3a7f6a2bdf"
    SHX8_2 = "Rescue Cushion"
    SHX9_2 = GetEntityCoords
    SHX10_2 = SHX5_2
    SHX11_2 = true
    SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX9_2(SHX10_2, SHX11_2)
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX6_2 = SetEntityCollision
    SHX7_2 = SHX5_2
    SHX8_2 = false
    SHX9_2 = true
    SHX6_2(SHX7_2, SHX8_2, SHX9_2)
    SHX6_2 = PlaceObjectOnGroundProperly
    SHX7_2 = SHX5_2
    SHX6_2(SHX7_2)
    SHX6_2 = FreezeEntityPosition
    SHX7_2 = SHX5_2
    SHX8_2 = true
    SHX6_2(SHX7_2, SHX8_2)
    while true do
      SHX6_2 = NetworkGetNetworkIdFromEntity
      SHX7_2 = SHX5_2
      SHX6_2 = SHX6_2(SHX7_2)
      if 0 ~= SHX6_2 then
        break
      end
      SHX6_2 = Wait
      SHX7_2 = 0
      SHX6_2(SHX7_2)
    end
    SHX6_2 = NetworkGetNetworkIdFromEntity
    SHX7_2 = SHX5_2
    SHX6_2 = SHX6_2(SHX7_2)
    SHX7_2 = SHX29_1
    SHX8_2 = {}
    SHX9_2 = SHX6_2
    SHX10_2 = SHX4_2
    SHX8_2[1] = SHX9_2
    SHX8_2[2] = SHX10_2
    SHX7_2[SHX6_2] = SHX8_2
    SHX7_2 = TriggerServerEvent
    SHX8_2 = "0004c6d062"
    SHX9_2 = SHX6_2
    SHX10_2 = SHX29_1
    SHX10_2 = SHX10_2[SHX6_2]
    SHX11_2 = false
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX7_2 = SetModelAsNoLongerNeeded
    SHX8_2 = SHX71_1
    SHX7_2(SHX8_2)
    SHX7_2 = tCMG
    SHX7_2 = SHX7_2.notify
    SHX8_2 = "~g~Success~w~: Rescue cushion setup"
    SHX7_2(SHX8_2)
  else
    SHX4_2 = false
    SHX5_2 = 0
    SHX6_2 = pairs
    SHX7_2 = SHX29_1
    SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
    for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
      SHX12_2 = SHX11_2[2]
      SHX12_2 = SHX3_2 - SHX12_2
      SHX12_2 = #SHX12_2
      if SHX12_2 < 15.0 then
        SHX5_2 = SHX10_2
        SHX4_2 = true
        break
      end
    end
    if SHX4_2 then
      SHX6_2 = TriggerServerEvent
      SHX7_2 = "ef321f8c43"
      SHX8_2 = SHX29_1
      SHX8_2 = SHX8_2[SHX5_2]
      SHX8_2 = SHX8_2[1]
      SHX6_2(SHX7_2, SHX8_2)
      SHX6_2 = CMG
      SHX6_2 = SHX6_2.getObjectId
      SHX7_2 = SHX29_1
      SHX7_2 = SHX7_2[SHX5_2]
      SHX7_2 = SHX7_2[1]
      SHX8_2 = "handleRescueCushion"
      SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
      SHX7_2 = TriggerServerEvent
      SHX8_2 = "0004c6d062"
      SHX9_2 = SHX5_2
      SHX10_2 = SHX29_1
      SHX10_2 = SHX10_2[SHX5_2]
      SHX11_2 = true
      SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
      if SHX6_2 then
        SHX7_2 = DoesEntityExist
        SHX8_2 = SHX6_2
        SHX7_2 = SHX7_2(SHX8_2)
        if SHX7_2 then
          SHX7_2 = DeleteEntity
          SHX8_2 = SHX6_2
          SHX7_2(SHX8_2)
        end
      end
      SHX7_2 = SHX29_1
      SHX7_2[SHX5_2] = nil
      SHX7_2 = tCMG
      SHX7_2 = SHX7_2.notify
      SHX8_2 = "~g~Success~w~: Rescue cushion removed"
      SHX7_2(SHX8_2)
    else
      SHX6_2 = tCMG
      SHX6_2 = SHX6_2.notify
      SHX7_2 = "~r~Error~w~: No rescue cushion found"
      SHX6_2(SHX7_2)
    end
  end
end
SHX12_1 = SHX72_1
SHX72_1 = false
SHX73_1 = 10
SHX74_1 = 60
SHX75_1 = Citizen
SHX75_1 = SHX75_1.CreateThread
function SHX76_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  while true do
    SHX0_2 = SHX72_1
    if not SHX0_2 then
      SHX0_2 = table
      SHX0_2 = SHX0_2.count
      SHX1_2 = SHX29_1
      SHX0_2 = SHX0_2(SHX1_2)
      if SHX0_2 > 0 then
        SHX0_2 = CMG
        SHX0_2 = SHX0_2.getPlayerPed
        SHX0_2 = SHX0_2()
        SHX1_2 = CMG
        SHX1_2 = SHX1_2.getPlayerVehicle
        SHX1_2 = SHX1_2()
        if 0 == SHX1_2 then
          SHX2_2 = CMG
          SHX2_2 = SHX2_2.getPlayerCoords
          SHX2_2 = SHX2_2()
          SHX3_2 = false
          SHX4_2 = pairs
          SHX5_2 = SHX29_1
          SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
          for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
            SHX10_2 = vector3
            SHX11_2 = SHX9_2[2]
            SHX11_2 = SHX11_2.x
            SHX12_2 = SHX9_2[2]
            SHX12_2 = SHX12_2.y
            SHX13_2 = SHX2_2.z
            SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
            SHX10_2 = SHX2_2 - SHX10_2
            SHX10_2 = #SHX10_2
            if SHX10_2 < 20.0 then
              SHX3_2 = true
              SHX11_2 = GetEntityHeightAboveGround
              SHX12_2 = SHX0_2
              SHX11_2 = SHX11_2(SHX12_2)
              if SHX11_2 >= 2.0 then
                SHX11_2 = SetPlayerFallDistance
                SHX12_2 = CMG
                SHX12_2 = SHX12_2.getPlayerId
                SHX12_2 = SHX12_2()
                SHX13_2 = 250.0
                SHX11_2(SHX12_2, SHX13_2)
                SHX11_2 = true
                SHX0_1 = SHX11_2
              else
                SHX11_2 = SetPlayerFallDistance
                SHX12_2 = CMG
                SHX12_2 = SHX12_2.getPlayerId
                SHX12_2 = SHX12_2()
                SHX13_2 = 5.0
                SHX11_2(SHX12_2, SHX13_2)
              end
            else
              SHX11_2 = SetPlayerFallDistance
              SHX12_2 = CMG
              SHX12_2 = SHX12_2.getPlayerId
              SHX12_2 = SHX12_2()
              SHX13_2 = 5.0
              SHX11_2(SHX12_2, SHX13_2)
            end
            if SHX10_2 < 12.0 then
              SHX11_2 = IsPedFalling
              SHX12_2 = SHX0_2
              SHX11_2 = SHX11_2(SHX12_2)
              if SHX11_2 then
                SHX11_2 = SetEntityInvincible
                SHX12_2 = SHX0_2
                SHX13_2 = true
                SHX11_2(SHX12_2, SHX13_2)
                SHX11_2 = false
                SHX12_2 = Citizen
                SHX12_2 = SHX12_2.SetTimeout
                SHX13_2 = 7000
                function SHX14_2()
                  -- [AI CLEANUP] Decompiled Lua - Fix these:
                  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                  -- 3. Replace goto/label with while/repeat-until where possible
                  -- 4. Remove decompiler comments, add meaningful ones
                  -- 5. Fix indentation and formatting
                  
                  local SHX0_3, SHX1_3
                  SHX0_3 = true
                  SHX11_2 = SHX0_3
                end
                SHX12_2(SHX13_2, SHX14_2)
                while not SHX11_2 do
                  SHX12_2 = IsPedFalling
                  SHX13_2 = SHX0_2
                  SHX12_2 = SHX12_2(SHX13_2)
                  if not SHX12_2 then
                    SHX12_2 = Wait
                    SHX13_2 = 500
                    SHX12_2(SHX13_2)
                    SHX11_2 = true
                  end
                  SHX12_2 = Wait
                  SHX13_2 = 0
                  SHX12_2(SHX13_2)
                end
                SHX12_2 = SetEntityInvincible
                SHX13_2 = SHX0_2
                SHX14_2 = false
                SHX12_2(SHX13_2, SHX14_2)
                SHX12_2 = CMG
                SHX12_2 = SHX12_2.getPlayerCoords
                SHX12_2 = SHX12_2()
                SHX13_2 = SHX9_2[2]
                SHX12_2 = SHX12_2 - SHX13_2
                SHX12_2 = #SHX12_2
                if SHX12_2 < 4.0 then
                  SHX13_2 = SetPedToRagdoll
                  SHX14_2 = SHX0_2
                  SHX15_2 = SHX73_1
                  SHX15_2 = SHX15_2 * 1000
                  SHX16_2 = SHX73_1
                  SHX16_2 = SHX16_2 * 1000
                  SHX17_2 = 0
                  SHX18_2 = false
                  SHX19_2 = false
                  SHX20_2 = false
                  SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
                end
                SHX13_2 = false
                SHX0_1 = SHX13_2
                SHX13_2 = SetPlayerFallDistance
                SHX14_2 = CMG
                SHX14_2 = SHX14_2.getPlayerId
                SHX14_2 = SHX14_2()
                SHX15_2 = 5.0
                SHX13_2(SHX14_2, SHX15_2)
                SHX13_2 = true
                SHX72_1 = SHX13_2
                SHX13_2 = Citizen
                SHX13_2 = SHX13_2.SetTimeout
                SHX14_2 = SHX74_1
                SHX14_2 = SHX14_2 * 1000
                function SHX15_2()
                  -- [AI CLEANUP] Decompiled Lua - Fix these:
                  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                  -- 3. Replace goto/label with while/repeat-until where possible
                  -- 4. Remove decompiler comments, add meaningful ones
                  -- 5. Fix indentation and formatting
                  
                  local SHX0_3, SHX1_3
                  SHX0_3 = false
                  SHX72_1 = SHX0_3
                end
                SHX13_2(SHX14_2, SHX15_2)
              end
            end
          end
          if not SHX3_2 then
            SHX4_2 = SHX0_1
            if SHX4_2 then
              SHX4_2 = SetPlayerFallDistance
              SHX5_2 = CMG
              SHX5_2 = SHX5_2.getPlayerId
              SHX5_2 = SHX5_2()
              SHX6_2 = 5.0
              SHX4_2(SHX5_2, SHX6_2)
            end
          end
        end
      end
    end
    SHX0_2 = Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
end
SHX75_1(SHX76_1)
SHX75_1 = RegisterNetEvent
SHX76_1 = "2580a73806"
function SHX77_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2
  if SHX2_2 then
    SHX3_2 = SHX30_1
    SHX3_2[SHX0_2] = nil
    return
  end
  SHX3_2 = SHX30_1
  SHX3_2[SHX0_2] = SHX1_2
end
SHX75_1(SHX76_1, SHX77_1)
SHX75_1 = RegisterNetEvent
SHX76_1 = "c9e1fb3817"
function SHX77_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2
  if SHX2_2 then
    SHX3_2 = SHX31_1
    SHX3_2[SHX0_2] = nil
    return
  end
  SHX3_2 = SHX31_1
  SHX3_2[SHX0_2] = SHX1_2
end
SHX75_1(SHX76_1, SHX77_1)
SHX75_1 = RegisterNetEvent
SHX76_1 = "4a9a9f7b1f"
function SHX77_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = Wait
  SHX1_2 = 20000
  SHX0_2(SHX1_2)
end
SHX75_1(SHX76_1, SHX77_1)
SHX75_1 = 1256126702
SHX76_1 = 0
function SHX77_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerCoords
  SHX1_2 = SHX1_2()
  SHX2_2 = GetOffsetFromEntityInWorldCoords
  SHX3_2 = SHX0_2
  SHX4_2 = 0.0
  SHX5_2 = 8.0
  SHX6_2 = 0.0
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = StartShapeTestCapsule
  SHX4_2 = SHX1_2.x
  SHX5_2 = SHX1_2.y
  SHX6_2 = SHX1_2.z
  SHX7_2 = SHX2_2.x
  SHX8_2 = SHX2_2.y
  SHX9_2 = SHX2_2.z
  SHX10_2 = 10.0
  SHX11_2 = 2
  SHX12_2 = SHX0_2
  SHX13_2 = 0
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX4_2 = GetShapeTestResult
  SHX5_2 = SHX3_2
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX4_2(SHX5_2)
  return SHX8_2
end
function SHX78_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.CreateThread
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3
    SHX0_3 = "door_dside_f"
    SHX1_3 = "door_dside_r"
    SHX2_3 = "door_pside_f"
    SHX3_3 = "door_pside_r"
    SHX4_3 = "boot"
    while true do
      SHX5_3 = SHX13_1
      if not SHX5_3 then
        break
      end
      SHX5_3 = CMG
      SHX5_3 = SHX5_3.getPlayerCoords
      SHX5_3 = SHX5_3()
      SHX6_3 = SHX77_1
      SHX6_3 = SHX6_3()
      if 0 ~= SHX6_3 and nil ~= SHX6_3 then
        SHX7_3 = drawNativeText
        SHX8_3 = "~r~Error~w~: No vehicle found"
        SHX7_3(SHX8_3)
        SHX7_3 = GetEntityBoneIndexByName
        SHX8_3 = SHX6_3
        SHX9_3 = SHX0_3
        SHX7_3 = SHX7_3(SHX8_3, SHX9_3)
        SHX8_3 = GetEntityBoneIndexByName
        SHX9_3 = SHX6_3
        SHX10_3 = SHX1_3
        SHX8_3 = SHX8_3(SHX9_3, SHX10_3)
        SHX9_3 = GetEntityBoneIndexByName
        SHX10_3 = SHX6_3
        SHX11_3 = SHX2_3
        SHX9_3 = SHX9_3(SHX10_3, SHX11_3)
        SHX10_3 = GetEntityBoneIndexByName
        SHX11_3 = SHX6_3
        SHX12_3 = SHX3_3
        SHX10_3 = SHX10_3(SHX11_3, SHX12_3)
        SHX11_3 = GetEntityBoneIndexByName
        SHX12_3 = SHX6_3
        SHX13_3 = SHX4_3
        SHX11_3 = SHX11_3(SHX12_3, SHX13_3)
        SHX12_3 = {}
        SHX13_3 = {}
        SHX14_3 = GetWorldPositionOfEntityBone
        SHX15_3 = SHX6_3
        SHX16_3 = SHX7_3
        SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3 = SHX14_3(SHX15_3, SHX16_3)
        SHX13_3[1] = SHX14_3
        SHX13_3[2] = SHX15_3
        SHX13_3[3] = SHX16_3
        SHX13_3[4] = SHX17_3
        SHX13_3[5] = SHX18_3
        SHX13_3[6] = SHX19_3
        SHX13_3[7] = SHX20_3
        SHX13_3[8] = SHX21_3
        SHX13_3[9] = SHX22_3
        SHX12_3[1] = SHX13_3
        SHX13_3 = {}
        SHX14_3 = GetWorldPositionOfEntityBone
        SHX15_3 = SHX6_3
        SHX16_3 = SHX8_3
        SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3 = SHX14_3(SHX15_3, SHX16_3)
        SHX13_3[1] = SHX14_3
        SHX13_3[2] = SHX15_3
        SHX13_3[3] = SHX16_3
        SHX13_3[4] = SHX17_3
        SHX13_3[5] = SHX18_3
        SHX13_3[6] = SHX19_3
        SHX13_3[7] = SHX20_3
        SHX13_3[8] = SHX21_3
        SHX13_3[9] = SHX22_3
        SHX12_3[2] = SHX13_3
        SHX13_3 = {}
        SHX14_3 = GetWorldPositionOfEntityBone
        SHX15_3 = SHX6_3
        SHX16_3 = SHX9_3
        SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3 = SHX14_3(SHX15_3, SHX16_3)
        SHX13_3[1] = SHX14_3
        SHX13_3[2] = SHX15_3
        SHX13_3[3] = SHX16_3
        SHX13_3[4] = SHX17_3
        SHX13_3[5] = SHX18_3
        SHX13_3[6] = SHX19_3
        SHX13_3[7] = SHX20_3
        SHX13_3[8] = SHX21_3
        SHX13_3[9] = SHX22_3
        SHX12_3[3] = SHX13_3
        SHX13_3 = {}
        SHX14_3 = GetWorldPositionOfEntityBone
        SHX15_3 = SHX6_3
        SHX16_3 = SHX10_3
        SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3 = SHX14_3(SHX15_3, SHX16_3)
        SHX13_3[1] = SHX14_3
        SHX13_3[2] = SHX15_3
        SHX13_3[3] = SHX16_3
        SHX13_3[4] = SHX17_3
        SHX13_3[5] = SHX18_3
        SHX13_3[6] = SHX19_3
        SHX13_3[7] = SHX20_3
        SHX13_3[8] = SHX21_3
        SHX13_3[9] = SHX22_3
        SHX12_3[4] = SHX13_3
        SHX13_3 = {}
        SHX14_3 = GetWorldPositionOfEntityBone
        SHX15_3 = SHX6_3
        SHX16_3 = SHX11_3
        SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3 = SHX14_3(SHX15_3, SHX16_3)
        SHX13_3[1] = SHX14_3
        SHX13_3[2] = SHX15_3
        SHX13_3[3] = SHX16_3
        SHX13_3[4] = SHX17_3
        SHX13_3[5] = SHX18_3
        SHX13_3[6] = SHX19_3
        SHX13_3[7] = SHX20_3
        SHX13_3[8] = SHX21_3
        SHX13_3[9] = SHX22_3
        SHX12_3[5] = SHX13_3
        SHX13_3 = SHX12_3[1]
        SHX13_3[2] = 0
        SHX13_3 = SHX12_3[2]
        SHX13_3[2] = 2
        SHX13_3 = SHX12_3[3]
        SHX13_3[2] = 1
        SHX13_3 = SHX12_3[4]
        SHX13_3[2] = 3
        SHX13_3 = SHX12_3[4]
        SHX13_3[2] = 5
        SHX13_3 = 1
        SHX14_3 = 0.0
        SHX15_3 = 1
        SHX16_3 = 5
        SHX17_3 = 1
        for SHX18_3 = SHX15_3, SHX16_3, SHX17_3 do
          SHX19_3 = SHX12_3[SHX18_3]
          SHX19_3 = SHX19_3[1]
          SHX19_3 = SHX5_3 - SHX19_3
          SHX19_3 = #SHX19_3
          if 0.0 == SHX14_3 then
            SHX14_3 = SHX19_3
          elseif SHX19_3 < SHX14_3 then
            SHX14_3 = SHX19_3
            SHX13_3 = SHX18_3
          end
          SHX18_3 = SHX18_3 + 1
        end
        SHX15_3 = drawNativeText
        SHX16_3 = "Vehicle ~g~door found"
        SHX15_3(SHX16_3)
        SHX15_3 = false
        SHX16_3 = Citizen
        SHX16_3 = SHX16_3.SetTimeout
        SHX17_3 = 5000
        function SHX18_3()
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX0_4, SHX1_4
          SHX0_4 = true
          SHX15_3 = SHX0_4
        end
        SHX16_3(SHX17_3, SHX18_3)
        SHX16_3 = drawNativeNotification
        SHX17_3 = "Press ~b~ENTER ~w~to open or ~b~SPACE~w~ to break the vehicle door"
        SHX16_3(SHX17_3)
        while not SHX15_3 do
          SHX16_3 = DisableControlAction
          SHX17_3 = 0
          SHX18_3 = 191
          SHX19_3 = true
          SHX16_3(SHX17_3, SHX18_3, SHX19_3)
          SHX16_3 = DisableControlAction
          SHX17_3 = 0
          SHX18_3 = 22
          SHX19_3 = true
          SHX16_3(SHX17_3, SHX18_3, SHX19_3)
          SHX16_3 = IsDisabledControlJustPressed
          SHX17_3 = 0
          SHX18_3 = 22
          SHX16_3 = SHX16_3(SHX17_3, SHX18_3)
          if SHX16_3 then
            SHX16_3 = NetworkGetNetworkIdFromEntity
            SHX17_3 = SHX6_3
            SHX16_3 = SHX16_3(SHX17_3)
            SHX17_3 = TriggerServerEvent
            SHX18_3 = "4f29e75b8e"
            SHX19_3 = SHX16_3
            SHX20_3 = SHX12_3[SHX13_3]
            SHX20_3 = SHX20_3[2]
            SHX21_3 = CMG
            SHX21_3 = SHX21_3.getPlayerCoords
            SHX21_3 = SHX21_3()
            SHX22_3 = true
            SHX17_3(SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3)
            SHX15_3 = true
          end
          SHX16_3 = IsDisabledControlJustPressed
          SHX17_3 = 0
          SHX18_3 = 191
          SHX16_3 = SHX16_3(SHX17_3, SHX18_3)
          if SHX16_3 then
            SHX16_3 = NetworkGetNetworkIdFromEntity
            SHX17_3 = SHX6_3
            SHX16_3 = SHX16_3(SHX17_3)
            SHX17_3 = TriggerServerEvent
            SHX18_3 = "4f29e75b8e"
            SHX19_3 = SHX16_3
            SHX20_3 = SHX12_3[SHX13_3]
            SHX20_3 = SHX20_3[2]
            SHX21_3 = CMG
            SHX21_3 = SHX21_3.getPlayerCoords
            SHX21_3 = SHX21_3()
            SHX22_3 = false
            SHX17_3(SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3)
            SHX15_3 = true
          end
          SHX16_3 = Wait
          SHX17_3 = 0
          SHX16_3(SHX17_3)
        end
      else
        SHX7_3 = drawNativeText
        SHX8_3 = "Vehicle ~r~not found"
        SHX7_3(SHX8_3)
      end
      SHX7_3 = Wait
      SHX8_3 = 100
      SHX7_3(SHX8_3)
    end
  end
  SHX0_2(SHX1_2)
end
function SHX79_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerVehicle
  SHX1_2 = SHX1_2()
  if 0 ~= SHX1_2 then
    SHX2_2 = tCMG
    SHX2_2 = SHX2_2.notify
    SHX3_2 = "~r~Error~w~: You must not be inside a vehicle"
    SHX2_2(SHX3_2)
    return
  end
  SHX2_2 = SHX13_1
  if not SHX2_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.loadModel
    SHX3_2 = SHX75_1
    SHX2_2(SHX3_2)
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.loadAnimDict
    SHX3_2 = "weapons@heavy@minigun"
    SHX2_2(SHX3_2)
    SHX2_2 = TaskPlayAnim
    SHX3_2 = SHX0_2
    SHX4_2 = "weapons@heavy@minigun"
    SHX5_2 = "idle_2_aim_right_med"
    SHX6_2 = -8.0
    SHX7_2 = 8.0
    SHX8_2 = -1
    SHX9_2 = 50
    SHX10_2 = 8.0
    SHX11_2 = false
    SHX12_2 = false
    SHX13_2 = false
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX2_2 = RemoveAnimDict
    SHX3_2 = "weapons@heavy@minigun"
    SHX2_2(SHX3_2)
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.getPlayerCoords
    SHX2_2 = SHX2_2()
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.requestEntitySpawn
    SHX4_2 = "lfb_prop"
    SHX5_2 = "spreaders"
    SHX6_2 = SHX2_2
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    SHX3_2 = CreateObject
    SHX4_2 = SHX75_1
    SHX5_2 = SHX2_2.x
    SHX6_2 = SHX2_2.y
    SHX7_2 = SHX2_2.z
    SHX8_2 = true
    SHX9_2 = true
    SHX10_2 = true
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    SHX4_2 = TriggerServerEvent
    SHX5_2 = "3a7f6a2bdf"
    SHX6_2 = "Rescue Cushion"
    SHX7_2 = GetEntityCoords
    SHX8_2 = SHX3_2
    SHX9_2 = true
    SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2 = SHX7_2(SHX8_2, SHX9_2)
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
    SHX76_1 = SHX3_2
    SHX4_2 = SetEntityCollision
    SHX5_2 = SHX3_2
    SHX6_2 = false
    SHX7_2 = true
    SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    SHX4_2 = GetPedBoneIndex
    SHX5_2 = SHX0_2
    SHX6_2 = 57005
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
    SHX5_2 = AttachEntityToEntity
    SHX6_2 = SHX3_2
    SHX7_2 = SHX0_2
    SHX8_2 = SHX4_2
    SHX9_2 = 1.0
    SHX10_2 = 0.4
    SHX11_2 = 0.7
    SHX12_2 = 0.0
    SHX13_2 = 220.0
    SHX14_2 = 200.0
    SHX15_2 = true
    SHX16_2 = true
    SHX17_2 = true
    SHX18_2 = true
    SHX19_2 = 1
    SHX20_2 = true
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
    SHX5_2 = SetModelAsNoLongerNeeded
    SHX6_2 = SHX75_1
    SHX5_2(SHX6_2)
    SHX5_2 = true
    SHX13_1 = SHX5_2
    SHX5_2 = SHX78_1
    SHX5_2()
  else
    SHX2_2 = false
    SHX13_1 = SHX2_2
    SHX2_2 = DoesEntityExist
    SHX3_2 = SHX76_1
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      SHX2_2 = TriggerServerEvent
      SHX3_2 = "ef321f8c43"
      SHX4_2 = NetworkGetNetworkIdFromEntity
      SHX5_2 = SHX76_1
      SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2 = SHX4_2(SHX5_2)
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
      SHX2_2 = DetachEntity
      SHX3_2 = SHX0_2
      SHX4_2 = false
      SHX5_2 = false
      SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      SHX2_2 = DetachEntity
      SHX3_2 = SHX76_1
      SHX4_2 = false
      SHX5_2 = false
      SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      SHX2_2 = DeleteEntity
      SHX3_2 = SHX76_1
      SHX2_2(SHX3_2)
      SHX2_2 = ClearPedTasks
      SHX3_2 = SHX0_2
      SHX2_2(SHX3_2)
    end
  end
end
SHX8_1 = SHX79_1
SHX79_1 = RegisterNetEvent
SHX80_1 = "4f29e75b8e"
function SHX81_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getObjectId
  SHX5_2 = SHX0_2
  SHX6_2 = "4f29e75b8e"
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX5_2 = DoesEntityExist
  SHX6_2 = SHX4_2
  SHX5_2 = SHX5_2(SHX6_2)
  if SHX5_2 then
    if SHX3_2 then
      SHX5_2 = SetVehicleDoorOpen
      SHX6_2 = SHX4_2
      SHX7_2 = SHX1_2
      SHX8_2 = false
      SHX9_2 = true
      SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
      SHX5_2 = SetVehicleDoorBroken
      SHX6_2 = SHX4_2
      SHX7_2 = SHX1_2
      SHX8_2 = false
      SHX5_2(SHX6_2, SHX7_2, SHX8_2)
    else
      SHX5_2 = SetVehicleDoorOpen
      SHX6_2 = SHX4_2
      SHX7_2 = SHX1_2
      SHX8_2 = false
      SHX9_2 = true
      SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    end
  end
end
SHX79_1(SHX80_1, SHX81_1)
SHX79_1 = RegisterNetEvent
SHX80_1 = "900e57e8c0"
function SHX81_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerCoords
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX0_2 - SHX1_2
  SHX2_2 = #SHX2_2
  if SHX2_2 < 15.0 then
    SHX3_2 = SendNUIMessage
    SHX4_2 = {}
    SHX4_2.transactionType = "spreader"
    SHX3_2(SHX4_2)
  end
end
SHX79_1(SHX80_1, SHX81_1)
function SHX79_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX2_2 = pairs
  SHX3_2 = SHX0_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    if SHX6_2 == SHX1_2 then
      SHX7_2 = true
      return SHX7_2
    end
  end
  SHX2_2 = false
  return SHX2_2
end
SHX80_1 = -215281418
function SHX81_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerVehicle
  SHX2_2 = SHX2_2()
  if 0 ~= SHX2_2 then
    SHX2_2 = tCMG
    SHX2_2 = SHX2_2.notify
    SHX3_2 = "~r~Error~w~: You must not be inside a vehicle"
    SHX2_2(SHX3_2)
    return
  end
  SHX2_2 = SHX77_1
  SHX2_2 = SHX2_2()
  if 0 ~= SHX2_2 and nil ~= SHX2_2 then
    SHX3_2 = NetworkGetNetworkIdFromEntity
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    SHX4_2 = SHX79_1
    SHX5_2 = SHX30_1
    SHX6_2 = SHX3_2
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
    if SHX0_2 then
      if SHX4_2 then
        SHX5_2 = tCMG
        SHX5_2 = SHX5_2.notify
        SHX6_2 = "~r~Error~w~: Stabilisers are already setup on this vehicle"
        SHX5_2(SHX6_2)
      else
        SHX5_2 = FreezeEntityPosition
        SHX6_2 = SHX2_2
        SHX7_2 = true
        SHX5_2(SHX6_2, SHX7_2)
        SHX5_2 = CMG
        SHX5_2 = SHX5_2.loadModel
        SHX6_2 = SHX80_1
        SHX5_2(SHX6_2)
        SHX5_2 = GetOffsetFromEntityInWorldCoords
        SHX6_2 = SHX1_2
        SHX7_2 = -0.7
        SHX8_2 = 1.0
        SHX9_2 = 0.0
        SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
        SHX6_2 = CMG
        SHX6_2 = SHX6_2.requestEntitySpawn
        SHX7_2 = "lfb_prop"
        SHX8_2 = "stabilisers"
        SHX9_2 = SHX5_2
        SHX6_2(SHX7_2, SHX8_2, SHX9_2)
        SHX6_2 = CreateObject
        SHX7_2 = SHX80_1
        SHX8_2 = SHX5_2.x
        SHX9_2 = SHX5_2.y
        SHX10_2 = SHX5_2.z
        SHX11_2 = true
        SHX12_2 = true
        SHX13_2 = true
        SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
        while true do
          SHX7_2 = DoesEntityExist
          SHX8_2 = SHX6_2
          SHX7_2 = SHX7_2(SHX8_2)
          if SHX7_2 then
            break
          end
          SHX7_2 = Wait
          SHX8_2 = 0
          SHX7_2(SHX8_2)
        end
        SHX7_2 = TriggerServerEvent
        SHX8_2 = "3a7f6a2bdf"
        SHX9_2 = "Vehicle Stablisers"
        SHX10_2 = GetEntityCoords
        SHX11_2 = SHX6_2
        SHX12_2 = true
        SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2 = SHX10_2(SHX11_2, SHX12_2)
        SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
        SHX7_2 = SetEntityCollision
        SHX8_2 = SHX6_2
        SHX9_2 = false
        SHX10_2 = true
        SHX7_2(SHX8_2, SHX9_2, SHX10_2)
        SHX7_2 = GetOffsetFromEntityInWorldCoords
        SHX8_2 = SHX1_2
        SHX9_2 = -0.7
        SHX10_2 = 0.0
        SHX11_2 = 0.0
        SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
        SHX8_2 = CMG
        SHX8_2 = SHX8_2.requestEntitySpawn
        SHX9_2 = "lfb_prop"
        SHX10_2 = "stabilisers"
        SHX11_2 = SHX7_2
        SHX8_2(SHX9_2, SHX10_2, SHX11_2)
        SHX8_2 = CreateObject
        SHX9_2 = SHX80_1
        SHX10_2 = SHX7_2.x
        SHX11_2 = SHX7_2.y
        SHX12_2 = SHX7_2.z
        SHX13_2 = true
        SHX14_2 = true
        SHX15_2 = true
        SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
        SHX9_2 = SetEntityCollision
        SHX10_2 = SHX8_2
        SHX11_2 = false
        SHX12_2 = true
        SHX9_2(SHX10_2, SHX11_2, SHX12_2)
        while true do
          SHX9_2 = DoesEntityExist
          SHX10_2 = SHX6_2
          SHX9_2 = SHX9_2(SHX10_2)
          if SHX9_2 then
            SHX9_2 = DoesEntityExist
            SHX10_2 = SHX8_2
            SHX9_2 = SHX9_2(SHX10_2)
            if SHX9_2 then
              break
            end
          end
          SHX9_2 = Wait
          SHX10_2 = 0
          SHX9_2(SHX10_2)
        end
        SHX9_2 = GetEntityHeading
        SHX10_2 = SHX1_2
        SHX9_2 = SHX9_2(SHX10_2)
        SHX10_2 = SetEntityHeading
        SHX11_2 = SHX6_2
        SHX12_2 = SHX9_2
        SHX10_2(SHX11_2, SHX12_2)
        SHX10_2 = SetEntityHeading
        SHX11_2 = SHX8_2
        SHX12_2 = SHX9_2
        SHX10_2(SHX11_2, SHX12_2)
        SHX10_2 = GetEntityCoords
        SHX11_2 = SHX6_2
        SHX10_2 = SHX10_2(SHX11_2)
        SHX11_2 = GetGroundZFor_3dCoord
        SHX12_2 = SHX10_2.x
        SHX13_2 = SHX10_2.y
        SHX13_2 = SHX13_2 + 0.9
        SHX14_2 = SHX10_2.z
        SHX14_2 = SHX14_2 - 0.3
        SHX15_2 = 0
        SHX16_2 = false
        SHX11_2, SHX12_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
        SHX13_2 = SetEntityCoords
        SHX14_2 = SHX6_2
        SHX15_2 = SHX10_2.x
        SHX16_2 = SHX10_2.y
        SHX17_2 = SHX12_2
        SHX18_2 = true
        SHX19_2 = true
        SHX20_2 = true
        SHX21_2 = false
        SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
        SHX13_2 = GetEntityCoords
        SHX14_2 = SHX8_2
        SHX13_2 = SHX13_2(SHX14_2)
        SHX14_2 = GetGroundZFor_3dCoord
        SHX15_2 = SHX13_2.x
        SHX16_2 = SHX13_2.y
        SHX16_2 = SHX16_2 + 0.9
        SHX17_2 = SHX13_2.z
        SHX17_2 = SHX17_2 - 0.3
        SHX18_2 = 0
        SHX19_2 = false
        SHX14_2, SHX15_2 = SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
        SHX12_2 = SHX15_2
        SHX11_2 = SHX14_2
        SHX14_2 = SetEntityCoords
        SHX15_2 = SHX8_2
        SHX16_2 = SHX13_2.x
        SHX17_2 = SHX13_2.y
        SHX18_2 = SHX12_2
        SHX19_2 = true
        SHX20_2 = true
        SHX21_2 = true
        SHX22_2 = false
        SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
        SHX14_2 = PlaceObjectOnGroundProperly
        SHX15_2 = SHX6_2
        SHX14_2(SHX15_2)
        SHX14_2 = PlaceObjectOnGroundProperly
        SHX15_2 = SHX8_2
        SHX14_2(SHX15_2)
        SHX14_2 = FreezeEntityPosition
        SHX15_2 = SHX6_2
        SHX16_2 = true
        SHX14_2(SHX15_2, SHX16_2)
        SHX14_2 = FreezeEntityPosition
        SHX15_2 = SHX8_2
        SHX16_2 = true
        SHX14_2(SHX15_2, SHX16_2)
        SHX14_2 = NetworkGetNetworkIdFromEntity
        SHX15_2 = SHX6_2
        SHX14_2 = SHX14_2(SHX15_2)
        SHX15_2 = NetworkGetNetworkIdFromEntity
        SHX16_2 = SHX8_2
        SHX15_2 = SHX15_2(SHX16_2)
        SHX16_2 = SHX30_1
        SHX17_2 = {}
        SHX18_2 = SHX3_2
        SHX19_2 = SHX14_2
        SHX20_2 = SHX15_2
        SHX17_2[1] = SHX18_2
        SHX17_2[2] = SHX19_2
        SHX17_2[3] = SHX20_2
        SHX16_2[SHX3_2] = SHX17_2
        SHX16_2 = TriggerServerEvent
        SHX17_2 = "2580a73806"
        SHX18_2 = SHX3_2
        SHX19_2 = SHX30_1
        SHX19_2 = SHX19_2[SHX3_2]
        SHX20_2 = false
        SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2)
        SHX16_2 = SetModelAsNoLongerNeeded
        SHX17_2 = SHX80_1
        SHX16_2(SHX17_2)
        SHX16_2 = tCMG
        SHX16_2 = SHX16_2.notify
        SHX17_2 = "~g~Success~w~: Stabilisers setup"
        SHX16_2(SHX17_2)
      end
    elseif SHX4_2 then
      SHX5_2 = CMG
      SHX5_2 = SHX5_2.getObjectId
      SHX6_2 = SHX30_1
      SHX6_2 = SHX6_2[SHX3_2]
      SHX6_2 = SHX6_2[2]
      SHX7_2 = "handleStabilisers 1"
      SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
      SHX6_2 = CMG
      SHX6_2 = SHX6_2.getObjectId
      SHX7_2 = SHX30_1
      SHX7_2 = SHX7_2[SHX3_2]
      SHX7_2 = SHX7_2[3]
      SHX8_2 = "handleStabilisers 2"
      SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
      SHX7_2 = TriggerServerEvent
      SHX8_2 = "2580a73806"
      SHX9_2 = SHX3_2
      SHX10_2 = SHX30_1
      SHX10_2 = SHX10_2[SHX3_2]
      SHX11_2 = true
      SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
      if SHX5_2 then
        SHX7_2 = DoesEntityExist
        SHX8_2 = SHX5_2
        SHX7_2 = SHX7_2(SHX8_2)
        if SHX7_2 then
          SHX7_2 = TriggerServerEvent
          SHX8_2 = "ef321f8c43"
          SHX9_2 = NetworkGetNetworkIdFromEntity
          SHX10_2 = SHX5_2
          SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2 = SHX9_2(SHX10_2)
          SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
          SHX7_2 = DeleteEntity
          SHX8_2 = SHX5_2
          SHX7_2(SHX8_2)
        end
      end
      if SHX6_2 then
        SHX7_2 = DoesEntityExist
        SHX8_2 = SHX6_2
        SHX7_2 = SHX7_2(SHX8_2)
        if SHX7_2 then
          SHX7_2 = TriggerServerEvent
          SHX8_2 = "ef321f8c43"
          SHX9_2 = NetworkGetNetworkIdFromEntity
          SHX10_2 = SHX6_2
          SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2 = SHX9_2(SHX10_2)
          SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
          SHX7_2 = DeleteEntity
          SHX8_2 = SHX6_2
          SHX7_2(SHX8_2)
        end
      end
      SHX7_2 = TriggerServerEvent
      SHX8_2 = "9efbf4fd13"
      SHX9_2 = SHX3_2
      SHX7_2(SHX8_2, SHX9_2)
      SHX7_2 = SHX30_1
      SHX7_2[SHX3_2] = nil
      SHX7_2 = tCMG
      SHX7_2 = SHX7_2.notify
      SHX8_2 = "~g~Success~w~: Stabilisers removed"
      SHX7_2(SHX8_2)
    else
      SHX5_2 = tCMG
      SHX5_2 = SHX5_2.notify
      SHX6_2 = "~r~Error~w~: No stabilisers found"
      SHX5_2(SHX6_2)
    end
  else
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.notify
    SHX4_2 = "~r~Error~w~: No vehicle found"
    SHX3_2(SHX4_2)
  end
end
SHX5_1 = SHX81_1
SHX81_1 = RegisterNetEvent
SHX82_1 = "9efbf4fd13"
function SHX83_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = NetworkDoesNetworkIdExist
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = NetworkGetEntityFromNetworkId
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    SHX2_2 = FreezeEntityPosition
    SHX3_2 = SHX1_2
    SHX4_2 = false
    SHX2_2(SHX3_2, SHX4_2)
    SHX2_2 = DetachEntity
    SHX3_2 = SHX1_2
    SHX4_2 = false
    SHX5_2 = false
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  end
end
SHX81_1(SHX82_1, SHX83_1)
SHX81_1 = 1382870425
function SHX82_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerVehicle
  SHX2_2 = SHX2_2()
  if 0 ~= SHX2_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.notify
    SHX4_2 = "~r~Error~w~: You must not be inside a vehicle"
    SHX3_2(SHX4_2)
    return
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerCoords
  SHX3_2 = SHX3_2()
  if SHX0_2 then
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.loadModel
    SHX5_2 = SHX81_1
    SHX4_2(SHX5_2)
    SHX4_2 = GetOffsetFromEntityInWorldCoords
    SHX5_2 = SHX1_2
    SHX6_2 = 0.0
    SHX7_2 = 1.6
    SHX8_2 = 0.0
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.requestEntitySpawn
    SHX6_2 = "lfb_prop"
    SHX7_2 = "fan"
    SHX8_2 = SHX4_2
    SHX5_2(SHX6_2, SHX7_2, SHX8_2)
    SHX5_2 = CreateObject
    SHX6_2 = SHX81_1
    SHX7_2 = SHX4_2.x
    SHX8_2 = SHX4_2.y
    SHX9_2 = SHX4_2.z
    SHX10_2 = true
    SHX11_2 = true
    SHX12_2 = true
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    while true do
      SHX6_2 = DoesEntityExist
      SHX7_2 = SHX5_2
      SHX6_2 = SHX6_2(SHX7_2)
      if SHX6_2 then
        break
      end
      SHX6_2 = Wait
      SHX7_2 = 0
      SHX6_2(SHX7_2)
    end
    SHX6_2 = TriggerServerEvent
    SHX7_2 = "3a7f6a2bdf"
    SHX8_2 = "Extractor Fan"
    SHX9_2 = GetEntityCoords
    SHX10_2 = SHX5_2
    SHX11_2 = true
    SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX9_2(SHX10_2, SHX11_2)
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX6_2 = SetEntityCollision
    SHX7_2 = SHX5_2
    SHX8_2 = false
    SHX9_2 = true
    SHX6_2(SHX7_2, SHX8_2, SHX9_2)
    SHX6_2 = NetworkGetNetworkIdFromEntity
    SHX7_2 = SHX5_2
    SHX6_2 = SHX6_2(SHX7_2)
    SHX7_2 = PlaceObjectOnGroundProperly
    SHX8_2 = SHX5_2
    SHX7_2(SHX8_2)
    SHX7_2 = FreezeEntityPosition
    SHX8_2 = SHX5_2
    SHX9_2 = true
    SHX7_2(SHX8_2, SHX9_2)
    SHX7_2 = SHX31_1
    SHX8_2 = {}
    SHX9_2 = SHX6_2
    SHX10_2 = SHX4_2
    SHX8_2[1] = SHX9_2
    SHX8_2[2] = SHX10_2
    SHX7_2[SHX6_2] = SHX8_2
    SHX7_2 = TriggerServerEvent
    SHX8_2 = "c9e1fb3817"
    SHX9_2 = SHX6_2
    SHX10_2 = SHX31_1
    SHX10_2 = SHX10_2[SHX6_2]
    SHX11_2 = false
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX7_2 = SetModelAsNoLongerNeeded
    SHX8_2 = SHX81_1
    SHX7_2(SHX8_2)
    SHX7_2 = tCMG
    SHX7_2 = SHX7_2.notify
    SHX8_2 = "~g~Success~w~: Fan setup"
    SHX7_2(SHX8_2)
    SHX7_2 = TriggerServerEvent
    SHX8_2 = "4a9a9f7b1f"
    SHX9_2 = SHX3_2
    SHX7_2(SHX8_2, SHX9_2)
  else
    SHX4_2 = false
    SHX5_2 = 0
    SHX6_2 = pairs
    SHX7_2 = SHX31_1
    SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
    for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
      SHX12_2 = SHX11_2[2]
      SHX12_2 = SHX3_2 - SHX12_2
      SHX12_2 = #SHX12_2
      if SHX12_2 < 15.0 then
        SHX5_2 = SHX10_2
        SHX4_2 = true
        break
      end
    end
    if SHX4_2 then
      SHX6_2 = CMG
      SHX6_2 = SHX6_2.getObjectId
      SHX7_2 = SHX31_1
      SHX7_2 = SHX7_2[SHX5_2]
      SHX7_2 = SHX7_2[1]
      SHX8_2 = "handleFan"
      SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
      SHX7_2 = TriggerServerEvent
      SHX8_2 = "c9e1fb3817"
      SHX9_2 = SHX5_2
      SHX10_2 = SHX31_1
      SHX10_2 = SHX10_2[SHX5_2]
      SHX11_2 = true
      SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
      if SHX6_2 then
        SHX7_2 = DoesEntityExist
        SHX8_2 = SHX6_2
        SHX7_2 = SHX7_2(SHX8_2)
        if SHX7_2 then
          SHX7_2 = TriggerServerEvent
          SHX8_2 = "ef321f8c43"
          SHX9_2 = NetworkGetNetworkIdFromEntity
          SHX10_2 = SHX6_2
          SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX9_2(SHX10_2)
          SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
          SHX7_2 = DeleteEntity
          SHX8_2 = SHX6_2
          SHX7_2(SHX8_2)
        end
      end
      SHX7_2 = SHX31_1
      SHX7_2[SHX5_2] = nil
      SHX7_2 = tCMG
      SHX7_2 = SHX7_2.notify
      SHX8_2 = "~g~Success~w~: Fan removed"
      SHX7_2(SHX8_2)
    else
      SHX6_2 = tCMG
      SHX6_2 = SHX6_2.notify
      SHX7_2 = "~r~Error~w~: No fan found"
      SHX6_2(SHX7_2)
    end
  end
end
SHX3_1 = SHX82_1
SHX82_1 = false
SHX83_1 = 0
SHX84_1 = Citizen
SHX84_1 = SHX84_1.CreateThread
function SHX85_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  while true do
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerCoords
    SHX0_2 = SHX0_2()
    SHX1_2 = SHX82_1
    if SHX1_2 then
      SHX2_2 = SHX83_1
      SHX1_2 = SHX31_1
      SHX1_2 = SHX1_2[SHX2_2]
      if nil ~= SHX1_2 then
        SHX2_2 = SHX83_1
        SHX1_2 = SHX31_1
        SHX1_2 = SHX1_2[SHX2_2]
        SHX1_2 = SHX1_2[2]
        if nil ~= SHX1_2 then
          SHX2_2 = SHX83_1
          SHX1_2 = SHX31_1
          SHX1_2 = SHX1_2[SHX2_2]
          SHX1_2 = SHX1_2[2]
          SHX1_2 = SHX0_2 - SHX1_2
          SHX1_2 = #SHX1_2
          if SHX1_2 > 20.0 then
            SHX2_2 = false
            SHX82_1 = SHX2_2
          else
            SHX2_2 = SendNUIMessage
            SHX3_2 = {}
            SHX3_2.transactionType = "fan"
            SHX2_2(SHX3_2)
            SHX2_2 = Wait
            SHX3_2 = 10000
            SHX2_2(SHX3_2)
          end
        end
      end
    else
      SHX1_2 = pairs
      SHX2_2 = SHX31_1
      SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
      for SHX5_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
        SHX6_2 = SHX31_1
        SHX6_2 = SHX6_2[SHX5_2]
        SHX6_2 = SHX6_2[2]
        SHX6_2 = SHX0_2 - SHX6_2
        SHX6_2 = #SHX6_2
        if SHX6_2 < 20.0 then
          SHX7_2 = true
          SHX82_1 = SHX7_2
          SHX83_1 = SHX5_2
          SHX7_2 = SendNUIMessage
          SHX8_2 = {}
          SHX8_2.transactionType = "fan"
          SHX7_2(SHX8_2)
          SHX7_2 = Wait
          SHX8_2 = 10000
          SHX7_2(SHX8_2)
        end
      end
    end
    SHX1_2 = Wait
    SHX2_2 = 2000
    SHX1_2(SHX2_2)
  end
end
SHX84_1(SHX85_1)
SHX84_1 = RegisterNetEvent
SHX85_1 = "26cf6c5bda"
function SHX86_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2
  if SHX2_2 then
    SHX3_2 = SHX32_1
    SHX3_2[SHX0_2] = nil
    return
  end
  SHX3_2 = SHX32_1
  SHX3_2[SHX0_2] = SHX1_2
end
SHX84_1(SHX85_1, SHX86_1)
SHX84_1 = RegisterNetEvent
SHX85_1 = "947eb3be89"
function SHX86_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2
  if SHX2_2 then
    SHX3_2 = SHX33_1
    SHX3_2[SHX0_2] = nil
    return
  end
  SHX3_2 = SHX33_1
  SHX3_2[SHX0_2] = SHX1_2
end
SHX84_1(SHX85_1, SHX86_1)
SHX84_1 = RegisterNetEvent
SHX85_1 = "4726a0ee92"
function SHX86_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getObjectId
  SHX2_2 = SHX0_2
  SHX3_2 = "4726a0ee92"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if SHX1_2 then
    SHX2_2 = DoesEntityExist
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      SHX2_2 = ResetVehicleWheels
      SHX3_2 = SHX1_2
      SHX4_2 = true
      SHX2_2(SHX3_2, SHX4_2)
    end
  end
end
SHX84_1(SHX85_1, SHX86_1)
SHX84_1 = 276838402
function SHX85_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX3_2 = NetworkGetNetworkIdFromEntity
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = NetworkGetNetworkIdFromEntity
  SHX5_2 = SHX2_2
  SHX4_2 = SHX4_2(SHX5_2)
  if 0 == SHX3_2 or 0 == SHX4_2 then
    return
  end
  SHX5_2 = true
  SHX2_1 = SHX5_2
  SHX5_2 = drawNativeNotification
  SHX6_2 = "Use ~INPUT_CELLPHONE_UP~ and ~INPUT_CELLPHONE_DOWN~ to adjust the height"
  SHX5_2(SHX6_2)
  SHX5_2 = tCMG
  SHX5_2 = SHX5_2.notify
  SHX6_2 = "~g~Success~w~: Use ARROW UP and ARROW DOWN to adjust the height. Press ENTER when done"
  SHX5_2(SHX6_2)
  SHX5_2 = SHX32_1
  SHX5_2 = SHX5_2[SHX1_2]
  SHX5_2 = SHX5_2[4]
  SHX6_2 = SHX32_1
  SHX6_2 = SHX6_2[SHX1_2]
  SHX6_2[5] = true
  while true do
    SHX6_2 = SHX2_1
    if not SHX6_2 then
      break
    end
    SHX6_2 = DisableControlAction
    SHX7_2 = 0
    SHX8_2 = 172
    SHX9_2 = true
    SHX6_2(SHX7_2, SHX8_2, SHX9_2)
    SHX6_2 = DisableControlAction
    SHX7_2 = 0
    SHX8_2 = 173
    SHX9_2 = true
    SHX6_2(SHX7_2, SHX8_2, SHX9_2)
    SHX6_2 = IsDisabledControlJustPressed
    SHX7_2 = 0
    SHX8_2 = 172
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
    if SHX6_2 then
      SHX5_2 = SHX5_2 + 0.007
      SHX6_2 = 0.8
      if SHX5_2 > SHX6_2 then
        SHX5_2 = 0.8
      end
      SHX6_2 = TriggerServerEvent
      SHX7_2 = "48188fae63"
      SHX8_2 = SHX3_2
      SHX9_2 = SHX4_2
      SHX10_2 = SHX5_2
      SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    end
    SHX6_2 = IsDisabledControlJustPressed
    SHX7_2 = 0
    SHX8_2 = 173
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
    if SHX6_2 then
      SHX5_2 = SHX5_2 - 0.007
      SHX6_2 = -0.7
      if SHX5_2 < SHX6_2 then
        SHX5_2 = -0.7
      end
      SHX6_2 = TriggerServerEvent
      SHX7_2 = "48188fae63"
      SHX8_2 = SHX3_2
      SHX9_2 = SHX4_2
      SHX10_2 = SHX5_2
      SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    end
    SHX6_2 = IsDisabledControlJustPressed
    SHX7_2 = 0
    SHX8_2 = 215
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
    if SHX6_2 then
      SHX6_2 = TriggerServerEvent
      SHX7_2 = "e03701fd84"
      SHX8_2 = SHX3_2
      SHX6_2(SHX7_2, SHX8_2)
      SHX6_2 = SHX32_1
      SHX6_2 = SHX6_2[SHX1_2]
      SHX6_2[5] = false
      SHX6_2 = SHX32_1
      SHX6_2 = SHX6_2[SHX1_2]
      SHX6_2[4] = SHX5_2
      SHX6_2 = TriggerServerEvent
      SHX7_2 = "26cf6c5bda"
      SHX8_2 = SHX1_2
      SHX9_2 = SHX32_1
      SHX9_2 = SHX9_2[SHX1_2]
      SHX10_2 = false
      SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
      SHX6_2 = tCMG
      SHX6_2 = SHX6_2.notify
      SHX7_2 = "~g~Success~w~: You've stopped controlling the inflatable jack"
      SHX6_2(SHX7_2)
      SHX6_2 = false
      SHX2_1 = SHX6_2
    end
    SHX6_2 = Wait
    SHX7_2 = 0
    SHX6_2(SHX7_2)
  end
end
function SHX86_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX1_2 = SHX77_1
  SHX1_2 = SHX1_2()
  if 0 ~= SHX1_2 and nil ~= SHX1_2 then
    SHX2_2 = NetworkGetNetworkIdFromEntity
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    SHX3_2 = SHX79_1
    SHX4_2 = SHX32_1
    SHX5_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
    SHX4_2 = false
    if SHX3_2 then
      SHX5_2 = SHX32_1
      SHX5_2 = SHX5_2[SHX2_2]
      SHX4_2 = SHX5_2[5]
    end
    SHX5_2 = SHX2_1
    if SHX5_2 then
      SHX5_2 = tCMG
      SHX5_2 = SHX5_2.notify
      SHX6_2 = "~r~Error~w~: You are currently using a jack. Press ENTER to stop."
      SHX5_2(SHX6_2)
      return
    end
    if SHX0_2 then
      if SHX3_2 then
        if not SHX4_2 then
          SHX5_2 = SHX32_1
          SHX5_2 = SHX5_2[SHX2_2]
          SHX5_2[5] = true
          SHX5_2 = TriggerServerEvent
          SHX6_2 = "26cf6c5bda"
          SHX7_2 = SHX2_2
          SHX8_2 = SHX32_1
          SHX8_2 = SHX8_2[SHX2_2]
          SHX9_2 = false
          SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
          SHX5_2 = CMG
          SHX5_2 = SHX5_2.getObjectId
          SHX6_2 = SHX32_1
          SHX6_2 = SHX6_2[SHX2_2]
          SHX6_2 = SHX6_2[2]
          SHX7_2 = "handleJack 1"
          SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
          SHX6_2 = CMG
          SHX6_2 = SHX6_2.getObjectId
          SHX7_2 = SHX32_1
          SHX7_2 = SHX7_2[SHX2_2]
          SHX7_2 = SHX7_2[3]
          SHX8_2 = "handleJack 2"
          SHX6_2(SHX7_2, SHX8_2)
          if SHX5_2 then
            SHX6_2 = TriggerServerEvent
            SHX7_2 = "ef321f8c43"
            SHX8_2 = NetworkGetNetworkIdFromEntity
            SHX9_2 = SHX5_2
            SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2 = SHX8_2(SHX9_2)
            SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
          end
          SHX6_2 = tCMG
          SHX6_2 = SHX6_2.notify
          SHX7_2 = "~g~Success~w~: You're now controlling the inflatable jack"
          SHX6_2(SHX7_2)
          SHX6_2 = SHX85_1
          SHX7_2 = SHX1_2
          SHX8_2 = SHX2_2
          SHX9_2 = SHX5_2
          SHX6_2(SHX7_2, SHX8_2, SHX9_2)
        else
          SHX5_2 = tCMG
          SHX5_2 = SHX5_2.notify
          SHX6_2 = "~r~Error~w~: This inflatable jack is in use"
          SHX5_2(SHX6_2)
        end
      else
        SHX5_2 = GetOffsetFromEntityInWorldCoords
        SHX6_2 = SHX1_2
        SHX7_2 = -0.7
        SHX8_2 = 0.0
        SHX9_2 = 0.0
        SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
        SHX6_2 = GetOffsetFromEntityInWorldCoords
        SHX7_2 = SHX1_2
        SHX8_2 = 0.7
        SHX9_2 = 0.0
        SHX10_2 = 0.0
        SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
        SHX7_2 = CMG
        SHX7_2 = SHX7_2.loadModel
        SHX8_2 = SHX84_1
        SHX7_2(SHX8_2)
        SHX7_2 = CMG
        SHX7_2 = SHX7_2.requestEntitySpawn
        SHX8_2 = "lfb_prop"
        SHX9_2 = "jack"
        SHX10_2 = SHX5_2
        SHX7_2(SHX8_2, SHX9_2, SHX10_2)
        SHX7_2 = CreateObject
        SHX8_2 = SHX84_1
        SHX9_2 = SHX5_2.x
        SHX10_2 = SHX5_2.y
        SHX11_2 = SHX5_2.z
        SHX12_2 = true
        SHX13_2 = true
        SHX14_2 = true
        SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
        SHX8_2 = CMG
        SHX8_2 = SHX8_2.requestEntitySpawn
        SHX9_2 = "lfb_prop"
        SHX10_2 = "jack"
        SHX11_2 = SHX6_2
        SHX8_2(SHX9_2, SHX10_2, SHX11_2)
        SHX8_2 = CreateObject
        SHX9_2 = SHX84_1
        SHX10_2 = SHX6_2.x
        SHX11_2 = SHX6_2.y
        SHX12_2 = SHX6_2.z
        SHX13_2 = true
        SHX14_2 = true
        SHX15_2 = true
        SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
        while true do
          SHX9_2 = DoesEntityExist
          SHX10_2 = SHX7_2
          SHX9_2 = SHX9_2(SHX10_2)
          if SHX9_2 then
            SHX9_2 = DoesEntityExist
            SHX10_2 = SHX8_2
            SHX9_2 = SHX9_2(SHX10_2)
            if SHX9_2 then
              break
            end
          end
          SHX9_2 = Wait
          SHX10_2 = 0
          SHX9_2(SHX10_2)
        end
        SHX9_2 = TriggerServerEvent
        SHX10_2 = "3a7f6a2bdf"
        SHX11_2 = "Inflatable Jack"
        SHX12_2 = GetEntityCoords
        SHX13_2 = SHX7_2
        SHX14_2 = true
        SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2 = SHX12_2(SHX13_2, SHX14_2)
        SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
        SHX9_2 = GetEntityHeading
        SHX10_2 = SHX1_2
        SHX9_2 = SHX9_2(SHX10_2)
        SHX10_2 = SetEntityHeading
        SHX11_2 = SHX7_2
        SHX12_2 = SHX9_2
        SHX10_2(SHX11_2, SHX12_2)
        SHX10_2 = SetEntityHeading
        SHX11_2 = SHX8_2
        SHX12_2 = SHX9_2 + 180.0
        SHX10_2(SHX11_2, SHX12_2)
        SHX10_2 = SetEntityCollision
        SHX11_2 = SHX7_2
        SHX12_2 = false
        SHX13_2 = true
        SHX10_2(SHX11_2, SHX12_2, SHX13_2)
        SHX10_2 = SetEntityCollision
        SHX11_2 = SHX8_2
        SHX12_2 = false
        SHX13_2 = true
        SHX10_2(SHX11_2, SHX12_2, SHX13_2)
        SHX10_2 = PlaceObjectOnGroundProperly
        SHX11_2 = SHX7_2
        SHX10_2(SHX11_2)
        SHX10_2 = PlaceObjectOnGroundProperly
        SHX11_2 = SHX8_2
        SHX10_2(SHX11_2)
        SHX10_2 = FreezeEntityPosition
        SHX11_2 = SHX7_2
        SHX12_2 = true
        SHX10_2(SHX11_2, SHX12_2)
        SHX10_2 = FreezeEntityPosition
        SHX11_2 = SHX8_2
        SHX12_2 = true
        SHX10_2(SHX11_2, SHX12_2)
        SHX10_2 = NetworkGetNetworkIdFromEntity
        SHX11_2 = SHX7_2
        SHX10_2 = SHX10_2(SHX11_2)
        SHX11_2 = NetworkGetNetworkIdFromEntity
        SHX12_2 = SHX8_2
        SHX11_2 = SHX11_2(SHX12_2)
        SHX12_2 = SHX32_1
        SHX13_2 = {}
        SHX14_2 = SHX2_2
        SHX15_2 = SHX10_2
        SHX16_2 = SHX11_2
        SHX17_2 = -0.3
        SHX18_2 = true
        SHX13_2[1] = SHX14_2
        SHX13_2[2] = SHX15_2
        SHX13_2[3] = SHX16_2
        SHX13_2[4] = SHX17_2
        SHX13_2[5] = SHX18_2
        SHX12_2[SHX2_2] = SHX13_2
        SHX12_2 = TriggerServerEvent
        SHX13_2 = "26cf6c5bda"
        SHX14_2 = SHX2_2
        SHX15_2 = SHX32_1
        SHX15_2 = SHX15_2[SHX2_2]
        SHX16_2 = false
        SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2)
        SHX12_2 = SetModelAsNoLongerNeeded
        SHX13_2 = SHX84_1
        SHX12_2(SHX13_2)
        SHX12_2 = tCMG
        SHX12_2 = SHX12_2.notify
        SHX13_2 = "~g~Success~w~: Inflatable jack setup"
        SHX12_2(SHX13_2)
        SHX12_2 = SHX85_1
        SHX13_2 = SHX1_2
        SHX14_2 = SHX2_2
        SHX15_2 = SHX7_2
        SHX12_2(SHX13_2, SHX14_2, SHX15_2)
      end
    elseif SHX3_2 then
      if SHX4_2 then
        SHX5_2 = tCMG
        SHX5_2 = SHX5_2.notify
        SHX6_2 = "~r~Error~w~: This inflatable jack is in use"
        SHX5_2(SHX6_2)
      else
        SHX5_2 = CMG
        SHX5_2 = SHX5_2.getObjectId
        SHX6_2 = SHX32_1
        SHX6_2 = SHX6_2[SHX2_2]
        SHX6_2 = SHX6_2[2]
        SHX7_2 = "handleJack 3"
        SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
        SHX6_2 = CMG
        SHX6_2 = SHX6_2.getObjectId
        SHX7_2 = SHX32_1
        SHX7_2 = SHX7_2[SHX2_2]
        SHX7_2 = SHX7_2[3]
        SHX8_2 = "handleJack 4"
        SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
        SHX7_2 = TriggerServerEvent
        SHX8_2 = "26cf6c5bda"
        SHX9_2 = SHX2_2
        SHX10_2 = SHX32_1
        SHX10_2 = SHX10_2[SHX2_2]
        SHX11_2 = true
        SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
        if SHX5_2 then
          SHX7_2 = DoesEntityExist
          SHX8_2 = SHX5_2
          SHX7_2 = SHX7_2(SHX8_2)
          if SHX7_2 then
            SHX7_2 = TriggerServerEvent
            SHX8_2 = "ef321f8c43"
            SHX9_2 = NetworkGetNetworkIdFromEntity
            SHX10_2 = SHX5_2
            SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2 = SHX9_2(SHX10_2)
            SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
            SHX7_2 = DeleteEntity
            SHX8_2 = SHX5_2
            SHX7_2(SHX8_2)
          end
        end
        if SHX6_2 then
          SHX7_2 = DoesEntityExist
          SHX8_2 = SHX6_2
          SHX7_2 = SHX7_2(SHX8_2)
          if SHX7_2 then
            SHX7_2 = TriggerServerEvent
            SHX8_2 = "ef321f8c43"
            SHX9_2 = NetworkGetNetworkIdFromEntity
            SHX10_2 = SHX6_2
            SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2 = SHX9_2(SHX10_2)
            SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
            SHX7_2 = DeleteEntity
            SHX8_2 = SHX6_2
            SHX7_2(SHX8_2)
          end
        end
        SHX7_2 = TriggerServerEvent
        SHX8_2 = "9efbf4fd13"
        SHX9_2 = SHX2_2
        SHX7_2(SHX8_2, SHX9_2)
        SHX7_2 = SHX32_1
        SHX7_2[SHX2_2] = nil
        SHX7_2 = tCMG
        SHX7_2 = SHX7_2.notify
        SHX8_2 = "~g~Success~w~: Inflatable jack removed"
        SHX7_2(SHX8_2)
      end
    else
      SHX5_2 = tCMG
      SHX5_2 = SHX5_2.notify
      SHX6_2 = "~r~Error~w~: No inflatable jack found"
      SHX5_2(SHX6_2)
    end
  else
    SHX2_2 = tCMG
    SHX2_2 = SHX2_2.notify
    SHX3_2 = "~r~Error~w~: No vehicle found"
    SHX2_2(SHX3_2)
  end
end
SHX6_1 = SHX86_1
SHX86_1 = RegisterNetEvent
SHX87_1 = "48188fae63"
function SHX88_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  SHX3_2 = NetworkDoesNetworkIdExist
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = NetworkDoesNetworkIdExist
    SHX4_2 = SHX1_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      goto SHX_LABEL_12
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_12:: outside nested blocks until all 'goto SHX_LABEL_12' can see it
  ::SHX_LABEL_12::
  SHX3_2 = NetworkGetEntityFromNetworkId
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = NetworkGetEntityFromNetworkId
  SHX5_2 = SHX1_2
  SHX4_2 = SHX4_2(SHX5_2)
  if 0 == SHX3_2 or 0 == SHX4_2 then
    return
  end
  SHX5_2 = DetachEntity
  SHX6_2 = SHX3_2
  SHX7_2 = false
  SHX8_2 = false
  SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = AttachEntityToEntity
  SHX6_2 = SHX3_2
  SHX7_2 = SHX4_2
  SHX8_2 = -1
  SHX9_2 = 0.7
  SHX10_2 = 0.0
  SHX11_2 = SHX2_2
  SHX12_2 = 0.0
  SHX13_2 = 0.0
  SHX14_2 = 0.0
  SHX15_2 = true
  SHX16_2 = false
  SHX17_2 = true
  SHX18_2 = false
  SHX19_2 = 1
  SHX20_2 = true
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
end
SHX86_1(SHX87_1, SHX88_1)
SHX86_1 = RegisterNetEvent
SHX87_1 = "e03701fd84"
function SHX88_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = NetworkDoesNetworkIdExist
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    return
  end
  SHX1_2 = NetworkGetEntityFromNetworkId
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if 0 == SHX1_2 then
    return
  end
  SHX2_2 = DetachEntity
  SHX3_2 = SHX1_2
  SHX4_2 = false
  SHX5_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = FreezeEntityPosition
  SHX3_2 = SHX1_2
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
end
SHX86_1(SHX87_1, SHX88_1)
SHX86_1 = 1800372691
function SHX87_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2
  SHX1_2 = SHX77_1
  SHX1_2 = SHX1_2()
  if 0 ~= SHX1_2 and nil ~= SHX1_2 then
    SHX2_2 = NetworkGetNetworkIdFromEntity
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    SHX3_2 = SHX79_1
    SHX4_2 = SHX33_1
    SHX5_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
    if SHX0_2 then
      if SHX3_2 then
        SHX4_2 = tCMG
        SHX4_2 = SHX4_2.notify
        SHX5_2 = "~r~Error~w~: This vehicle already has chocks setup"
        SHX4_2(SHX5_2)
      else
        SHX4_2 = GetEntityCoords
        SHX5_2 = SHX1_2
        SHX4_2 = SHX4_2(SHX5_2)
        SHX5_2 = ResetVehicleWheels
        SHX6_2 = SHX1_2
        SHX7_2 = true
        SHX5_2(SHX6_2, SHX7_2)
        SHX5_2 = CMG
        SHX5_2 = SHX5_2.loadModel
        SHX6_2 = SHX86_1
        SHX5_2(SHX6_2)
        SHX5_2 = TriggerServerEvent
        SHX6_2 = "4726a0ee92"
        SHX7_2 = SHX2_2
        SHX5_2(SHX6_2, SHX7_2)
        SHX5_2 = CMG
        SHX5_2 = SHX5_2.requestEntitySpawn
        SHX6_2 = "lfb_prop"
        SHX7_2 = "chock"
        SHX8_2 = SHX4_2
        SHX5_2(SHX6_2, SHX7_2, SHX8_2)
        SHX5_2 = CreateObject
        SHX6_2 = SHX86_1
        SHX7_2 = SHX4_2.x
        SHX8_2 = SHX4_2.y
        SHX9_2 = SHX4_2.z
        SHX10_2 = true
        SHX11_2 = true
        SHX12_2 = true
        SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
        SHX6_2 = CMG
        SHX6_2 = SHX6_2.requestEntitySpawn
        SHX7_2 = "lfb_prop"
        SHX8_2 = "chock"
        SHX9_2 = SHX4_2
        SHX6_2(SHX7_2, SHX8_2, SHX9_2)
        SHX6_2 = CreateObject
        SHX7_2 = SHX86_1
        SHX8_2 = SHX4_2.x
        SHX9_2 = SHX4_2.y
        SHX10_2 = SHX4_2.z
        SHX11_2 = true
        SHX12_2 = true
        SHX13_2 = true
        SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
        SHX7_2 = CMG
        SHX7_2 = SHX7_2.requestEntitySpawn
        SHX8_2 = "lfb_prop"
        SHX9_2 = "chock"
        SHX10_2 = SHX4_2
        SHX7_2(SHX8_2, SHX9_2, SHX10_2)
        SHX7_2 = CreateObject
        SHX8_2 = SHX86_1
        SHX9_2 = SHX4_2.x
        SHX10_2 = SHX4_2.y
        SHX11_2 = SHX4_2.z
        SHX12_2 = true
        SHX13_2 = true
        SHX14_2 = true
        SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
        SHX8_2 = CMG
        SHX8_2 = SHX8_2.requestEntitySpawn
        SHX9_2 = "lfb_prop"
        SHX10_2 = "chock"
        SHX11_2 = SHX4_2
        SHX8_2(SHX9_2, SHX10_2, SHX11_2)
        SHX8_2 = CreateObject
        SHX9_2 = SHX86_1
        SHX10_2 = SHX4_2.x
        SHX11_2 = SHX4_2.y
        SHX12_2 = SHX4_2.z
        SHX13_2 = true
        SHX14_2 = true
        SHX15_2 = true
        SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
        while true do
          SHX9_2 = DoesEntityExist
          SHX10_2 = SHX5_2
          SHX9_2 = SHX9_2(SHX10_2)
          if SHX9_2 then
            SHX9_2 = DoesEntityExist
            SHX10_2 = SHX6_2
            SHX9_2 = SHX9_2(SHX10_2)
            if SHX9_2 then
              SHX9_2 = DoesEntityExist
              SHX10_2 = SHX7_2
              SHX9_2 = SHX9_2(SHX10_2)
              if SHX9_2 then
                SHX9_2 = DoesEntityExist
                SHX10_2 = SHX8_2
                SHX9_2 = SHX9_2(SHX10_2)
                if SHX9_2 then
                  break
                end
              end
            end
          end
          SHX9_2 = Wait
          SHX10_2 = 0
          SHX9_2(SHX10_2)
        end
        SHX9_2 = TriggerServerEvent
        SHX10_2 = "3a7f6a2bdf"
        SHX11_2 = "Air Chocks"
        SHX12_2 = GetEntityCoords
        SHX13_2 = SHX5_2
        SHX14_2 = true
        SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2 = SHX12_2(SHX13_2, SHX14_2)
        SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
        SHX9_2 = GetEntityBoneIndexByName
        SHX10_2 = SHX1_2
        SHX11_2 = "wheel_lf"
        SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
        SHX10_2 = GetEntityBoneIndexByName
        SHX11_2 = SHX1_2
        SHX12_2 = "wheel_lr"
        SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
        SHX11_2 = GetEntityBoneIndexByName
        SHX12_2 = SHX1_2
        SHX13_2 = "wheel_rf"
        SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
        SHX12_2 = GetEntityBoneIndexByName
        SHX13_2 = SHX1_2
        SHX14_2 = "wheel_rr"
        SHX12_2 = SHX12_2(SHX13_2, SHX14_2)
        SHX13_2 = FreezeEntityPosition
        SHX14_2 = SHX5_2
        SHX15_2 = true
        SHX13_2(SHX14_2, SHX15_2)
        SHX13_2 = FreezeEntityPosition
        SHX14_2 = SHX6_2
        SHX15_2 = true
        SHX13_2(SHX14_2, SHX15_2)
        SHX13_2 = FreezeEntityPosition
        SHX14_2 = SHX7_2
        SHX15_2 = true
        SHX13_2(SHX14_2, SHX15_2)
        SHX13_2 = FreezeEntityPosition
        SHX14_2 = SHX8_2
        SHX15_2 = true
        SHX13_2(SHX14_2, SHX15_2)
        SHX13_2 = AttachEntityToEntity
        SHX14_2 = SHX5_2
        SHX15_2 = SHX1_2
        SHX16_2 = SHX9_2
        SHX17_2 = -0.05
        SHX18_2 = 0.25
        SHX19_2 = -0.29
        SHX20_2 = 0.0
        SHX21_2 = 0.0
        SHX22_2 = 90.0
        SHX23_2 = true
        SHX24_2 = false
        SHX25_2 = true
        SHX26_2 = false
        SHX27_2 = 1
        SHX28_2 = true
        SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
        SHX13_2 = AttachEntityToEntity
        SHX14_2 = SHX7_2
        SHX15_2 = SHX1_2
        SHX16_2 = SHX11_2
        SHX17_2 = -0.05
        SHX18_2 = 0.25
        SHX19_2 = 0.29
        SHX20_2 = 180.0
        SHX21_2 = 0.0
        SHX22_2 = -270.0
        SHX23_2 = true
        SHX24_2 = false
        SHX25_2 = true
        SHX26_2 = false
        SHX27_2 = 1
        SHX28_2 = true
        SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
        SHX13_2 = AttachEntityToEntity
        SHX14_2 = SHX6_2
        SHX15_2 = SHX1_2
        SHX16_2 = SHX10_2
        SHX17_2 = -0.05
        SHX18_2 = -0.25
        SHX19_2 = -0.29
        SHX20_2 = 0.0
        SHX21_2 = 0.0
        SHX22_2 = -90.0
        SHX23_2 = true
        SHX24_2 = false
        SHX25_2 = true
        SHX26_2 = false
        SHX27_2 = 1
        SHX28_2 = true
        SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
        SHX13_2 = AttachEntityToEntity
        SHX14_2 = SHX8_2
        SHX15_2 = SHX1_2
        SHX16_2 = SHX12_2
        SHX17_2 = -0.05
        SHX18_2 = -0.25
        SHX19_2 = 0.29
        SHX20_2 = 180.0
        SHX21_2 = 0.0
        SHX22_2 = -90.0
        SHX23_2 = true
        SHX24_2 = false
        SHX25_2 = true
        SHX26_2 = false
        SHX27_2 = 1
        SHX28_2 = true
        SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
        SHX13_2 = SetEntityCollision
        SHX14_2 = SHX5_2
        SHX15_2 = false
        SHX16_2 = true
        SHX13_2(SHX14_2, SHX15_2, SHX16_2)
        SHX13_2 = SetEntityCollision
        SHX14_2 = SHX6_2
        SHX15_2 = false
        SHX16_2 = true
        SHX13_2(SHX14_2, SHX15_2, SHX16_2)
        SHX13_2 = SetEntityCollision
        SHX14_2 = SHX7_2
        SHX15_2 = false
        SHX16_2 = true
        SHX13_2(SHX14_2, SHX15_2, SHX16_2)
        SHX13_2 = SetEntityCollision
        SHX14_2 = SHX8_2
        SHX15_2 = false
        SHX16_2 = true
        SHX13_2(SHX14_2, SHX15_2, SHX16_2)
        SHX13_2 = NetworkGetNetworkIdFromEntity
        SHX14_2 = SHX5_2
        SHX13_2 = SHX13_2(SHX14_2)
        SHX14_2 = NetworkGetNetworkIdFromEntity
        SHX15_2 = SHX6_2
        SHX14_2 = SHX14_2(SHX15_2)
        SHX15_2 = NetworkGetNetworkIdFromEntity
        SHX16_2 = SHX7_2
        SHX15_2 = SHX15_2(SHX16_2)
        SHX16_2 = NetworkGetNetworkIdFromEntity
        SHX17_2 = SHX8_2
        SHX16_2 = SHX16_2(SHX17_2)
        SHX17_2 = SHX33_1
        SHX18_2 = {}
        SHX19_2 = SHX2_2
        SHX20_2 = SHX13_2
        SHX21_2 = SHX14_2
        SHX22_2 = SHX15_2
        SHX23_2 = SHX16_2
        SHX18_2[1] = SHX19_2
        SHX18_2[2] = SHX20_2
        SHX18_2[3] = SHX21_2
        SHX18_2[4] = SHX22_2
        SHX18_2[5] = SHX23_2
        SHX17_2[SHX2_2] = SHX18_2
        SHX17_2 = TriggerServerEvent
        SHX18_2 = "947eb3be89"
        SHX19_2 = SHX2_2
        SHX20_2 = SHX33_1
        SHX20_2 = SHX20_2[SHX2_2]
        SHX21_2 = false
        SHX17_2(SHX18_2, SHX19_2, SHX20_2, SHX21_2)
        SHX17_2 = SetModelAsNoLongerNeeded
        SHX18_2 = SHX86_1
        SHX17_2(SHX18_2)
        SHX17_2 = TaskGoStraightToCoord
        SHX18_2 = CMG
        SHX18_2 = SHX18_2.getPlayerPed
        SHX18_2 = SHX18_2()
        SHX19_2 = SHX4_2.x
        SHX20_2 = SHX4_2.y
        SHX21_2 = SHX4_2.z
        SHX22_2 = 30.0
        SHX23_2 = 0.5
        SHX24_2 = 0.0
        SHX25_2 = 10.0
        SHX17_2(SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
        SHX17_2 = Wait
        SHX18_2 = 2000
        SHX17_2(SHX18_2)
        SHX17_2 = FreezeEntityPosition
        SHX18_2 = SHX1_2
        SHX19_2 = true
        SHX17_2(SHX18_2, SHX19_2)
        SHX17_2 = tCMG
        SHX17_2 = SHX17_2.notify
        SHX18_2 = "~g~Success~w~: Car chocks setup"
        SHX17_2(SHX18_2)
      end
    elseif SHX3_2 then
      SHX4_2 = Wait
      SHX5_2 = 2000
      SHX4_2(SHX5_2)
      SHX4_2 = CMG
      SHX4_2 = SHX4_2.getObjectId
      SHX5_2 = SHX33_1
      SHX5_2 = SHX5_2[SHX2_2]
      SHX5_2 = SHX5_2[2]
      SHX6_2 = "chock1"
      SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
      SHX5_2 = CMG
      SHX5_2 = SHX5_2.getObjectId
      SHX6_2 = SHX33_1
      SHX6_2 = SHX6_2[SHX2_2]
      SHX6_2 = SHX6_2[3]
      SHX7_2 = "chock2"
      SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
      SHX6_2 = CMG
      SHX6_2 = SHX6_2.getObjectId
      SHX7_2 = SHX33_1
      SHX7_2 = SHX7_2[SHX2_2]
      SHX7_2 = SHX7_2[4]
      SHX8_2 = "chock3"
      SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
      SHX7_2 = CMG
      SHX7_2 = SHX7_2.getObjectId
      SHX8_2 = SHX33_1
      SHX8_2 = SHX8_2[SHX2_2]
      SHX8_2 = SHX8_2[5]
      SHX9_2 = "chock4"
      SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
      SHX8_2 = Wait
      SHX9_2 = 1000
      SHX8_2(SHX9_2)
      if SHX4_2 then
        SHX8_2 = DoesEntityExist
        SHX9_2 = SHX4_2
        SHX8_2 = SHX8_2(SHX9_2)
        if SHX8_2 then
          SHX8_2 = DeleteEntity
          SHX9_2 = SHX4_2
          SHX8_2(SHX9_2)
        end
      end
      if SHX5_2 then
        SHX8_2 = DoesEntityExist
        SHX9_2 = SHX5_2
        SHX8_2 = SHX8_2(SHX9_2)
        if SHX8_2 then
          SHX8_2 = DeleteEntity
          SHX9_2 = SHX5_2
          SHX8_2(SHX9_2)
        end
      end
      if SHX6_2 then
        SHX8_2 = DoesEntityExist
        SHX9_2 = SHX6_2
        SHX8_2 = SHX8_2(SHX9_2)
        if SHX8_2 then
          SHX8_2 = DeleteEntity
          SHX9_2 = SHX6_2
          SHX8_2(SHX9_2)
        end
      end
      if SHX7_2 then
        SHX8_2 = DoesEntityExist
        SHX9_2 = SHX7_2
        SHX8_2 = SHX8_2(SHX9_2)
        if SHX8_2 then
          SHX8_2 = DeleteEntity
          SHX9_2 = SHX7_2
          SHX8_2(SHX9_2)
        end
      end
      SHX8_2 = TriggerServerEvent
      SHX9_2 = "947eb3be89"
      SHX10_2 = SHX2_2
      SHX11_2 = SHX33_1
      SHX11_2 = SHX11_2[SHX2_2]
      SHX12_2 = true
      SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX8_2 = TriggerServerEvent
      SHX9_2 = "9efbf4fd13"
      SHX10_2 = SHX2_2
      SHX8_2(SHX9_2, SHX10_2)
      SHX8_2 = tCMG
      SHX8_2 = SHX8_2.notify
      SHX9_2 = "~g~Success~w~: Car chocks removed"
      SHX8_2(SHX9_2)
    else
      SHX4_2 = tCMG
      SHX4_2 = SHX4_2.notify
      SHX5_2 = "~r~Error~w~: No car chocks found"
      SHX4_2(SHX5_2)
    end
  else
    SHX2_2 = tCMG
    SHX2_2 = SHX2_2.notify
    SHX3_2 = "~r~Error~w~: No vehicle found"
    SHX2_2(SHX3_2)
  end
end
SHX4_1 = SHX87_1
function SHX87_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerCoords
  SHX2_2 = SHX2_2()
  SHX3_2 = TriggerServerEvent
  SHX4_2 = "7fef947eae"
  SHX5_2 = SHX2_2
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.getNetId
  SHX7_2 = SHX0_2
  SHX8_2 = "spawnRope(entity)"
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.getNetId
  SHX8_2 = SHX1_2
  SHX9_2 = "spawnRope(ped)"
  SHX7_2, SHX8_2, SHX9_2 = SHX7_2(SHX8_2, SHX9_2)
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX3_2 = Wait
  SHX4_2 = 2000
  SHX3_2(SHX4_2)
  SHX3_2 = tCMG
  SHX3_2 = SHX3_2.notify
  SHX4_2 = "~g~Success~w~: Rope is now winding"
  SHX3_2(SHX4_2)
end
function SHX88_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = true
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = GiveWeaponToPed
  SHX3_2 = PlayerPedId
  SHX3_2 = SHX3_2()
  SHX4_2 = -243142012
  SHX5_2 = 1
  SHX6_2 = false
  SHX7_2 = true
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX2_2 = false
  SHX3_2 = 0
  while SHX0_2 do
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.getPlayerId
    SHX4_2 = SHX4_2()
    SHX5_2 = GetEntityPlayerIsFreeAimingAt
    SHX6_2 = SHX4_2
    SHX5_2, SHX6_2 = SHX5_2(SHX6_2)
    SHX7_2 = IsPedShooting
    SHX8_2 = SHX1_2
    SHX7_2 = SHX7_2(SHX8_2)
    if SHX7_2 then
      if SHX5_2 then
        SHX2_2 = true
        SHX3_2 = SHX6_2
        SHX0_2 = false
        break
      end
      SHX2_2 = false
      break
    end
    SHX7_2 = Wait
    SHX8_2 = 0
    SHX7_2(SHX8_2)
  end
  if SHX2_2 then
    SHX4_2 = tCMG
    SHX4_2 = SHX4_2.notify
    SHX5_2 = "~g~Success~w~: Throw bag deployed"
    SHX4_2(SHX5_2)
    SHX4_2 = SHX87_1
    SHX5_2 = SHX3_2
    SHX4_2(SHX5_2)
  else
    SHX4_2 = tCMG
    SHX4_2 = SHX4_2.notify
    SHX5_2 = "~r~Error~w~: No player found"
    SHX4_2(SHX5_2)
  end
  SHX0_2 = false
end
SHX7_1 = SHX88_1
SHX88_1 = 100
SHX89_1 = RegisterNetEvent
SHX90_1 = "7fef947eae"
function SHX91_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerCoords
  SHX3_2 = SHX3_2()
  SHX4_2 = SHX3_2 - SHX0_2
  SHX4_2 = #SHX4_2
  if SHX4_2 < 30.0 then
    SHX5_2 = RopeLoadTextures
    SHX5_2()
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.getObjectId
    SHX6_2 = SHX1_2
    SHX7_2 = "spawnThrowBag 1"
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.getObjectId
    SHX7_2 = SHX2_2
    SHX8_2 = "spawnThrowBag 2"
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
    SHX7_2 = GetEntityCoords
    SHX8_2 = SHX5_2
    SHX7_2 = SHX7_2(SHX8_2)
    SHX8_2 = GetEntityCoords
    SHX9_2 = SHX5_2
    SHX8_2 = SHX8_2(SHX9_2)
    SHX9_2 = GetEntityCoords
    SHX10_2 = SHX6_2
    SHX9_2 = SHX9_2(SHX10_2)
    SHX8_2 = SHX8_2 - SHX9_2
    SHX8_2 = #SHX8_2
    SHX9_2 = AddRope
    SHX10_2 = SHX0_2.x
    SHX11_2 = SHX0_2.y
    SHX12_2 = SHX0_2.z
    SHX13_2 = 0.0
    SHX14_2 = 0.0
    SHX15_2 = 0.0
    SHX16_2 = SHX8_2
    SHX17_2 = 2
    SHX18_2 = SHX8_2 + 10.0
    SHX19_2 = 1.0
    SHX20_2 = 0
    SHX21_2 = false
    SHX22_2 = false
    SHX23_2 = false
    SHX24_2 = 0
    SHX25_2 = false
    SHX26_2 = 0
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
    SHX10_2 = AttachEntitiesToRope
    SHX11_2 = SHX9_2
    SHX12_2 = SHX6_2
    SHX13_2 = SHX5_2
    SHX14_2 = SHX0_2.x
    SHX15_2 = SHX0_2.y
    SHX16_2 = SHX0_2.z
    SHX16_2 = SHX16_2 + 0.2
    SHX17_2 = SHX7_2.x
    SHX18_2 = SHX7_2.y
    SHX19_2 = SHX7_2.z
    SHX19_2 = SHX19_2 - 0.6
    SHX20_2 = SHX8_2
    SHX21_2 = true
    SHX22_2 = true
    SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
    SHX10_2 = StartRopeWinding
    SHX11_2 = SHX9_2
    SHX10_2(SHX11_2)
    SHX10_2 = "rcmlastone2leadinout"
    SHX11_2 = "sas_idle_sit"
    SHX12_2 = "missprologueig_4@hold_head_base"
    SHX13_2 = "hold_head_loop_base_brad"
    SHX14_2 = FreezeEntityPosition
    SHX15_2 = SHX6_2
    SHX16_2 = true
    SHX14_2(SHX15_2, SHX16_2)
    SHX14_2 = CMG
    SHX14_2 = SHX14_2.loadAnimDict
    SHX15_2 = SHX12_2
    SHX14_2(SHX15_2)
    SHX14_2 = TaskPlayAnim
    SHX15_2 = SHX6_2
    SHX16_2 = SHX12_2
    SHX17_2 = SHX13_2
    SHX18_2 = 8.0
    SHX19_2 = -8.0
    SHX20_2 = -1
    SHX21_2 = 1
    SHX22_2 = 0.0
    SHX23_2 = false
    SHX24_2 = false
    SHX25_2 = false
    SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
    SHX14_2 = RemoveAnimDict
    SHX15_2 = SHX12_2
    SHX14_2(SHX15_2)
    SHX14_2 = false
    while true do
      SHX15_2 = GetEntityCoords
      SHX16_2 = SHX5_2
      SHX15_2 = SHX15_2(SHX16_2)
      SHX16_2 = GetEntityCoords
      SHX17_2 = SHX6_2
      SHX16_2 = SHX16_2(SHX17_2)
      SHX15_2 = SHX15_2 - SHX16_2
      SHX15_2 = #SHX15_2
      SHX16_2 = 1.4
      if SHX15_2 < SHX16_2 then
        break
      end
      if not SHX14_2 then
        SHX15_2 = IsPedSwimming
        SHX16_2 = SHX5_2
        SHX15_2 = SHX15_2(SHX16_2)
        if not SHX15_2 then
          SHX14_2 = true
          SHX15_2 = CMG
          SHX15_2 = SHX15_2.loadAnimDict
          SHX16_2 = SHX10_2
          SHX15_2(SHX16_2)
          SHX15_2 = TaskPlayAnim
          SHX16_2 = SHX5_2
          SHX17_2 = SHX10_2
          SHX18_2 = SHX11_2
          SHX19_2 = 8.0
          SHX20_2 = -8.0
          SHX21_2 = -1
          SHX22_2 = 1
          SHX23_2 = 0.0
          SHX24_2 = false
          SHX25_2 = false
          SHX26_2 = false
          SHX15_2(SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2)
          SHX15_2 = RemoveAnimDict
          SHX16_2 = SHX10_2
          SHX15_2(SHX16_2)
        end
      end
      SHX15_2 = RopeGetDistanceBetweenEnds
      SHX16_2 = SHX9_2
      SHX15_2 = SHX15_2(SHX16_2)
      SHX16_2 = 1.4
      if SHX15_2 < SHX16_2 then
        break
      end
      SHX16_2 = RopeForceLength
      SHX17_2 = SHX9_2
      SHX18_2 = SHX15_2 - 0.1
      SHX16_2(SHX17_2, SHX18_2)
      SHX16_2 = SHX88_1
      if SHX16_2 < 0 then
        SHX16_2 = Wait
        SHX17_2 = 0
        SHX16_2(SHX17_2)
      else
        SHX16_2 = Wait
        SHX17_2 = SHX88_1
        SHX16_2(SHX17_2)
      end
    end
    SHX15_2 = DeleteRope
    SHX16_2 = SHX9_2
    SHX15_2(SHX16_2)
    SHX15_2 = ClearPedTasks
    SHX16_2 = SHX5_2
    SHX15_2(SHX16_2)
    SHX15_2 = ClearPedTasks
    SHX16_2 = SHX6_2
    SHX15_2(SHX16_2)
    SHX15_2 = FreezeEntityPosition
    SHX16_2 = SHX6_2
    SHX17_2 = false
    SHX15_2(SHX16_2, SHX17_2)
    SHX15_2 = RopeUnloadTextures
    SHX15_2()
  end
end
SHX89_1(SHX90_1, SHX91_1)
SHX89_1 = RegisterNetEvent
SHX90_1 = "9d1c946a2e"
function SHX91_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = GetGroundZAndNormalFor_3dCoord
  SHX2_2 = SHX0_2.x
  SHX3_2 = SHX0_2.y
  SHX4_2 = SHX0_2.z
  SHX1_2, SHX2_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  if SHX1_2 then
    SHX3_2 = math
    SHX3_2 = SHX3_2.abs
    SHX4_2 = SHX0_2.z
    SHX4_2 = SHX4_2 - SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 < 4.0 then
      SHX3_2 = CMG
      SHX3_2 = SHX3_2.isPositionInGreenzone
      SHX4_2 = SHX0_2
      SHX3_2 = SHX3_2(SHX4_2)
      if not SHX3_2 then
        SHX3_2 = CMG
        SHX3_2 = SHX3_2.isPositionInRedzone
        SHX4_2 = SHX0_2
        SHX3_2 = SHX3_2(SHX4_2)
        if not SHX3_2 then
          SHX3_2 = TriggerServerEvent
          SHX4_2 = "fe180b3801"
          SHX3_2(SHX4_2)
        end
      end
    end
  end
end
SHX89_1(SHX90_1, SHX91_1)
