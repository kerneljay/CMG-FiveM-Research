-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1
SHX0_1 = {}
SHX1_1 = {}
SHX0_1.players = SHX1_1
SHX0_1.isActive = false
SHX1_1 = {}
SHX0_1.data = SHX1_1
SHX0_1.minigameId = 0
SHX0_1.minigameName = ""
SHX0_1.drawPlayersTimeBar = true
SHX0_1.musicString = ""
SHX0_1.playMusic = false
currentEvent = SHX0_1
SHX0_1 = {}
SHX1_1 = {}
SHX2_1 = {}
SHX3_1 = {}
SHX4_1 = ""
SHX5_1 = false
SHX6_1 = 0
SHX7_1 = false
SHX8_1 = {}
SHX9_1 = false
SHX10_1 = RMenu
SHX10_1 = SHX10_1.Add
SHX11_1 = "cmgevents"
SHX12_1 = "main"
SHX13_1 = RageUI
SHX13_1 = SHX13_1.CreateMenu
SHX14_1 = ""
SHX15_1 = "Event Menu"
SHX16_1 = CMG
SHX16_1 = SHX16_1.getRageUIMenuWidth
SHX16_1 = SHX16_1()
SHX17_1 = CMG
SHX17_1 = SHX17_1.getRageUIMenuHeight
SHX17_1 = SHX17_1()
SHX18_1 = "cmg_events"
SHX19_1 = "cmg_events"
SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1 = SHX13_1(SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1)
SHX10_1(SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1)
SHX10_1 = RMenu
SHX10_1 = SHX10_1.Add
SHX11_1 = "cmgevents"
SHX12_1 = "categoryInfo"
SHX13_1 = RageUI
SHX13_1 = SHX13_1.CreateSubMenu
SHX14_1 = RMenu
SHX15_1 = SHX14_1
SHX14_1 = SHX14_1.Get
SHX16_1 = "cmgevents"
SHX17_1 = "main"
SHX14_1 = SHX14_1(SHX15_1, SHX16_1, SHX17_1)
SHX15_1 = ""
SHX16_1 = "Category"
SHX17_1 = CMG
SHX17_1 = SHX17_1.getRageUIMenuWidth
SHX17_1 = SHX17_1()
SHX18_1 = CMG
SHX18_1 = SHX18_1.getRageUIMenuHeight
SHX18_1 = SHX18_1()
SHX19_1 = "cmg_events"
SHX20_1 = "cmg_events"
SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1 = SHX13_1(SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1)
SHX10_1(SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1)
SHX10_1 = RMenu
SHX10_1 = SHX10_1.Add
SHX11_1 = "cmgevents"
SHX12_1 = "secondary"
SHX13_1 = RageUI
SHX13_1 = SHX13_1.CreateSubMenu
SHX14_1 = RMenu
SHX15_1 = SHX14_1
SHX14_1 = SHX14_1.Get
SHX16_1 = "cmgevents"
SHX17_1 = "main"
SHX14_1 = SHX14_1(SHX15_1, SHX16_1, SHX17_1)
SHX15_1 = ""
SHX16_1 = "Event Menu"
SHX17_1 = CMG
SHX17_1 = SHX17_1.getRageUIMenuWidth
SHX17_1 = SHX17_1()
SHX18_1 = CMG
SHX18_1 = SHX18_1.getRageUIMenuHeight
SHX18_1 = SHX18_1()
SHX19_1 = "cmg_events"
SHX20_1 = "cmg_events"
SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1 = SHX13_1(SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1)
SHX10_1(SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1)
SHX10_1 = RMenu
SHX10_1 = SHX10_1.Add
SHX11_1 = "cmgevents"
SHX12_1 = "players"
SHX13_1 = RageUI
SHX13_1 = SHX13_1.CreateMenu
SHX14_1 = ""
SHX15_1 = "Players"
SHX16_1 = CMG
SHX16_1 = SHX16_1.getRageUIMenuWidth
SHX16_1 = SHX16_1()
SHX17_1 = CMG
SHX17_1 = SHX17_1.getRageUIMenuHeight
SHX17_1 = SHX17_1()
SHX18_1 = "cmg_events"
SHX19_1 = "cmg_events"
SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1 = SHX13_1(SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1)
SHX10_1(SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1)
SHX10_1 = RMenu
SHX10_1 = SHX10_1.Add
SHX11_1 = "cmgevents"
SHX12_1 = "players2"
SHX13_1 = RageUI
SHX13_1 = SHX13_1.CreateMenu
SHX14_1 = ""
SHX15_1 = "Players"
SHX16_1 = CMG
SHX16_1 = SHX16_1.getRageUIMenuWidth
SHX16_1 = SHX16_1()
SHX17_1 = CMG
SHX17_1 = SHX17_1.getRageUIMenuHeight
SHX17_1 = SHX17_1()
SHX18_1 = "cmg_events"
SHX19_1 = "cmg_events"
SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1 = SHX13_1(SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1)
SHX10_1(SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1)
SHX10_1 = RMenu
SHX10_1 = SHX10_1.Add
SHX11_1 = "cmgevents"
SHX12_1 = "client"
SHX13_1 = RageUI
SHX13_1 = SHX13_1.CreateMenu
SHX14_1 = ""
SHX15_1 = "CMG Events"
SHX16_1 = CMG
SHX16_1 = SHX16_1.getRageUIMenuWidth
SHX16_1 = SHX16_1()
SHX17_1 = CMG
SHX17_1 = SHX17_1.getRageUIMenuHeight
SHX17_1 = SHX17_1()
SHX18_1 = "cmg_events"
SHX19_1 = "cmg_events"
SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1 = SHX13_1(SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1)
SHX10_1(SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1)
SHX10_1 = RegisterNetEvent
SHX11_1 = "ceccc29483"
function SHX12_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX1_2 = table
  SHX1_2 = SHX1_2.count
  SHX2_2 = SHX0_1
  SHX1_2 = SHX1_2(SHX2_2)
  if 0 == SHX1_2 then
    SHX0_1 = SHX0_2
    SHX1_2 = pairs
    SHX2_2 = SHX0_1
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
    for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
      SHX7_2 = pairs
      SHX8_2 = SHX6_2
      SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
      for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
        SHX13_2 = table
        SHX13_2 = SHX13_2.insert
        SHX14_2 = SHX8_1
        SHX15_2 = SHX12_2
        SHX13_2(SHX14_2, SHX15_2)
      end
    end
    SHX1_2 = table
    SHX1_2 = SHX1_2.sort
    SHX2_2 = SHX8_1
    function SHX3_2(SHX0_3, SHX1_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX2_3, SHX3_3
      SHX2_3 = SHX0_3.minigameName
      SHX3_3 = SHX1_3.minigameName
      SHX2_3 = SHX2_3 < SHX3_3
      return SHX2_3
    end
    SHX1_2(SHX2_2, SHX3_2)
  end
  SHX1_2 = currentEvent
  SHX1_2 = SHX1_2.isManager
  if true == SHX1_2 then
    SHX1_2 = RageUI
    SHX1_2 = SHX1_2.CloseAll
    SHX1_2()
    SHX1_2 = RageUI
    SHX1_2 = SHX1_2.Visible
    SHX2_2 = RMenu
    SHX3_2 = SHX2_2
    SHX2_2 = SHX2_2.Get
    SHX4_2 = "cmgevents"
    SHX5_2 = "players"
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = true
    SHX1_2(SHX2_2, SHX3_2)
  else
    SHX1_2 = RageUI
    SHX1_2 = SHX1_2.Visible
    SHX2_2 = RMenu
    SHX3_2 = SHX2_2
    SHX2_2 = SHX2_2.Get
    SHX4_2 = "cmgevents"
    SHX5_2 = "main"
    SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    if SHX1_2 then
      SHX1_2 = RageUI
      SHX1_2 = SHX1_2.CloseAll
      SHX1_2()
    else
      SHX1_2 = RageUI
      SHX1_2 = SHX1_2.CloseAll
      SHX1_2()
      SHX1_2 = RageUI
      SHX1_2 = SHX1_2.Visible
      SHX2_2 = RMenu
      SHX3_2 = SHX2_2
      SHX2_2 = SHX2_2.Get
      SHX4_2 = "cmgevents"
      SHX5_2 = "main"
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      SHX3_2 = true
      SHX1_2(SHX2_2, SHX3_2)
    end
  end
end
SHX10_1(SHX11_1, SHX12_1)
function SHX10_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX2_2 = RageUI
  SHX2_2 = SHX2_2.ButtonWithStyle
  SHX3_2 = SHX1_2.mapName
  SHX4_2 = SHX1_2.desc
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
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3
    if SHX2_3 then
      SHX3_3 = SHX0_2
      SHX4_1 = SHX3_3
      SHX3_3 = RMenu
      SHX4_3 = SHX3_3
      SHX3_3 = SHX3_3.Get
      SHX5_3 = "cmgevents"
      SHX6_3 = "secondary"
      SHX3_3 = SHX3_3(SHX4_3, SHX5_3, SHX6_3)
      SHX4_3 = SHX1_2
      SHX3_3.MetaData = SHX4_3
    end
  end
  SHX8_2 = RMenu
  SHX9_2 = SHX8_2
  SHX8_2 = SHX8_2.Get
  SHX10_2 = "cmgevents"
  SHX11_2 = "secondary"
  SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
end
SHX11_1 = RageUI
SHX11_1 = SHX11_1.CreateWhile
SHX12_1 = 1.0
SHX13_1 = RMenu
SHX14_1 = SHX13_1
SHX13_1 = SHX13_1.Get
SHX15_1 = "cmgevents"
SHX16_1 = "main"
SHX13_1 = SHX13_1(SHX14_1, SHX15_1, SHX16_1)
SHX14_1 = nil
function SHX15_1()
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
  SHX3_2 = "cmgevents"
  SHX4_2 = "main"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX3_2 = false
  SHX4_2 = false
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.drawEventJoinAndInviteButtons
    SHX1_3 = true
    SHX0_3(SHX1_3)
    SHX0_3 = GetGameTimer
    SHX0_3 = SHX0_3()
    SHX1_3 = SHX6_1
    SHX0_3 = SHX0_3 - SHX1_3
    SHX1_3 = 1000
    if SHX0_3 > SHX1_3 then
      SHX0_3 = TriggerServerEvent
      SHX1_3 = "d72273eadd"
      SHX0_3(SHX1_3)
      SHX0_3 = GetGameTimer
      SHX0_3 = SHX0_3()
      SHX6_1 = SHX0_3
    end
    SHX0_3 = SHX7_1
    if SHX0_3 then
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Separator
      SHX1_3 = "~g~There is an event currently running."
      SHX0_3(SHX1_3)
    else
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Separator
      SHX1_3 = "~r~There are no events currently running."
      SHX0_3(SHX1_3)
    end
    SHX0_3 = pairs
    SHX1_3 = SHX8_1
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
    for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      SHX6_3 = table
      SHX6_3 = SHX6_3.count
      SHX7_3 = SHX5_3.maps
      SHX6_3 = SHX6_3(SHX7_3)
      if SHX6_3 > 1 then
        SHX6_3 = RageUI
        SHX6_3 = SHX6_3.ButtonWithStyle
        SHX7_3 = SHX5_3.minigameName
        SHX8_3 = nil
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
          
          local SHX3_4, SHX4_4, SHX5_4, SHX6_4
          if SHX2_4 then
            SHX3_4 = RMenu
            SHX4_4 = SHX3_4
            SHX3_4 = SHX3_4.Get
            SHX5_4 = "cmgevents"
            SHX6_4 = "categoryInfo"
            SHX3_4 = SHX3_4(SHX4_4, SHX5_4, SHX6_4)
            SHX4_4 = SHX5_3
            SHX3_4.MetaData = SHX4_4
          end
        end
        SHX12_3 = RMenu
        SHX13_3 = SHX12_3
        SHX12_3 = SHX12_3.Get
        SHX14_3 = "cmgevents"
        SHX15_3 = "categoryInfo"
        SHX12_3, SHX13_3, SHX14_3, SHX15_3 = SHX12_3(SHX13_3, SHX14_3, SHX15_3)
        SHX6_3(SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3)
      else
        SHX6_3 = pairs
        SHX7_3 = SHX5_3.maps
        SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3)
        for SHX10_3, SHX11_3 in SHX6_3, SHX7_3, SHX8_3, SHX9_3 do
          SHX12_3 = SHX10_1
          SHX13_3 = SHX5_3.minigameName
          SHX14_3 = SHX11_3
          SHX12_3(SHX13_3, SHX14_3)
        end
      end
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "cmgevents"
  SHX4_2 = "categoryInfo"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX3_2 = false
  SHX4_2 = false
  function SHX5_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3
    SHX1_3 = pairs
    SHX2_3 = SHX0_3.maps
    SHX1_3, SHX2_3, SHX3_3, SHX4_3 = SHX1_3(SHX2_3)
    for SHX5_3, SHX6_3 in SHX1_3, SHX2_3, SHX3_3, SHX4_3 do
      SHX7_3 = SHX10_1
      SHX8_3 = SHX0_3.minigameName
      SHX9_3 = SHX6_3
      SHX7_3(SHX8_3, SHX9_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "cmgevents"
  SHX4_2 = "secondary"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX3_2 = false
  SHX4_2 = false
  function SHX5_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.Separator
    SHX2_3 = string
    SHX2_3 = SHX2_3.format
    SHX3_3 = "Minimum Players: %s"
    SHX4_3 = SHX0_3.minPlayers
    SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3 = SHX2_3(SHX3_3, SHX4_3)
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.Separator
    SHX2_3 = string
    SHX2_3 = SHX2_3.format
    SHX3_3 = "Maximum Players: %s"
    SHX4_3 = SHX0_3.maxPlayers
    SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3 = SHX2_3(SHX3_3, SHX4_3)
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    SHX1_3 = nil
    SHX3_3 = SHX4_1
    SHX2_3 = SHX2_1
    SHX2_3 = SHX2_3[SHX3_3]
    if SHX2_3 then
      SHX3_3 = SHX4_1
      SHX2_3 = SHX2_1
      SHX2_3 = SHX2_3[SHX3_3]
      SHX2_3 = SHX2_3()
      SHX1_3 = SHX2_3
    end
    SHX2_3 = RageUI
    SHX2_3 = SHX2_3.ButtonWithStyle
    SHX3_3 = "~g~Start Event"
    SHX4_3 = nil
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
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4
      if SHX2_4 then
        SHX3_4 = TriggerServerEvent
        SHX4_4 = "474d4da41a"
        SHX5_4 = SHX4_1
        SHX6_4 = SHX0_3.mapName
        SHX7_4 = SHX1_3
        SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4)
      end
    end
    SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "cmgevents"
  SHX4_2 = "players"
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
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "~y~Admin Options"
    SHX0_3(SHX1_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "~g~Start Event"
    SHX2_3 = "This will start the event with you joining it."
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
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4
      if SHX2_4 then
        SHX3_4 = TriggerServerEvent
        SHX4_4 = "5ba79ce411"
        SHX5_4 = currentEvent
        SHX5_4 = SHX5_4.minigameId
        SHX6_4 = false
        SHX3_4(SHX4_4, SHX5_4, SHX6_4)
        SHX3_4 = RageUI
        SHX3_4 = SHX3_4.CloseAll
        SHX3_4()
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.hasClientPermission
    SHX1_3 = "eventadmin.canleave"
    SHX0_3 = SHX0_3(SHX1_3)
    if SHX0_3 then
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.ButtonWithStyle
      SHX1_3 = "~y~Start Event And Leave"
      SHX2_3 = "This will start the event without you joining it."
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
        
        local SHX3_4, SHX4_4, SHX5_4, SHX6_4
        if SHX2_4 then
          SHX3_4 = TriggerServerEvent
          SHX4_4 = "5ba79ce411"
          SHX5_4 = currentEvent
          SHX5_4 = SHX5_4.minigameId
          SHX6_4 = true
          SHX3_4(SHX4_4, SHX5_4, SHX6_4)
          SHX3_4 = RageUI
          SHX3_4 = SHX3_4.CloseAll
          SHX3_4()
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    end
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "~r~Cancel Event"
    SHX2_3 = nil
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
        SHX3_4 = TriggerServerEvent
        SHX4_4 = "f061d958f2"
        SHX5_4 = currentEvent
        SHX5_4 = SHX5_4.minigameId
        SHX3_4(SHX4_4, SHX5_4)
        SHX3_4 = RageUI
        SHX3_4 = SHX3_4.CloseAll
        SHX3_4()
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "~y~Players ("
    SHX2_3 = table
    SHX2_3 = SHX2_3.count
    SHX3_3 = currentEvent
    SHX3_3 = SHX3_3.players
    SHX2_3 = SHX2_3(SHX3_3)
    SHX3_3 = ")"
    SHX1_3 = SHX1_3 .. SHX2_3 .. SHX3_3
    SHX0_3(SHX1_3)
    SHX0_3 = pairs
    SHX1_3 = currentEvent
    SHX1_3 = SHX1_3.players
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
    for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      SHX6_3 = RageUI
      SHX6_3 = SHX6_3.ButtonWithStyle
      SHX7_3 = string
      SHX7_3 = SHX7_3.format
      SHX8_3 = "[%s] %s"
      SHX9_3 = SHX5_3.source
      SHX10_3 = SHX5_3.name
      SHX7_3 = SHX7_3(SHX8_3, SHX9_3, SHX10_3)
      SHX8_3 = string
      SHX8_3 = SHX8_3.format
      SHX9_3 = "Name: %s Temp ID: %s Perm ID: %s"
      SHX10_3 = SHX5_3.name
      SHX11_3 = SHX5_3.source
      SHX12_3 = SHX5_3.user_id
      SHX8_3 = SHX8_3(SHX9_3, SHX10_3, SHX11_3, SHX12_3)
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
        
        local SHX3_4, SHX4_4, SHX5_4, SHX6_4
        if SHX2_4 then
          SHX3_4 = RMenu
          SHX4_4 = SHX3_4
          SHX3_4 = SHX3_4.Get
          SHX5_4 = "cmgevents"
          SHX6_4 = "players2"
          SHX3_4 = SHX3_4(SHX4_4, SHX5_4, SHX6_4)
          SHX4_4 = SHX5_3
          SHX3_4.MetaData = SHX4_4
        end
      end
      SHX12_3 = RMenu
      SHX13_3 = SHX12_3
      SHX12_3 = SHX12_3.Get
      SHX14_3 = "cmgevents"
      SHX15_3 = "players2"
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
  SHX3_2 = "cmgevents"
  SHX4_2 = "players2"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX3_2 = true
  SHX4_2 = true
  function SHX5_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.ButtonWithStyle
    SHX2_3 = "Kick Player From Event"
    SHX3_3 = nil
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
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4
      if SHX2_4 then
        SHX3_4 = TriggerServerEvent
        SHX4_4 = "85f5f18925"
        SHX5_4 = SHX0_3.source
        SHX6_4 = currentEvent
        SHX6_4 = SHX6_4.minigameId
        SHX3_4(SHX4_4, SHX5_4, SHX6_4)
      end
    end
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "cmgevents"
  SHX4_2 = "client"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Leave Event"
    SHX2_3 = nil
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
        SHX3_4 = ExecuteCommand
        SHX4_4 = "leaveevent"
        SHX3_4(SHX4_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "~y~Players ("
    SHX2_3 = table
    SHX2_3 = SHX2_3.count
    SHX3_3 = currentEvent
    SHX3_3 = SHX3_3.players
    SHX2_3 = SHX2_3(SHX3_3)
    SHX3_3 = ")"
    SHX1_3 = SHX1_3 .. SHX2_3 .. SHX3_3
    SHX0_3(SHX1_3)
    SHX0_3 = pairs
    SHX1_3 = currentEvent
    SHX1_3 = SHX1_3.players
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
    for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      SHX6_3 = RageUI
      SHX6_3 = SHX6_3.ButtonWithStyle
      SHX7_3 = string
      SHX7_3 = SHX7_3.format
      SHX8_3 = "[%s] %s"
      SHX9_3 = SHX5_3.source
      SHX10_3 = SHX5_3.name
      SHX7_3 = SHX7_3(SHX8_3, SHX9_3, SHX10_3)
      SHX8_3 = string
      SHX8_3 = SHX8_3.format
      SHX9_3 = "Name: %s Temp ID: %s Perm ID: %s"
      SHX10_3 = SHX5_3.name
      SHX11_3 = SHX5_3.source
      SHX12_3 = SHX5_3.user_id
      SHX8_3 = SHX8_3(SHX9_3, SHX10_3, SHX11_3, SHX12_3)
      SHX9_3 = {}
      SHX9_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
      SHX10_3 = true
      function SHX11_3()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_4, SHX1_4
      end
      SHX6_3(SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX11_1(SHX12_1, SHX13_1, SHX14_1, SHX15_1)
SHX11_1 = CMG
function SHX12_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX1_1
  SHX2_2[SHX0_2] = SHX1_2
end
SHX11_1.registerMinigameCleanupHandler = SHX12_1
SHX11_1 = CMG
function SHX12_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX2_1
  SHX2_2[SHX0_2] = SHX1_2
end
SHX11_1.registerMinigameOptionsHandler = SHX12_1
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.removeBlipsForPlayer
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.removePlayerFromLeaderboard
  SHX2_2 = SHX0_2.source
  SHX1_2(SHX2_2)
end
SHX12_1 = RegisterNetEvent
SHX13_1 = "42896e207e"
function SHX14_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX3_2 = pairs
  SHX4_2 = currentEvent
  SHX4_2 = SHX4_2.players
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = true
    SHX10_2 = pairs
    SHX11_2 = SHX0_2
    SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX10_2(SHX11_2)
    for SHX14_2, SHX15_2 in SHX10_2, SHX11_2, SHX12_2, SHX13_2 do
      SHX16_2 = SHX8_2.source
      SHX17_2 = SHX15_2.source
      if SHX16_2 == SHX17_2 then
        SHX9_2 = false
        break
      end
    end
    if SHX9_2 then
      SHX10_2 = SHX11_1
      SHX11_2 = SHX8_2
      SHX10_2(SHX11_2)
    end
  end
  SHX3_2 = pairs
  SHX4_2 = SHX0_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = {}
    SHX8_2.data = SHX9_2
  end
  SHX3_2 = currentEvent
  SHX3_2.players = SHX0_2
  SHX3_2 = currentEvent
  SHX3_2.minigameId = SHX1_2
  SHX3_2 = currentEvent
  SHX3_2.minigameName = SHX2_2
end
SHX12_1(SHX13_1, SHX14_1)
SHX12_1 = RegisterNetEvent
SHX13_1 = "801f335faa"
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = {}
  SHX0_2.data = SHX1_2
  SHX1_2 = table
  SHX1_2 = SHX1_2.add
  SHX2_2 = currentEvent
  SHX2_2 = SHX2_2.players
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
end
SHX12_1(SHX13_1, SHX14_1)
SHX12_1 = RegisterNetEvent
SHX13_1 = "39dc35cae6"
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = pairs
  SHX2_2 = currentEvent
  SHX2_2 = SHX2_2.players
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.source
    SHX8_2 = SHX0_2.source
    if SHX7_2 == SHX8_2 then
      SHX7_2 = SHX11_1
      SHX8_2 = SHX0_2
      SHX7_2(SHX8_2)
      SHX7_2 = table
      SHX7_2 = SHX7_2.remove
      SHX8_2 = currentEvent
      SHX8_2 = SHX8_2.players
      SHX9_2 = SHX5_2
      SHX7_2(SHX8_2, SHX9_2)
    end
  end
end
SHX12_1(SHX13_1, SHX14_1)
SHX12_1 = RegisterNetEvent
SHX13_1 = "5b9d37ca28"
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = currentEvent
  SHX0_2.isManager = true
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.CloseAll
  SHX0_2()
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Visible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "cmgevents"
  SHX4_2 = "players"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
end
SHX12_1(SHX13_1, SHX14_1)
SHX12_1 = 0
SHX13_1 = 0
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = SHX9_1
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerPed
    SHX0_2 = SHX0_2()
    SHX1_2 = SetEntityVisible
    SHX2_2 = SHX0_2
    SHX3_2 = false
    SHX4_2 = false
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = vector3
    SHX2_2 = -77.84175
    SHX3_2 = -1104.633
    SHX4_2 = 33.12158
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX2_2 = SetFocusPosAndVel
    SHX3_2 = SHX1_2.x
    SHX4_2 = SHX1_2.y
    SHX5_2 = SHX1_2.z
    SHX6_2 = 0.0
    SHX7_2 = 0.0
    SHX8_2 = 0.0
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX2_2 = CreateCameraWithParams
    SHX3_2 = "DEFAULT_SCRIPTED_CAMERA"
    SHX4_2 = -77.84175
    SHX5_2 = -1104.633
    SHX6_2 = 33.12158
    SHX7_2 = 0.0
    SHX8_2 = 0.0
    SHX9_2 = 0.0
    SHX10_2 = 65.0
    SHX11_2 = false
    SHX12_2 = 2
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX12_1 = SHX2_2
    SHX2_2 = PointCamAtCoord
    SHX3_2 = SHX12_1
    SHX4_2 = -45.73187
    SHX5_2 = -1097.881
    SHX6_2 = 26.41541
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    SHX2_2 = SetCamActive
    SHX3_2 = SHX12_1
    SHX4_2 = true
    SHX2_2(SHX3_2, SHX4_2)
    SHX2_2 = RenderScriptCams
    SHX3_2 = true
    SHX4_2 = true
    SHX5_2 = 0
    SHX6_2 = true
    SHX7_2 = false
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
    SHX2_2 = CreateCameraWithParams
    SHX3_2 = "DEFAULT_SCRIPTED_CAMERA"
    SHX4_2 = -45.2044
    SHX5_2 = -1128.317
    SHX6_2 = 33.12158
    SHX7_2 = 0.0
    SHX8_2 = 0.0
    SHX9_2 = 0.0
    SHX10_2 = 65.0
    SHX11_2 = false
    SHX12_2 = 2
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX13_1 = SHX2_2
    SHX2_2 = PointCamAtCoord
    SHX3_2 = SHX13_1
    SHX4_2 = -45.73187
    SHX5_2 = -1097.881
    SHX6_2 = 26.41541
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    SHX2_2 = SetCamActiveWithInterp
    SHX3_2 = SHX13_1
    SHX4_2 = SHX12_1
    SHX5_2 = 10000
    SHX6_2 = 5
    SHX7_2 = 5
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
    SHX2_2 = Wait
    SHX3_2 = 10000
    SHX2_2(SHX3_2)
    SHX2_2 = SHX9_1
    if SHX2_2 then
      SHX2_2 = ClearFocus
      SHX2_2()
      SHX2_2 = vector3
      SHX3_2 = 177.9429
      SHX4_2 = -901.3582
      SHX5_2 = 46.75317
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      SHX1_2 = SHX2_2
      SHX2_2 = SetCamCoord
      SHX3_2 = SHX12_1
      SHX4_2 = SHX1_2.x
      SHX5_2 = SHX1_2.y
      SHX6_2 = SHX1_2.z
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      SHX2_2 = vector3
      SHX3_2 = 178.9451
      SHX4_2 = -991.0022
      SHX5_2 = 47.74731
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      SHX1_2 = SHX2_2
      SHX2_2 = SetCamCoord
      SHX3_2 = SHX13_1
      SHX4_2 = SHX1_2.x
      SHX5_2 = SHX1_2.y
      SHX6_2 = SHX1_2.z
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      SHX2_2 = vector3
      SHX3_2 = 177.9429
      SHX4_2 = -901.3582
      SHX5_2 = 46.75317
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      SHX1_2 = SHX2_2
      SHX2_2 = SetFocusPosAndVel
      SHX3_2 = SHX1_2.x
      SHX4_2 = SHX1_2.y
      SHX5_2 = SHX1_2.z
      SHX6_2 = 0.0
      SHX7_2 = 0.0
      SHX8_2 = 0.0
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX2_2 = PointCamAtCoord
      SHX3_2 = SHX12_1
      SHX4_2 = 195.1253
      SHX5_2 = -933.7582
      SHX6_2 = 30.67834
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      SHX2_2 = PointCamAtCoord
      SHX3_2 = SHX13_1
      SHX4_2 = 195.1253
      SHX5_2 = -933.7582
      SHX6_2 = 30.67834
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      SHX2_2 = SetCamActiveWithInterp
      SHX3_2 = SHX13_1
      SHX4_2 = SHX12_1
      SHX5_2 = 25000
      SHX6_2 = 5
      SHX7_2 = 5
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
      SHX2_2 = Wait
      SHX3_2 = 25000
      SHX2_2(SHX3_2)
    end
    SHX2_2 = SHX9_1
    if SHX2_2 then
      SHX2_2 = ClearFocus
      SHX2_2()
      SHX2_2 = vector3
      SHX3_2 = -3135.257
      SHX4_2 = 1042.998
      SHX5_2 = 30.15601
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      SHX1_2 = SHX2_2
      SHX2_2 = SetCamCoord
      SHX3_2 = SHX12_1
      SHX4_2 = SHX1_2.x
      SHX5_2 = SHX1_2.y
      SHX6_2 = SHX1_2.z
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      SHX2_2 = vector3
      SHX3_2 = -3123.837
      SHX4_2 = 1133.525
      SHX5_2 = 30.15601
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      SHX1_2 = SHX2_2
      SHX2_2 = SetCamCoord
      SHX3_2 = SHX13_1
      SHX4_2 = SHX1_2.x
      SHX5_2 = SHX1_2.y
      SHX6_2 = SHX1_2.z
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      SHX2_2 = vector3
      SHX3_2 = -3147.073
      SHX4_2 = 1088.374
      SHX5_2 = 20.6864
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      SHX1_2 = SHX2_2
      SHX2_2 = SetFocusPosAndVel
      SHX3_2 = SHX1_2.x
      SHX4_2 = SHX1_2.y
      SHX5_2 = SHX1_2.z
      SHX6_2 = 0.0
      SHX7_2 = 0.0
      SHX8_2 = 0.0
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX2_2 = PointCamAtCoord
      SHX3_2 = SHX12_1
      SHX4_2 = -3147.073
      SHX5_2 = 1088.374
      SHX6_2 = 20.6864
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      SHX2_2 = PointCamAtCoord
      SHX3_2 = SHX13_1
      SHX4_2 = -3147.073
      SHX5_2 = 1088.374
      SHX6_2 = 20.6864
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      SHX2_2 = SetCamActiveWithInterp
      SHX3_2 = SHX13_1
      SHX4_2 = SHX12_1
      SHX5_2 = 15000
      SHX6_2 = 5
      SHX7_2 = 5
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
      SHX2_2 = Wait
      SHX3_2 = 15000
      SHX2_2(SHX3_2)
    end
    SHX2_2 = SHX9_1
    if SHX2_2 then
      SHX2_2 = ClearFocus
      SHX2_2()
      SHX2_2 = vector3
      SHX3_2 = 598.4967
      SHX4_2 = 1122.923
      SHX5_2 = 364.2878
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      SHX1_2 = SHX2_2
      SHX2_2 = SetCamCoord
      SHX3_2 = SHX12_1
      SHX4_2 = SHX1_2.x
      SHX5_2 = SHX1_2.y
      SHX6_2 = SHX1_2.z
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      SHX2_2 = vector3
      SHX3_2 = 819.7582
      SHX4_2 = 1057.543
      SHX5_2 = 364.2878
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      SHX1_2 = SHX2_2
      SHX2_2 = SetCamCoord
      SHX3_2 = SHX13_1
      SHX4_2 = SHX1_2.x
      SHX5_2 = SHX1_2.y
      SHX6_2 = SHX1_2.z
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      SHX2_2 = vector3
      SHX3_2 = 732.5406
      SHX4_2 = 1195.807
      SHX5_2 = 326.359
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      SHX1_2 = SHX2_2
      SHX2_2 = SetFocusPosAndVel
      SHX3_2 = SHX1_2.x
      SHX4_2 = SHX1_2.y
      SHX5_2 = SHX1_2.z
      SHX6_2 = 0.0
      SHX7_2 = 0.0
      SHX8_2 = 0.0
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX2_2 = PointCamAtCoord
      SHX3_2 = SHX12_1
      SHX4_2 = 732.5406
      SHX5_2 = 1195.807
      SHX6_2 = 326.359
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      SHX2_2 = PointCamAtCoord
      SHX3_2 = SHX13_1
      SHX4_2 = 732.5406
      SHX5_2 = 1195.807
      SHX6_2 = 326.359
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      SHX2_2 = SetCamActiveWithInterp
      SHX3_2 = SHX13_1
      SHX4_2 = SHX12_1
      SHX5_2 = 35000
      SHX6_2 = 5
      SHX7_2 = 5
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
      SHX2_2 = Wait
      SHX3_2 = 35000
      SHX2_2(SHX3_2)
    end
    SHX2_2 = SHX9_1
    if SHX2_2 then
      SHX2_2 = ClearFocus
      SHX2_2()
      SHX2_2 = vector3
      SHX3_2 = 1658.914
      SHX4_2 = 2526.369
      SHX5_2 = 69.68567
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      SHX1_2 = SHX2_2
      SHX2_2 = SetCamCoord
      SHX3_2 = SHX12_1
      SHX4_2 = SHX1_2.x
      SHX5_2 = SHX1_2.y
      SHX6_2 = SHX1_2.z
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      SHX2_2 = vector3
      SHX3_2 = 1751.934
      SHX4_2 = 2507.947
      SHX5_2 = 69.68567
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      SHX1_2 = SHX2_2
      SHX2_2 = SetCamCoord
      SHX3_2 = SHX13_1
      SHX4_2 = SHX1_2.x
      SHX5_2 = SHX1_2.y
      SHX6_2 = SHX1_2.z
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      SHX2_2 = vector3
      SHX3_2 = 1708.629
      SHX4_2 = 2547.943
      SHX5_2 = 45.55676
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      SHX1_2 = SHX2_2
      SHX2_2 = SetFocusPosAndVel
      SHX3_2 = SHX1_2.x
      SHX4_2 = SHX1_2.y
      SHX5_2 = SHX1_2.z
      SHX6_2 = 0.0
      SHX7_2 = 0.0
      SHX8_2 = 0.0
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX2_2 = PointCamAtCoord
      SHX3_2 = SHX12_1
      SHX4_2 = 1708.629
      SHX5_2 = 2547.943
      SHX6_2 = 45.55676
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      SHX2_2 = PointCamAtCoord
      SHX3_2 = SHX13_1
      SHX4_2 = 1708.629
      SHX5_2 = 2547.943
      SHX6_2 = 45.55676
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      SHX2_2 = SetCamActiveWithInterp
      SHX3_2 = SHX13_1
      SHX4_2 = SHX12_1
      SHX5_2 = 35000
      SHX6_2 = 5
      SHX7_2 = 5
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
      SHX2_2 = Wait
      SHX3_2 = 35000
      SHX2_2(SHX3_2)
    end
    SHX2_2 = SHX9_1
    if SHX2_2 then
      SHX2_2 = ClearFocus
      SHX2_2()
      SHX2_2 = vector3
      SHX3_2 = 1545.191
      SHX4_2 = 6444.29
      SHX5_2 = 35.64905
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      SHX1_2 = SHX2_2
      SHX2_2 = SetCamCoord
      SHX3_2 = SHX12_1
      SHX4_2 = SHX1_2.x
      SHX5_2 = SHX1_2.y
      SHX6_2 = SHX1_2.z
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      SHX2_2 = vector3
      SHX3_2 = 1608.475
      SHX4_2 = 6413.301
      SHX5_2 = 35.64905
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      SHX1_2 = SHX2_2
      SHX2_2 = SetCamCoord
      SHX3_2 = SHX13_1
      SHX4_2 = SHX1_2.x
      SHX5_2 = SHX1_2.y
      SHX6_2 = SHX1_2.z
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      SHX2_2 = vector3
      SHX3_2 = 1588.536
      SHX4_2 = 6456.923
      SHX5_2 = 29.27991
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      SHX1_2 = SHX2_2
      SHX2_2 = SetFocusPosAndVel
      SHX3_2 = SHX1_2.x
      SHX4_2 = SHX1_2.y
      SHX5_2 = SHX1_2.z
      SHX6_2 = 0.0
      SHX7_2 = 0.0
      SHX8_2 = 0.0
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX2_2 = PointCamAtCoord
      SHX3_2 = SHX12_1
      SHX4_2 = 1588.536
      SHX5_2 = 6456.923
      SHX6_2 = 29.27991
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      SHX2_2 = PointCamAtCoord
      SHX3_2 = SHX13_1
      SHX4_2 = 1588.536
      SHX5_2 = 6456.923
      SHX6_2 = 29.27991
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      SHX2_2 = SetCamActiveWithInterp
      SHX3_2 = SHX13_1
      SHX4_2 = SHX12_1
      SHX5_2 = 20000
      SHX6_2 = 5
      SHX7_2 = 5
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
      SHX2_2 = Wait
      SHX3_2 = 20000
      SHX2_2(SHX3_2)
    end
    SHX2_2 = SHX9_1
    if SHX2_2 then
      SHX2_2 = ClearFocus
      SHX2_2()
      SHX2_2 = vector3
      SHX3_2 = -134.1758
      SHX4_2 = -834.0527
      SHX5_2 = 321.186
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      SHX1_2 = SHX2_2
      SHX2_2 = SetCamCoord
      SHX3_2 = SHX12_1
      SHX4_2 = SHX1_2.x
      SHX5_2 = SHX1_2.y
      SHX6_2 = SHX1_2.z
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      SHX2_2 = vector3
      SHX3_2 = -37.60879
      SHX4_2 = -882.6725
      SHX5_2 = 321.186
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      SHX1_2 = SHX2_2
      SHX2_2 = SetCamCoord
      SHX3_2 = SHX13_1
      SHX4_2 = SHX1_2.x
      SHX5_2 = SHX1_2.y
      SHX6_2 = SHX1_2.z
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      SHX2_2 = vector3
      SHX3_2 = -73.8989
      SHX4_2 = -817.5824
      SHX5_2 = 319.4843
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      SHX1_2 = SHX2_2
      SHX2_2 = SetFocusPosAndVel
      SHX3_2 = SHX1_2.x
      SHX4_2 = SHX1_2.y
      SHX5_2 = SHX1_2.z
      SHX6_2 = 0.0
      SHX7_2 = 0.0
      SHX8_2 = 0.0
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX2_2 = PointCamAtCoord
      SHX3_2 = SHX12_1
      SHX4_2 = -73.8989
      SHX5_2 = -817.5824
      SHX6_2 = 319.4843
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      SHX2_2 = PointCamAtCoord
      SHX3_2 = SHX13_1
      SHX4_2 = -73.8989
      SHX5_2 = -817.5824
      SHX6_2 = 319.4843
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      SHX2_2 = SetCamActiveWithInterp
      SHX3_2 = SHX13_1
      SHX4_2 = SHX12_1
      SHX5_2 = 25000
      SHX6_2 = 5
      SHX7_2 = 5
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
      SHX2_2 = Wait
      SHX3_2 = 25000
      SHX2_2(SHX3_2)
    end
    SHX2_2 = SHX14_1
    SHX2_2()
  end
end
SHX15_1 = CMG
function SHX16_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.CloseAll
  SHX1_2()
  SHX1_2 = false
  SHX9_1 = SHX1_2
  SHX1_2 = DestroyCam
  SHX2_2 = SHX12_1
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = DestroyCam
  SHX2_2 = SHX13_1
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  if nil == SHX0_2 or true == SHX0_2 then
    SHX1_2 = RenderScriptCams
    SHX2_2 = false
    SHX3_2 = true
    SHX4_2 = 0
    SHX5_2 = true
    SHX6_2 = false
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  else
    SHX1_2 = RenderScriptCams
    SHX2_2 = false
    SHX3_2 = false
    SHX4_2 = 0
    SHX5_2 = true
    SHX6_2 = false
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  end
  SHX1_2 = ClearFocus
  SHX1_2()
  SHX1_2 = FreezeEntityPosition
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = SetEntityVisible
  SHX3_2 = SHX1_2
  SHX4_2 = true
  SHX5_2 = true
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
end
SHX15_1.stopEventSequence = SHX16_1
SHX15_1 = CMG
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX9_1
  return SHX0_2
end
SHX15_1.isEventSequenceRunning = SHX16_1
SHX15_1 = RegisterNetEvent
SHX16_1 = "bf52c7582d"
function SHX17_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = true
  SHX9_1 = SHX0_2
  SHX0_2 = SHX14_1
  SHX0_2()
end
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = RegisterNetEvent
SHX16_1 = "5ba79ce411"
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.setVehicleFailureDisabled
  SHX2_2 = true
  SHX1_2(SHX2_2)
  SHX1_2 = currentEvent
  SHX1_2.data = SHX0_2
  SHX1_2 = currentEvent
  SHX1_2.isActive = true
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.setGreenzonesDisabled
  SHX2_2 = true
  SHX1_2(SHX2_2)
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.Visible
  SHX2_2 = RMenu
  SHX3_2 = SHX2_2
  SHX2_2 = SHX2_2.Get
  SHX4_2 = "cmgevents"
  SHX5_2 = "client"
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
end
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = "..."
SHX16_1 = CMG
SHX16_1 = SHX16_1.registerHudTimerBarProvider
SHX17_1 = "eventSequencePlayers"
function SHX18_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = currentEvent
  SHX1_2 = SHX1_2.isActive
  if SHX1_2 then
    SHX1_2 = currentEvent
    SHX1_2 = SHX1_2.drawPlayersTimeBar
    if SHX1_2 then
      goto SHX_LABEL_10
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX1_2 = 0
  SHX2_2 = pairs
  SHX3_2 = currentEvent
  SHX3_2 = SHX3_2.players
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = type
    SHX9_2 = SHX7_2.active
    SHX8_2 = SHX8_2(SHX9_2)
    if "nil" ~= SHX8_2 then
      SHX8_2 = SHX7_2.active
      if true ~= SHX8_2 then
        goto SHX_LABEL_26
      end
    end
    SHX1_2 = SHX1_2 + 1
    -- [FIX IF ERROR] Move ::SHX_LABEL_26:: outside nested blocks until all 'goto SHX_LABEL_26' can see it
    ::SHX_LABEL_26::
  end
  SHX2_2 = SHX0_2.push
  SHX3_2 = "~y~PLAYERS:"
  SHX4_2 = tostring
  SHX5_2 = SHX1_2
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX4_2(SHX5_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
end
SHX16_1(SHX17_1, SHX18_1)
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = SHX9_1
  if SHX0_2 then
    SHX0_2 = drawNativeText
    SHX1_2 = "~g~Waiting for event to start"
    SHX2_2 = SHX15_1
    SHX1_2 = SHX1_2 .. SHX2_2
    SHX0_2(SHX1_2)
    SHX0_2 = drawNativeNotification
    SHX1_2 = "The command /leaveevent can be used at any time to return back to the main world."
    SHX0_2(SHX1_2)
    SHX0_2 = RageUI
    SHX0_2 = SHX0_2.Visible
    SHX1_2 = RMenu
    SHX2_2 = SHX1_2
    SHX1_2 = SHX1_2.Get
    SHX3_2 = "cmgevents"
    SHX4_2 = "client"
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
    if not SHX0_2 then
      SHX0_2 = currentEvent
      SHX0_2 = SHX0_2.isManager
      if not SHX0_2 then
        SHX0_2 = RageUI
        SHX0_2 = SHX0_2.Visible
        SHX1_2 = RMenu
        SHX2_2 = SHX1_2
        SHX1_2 = SHX1_2.Get
        SHX3_2 = "cmgevents"
        SHX4_2 = "client"
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
        SHX2_2 = true
        SHX0_2(SHX1_2, SHX2_2)
    end
    else
      SHX0_2 = RageUI
      SHX0_2 = SHX0_2.Visible
      SHX1_2 = RMenu
      SHX2_2 = SHX1_2
      SHX1_2 = SHX1_2.Get
      SHX3_2 = "cmgevents"
      SHX4_2 = "players"
      SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
      if not SHX0_2 then
        SHX0_2 = currentEvent
        SHX0_2 = SHX0_2.isManager
        if SHX0_2 then
          SHX0_2 = RageUI
          SHX0_2 = SHX0_2.Visible
          SHX1_2 = RMenu
          SHX2_2 = SHX1_2
          SHX1_2 = SHX1_2.Get
          SHX3_2 = "cmgevents"
          SHX4_2 = "players"
          SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
          SHX2_2 = true
          SHX0_2(SHX1_2, SHX2_2)
        end
      end
    end
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setHudTimerBarProviderActive
  SHX1_2 = "eventSequencePlayers"
  SHX2_2 = currentEvent
  SHX2_2 = SHX2_2.isActive
  SHX2_2 = true == SHX2_2
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = currentEvent
  SHX0_2 = SHX0_2.isActive
  if SHX0_2 then
    SHX0_2 = currentEvent
    SHX0_2 = SHX0_2.drawPlayersTimeBar
    if SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.setWeather
      SHX1_2 = "EXTRASUNNY"
      SHX0_2(SHX1_2)
    end
  end
end
SHX17_1 = CMG
SHX17_1 = SHX17_1.createThreadOnTick
SHX18_1 = SHX16_1
SHX19_1 = "Event Sequence"
SHX17_1(SHX18_1, SHX19_1)
SHX17_1 = Citizen
SHX17_1 = SHX17_1.CreateThread
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  while true do
    SHX0_2 = SHX9_1
    if SHX0_2 then
      SHX0_2 = SHX15_1
      if "..." == SHX0_2 then
        SHX0_2 = "."
        SHX15_1 = SHX0_2
      else
        SHX0_2 = SHX15_1
        SHX1_2 = "."
        SHX0_2 = SHX0_2 .. SHX1_2
        SHX15_1 = SHX0_2
      end
    end
    SHX0_2 = Wait
    SHX1_2 = 500
    SHX0_2(SHX1_2)
  end
end
SHX17_1(SHX18_1)
SHX17_1 = RegisterNetEvent
SHX18_1 = "e27d89983c"
function SHX19_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.stopEventSequence
  SHX4_2()
  SHX4_2 = RageUI
  SHX4_2 = SHX4_2.Visible
  SHX5_2 = RMenu
  SHX6_2 = SHX5_2
  SHX5_2 = SHX5_2.Get
  SHX7_2 = "cmgevents"
  SHX8_2 = "client"
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX6_2 = false
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SHX1_1
  SHX4_2 = SHX4_2[SHX1_2]
  if SHX4_2 then
    SHX4_2 = SHX1_1
    SHX4_2 = SHX4_2[SHX1_2]
    SHX4_2()
  end
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.setVehicleFailureDisabled
  SHX5_2 = false
  SHX4_2(SHX5_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.endVehicleSelection
  SHX4_2()
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.setEventSpectatorMode
  SHX5_2 = false
  SHX4_2(SHX5_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.clearMinigameBounds
  SHX4_2()
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.enableMinigamePlayerBlips
  SHX5_2 = false
  SHX4_2(SHX5_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.enableMinigamePlayerTags
  SHX5_2 = false
  SHX6_2 = false
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.setGreenzonesDisabled
  SHX5_2 = false
  SHX4_2(SHX5_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.setPlayerCanOpenLeaderboard
  SHX5_2 = false
  SHX4_2(SHX5_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.clearLeaderboardData
  SHX4_2()
  if SHX2_2 and SHX3_2 then
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.podiumLeaderboard
    SHX5_2 = SHX2_2
    SHX6_2 = SHX3_2
    SHX4_2(SHX5_2, SHX6_2)
  else
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.isPodiumDrawing
    SHX4_2 = SHX4_2()
    if SHX4_2 then
      SHX4_2 = CMG
      SHX4_2 = SHX4_2.callCancelPodium
      SHX4_2()
    end
  end
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.cancelOverrideTimeWeather
  SHX4_2()
  SHX4_2 = {}
  SHX5_2 = {}
  SHX4_2.players = SHX5_2
  SHX4_2.isActive = false
  SHX5_2 = {}
  SHX4_2.data = SHX5_2
  SHX4_2.minigameId = 0
  SHX4_2.drawPlayersTimeBar = true
  SHX4_2.isManager = false
  SHX4_2.musicString = ""
  SHX4_2.playMusic = false
  currentEvent = SHX4_2
  SHX4_2 = true
  SHX5_1 = SHX4_2
  SHX4_2 = Citizen
  SHX4_2 = SHX4_2.Wait
  SHX5_2 = 5000
  SHX4_2(SHX5_2)
  SHX4_2 = false
  SHX5_1 = SHX4_2
end
SHX17_1(SHX18_1, SHX19_1)
SHX17_1 = CMG
function SHX18_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = FreezeEntityPosition
  SHX3_2 = SHX1_2
  SHX4_2 = SHX0_2
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetEntityInvincible
  SHX3_2 = SHX1_2
  SHX4_2 = SHX0_2
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetEntityVisible
  SHX3_2 = SHX1_2
  SHX4_2 = not SHX0_2
  SHX5_2 = not SHX0_2
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
end
SHX17_1.setPlayerInvisible = SHX18_1
SHX17_1 = RegisterNetEvent
SHX18_1 = "bfec1d4544"
function SHX19_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getHideEventAnnouncementFlag
  SHX2_2 = SHX2_2()
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerCombatTimer
  SHX3_2 = SHX3_2()
  if 0 == SHX3_2 and "Hidden" ~= SHX2_2 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.isInTutorial
    SHX3_2 = SHX3_2()
    if not SHX3_2 then
      SHX3_2 = PlaySound
      SHX4_2 = -1
      SHX5_2 = "CHECKPOINT_PERFECT"
      SHX6_2 = "HUD_MINI_GAME_SOUNDSET"
      SHX7_2 = false
      SHX8_2 = 0
      SHX9_2 = true
      SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
      SHX3_2 = nil
      if "Top" == SHX2_2 then
        SHX4_2 = vector2
        SHX5_2 = 0.5
        SHX6_2 = 0.2
        SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
        SHX3_2 = SHX4_2
      end
      SHX4_2 = CMG
      SHX4_2 = SHX4_2.announceMpBigMsg
      SHX5_2 = "~b~"
      SHX6_2 = SHX0_2
      SHX7_2 = " event has started!"
      SHX5_2 = SHX5_2 .. SHX6_2 .. SHX7_2
      SHX6_2 = "/joinevent to enter, Win \194\163500,000! - "
      SHX7_2 = tostring
      SHX8_2 = SHX1_2
      SHX7_2 = SHX7_2(SHX8_2)
      SHX8_2 = " slots available."
      SHX6_2 = SHX6_2 .. SHX7_2 .. SHX8_2
      SHX7_2 = 5000
      SHX8_2 = nil
      SHX9_2 = nil
      SHX10_2 = SHX3_2
      SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    end
  end
end
SHX17_1(SHX18_1, SHX19_1)
SHX17_1 = CMG
function SHX18_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  if SHX3_2 then
    SHX6_2 = GetSoundId
    SHX6_2 = SHX6_2()
    SHX7_2 = PlaySoundFrontend
    SHX8_2 = SHX6_2
    SHX9_2 = "Checkpoint_Teammate"
    SHX10_2 = "GTAO_Shepherd_Sounds"
    SHX11_2 = false
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX7_2 = ReleaseSoundId
    SHX8_2 = SHX6_2
    SHX7_2(SHX8_2)
  end
  SHX6_2 = Scaleform
  SHX7_2 = "MP_BIG_MESSAGE_FREEMODE"
  SHX6_2 = SHX6_2(SHX7_2)
  SHX7_2 = SHX6_2.RunFunction
  SHX8_2 = "SHOW_SHARD_WASTED_MP_MESSAGE"
  SHX9_2 = {}
  SHX10_2 = SHX0_2
  SHX11_2 = SHX1_2
  SHX12_2 = 0
  SHX13_2 = false
  SHX14_2 = false
  SHX9_2[1] = SHX10_2
  SHX9_2[2] = SHX11_2
  SHX9_2[3] = SHX12_2
  SHX9_2[4] = SHX13_2
  SHX9_2[5] = SHX14_2
  SHX7_2(SHX8_2, SHX9_2)
  if SHX4_2 then
    SHX7_2 = CreateThread
    function SHX8_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3
      SHX0_3 = false
      SHX1_3 = SetTimeout
      SHX2_3 = SHX2_2
      function SHX3_3()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_4, SHX1_4
        SHX0_4 = true
        SHX0_3 = SHX0_4
      end
      SHX1_3(SHX2_3, SHX3_3)
      while not SHX0_3 do
        SHX1_3 = SHX6_2.Render2D
        SHX2_3 = SHX5_2
        SHX1_3(SHX2_3)
        SHX1_3 = Wait
        SHX2_3 = 0
        SHX1_3(SHX2_3)
      end
    end
    SHX7_2(SHX8_2)
  else
    SHX7_2 = false
    SHX8_2 = SetTimeout
    SHX9_2 = SHX2_2
    function SHX10_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = true
      SHX7_2 = SHX0_3
    end
    SHX8_2(SHX9_2, SHX10_2)
    while not SHX7_2 do
      SHX8_2 = SHX6_2.Render2D
      SHX9_2 = SHX5_2
      SHX8_2(SHX9_2)
      SHX8_2 = Wait
      SHX9_2 = 0
      SHX8_2(SHX9_2)
    end
  end
end
SHX17_1.announceMpBigMsg = SHX18_1
SHX17_1 = RegisterNetEvent
SHX18_1 = "ac4201c774"
SHX19_1 = CMG
SHX19_1 = SHX19_1.announceMpBigMsg
SHX17_1(SHX18_1, SHX19_1)
SHX17_1 = CMG
function SHX18_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = currentEvent
  SHX1_2.playMusic = true
  SHX1_2 = currentEvent
  SHX1_2.musicString = SHX0_2
  SHX1_2 = TriggerMusicEvent
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
SHX17_1.setEventMusic = SHX18_1
SHX17_1 = CMG
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = {}
  SHX1_2 = pairs
  SHX2_2 = currentEvent
  SHX2_2 = SHX2_2.players
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.active
    if SHX7_2 then
      SHX7_2 = table
      SHX7_2 = SHX7_2.insert
      SHX8_2 = SHX0_2
      SHX9_2 = SHX6_2
      SHX7_2(SHX8_2, SHX9_2)
    end
  end
  return SHX0_2
end
SHX17_1.getActiveEventPlayers = SHX18_1
SHX17_1 = CMG
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = GetPlayerServerId
  SHX1_2 = PlayerId
  SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX1_2()
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX1_2 = pairs
  SHX2_2 = currentEvent
  SHX2_2 = SHX2_2.players
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.source
    if SHX7_2 == SHX0_2 then
      return SHX6_2
    end
  end
end
SHX17_1.getEventLocalPlayer = SHX18_1
SHX17_1 = CMG
function SHX18_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = pairs
  SHX2_2 = currentEvent
  SHX2_2 = SHX2_2.players
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.source
    if SHX7_2 == SHX0_2 then
      return SHX6_2
    end
  end
end
SHX17_1.getEventPlayerFromSrc = SHX18_1
SHX17_1 = RegisterNetEvent
SHX18_1 = "46bdb82845"
function SHX19_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = currentEvent
  SHX2_2 = SHX2_2.players
  SHX2_2 = SHX2_2[SHX0_2]
  if SHX2_2 then
    SHX2_2 = currentEvent
    SHX2_2 = SHX2_2.players
    SHX2_2 = SHX2_2[SHX0_2]
    SHX2_2.active = SHX1_2
  end
end
SHX17_1(SHX18_1, SHX19_1)
SHX17_1 = false
SHX18_1 = CMG
function SHX19_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX17_1 = SHX0_2
end
SHX18_1.setEventsUsingNetworkResurrect = SHX19_1
SHX18_1 = CMG
function SHX19_1()
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
SHX18_1.isEventUsingNetworkResurrect = SHX19_1
SHX18_1 = CMG
function SHX19_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = true
  SHX2_2 = -1
  SHX3_2 = -1
  SHX4_2 = SHX0_2 + 1
  SHX5_2 = 255
  SHX6_2 = 0
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
    while true do
      SHX0_3 = SHX1_2
      if not SHX0_3 then
        break
      end
      SHX0_3 = SHX4_2
      if -1 ~= SHX0_3 then
        SHX0_3 = SHX4_2
        SHX0_3 = SHX0_3 - 1
        SHX4_2 = SHX0_3
      end
      SHX0_3 = SHX4_2
      if SHX0_3 > 0 then
        SHX0_3 = PlaySoundFrontend
        SHX1_3 = -1
        SHX2_3 = "3_2_1"
        SHX3_3 = "HUD_MINI_GAME_SOUNDSET"
        SHX4_3 = true
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
      end
      SHX0_3 = SHX4_2
      if 0 == SHX0_3 then
        SHX0_3 = PlaySoundFrontend
        SHX1_3 = -1
        SHX2_3 = "GO"
        SHX3_3 = "HUD_MINI_GAME_SOUNDSET"
        SHX4_3 = true
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
      end
      SHX0_3 = Citizen
      SHX0_3 = SHX0_3.Wait
      SHX1_3 = 1000
      SHX0_3(SHX1_3)
    end
  end
  SHX7_2(SHX8_2)
  SHX7_2 = Scaleform
  SHX8_2 = "COUNTDOWN"
  SHX7_2 = SHX7_2(SHX8_2)
  SHX8_2 = Citizen
  SHX8_2 = SHX8_2.CreateThread
  function SHX9_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
    while true do
      SHX0_3 = SHX1_2
      if not SHX0_3 then
        break
      end
      SHX0_3 = SHX4_2
      if -1 ~= SHX0_3 then
        SHX0_3 = SHX4_2
        if 0 == SHX0_3 then
          SHX0_3 = SHX7_2.RunFunction
          SHX1_3 = "SET_MESSAGE"
          SHX2_3 = {}
          SHX3_3 = "CNTDWN_GO"
          SHX4_3 = 0
          SHX5_3 = 255
          SHX6_3 = 0
          SHX7_3 = true
          SHX8_3 = false
          SHX2_3[1] = SHX3_3
          SHX2_3[2] = SHX4_3
          SHX2_3[3] = SHX5_3
          SHX2_3[4] = SHX6_3
          SHX2_3[5] = SHX7_3
          SHX2_3[6] = SHX8_3
          SHX0_3(SHX1_3, SHX2_3)
        else
          SHX0_3 = SHX4_2
          if SHX0_3 > 0 then
            SHX0_3 = SHX4_2
            SHX1_3 = SHX0_2
            SHX1_3 = SHX1_3 / 2
            if SHX0_3 >= SHX1_3 then
              SHX0_3 = math
              SHX0_3 = SHX0_3.floor
              SHX1_3 = SHX2_2
              SHX2_3 = SHX3_2
              SHX1_3 = SHX1_3 / SHX2_3
              SHX2_3 = 1
              SHX1_3 = SHX2_3 - SHX1_3
              SHX1_3 = 510 * SHX1_3
              SHX0_3 = SHX0_3(SHX1_3)
              SHX6_2 = SHX0_3
            else
              SHX0_3 = SHX4_2
              SHX1_3 = SHX0_2
              SHX1_3 = SHX1_3 / 2
              if SHX0_3 < SHX1_3 then
                SHX0_3 = math
                SHX0_3 = SHX0_3.floor
                SHX1_3 = SHX2_2
                SHX2_3 = SHX3_2
                SHX1_3 = SHX1_3 / SHX2_3
                SHX1_3 = 510 * SHX1_3
                SHX0_3 = SHX0_3(SHX1_3)
                SHX5_2 = SHX0_3
              end
            end
            SHX0_3 = SHX7_2.RunFunction
            SHX1_3 = "SET_MESSAGE"
            SHX2_3 = {}
            SHX3_3 = tostring
            SHX4_3 = SHX4_2
            SHX3_3 = SHX3_3(SHX4_3)
            SHX4_3 = SHX5_2
            SHX5_3 = SHX6_2
            SHX6_3 = 0
            SHX7_3 = true
            SHX8_3 = false
            SHX2_3[1] = SHX3_3
            SHX2_3[2] = SHX4_3
            SHX2_3[3] = SHX5_3
            SHX2_3[4] = SHX6_3
            SHX2_3[5] = SHX7_3
            SHX2_3[6] = SHX8_3
            SHX0_3(SHX1_3, SHX2_3)
          end
        end
        SHX0_3 = SHX7_2.Render2D
        SHX0_3()
      end
      SHX0_3 = Wait
      SHX1_3 = 0
      SHX0_3(SHX1_3)
    end
  end
  SHX8_2(SHX9_2)
  while -1 ~= SHX4_2 do
    SHX8_2 = Citizen
    SHX8_2 = SHX8_2.Wait
    SHX9_2 = 1.0
    SHX8_2(SHX9_2)
  end
  SHX1_2 = false
end
SHX18_1.showCountdownTimer = SHX19_1
SHX18_1 = CMG
function SHX19_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  if SHX0_2 then
    SHX1_2 = table
    SHX1_2 = SHX1_2.count
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if 0 ~= SHX1_2 then
      SHX1_2 = currentEvent
      SHX1_2.bounds = SHX0_2
    end
  end
end
SHX18_1.setMinigameBounds = SHX19_1
SHX18_1 = CMG
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = currentEvent
  SHX0_2.bounds = nil
end
SHX18_1.clearMinigameBounds = SHX19_1
function SHX18_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX1_2 = currentEvent
  SHX1_2 = SHX1_2.bounds
  if SHX1_2 then
    SHX1_2 = ipairs
    SHX2_2 = currentEvent
    SHX2_2 = SHX2_2.bounds
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
    for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
      SHX7_2 = table
      SHX7_2 = SHX7_2.count
      SHX8_2 = SHX6_2
      SHX7_2 = SHX7_2(SHX8_2)
      if 2 == SHX7_2 then
        SHX7_2 = IsEntityInArea
        SHX8_2 = SHX0_2
        SHX9_2 = SHX6_2[1]
        SHX9_2 = SHX9_2.x
        SHX10_2 = SHX6_2[1]
        SHX10_2 = SHX10_2.y
        SHX11_2 = SHX6_2[1]
        SHX11_2 = SHX11_2.z
        SHX12_2 = SHX6_2[2]
        SHX12_2 = SHX12_2.x
        SHX13_2 = SHX6_2[2]
        SHX13_2 = SHX13_2.y
        SHX14_2 = SHX6_2[2]
        SHX14_2 = SHX14_2.z
        SHX15_2 = false
        SHX16_2 = true
        SHX17_2 = 0
        SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
        if not SHX7_2 then
          SHX7_2 = true
          return SHX7_2
        end
      end
    end
  end
  SHX1_2 = false
  return SHX1_2
end
SHX19_1 = Citizen
SHX19_1 = SHX19_1.CreateThread
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  while true do
    SHX0_2 = currentEvent
    SHX0_2 = SHX0_2.bounds
    if SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.getEventLocalPlayer
      SHX0_2 = SHX0_2()
      if SHX0_2 then
        SHX0_2 = CMG
        SHX0_2 = SHX0_2.getEventLocalPlayer
        SHX0_2 = SHX0_2()
        SHX0_2 = SHX0_2.active
        if SHX0_2 then
          SHX0_2 = CMG
          SHX0_2 = SHX0_2.isSpectatingEvent
          SHX0_2 = SHX0_2()
          if not SHX0_2 then
            SHX0_2 = GetEntityHealth
            SHX1_2 = PlayerPedId
            SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX1_2()
            SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
            if SHX0_2 > 0 then
              SHX0_2 = SHX18_1
              SHX1_2 = PlayerPedId
              SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX1_2()
              SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
              if SHX0_2 then
                SHX0_2 = GetGameTimer
                SHX0_2 = SHX0_2()
                SHX1_2 = 5
                SHX2_2 = AnimpostfxPlay
                SHX3_2 = "MP_race_crash"
                SHX4_2 = 5000
                SHX5_2 = false
                SHX2_2(SHX3_2, SHX4_2, SHX5_2)
                SHX2_2 = GetSoundId
                SHX2_2 = SHX2_2()
                SHX3_2 = PlaySound
                SHX4_2 = SHX2_2
                SHX5_2 = "OOB_Timer_Dynamic"
                SHX6_2 = "GTAO_FM_Events_Soundset"
                SHX7_2 = false
                SHX8_2 = false
                SHX9_2 = false
                SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
                SHX3_2 = ReleaseSoundId
                SHX4_2 = SHX2_2
                SHX3_2(SHX4_2)
                while true do
                  SHX3_2 = SHX18_1
                  SHX4_2 = PlayerPedId
                  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX4_2()
                  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
                  if not SHX3_2 then
                    break
                  end
                  SHX3_2 = GetGameTimer
                  SHX3_2 = SHX3_2()
                  SHX3_2 = SHX3_2 - SHX0_2
                  SHX4_2 = 5000
                  if not (SHX3_2 < SHX4_2) then
                    break
                  end
                  SHX3_2 = CMG
                  SHX3_2 = SHX3_2.announceMpBigMsg
                  SHX4_2 = "~r~Out Of Bounds~w~"
                  SHX5_2 = "Return to the minigame within "
                  SHX6_2 = SHX1_2
                  SHX7_2 = " seconds or you will explode."
                  SHX5_2 = SHX5_2 .. SHX6_2 .. SHX7_2
                  SHX6_2 = 1000
                  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
                  SHX1_2 = SHX1_2 - 1
                end
                SHX3_2 = AnimpostfxStopAll
                SHX3_2()
                SHX3_2 = StopSound
                SHX4_2 = SHX2_2
                SHX3_2(SHX4_2)
                SHX3_2 = SHX18_1
                SHX4_2 = PlayerPedId
                SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX4_2()
                SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
                if SHX3_2 then
                  SHX3_2 = GetEntityCoords
                  SHX4_2 = PlayerPedId
                  SHX4_2 = SHX4_2()
                  SHX5_2 = true
                  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
                  SHX4_2 = AddExplosion
                  SHX5_2 = SHX3_2.x
                  SHX6_2 = SHX3_2.y
                  SHX7_2 = SHX3_2.z
                  SHX8_2 = 1
                  SHX9_2 = 1.0
                  SHX10_2 = true
                  SHX11_2 = false
                  SHX12_2 = 1.0
                  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
                  SHX4_2 = SetEntityHealth
                  SHX5_2 = PlayerPedId
                  SHX5_2 = SHX5_2()
                  SHX6_2 = 0
                  SHX4_2(SHX5_2, SHX6_2)
                  SHX4_2 = Wait
                  SHX5_2 = 10000
                  SHX4_2(SHX5_2)
                else
                  SHX3_2 = Wait
                  SHX4_2 = 200
                  SHX3_2(SHX4_2)
                  SHX3_2 = PlaySound
                  SHX4_2 = -1
                  SHX5_2 = "OOB_Cancel"
                  SHX6_2 = "GTAO_FM_Events_Soundset"
                  SHX7_2 = false
                  SHX8_2 = 0
                  SHX9_2 = false
                  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
                end
              end
            end
          end
        end
      end
    end
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 1000
    SHX0_2(SHX1_2)
  end
end
SHX19_1(SHX20_1)
function SHX19_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadPtfx
  SHX2_2 = "proj_indep_firework"
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadPtfx
  SHX2_2 = "proj_indep_firework_v2"
  SHX1_2(SHX2_2)
  SHX1_2 = UseParticleFxAsset
  SHX2_2 = "proj_indep_firework"
  SHX1_2(SHX2_2)
  SHX1_2 = UseParticleFxAsset
  SHX2_2 = "proj_indep_firework_v2"
  SHX1_2(SHX2_2)
  SHX1_2 = CreateThread
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3
    SHX0_3 = 1
    SHX1_3 = 5
    SHX2_3 = 1
    for SHX3_3 = SHX0_3, SHX1_3, SHX2_3 do
      SHX4_3 = SHX3_3 % 2
      if 0 == SHX4_3 then
        SHX4_3 = UseParticleFxAsset
        SHX5_3 = "proj_indep_firework_v2"
        SHX4_3(SHX5_3)
        SHX4_3 = StartParticleFxNonLoopedAtCoord
        SHX5_3 = "scr_firework_indep_repeat_burst_rwb"
        SHX6_3 = SHX0_2.x
        SHX7_3 = SHX0_2.y
        SHX8_3 = SHX0_2.z
        SHX9_3 = 0.0
        SHX10_3 = 0.0
        SHX11_3 = 0.0
        SHX12_3 = 1.0
        SHX13_3 = false
        SHX14_3 = false
        SHX15_3 = false
        SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3)
      else
        SHX4_3 = UseParticleFxAsset
        SHX5_3 = "proj_indep_firework"
        SHX4_3(SHX5_3)
        SHX4_3 = StartParticleFxNonLoopedAtCoord
        SHX5_3 = "scr_indep_firework_air_burst"
        SHX6_3 = SHX0_2.x
        SHX7_3 = SHX0_2.y
        SHX8_3 = SHX0_2.z
        SHX9_3 = 0.0
        SHX10_3 = 0.0
        SHX11_3 = 0.0
        SHX12_3 = 1.0
        SHX13_3 = false
        SHX14_3 = false
        SHX15_3 = false
        SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3)
      end
      SHX4_3 = Wait
      SHX5_3 = 1000
      SHX4_3(SHX5_3)
    end
  end
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadPtfx
  SHX2_2 = "scr_indep_fireworks"
  SHX1_2(SHX2_2)
  SHX1_2 = UseParticleFxAsset
  SHX2_2 = "scr_indep_fireworks"
  SHX1_2(SHX2_2)
  SHX1_2 = CreateThread
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3
    SHX0_3 = 1
    SHX1_3 = 5
    SHX2_3 = 1
    for SHX3_3 = SHX0_3, SHX1_3, SHX2_3 do
      SHX4_3 = UseParticleFxAsset
      SHX5_3 = "scr_indep_fireworks"
      SHX4_3(SHX5_3)
      SHX4_3 = StartParticleFxNonLoopedAtCoord
      SHX5_3 = "scr_indep_firework_starburst"
      SHX6_3 = SHX0_2.x
      SHX7_3 = SHX0_2.y
      SHX8_3 = SHX0_2.z
      SHX9_3 = 0.0
      SHX10_3 = 0.0
      SHX11_3 = 0.0
      SHX12_3 = 1.0
      SHX13_3 = false
      SHX14_3 = false
      SHX15_3 = false
      SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3)
      SHX4_3 = Wait
      SHX5_3 = 1000
      SHX4_3(SHX5_3)
    end
  end
  SHX1_2(SHX2_2)
end
SHX20_1 = {}
SHX21_1 = vector4
SHX22_1 = 683.82855224609
SHX23_1 = 570.56701660156
SHX24_1 = 130.44616699219
SHX25_1 = 155.0
SHX21_1 = SHX21_1(SHX22_1, SHX23_1, SHX24_1, SHX25_1)
SHX22_1 = vector4
SHX23_1 = 682.49670410156
SHX24_1 = 571.10766601562
SHX25_1 = 130.44616699219
SHX26_1 = 155.0
SHX22_1 = SHX22_1(SHX23_1, SHX24_1, SHX25_1, SHX26_1)
SHX23_1 = vector4
SHX24_1 = 685.51647949219
SHX25_1 = 570.01318359375
SHX26_1 = 130.44616699219
SHX27_1 = 155.0
SHX23_1 = SHX23_1(SHX24_1, SHX25_1, SHX26_1, SHX27_1)
SHX24_1 = vector4
SHX25_1 = 687.23077392578
SHX26_1 = 569.41979980469
SHX27_1 = 130.44616699219
SHX28_1 = 155.0
SHX24_1 = SHX24_1(SHX25_1, SHX26_1, SHX27_1, SHX28_1)
SHX25_1 = vector4
SHX26_1 = 681.44177246094
SHX27_1 = 571.45056152344
SHX28_1 = 130.44616699219
SHX29_1 = 155.0
SHX25_1 = SHX25_1(SHX26_1, SHX27_1, SHX28_1, SHX29_1)
SHX26_1 = vector4
SHX27_1 = 680.21539306641
SHX28_1 = 573.54724121094
SHX29_1 = 130.44616699219
SHX30_1 = 155.0
SHX26_1 = SHX26_1(SHX27_1, SHX28_1, SHX29_1, SHX30_1)
SHX27_1 = vector4
SHX28_1 = 681.73187255859
SHX29_1 = 573.17803955078
SHX30_1 = 130.44616699219
SHX31_1 = 155.0
SHX27_1 = SHX27_1(SHX28_1, SHX29_1, SHX30_1, SHX31_1)
SHX28_1 = vector4
SHX29_1 = 683.34063720703
SHX30_1 = 572.57141113281
SHX31_1 = 130.44616699219
SHX32_1 = 155.0
SHX28_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1, SHX32_1)
SHX29_1 = vector4
SHX30_1 = 685.09448242188
SHX31_1 = 571.8857421875
SHX32_1 = 130.44616699219
SHX33_1 = 155.0
SHX29_1 = SHX29_1(SHX30_1, SHX31_1, SHX32_1, SHX33_1)
SHX30_1 = vector4
SHX31_1 = 687.23077392578
SHX32_1 = 571.39782714844
SHX33_1 = 130.44616699219
SHX34_1 = 155.0
SHX30_1 = SHX30_1(SHX31_1, SHX32_1, SHX33_1, SHX34_1)
SHX31_1 = vector4
SHX32_1 = 689.23516845703
SHX33_1 = 570.89672851562
SHX34_1 = 130.44616699219
SHX35_1 = 155.0
SHX31_1 = SHX31_1(SHX32_1, SHX33_1, SHX34_1, SHX35_1)
SHX32_1 = vector4
SHX33_1 = 690.96264648438
SHX34_1 = 571.43737792969
SHX35_1 = 130.44616699219
SHX36_1 = 155.0
SHX32_1 = SHX32_1(SHX33_1, SHX34_1, SHX35_1, SHX36_1)
SHX33_1 = vector4
SHX34_1 = 689.63079833984
SHX35_1 = 572.94067382812
SHX36_1 = 130.44616699219
SHX37_1 = 155.0
SHX33_1 = SHX33_1(SHX34_1, SHX35_1, SHX36_1, SHX37_1)
SHX34_1 = vector4
SHX35_1 = 687.74505615234
SHX36_1 = 573.69232177734
SHX37_1 = 130.44616699219
SHX38_1 = 155.0
SHX34_1 = SHX34_1(SHX35_1, SHX36_1, SHX37_1, SHX38_1)
SHX35_1 = vector4
SHX36_1 = 686.10986328125
SHX37_1 = 574.33843994141
SHX38_1 = 130.44616699219
SHX39_1 = 155.0
SHX35_1 = SHX35_1(SHX36_1, SHX37_1, SHX38_1, SHX39_1)
SHX36_1 = vector4
SHX37_1 = 682.44396972656
SHX38_1 = 575.78900146484
SHX39_1 = 130.44616699219
SHX40_1 = 155.0
SHX36_1 = SHX36_1(SHX37_1, SHX38_1, SHX39_1, SHX40_1)
SHX37_1 = vector4
SHX38_1 = 680.14947509766
SHX39_1 = 572.00439453125
SHX40_1 = 130.44616699219
SHX41_1 = 155.0
SHX37_1 = SHX37_1(SHX38_1, SHX39_1, SHX40_1, SHX41_1)
SHX38_1 = vector4
SHX39_1 = 678.93627929688
SHX40_1 = 572.57141113281
SHX41_1 = 130.44616699219
SHX42_1 = 155.0
SHX38_1 = SHX38_1(SHX39_1, SHX40_1, SHX41_1, SHX42_1)
SHX39_1 = vector4
SHX40_1 = 679.23956298828
SHX41_1 = 573.876953125
SHX42_1 = 130.44616699219
SHX43_1 = 155.0
SHX39_1 = SHX39_1(SHX40_1, SHX41_1, SHX42_1, SHX43_1)
SHX40_1 = vector4
SHX41_1 = 686.22857666016
SHX42_1 = 571.75384521484
SHX43_1 = 130.44616699219
SHX44_1 = 155.0
SHX40_1 = SHX40_1(SHX41_1, SHX42_1, SHX43_1, SHX44_1)
SHX41_1 = vector4
SHX42_1 = 688.29888916016
SHX43_1 = 571.06811523438
SHX44_1 = 130.44616699219
SHX45_1 = 155.0
SHX41_1 = SHX41_1(SHX42_1, SHX43_1, SHX44_1, SHX45_1)
SHX42_1 = vector4
SHX43_1 = 688.57580566406
SHX44_1 = 568.95825195312
SHX45_1 = 130.44616699219
SHX46_1 = 155.0
SHX42_1 = SHX42_1(SHX43_1, SHX44_1, SHX45_1, SHX46_1)
SHX43_1 = vector4
SHX44_1 = 690.54064941406
SHX45_1 = 570.19781494141
SHX46_1 = 130.44616699219
SHX47_1 = 155.0
SHX43_1 = SHX43_1(SHX44_1, SHX45_1, SHX46_1, SHX47_1)
SHX44_1 = vector4
SHX45_1 = 689.61755371094
SHX46_1 = 571.80657958984
SHX47_1 = 130.44616699219
SHX48_1 = 155.0
SHX44_1 = SHX44_1(SHX45_1, SHX46_1, SHX47_1, SHX48_1)
SHX45_1 = vector4
SHX46_1 = 688.41760253906
SHX47_1 = 572.34722900391
SHX48_1 = 130.44616699219
SHX49_1 = 155.0
SHX45_1 = SHX45_1(SHX46_1, SHX47_1, SHX48_1, SHX49_1)
SHX46_1 = vector4
SHX47_1 = 687.38903808594
SHX48_1 = 572.71649169922
SHX49_1 = 130.44616699219
SHX50_1 = 155.0
SHX46_1 = SHX46_1(SHX47_1, SHX48_1, SHX49_1, SHX50_1)
SHX47_1 = vector4
SHX48_1 = 686.20220947266
SHX49_1 = 573.05932617188
SHX50_1 = 130.44616699219
SHX51_1 = 155.0
SHX47_1 = SHX47_1(SHX48_1, SHX49_1, SHX50_1, SHX51_1)
SHX48_1 = vector4
SHX49_1 = 684.96264648438
SHX50_1 = 573.37585449219
SHX51_1 = 130.44616699219
SHX52_1 = 155.0
SHX48_1 = SHX48_1(SHX49_1, SHX50_1, SHX51_1, SHX52_1)
SHX49_1 = vector4
SHX50_1 = 683.96044921875
SHX51_1 = 573.86376953125
SHX52_1 = 130.44616699219
SHX53_1 = 155.0
SHX49_1 = SHX49_1(SHX50_1, SHX51_1, SHX52_1, SHX53_1)
SHX50_1 = vector4
SHX51_1 = 682.86596679688
SHX52_1 = 574.23297119141
SHX53_1 = 130.44616699219
SHX54_1 = 155.0
SHX50_1 = SHX50_1(SHX51_1, SHX52_1, SHX53_1, SHX54_1)
SHX51_1 = vector4
SHX52_1 = 681.876953125
SHX53_1 = 574.66815185547
SHX54_1 = 130.44616699219
SHX55_1 = 155.0
SHX51_1 = SHX51_1(SHX52_1, SHX53_1, SHX54_1, SHX55_1)
SHX52_1 = vector4
SHX53_1 = 680.82196044922
SHX54_1 = 574.98461914062
SHX55_1 = 130.44616699219
SHX56_1 = 155.0
SHX52_1 = SHX52_1(SHX53_1, SHX54_1, SHX55_1, SHX56_1)
SHX53_1 = vector4
SHX54_1 = 689.48571777344
SHX55_1 = 569.67034912109
SHX56_1 = 130.44616699219
SHX57_1 = 155.0
SHX53_1 = SHX53_1(SHX54_1, SHX55_1, SHX56_1, SHX57_1)
SHX54_1 = vector4
SHX55_1 = 688.43078613281
SHX56_1 = 570.13189697266
SHX57_1 = 130.44616699219
SHX58_1 = 155.0
SHX54_1 = SHX54_1(SHX55_1, SHX56_1, SHX57_1, SHX58_1)
SHX55_1 = vector4
SHX56_1 = 687.01977539062
SHX57_1 = 570.65936279297
SHX58_1 = 130.44616699219
SHX59_1 = 155.0
SHX55_1 = SHX55_1(SHX56_1, SHX57_1, SHX58_1, SHX59_1)
SHX56_1 = vector4
SHX57_1 = 685.75384521484
SHX58_1 = 571.00219726562
SHX59_1 = 130.44616699219
SHX60_1 = 155.0
SHX56_1 = SHX56_1(SHX57_1, SHX58_1, SHX59_1, SHX60_1)
SHX57_1 = vector4
SHX58_1 = 684.03955078125
SHX59_1 = 571.62200927734
SHX60_1 = 130.44616699219
SHX61_1 = 155.0
SHX57_1 = SHX57_1(SHX58_1, SHX59_1, SHX60_1, SHX61_1)
SHX58_1 = vector4
SHX59_1 = 682.73406982422
SHX60_1 = 571.9384765625
SHX61_1 = 130.44616699219
SHX62_1 = 155.0
SHX58_1 = SHX58_1(SHX59_1, SHX60_1, SHX61_1, SHX62_1)
SHX59_1 = vector4
SHX60_1 = 681.65277099609
SHX61_1 = 572.47912597656
SHX62_1 = 130.44616699219
SHX63_1 = 155.0
SHX59_1 = SHX59_1(SHX60_1, SHX61_1, SHX62_1, SHX63_1)
SHX60_1 = vector4
SHX61_1 = 680.54504394531
SHX62_1 = 572.72967529297
SHX63_1 = 130.44616699219
SHX64_1 = 155.0
SHX60_1 = SHX60_1(SHX61_1, SHX62_1, SHX63_1, SHX64_1)
SHX61_1 = vector4
SHX62_1 = 679.47692871094
SHX63_1 = 573.00659179688
SHX64_1 = 130.44616699219
SHX65_1 = 155.0
SHX61_1 = SHX61_1(SHX62_1, SHX63_1, SHX64_1, SHX65_1)
SHX62_1 = vector4
SHX63_1 = 679.63519287109
SHX64_1 = 575.47253417969
SHX65_1 = 130.44616699219
SHX66_1 = 155.0
SHX62_1 = SHX62_1(SHX63_1, SHX64_1, SHX65_1, SHX66_1)
SHX63_1 = vector4
SHX64_1 = 689.88134765625
SHX65_1 = 568.74725341797
SHX66_1 = 130.44616699219
SHX67_1 = 155.0
SHX63_1 = SHX63_1(SHX64_1, SHX65_1, SHX66_1, SHX67_1)
SHX64_1 = vector4
SHX65_1 = 690.87036132812
SHX66_1 = 572.50549316406
SHX67_1 = 130.44616699219
SHX68_1 = 155.0
SHX64_1 = SHX64_1(SHX65_1, SHX66_1, SHX67_1, SHX68_1)
SHX65_1 = vector4
SHX66_1 = 688.70770263672
SHX67_1 = 573.27032470703
SHX68_1 = 130.44616699219
SHX69_1 = 155.0
SHX65_1 = SHX65_1(SHX66_1, SHX67_1, SHX68_1, SHX69_1)
SHX66_1 = vector4
SHX67_1 = 684.97583007812
SHX68_1 = 574.60217285156
SHX69_1 = 130.44616699219
SHX70_1 = 155.0
SHX66_1 = SHX66_1(SHX67_1, SHX68_1, SHX69_1, SHX70_1)
SHX67_1 = vector4
SHX68_1 = 683.73626708984
SHX69_1 = 575.05053710938
SHX70_1 = 130.44616699219
SHX71_1 = 155.0
SHX67_1 = SHX67_1(SHX68_1, SHX69_1, SHX70_1, SHX71_1)
SHX68_1 = vector4
SHX69_1 = 681.27032470703
SHX70_1 = 576.06591796875
SHX71_1 = 130.44616699219
SHX72_1 = 155.0
SHX68_1 = SHX68_1(SHX69_1, SHX70_1, SHX71_1, SHX72_1)
SHX69_1 = vector4
SHX70_1 = 680.25494384766
SHX71_1 = 576.36926269531
SHX72_1 = 130.44616699219
SHX73_1 = 155.0
SHX69_1 = SHX69_1(SHX70_1, SHX71_1, SHX72_1, SHX73_1)
SHX70_1 = vector4
SHX71_1 = 691.54284667969
SHX72_1 = 573.53405761719
SHX73_1 = 130.44616699219
SHX74_1 = 155.0
SHX70_1 = SHX70_1(SHX71_1, SHX72_1, SHX73_1, SHX74_1)
SHX20_1[1] = SHX21_1
SHX20_1[2] = SHX22_1
SHX20_1[3] = SHX23_1
SHX20_1[4] = SHX24_1
SHX20_1[5] = SHX25_1
SHX20_1[6] = SHX26_1
SHX20_1[7] = SHX27_1
SHX20_1[8] = SHX28_1
SHX20_1[9] = SHX29_1
SHX20_1[10] = SHX30_1
SHX20_1[11] = SHX31_1
SHX20_1[12] = SHX32_1
SHX20_1[13] = SHX33_1
SHX20_1[14] = SHX34_1
SHX20_1[15] = SHX35_1
SHX20_1[16] = SHX36_1
SHX20_1[17] = SHX37_1
SHX20_1[18] = SHX38_1
SHX20_1[19] = SHX39_1
SHX20_1[20] = SHX40_1
SHX20_1[21] = SHX41_1
SHX20_1[22] = SHX42_1
SHX20_1[23] = SHX43_1
SHX20_1[24] = SHX44_1
SHX20_1[25] = SHX45_1
SHX20_1[26] = SHX46_1
SHX20_1[27] = SHX47_1
SHX20_1[28] = SHX48_1
SHX20_1[29] = SHX49_1
SHX20_1[30] = SHX50_1
SHX20_1[31] = SHX51_1
SHX20_1[32] = SHX52_1
SHX20_1[33] = SHX53_1
SHX20_1[34] = SHX54_1
SHX20_1[35] = SHX55_1
SHX20_1[36] = SHX56_1
SHX20_1[37] = SHX57_1
SHX20_1[38] = SHX58_1
SHX20_1[39] = SHX59_1
SHX20_1[40] = SHX60_1
SHX20_1[41] = SHX61_1
SHX20_1[42] = SHX62_1
SHX20_1[43] = SHX63_1
SHX20_1[44] = SHX64_1
SHX20_1[45] = SHX65_1
SHX20_1[46] = SHX66_1
SHX20_1[47] = SHX67_1
SHX20_1[48] = SHX68_1
SHX20_1[49] = SHX69_1
SHX20_1[50] = SHX70_1
SHX21_1 = vector4
SHX22_1 = 690.40881347656
SHX23_1 = 573.9560546875
SHX24_1 = 130.44616699219
SHX25_1 = 155.0
SHX21_1 = SHX21_1(SHX22_1, SHX23_1, SHX24_1, SHX25_1)
SHX22_1 = vector4
SHX23_1 = 689.52526855469
SHX24_1 = 574.29888916016
SHX25_1 = 130.44616699219
SHX26_1 = 155.0
SHX22_1 = SHX22_1(SHX23_1, SHX24_1, SHX25_1, SHX26_1)
SHX23_1 = vector4
SHX24_1 = 688.58898925781
SHX25_1 = 574.62860107422
SHX26_1 = 130.44616699219
SHX27_1 = 155.0
SHX23_1 = SHX23_1(SHX24_1, SHX25_1, SHX26_1, SHX27_1)
SHX24_1 = vector4
SHX25_1 = 687.46813964844
SHX26_1 = 575.07690429688
SHX27_1 = 130.44616699219
SHX28_1 = 155.0
SHX24_1 = SHX24_1(SHX25_1, SHX26_1, SHX27_1, SHX28_1)
SHX25_1 = vector4
SHX26_1 = 686.42639160156
SHX27_1 = 575.53845214844
SHX28_1 = 130.44616699219
SHX29_1 = 155.0
SHX25_1 = SHX25_1(SHX26_1, SHX27_1, SHX28_1, SHX29_1)
SHX26_1 = vector4
SHX27_1 = 685.31866455078
SHX28_1 = 575.80218505859
SHX29_1 = 130.44616699219
SHX30_1 = 155.0
SHX26_1 = SHX26_1(SHX27_1, SHX28_1, SHX29_1, SHX30_1)
SHX27_1 = vector4
SHX28_1 = 684.30328369141
SHX29_1 = 576.21099853516
SHX30_1 = 130.44616699219
SHX31_1 = 155.0
SHX27_1 = SHX27_1(SHX28_1, SHX29_1, SHX30_1, SHX31_1)
SHX28_1 = vector4
SHX29_1 = 683.31427001953
SHX30_1 = 576.67254638672
SHX31_1 = 130.44616699219
SHX32_1 = 155.0
SHX28_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1, SHX32_1)
SHX29_1 = vector4
SHX30_1 = 682.28570556641
SHX31_1 = 577.12091064453
SHX32_1 = 130.44616699219
SHX33_1 = 155.0
SHX29_1 = SHX29_1(SHX30_1, SHX31_1, SHX32_1, SHX33_1)
SHX30_1 = vector4
SHX31_1 = 681.34942626953
SHX32_1 = 577.45056152344
SHX33_1 = 130.44616699219
SHX34_1 = 155.0
SHX30_1 = SHX30_1(SHX31_1, SHX32_1, SHX33_1, SHX34_1)
SHX31_1 = vector4
SHX32_1 = 680.28131103516
SHX33_1 = 577.79339599609
SHX34_1 = 130.44616699219
SHX35_1 = 155.0
SHX31_1 = SHX31_1(SHX32_1, SHX33_1, SHX34_1, SHX35_1)
SHX32_1 = vector4
SHX33_1 = 686.38684082031
SHX34_1 = 569.78900146484
SHX35_1 = 130.44616699219
SHX36_1 = 155.0
SHX32_1 = SHX32_1(SHX33_1, SHX34_1, SHX35_1, SHX36_1)
SHX33_1 = vector4
SHX34_1 = 684.72528076172
SHX35_1 = 570.42199707031
SHX36_1 = 130.44616699219
SHX37_1 = 155.0
SHX33_1 = SHX33_1(SHX34_1, SHX35_1, SHX36_1, SHX37_1)
SHX34_1 = vector4
SHX35_1 = 686.99340820312
SHX36_1 = 574.0615234375
SHX37_1 = 130.44616699219
SHX38_1 = 155.0
SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1 = SHX34_1(SHX35_1, SHX36_1, SHX37_1, SHX38_1)
SHX20_1[51] = SHX21_1
SHX20_1[52] = SHX22_1
SHX20_1[53] = SHX23_1
SHX20_1[54] = SHX24_1
SHX20_1[55] = SHX25_1
SHX20_1[56] = SHX26_1
SHX20_1[57] = SHX27_1
SHX20_1[58] = SHX28_1
SHX20_1[59] = SHX29_1
SHX20_1[60] = SHX30_1
SHX20_1[61] = SHX31_1
SHX20_1[62] = SHX32_1
SHX20_1[63] = SHX33_1
SHX20_1[64] = SHX34_1
SHX20_1[65] = SHX35_1
SHX20_1[66] = SHX36_1
SHX20_1[67] = SHX37_1
SHX20_1[68] = SHX38_1
SHX20_1[69] = SHX39_1
SHX20_1[70] = SHX40_1
SHX20_1[71] = SHX41_1
SHX20_1[72] = SHX42_1
SHX20_1[73] = SHX43_1
SHX20_1[74] = SHX44_1
SHX20_1[75] = SHX45_1
SHX20_1[76] = SHX46_1
SHX20_1[77] = SHX47_1
SHX20_1[78] = SHX48_1
SHX20_1[79] = SHX49_1
SHX20_1[80] = SHX50_1
SHX20_1[81] = SHX51_1
SHX20_1[82] = SHX52_1
SHX20_1[83] = SHX53_1
SHX20_1[84] = SHX54_1
SHX20_1[85] = SHX55_1
SHX20_1[86] = SHX56_1
SHX20_1[87] = SHX57_1
SHX20_1[88] = SHX58_1
SHX20_1[89] = SHX59_1
SHX20_1[90] = SHX60_1
SHX20_1[91] = SHX61_1
SHX20_1[92] = SHX62_1
SHX20_1[93] = SHX63_1
SHX20_1[94] = SHX64_1
SHX20_1[95] = SHX65_1
SHX20_1[96] = SHX66_1
SHX20_1[97] = SHX67_1
SHX20_1[98] = SHX68_1
SHX20_1[99] = SHX69_1
SHX20_1[100] = SHX70_1
SHX20_1[101] = SHX71_1
SHX20_1[102] = SHX72_1
SHX20_1[103] = SHX73_1
SHX20_1[104] = SHX74_1
SHX20_1[105] = SHX75_1
SHX21_1 = {}
SHX22_1 = vector4
SHX23_1 = 696.13189697266
SHX24_1 = 579.70550537109
SHX25_1 = 130.44616699219
SHX26_1 = 155.0
SHX22_1 = SHX22_1(SHX23_1, SHX24_1, SHX25_1, SHX26_1)
SHX23_1 = vector4
SHX24_1 = 694.94506835938
SHX25_1 = 580.02197265625
SHX26_1 = 130.44616699219
SHX27_1 = 155.0
SHX23_1 = SHX23_1(SHX24_1, SHX25_1, SHX26_1, SHX27_1)
SHX24_1 = vector4
SHX25_1 = 693.85052490234
SHX26_1 = 580.41760253906
SHX27_1 = 130.44616699219
SHX28_1 = 155.0
SHX24_1 = SHX24_1(SHX25_1, SHX26_1, SHX27_1, SHX28_1)
SHX25_1 = vector4
SHX26_1 = 693.42858886719
SHX27_1 = 579.25714111328
SHX28_1 = 130.44616699219
SHX29_1 = 155.0
SHX25_1 = SHX25_1(SHX26_1, SHX27_1, SHX28_1, SHX29_1)
SHX26_1 = vector4
SHX27_1 = 694.62860107422
SHX28_1 = 578.78240966797
SHX29_1 = 130.44616699219
SHX30_1 = 155.0
SHX26_1 = SHX26_1(SHX27_1, SHX28_1, SHX29_1, SHX30_1)
SHX27_1 = vector4
SHX28_1 = 695.98681640625
SHX29_1 = 578.22857666016
SHX30_1 = 130.44616699219
SHX31_1 = 155.0
SHX27_1 = SHX27_1(SHX28_1, SHX29_1, SHX30_1, SHX31_1)
SHX28_1 = vector4
SHX29_1 = 696.27691650391
SHX30_1 = 577.21319580078
SHX31_1 = 130.44616699219
SHX32_1 = 155.0
SHX28_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1, SHX32_1)
SHX29_1 = vector4
SHX30_1 = 694.90551757812
SHX31_1 = 577.74066162109
SHX32_1 = 130.44616699219
SHX33_1 = 155.0
SHX29_1 = SHX29_1(SHX30_1, SHX31_1, SHX32_1, SHX33_1)
SHX30_1 = vector4
SHX31_1 = 696.47473144531
SHX32_1 = 577.12091064453
SHX33_1 = 130.44616699219
SHX34_1 = 155.0
SHX30_1 = SHX30_1(SHX31_1, SHX32_1, SHX33_1, SHX34_1)
SHX31_1 = vector4
SHX32_1 = 692.51867675781
SHX33_1 = 578.22857666016
SHX34_1 = 130.44616699219
SHX35_1 = 155.0
SHX31_1 = SHX31_1(SHX32_1, SHX33_1, SHX34_1, SHX35_1)
SHX32_1 = vector4
SHX33_1 = 691.38464355469
SHX34_1 = 578.59777832031
SHX35_1 = 130.44616699219
SHX36_1 = 155.0
SHX32_1 = SHX32_1(SHX33_1, SHX34_1, SHX35_1, SHX36_1)
SHX33_1 = vector4
SHX34_1 = 692.38684082031
SHX35_1 = 579.86376953125
SHX36_1 = 130.44616699219
SHX37_1 = 155.0
SHX33_1 = SHX33_1(SHX34_1, SHX35_1, SHX36_1, SHX37_1)
SHX34_1 = vector4
SHX35_1 = 690.98901367188
SHX36_1 = 581.01098632812
SHX37_1 = 130.44616699219
SHX38_1 = 155.0
SHX34_1 = SHX34_1(SHX35_1, SHX36_1, SHX37_1, SHX38_1)
SHX35_1 = vector4
SHX36_1 = 690.44836425781
SHX37_1 = 579.32305908203
SHX38_1 = 130.44616699219
SHX39_1 = 155.0
SHX35_1 = SHX35_1(SHX36_1, SHX37_1, SHX38_1, SHX39_1)
SHX36_1 = vector4
SHX37_1 = 697.92529296875
SHX38_1 = 581.60437011719
SHX39_1 = 130.44616699219
SHX40_1 = 155.0
SHX36_1 = SHX36_1(SHX37_1, SHX38_1, SHX39_1, SHX40_1)
SHX37_1 = vector4
SHX38_1 = 699.16485595703
SHX39_1 = 581.02416992188
SHX40_1 = 130.44616699219
SHX41_1 = 155.0
SHX37_1 = SHX37_1(SHX38_1, SHX39_1, SHX40_1, SHX41_1)
SHX38_1 = vector4
SHX39_1 = 692.42639160156
SHX40_1 = 581.03735351562
SHX41_1 = 130.44616699219
SHX42_1 = 155.0
SHX38_1 = SHX38_1(SHX39_1, SHX40_1, SHX41_1, SHX42_1)
SHX39_1 = vector4
SHX40_1 = 690.17144775391
SHX41_1 = 581.73626708984
SHX42_1 = 130.44616699219
SHX43_1 = 155.0
SHX39_1 = SHX39_1(SHX40_1, SHX41_1, SHX42_1, SHX43_1)
SHX40_1 = vector4
SHX41_1 = 697.17364501953
SHX42_1 = 579.21759033203
SHX43_1 = 130.44616699219
SHX44_1 = 155.0
SHX40_1 = SHX40_1(SHX41_1, SHX42_1, SHX43_1, SHX44_1)
SHX41_1 = vector4
SHX42_1 = 697.39782714844
SHX43_1 = 577.78021240234
SHX44_1 = 130.44616699219
SHX45_1 = 155.0
SHX41_1 = SHX41_1(SHX42_1, SHX43_1, SHX44_1, SHX45_1)
SHX42_1 = vector4
SHX43_1 = 697.75384521484
SHX44_1 = 576.64617919922
SHX45_1 = 130.44616699219
SHX46_1 = 155.0
SHX42_1 = SHX42_1(SHX43_1, SHX44_1, SHX45_1, SHX46_1)
SHX43_1 = vector4
SHX44_1 = 699.24395751953
SHX45_1 = 576.0263671875
SHX46_1 = 130.44616699219
SHX47_1 = 155.0
SHX43_1 = SHX43_1(SHX44_1, SHX45_1, SHX46_1, SHX47_1)
SHX44_1 = vector4
SHX45_1 = 697.84613037109
SHX46_1 = 578.88793945312
SHX47_1 = 130.44616699219
SHX48_1 = 1155.0
SHX44_1 = SHX44_1(SHX45_1, SHX46_1, SHX47_1, SHX48_1)
SHX45_1 = vector4
SHX46_1 = 698.92749023438
SHX47_1 = 578.58459472656
SHX48_1 = 130.44616699219
SHX49_1 = 155.0
SHX45_1 = SHX45_1(SHX46_1, SHX47_1, SHX48_1, SHX49_1)
SHX46_1 = vector4
SHX47_1 = 697.79339599609
SHX48_1 = 577.71429443359
SHX49_1 = 130.44616699219
SHX50_1 = 155.0
SHX46_1 = SHX46_1(SHX47_1, SHX48_1, SHX49_1, SHX50_1)
SHX47_1 = vector4
SHX48_1 = 699.16485595703
SHX49_1 = 577.16046142578
SHX50_1 = 130.44616699219
SHX51_1 = 155.0
SHX47_1 = SHX47_1(SHX48_1, SHX49_1, SHX50_1, SHX51_1)
SHX48_1 = vector4
SHX49_1 = 693.66595458984
SHX50_1 = 577.89892578125
SHX51_1 = 130.44616699219
SHX52_1 = 155.0
SHX48_1 = SHX48_1(SHX49_1, SHX50_1, SHX51_1, SHX52_1)
SHX49_1 = vector4
SHX50_1 = 691.00219726562
SHX51_1 = 580.23297119141
SHX52_1 = 130.44616699219
SHX53_1 = 155.0
SHX49_1 = SHX49_1(SHX50_1, SHX51_1, SHX52_1, SHX53_1)
SHX50_1 = vector4
SHX51_1 = 689.85498046875
SHX52_1 = 580.76043701172
SHX53_1 = 130.44616699219
SHX54_1 = 155.0
SHX50_1 = SHX50_1(SHX51_1, SHX52_1, SHX53_1, SHX54_1)
SHX51_1 = vector4
SHX52_1 = 689.47253417969
SHX53_1 = 579.66595458984
SHX54_1 = 130.44616699219
SHX55_1 = 155.0
SHX51_1 = SHX51_1(SHX52_1, SHX53_1, SHX54_1, SHX55_1)
SHX52_1 = vector4
SHX53_1 = 700.0087890625
SHX54_1 = 579.38903808594
SHX55_1 = 130.44616699219
SHX56_1 = 155.0
SHX52_1 = SHX52_1(SHX53_1, SHX54_1, SHX55_1, SHX56_1)
SHX53_1 = vector4
SHX54_1 = 698.78240966797
SHX55_1 = 579.78460693359
SHX56_1 = 130.44616699219
SHX57_1 = 155.0
SHX53_1 = SHX53_1(SHX54_1, SHX55_1, SHX56_1, SHX57_1)
SHX54_1 = vector4
SHX55_1 = 697.912109375
SHX56_1 = 580.1142578125
SHX57_1 = 130.44616699219
SHX58_1 = 155.0
SHX54_1 = SHX54_1(SHX55_1, SHX56_1, SHX57_1, SHX58_1)
SHX55_1 = vector4
SHX56_1 = 696.97583007812
SHX57_1 = 580.50988769531
SHX58_1 = 130.44616699219
SHX59_1 = 155.0
SHX55_1 = SHX55_1(SHX56_1, SHX57_1, SHX58_1, SHX59_1)
SHX56_1 = vector4
SHX57_1 = 695.90771484375
SHX58_1 = 580.81317138672
SHX59_1 = 130.44616699219
SHX60_1 = 155.0
SHX56_1 = SHX56_1(SHX57_1, SHX58_1, SHX59_1, SHX60_1)
SHX57_1 = vector4
SHX58_1 = 694.72088623047
SHX59_1 = 581.19561767578
SHX60_1 = 130.44616699219
SHX61_1 = 155.0
SHX57_1 = SHX57_1(SHX58_1, SHX59_1, SHX60_1, SHX61_1)
SHX58_1 = vector4
SHX59_1 = 693.59997558594
SHX60_1 = 581.61755371094
SHX61_1 = 130.44616699219
SHX62_1 = 155.0
SHX58_1 = SHX58_1(SHX59_1, SHX60_1, SHX61_1, SHX62_1)
SHX59_1 = vector4
SHX60_1 = 692.22857666016
SHX61_1 = 582.22418212891
SHX62_1 = 130.44616699219
SHX63_1 = 155.0
SHX59_1 = SHX59_1(SHX60_1, SHX61_1, SHX62_1, SHX63_1)
SHX60_1 = vector4
SHX61_1 = 690.92309570312
SHX62_1 = 582.68572998047
SHX63_1 = 130.44616699219
SHX64_1 = 155.0
SHX60_1 = SHX60_1(SHX61_1, SHX62_1, SHX63_1, SHX64_1)
SHX61_1 = vector4
SHX62_1 = 696.83074951172
SHX63_1 = 582.0
SHX64_1 = 130.44616699219
SHX65_1 = 155.0
SHX61_1 = SHX61_1(SHX62_1, SHX63_1, SHX64_1, SHX65_1)
SHX62_1 = vector4
SHX63_1 = 695.76263427734
SHX64_1 = 582.38244628906
SHX65_1 = 130.44616699219
SHX66_1 = 155.0
SHX62_1 = SHX62_1(SHX63_1, SHX64_1, SHX65_1, SHX66_1)
SHX63_1 = vector4
SHX64_1 = 694.70770263672
SHX65_1 = 582.54064941406
SHX66_1 = 130.44616699219
SHX67_1 = 155.0
SHX63_1 = SHX63_1(SHX64_1, SHX65_1, SHX66_1, SHX67_1)
SHX64_1 = vector4
SHX65_1 = 693.30987548828
SHX66_1 = 583.01538085938
SHX67_1 = 130.44616699219
SHX68_1 = 155.0
SHX64_1 = SHX64_1(SHX65_1, SHX66_1, SHX67_1, SHX68_1)
SHX65_1 = vector4
SHX66_1 = 692.18902587891
SHX67_1 = 583.58239746094
SHX68_1 = 130.44616699219
SHX69_1 = 155.0
SHX65_1 = SHX65_1(SHX66_1, SHX67_1, SHX68_1, SHX69_1)
SHX66_1 = vector4
SHX67_1 = 690.96264648438
SHX68_1 = 583.9912109375
SHX69_1 = 130.44616699219
SHX70_1 = 155.0
SHX66_1 = SHX66_1(SHX67_1, SHX68_1, SHX69_1, SHX70_1)
SHX67_1 = vector4
SHX68_1 = 691.41101074219
SHX69_1 = 581.78900146484
SHX70_1 = 130.44616699219
SHX71_1 = 155.0
SHX67_1 = SHX67_1(SHX68_1, SHX69_1, SHX70_1, SHX71_1)
SHX68_1 = vector4
SHX69_1 = 699.876953125
SHX70_1 = 581.67034912109
SHX71_1 = 130.44616699219
SHX72_1 = 155.0
SHX68_1 = SHX68_1(SHX69_1, SHX70_1, SHX71_1, SHX72_1)
SHX69_1 = vector4
SHX70_1 = 698.91430664062
SHX71_1 = 582.11865234375
SHX72_1 = 130.44616699219
SHX73_1 = 155.0
SHX69_1 = SHX69_1(SHX70_1, SHX71_1, SHX72_1, SHX73_1)
SHX70_1 = vector4
SHX71_1 = 697.62200927734
SHX72_1 = 582.65936279297
SHX73_1 = 130.44616699219
SHX74_1 = 155.0
SHX70_1 = SHX70_1(SHX71_1, SHX72_1, SHX73_1, SHX74_1)
SHX71_1 = vector4
SHX72_1 = 696.52746582031
SHX73_1 = 583.06811523438
SHX74_1 = 130.44616699219
SHX75_1 = 155.0
SHX71_1 = SHX71_1(SHX72_1, SHX73_1, SHX74_1, SHX75_1)
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
SHX21_1[48] = SHX69_1
SHX21_1[49] = SHX70_1
SHX21_1[50] = SHX71_1
SHX22_1 = vector4
SHX23_1 = 695.51208496094
SHX24_1 = 583.34503173828
SHX25_1 = 130.44616699219
SHX26_1 = 155.0
SHX22_1 = SHX22_1(SHX23_1, SHX24_1, SHX25_1, SHX26_1)
SHX23_1 = vector4
SHX24_1 = 694.28570556641
SHX25_1 = 583.68792724609
SHX26_1 = 130.44616699219
SHX27_1 = 155.0
SHX23_1 = SHX23_1(SHX24_1, SHX25_1, SHX26_1, SHX27_1)
SHX24_1 = vector4
SHX25_1 = 693.11206054688
SHX26_1 = 584.0966796875
SHX27_1 = 130.44616699219
SHX28_1 = 155.0
SHX24_1 = SHX24_1(SHX25_1, SHX26_1, SHX27_1, SHX28_1)
SHX25_1 = vector4
SHX26_1 = 691.9384765625
SHX27_1 = 584.59777832031
SHX28_1 = 130.44616699219
SHX29_1 = 155.0
SHX25_1 = SHX25_1(SHX26_1, SHX27_1, SHX28_1, SHX29_1)
SHX26_1 = vector4
SHX27_1 = 699.83734130859
SHX28_1 = 582.71209716797
SHX29_1 = 130.44616699219
SHX30_1 = 155.0
SHX26_1 = SHX26_1(SHX27_1, SHX28_1, SHX29_1, SHX30_1)
SHX27_1 = vector4
SHX28_1 = 698.58459472656
SHX29_1 = 583.22637939453
SHX30_1 = 130.44616699219
SHX31_1 = 155.0
SHX27_1 = SHX27_1(SHX28_1, SHX29_1, SHX30_1, SHX31_1)
SHX28_1 = vector4
SHX29_1 = 697.26593017578
SHX30_1 = 583.71429443359
SHX31_1 = 130.44616699219
SHX32_1 = 155.0
SHX28_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1, SHX32_1)
SHX29_1 = vector4
SHX30_1 = 696.22418212891
SHX31_1 = 584.03076171875
SHX32_1 = 130.49670410156
SHX33_1 = 155.0
SHX29_1 = SHX29_1(SHX30_1, SHX31_1, SHX32_1, SHX33_1)
SHX30_1 = vector4
SHX31_1 = 695.07690429688
SHX32_1 = 584.41320800781
SHX33_1 = 130.46301269531
SHX34_1 = 155.0
SHX30_1 = SHX30_1(SHX31_1, SHX32_1, SHX33_1, SHX34_1)
SHX31_1 = vector4
SHX32_1 = 693.85052490234
SHX33_1 = 584.66375732422
SHX34_1 = 130.44616699219
SHX35_1 = 155.0
SHX31_1 = SHX31_1(SHX32_1, SHX33_1, SHX34_1, SHX35_1)
SHX32_1 = vector4
SHX33_1 = 692.78240966797
SHX34_1 = 585.11206054688
SHX35_1 = 130.44616699219
SHX36_1 = 155.0
SHX32_1 = SHX32_1(SHX33_1, SHX34_1, SHX35_1, SHX36_1)
SHX33_1 = vector4
SHX34_1 = 691.51647949219
SHX35_1 = 585.61315917969
SHX36_1 = 130.44616699219
SHX37_1 = 155.0
SHX33_1 = SHX33_1(SHX34_1, SHX35_1, SHX36_1, SHX37_1)
SHX34_1 = vector4
SHX35_1 = 699.99560546875
SHX36_1 = 578.16265869141
SHX37_1 = 130.44616699219
SHX38_1 = 155.0
SHX34_1 = SHX34_1(SHX35_1, SHX36_1, SHX37_1, SHX38_1)
SHX35_1 = vector4
SHX36_1 = 700.15386962891
SHX37_1 = 576.75164794922
SHX38_1 = 130.44616699219
SHX39_1 = 155.0
SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1 = SHX35_1(SHX36_1, SHX37_1, SHX38_1, SHX39_1)
SHX21_1[51] = SHX22_1
SHX21_1[52] = SHX23_1
SHX21_1[53] = SHX24_1
SHX21_1[54] = SHX25_1
SHX21_1[55] = SHX26_1
SHX21_1[56] = SHX27_1
SHX21_1[57] = SHX28_1
SHX21_1[58] = SHX29_1
SHX21_1[59] = SHX30_1
SHX21_1[60] = SHX31_1
SHX21_1[61] = SHX32_1
SHX21_1[62] = SHX33_1
SHX21_1[63] = SHX34_1
SHX21_1[64] = SHX35_1
SHX21_1[65] = SHX36_1
SHX21_1[66] = SHX37_1
SHX21_1[67] = SHX38_1
SHX21_1[68] = SHX39_1
SHX21_1[69] = SHX40_1
SHX21_1[70] = SHX41_1
SHX21_1[71] = SHX42_1
SHX21_1[72] = SHX43_1
SHX21_1[73] = SHX44_1
SHX21_1[74] = SHX45_1
SHX21_1[75] = SHX46_1
SHX21_1[76] = SHX47_1
SHX21_1[77] = SHX48_1
SHX21_1[78] = SHX49_1
SHX21_1[79] = SHX50_1
SHX21_1[80] = SHX51_1
SHX21_1[81] = SHX52_1
SHX21_1[82] = SHX53_1
SHX21_1[83] = SHX54_1
SHX21_1[84] = SHX55_1
SHX21_1[85] = SHX56_1
SHX21_1[86] = SHX57_1
SHX21_1[87] = SHX58_1
SHX21_1[88] = SHX59_1
SHX21_1[89] = SHX60_1
SHX21_1[90] = SHX61_1
SHX21_1[91] = SHX62_1
SHX21_1[92] = SHX63_1
SHX21_1[93] = SHX64_1
SHX21_1[94] = SHX65_1
SHX21_1[95] = SHX66_1
SHX21_1[96] = SHX67_1
SHX21_1[97] = SHX68_1
SHX21_1[98] = SHX69_1
SHX21_1[99] = SHX70_1
SHX21_1[100] = SHX71_1
SHX21_1[101] = SHX72_1
SHX21_1[102] = SHX73_1
SHX21_1[103] = SHX74_1
SHX21_1[104] = SHX75_1
SHX22_1 = false
SHX23_1 = _ENV
SHX24_1 = "CMG"
SHX23_1 = SHX23_1[SHX24_1]
SHX24_1 = "isPodiumDrawing"
function SHX25_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX22_1
  return SHX0_2
end
SHX23_1[SHX24_1] = SHX25_1
SHX23_1 = false
SHX24_1 = _ENV
SHX25_1 = "CMG"
SHX24_1 = SHX24_1[SHX25_1]
SHX25_1 = "callCancelPodium"
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = true
  SHX23_1 = SHX0_2
end
SHX24_1[SHX25_1] = SHX26_1
SHX24_1 = _ENV
SHX25_1 = "CMG"
SHX24_1 = SHX24_1[SHX25_1]
SHX25_1 = "podiumLeaderboard"
function SHX26_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX2_2 = SetEntityCoords
  SHX3_2 = PlayerPedId
  SHX3_2 = SHX3_2()
  SHX4_2 = 686.37365722656
  SHX5_2 = 576.83074951172
  SHX6_2 = 120.44616699219
  SHX7_2 = false
  SHX8_2 = false
  SHX9_2 = false
  SHX10_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX2_2 = true
  SHX22_1 = SHX2_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.setTime
  SHX3_2 = 0
  SHX4_2 = 0
  SHX5_2 = 0
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = RequestIpl
  SHX3_2 = "stadium"
  SHX2_2(SHX3_2)
  while true do
    SHX2_2 = IsIplActive
    SHX3_2 = "stadium"
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      break
    end
    SHX2_2 = print
    SHX3_2 = "Loading stadium IPL"
    SHX2_2(SHX3_2)
    SHX2_2 = Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.hideAllDisplays
  SHX3_2 = "podiumleaderboard"
  SHX2_2(SHX3_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.isDevMode
  SHX2_2 = SHX2_2()
  if not SHX2_2 then
    SHX2_2 = SendNUIMessage
    SHX3_2 = {}
    SHX3_2.transactionType = "celebration_music"
    SHX2_2(SHX3_2)
  end
  SHX2_2 = {}
  SHX3_2 = PlayerPedId
  SHX3_2 = SHX3_2()
  SHX4_2 = FreezeEntityPosition
  SHX5_2 = SHX3_2
  SHX6_2 = true
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = ClearPedBloodDamage
  SHX5_2 = SHX3_2
  SHX4_2(SHX5_2)
  SHX4_2 = pairs
  SHX5_2 = SHX0_2
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
  for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    SHX10_2 = SHX9_2.source
    SHX11_2 = GetPlayerServerId
    SHX12_2 = PlayerId
    SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2 = SHX12_2()
    SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
    if SHX10_2 == SHX11_2 then
      SHX10_2 = SHX20_1
      SHX10_2 = SHX10_2[SHX8_2]
      if not SHX10_2 then
        SHX11_2 = vector4
        SHX12_2 = 686.37365722656
        SHX13_2 = 576.83074951172
        SHX14_2 = 130.44616699219
        SHX15_2 = 158.74015808105
        SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2)
        SHX10_2 = SHX11_2
      end
      SHX11_2 = SetEntityCoords
      SHX12_2 = SHX3_2
      SHX13_2 = SHX10_2.x
      SHX14_2 = SHX10_2.y
      SHX15_2 = SHX10_2.z
      SHX15_2 = SHX15_2 - 1
      SHX16_2 = false
      SHX17_2 = false
      SHX18_2 = false
      SHX19_2 = false
      SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
      SHX11_2 = SetEntityHeading
      SHX12_2 = SHX3_2
      SHX13_2 = SHX10_2.w
      SHX11_2(SHX12_2, SHX13_2)
      SHX11_2 = CreateThread
      function SHX12_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3
        SHX0_3 = "anim@arena@celeb@flat@solo@no_props@"
        SHX1_3 = "flip_a_player_a"
        SHX2_3 = CMG
        SHX2_3 = SHX2_3.loadAnimDict
        SHX3_3 = SHX0_3
        SHX2_3(SHX3_3)
        while true do
          SHX2_3 = SHX22_1
          if not SHX2_3 then
            break
          end
          SHX2_3 = SetFocusPosAndVel
          SHX3_3 = 682.94506835938
          SHX4_3 = 572.95385742188
          SHX5_3 = 131.08642578125
          SHX6_3 = 0.0
          SHX7_3 = 0.0
          SHX8_3 = 0.0
          SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
          SHX2_3 = FreezeEntityPosition
          SHX3_3 = PlayerPedId
          SHX3_3 = SHX3_3()
          SHX4_3 = true
          SHX2_3(SHX3_3, SHX4_3)
          SHX2_3 = IsEntityPlayingAnim
          SHX3_3 = PlayerPedId
          SHX3_3 = SHX3_3()
          SHX4_3 = SHX0_3
          SHX5_3 = SHX1_3
          SHX6_3 = 3
          SHX2_3 = SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3)
          if not SHX2_3 then
            SHX2_3 = TaskPlayAnim
            SHX3_3 = PlayerPedId
            SHX3_3 = SHX3_3()
            SHX4_3 = SHX0_3
            SHX5_3 = SHX1_3
            SHX6_3 = 8.0
            SHX7_3 = 8.0
            SHX8_3 = -1
            SHX9_3 = 1
            SHX10_3 = 1.0
            SHX11_3 = false
            SHX12_3 = false
            SHX13_3 = false
            SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3)
          end
          SHX2_3 = Wait
          SHX3_3 = 0
          SHX2_3(SHX3_3)
        end
      end
      SHX11_2(SHX12_2)
    end
  end
  SHX4_2 = pairs
  SHX5_2 = SHX1_2
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
  for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    SHX10_2 = SHX9_2.source
    SHX11_2 = GetPlayerServerId
    SHX12_2 = PlayerId
    SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2 = SHX12_2()
    SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
    if SHX10_2 == SHX11_2 then
      SHX10_2 = SHX21_1
      SHX10_2 = SHX10_2[SHX8_2]
      if not SHX10_2 then
        SHX11_2 = vector4
        SHX12_2 = 700.52307128906
        SHX13_2 = 575.68353271484
        SHX14_2 = 130.44616699219
        SHX15_2 = 158.74015808105
        SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2)
        SHX10_2 = SHX11_2
      end
      SHX11_2 = SetEntityCoords
      SHX12_2 = SHX3_2
      SHX13_2 = SHX10_2.x
      SHX14_2 = SHX10_2.y
      SHX15_2 = SHX10_2.z
      SHX15_2 = SHX15_2 - 1
      SHX16_2 = false
      SHX17_2 = false
      SHX18_2 = false
      SHX19_2 = false
      SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
      SHX11_2 = SetEntityHeading
      SHX12_2 = SHX3_2
      SHX13_2 = SHX10_2.w
      SHX11_2(SHX12_2, SHX13_2)
      SHX11_2 = CreateThread
      function SHX12_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3
        SHX0_3 = "anim_casino_a@amb@casino@games@arcadecabinet@femaleleft"
        SHX1_3 = "lose_big"
        SHX2_3 = CMG
        SHX2_3 = SHX2_3.loadAnimDict
        SHX3_3 = SHX0_3
        SHX2_3(SHX3_3)
        while true do
          SHX2_3 = SHX22_1
          if not SHX2_3 then
            break
          end
          SHX2_3 = SetFocusPosAndVel
          SHX3_3 = 682.94506835938
          SHX4_3 = 572.95385742188
          SHX5_3 = 131.08642578125
          SHX6_3 = 0.0
          SHX7_3 = 0.0
          SHX8_3 = 0.0
          SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
          SHX2_3 = FreezeEntityPosition
          SHX3_3 = PlayerPedId
          SHX3_3 = SHX3_3()
          SHX4_3 = true
          SHX2_3(SHX3_3, SHX4_3)
          SHX2_3 = IsEntityPlayingAnim
          SHX3_3 = PlayerPedId
          SHX3_3 = SHX3_3()
          SHX4_3 = SHX0_3
          SHX5_3 = SHX1_3
          SHX6_3 = 3
          SHX2_3 = SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3)
          if not SHX2_3 then
            SHX2_3 = TaskPlayAnim
            SHX3_3 = PlayerPedId
            SHX3_3 = SHX3_3()
            SHX4_3 = SHX0_3
            SHX5_3 = SHX1_3
            SHX6_3 = 8.0
            SHX7_3 = 8.0
            SHX8_3 = -1
            SHX9_3 = 1
            SHX10_3 = 1.0
            SHX11_3 = false
            SHX12_3 = false
            SHX13_3 = false
            SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3)
          end
          SHX2_3 = Wait
          SHX3_3 = 0
          SHX2_3(SHX3_3)
        end
      end
      SHX11_2(SHX12_2)
    end
  end
  SHX4_2 = vector3
  SHX5_2 = 683.83
  SHX6_2 = 570.57
  SHX7_2 = 130.46
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX5_2 = CreateCameraWithParams
  SHX6_2 = "DEFAULT_SCRIPTED_CAMERA"
  SHX7_2 = 681.29
  SHX8_2 = 563.62
  SHX9_2 = 141.05
  SHX10_2 = 0.0
  SHX11_2 = 0.0
  SHX12_2 = 0.0
  SHX13_2 = 65.0
  SHX14_2 = false
  SHX15_2 = 2
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX6_2 = PointCamAtCoord
  SHX7_2 = SHX5_2
  SHX8_2 = SHX4_2.x
  SHX9_2 = SHX4_2.y
  SHX10_2 = SHX4_2.z
  SHX10_2 = SHX10_2 + 10
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX6_2 = SetCamActive
  SHX7_2 = SHX5_2
  SHX8_2 = true
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = RenderScriptCams
  SHX7_2 = true
  SHX8_2 = true
  SHX9_2 = 0
  SHX10_2 = true
  SHX11_2 = false
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX6_2 = CreateCameraWithParams
  SHX7_2 = "DEFAULT_SCRIPTED_CAMERA"
  SHX8_2 = 681.29
  SHX9_2 = 563.62
  SHX10_2 = 131.05
  SHX11_2 = 0.0
  SHX12_2 = 0.0
  SHX13_2 = 0.0
  SHX14_2 = 65.0
  SHX15_2 = false
  SHX16_2 = 2
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX7_2 = PointCamAtCoord
  SHX8_2 = SHX6_2
  SHX9_2 = SHX4_2.x
  SHX10_2 = SHX4_2.y
  SHX11_2 = SHX4_2.z
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX7_2 = SetCamActiveWithInterp
  SHX8_2 = SHX6_2
  SHX9_2 = SHX5_2
  SHX10_2 = 10000
  SHX11_2 = 5
  SHX12_2 = 5
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX7_2 = IsScreenFadedOut
  SHX7_2 = SHX7_2()
  if SHX7_2 then
    SHX7_2 = DoScreenFadeIn
    SHX8_2 = 800
    SHX7_2(SHX8_2)
  end
  SHX7_2 = SHX19_1
  SHX8_2 = vector3
  SHX9_2 = 0
  SHX10_2 = 0
  SHX11_2 = 5
  SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2)
  SHX8_2 = SHX4_2 + SHX8_2
  SHX7_2(SHX8_2)
  SHX7_2 = SHX19_1
  SHX8_2 = vector3
  SHX9_2 = 681.34
  SHX10_2 = 572.84
  SHX11_2 = 130.46
  SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2)
  SHX9_2 = vector3
  SHX10_2 = 0
  SHX11_2 = 0
  SHX12_2 = 5
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
  SHX8_2 = SHX8_2 + SHX9_2
  SHX7_2(SHX8_2)
  SHX7_2 = SHX19_1
  SHX8_2 = vector3
  SHX9_2 = 686.76
  SHX10_2 = 570.71
  SHX11_2 = 130.46
  SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2)
  SHX9_2 = vector3
  SHX10_2 = 0
  SHX11_2 = 0
  SHX12_2 = 5
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
  SHX8_2 = SHX8_2 + SHX9_2
  SHX7_2(SHX8_2)
  SHX7_2 = GetGameTimer
  SHX7_2 = SHX7_2()
  while true do
    SHX8_2 = SHX23_1
    if SHX8_2 then
      break
    end
    SHX8_2 = GetGameTimer
    SHX8_2 = SHX8_2()
    SHX8_2 = SHX8_2 - SHX7_2
    SHX9_2 = 10000
    if not (SHX8_2 < SHX9_2) then
      break
    end
    SHX8_2 = ThefeedHideThisFrame
    SHX8_2()
    SHX8_2 = Wait
    SHX9_2 = 0
    SHX8_2(SHX9_2)
  end
  SHX8_2 = SHX23_1
  if not SHX8_2 then
    SHX8_2 = CreateCameraWithParams
    SHX9_2 = "DEFAULT_SCRIPTED_CAMERA"
    SHX10_2 = 696.13189697266
    SHX11_2 = 579.70550537109
    SHX12_2 = 130.44616699219
    SHX13_2 = 0.0
    SHX14_2 = 0.0
    SHX15_2 = 0.0
    SHX16_2 = 65.0
    SHX17_2 = false
    SHX18_2 = 2
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
    SHX9_2 = vector3
    SHX10_2 = 695.947265625
    SHX11_2 = 584.84832763672
    SHX12_2 = 130.74951171875
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
    SHX10_2 = PointCamAtCoord
    SHX11_2 = SHX8_2
    SHX12_2 = SHX9_2.x
    SHX13_2 = SHX9_2.y
    SHX14_2 = SHX9_2.z
    SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX10_2 = SetCamActiveWithInterp
    SHX11_2 = SHX8_2
    SHX12_2 = SHX6_2
    SHX13_2 = 11000
    SHX14_2 = 5
    SHX15_2 = 5
    SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  end
  SHX8_2 = GetGameTimer
  SHX8_2 = SHX8_2()
  SHX7_2 = SHX8_2
  while true do
    SHX8_2 = SHX23_1
    if SHX8_2 then
      break
    end
    SHX8_2 = GetGameTimer
    SHX8_2 = SHX8_2()
    SHX8_2 = SHX8_2 - SHX7_2
    SHX9_2 = 4000
    if not (SHX8_2 < SHX9_2) then
      break
    end
    SHX8_2 = ThefeedHideThisFrame
    SHX8_2()
    SHX8_2 = Wait
    SHX9_2 = 0
    SHX8_2(SHX9_2)
  end
  SHX8_2 = SHX23_1
  if not SHX8_2 then
    SHX8_2 = DoScreenFadeOut
    SHX9_2 = 2000
    SHX8_2(SHX9_2)
  end
  SHX8_2 = GetGameTimer
  SHX8_2 = SHX8_2()
  SHX7_2 = SHX8_2
  while true do
    SHX8_2 = SHX23_1
    if SHX8_2 then
      break
    end
    SHX8_2 = GetGameTimer
    SHX8_2 = SHX8_2()
    SHX8_2 = SHX8_2 - SHX7_2
    SHX9_2 = 3000
    if not (SHX8_2 < SHX9_2) then
      break
    end
    SHX8_2 = Wait
    SHX9_2 = 0
    SHX8_2(SHX9_2)
  end
  SHX8_2 = pairs
  SHX9_2 = SHX2_2
  SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX8_2(SHX9_2)
  for SHX12_2, SHX13_2 in SHX8_2, SHX9_2, SHX10_2, SHX11_2 do
    SHX14_2 = tCMG
    SHX14_2 = SHX14_2.removeArea
    SHX15_2 = "3dtext_"
    SHX16_2 = SHX13_2
    SHX15_2 = SHX15_2 .. SHX16_2
    SHX14_2(SHX15_2)
  end
  SHX8_2 = ClearPedTasks
  SHX9_2 = SHX3_2
  SHX8_2(SHX9_2)
  SHX8_2 = FreezeEntityPosition
  SHX9_2 = SHX3_2
  SHX10_2 = false
  SHX8_2(SHX9_2, SHX10_2)
  SHX8_2 = RenderScriptCams
  SHX9_2 = false
  SHX10_2 = false
  SHX11_2 = 1
  SHX12_2 = true
  SHX13_2 = true
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX8_2 = DestroyCam
  SHX9_2 = SHX5_2
  SHX10_2 = false
  SHX8_2(SHX9_2, SHX10_2)
  SHX8_2 = DestroyCam
  SHX9_2 = SHX6_2
  SHX10_2 = false
  SHX8_2(SHX9_2, SHX10_2)
  SHX8_2 = DestroyAllCams
  SHX9_2 = true
  SHX8_2(SHX9_2)
  SHX8_2 = DoScreenFadeIn
  SHX9_2 = 1000
  SHX8_2(SHX9_2)
  SHX8_2 = CMG
  SHX8_2 = SHX8_2.setTime
  SHX9_2 = 12
  SHX10_2 = 0
  SHX11_2 = 0
  SHX8_2(SHX9_2, SHX10_2, SHX11_2)
  SHX8_2 = ClearTimecycleModifier
  SHX8_2()
  SHX8_2 = false
  SHX22_1 = SHX8_2
  SHX8_2 = CMG
  SHX8_2 = SHX8_2.showAllDisplays
  SHX9_2 = "podiumleaderboard"
  SHX8_2(SHX9_2)
  SHX8_2 = false
  SHX23_1 = SHX8_2
  SHX8_2 = ClearFocus
  SHX8_2()
  SHX8_2 = RemoveIpl
  SHX9_2 = "stadium"
  SHX8_2(SHX9_2)
end
SHX24_1[SHX25_1] = SHX26_1
SHX24_1 = RegisterNetEvent
SHX25_1 = "e8f7c0a2e4"
function SHX26_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX2_2 = CreateThread
  function SHX3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.activateSlowMo
    SHX0_3()
  end
  SHX2_2(SHX3_2)
  SHX2_2 = {}
  SHX3_2 = Scaleform
  SHX4_2 = "MP_CELEBRATION"
  SHX3_2 = SHX3_2(SHX4_2)
  SHX2_2[1] = SHX3_2
  SHX3_2 = Scaleform
  SHX4_2 = "MP_CELEBRATION_BG"
  SHX3_2 = SHX3_2(SHX4_2)
  SHX2_2[2] = SHX3_2
  SHX3_2 = Scaleform
  SHX4_2 = "MP_CELEBRATION_FG"
  SHX3_2 = SHX3_2(SHX4_2)
  SHX2_2[3] = SHX3_2
  SHX3_2 = ipairs
  SHX4_2 = SHX2_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = SHX8_2.RunFunction
    SHX10_2 = "CLEANUP"
    SHX11_2 = {}
    SHX12_2 = "WINNER"
    SHX11_2[1] = SHX12_2
    SHX9_2(SHX10_2, SHX11_2)
    SHX9_2 = SHX8_2.RunFunction
    SHX10_2 = "CREATE_STAT_WALL"
    SHX11_2 = {}
    SHX12_2 = "WINNER"
    SHX13_2 = "HUD_COLOUR_BLACK"
    SHX14_2 = "70.0"
    SHX11_2[1] = SHX12_2
    SHX11_2[2] = SHX13_2
    SHX11_2[3] = SHX14_2
    SHX9_2(SHX10_2, SHX11_2)
    if SHX1_2 then
      SHX9_2 = SHX8_2.RunFunction
      SHX10_2 = "ADD_POSITION_TO_WALL"
      SHX11_2 = {}
      SHX12_2 = "WINNER"
      SHX13_2 = SHX1_2
      SHX14_2 = "1ST"
      SHX15_2 = false
      SHX16_2 = false
      SHX11_2[1] = SHX12_2
      SHX11_2[2] = SHX13_2
      SHX11_2[3] = SHX14_2
      SHX11_2[4] = SHX15_2
      SHX11_2[5] = SHX16_2
      SHX9_2(SHX10_2, SHX11_2)
    end
    SHX9_2 = SHX8_2.RunFunction
    SHX10_2 = "ADD_WINNER_TO_WALL"
    SHX11_2 = {}
    SHX12_2 = "WINNER"
    SHX13_2 = "CELEB_WINNER"
    SHX14_2 = SHX0_2
    SHX15_2 = ""
    SHX16_2 = 0
    SHX17_2 = false
    SHX18_2 = ""
    SHX19_2 = false
    SHX11_2[1] = SHX12_2
    SHX11_2[2] = SHX13_2
    SHX11_2[3] = SHX14_2
    SHX11_2[4] = SHX15_2
    SHX11_2[5] = SHX16_2
    SHX11_2[6] = SHX17_2
    SHX11_2[7] = SHX18_2
    SHX11_2[8] = SHX19_2
    SHX9_2(SHX10_2, SHX11_2)
    SHX9_2 = SHX8_2.RunFunction
    SHX10_2 = "ADD_BACKGROUND_TO_WALL"
    SHX11_2 = {}
    SHX12_2 = "WINNER"
    SHX13_2 = 75
    SHX14_2 = 0
    SHX11_2[1] = SHX12_2
    SHX11_2[2] = SHX13_2
    SHX11_2[3] = SHX14_2
    SHX9_2(SHX10_2, SHX11_2)
    SHX9_2 = SHX8_2.RunFunction
    SHX10_2 = "SHOW_STAT_WALL"
    SHX11_2 = {}
    SHX12_2 = "WINNER"
    SHX11_2[1] = SHX12_2
    SHX9_2(SHX10_2, SHX11_2)
  end
  SHX3_2 = true
  SHX4_2 = SetTimeout
  SHX5_2 = 10000
  function SHX6_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = false
    SHX3_2 = SHX0_3
  end
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.hideAllDisplays
  SHX5_2 = "celebrationscreen"
  SHX4_2(SHX5_2)
  while SHX3_2 do
    SHX4_2 = DrawScaleformMovieFullscreenMasked
    SHX5_2 = SHX2_2[2]
    SHX5_2 = SHX5_2.Handle
    SHX6_2 = SHX2_2[3]
    SHX6_2 = SHX6_2.Handle
    SHX7_2 = 255
    SHX8_2 = 255
    SHX9_2 = 255
    SHX10_2 = 255
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    SHX4_2 = SHX2_2[1]
    SHX4_2 = SHX4_2.Render2D
    SHX4_2()
    SHX4_2 = Citizen
    SHX4_2 = SHX4_2.Wait
    SHX5_2 = 0
    SHX4_2(SHX5_2)
  end
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.showAllDisplays
  SHX5_2 = "celebrationscreen"
  SHX4_2(SHX5_2)
end
SHX24_1(SHX25_1, SHX26_1)
SHX24_1 = false
SHX25_1 = CMG
SHX26_1 = "activateSlowMo"
function SHX27_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = true
  SHX24_1 = SHX0_2
  SHX0_2 = SetSpecialAbility
  SHX1_2 = PlayerId
  SHX1_2 = SHX1_2()
  SHX2_2 = 2
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SpecialAbilityActivate
  SHX1_2 = PlayerId
  SHX1_2, SHX2_2 = SHX1_2()
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = Wait
  SHX1_2 = 1000
  SHX0_2(SHX1_2)
  SHX0_2 = false
  SHX24_1 = SHX0_2
  SHX0_2 = SpecialAbilityDeplete
  SHX1_2 = PlayerId
  SHX1_2, SHX2_2 = SHX1_2()
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.InvokeNative
  SHX1_2 = -4466441394195262849
  SHX2_2 = PlayerId
  SHX2_2 = SHX2_2()
  SHX0_2(SHX1_2, SHX2_2)
end
SHX25_1[SHX26_1] = SHX27_1
SHX25_1 = CMG
SHX26_1 = "isInSlowMo"
function SHX27_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX24_1
  return SHX0_2
end
SHX25_1[SHX26_1] = SHX27_1
function SHX25_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX0_2 % 6
  if 0 == SHX1_2 then
    SHX2_2 = 3
    return SHX2_2
  elseif 1 == SHX1_2 then
    SHX2_2 = 5
    return SHX2_2
  elseif 2 == SHX1_2 then
    SHX2_2 = 17
    return SHX2_2
  elseif 3 == SHX1_2 then
    SHX2_2 = 11
    return SHX2_2
  elseif 4 == SHX1_2 then
    SHX2_2 = 14
    return SHX2_2
  elseif 5 == SHX1_2 then
    SHX2_2 = 8
    return SHX2_2
  elseif 6 == SHX1_2 then
    SHX2_2 = 1
    return SHX2_2
  end
end
SHX26_1 = nil
SHX27_1 = nil
SHX28_1 = false
SHX29_1 = false
SHX30_1 = CMG
SHX31_1 = "enableMinigamePlayerBlips"
function SHX32_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX26_1 = SHX1_2
  SHX4_2 = SHX2_2 or SHX4_2
  if not SHX2_2 then
    function SHX4_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = true
      return SHX0_3
    end
  end
  SHX27_1 = SHX4_2
  SHX28_1 = SHX0_2
  if not SHX0_2 then
    SHX4_2 = ipairs
    SHX5_2 = currentEvent
    SHX5_2 = SHX5_2.players
    SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
    for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
      SHX10_2 = CMG
      SHX10_2 = SHX10_2.removeBlipsForPlayer
      SHX11_2 = SHX9_2
      SHX10_2(SHX11_2)
    end
  end
  SHX4_2 = DisplayPlayerNameTagsOnBlips
  SHX5_2 = SHX0_2
  SHX4_2(SHX5_2)
  SHX4_2 = SHX3_2 or SHX4_2
  if not SHX3_2 then
    SHX4_2 = false
  end
  SHX29_1 = SHX4_2
end
SHX30_1[SHX31_1] = SHX32_1
SHX30_1 = {}
SHX31_1 = _ENV
SHX32_1 = "CMG"
SHX31_1 = SHX31_1[SHX32_1]
SHX32_1 = "forceCleanupPlayerBlips"
function SHX33_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = pairs
  SHX1_2 = SHX30_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = pairs
    SHX7_2 = SHX5_2
    SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
    for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
      SHX12_2 = DoesBlipExist
      SHX13_2 = SHX11_2
      SHX12_2 = SHX12_2(SHX13_2)
      if SHX12_2 then
        SHX12_2 = RemoveBlip
        SHX13_2 = SHX11_2
        SHX12_2(SHX13_2)
      end
    end
  end
end
SHX31_1[SHX32_1] = SHX33_1
SHX31_1 = _ENV
SHX32_1 = "CMG"
SHX31_1 = SHX31_1[SHX32_1]
SHX32_1 = "removeBlipsForPlayer"
function SHX33_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = SHX0_2.blip
  if SHX1_2 then
    SHX1_2 = RemoveBlip
    SHX2_2 = SHX0_2.blip
    SHX1_2(SHX2_2)
  end
  SHX2_2 = SHX0_2.source
  SHX1_2 = SHX30_1
  SHX1_2 = SHX1_2[SHX2_2]
  if SHX1_2 then
    SHX2_2 = pairs
    SHX3_2 = SHX1_2
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
    for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
      SHX8_2 = RemoveBlip
      SHX9_2 = SHX7_2
      SHX8_2(SHX9_2)
    end
  end
  SHX2_2 = GetPlayerFromServerId
  SHX3_2 = SHX0_2.source
  SHX2_2 = SHX2_2(SHX3_2)
  if -1 == SHX2_2 then
    return
  end
  SHX3_2 = GetPlayerPed
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if 0 == SHX3_2 then
    return
  end
  SHX4_2 = GetBlipFromEntity
  SHX5_2 = SHX3_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = DoesBlipExist
  SHX6_2 = SHX4_2
  SHX5_2 = SHX5_2(SHX6_2)
  if SHX5_2 then
    SHX5_2 = RemoveBlip
    SHX6_2 = SHX4_2
    SHX5_2(SHX6_2)
  end
end
SHX31_1[SHX32_1] = SHX33_1
SHX31_1 = _ENV
SHX32_1 = "CreateThread"
SHX31_1 = SHX31_1[SHX32_1]
function SHX32_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  while true do
    SHX0_2 = SHX28_1
    if SHX0_2 then
      SHX0_2 = GetActivePlayers
      SHX0_2 = SHX0_2()
      SHX1_2 = ipairs
      SHX2_2 = currentEvent
      SHX2_2 = SHX2_2.players
      SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
      for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
        SHX7_2 = GetPlayerFromServerId
        SHX8_2 = SHX6_2.source
        SHX7_2 = SHX7_2(SHX8_2)
        if -1 ~= SHX7_2 then
          SHX8_2 = PlayerId
          SHX8_2 = SHX8_2()
          if SHX7_2 ~= SHX8_2 then
            SHX8_2 = table
            SHX8_2 = SHX8_2.has
            SHX9_2 = SHX0_2
            SHX10_2 = SHX7_2
            SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
            if SHX8_2 then
              SHX8_2 = GetPlayerPed
              SHX9_2 = SHX7_2
              SHX8_2 = SHX8_2(SHX9_2)
              SHX9_2 = GetBlipFromEntity
              SHX10_2 = SHX8_2
              SHX9_2 = SHX9_2(SHX10_2)
              SHX10_2 = IsEntityVisible
              SHX11_2 = SHX8_2
              SHX10_2 = SHX10_2(SHX11_2)
              if SHX10_2 then
                SHX10_2 = SHX6_2.active
                if SHX10_2 then
                  SHX10_2 = SHX27_1
                  SHX11_2 = SHX6_2.source
                  SHX10_2 = SHX10_2(SHX11_2)
                  if SHX10_2 then
                    SHX10_2 = SHX6_2.blip
                    if SHX10_2 then
                      SHX10_2 = SHX6_2.blip
                      if SHX9_2 == SHX10_2 then
                        goto SHX_LABEL_131
                      end
                    end
                    SHX10_2 = SHX6_2.blip
                    if SHX10_2 then
                      SHX10_2 = RemoveBlip
                      SHX11_2 = SHX6_2.blip
                      SHX10_2(SHX11_2)
                    end
                    SHX10_2 = DoesBlipExist
                    SHX11_2 = SHX9_2
                    SHX10_2 = SHX10_2(SHX11_2)
                    if SHX10_2 then
                      SHX10_2 = RemoveBlip
                      SHX11_2 = SHX9_2
                      SHX10_2(SHX11_2)
                    end
                    SHX10_2 = AddBlipForEntity
                    SHX11_2 = SHX8_2
                    SHX10_2 = SHX10_2(SHX11_2)
                    SHX12_2 = SHX6_2.source
                    SHX11_2 = SHX30_1
                    SHX11_2 = SHX11_2[SHX12_2]
                    if not SHX11_2 then
                      SHX12_2 = SHX6_2.source
                      SHX11_2 = SHX30_1
                      SHX13_2 = {}
                      SHX11_2[SHX12_2] = SHX13_2
                    end
                    SHX11_2 = table
                    SHX11_2 = SHX11_2.insert
                    SHX13_2 = SHX6_2.source
                    SHX12_2 = SHX30_1
                    SHX12_2 = SHX12_2[SHX13_2]
                    SHX13_2 = SHX10_2
                    SHX11_2(SHX12_2, SHX13_2)
                    SHX11_2 = SetBlipSprite
                    SHX12_2 = SHX10_2
                    SHX13_2 = 1
                    SHX11_2(SHX12_2, SHX13_2)
                    SHX11_2 = SetBlipCategory
                    SHX12_2 = SHX10_2
                    SHX13_2 = 7
                    SHX11_2(SHX12_2, SHX13_2)
                    SHX11_2 = SHX26_1
                    if SHX11_2 then
                      SHX11_2 = SetBlipColour
                      SHX12_2 = SHX10_2
                      SHX13_2 = SHX26_1
                      SHX14_2 = SHX6_2.source
                      SHX13_2, SHX14_2 = SHX13_2(SHX14_2)
                      SHX11_2(SHX12_2, SHX13_2, SHX14_2)
                    else
                      SHX11_2 = SetBlipColour
                      SHX12_2 = SHX10_2
                      SHX13_2 = SHX25_1
                      SHX14_2 = SHX6_2.source
                      SHX13_2, SHX14_2 = SHX13_2(SHX14_2)
                      SHX11_2(SHX12_2, SHX13_2, SHX14_2)
                    end
                    SHX11_2 = SHX29_1
                    if not SHX11_2 then
                      SHX11_2 = ShowHeadingIndicatorOnBlip
                      SHX12_2 = SHX10_2
                      SHX13_2 = true
                      SHX11_2(SHX12_2, SHX13_2)
                    end
                    SHX11_2 = BeginTextCommandSetBlipName
                    SHX12_2 = "STRING"
                    SHX11_2(SHX12_2)
                    SHX11_2 = AddTextComponentSubstringPlayerName
                    SHX12_2 = CMG
                    SHX12_2 = SHX12_2.getPlayerName
                    SHX13_2 = SHX7_2
                    SHX12_2, SHX13_2, SHX14_2 = SHX12_2(SHX13_2)
                    SHX11_2(SHX12_2, SHX13_2, SHX14_2)
                    SHX11_2 = EndTextCommandSetBlipName
                    SHX12_2 = SHX10_2
                    SHX11_2(SHX12_2)
                    SHX6_2.blip = SHX10_2
                    goto SHX_LABEL_193
                    -- [FIX IF ERROR] Move ::SHX_LABEL_131:: outside nested blocks until all 'goto SHX_LABEL_131' can see it
                    ::SHX_LABEL_131::
                    SHX10_2 = IsEntityDead
                    SHX11_2 = SHX8_2
                    SHX10_2 = SHX10_2(SHX11_2)
                    if SHX10_2 then
                      SHX10_2 = 274
                      if SHX10_2 then
                        goto SHX_LABEL_140
                      end
                    end
                    SHX10_2 = 1
                    -- [FIX IF ERROR] Move ::SHX_LABEL_140:: outside nested blocks until all 'goto SHX_LABEL_140' can see it
                    ::SHX_LABEL_140::
                    SHX11_2 = GetBlipSprite
                    SHX12_2 = SHX6_2.blip
                    SHX11_2 = SHX11_2(SHX12_2)
                    if SHX11_2 ~= SHX10_2 then
                      SHX11_2 = SetBlipSprite
                      SHX12_2 = SHX6_2.blip
                      SHX13_2 = SHX10_2
                      SHX11_2(SHX12_2, SHX13_2)
                      SHX11_2 = SHX26_1
                      if SHX11_2 then
                        SHX11_2 = SetBlipColour
                        SHX12_2 = SHX6_2.blip
                        SHX13_2 = SHX26_1
                        SHX14_2 = SHX6_2.source
                        SHX13_2, SHX14_2 = SHX13_2(SHX14_2)
                        SHX11_2(SHX12_2, SHX13_2, SHX14_2)
                      else
                        SHX11_2 = SetBlipColour
                        SHX12_2 = SHX6_2.blip
                        SHX13_2 = SHX25_1
                        SHX14_2 = SHX6_2.source
                        SHX13_2, SHX14_2 = SHX13_2(SHX14_2)
                        SHX11_2(SHX12_2, SHX13_2, SHX14_2)
                      end
                      SHX11_2 = BeginTextCommandSetBlipName
                      SHX12_2 = "STRING"
                      SHX11_2(SHX12_2)
                      SHX11_2 = AddTextComponentSubstringPlayerName
                      SHX12_2 = CMG
                      SHX12_2 = SHX12_2.getPlayerName
                      SHX13_2 = SHX7_2
                      SHX12_2, SHX13_2, SHX14_2 = SHX12_2(SHX13_2)
                      SHX11_2(SHX12_2, SHX13_2, SHX14_2)
                      SHX11_2 = EndTextCommandSetBlipName
                      SHX12_2 = SHX6_2.blip
                      SHX11_2(SHX12_2)
                    end
                end
              end
              else
                SHX10_2 = SHX6_2.blip
                if SHX10_2 then
                  SHX10_2 = RemoveBlip
                  SHX11_2 = SHX6_2.blip
                  SHX10_2(SHX11_2)
                  SHX6_2.blip = nil
                end
                SHX10_2 = DoesBlipExist
                SHX11_2 = SHX9_2
                SHX10_2 = SHX10_2(SHX11_2)
                if SHX10_2 then
                  SHX10_2 = RemoveBlip
                  SHX11_2 = SHX9_2
                  SHX10_2(SHX11_2)
                end
              end
            end
          end
        end
        -- [FIX IF ERROR] Move ::SHX_LABEL_193:: outside nested blocks until all 'goto SHX_LABEL_193' can see it
        ::SHX_LABEL_193::
      end
    end
    SHX0_2 = Wait
    SHX1_2 = 100
    SHX0_2(SHX1_2)
  end
end
SHX31_1(SHX32_1)
function SHX31_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX0_2 % 6
  if 0 == SHX1_2 then
    SHX2_2 = 9
    return SHX2_2
  elseif 1 == SHX1_2 then
    SHX2_2 = 12
    return SHX2_2
  elseif 2 == SHX1_2 then
    SHX2_2 = 15
    return SHX2_2
  elseif 3 == SHX1_2 then
    SHX2_2 = 18
    return SHX2_2
  elseif 4 == SHX1_2 then
    SHX2_2 = 21
    return SHX2_2
  elseif 5 == SHX1_2 then
    SHX2_2 = 24
    return SHX2_2
  elseif 6 == SHX1_2 then
    SHX2_2 = 6
    return SHX2_2
  end
end
SHX32_1 = nil
SHX33_1 = nil
SHX34_1 = false
SHX35_1 = false
SHX36_1 = _ENV
SHX37_1 = "CMG"
SHX36_1 = SHX36_1[SHX37_1]
SHX37_1 = "enableMinigamePlayerTags"
function SHX38_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX32_1 = SHX2_2
  SHX33_1 = SHX3_2
  SHX35_1 = SHX1_2
  SHX34_1 = SHX0_2
  if not SHX0_2 then
    SHX4_2 = ipairs
    SHX5_2 = currentEvent
    SHX5_2 = SHX5_2.players
    SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
    for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
      SHX10_2 = SHX9_2.tag
      if SHX10_2 then
        SHX10_2 = RemoveMpGamerTag
        SHX11_2 = SHX9_2.tag
        SHX10_2(SHX11_2)
        SHX9_2.tag = nil
      end
    end
  end
end
SHX36_1[SHX37_1] = SHX38_1
SHX36_1 = _ENV
SHX37_1 = "CMG"
SHX36_1 = SHX36_1[SHX37_1]
SHX37_1 = "isEventPlayerTagEnabled"
function SHX38_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX34_1
  return SHX0_2
end
SHX36_1[SHX37_1] = SHX38_1
SHX36_1 = _ENV
SHX37_1 = "CreateThread"
SHX36_1 = SHX36_1[SHX37_1]
function SHX37_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  while true do
    SHX0_2 = SHX34_1
    if SHX0_2 then
      SHX0_2 = PlayerPedId
      SHX0_2 = SHX0_2()
      SHX1_2 = ipairs
      SHX2_2 = currentEvent
      SHX2_2 = SHX2_2.players
      SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
      for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
        SHX7_2 = GetPlayerFromServerId
        SHX8_2 = SHX6_2.source
        SHX7_2 = SHX7_2(SHX8_2)
        if -1 ~= SHX7_2 then
          SHX8_2 = PlayerId
          SHX8_2 = SHX8_2()
          if SHX7_2 ~= SHX8_2 then
            SHX8_2 = GetPlayerPed
            SHX9_2 = SHX7_2
            SHX8_2 = SHX8_2(SHX9_2)
            SHX9_2 = HasEntityClearLosToEntity
            SHX10_2 = SHX0_2
            SHX11_2 = SHX8_2
            SHX12_2 = 17
            SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
            if not SHX9_2 then
              SHX9_2 = CMG
              SHX9_2 = SHX9_2.isSpectatingEvent
              SHX9_2 = SHX9_2()
            end
            if SHX9_2 then
              SHX10_2 = IsEntityVisible
              SHX11_2 = SHX8_2
              SHX10_2 = SHX10_2(SHX11_2)
              if SHX10_2 then
                SHX10_2 = SHX6_2.active
                if SHX10_2 then
                  SHX10_2 = SHX6_2.tag
                  if SHX10_2 then
                    SHX10_2 = IsMpGamerTagActive
                    SHX11_2 = SHX6_2.tag
                    SHX10_2 = SHX10_2(SHX11_2)
                  end
                  if not SHX10_2 then
                    SHX10_2 = nil
                    SHX11_2 = SHX33_1
                    if SHX11_2 then
                      SHX11_2 = CreateFakeMpGamerTag
                      SHX12_2 = SHX8_2
                      SHX13_2 = SHX33_1
                      SHX14_2 = SHX6_2
                      SHX13_2 = SHX13_2(SHX14_2)
                      SHX14_2 = false
                      SHX15_2 = false
                      SHX16_2 = ""
                      SHX17_2 = 0
                      SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
                      SHX10_2 = SHX11_2
                    else
                      SHX11_2 = CreateFakeMpGamerTag
                      SHX12_2 = SHX8_2
                      SHX13_2 = CMG
                      SHX13_2 = SHX13_2.getPlayerName
                      SHX14_2 = SHX7_2
                      SHX13_2 = SHX13_2(SHX14_2)
                      SHX14_2 = false
                      SHX15_2 = false
                      SHX16_2 = ""
                      SHX17_2 = 0
                      SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
                      SHX10_2 = SHX11_2
                    end
                    SHX11_2 = SHX32_1
                    if SHX11_2 then
                      SHX11_2 = SetMpGamerTagColour
                      SHX12_2 = SHX10_2
                      SHX13_2 = 0
                      SHX14_2 = SHX32_1
                      SHX15_2 = SHX6_2.source
                      SHX14_2, SHX15_2, SHX16_2, SHX17_2 = SHX14_2(SHX15_2)
                      SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
                    else
                      SHX11_2 = SetMpGamerTagColour
                      SHX12_2 = SHX10_2
                      SHX13_2 = 0
                      SHX14_2 = SHX31_1
                      SHX15_2 = SHX6_2.source
                      SHX14_2, SHX15_2, SHX16_2, SHX17_2 = SHX14_2(SHX15_2)
                      SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
                    end
                    SHX11_2 = SetMpGamerTagColour
                    SHX12_2 = SHX10_2
                    SHX13_2 = 29
                    SHX14_2 = 6
                    SHX11_2(SHX12_2, SHX13_2, SHX14_2)
                    SHX11_2 = SHX35_1
                    if SHX11_2 then
                      SHX11_2 = SetMpGamerTagHealthBarColour
                      SHX12_2 = SHX10_2
                      SHX13_2 = 18
                      SHX11_2(SHX12_2, SHX13_2)
                      SHX11_2 = SetMpGamerTagAlpha
                      SHX12_2 = SHX10_2
                      SHX13_2 = 2
                      SHX14_2 = 255
                      SHX11_2(SHX12_2, SHX13_2, SHX14_2)
                      SHX11_2 = SetMpGamerTagVisibility
                      SHX12_2 = SHX10_2
                      SHX13_2 = 2
                      SHX14_2 = true
                      SHX11_2(SHX12_2, SHX13_2, SHX14_2)
                    end
                    SHX6_2.tag = SHX10_2
                  end
              end
            end
            else
              SHX10_2 = SHX6_2.tag
              if SHX10_2 then
                SHX10_2 = RemoveMpGamerTag
                SHX11_2 = SHX6_2.tag
                SHX10_2(SHX11_2)
                SHX6_2.tag = nil
              end
            end
          end
        end
      end
    end
    SHX0_2 = Wait
    SHX1_2 = 100
    SHX0_2(SHX1_2)
  end
end
SHX36_1(SHX37_1)
SHX36_1 = _ENV
SHX37_1 = "CMG"
SHX36_1 = SHX36_1[SHX37_1]
SHX37_1 = "setEventIntroMessage"
function SHX38_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX3_2 = EnableAllControlActions
  SHX4_2 = 0
  SHX3_2(SHX4_2)
  SHX3_2 = GetSoundId
  SHX3_2 = SHX3_2()
  SHX4_2 = PlaySoundFrontend
  SHX5_2 = SHX3_2
  SHX6_2 = "Frontend_Beast_Freeze_Screen"
  SHX7_2 = "FM_Events_Sasquatch_Sounds"
  SHX8_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX4_2 = ReleaseSoundId
  SHX5_2 = SHX3_2
  SHX4_2(SHX5_2)
  SHX4_2 = HasStreamedTextureDictLoaded
  SHX5_2 = "cmgui"
  SHX4_2 = SHX4_2(SHX5_2)
  if not SHX4_2 then
    SHX4_2 = RequestStreamedTextureDict
    SHX5_2 = "cmgui"
    SHX6_2 = false
    SHX4_2(SHX5_2, SHX6_2)
    while true do
      SHX4_2 = HasStreamedTextureDictLoaded
      SHX5_2 = "cmgui"
      SHX4_2 = SHX4_2(SHX5_2)
      if SHX4_2 then
        break
      end
      SHX4_2 = Wait
      SHX5_2 = 0
      SHX4_2(SHX5_2)
    end
  end
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.hideAllDisplays
  SHX5_2 = "intromessage"
  SHX4_2(SHX5_2)
  SHX4_2 = 0.0
  SHX5_2 = 0.55
  SHX6_2 = true
  if 0 == SHX2_2 then
  else
    SHX7_2 = SetTimeout
    SHX8_2 = SHX2_2 or SHX8_2
    if not SHX2_2 then
      SHX8_2 = 5000
    end
    function SHX9_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = false
      SHX6_2 = SHX0_3
    end
    SHX7_2(SHX8_2, SHX9_2)
    while SHX6_2 do
      SHX7_2 = Wait
      SHX8_2 = 0
      SHX7_2(SHX8_2)
      if SHX4_2 < SHX5_2 then
        SHX4_2 = SHX4_2 + 0.01
      end
      SHX7_2 = DrawAdvancedTextNoOutline
      SHX8_2 = 0.283
      SHX9_2 = 0.807
      SHX9_2 = SHX9_2 - SHX5_2
      SHX9_2 = SHX9_2 + SHX4_2
      SHX10_2 = 0.005
      SHX11_2 = 0.0028
      SHX12_2 = 1.25
      SHX13_2 = SHX0_2
      SHX14_2 = 171
      SHX15_2 = 34
      SHX16_2 = 35
      SHX17_2 = 255
      SHX18_2 = CMG
      SHX18_2 = SHX18_2.getFontId
      SHX19_2 = "Akrobat-ExtraBold"
      SHX18_2 = SHX18_2(SHX19_2)
      SHX19_2 = 0
      SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
      SHX7_2 = DrawAdvancedTextNoOutline
      SHX8_2 = 0.488
      SHX9_2 = 0.883
      SHX9_2 = SHX9_2 - SHX5_2
      SHX9_2 = SHX9_2 + SHX4_2
      SHX10_2 = 0.005
      SHX11_2 = 0.0028
      SHX12_2 = 1.03
      SHX13_2 = SHX1_2
      SHX14_2 = 255
      SHX15_2 = 255
      SHX16_2 = 255
      SHX17_2 = 255
      SHX18_2 = 1
      SHX19_2 = 0
      SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
      SHX7_2 = DrawSprite
      SHX8_2 = "cmgui"
      SHX9_2 = "slanted_rect"
      SHX10_2 = 0.5
      SHX11_2 = SHX4_2
      SHX12_2 = 1.0
      SHX13_2 = 1.0
      SHX14_2 = 0.0
      SHX15_2 = 255
      SHX16_2 = 255
      SHX17_2 = 255
      SHX18_2 = 180
      SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
    end
  end
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.showAllDisplays
  SHX8_2 = "intromessage"
  SHX7_2(SHX8_2)
end
SHX36_1[SHX37_1] = SHX38_1
SHX36_1 = _ENV
SHX37_1 = "CMG"
SHX36_1 = SHX36_1[SHX37_1]
SHX37_1 = "inEvent"
function SHX38_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = currentEvent
  SHX0_2 = SHX0_2.isActive
  if not SHX0_2 then
    SHX0_2 = SHX9_1
    if not SHX0_2 then
      SHX0_2 = SHX5_1
    end
  end
  return SHX0_2
end
SHX36_1[SHX37_1] = SHX38_1
SHX36_1 = RegisterNetEvent
SHX37_1 = "86634fecb2"
function SHX38_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX7_1 = SHX0_2
end
SHX36_1(SHX37_1, SHX38_1)
SHX36_1 = _ENV
SHX37_1 = "CMG"
SHX36_1 = SHX36_1[SHX37_1]
SHX37_1 = "getClientEventData"
function SHX38_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = currentEvent
  return SHX1_2
end
SHX36_1[SHX37_1] = SHX38_1
function SHX36_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX0_2 = currentEvent
  if SHX0_2 then
    SHX0_2 = currentEvent
    SHX0_2 = SHX0_2.isActive
    if SHX0_2 then
      goto SHX_LABEL_9
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  SHX0_2 = pairs
  SHX1_2 = currentEvent
  SHX1_2 = SHX1_2.players
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = GetPlayerFromServerId
    SHX7_2 = SHX5_2.source
    SHX6_2 = SHX6_2(SHX7_2)
    if -1 ~= SHX6_2 then
      SHX7_2 = GetPlayerPed
      SHX8_2 = SHX6_2
      SHX7_2 = SHX7_2(SHX8_2)
      if -1 ~= SHX7_2 then
        SHX8_2 = IsPedShooting
        SHX9_2 = SHX7_2
        SHX8_2 = SHX8_2(SHX9_2)
        if SHX8_2 then
          SHX9_2 = SHX5_2.source
          SHX8_2 = SHX3_1
          SHX8_2 = SHX8_2[SHX9_2]
          if not SHX8_2 then
            SHX9_2 = SHX5_2.source
            SHX8_2 = SHX3_1
            SHX8_2[SHX9_2] = true
            SHX8_2 = SetTimeout
            SHX9_2 = 1000
            function SHX10_2()
              -- [AI CLEANUP] Decompiled Lua - Fix these:
              -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
              -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
              -- 3. Replace goto/label with while/repeat-until where possible
              -- 4. Remove decompiler comments, add meaningful ones
              -- 5. Fix indentation and formatting
              
              local SHX0_3, SHX1_3
              SHX1_3 = SHX5_2.source
              SHX0_3 = SHX3_1
              SHX0_3[SHX1_3] = false
            end
            SHX8_2(SHX9_2, SHX10_2)
          end
        end
      end
    end
  end
end
SHX37_1 = _ENV
SHX38_1 = "CMG"
SHX37_1 = SHX37_1[SHX38_1]
SHX37_1 = SHX37_1.createThreadOnTick
SHX38_1 = SHX36_1
SHX39_1 = "Event Shots Finder"
SHX37_1(SHX38_1, SHX39_1)
SHX37_1 = _ENV
SHX38_1 = "CMG"
SHX37_1 = SHX37_1[SHX38_1]
SHX38_1 = "hasPlayerShotInEvent"
function SHX39_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX3_1
  SHX1_2 = SHX1_2[SHX0_2]
  if not SHX1_2 then
    SHX1_2 = false
  end
  return SHX1_2
end
SHX37_1[SHX38_1] = SHX39_1
