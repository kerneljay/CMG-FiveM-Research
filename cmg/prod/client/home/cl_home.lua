-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1
SHX0_1 = nil
SHX1_1 = {}
SHX2_1 = {}
SHX3_1 = nil
SHX4_1 = nil
SHX5_1 = {}
SHX6_1 = 0
SHX7_1 = {}
SHX8_1 = {}
SHX9_1 = {}
SHX10_1 = CMG
SHX10_1 = SHX10_1.loadModule
SHX11_1 = "cfg/homes"
SHX10_1 = SHX10_1(SHX11_1)
SHX11_1 = {}
SHX12_1 = nil
SHX13_1 = {}
SHX14_1 = nil
SHX15_1 = ""
SHX16_1 = nil
SHX17_1 = 0
SHX18_1 = 0
SHX19_1 = {}
SHX20_1 = {}
SHX21_1 = nil
SHX22_1 = false
SHX23_1 = 0
SHX24_1 = nil
SHX25_1 = nil
SHX26_1 = {}
SHX27_1 = 0
SHX28_1 = nil
SHX29_1 = {}
SHX30_1 = {}
SHX31_1 = nil
SHX32_1 = {}
SHX32_1.income = 0
SHX32_1.outcome = 0
SHX33_1 = 10000
SHX34_1 = 1
SHX35_1 = 1
SHX36_1 = 1
SHX37_1 = true
SHX38_1 = nil
SHX39_1 = 0
SHX40_1 = RMenu
SHX40_1 = SHX40_1.Add
SHX41_1 = "cmghouses"
SHX42_1 = "mainmenu"
SHX43_1 = RageUI
SHX43_1 = SHX43_1.CreateMenu
SHX44_1 = ""
SHX45_1 = ""
SHX46_1 = CMG
SHX46_1 = SHX46_1.getRageUIMenuWidth
SHX46_1 = SHX46_1()
SHX47_1 = CMG
SHX47_1 = SHX47_1.getRageUIMenuHeight
SHX47_1 = SHX47_1()
SHX48_1 = "cmg_homesui"
SHX49_1 = "cmg_homesui"
SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1 = SHX43_1(SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1)
SHX40_1(SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1)
SHX40_1 = RMenu
SHX41_1 = SHX40_1
SHX40_1 = SHX40_1.Get
SHX42_1 = "cmghouses"
SHX43_1 = "mainmenu"
SHX40_1 = SHX40_1(SHX41_1, SHX42_1, SHX43_1)
SHX41_1 = SHX40_1
SHX40_1 = SHX40_1.SetSubtitle
SHX42_1 = "~b~HOME"
SHX40_1(SHX41_1, SHX42_1)
SHX40_1 = RMenu
SHX40_1 = SHX40_1.Add
SHX41_1 = "cmghouses"
SHX42_1 = "exit"
SHX43_1 = RageUI
SHX43_1 = SHX43_1.CreateMenu
SHX44_1 = ""
SHX45_1 = ""
SHX46_1 = CMG
SHX46_1 = SHX46_1.getRageUIMenuWidth
SHX46_1 = SHX46_1()
SHX47_1 = CMG
SHX47_1 = SHX47_1.getRageUIMenuHeight
SHX47_1 = SHX47_1()
SHX48_1 = "cmg_homesui"
SHX49_1 = "cmg_homesui"
SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1 = SHX43_1(SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1)
SHX40_1(SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1)
SHX40_1 = RMenu
SHX41_1 = SHX40_1
SHX40_1 = SHX40_1.Get
SHX42_1 = "cmghouses"
SHX43_1 = "exit"
SHX40_1 = SHX40_1(SHX41_1, SHX42_1, SHX43_1)
SHX41_1 = SHX40_1
SHX40_1 = SHX40_1.SetSubtitle
SHX42_1 = "~b~HOME"
SHX40_1(SHX41_1, SHX42_1)
SHX40_1 = RMenu
SHX40_1 = SHX40_1.Add
SHX41_1 = "cmghouses"
SHX42_1 = "mail"
SHX43_1 = RageUI
SHX43_1 = SHX43_1.CreateSubMenu
SHX44_1 = RMenu
SHX45_1 = SHX44_1
SHX44_1 = SHX44_1.Get
SHX46_1 = "cmghouses"
SHX47_1 = "exit"
SHX44_1 = SHX44_1(SHX45_1, SHX46_1, SHX47_1)
SHX45_1 = ""
SHX46_1 = "~b~CMG Mail Service"
SHX47_1 = CMG
SHX47_1 = SHX47_1.getRageUIMenuWidth
SHX47_1 = SHX47_1()
SHX48_1 = CMG
SHX48_1 = SHX48_1.getRageUIMenuHeight
SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1 = SHX48_1()
SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1 = SHX43_1(SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1)
SHX40_1(SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1)
SHX40_1 = RMenu
SHX40_1 = SHX40_1.Add
SHX41_1 = "cmghouses"
SHX42_1 = "mailinfo"
SHX43_1 = RageUI
SHX43_1 = SHX43_1.CreateSubMenu
SHX44_1 = RMenu
SHX45_1 = SHX44_1
SHX44_1 = SHX44_1.Get
SHX46_1 = "cmghouses"
SHX47_1 = "mail"
SHX44_1 = SHX44_1(SHX45_1, SHX46_1, SHX47_1)
SHX45_1 = ""
SHX46_1 = "~b~CMG Mail Service"
SHX47_1 = CMG
SHX47_1 = SHX47_1.getRageUIMenuWidth
SHX47_1 = SHX47_1()
SHX48_1 = CMG
SHX48_1 = SHX48_1.getRageUIMenuHeight
SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1 = SHX48_1()
SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1 = SHX43_1(SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1)
SHX40_1(SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1)
SHX40_1 = RMenu
SHX40_1 = SHX40_1.Add
SHX41_1 = "cmghouses"
SHX42_1 = "customise"
SHX43_1 = RageUI
SHX43_1 = SHX43_1.CreateSubMenu
SHX44_1 = RMenu
SHX45_1 = SHX44_1
SHX44_1 = SHX44_1.Get
SHX46_1 = "cmghouses"
SHX47_1 = "exit"
SHX44_1 = SHX44_1(SHX45_1, SHX46_1, SHX47_1)
SHX45_1 = ""
SHX46_1 = "~b~Customisation Menu"
SHX47_1 = CMG
SHX47_1 = SHX47_1.getRageUIMenuWidth
SHX47_1 = SHX47_1()
SHX48_1 = CMG
SHX48_1 = SHX48_1.getRageUIMenuHeight
SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1 = SHX48_1()
SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1 = SHX43_1(SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1)
SHX40_1(SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1)
SHX40_1 = RMenu
SHX40_1 = SHX40_1.Add
SHX41_1 = "cmghouses"
SHX42_1 = "customisecallback"
SHX43_1 = RageUI
SHX43_1 = SHX43_1.CreateSubMenu
SHX44_1 = RMenu
SHX45_1 = SHX44_1
SHX44_1 = SHX44_1.Get
SHX46_1 = "cmghouses"
SHX47_1 = "customise"
SHX44_1 = SHX44_1(SHX45_1, SHX46_1, SHX47_1)
SHX45_1 = ""
SHX46_1 = "~b~Customisation Menu"
SHX47_1 = CMG
SHX47_1 = SHX47_1.getRageUIMenuWidth
SHX47_1 = SHX47_1()
SHX48_1 = CMG
SHX48_1 = SHX48_1.getRageUIMenuHeight
SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1 = SHX48_1()
SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1 = SHX43_1(SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1)
SHX40_1(SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1)
SHX40_1 = RMenu
SHX40_1 = SHX40_1.Add
SHX41_1 = "cmghouses"
SHX42_1 = "keysharing"
SHX43_1 = RageUI
SHX43_1 = SHX43_1.CreateSubMenu
SHX44_1 = RMenu
SHX45_1 = SHX44_1
SHX44_1 = SHX44_1.Get
SHX46_1 = "cmghouses"
SHX47_1 = "exit"
SHX44_1 = SHX44_1(SHX45_1, SHX46_1, SHX47_1)
SHX45_1 = ""
SHX46_1 = "~b~House Keys"
SHX47_1 = CMG
SHX47_1 = SHX47_1.getRageUIMenuWidth
SHX47_1 = SHX47_1()
SHX48_1 = CMG
SHX48_1 = SHX48_1.getRageUIMenuHeight
SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1 = SHX48_1()
SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1 = SHX43_1(SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1)
SHX40_1(SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1)
SHX40_1 = RMenu
SHX40_1 = SHX40_1.Add
SHX41_1 = "cmghouses"
SHX42_1 = "rentmanager"
SHX43_1 = RageUI
SHX43_1 = SHX43_1.CreateSubMenu
SHX44_1 = RMenu
SHX45_1 = SHX44_1
SHX44_1 = SHX44_1.Get
SHX46_1 = "cmghouses"
SHX47_1 = "mainmenu"
SHX44_1 = SHX44_1(SHX45_1, SHX46_1, SHX47_1)
SHX45_1 = ""
SHX46_1 = "~b~Rent Management Menu"
SHX47_1 = CMG
SHX47_1 = SHX47_1.getRageUIMenuWidth
SHX47_1 = SHX47_1()
SHX48_1 = CMG
SHX48_1 = SHX48_1.getRageUIMenuHeight
SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1 = SHX48_1()
SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1 = SHX43_1(SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1)
SHX40_1(SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1)
SHX40_1 = RMenu
SHX40_1 = SHX40_1.Add
SHX41_1 = "cmghouses"
SHX42_1 = "rentedout"
SHX43_1 = RageUI
SHX43_1 = SHX43_1.CreateSubMenu
SHX44_1 = RMenu
SHX45_1 = SHX44_1
SHX44_1 = SHX44_1.Get
SHX46_1 = "cmghouses"
SHX47_1 = "rentmanager"
SHX44_1 = SHX44_1(SHX45_1, SHX46_1, SHX47_1)
SHX45_1 = ""
SHX46_1 = "~b~Houses Rented Out"
SHX47_1 = CMG
SHX47_1 = SHX47_1.getRageUIMenuWidth
SHX47_1 = SHX47_1()
SHX48_1 = CMG
SHX48_1 = SHX48_1.getRageUIMenuHeight
SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1 = SHX48_1()
SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1 = SHX43_1(SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1)
SHX40_1(SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1)
SHX40_1 = RMenu
SHX40_1 = SHX40_1.Add
SHX41_1 = "cmghouses"
SHX42_1 = "rentedin"
SHX43_1 = RageUI
SHX43_1 = SHX43_1.CreateSubMenu
SHX44_1 = RMenu
SHX45_1 = SHX44_1
SHX44_1 = SHX44_1.Get
SHX46_1 = "cmghouses"
SHX47_1 = "rentmanager"
SHX44_1 = SHX44_1(SHX45_1, SHX46_1, SHX47_1)
SHX45_1 = ""
SHX46_1 = "~b~Houses Renting"
SHX47_1 = CMG
SHX47_1 = SHX47_1.getRageUIMenuWidth
SHX47_1 = SHX47_1()
SHX48_1 = CMG
SHX48_1 = SHX48_1.getRageUIMenuHeight
SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1 = SHX48_1()
SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1 = SHX43_1(SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1)
SHX40_1(SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1)
SHX40_1 = RMenu
SHX40_1 = SHX40_1.Add
SHX41_1 = "cmghouses"
SHX42_1 = "rentedinfo"
SHX43_1 = RageUI
SHX43_1 = SHX43_1.CreateSubMenu
SHX44_1 = RMenu
SHX45_1 = SHX44_1
SHX44_1 = SHX44_1.Get
SHX46_1 = "cmghouses"
SHX47_1 = "rentmanager"
SHX44_1 = SHX44_1(SHX45_1, SHX46_1, SHX47_1)
SHX45_1 = ""
SHX46_1 = "~b~Houses Rent Info"
SHX47_1 = CMG
SHX47_1 = SHX47_1.getRageUIMenuWidth
SHX47_1 = SHX47_1()
SHX48_1 = CMG
SHX48_1 = SHX48_1.getRageUIMenuHeight
SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1 = SHX48_1()
SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1 = SHX43_1(SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1)
SHX40_1(SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1)
SHX40_1 = RMenu
SHX40_1 = SHX40_1.Add
SHX41_1 = "cmghouses"
SHX42_1 = "paymentplanmanager"
SHX43_1 = RageUI
SHX43_1 = SHX43_1.CreateSubMenu
SHX44_1 = RMenu
SHX45_1 = SHX44_1
SHX44_1 = SHX44_1.Get
SHX46_1 = "cmghouses"
SHX47_1 = "mainmenu"
SHX44_1 = SHX44_1(SHX45_1, SHX46_1, SHX47_1)
SHX45_1 = ""
SHX46_1 = "~b~Payment Plan Management Menu"
SHX47_1 = CMG
SHX47_1 = SHX47_1.getRageUIMenuWidth
SHX47_1 = SHX47_1()
SHX48_1 = CMG
SHX48_1 = SHX48_1.getRageUIMenuHeight
SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1 = SHX48_1()
SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1 = SHX43_1(SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1)
SHX40_1(SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1)
SHX40_1 = RMenu
SHX40_1 = SHX40_1.Add
SHX41_1 = "cmghouses"
SHX42_1 = "paymentplanout"
SHX43_1 = RageUI
SHX43_1 = SHX43_1.CreateSubMenu
SHX44_1 = RMenu
SHX45_1 = SHX44_1
SHX44_1 = SHX44_1.Get
SHX46_1 = "cmghouses"
SHX47_1 = "paymentplanmanager"
SHX44_1 = SHX44_1(SHX45_1, SHX46_1, SHX47_1)
SHX45_1 = ""
SHX46_1 = "~b~Houses Payment Planned Out"
SHX47_1 = CMG
SHX47_1 = SHX47_1.getRageUIMenuWidth
SHX47_1 = SHX47_1()
SHX48_1 = CMG
SHX48_1 = SHX48_1.getRageUIMenuHeight
SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1 = SHX48_1()
SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1 = SHX43_1(SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1)
SHX40_1(SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1)
SHX40_1 = RMenu
SHX40_1 = SHX40_1.Add
SHX41_1 = "cmghouses"
SHX42_1 = "paymentplanin"
SHX43_1 = RageUI
SHX43_1 = SHX43_1.CreateSubMenu
SHX44_1 = RMenu
SHX45_1 = SHX44_1
SHX44_1 = SHX44_1.Get
SHX46_1 = "cmghouses"
SHX47_1 = "paymentplanmanager"
SHX44_1 = SHX44_1(SHX45_1, SHX46_1, SHX47_1)
SHX45_1 = ""
SHX46_1 = "~b~Houses Payment Planned In"
SHX47_1 = CMG
SHX47_1 = SHX47_1.getRageUIMenuWidth
SHX47_1 = SHX47_1()
SHX48_1 = CMG
SHX48_1 = SHX48_1.getRageUIMenuHeight
SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1 = SHX48_1()
SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1 = SHX43_1(SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1)
SHX40_1(SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1)
SHX40_1 = RMenu
SHX40_1 = SHX40_1.Add
SHX41_1 = "cmghouses"
SHX42_1 = "paymentplansummary"
SHX43_1 = RageUI
SHX43_1 = SHX43_1.CreateSubMenu
SHX44_1 = RMenu
SHX45_1 = SHX44_1
SHX44_1 = SHX44_1.Get
SHX46_1 = "cmghouses"
SHX47_1 = "paymentplanmanager"
SHX44_1 = SHX44_1(SHX45_1, SHX46_1, SHX47_1)
SHX45_1 = ""
SHX46_1 = "~b~Payment Plan Summary"
SHX47_1 = CMG
SHX47_1 = SHX47_1.getRageUIMenuWidth
SHX47_1 = SHX47_1()
SHX48_1 = CMG
SHX48_1 = SHX48_1.getRageUIMenuHeight
SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1 = SHX48_1()
SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1 = SHX43_1(SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1)
SHX40_1(SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1)
SHX40_1 = RMenu
SHX40_1 = SHX40_1.Add
SHX41_1 = "cmghouses"
SHX42_1 = "paymentplaninfo"
SHX43_1 = RageUI
SHX43_1 = SHX43_1.CreateSubMenu
SHX44_1 = RMenu
SHX45_1 = SHX44_1
SHX44_1 = SHX44_1.Get
SHX46_1 = "cmghouses"
SHX47_1 = "paymentplanin"
SHX44_1 = SHX44_1(SHX45_1, SHX46_1, SHX47_1)
SHX45_1 = ""
SHX46_1 = "~b~Houses Payment Plan Info"
SHX47_1 = CMG
SHX47_1 = SHX47_1.getRageUIMenuWidth
SHX47_1 = SHX47_1()
SHX48_1 = CMG
SHX48_1 = SHX48_1.getRageUIMenuHeight
SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1 = SHX48_1()
SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1 = SHX43_1(SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1)
SHX40_1(SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1)
SHX40_1 = RMenu
SHX40_1 = SHX40_1.Add
SHX41_1 = "cmghouses"
SHX42_1 = "paymentplan"
SHX43_1 = RageUI
SHX43_1 = SHX43_1.CreateSubMenu
SHX44_1 = RMenu
SHX45_1 = SHX44_1
SHX44_1 = SHX44_1.Get
SHX46_1 = "cmghouses"
SHX47_1 = "mainmenu"
SHX44_1 = SHX44_1(SHX45_1, SHX46_1, SHX47_1)
SHX45_1 = ""
SHX46_1 = "~b~Payment Plan Menu"
SHX47_1 = CMG
SHX47_1 = SHX47_1.getRageUIMenuWidth
SHX47_1 = SHX47_1()
SHX48_1 = CMG
SHX48_1 = SHX48_1.getRageUIMenuHeight
SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1 = SHX48_1()
SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1 = SHX43_1(SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1)
SHX40_1(SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1)
SHX40_1 = RMenu
SHX40_1 = SHX40_1.Add
SHX41_1 = "cmghouses"
SHX42_1 = "paymentplanoffer"
SHX43_1 = RageUI
SHX43_1 = SHX43_1.CreateMenu
SHX44_1 = ""
SHX45_1 = "~b~Payment Plan Offer"
SHX46_1 = CMG
SHX46_1 = SHX46_1.getRageUIMenuWidth
SHX46_1 = SHX46_1()
SHX47_1 = CMG
SHX47_1 = SHX47_1.getRageUIMenuHeight
SHX47_1 = SHX47_1()
SHX48_1 = "cmg_homesui"
SHX49_1 = "cmg_homesui"
SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1 = SHX43_1(SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1)
SHX40_1(SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1)
function SHX40_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX1_1
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX1_2 = true
    return SHX1_2
  else
    SHX1_2 = false
    return SHX1_2
  end
end
SHX41_1 = RageUI
SHX41_1 = SHX41_1.CreateWhile
SHX42_1 = 1.0
SHX43_1 = RMenu
SHX44_1 = SHX43_1
SHX43_1 = SHX43_1.Get
SHX45_1 = "cmghouses"
SHX46_1 = "mainmenu"
SHX43_1 = SHX43_1(SHX44_1, SHX45_1, SHX46_1)
SHX44_1 = nil
function SHX45_1()
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
  SHX3_2 = "cmghouses"
  SHX4_2 = "mainmenu"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3
    SHX0_3 = SHX0_1
    if nil ~= SHX0_3 then
      SHX0_3 = SHX10_1.homes
      if nil ~= SHX0_3 then
        SHX0_3 = pairs
        SHX1_3 = SHX10_1.homes
        SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
        for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
          SHX6_3 = SHX0_1
          if SHX6_3 == SHX4_3 then
            SHX6_3 = SHX5_3.groupPermission
            SHX6_3 = nil ~= SHX6_3
            SHX7_3 = RMenu
            SHX8_3 = SHX7_3
            SHX7_3 = SHX7_3.Get
            SHX9_3 = "cmghouses"
            SHX10_3 = "mainmenu"
            SHX7_3 = SHX7_3(SHX8_3, SHX9_3, SHX10_3)
            SHX8_3 = SHX7_3
            SHX7_3 = SHX7_3.SetSubtitle
            SHX9_3 = "~b~"
            SHX10_3 = SHX4_3
            SHX9_3 = SHX9_3 .. SHX10_3
            SHX7_3(SHX8_3, SHX9_3)
            SHX7_3 = RMenu
            SHX8_3 = SHX7_3
            SHX7_3 = SHX7_3.Get
            SHX9_3 = "cmghouses"
            SHX10_3 = "exit"
            SHX7_3 = SHX7_3(SHX8_3, SHX9_3, SHX10_3)
            SHX8_3 = SHX7_3
            SHX7_3 = SHX7_3.SetSubtitle
            SHX9_3 = "~b~"
            SHX10_3 = SHX4_3
            SHX9_3 = SHX9_3 .. SHX10_3
            SHX7_3(SHX8_3, SHX9_3)
            SHX7_3 = SHX5_3.ownerString
            if SHX7_3 then
              SHX7_3 = SHX5_3.ownerString
              if "For sale." == SHX7_3 and not SHX6_3 then
                SHX7_3 = RageUI
                SHX7_3 = SHX7_3.ButtonWithStyle
                SHX8_3 = "Purchase House"
                SHX9_3 = ""
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
                  
                  local SHX3_4, SHX4_4, SHX5_4
                  if SHX2_4 then
                    SHX3_4 = TriggerServerEvent
                    SHX4_4 = "bb91b31e79"
                    SHX5_4 = SHX4_3
                    SHX3_4(SHX4_4, SHX5_4)
                  end
                end
                SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
                SHX7_3 = RageUI
                SHX7_3 = SHX7_3.ButtonWithStyle
                SHX8_3 = "Preview House"
                SHX9_3 = ""
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
                  
                  local SHX3_4, SHX4_4, SHX5_4
                  if SHX2_4 then
                    SHX3_4 = TriggerServerEvent
                    SHX4_4 = "3ebcdeb3aa"
                    SHX5_4 = SHX4_3
                    SHX3_4(SHX4_4, SHX5_4)
                  end
                end
                SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
              end
            else
              SHX7_3 = SHX40_1
              SHX8_3 = SHX4_3
              SHX7_3 = SHX7_3(SHX8_3)
              if SHX7_3 then
                SHX7_3 = RageUI
                SHX7_3 = SHX7_3.ButtonWithStyle
                SHX8_3 = "Enter House"
                SHX9_3 = "Enter this home"
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
                  
                  local SHX3_4, SHX4_4, SHX5_4
                  if SHX2_4 then
                    SHX3_4 = CMG
                    SHX3_4 = SHX3_4.inEvent
                    SHX3_4 = SHX3_4()
                    if not SHX3_4 then
                      SHX3_4 = CMG
                      SHX3_4 = SHX3_4.isCarrying
                      SHX3_4 = SHX3_4()
                      if SHX3_4 then
                        SHX3_4 = notify
                        SHX4_4 = "~r~You can not carry someone into a home."
                        SHX3_4(SHX4_4)
                        return
                      end
                      SHX3_4 = TriggerServerEvent
                      SHX4_4 = "8d3bd0f017"
                      SHX5_4 = SHX4_3
                      SHX3_4(SHX4_4, SHX5_4)
                    end
                  end
                end
                SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
                if SHX6_3 then
                  SHX7_3 = {}
                  if SHX7_3 then
                    goto SHX_LABEL_92
                  end
                end
                SHX7_3 = {}
                SHX7_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
                -- [FIX IF ERROR] Move ::SHX_LABEL_92:: outside nested blocks until all 'goto SHX_LABEL_92' can see it
                ::SHX_LABEL_92::
                SHX8_3 = RageUI
                SHX8_3 = SHX8_3.ButtonWithStyle
                SHX9_3 = "Sell House to Player"
                SHX10_3 = ""
                SHX11_3 = SHX7_3
                SHX12_3 = not SHX6_3
                function SHX13_3(SHX0_4, SHX1_4, SHX2_4)
                  -- [AI CLEANUP] Decompiled Lua - Fix these:
                  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                  -- 3. Replace goto/label with while/repeat-until where possible
                  -- 4. Remove decompiler comments, add meaningful ones
                  -- 5. Fix indentation and formatting
                  
                  local SHX3_4, SHX4_4, SHX5_4
                  if SHX2_4 then
                    SHX3_4 = CMG
                    SHX3_4 = SHX3_4.displaySellDisclaimer
                    SHX4_4 = "house"
                    function SHX5_4()
                      -- [AI CLEANUP] Decompiled Lua - Fix these:
                      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                      -- 3. Replace goto/label with while/repeat-until where possible
                      -- 4. Remove decompiler comments, add meaningful ones
                      -- 5. Fix indentation and formatting
                      
                      local SHX0_5, SHX1_5, SHX2_5
                      SHX0_5 = TriggerServerEvent
                      SHX1_5 = "258c3e6770"
                      SHX2_5 = SHX4_3
                      SHX0_5(SHX1_5, SHX2_5)
                    end
                    SHX3_4(SHX4_4, SHX5_4)
                  end
                end
                SHX8_3(SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3)
                SHX8_3 = RageUI
                SHX8_3 = SHX8_3.ButtonWithStyle
                SHX9_3 = "Rent House to Player"
                SHX10_3 = ""
                SHX11_3 = SHX7_3
                SHX12_3 = not SHX6_3
                function SHX13_3(SHX0_4, SHX1_4, SHX2_4)
                  -- [AI CLEANUP] Decompiled Lua - Fix these:
                  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                  -- 3. Replace goto/label with while/repeat-until where possible
                  -- 4. Remove decompiler comments, add meaningful ones
                  -- 5. Fix indentation and formatting
                  
                  local SHX3_4, SHX4_4, SHX5_4
                  if SHX2_4 then
                    SHX3_4 = TriggerServerEvent
                    SHX4_4 = "1037832668"
                    SHX5_4 = SHX4_3
                    SHX3_4(SHX4_4, SHX5_4)
                  end
                end
                SHX8_3(SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3)
                SHX8_3 = RageUI
                SHX8_3 = SHX8_3.ButtonWithStyle
                SHX9_3 = "Payment Plan House to Player"
                SHX10_3 = ""
                SHX11_3 = {}
                SHX11_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
                SHX12_3 = not SHX6_3
                function SHX13_3()
                  -- [AI CLEANUP] Decompiled Lua - Fix these:
                  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                  -- 3. Replace goto/label with while/repeat-until where possible
                  -- 4. Remove decompiler comments, add meaningful ones
                  -- 5. Fix indentation and formatting
                  
                  local SHX0_4, SHX1_4
                end
                SHX14_3 = RMenu
                SHX15_3 = SHX14_3
                SHX14_3 = SHX14_3.Get
                SHX16_3 = "cmghouses"
                SHX17_3 = "paymentplan"
                SHX14_3, SHX15_3, SHX16_3, SHX17_3 = SHX14_3(SHX15_3, SHX16_3, SHX17_3)
                SHX8_3(SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3)
              else
                SHX7_3 = RageUI
                SHX7_3 = SHX7_3.ButtonWithStyle
                SHX8_3 = "Ring Bell"
                SHX9_3 = ""
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
                  
                  local SHX3_4, SHX4_4, SHX5_4
                  if SHX2_4 then
                    SHX3_4 = GetGameTimer
                    SHX3_4 = SHX3_4()
                    SHX4_4 = SHX6_1
                    SHX3_4 = SHX3_4 - SHX4_4
                    SHX4_4 = 15000
                    if SHX3_4 > SHX4_4 then
                      SHX3_4 = CMG
                      SHX3_4 = SHX3_4.inEvent
                      SHX3_4 = SHX3_4()
                      if not SHX3_4 then
                        SHX3_4 = GetGameTimer
                        SHX3_4 = SHX3_4()
                        SHX6_1 = SHX3_4
                        SHX3_4 = TriggerServerEvent
                        SHX4_4 = "8d3bd0f017"
                        SHX5_4 = SHX4_3
                        SHX3_4(SHX4_4, SHX5_4)
                      end
                    end
                  end
                end
                SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
                SHX7_3 = CMG
                SHX7_3 = SHX7_3.hasClientPermission
                SHX8_3 = "police.onduty.permission"
                SHX7_3 = SHX7_3(SHX8_3)
                if SHX7_3 then
                  SHX7_3 = RageUI
                  SHX7_3 = SHX7_3.ButtonWithStyle
                  SHX8_3 = "Raid House"
                  SHX9_3 = "~b~MET Police Raid"
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
                    
                    local SHX3_4, SHX4_4, SHX5_4
                    if SHX2_4 then
                      SHX3_4 = TriggerServerEvent
                      SHX4_4 = "ef7ba975cf"
                      SHX5_4 = SHX4_3
                      SHX3_4(SHX4_4, SHX5_4)
                    end
                  end
                  SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
                end
                SHX7_3 = CMG
                SHX7_3 = SHX7_3.hasClientPermission
                SHX8_3 = "police.onduty.permission"
                SHX7_3 = SHX7_3(SHX8_3)
                if not SHX7_3 then
                  SHX7_3 = RageUI
                  SHX7_3 = SHX7_3.ButtonWithStyle
                  SHX8_3 = "House Robbery"
                  SHX9_3 = "~r~Break into this house"
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
                    
                    local SHX3_4, SHX4_4, SHX5_4
                    if SHX2_4 then
                      SHX3_4 = CMG
                      SHX3_4 = SHX3_4.inEvent
                      SHX3_4 = SHX3_4()
                      if not SHX3_4 then
                        SHX3_4 = TriggerServerEvent
                        SHX4_4 = "0317b3f2cf"
                        SHX5_4 = SHX4_3
                        SHX3_4(SHX4_4, SHX5_4)
                      end
                    end
                  end
                  SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
                end
              end
            end
            SHX7_3 = RageUI
            SHX7_3 = SHX7_3.ButtonWithStyle
            SHX8_3 = "Rent Manager"
            SHX9_3 = "~y~Manage your rented out & renting houses here."
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
                SHX15_1 = SHX3_4
              end
            end
            SHX13_3 = RMenu
            SHX14_3 = SHX13_3
            SHX13_3 = SHX13_3.Get
            SHX15_3 = "cmghouses"
            SHX16_3 = "rentmanager"
            SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3 = SHX13_3(SHX14_3, SHX15_3, SHX16_3)
            SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3)
            SHX7_3 = RageUI
            SHX7_3 = SHX7_3.ButtonWithStyle
            SHX8_3 = "Payment Plan Manager"
            SHX9_3 = SHX0_1
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
              
            end
            SHX13_3 = RMenu
            SHX14_3 = SHX13_3
            SHX13_3 = SHX13_3.Get
            SHX15_3 = "cmghouses"
            SHX16_3 = "paymentplanmanager"
            SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3 = SHX13_3(SHX14_3, SHX15_3, SHX16_3)
            SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3)
            SHX7_3 = SHX11_1
            SHX7_3 = SHX7_3[SHX4_3]
            if SHX7_3 then
              SHX7_3 = SHX11_1
              SHX7_3 = SHX7_3[SHX4_3]
              if SHX7_3 > 0 then
                SHX7_3 = RageUI
                SHX7_3 = SHX7_3.ButtonWithStyle
                SHX8_3 = "~r~Pay Outstanding House tax"
                SHX9_3 = ""
                SHX10_3 = {}
                SHX11_3 = "\194\163"
                SHX12_3 = getMoneyStringFormatted
                SHX13_3 = SHX11_1
                SHX13_3 = SHX13_3[SHX4_3]
                SHX12_3 = SHX12_3(SHX13_3)
                SHX11_3 = SHX11_3 .. SHX12_3
                SHX10_3.RightLabel = SHX11_3
                SHX11_3 = true
                function SHX12_3(SHX0_4, SHX1_4, SHX2_4)
                  -- [AI CLEANUP] Decompiled Lua - Fix these:
                  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                  -- 3. Replace goto/label with while/repeat-until where possible
                  -- 4. Remove decompiler comments, add meaningful ones
                  -- 5. Fix indentation and formatting
                  
                  local SHX3_4, SHX4_4, SHX5_4
                  if SHX2_4 then
                    SHX3_4 = TriggerServerEvent
                    SHX4_4 = "d10c6d94a9"
                    SHX5_4 = SHX4_3
                    SHX3_4(SHX4_4, SHX5_4)
                  end
                end
                SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
              end
            end
            SHX7_3 = SHX17_1
            if SHX7_3 > 0 then
              SHX7_3 = RageUI
              SHX7_3 = SHX7_3.ButtonWithStyle
              SHX8_3 = "~g~Withdraw House Balance"
              SHX9_3 = ""
              SHX10_3 = {}
              SHX11_3 = "\194\163"
              SHX12_3 = getMoneyStringFormatted
              SHX13_3 = SHX17_1
              SHX12_3 = SHX12_3(SHX13_3)
              SHX11_3 = SHX11_3 .. SHX12_3
              SHX10_3.RightLabel = SHX11_3
              SHX11_3 = true
              function SHX12_3(SHX0_4, SHX1_4, SHX2_4)
                -- [AI CLEANUP] Decompiled Lua - Fix these:
                -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                -- 3. Replace goto/label with while/repeat-until where possible
                -- 4. Remove decompiler comments, add meaningful ones
                -- 5. Fix indentation and formatting
                
                local SHX3_4, SHX4_4, SHX5_4
                if SHX2_4 then
                  SHX3_4 = TriggerServerEvent
                  SHX4_4 = "623ae975a0"
                  SHX5_4 = SHX4_3
                  SHX3_4(SHX4_4, SHX5_4)
                end
              end
              SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
            end
          end
        end
      end
    end
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
  SHX3_2 = "cmghouses"
  SHX4_2 = "exit"
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
    SHX1_3 = "Exit Home"
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
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4
      if SHX2_4 then
        SHX3_4 = SHX4_1
        if SHX3_4 then
          SHX3_4 = tCMG
          SHX3_4 = SHX3_4.teleport
          SHX4_4 = SHX4_1.x
          SHX5_4 = SHX4_1.y
          SHX6_4 = SHX4_1.z
          SHX3_4(SHX4_4, SHX5_4, SHX6_4)
          SHX3_4 = TriggerEvent
          SHX4_4 = "4ee536e033"
          SHX3_4(SHX4_4)
          SHX3_4 = CMG
          SHX3_4 = SHX3_4.leaveActiveHouse
          SHX3_4()
        end
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "View Mail"
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
        SHX4_4 = "e980a2222d"
        SHX3_4(SHX4_4)
      end
    end
    SHX6_3 = RMenu
    SHX7_3 = SHX6_3
    SHX6_3 = SHX6_3.Get
    SHX8_3 = "cmghouses"
    SHX9_3 = "mail"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    SHX0_3 = table
    SHX0_3 = SHX0_3.count
    SHX1_3 = SHX19_1
    SHX0_3 = SHX0_3(SHX1_3)
    if SHX0_3 > 0 then
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.ButtonWithStyle
      SHX1_3 = "Customise Home"
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
      SHX8_3 = "cmghouses"
      SHX9_3 = "customise"
      SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    end
    SHX0_3 = SHX0_1
    if SHX0_3 then
      SHX0_3 = SHX10_1.homes
      SHX1_3 = SHX0_1
      SHX0_3 = SHX0_3[SHX1_3]
      SHX0_3 = SHX0_3.groupPermission
      if not SHX0_3 then
        SHX0_3 = RageUI
        SHX0_3 = SHX0_3.ButtonWithStyle
        SHX1_3 = "Key Sharing"
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
        SHX8_3 = "cmghouses"
        SHX9_3 = "keysharing"
        SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
      end
    end
    SHX0_3 = pairs
    SHX1_3 = SHX20_1
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
    for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      SHX6_3 = SHX5_3
      SHX6_3()
    end
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
  SHX3_2 = "cmghouses"
  SHX4_2 = "mail"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3
    SHX0_3 = pairs
    SHX1_3 = SHX13_1
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
    for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      SHX6_3 = SHX5_3.is_read
      SHX6_3 = 1 == SHX6_3
      if SHX6_3 then
        SHX7_3 = "~g~"
        if SHX7_3 then
          goto SHX_LABEL_16
        end
      end
      SHX7_3 = "~r~"
      -- [FIX IF ERROR] Move ::SHX_LABEL_16:: outside nested blocks until all 'goto SHX_LABEL_16' can see it
      ::SHX_LABEL_16::
      SHX8_3 = RageUI
      SHX8_3 = SHX8_3.ButtonWithStyle
      SHX9_3 = SHX7_3
      SHX10_3 = "Mail #"
      SHX11_3 = tostring
      SHX12_3 = SHX5_3.id
      SHX11_3 = SHX11_3(SHX12_3)
      if SHX6_3 then
        SHX12_3 = ""
        if SHX12_3 then
          goto SHX_LABEL_29
        end
      end
      SHX12_3 = " (Unread)"
      -- [FIX IF ERROR] Move ::SHX_LABEL_29:: outside nested blocks until all 'goto SHX_LABEL_29' can see it
      ::SHX_LABEL_29::
      SHX9_3 = SHX9_3 .. SHX10_3 .. SHX11_3 .. SHX12_3
      SHX10_3 = "Delivered at "
      SHX11_3 = SHX5_3.time_sent
      SHX10_3 = SHX10_3 .. SHX11_3
      SHX11_3 = {}
      SHX11_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
      SHX12_3 = true
      function SHX13_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4
        if SHX2_4 then
          SHX3_4 = SHX6_3
          if not SHX3_4 then
            SHX3_4 = TriggerServerEvent
            SHX4_4 = "b3c24b1ac2"
            SHX5_4 = SHX5_3.id
            SHX3_4(SHX4_4, SHX5_4)
            SHX5_3.is_read = 1
          end
          SHX3_4 = SHX5_3
          SHX14_1 = SHX3_4
        end
      end
      SHX14_3 = RMenu
      SHX15_3 = SHX14_3
      SHX14_3 = SHX14_3.Get
      SHX16_3 = "cmghouses"
      SHX17_3 = "mailinfo"
      SHX14_3, SHX15_3, SHX16_3, SHX17_3 = SHX14_3(SHX15_3, SHX16_3, SHX17_3)
      SHX8_3(SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3)
    end
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
  SHX3_2 = "cmghouses"
  SHX4_2 = "mailinfo"
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
    SHX0_3 = SHX14_1
    if not SHX0_3 then
      return
    end
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "Mail #"
    SHX2_3 = tostring
    SHX3_3 = SHX14_1.id
    SHX2_3 = SHX2_3(SHX3_3)
    SHX1_3 = SHX1_3 .. SHX2_3
    SHX0_3(SHX1_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "Delivered at "
    SHX2_3 = SHX14_1.time_sent
    SHX1_3 = SHX1_3 .. SHX2_3
    SHX0_3(SHX1_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "Signed by "
    SHX2_3 = SHX14_1.signature
    SHX1_3 = SHX1_3 .. SHX2_3
    SHX0_3(SHX1_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.FakeButtonWithStyle
    SHX1_3 = ""
    SHX2_3 = SHX14_1.content
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
  SHX3_2 = "cmghouses"
  SHX4_2 = "customise"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3
    SHX0_3 = pairs
    SHX1_3 = SHX19_1
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
        
        local SHX3_4
        if SHX2_4 then
          SHX3_4 = SHX5_3
          SHX21_1 = SHX3_4
        end
      end
      SHX12_3 = RMenu
      SHX13_3 = SHX12_3
      SHX12_3 = SHX12_3.Get
      SHX14_3 = "cmghouses"
      SHX15_3 = "customisecallback"
      SHX12_3, SHX13_3, SHX14_3, SHX15_3 = SHX12_3(SHX13_3, SHX14_3, SHX15_3)
      SHX6_3(SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3)
    end
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
  SHX3_2 = "cmghouses"
  SHX4_2 = "keysharing"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3
    SHX0_3 = SHX12_1
    if SHX0_3 then
      SHX0_3 = SHX12_1
      SHX0_3 = #SHX0_3
      if SHX0_3 > 0 then
        SHX0_3 = drawNativeNotification
        SHX1_3 = string
        SHX1_3 = SHX1_3.format
        SHX2_3 = "Press ~INPUT_FRONTEND_ACCEPT~ to change Perm ID"
        SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3 = SHX1_3(SHX2_3)
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
        SHX0_3 = pairs
        SHX1_3 = SHX12_1
        SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
        for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
          SHX6_3 = RageUI
          SHX6_3 = SHX6_3.ButtonWithStyle
          SHX7_3 = string
          SHX7_3 = SHX7_3.format
          SHX8_3 = "Key %s"
          SHX9_3 = SHX4_3
          SHX7_3 = SHX7_3(SHX8_3, SHX9_3)
          SHX8_3 = ""
          SHX9_3 = {}
          SHX10_3 = tostring
          SHX11_3 = SHX5_3
          SHX10_3 = SHX10_3(SHX11_3)
          SHX9_3.RightLabel = SHX10_3
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
              SHX3_4 = CMG
              SHX3_4 = SHX3_4.clientPrompt
              SHX4_4 = "Enter Perm ID"
              SHX5_4 = ""
              function SHX6_4(SHX0_5)
                -- [AI CLEANUP] Decompiled Lua - Fix these:
                -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                -- 3. Replace goto/label with while/repeat-until where possible
                -- 4. Remove decompiler comments, add meaningful ones
                -- 5. Fix indentation and formatting
                
                local SHX1_5, SHX2_5, SHX3_5, SHX4_5, SHX5_5
                if SHX0_5 then
                  SHX1_5 = tonumber
                  SHX2_5 = SHX0_5
                  SHX1_5 = SHX1_5(SHX2_5)
                  if SHX1_5 then
                    SHX1_5 = tonumber
                    SHX2_5 = SHX0_5
                    SHX1_5 = SHX1_5(SHX2_5)
                    SHX2_5 = SHX5_3
                    if SHX1_5 ~= SHX2_5 then
                      SHX1_5 = tonumber
                      SHX2_5 = SHX0_5
                      SHX1_5 = SHX1_5(SHX2_5)
                      if SHX1_5 > 0 then
                        SHX1_5 = TriggerServerEvent
                        SHX2_5 = "bb2fc3919a"
                        SHX3_5 = SHX4_3
                        SHX4_5 = tonumber
                        SHX5_5 = SHX0_5
                        SHX4_5, SHX5_5 = SHX4_5(SHX5_5)
                        SHX1_5(SHX2_5, SHX3_5, SHX4_5, SHX5_5)
                    end
                  end
                end
                else
                  SHX1_5 = notify
                  SHX2_5 = "~r~Perm ID must be a number and different."
                  SHX1_5(SHX2_5)
                end
              end
              SHX3_4(SHX4_4, SHX5_4, SHX6_4)
            end
          end
          SHX6_3(SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
        end
      end
    end
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "~y~Purchase Additional Key"
    SHX2_3 = ""
    SHX3_3 = {}
    SHX3_3.RightLabel = "\194\163250,000"
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
        SHX4_4 = "a7121d7960"
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
  SHX3_2 = "cmghouses"
  SHX4_2 = "customisecallback"
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
    
    local SHX0_3, SHX1_3
    SHX0_3 = SHX21_1
    if SHX0_3 then
      SHX0_3 = SHX21_1
      SHX0_3()
    end
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
  SHX3_2 = "cmghouses"
  SHX4_2 = "rentmanager"
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
    SHX1_3 = "Houses Rented Out"
    SHX2_3 = SHX15_1
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
      
    end
    SHX6_3 = RMenu
    SHX7_3 = SHX6_3
    SHX6_3 = SHX6_3.Get
    SHX8_3 = "cmghouses"
    SHX9_3 = "rentedout"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Houses Rented In"
    SHX2_3 = SHX15_1
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
      
    end
    SHX6_3 = RMenu
    SHX7_3 = SHX6_3
    SHX6_3 = SHX6_3.Get
    SHX8_3 = "cmghouses"
    SHX9_3 = "rentedin"
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
  SHX3_2 = "cmghouses"
  SHX4_2 = "rentedout"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3
    SHX0_3 = pairs
    SHX1_3 = SHX7_1
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
    for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      SHX6_3 = SHX5_3.homeName
      SHX7_3 = SHX5_3.rentedBy
      SHX8_3 = SHX5_3.hoursLeft
      SHX9_3 = RageUI
      SHX9_3 = SHX9_3.ButtonWithStyle
      SHX10_3 = SHX6_3
      SHX11_3 = "Rented to "
      SHX12_3 = SHX7_3
      SHX13_3 = " - "
      SHX14_3 = SHX8_3
      SHX15_3 = " hours left!"
      SHX11_3 = SHX11_3 .. SHX12_3 .. SHX13_3 .. SHX14_3 .. SHX15_3
      SHX12_3 = {}
      SHX12_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
      SHX13_3 = true
      function SHX14_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4
        if SHX2_4 then
          SHX3_4 = SHX5_3
          SHX9_1 = SHX3_4
          SHX9_1.type = "rentingout"
        end
      end
      SHX15_3 = RMenu
      SHX16_3 = SHX15_3
      SHX15_3 = SHX15_3.Get
      SHX17_3 = "cmghouses"
      SHX18_3 = "rentedinfo"
      SHX15_3, SHX16_3, SHX17_3, SHX18_3 = SHX15_3(SHX16_3, SHX17_3, SHX18_3)
      SHX9_3(SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3)
    end
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
  SHX3_2 = "cmghouses"
  SHX4_2 = "rentedin"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3
    SHX0_3 = pairs
    SHX1_3 = SHX8_1
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
    for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      SHX6_3 = SHX5_3.homeName
      SHX7_3 = SHX5_3.rentedBy
      SHX8_3 = SHX5_3.hoursLeft
      SHX9_3 = RageUI
      SHX9_3 = SHX9_3.ButtonWithStyle
      SHX10_3 = SHX6_3
      SHX11_3 = "Rented from "
      SHX12_3 = SHX7_3
      SHX13_3 = " - "
      SHX14_3 = SHX8_3
      SHX15_3 = " hours left!"
      SHX11_3 = SHX11_3 .. SHX12_3 .. SHX13_3 .. SHX14_3 .. SHX15_3
      SHX12_3 = {}
      SHX12_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
      SHX13_3 = true
      function SHX14_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4
        if SHX2_4 then
          SHX3_4 = SHX5_3
          SHX9_1 = SHX3_4
          SHX9_1.type = "rentingin"
        end
      end
      SHX15_3 = RMenu
      SHX16_3 = SHX15_3
      SHX15_3 = SHX15_3.Get
      SHX17_3 = "cmghouses"
      SHX18_3 = "rentedinfo"
      SHX15_3, SHX16_3, SHX17_3, SHX18_3 = SHX15_3(SHX16_3, SHX17_3, SHX18_3)
      SHX9_3(SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3)
    end
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
  SHX3_2 = "cmghouses"
  SHX4_2 = "rentedinfo"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
    SHX0_3 = SHX9_1.homeName
    SHX1_3 = SHX9_1.rentedBy
    SHX2_3 = SHX9_1.hoursLeft
    SHX3_3 = RageUI
    SHX3_3 = SHX3_3.Separator
    SHX4_3 = "~y~Rent Info"
    SHX3_3(SHX4_3)
    SHX3_3 = RageUI
    SHX3_3 = SHX3_3.Separator
    SHX4_3 = "---------"
    SHX3_3(SHX4_3)
    SHX3_3 = RageUI
    SHX3_3 = SHX3_3.Separator
    SHX4_3 = "House: "
    SHX5_3 = SHX0_3
    SHX4_3 = SHX4_3 .. SHX5_3
    SHX3_3(SHX4_3)
    SHX3_3 = RageUI
    SHX3_3 = SHX3_3.Separator
    SHX4_3 = "Rented from: "
    SHX5_3 = SHX1_3
    SHX4_3 = SHX4_3 .. SHX5_3
    SHX3_3(SHX4_3)
    SHX3_3 = RageUI
    SHX3_3 = SHX3_3.Separator
    SHX4_3 = "Hours Left: "
    SHX5_3 = SHX2_3
    SHX4_3 = SHX4_3 .. SHX5_3
    SHX3_3(SHX4_3)
    SHX3_3 = RageUI
    SHX3_3 = SHX3_3.ButtonWithStyle
    SHX4_3 = "Request Home Rent Cancellation"
    SHX5_3 = ""
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
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4
      if SHX2_4 then
        SHX3_4 = TriggerServerEvent
        SHX4_4 = "eb4522e277"
        SHX5_4 = SHX0_3
        SHX6_4 = SHX9_1.type
        SHX3_4(SHX4_4, SHX5_4, SHX6_4)
      end
    end
    SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
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
  SHX3_2 = "cmghouses"
  SHX4_2 = "paymentplanmanager"
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
    SHX1_3 = "Houses Payment Planned Out"
    SHX2_3 = SHX0_1
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
      
    end
    SHX6_3 = RMenu
    SHX7_3 = SHX6_3
    SHX6_3 = SHX6_3.Get
    SHX8_3 = "cmghouses"
    SHX9_3 = "paymentplanout"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Houses Payment Planned In"
    SHX2_3 = SHX0_1
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
      
    end
    SHX6_3 = RMenu
    SHX7_3 = SHX6_3
    SHX6_3 = SHX6_3.Get
    SHX8_3 = "cmghouses"
    SHX9_3 = "paymentplanin"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Payment Plan Summary"
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
        SHX4_4 = "6597895925"
        SHX3_4(SHX4_4)
      end
    end
    SHX6_3 = RMenu
    SHX7_3 = SHX6_3
    SHX6_3 = SHX6_3.Get
    SHX8_3 = "cmghouses"
    SHX9_3 = "paymentplansummary"
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
  SHX3_2 = "cmghouses"
  SHX4_2 = "paymentplan"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "~y~House: "
    SHX2_3 = SHX0_1
    SHX1_3 = SHX1_3 .. SHX2_3
    SHX0_3(SHX1_3)
    function SHX0_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
      SHX0_4 = SHX33_1
      SHX1_4 = SHX39_1
      SHX0_4 = SHX0_4 - SHX1_4
      return SHX0_4
    end
    function SHX1_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4, SHX2_4
      SHX0_4 = SHX37_1
      if SHX0_4 then
        SHX0_4 = math
        SHX0_4 = SHX0_4.ceil
        SHX1_4 = SHX0_3
        SHX1_4 = SHX1_4()
        SHX2_4 = SHX34_1
        SHX1_4 = SHX1_4 / SHX2_4
        SHX0_4 = SHX0_4(SHX1_4)
        SHX35_1 = SHX0_4
      else
        SHX0_4 = math
        SHX0_4 = SHX0_4.ceil
        SHX1_4 = SHX0_3
        SHX1_4 = SHX1_4()
        SHX2_4 = SHX35_1
        SHX1_4 = SHX1_4 / SHX2_4
        SHX0_4 = SHX0_4(SHX1_4)
        SHX34_1 = SHX0_4
        SHX0_4 = SHX34_1
        if SHX0_4 > 26 then
          SHX0_4 = 1
          SHX34_1 = SHX0_4
          SHX0_4 = true
          SHX37_1 = SHX0_4
          SHX0_4 = SHX1_3
          SHX0_4()
        end
      end
    end
    SHX2_3 = RageUI
    SHX2_3 = SHX2_3.ButtonWithStyle
    SHX3_3 = "Total Price"
    SHX4_3 = "The total amount of money that will have to be paid before ownership is transferred."
    SHX5_3 = {}
    SHX6_3 = "\194\163"
    SHX7_3 = getMoneyStringFormatted
    SHX8_3 = SHX33_1
    SHX7_3 = SHX7_3(SHX8_3)
    SHX6_3 = SHX6_3 .. SHX7_3
    SHX5_3.RightLabel = SHX6_3
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
        SHX3_4 = CMG
        SHX3_4 = SHX3_4.clientPrompt
        SHX4_4 = "Enter Total Price"
        SHX5_4 = ""
        function SHX6_4(SHX0_5)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX1_5, SHX2_5, SHX3_5, SHX4_5, SHX5_5
          SHX1_5 = tonumber
          SHX2_5 = SHX0_5
          SHX1_5 = SHX1_5(SHX2_5)
          if SHX1_5 then
            SHX2_5 = math
            SHX2_5 = SHX2_5.type
            SHX3_5 = SHX1_5
            SHX2_5 = SHX2_5(SHX3_5)
            if "integer" == SHX2_5 then
              SHX2_5 = 10000
              if SHX1_5 >= SHX2_5 then
                SHX2_5 = 10000000000
                if SHX1_5 <= SHX2_5 then
                  SHX33_1 = SHX1_5
                  SHX2_5 = math
                  SHX2_5 = SHX2_5.min
                  SHX3_5 = SHX39_1
                  SHX4_5 = math
                  SHX4_5 = SHX4_5.floor
                  SHX5_5 = SHX1_5 / 2
                  SHX4_5, SHX5_5 = SHX4_5(SHX5_5)
                  SHX2_5 = SHX2_5(SHX3_5, SHX4_5, SHX5_5)
                  SHX39_1 = SHX2_5
                  SHX2_5 = SHX1_3
                  SHX2_5()
              end
            end
          end
          else
            SHX2_5 = notify
            SHX3_5 = "~r~Total price must be a whole number between \194\16310,000 and \194\16310,000,000,000."
            SHX2_5(SHX3_5)
          end
        end
        SHX3_4(SHX4_4, SHX5_4, SHX6_4)
      end
    end
    SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    SHX2_3 = RageUI
    SHX2_3 = SHX2_3.ButtonWithStyle
    SHX3_3 = "Weeks To Pay"
    SHX4_3 = "The amount of weeks the player has to pay off the plan. Automatically calculated if Pay Amount Per Week is set."
    SHX5_3 = {}
    SHX6_3 = tostring
    SHX7_3 = SHX34_1
    SHX6_3 = SHX6_3(SHX7_3)
    SHX7_3 = " week"
    SHX8_3 = SHX34_1
    if SHX8_3 > 1 then
      SHX8_3 = "s"
      if SHX8_3 then
        goto SHX_LABEL_41
      end
    end
    SHX8_3 = ""
    -- [FIX IF ERROR] Move ::SHX_LABEL_41:: outside nested blocks until all 'goto SHX_LABEL_41' can see it
    ::SHX_LABEL_41::
    SHX6_3 = SHX6_3 .. SHX7_3 .. SHX8_3
    SHX5_3.RightLabel = SHX6_3
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
        SHX3_4 = CMG
        SHX3_4 = SHX3_4.clientPrompt
        SHX4_4 = "Enter Weeks To Pay"
        SHX5_4 = ""
        function SHX6_4(SHX0_5)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX1_5, SHX2_5, SHX3_5
          SHX1_5 = tonumber
          SHX2_5 = SHX0_5
          SHX1_5 = SHX1_5(SHX2_5)
          if SHX1_5 then
            SHX2_5 = math
            SHX2_5 = SHX2_5.type
            SHX3_5 = SHX1_5
            SHX2_5 = SHX2_5(SHX3_5)
            if "integer" == SHX2_5 and SHX1_5 >= 1 and SHX1_5 <= 26 then
              SHX34_1 = SHX1_5
              SHX2_5 = math
              SHX2_5 = SHX2_5.ceil
              SHX3_5 = SHX0_3
              SHX3_5 = SHX3_5()
              SHX3_5 = SHX3_5 / SHX1_5
              SHX2_5 = SHX2_5(SHX3_5)
              SHX35_1 = SHX2_5
              SHX2_5 = true
              SHX37_1 = SHX2_5
          end
          else
            SHX2_5 = notify
            SHX3_5 = "~r~Total amount of weeks must be a whole number between 1 week and 26 weeks."
            SHX2_5(SHX3_5)
          end
        end
        SHX3_4(SHX4_4, SHX5_4, SHX6_4)
      end
    end
    SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    SHX2_3 = RageUI
    SHX2_3 = SHX2_3.ButtonWithStyle
    SHX3_3 = "Pay Amount Per Week"
    SHX4_3 = "The amount of money to pay each week. Automatically calculated if Weekly Pay Amount is set."
    SHX5_3 = {}
    SHX6_3 = "\194\163"
    SHX7_3 = getMoneyStringFormatted
    SHX8_3 = SHX35_1
    SHX7_3 = SHX7_3(SHX8_3)
    SHX6_3 = SHX6_3 .. SHX7_3
    SHX5_3.RightLabel = SHX6_3
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
        SHX3_4 = CMG
        SHX3_4 = SHX3_4.clientPrompt
        SHX4_4 = "Enter Amount Per Week"
        SHX5_4 = ""
        function SHX6_4(SHX0_5)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX1_5, SHX2_5, SHX3_5, SHX4_5, SHX5_5, SHX6_5, SHX7_5
          SHX1_5 = tonumber
          SHX2_5 = SHX0_5
          SHX1_5 = SHX1_5(SHX2_5)
          if SHX1_5 then
            SHX2_5 = math
            SHX2_5 = SHX2_5.type
            SHX3_5 = SHX1_5
            SHX2_5 = SHX2_5(SHX3_5)
            if "integer" == SHX2_5 then
              SHX2_5 = math
              SHX2_5 = SHX2_5.ceil
              SHX3_5 = SHX0_3
              SHX3_5 = SHX3_5()
              SHX3_5 = SHX3_5 / 26
              SHX2_5 = SHX2_5(SHX3_5)
              if SHX1_5 >= SHX2_5 then
                SHX2_5 = SHX0_3
                SHX2_5 = SHX2_5()
                if SHX1_5 <= SHX2_5 then
                  SHX35_1 = SHX1_5
                  SHX2_5 = math
                  SHX2_5 = SHX2_5.ceil
                  SHX3_5 = SHX0_3
                  SHX3_5 = SHX3_5()
                  SHX3_5 = SHX3_5 / SHX1_5
                  SHX2_5 = SHX2_5(SHX3_5)
                  SHX34_1 = SHX2_5
                  SHX2_5 = false
                  SHX37_1 = SHX2_5
              end
            end
          end
          else
            SHX2_5 = notify
            SHX3_5 = "~r~Pay amount per week must be a whole number between \194\163"
            SHX4_5 = getMoneyStringFormatted
            SHX5_5 = math
            SHX5_5 = SHX5_5.ceil
            SHX6_5 = SHX0_3
            SHX6_5 = SHX6_5()
            SHX6_5 = SHX6_5 / 26
            SHX5_5, SHX6_5, SHX7_5 = SHX5_5(SHX6_5)
            SHX4_5 = SHX4_5(SHX5_5, SHX6_5, SHX7_5)
            SHX5_5 = " and \194\163"
            SHX6_5 = getMoneyStringFormatted
            SHX7_5 = SHX0_3
            SHX7_5 = SHX7_5()
            SHX6_5 = SHX6_5(SHX7_5)
            SHX7_5 = "."
            SHX3_5 = SHX3_5 .. SHX4_5 .. SHX5_5 .. SHX6_5 .. SHX7_5
            SHX2_5(SHX3_5)
          end
        end
        SHX3_4(SHX4_4, SHX5_4, SHX6_4)
      end
    end
    SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    SHX2_3 = RageUI
    SHX2_3 = SHX2_3.ButtonWithStyle
    SHX3_3 = "Maximum Missed Payments"
    SHX4_3 = "The maximum amount of missed payments in weeks allowed before the payment plan is automatically cancelled."
    SHX5_3 = {}
    SHX6_3 = tostring
    SHX7_3 = SHX36_1
    SHX6_3 = SHX6_3(SHX7_3)
    SHX7_3 = " week"
    SHX8_3 = SHX36_1
    if SHX8_3 > 1 then
      SHX8_3 = "s"
      if SHX8_3 then
        goto SHX_LABEL_78
      end
    end
    SHX8_3 = ""
    -- [FIX IF ERROR] Move ::SHX_LABEL_78:: outside nested blocks until all 'goto SHX_LABEL_78' can see it
    ::SHX_LABEL_78::
    SHX6_3 = SHX6_3 .. SHX7_3 .. SHX8_3
    SHX5_3.RightLabel = SHX6_3
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
        SHX3_4 = CMG
        SHX3_4 = SHX3_4.clientPrompt
        SHX4_4 = "Enter Maximum Missed Payments"
        SHX5_4 = ""
        function SHX6_4(SHX0_5)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX1_5, SHX2_5, SHX3_5
          SHX1_5 = tonumber
          SHX2_5 = SHX0_5
          SHX1_5 = SHX1_5(SHX2_5)
          if SHX1_5 then
            SHX2_5 = math
            SHX2_5 = SHX2_5.type
            SHX3_5 = SHX1_5
            SHX2_5 = SHX2_5(SHX3_5)
            if "integer" == SHX2_5 and SHX1_5 >= 1 and SHX1_5 <= 4 then
              SHX36_1 = SHX1_5
          end
          else
            SHX2_5 = notify
            SHX3_5 = "~r~Total price must be a whole number between 1 week and 4 weeks."
            SHX2_5(SHX3_5)
          end
        end
        SHX3_4(SHX4_4, SHX5_4, SHX6_4)
      end
    end
    SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    SHX2_3 = RageUI
    SHX2_3 = SHX2_3.ButtonWithStyle
    SHX3_3 = "Initial Deposit"
    SHX4_3 = "The amount that has to be paid when accepting the offer. Counts towards the total."
    SHX5_3 = {}
    SHX6_3 = "\194\163"
    SHX7_3 = getMoneyStringFormatted
    SHX8_3 = SHX39_1
    SHX7_3 = SHX7_3(SHX8_3)
    SHX6_3 = SHX6_3 .. SHX7_3
    SHX5_3.RightLabel = SHX6_3
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
        SHX3_4 = CMG
        SHX3_4 = SHX3_4.clientPrompt
        SHX4_4 = "Enter Initial Deposit"
        SHX5_4 = ""
        function SHX6_4(SHX0_5)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX1_5, SHX2_5, SHX3_5, SHX4_5, SHX5_5, SHX6_5
          SHX1_5 = tonumber
          SHX2_5 = SHX0_5
          SHX1_5 = SHX1_5(SHX2_5)
          if SHX1_5 then
            SHX2_5 = math
            SHX2_5 = SHX2_5.type
            SHX3_5 = SHX1_5
            SHX2_5 = SHX2_5(SHX3_5)
            if "integer" == SHX2_5 and SHX1_5 >= 0 then
              SHX2_5 = SHX33_1
              SHX2_5 = SHX2_5 / 2
              if SHX1_5 <= SHX2_5 then
                SHX39_1 = SHX1_5
                SHX2_5 = SHX1_3
                SHX2_5()
            end
          end
          else
            SHX2_5 = notify
            SHX3_5 = "~r~Initial deposit must be a whole number between \194\1630 and \194\163"
            SHX4_5 = getMoneyStringFormatted
            SHX5_5 = math
            SHX5_5 = SHX5_5.floor
            SHX6_5 = SHX33_1
            SHX6_5 = SHX6_5 / 2
            SHX5_5, SHX6_5 = SHX5_5(SHX6_5)
            SHX4_5 = SHX4_5(SHX5_5, SHX6_5)
            SHX5_5 = "."
            SHX3_5 = SHX3_5 .. SHX4_5 .. SHX5_5
            SHX2_5(SHX3_5)
          end
        end
        SHX3_4(SHX4_4, SHX5_4, SHX6_4)
      end
    end
    SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    SHX2_3 = RageUI
    SHX2_3 = SHX2_3.ButtonWithStyle
    SHX3_3 = "~g~Submit To Nearby"
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
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4
      if SHX2_4 then
        SHX3_4 = TriggerServerEvent
        SHX4_4 = "f36e68f91d"
        SHX5_4 = SHX0_1
        SHX6_4 = SHX33_1
        SHX7_4 = SHX34_1
        SHX8_4 = SHX36_1
        SHX9_4 = SHX39_1
        SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4)
      end
    end
    SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
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
  SHX3_2 = "cmghouses"
  SHX4_2 = "paymentplanoffer"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
    SHX0_3 = SHX38_1
    if not SHX0_3 then
      return
    end
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "~y~House Offered: "
    SHX2_3 = SHX38_1.houseName
    SHX1_3 = SHX1_3 .. SHX2_3
    SHX0_3(SHX1_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Total Price"
    SHX2_3 = "The total amount of money that you will have to be pay before ownership is transferred."
    SHX3_3 = {}
    SHX4_3 = "\194\163"
    SHX5_3 = getMoneyStringFormatted
    SHX6_3 = SHX38_1.totalPrice
    SHX5_3 = SHX5_3(SHX6_3)
    SHX4_3 = SHX4_3 .. SHX5_3
    SHX3_3.RightLabel = SHX4_3
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
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Weeks To Pay"
    SHX2_3 = "The amount of weeks you have to pay off the plan."
    SHX3_3 = {}
    SHX4_3 = tostring
    SHX5_3 = SHX38_1.numWeeks
    SHX4_3 = SHX4_3(SHX5_3)
    SHX5_3 = " week"
    SHX6_3 = SHX38_1.numWeeks
    if SHX6_3 > 1 then
      SHX6_3 = "s"
      if SHX6_3 then
        goto SHX_LABEL_43
      end
    end
    SHX6_3 = ""
    -- [FIX IF ERROR] Move ::SHX_LABEL_43:: outside nested blocks until all 'goto SHX_LABEL_43' can see it
    ::SHX_LABEL_43::
    SHX4_3 = SHX4_3 .. SHX5_3 .. SHX6_3
    SHX3_3.RightLabel = SHX4_3
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
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = SHX38_1.totalPrice
    SHX1_3 = SHX38_1.initialDeposit
    SHX0_3 = SHX0_3 - SHX1_3
    SHX1_3 = math
    SHX1_3 = SHX1_3.ceil
    SHX2_3 = SHX38_1.numWeeks
    SHX2_3 = SHX0_3 / SHX2_3
    SHX1_3 = SHX1_3(SHX2_3)
    SHX2_3 = RageUI
    SHX2_3 = SHX2_3.ButtonWithStyle
    SHX3_3 = "Pay Amount Per Week"
    SHX4_3 = "The amount of money you have to pay each week."
    SHX5_3 = {}
    SHX6_3 = "\194\163"
    SHX7_3 = getMoneyStringFormatted
    SHX8_3 = SHX1_3
    SHX7_3 = SHX7_3(SHX8_3)
    SHX6_3 = SHX6_3 .. SHX7_3
    SHX5_3.RightLabel = SHX6_3
    SHX6_3 = true
    function SHX7_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    SHX2_3 = RageUI
    SHX2_3 = SHX2_3.ButtonWithStyle
    SHX3_3 = "Maximum Missed Payments"
    SHX4_3 = "The maximum amount of missed payments in weeks allowed before the payment plan is automatically cancelled."
    SHX5_3 = {}
    SHX6_3 = tostring
    SHX7_3 = SHX38_1.maxMissedWeeks
    SHX6_3 = SHX6_3(SHX7_3)
    SHX7_3 = " week"
    SHX8_3 = SHX38_1.maxMissedWeeks
    if SHX8_3 > 1 then
      SHX8_3 = "s"
      if SHX8_3 then
        goto SHX_LABEL_90
      end
    end
    SHX8_3 = ""
    -- [FIX IF ERROR] Move ::SHX_LABEL_90:: outside nested blocks until all 'goto SHX_LABEL_90' can see it
    ::SHX_LABEL_90::
    SHX6_3 = SHX6_3 .. SHX7_3 .. SHX8_3
    SHX5_3.RightLabel = SHX6_3
    SHX6_3 = true
    function SHX7_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    SHX2_3 = RageUI
    SHX2_3 = SHX2_3.ButtonWithStyle
    SHX3_3 = "Initial Deposit"
    SHX4_3 = "The amount that has to be paid when accepting the offer. Counts towards the total."
    SHX5_3 = {}
    SHX6_3 = "\194\163"
    SHX7_3 = getMoneyStringFormatted
    SHX8_3 = SHX38_1.initialDeposit
    SHX7_3 = SHX7_3(SHX8_3)
    SHX6_3 = SHX6_3 .. SHX7_3
    SHX5_3.RightLabel = SHX6_3
    SHX6_3 = true
    function SHX7_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    SHX2_3 = RageUI
    SHX2_3 = SHX2_3.ButtonWithStyle
    SHX3_3 = "~g~Accept Payment Plan"
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
      
      local SHX3_4, SHX4_4
      if SHX2_4 then
        SHX3_4 = nil
        SHX38_1 = SHX3_4
        SHX3_4 = TriggerServerEvent
        SHX4_4 = "8aa5908fd2"
        SHX3_4(SHX4_4)
        SHX3_4 = RageUI
        SHX3_4 = SHX3_4.CloseAll
        SHX3_4()
      end
    end
    SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
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
  SHX3_2 = "cmghouses"
  SHX4_2 = "paymentplansummary"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "~g~Estimated income of \194\163"
    SHX2_3 = getMoneyStringFormatted
    SHX3_3 = SHX32_1.income
    SHX2_3 = SHX2_3(SHX3_3)
    SHX3_3 = " per week"
    SHX1_3 = SHX1_3 .. SHX2_3 .. SHX3_3
    SHX0_3(SHX1_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "~y~Estimated outflow of \194\163"
    SHX2_3 = getMoneyStringFormatted
    SHX3_3 = SHX32_1.outcome
    SHX2_3 = SHX2_3(SHX3_3)
    SHX3_3 = " per week"
    SHX1_3 = SHX1_3 .. SHX2_3 .. SHX3_3
    SHX0_3(SHX1_3)
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
  SHX3_2 = "cmghouses"
  SHX4_2 = "paymentplanout"
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
    SHX0_3 = pairs
    SHX1_3 = SHX29_1
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
    for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      SHX6_3 = SHX5_3.houseName
      SHX7_3 = SHX5_3.paymentPlannedBy
      SHX8_3 = RageUI
      SHX8_3 = SHX8_3.ButtonWithStyle
      SHX9_3 = SHX6_3
      SHX10_3 = "Payment Planned to "
      SHX11_3 = SHX7_3
      SHX10_3 = SHX10_3 .. SHX11_3
      SHX11_3 = {}
      SHX11_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
      SHX12_3 = true
      function SHX13_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4
        if SHX2_4 then
          SHX3_4 = nil
          SHX31_1 = SHX3_4
          SHX3_4 = TriggerServerEvent
          SHX4_4 = "8e0470d982"
          SHX5_4 = SHX5_3.houseName
          SHX3_4(SHX4_4, SHX5_4)
        end
      end
      SHX14_3 = RMenu
      SHX15_3 = SHX14_3
      SHX14_3 = SHX14_3.Get
      SHX16_3 = "cmghouses"
      SHX17_3 = "paymentplaninfo"
      SHX14_3, SHX15_3, SHX16_3, SHX17_3 = SHX14_3(SHX15_3, SHX16_3, SHX17_3)
      SHX8_3(SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3)
    end
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
  SHX3_2 = "cmghouses"
  SHX4_2 = "paymentplanin"
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
    SHX0_3 = pairs
    SHX1_3 = SHX30_1
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
    for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      SHX6_3 = SHX5_3.houseName
      SHX7_3 = SHX5_3.paymentPlannedBy
      SHX8_3 = RageUI
      SHX8_3 = SHX8_3.ButtonWithStyle
      SHX9_3 = SHX6_3
      SHX10_3 = "Payment Planned from "
      SHX11_3 = SHX7_3
      SHX10_3 = SHX10_3 .. SHX11_3
      SHX11_3 = {}
      SHX11_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
      SHX12_3 = true
      function SHX13_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4
        if SHX2_4 then
          SHX3_4 = nil
          SHX31_1 = SHX3_4
          SHX3_4 = TriggerServerEvent
          SHX4_4 = "8e0470d982"
          SHX5_4 = SHX5_3.houseName
          SHX3_4(SHX4_4, SHX5_4)
        end
      end
      SHX14_3 = RMenu
      SHX15_3 = SHX14_3
      SHX14_3 = SHX14_3.Get
      SHX16_3 = "cmghouses"
      SHX17_3 = "paymentplaninfo"
      SHX14_3, SHX15_3, SHX16_3, SHX17_3 = SHX14_3(SHX15_3, SHX16_3, SHX17_3)
      SHX8_3(SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3)
    end
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
  SHX3_2 = "cmghouses"
  SHX4_2 = "paymentplaninfo"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3
    SHX0_3 = SHX31_1
    if not SHX0_3 then
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Separator
      SHX1_3 = "~y~Fetching information..."
      SHX0_3(SHX1_3)
      return
    end
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "~y~House: "
    SHX2_3 = SHX31_1.houseName
    SHX1_3 = SHX1_3 .. SHX2_3
    SHX0_3(SHX1_3)
    SHX0_3 = SHX31_1.sellerUserId
    SHX1_3 = CMG
    SHX1_3 = SHX1_3.getClientUserId
    SHX1_3 = SHX1_3()
    SHX0_3 = SHX0_3 == SHX1_3
    if SHX0_3 then
      SHX1_3 = RageUI
      SHX1_3 = SHX1_3.Separator
      SHX2_3 = "~y~Buying Player: "
      SHX3_3 = SHX31_1.buyerName
      SHX4_3 = " ("
      SHX5_3 = tostring
      SHX6_3 = SHX31_1.buyerUserId
      SHX5_3 = SHX5_3(SHX6_3)
      SHX6_3 = ")"
      SHX2_3 = SHX2_3 .. SHX3_3 .. SHX4_3 .. SHX5_3 .. SHX6_3
      SHX1_3(SHX2_3)
    else
      SHX1_3 = RageUI
      SHX1_3 = SHX1_3.Separator
      SHX2_3 = "~y~Selling Player: "
      SHX3_3 = SHX31_1.sellerName
      SHX4_3 = " ("
      SHX5_3 = tostring
      SHX6_3 = SHX31_1.sellerUserId
      SHX5_3 = SHX5_3(SHX6_3)
      SHX6_3 = ")"
      SHX2_3 = SHX2_3 .. SHX3_3 .. SHX4_3 .. SHX5_3 .. SHX6_3
      SHX1_3(SHX2_3)
    end
    SHX1_3 = SHX31_1.hasPaidThisWeek
    if SHX1_3 then
      SHX1_3 = RageUI
      SHX1_3 = SHX1_3.Separator
      SHX2_3 = "~g~The payment for this week is completed!"
      SHX1_3(SHX2_3)
    else
      SHX1_3 = RageUI
      SHX1_3 = SHX1_3.Separator
      SHX2_3 = "~r~The payment for this week is outstanding."
      SHX1_3(SHX2_3)
    end
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.ButtonWithStyle
    SHX2_3 = "Total Price"
    SHX3_3 = "The total amount of money that has to be paid."
    SHX4_3 = {}
    SHX5_3 = "\194\163"
    SHX6_3 = getMoneyStringFormatted
    SHX7_3 = SHX31_1.totalPrice
    SHX6_3 = SHX6_3(SHX7_3)
    SHX5_3 = SHX5_3 .. SHX6_3
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
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.ButtonWithStyle
    SHX2_3 = "Amount Paid"
    SHX3_3 = "The amount of money that has been paid so far."
    SHX4_3 = {}
    SHX5_3 = "\194\163"
    SHX6_3 = getMoneyStringFormatted
    SHX7_3 = SHX31_1.amountPaid
    SHX6_3 = SHX6_3(SHX7_3)
    SHX5_3 = SHX5_3 .. SHX6_3
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
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.ButtonWithStyle
    SHX2_3 = "Weeks Remaining"
    SHX3_3 = "The amount of weeks left until the payment plan is paid off."
    SHX4_3 = {}
    SHX5_3 = tostring
    SHX6_3 = SHX31_1.weeksRemaining
    SHX5_3 = SHX5_3(SHX6_3)
    SHX6_3 = " week"
    SHX7_3 = SHX31_1.weeksRemaining
    if SHX7_3 > 1 then
      SHX7_3 = "s"
      if SHX7_3 then
        goto SHX_LABEL_107
      end
    end
    SHX7_3 = ""
    -- [FIX IF ERROR] Move ::SHX_LABEL_107:: outside nested blocks until all 'goto SHX_LABEL_107' can see it
    ::SHX_LABEL_107::
    SHX5_3 = SHX5_3 .. SHX6_3 .. SHX7_3
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
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.ButtonWithStyle
    SHX2_3 = "Missed Weeks Remaining"
    SHX3_3 = "The amount of weeks a missed payment is allowed."
    SHX4_3 = {}
    SHX5_3 = tostring
    SHX6_3 = SHX31_1.missedWeeksRemaining
    SHX5_3 = SHX5_3(SHX6_3)
    SHX6_3 = " week"
    SHX7_3 = SHX31_1.missedWeeksRemaining
    if SHX7_3 > 1 then
      SHX7_3 = "s"
      if SHX7_3 then
        goto SHX_LABEL_129
      end
    end
    SHX7_3 = ""
    -- [FIX IF ERROR] Move ::SHX_LABEL_129:: outside nested blocks until all 'goto SHX_LABEL_129' can see it
    ::SHX_LABEL_129::
    SHX5_3 = SHX5_3 .. SHX6_3 .. SHX7_3
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
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.ButtonWithStyle
    SHX2_3 = "Week Start Time"
    SHX3_3 = "The time that is considered the start of the week."
    SHX4_3 = {}
    SHX5_3 = SHX31_1.weekStartTime
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
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.ButtonWithStyle
    SHX2_3 = "Last Payment Time"
    SHX3_3 = "The time the payment plan last had a payment."
    SHX4_3 = {}
    SHX5_3 = SHX31_1.lastPaymentTime
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
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.ButtonWithStyle
    SHX2_3 = "Failed Return Date"
    SHX3_3 = "The time the house would be returned if no further payments were made (within the hour)."
    SHX4_3 = {}
    SHX5_3 = SHX31_1.estimatedReturnDate
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
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
    if not SHX0_3 then
      SHX1_3 = SHX31_1.hasPaidThisWeek
      if not SHX1_3 then
        SHX1_3 = RageUI
        SHX1_3 = SHX1_3.ButtonWithStyle
        SHX2_3 = "~g~Pay Debt This week"
        SHX3_3 = "You will make a payment of \194\163"
        SHX4_3 = getMoneyStringFormatted
        SHX5_3 = SHX31_1.amountPayThisWeek
        SHX4_3 = SHX4_3(SHX5_3)
        SHX5_3 = " this week."
        SHX3_3 = SHX3_3 .. SHX4_3 .. SHX5_3
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
          
          local SHX3_4, SHX4_4, SHX5_4
          if SHX2_4 then
            SHX3_4 = TriggerServerEvent
            SHX4_4 = "a5ba212ffa"
            SHX5_4 = SHX31_1.houseName
            SHX3_4(SHX4_4, SHX5_4)
          end
        end
        SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
      else
        SHX1_3 = RageUI
        SHX1_3 = SHX1_3.ButtonWithStyle
        SHX2_3 = "~y~Pay Week In Advance"
        SHX3_3 = "You will make a payment of \194\163"
        SHX4_3 = getMoneyStringFormatted
        SHX5_3 = SHX31_1.amountPayThisWeek
        SHX4_3 = SHX4_3(SHX5_3)
        SHX5_3 = " for the next week."
        SHX3_3 = SHX3_3 .. SHX4_3 .. SHX5_3
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
          
          local SHX3_4, SHX4_4, SHX5_4
          if SHX2_4 then
            SHX3_4 = TriggerServerEvent
            SHX4_4 = "a5ba212ffa"
            SHX5_4 = SHX31_1.houseName
            SHX3_4(SHX4_4, SHX5_4)
          end
        end
        SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
      end
      SHX1_3 = RageUI
      SHX1_3 = SHX1_3.ButtonWithStyle
      SHX2_3 = "~r~Request Payment Plan Cancellation"
      SHX3_3 = "~r~This will cancel the payment plan and return the house back to the seller. You will not receive any money back from doing this."
      SHX4_3 = {}
      SHX5_3 = true
      function SHX6_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4
        if SHX2_4 then
          SHX3_4 = TriggerServerEvent
          SHX4_4 = "e7f72f09e1"
          SHX5_4 = SHX31_1.houseName
          SHX3_4(SHX4_4, SHX5_4)
        end
      end
      SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
    end
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
SHX41_1(SHX42_1, SHX43_1, SHX44_1, SHX45_1)
function SHX41_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX40_1
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = 0
    SHX17_1 = SHX1_2
    SHX1_2 = TriggerServerEvent
    SHX2_2 = "48af192b47"
    SHX3_2 = SHX0_2
    SHX1_2(SHX2_2, SHX3_2)
  end
  SHX0_1 = SHX0_2
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.CloseAll
  SHX1_2()
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.Visible
  SHX2_2 = RMenu
  SHX3_2 = SHX2_2
  SHX2_2 = SHX2_2.Get
  SHX4_2 = "cmghouses"
  SHX5_2 = "mainmenu"
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
end
function SHX42_1()
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
  SHX3_2 = "cmghouses"
  SHX4_2 = "mainmenu"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
end
SHX43_1 = true
function SHX44_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsAnyMenuOfTypeVisible
  SHX1_2 = "cmghouses"
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 then
    SHX0_2 = SHX43_1
    if SHX0_2 then
      SHX0_2 = RageUI
      SHX0_2 = SHX0_2.CloseAll
      SHX0_2()
      SHX0_2 = RageUI
      SHX0_2 = SHX0_2.Visible
      SHX1_2 = RMenu
      SHX2_2 = SHX1_2
      SHX1_2 = SHX1_2.Get
      SHX3_2 = "cmghouses"
      SHX4_2 = "exit"
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      SHX2_2 = true
      SHX0_2(SHX1_2, SHX2_2)
    end
  end
end
function SHX45_1()
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
  SHX3_2 = "cmghouses"
  SHX4_2 = "exit"
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  if SHX0_2 then
    SHX0_2 = RageUI
    SHX0_2 = SHX0_2.CloseAll
    SHX0_2()
    SHX0_2 = RageUI
    SHX0_2 = SHX0_2.Visible
    SHX1_2 = RMenu
    SHX2_2 = SHX1_2
    SHX1_2 = SHX1_2.Get
    SHX3_2 = "cmghouses"
    SHX4_2 = "exit"
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX2_2 = false
    SHX0_2(SHX1_2, SHX2_2)
  end
end
SHX46_1 = CMG
function SHX47_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX43_1 = SHX0_2
end
SHX46_1.setHomeExitForcesOpenMenu = SHX47_1
SHX46_1 = Citizen
SHX46_1 = SHX46_1.CreateThread
function SHX47_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  function SHX0_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3, SHX3_3
    SHX1_3 = TriggerServerEvent
    SHX2_3 = "7638104656"
    SHX3_3 = SHX0_3.houseName
    SHX1_3(SHX2_3, SHX3_3)
  end
  function SHX1_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3
    SHX1_3 = SHX0_3.menuOpen
    if SHX1_3 then
      SHX1_3 = PlaySound
      SHX2_3 = -1
      SHX3_3 = "Hit"
      SHX4_3 = "RESPAWN_SOUNDSET"
      SHX5_3 = false
      SHX6_3 = 0
      SHX7_3 = true
      SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
      SHX1_3 = SHX42_1
      SHX1_3()
      SHX0_3.menuOpen = false
    end
  end
  function SHX2_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3
    SHX1_3 = SHX0_3.distance
    SHX2_3 = 1.5
    if SHX1_3 > SHX2_3 then
      SHX1_3 = SHX1_2
      SHX2_3 = SHX0_3
      SHX1_3(SHX2_3)
    else
      SHX1_3 = SHX0_3.menuOpen
      if not SHX1_3 then
        SHX1_3 = PlaySound
        SHX2_3 = -1
        SHX3_3 = "Hit"
        SHX4_3 = "RESPAWN_SOUNDSET"
        SHX5_3 = false
        SHX6_3 = 0
        SHX7_3 = true
        SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
        SHX1_3 = SHX41_1
        SHX2_3 = SHX0_3.houseName
        SHX1_3(SHX2_3)
        SHX1_3 = TriggerServerEvent
        SHX2_3 = "47cb682b20"
        SHX3_3 = SHX0_3.houseName
        SHX1_3(SHX2_3, SHX3_3)
        SHX0_3.menuOpen = true
      end
    end
  end
  SHX3_2 = pairs
  SHX4_2 = SHX10_1.homes
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = vector3
    SHX10_2 = SHX8_2.entry_point
    SHX10_2 = SHX10_2[1]
    SHX11_2 = SHX8_2.entry_point
    SHX11_2 = SHX11_2[2]
    SHX12_2 = SHX8_2.entry_point
    SHX12_2 = SHX12_2[3]
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
    SHX8_2.position = SHX9_2
    SHX9_2 = CMG
    SHX9_2 = SHX9_2.createArea
    SHX10_2 = "house_"
    SHX11_2 = SHX7_2
    SHX10_2 = SHX10_2 .. SHX11_2
    SHX11_2 = SHX8_2.position
    SHX12_2 = 5.0
    SHX13_2 = 6
    SHX14_2 = SHX0_2
    SHX15_2 = SHX1_2
    SHX16_2 = SHX2_2
    SHX17_2 = {}
    SHX17_2.houseName = SHX7_2
    SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
    SHX9_2 = tCMG
    SHX9_2 = SHX9_2.addPropMarker
    SHX10_2 = "bzzz_marker_home_green_anim"
    SHX11_2 = SHX8_2.position
    SHX11_2 = SHX11_2.x
    SHX12_2 = SHX8_2.position
    SHX12_2 = SHX12_2.y
    SHX13_2 = SHX8_2.position
    SHX13_2 = SHX13_2.z
    SHX14_2 = 20.0
    SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  end
end
SHX46_1(SHX47_1)
SHX46_1 = RegisterNetEvent
SHX47_1 = "6cf59e8d50"
function SHX48_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = "home_"
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2 .. SHX2_2
  SHX2_2 = SHX5_1
  SHX1_2 = SHX2_2[SHX1_2]
  if SHX1_2 then
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.removeBlip
    SHX2_2 = "home_"
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2 .. SHX3_2
    SHX3_2 = SHX5_1
    SHX2_2 = SHX3_2[SHX2_2]
    SHX1_2(SHX2_2)
    SHX1_2 = "home_"
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2 .. SHX2_2
    SHX2_2 = SHX5_1
    SHX2_2[SHX1_2] = nil
  end
  SHX1_2 = SHX10_1.homes
  SHX1_2 = SHX1_2[SHX0_2]
  SHX1_2.ownerString = nil
end
SHX46_1(SHX47_1, SHX48_1)
SHX46_1 = RegisterNetEvent
SHX47_1 = "c8882e3ed1"
function SHX48_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX10_1.homes
  SHX2_2[SHX0_2] = SHX1_2
end
SHX46_1(SHX47_1, SHX48_1)
SHX46_1 = RegisterNetEvent
SHX47_1 = "d87cccab80"
function SHX48_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_1 = SHX0_2
end
SHX46_1(SHX47_1, SHX48_1)
SHX46_1 = RegisterNetEvent
SHX47_1 = "40085eb8f5"
function SHX48_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX2_1 = SHX0_2
end
SHX46_1(SHX47_1, SHX48_1)
SHX46_1 = CMG
function SHX47_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX1_1
  SHX1_2 = SHX1_2[SHX0_2]
  if not SHX1_2 then
    SHX1_2 = SHX2_1
    SHX1_2 = SHX1_2[SHX0_2]
    if not SHX1_2 then
      goto SHX_LABEL_11
    end
  end
  SHX1_2 = true
  return SHX1_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_11:: outside nested blocks until all 'goto SHX_LABEL_11' can see it
  ::SHX_LABEL_11::
  SHX1_2 = false
  return SHX1_2
end
SHX46_1.clientHasOutsideHouseDoorAccess = SHX47_1
SHX46_1 = RegisterNetEvent
SHX47_1 = "bfe3b10a8c"
function SHX48_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = SHX1_1
  SHX1_2[SHX0_2] = true
  SHX1_2 = SHX10_1.homes
  SHX1_2 = SHX1_2[SHX0_2]
  SHX1_2.ownerString = nil
  SHX1_2 = SHX10_1.homes
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX2_2 = tCMG
    SHX2_2 = SHX2_2.addBlip
    SHX3_2 = SHX1_2.entry_point
    SHX3_2 = SHX3_2[1]
    SHX4_2 = SHX1_2.entry_point
    SHX4_2 = SHX4_2[2]
    SHX5_2 = SHX1_2.entry_point
    SHX5_2 = SHX5_2[3]
    SHX6_2 = 374
    SHX7_2 = 1
    SHX8_2 = SHX0_2
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  end
end
SHX46_1(SHX47_1, SHX48_1)
SHX46_1 = RegisterNetEvent
SHX47_1 = "78d2b13849"
function SHX48_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX1_1
  SHX1_2[SHX0_2] = nil
  SHX1_2 = SHX2_1
  SHX1_2[SHX0_2] = nil
  SHX1_2 = "home_"
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2 .. SHX2_2
  SHX2_2 = SHX5_1
  SHX1_2 = SHX2_2[SHX1_2]
  if SHX1_2 then
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.removeBlip
    SHX2_2 = "home_"
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2 .. SHX3_2
    SHX3_2 = SHX5_1
    SHX2_2 = SHX3_2[SHX2_2]
    SHX1_2(SHX2_2)
    SHX1_2 = "home_"
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2 .. SHX2_2
    SHX2_2 = SHX5_1
    SHX2_2[SHX1_2] = nil
  end
end
SHX46_1(SHX47_1, SHX48_1)
SHX46_1 = RegisterNetEvent
SHX47_1 = "aad5991362"
function SHX48_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  SHX3_1 = SHX0_2
  SHX4_1 = SHX1_2
end
SHX46_1(SHX47_1, SHX48_1)
SHX46_1 = RegisterNetEvent
SHX47_1 = "738efbf85f"
function SHX48_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = tonumber
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = 300000
  end
  SHX2_2 = 1000
  if SHX1_2 < SHX2_2 then
    SHX1_2 = 300000
  end
  SHX2_2 = TaskStartScenarioInPlace
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerPed
  SHX3_2 = SHX3_2()
  SHX4_2 = "WORLD_HUMAN_WELDING"
  SHX5_2 = 0
  SHX6_2 = true
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = true
  SHX3_2 = SetTimeout
  SHX4_2 = SHX1_2
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = false
    SHX2_2 = SHX0_3
  end
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = GetGameTimer
  SHX3_2 = SHX3_2()
  SHX4_2 = tCMG
  SHX4_2 = SHX4_2.notify
  SHX5_2 = "~g~House Robbery in progress, you can cancel by pressing [E]."
  SHX4_2(SHX5_2)
  while SHX2_2 do
    SHX4_2 = GetEntityHealth
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.getPlayerPed
    SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2()
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    if not (SHX4_2 > 102) then
      break
    end
    SHX4_2 = IsPedUsingScenario
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.getPlayerPed
    SHX5_2 = SHX5_2()
    SHX6_2 = "WORLD_HUMAN_WELDING"
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
    if not SHX4_2 then
      SHX4_2 = TaskStartScenarioInPlace
      SHX5_2 = CMG
      SHX5_2 = SHX5_2.getPlayerPed
      SHX5_2 = SHX5_2()
      SHX6_2 = "WORLD_HUMAN_WELDING"
      SHX7_2 = 0
      SHX8_2 = true
      SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    end
    SHX4_2 = math
    SHX4_2 = SHX4_2.floor
    SHX5_2 = GetGameTimer
    SHX5_2 = SHX5_2()
    SHX5_2 = SHX5_2 - SHX3_2
    SHX5_2 = SHX5_2 / SHX1_2
    SHX5_2 = SHX5_2 * 100
    SHX4_2 = SHX4_2(SHX5_2)
    SHX5_2 = drawNativeText
    SHX6_2 = "~b~House Robbery - "
    SHX7_2 = SHX4_2
    SHX8_2 = "%"
    SHX6_2 = SHX6_2 .. SHX7_2 .. SHX8_2
    SHX5_2(SHX6_2)
    SHX5_2 = IsControlJustPressed
    SHX6_2 = 0
    SHX7_2 = 38
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
    if SHX5_2 then
      SHX5_2 = tCMG
      SHX5_2 = SHX5_2.notify
      SHX6_2 = "~b~House Robbery cancelled."
      SHX5_2(SHX6_2)
      SHX2_2 = false
      SHX5_2 = ClearPedTasks
      SHX6_2 = CMG
      SHX6_2 = SHX6_2.getPlayerPed
      SHX6_2, SHX7_2, SHX8_2 = SHX6_2()
      SHX5_2(SHX6_2, SHX7_2, SHX8_2)
    end
    SHX5_2 = Wait
    SHX6_2 = 0
    SHX5_2(SHX6_2)
  end
end
SHX46_1(SHX47_1, SHX48_1)
SHX46_1 = Citizen
SHX46_1 = SHX46_1.CreateThread
function SHX47_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = false
  while true do
    SHX1_2 = SHX3_1
    if SHX1_2 then
      SHX1_2 = GetEntityCoords
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.getPlayerPed
      SHX2_2, SHX3_2 = SHX2_2()
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
      SHX2_2 = SHX3_1
      SHX2_2 = SHX1_2 - SHX2_2
      SHX2_2 = #SHX2_2
      SHX3_2 = 1.5
      if SHX2_2 < SHX3_2 then
        SHX2_2 = SHX44_1
        SHX2_2()
        SHX0_2 = false
      elseif not SHX0_2 then
        SHX0_2 = true
        SHX2_2 = SHX45_1
        SHX2_2()
      end
    end
    SHX1_2 = Wait
    SHX2_2 = 250
    SHX1_2(SHX2_2)
  end
end
SHX46_1(SHX47_1)
SHX46_1 = RegisterNetEvent
SHX47_1 = "80ef63baad"
function SHX48_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX7_1 = SHX0_2
end
SHX46_1(SHX47_1, SHX48_1)
SHX46_1 = RegisterNetEvent
SHX47_1 = "f41258a4d8"
function SHX48_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX8_1 = SHX0_2
end
SHX46_1(SHX47_1, SHX48_1)
SHX46_1 = RegisterNetEvent
SHX47_1 = "1af3856b55"
function SHX48_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = table
  SHX1_2 = SHX1_2.insert
  SHX2_2 = SHX8_1
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
end
SHX46_1(SHX47_1, SHX48_1)
SHX46_1 = RegisterNetEvent
SHX47_1 = "0392362573"
function SHX48_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = table
  SHX1_2 = SHX1_2.insert
  SHX2_2 = SHX7_1
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
end
SHX46_1(SHX47_1, SHX48_1)
SHX46_1 = RegisterNetEvent
SHX47_1 = "94e795090f"
function SHX48_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = pairs
  SHX2_2 = SHX8_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = string
    SHX7_2 = SHX7_2.lower
    SHX8_2 = SHX6_2.homeName
    SHX7_2 = SHX7_2(SHX8_2)
    SHX8_2 = string
    SHX8_2 = SHX8_2.lower
    SHX9_2 = SHX0_2
    SHX8_2 = SHX8_2(SHX9_2)
    if SHX7_2 == SHX8_2 then
      SHX7_2 = SHX8_1
      SHX7_2 = SHX7_2[SHX5_2]
      SHX7_2 = SHX7_2.hoursLeft
      if SHX7_2 > 1 then
        SHX7_2 = SHX8_1
        SHX7_2 = SHX7_2[SHX5_2]
        SHX8_2 = SHX8_1
        SHX8_2 = SHX8_2[SHX5_2]
        SHX8_2 = SHX8_2.hoursLeft
        SHX8_2 = SHX8_2 - 1
        SHX7_2.hoursLeft = SHX8_2
      else
        SHX7_2 = SHX8_1
        SHX7_2[SHX5_2] = nil
      end
    end
  end
end
SHX46_1(SHX47_1, SHX48_1)
SHX46_1 = RegisterNetEvent
SHX47_1 = "531da50848"
function SHX48_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = pairs
  SHX2_2 = SHX7_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = string
    SHX7_2 = SHX7_2.lower
    SHX8_2 = SHX6_2.homeName
    SHX7_2 = SHX7_2(SHX8_2)
    SHX8_2 = string
    SHX8_2 = SHX8_2.lower
    SHX9_2 = SHX0_2
    SHX8_2 = SHX8_2(SHX9_2)
    if SHX7_2 == SHX8_2 then
      SHX7_2 = SHX7_1
      SHX7_2 = SHX7_2[SHX5_2]
      SHX7_2 = SHX7_2.hoursLeft
      if SHX7_2 > 1 then
        SHX7_2 = SHX7_1
        SHX7_2 = SHX7_2[SHX5_2]
        SHX8_2 = SHX7_1
        SHX8_2 = SHX8_2[SHX5_2]
        SHX8_2 = SHX8_2.hoursLeft
        SHX8_2 = SHX8_2 - 1
        SHX7_2.hoursLeft = SHX8_2
      else
        SHX7_2 = SHX7_1
        SHX7_2[SHX5_2] = nil
      end
    end
  end
end
SHX46_1(SHX47_1, SHX48_1)
SHX46_1 = RegisterNetEvent
SHX47_1 = "ce3ab82b9c"
function SHX48_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = pairs
  SHX2_2 = SHX8_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = string
    SHX7_2 = SHX7_2.lower
    SHX8_2 = SHX6_2.homeName
    SHX7_2 = SHX7_2(SHX8_2)
    SHX8_2 = string
    SHX8_2 = SHX8_2.lower
    SHX9_2 = SHX0_2
    SHX8_2 = SHX8_2(SHX9_2)
    if SHX7_2 == SHX8_2 then
      SHX7_2 = SHX8_1
      SHX7_2[SHX5_2] = nil
    end
  end
end
SHX46_1(SHX47_1, SHX48_1)
SHX46_1 = RegisterNetEvent
SHX47_1 = "2f43f86835"
function SHX48_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = pairs
  SHX2_2 = SHX7_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = string
    SHX7_2 = SHX7_2.lower
    SHX8_2 = SHX6_2.homeName
    SHX7_2 = SHX7_2(SHX8_2)
    SHX8_2 = string
    SHX8_2 = SHX8_2.lower
    SHX9_2 = SHX0_2
    SHX8_2 = SHX8_2(SHX9_2)
    if SHX7_2 == SHX8_2 then
      SHX7_2 = SHX7_1
      SHX7_2[SHX5_2] = nil
    end
  end
end
SHX46_1(SHX47_1, SHX48_1)
SHX46_1 = RegisterNetEvent
SHX47_1 = "59e0647678"
function SHX48_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.getDoorbellNotificationType
  SHX0_2 = SHX0_2()
  if SHX0_2 <= 1 then
    SHX0_2 = GetSoundId
    SHX0_2 = SHX0_2()
    SHX1_2 = PlaySoundFrontend
    SHX2_2 = SHX0_2
    SHX3_2 = "DOOR_Intercom_MASTER"
    SHX4_2 = nil
    SHX5_2 = false
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
    SHX1_2 = ReleaseSoundId
    SHX2_2 = SHX0_2
    SHX1_2(SHX2_2)
  end
end
SHX46_1(SHX47_1, SHX48_1)
SHX46_1 = RegisterNetEvent
SHX47_1 = "3aa585dbec"
function SHX48_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX1_2 = pairs
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX10_1.homes
    SHX7_2 = SHX7_2[SHX5_2]
    SHX7_2.ownerString = "For sale."
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.isDevMode
  SHX1_2 = SHX1_2()
  if not SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getServerNum
    SHX1_2 = SHX1_2()
    if 3 ~= SHX1_2 then
      goto SHX_LABEL_22
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_22:: outside nested blocks until all 'goto SHX_LABEL_22' can see it
  ::SHX_LABEL_22::
  SHX1_2 = pairs
  SHX2_2 = SHX10_1.homes
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.ownerString
    if "For sale." == SHX7_2 then
      SHX7_2 = "home_"
      SHX8_2 = SHX5_2
      SHX7_2 = SHX7_2 .. SHX8_2
      SHX8_2 = SHX5_1
      SHX9_2 = tCMG
      SHX9_2 = SHX9_2.addBlip
      SHX10_2 = SHX6_2.entry_point
      SHX10_2 = SHX10_2[1]
      SHX11_2 = SHX6_2.entry_point
      SHX11_2 = SHX11_2[2]
      SHX12_2 = SHX6_2.entry_point
      SHX12_2 = SHX12_2[3]
      SHX13_2 = SHX6_2.blipId
      SHX14_2 = SHX6_2.blipColour
      SHX15_2 = SHX5_2
      SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
      SHX8_2[SHX7_2] = SHX9_2
    end
  end
end
SHX46_1(SHX47_1, SHX48_1)
SHX46_1 = RegisterNetEvent
SHX47_1 = "7ead975359"
function SHX48_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX1_2 = pairs
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2[1]
    SHX8_2 = SHX6_2[2]
    SHX9_2 = tCMG
    SHX9_2 = SHX9_2.addBlip
    SHX10_2 = SHX8_2.x
    SHX11_2 = SHX8_2.y
    SHX12_2 = SHX8_2.z
    SHX13_2 = 374
    SHX14_2 = 1
    SHX15_2 = SHX7_2
    SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  end
end
SHX46_1(SHX47_1, SHX48_1)
SHX46_1 = RegisterNetEvent
SHX47_1 = "cbd0947931"
function SHX48_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX2_2 = GetSoundId
  SHX2_2 = SHX2_2()
  SHX3_2 = PlaySoundFrontend
  SHX4_2 = SHX2_2
  SHX5_2 = "End_Zone_Flash"
  SHX6_2 = "DLC_BTL_RB_Remix_Sounds"
  SHX7_2 = true
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX3_2 = ReleaseSoundId
  SHX4_2 = SHX2_2
  SHX3_2(SHX4_2)
  if SHX1_2 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.announceMpBigMsg
    SHX4_2 = "~b~WARNING"
    SHX5_2 = "~b~Your house "
    SHX6_2 = SHX0_2
    SHX7_2 = " is being RAIDED by the MET Police!"
    SHX5_2 = SHX5_2 .. SHX6_2 .. SHX7_2
    SHX6_2 = 5000
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  else
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.announceMpBigMsg
    SHX4_2 = "~r~WARNING"
    SHX5_2 = "Your house "
    SHX6_2 = SHX0_2
    SHX7_2 = " is being BROKEN INTO!"
    SHX5_2 = SHX5_2 .. SHX6_2 .. SHX7_2
    SHX6_2 = 5000
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  end
end
SHX46_1(SHX47_1, SHX48_1)
SHX46_1 = CMG
function SHX47_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX0_1
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.exitHomePlacementPreview
    SHX0_2()
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.exitHomeDeletionPreview
    SHX0_2()
    SHX0_2 = nil
    SHX3_1 = SHX0_2
    SHX0_2 = nil
    SHX4_1 = SHX0_2
    SHX0_2 = TriggerServerEvent
    SHX1_2 = "4b4c578cc4"
    SHX2_2 = SHX0_1
    SHX0_2(SHX1_2, SHX2_2)
    SHX0_2 = nil
    SHX0_1 = SHX0_2
    SHX0_2 = nil
    SHX16_1 = SHX0_2
  end
end
SHX46_1.leaveActiveHouse = SHX47_1
SHX46_1 = CMG
function SHX47_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX19_1
  SHX2_2[SHX0_2] = SHX1_2
end
SHX46_1.registerHomeCustomisationButtons = SHX47_1
SHX46_1 = CMG
function SHX47_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX20_1
  SHX2_2[SHX0_2] = SHX1_2
end
SHX46_1.registerHomeExitButtons = SHX47_1
SHX46_1 = CMG
function SHX47_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX20_1
  SHX1_2[SHX0_2] = nil
end
SHX46_1.unregisterHomeExitButtons = SHX47_1
SHX46_1 = CMG
function SHX47_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.exitHomeDeletionPreview
  SHX2_2()
  SHX2_2 = SHX22_1
  if SHX2_2 then
    SHX2_2 = DeleteEntity
    SHX3_2 = SHX23_1
    SHX2_2(SHX3_2)
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.loadModel
  SHX3_2 = SHX0_2
  SHX2_2(SHX3_2)
  SHX2_2 = CreateObject
  SHX3_2 = SHX0_2
  SHX4_2 = 0.0
  SHX5_2 = 0.0
  SHX6_2 = 0.0
  SHX7_2 = false
  SHX8_2 = false
  SHX9_2 = false
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX23_1 = SHX2_2
  SHX2_2 = SetModelAsNoLongerNeeded
  SHX3_2 = SHX0_2
  SHX2_2(SHX3_2)
  SHX2_2 = FreezeEntityPosition
  SHX3_2 = SHX23_1
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetEntityDrawOutline
  SHX3_2 = SHX23_1
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX22_1 = SHX2_2
  SHX24_1 = SHX1_2
end
SHX46_1.enterHomePlacementPreview = SHX47_1
SHX46_1 = CMG
function SHX47_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX22_1
  if SHX0_2 then
    SHX0_2 = DeleteEntity
    SHX1_2 = SHX23_1
    SHX0_2(SHX1_2)
    SHX0_2 = 0
    SHX23_1 = SHX0_2
    SHX0_2 = false
    SHX22_1 = SHX0_2
    SHX0_2 = nil
    SHX24_1 = SHX0_2
  end
end
SHX46_1.exitHomePlacementPreview = SHX47_1
SHX46_1 = CMG
function SHX47_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.exitHomePlacementPreview
  SHX2_2()
  SHX2_2 = true
  SHX25_1 = SHX2_2
  SHX26_1 = SHX0_2
  SHX28_1 = SHX1_2
end
SHX46_1.enterHomeDeletionPreview = SHX47_1
SHX46_1 = CMG
function SHX47_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX25_1
  if SHX0_2 then
    SHX0_2 = SHX27_1
    if 0 ~= SHX0_2 then
      SHX0_2 = SetEntityDrawOutline
      SHX1_2 = SHX27_1
      SHX2_2 = false
      SHX0_2(SHX1_2, SHX2_2)
    end
    SHX0_2 = 0
    SHX27_1 = SHX0_2
    SHX0_2 = nil
    SHX26_1 = SHX0_2
    SHX0_2 = nil
    SHX28_1 = SHX0_2
    SHX0_2 = false
    SHX25_1 = SHX0_2
  end
end
SHX46_1.exitHomeDeletionPreview = SHX47_1
SHX46_1 = CMG
function SHX47_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX25_1
  return SHX0_2
end
SHX46_1.inHomeDeletionPreview = SHX47_1
function SHX46_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2 = GetActiveScreenResolution
  SHX0_2, SHX1_2 = SHX0_2()
  SHX2_2 = SHX1_2 / SHX0_2
  SHX3_2 = DrawRect
  SHX4_2 = 0.5
  SHX5_2 = 0.5
  SHX6_2 = 0.015 * SHX2_2
  SHX7_2 = 0.0025
  SHX8_2 = 200
  SHX9_2 = 30
  SHX10_2 = 30
  SHX11_2 = 255
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX3_2 = DrawRect
  SHX4_2 = 0.5
  SHX5_2 = 0.5
  SHX6_2 = 0.0025 * SHX2_2
  SHX7_2 = 0.015
  SHX8_2 = 200
  SHX9_2 = 30
  SHX10_2 = 30
  SHX11_2 = 255
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
end
function SHX47_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = RequestScaleformMovie
  SHX1_2 = "INSTRUCTIONAL_BUTTONS"
  SHX0_2 = SHX0_2(SHX1_2)
  while true do
    SHX1_2 = HasScaleformMovieLoaded
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      break
    end
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
  end
  SHX1_2 = BeginScaleformMovieMethod
  SHX2_2 = SHX0_2
  SHX3_2 = "CLEAR_ALL"
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = EndScaleformMovieMethod
  SHX1_2()
  SHX1_2 = BeginScaleformMovieMethod
  SHX2_2 = SHX0_2
  SHX3_2 = "TOGGLE_MOUSE_BUTTONS"
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = ScaleformMovieMethodAddParamInt
  SHX2_2 = 0
  SHX1_2(SHX2_2)
  SHX1_2 = EndScaleformMovieMethod
  SHX1_2()
  SHX1_2 = BeginScaleformMovieMethod
  SHX2_2 = SHX0_2
  SHX3_2 = "CREATE_CONTAINER"
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = EndScaleformMovieMethod
  SHX1_2()
  return SHX0_2
end
function SHX48_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX2_2 = pairs
  SHX3_2 = SHX1_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = BeginScaleformMovieMethod
    SHX9_2 = SHX0_2
    SHX10_2 = "SET_DATA_SLOT"
    SHX8_2(SHX9_2, SHX10_2)
    SHX8_2 = ScaleformMovieMethodAddParamInt
    SHX9_2 = SHX6_2
    SHX8_2(SHX9_2)
    SHX8_2 = _ENV
    SHX9_2 = "ScaleformMovieMethodAddParamPlayerNameString"
    SHX8_2 = SHX8_2[SHX9_2]
    SHX9_2 = SHX7_2[2]
    SHX8_2(SHX9_2)
    SHX8_2 = _ENV
    SHX9_2 = "ScaleformMovieMethodAddParamTextureNameString"
    SHX8_2 = SHX8_2[SHX9_2]
    SHX9_2 = SHX7_2[1]
    SHX8_2(SHX9_2)
    SHX8_2 = EndScaleformMovieMethod
    SHX8_2()
  end
end
function SHX49_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = BeginScaleformMovieMethod
  SHX2_2 = SHX0_2
  SHX3_2 = "DRAW_INSTRUCTIONAL_BUTTONS"
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = ScaleformMovieMethodAddParamInt
  SHX2_2 = -1
  SHX1_2(SHX2_2)
  SHX1_2 = EndScaleformMovieMethod
  SHX1_2()
end
function SHX50_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = SHX47_1
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX48_1
  SHX2_2 = SHX0_2
  SHX3_2 = {}
  SHX4_2 = {}
  SHX5_2 = "Exit Editor"
  SHX6_2 = "~INPUT_CURSOR_CANCEL~"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX5_2 = {}
  SHX6_2 = "Rotate Left"
  SHX7_2 = "~INPUT_PICKUP~"
  SHX5_2[1] = SHX6_2
  SHX5_2[2] = SHX7_2
  SHX6_2 = {}
  SHX7_2 = "Rotate Right"
  SHX8_2 = "~INPUT_COVER~"
  SHX6_2[1] = SHX7_2
  SHX6_2[2] = SHX8_2
  SHX7_2 = {}
  SHX8_2 = "Place Object"
  SHX9_2 = "~INPUT_CURSOR_ACCEPT~"
  SHX7_2[1] = SHX8_2
  SHX7_2[2] = SHX9_2
  SHX3_2[1] = SHX4_2
  SHX3_2[2] = SHX5_2
  SHX3_2[3] = SHX6_2
  SHX3_2[4] = SHX7_2
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SHX49_1
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
function SHX51_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = SHX47_1
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX48_1
  SHX2_2 = SHX0_2
  SHX3_2 = {}
  SHX4_2 = {}
  SHX5_2 = "Exit Editor"
  SHX6_2 = "~INPUT_CURSOR_CANCEL~"
  SHX4_2[1] = SHX5_2
  SHX4_2[2] = SHX6_2
  SHX5_2 = {}
  SHX6_2 = "Delete Object"
  SHX7_2 = "~INPUT_CURSOR_ACCEPT~"
  SHX5_2[1] = SHX6_2
  SHX5_2[2] = SHX7_2
  SHX3_2[1] = SHX4_2
  SHX3_2[2] = SHX5_2
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SHX49_1
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
function SHX52_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX0_2 = SHX22_1
  if not SHX0_2 then
    SHX0_2 = SHX25_1
    if not SHX0_2 then
      goto SHX_LABEL_30
    end
  end
  SHX0_2 = DisableAllControlActions
  SHX1_2 = 0
  SHX0_2(SHX1_2)
  SHX0_2 = 0
  SHX1_2 = 6
  SHX2_2 = 1
  for SHX3_2 = SHX0_2, SHX1_2, SHX2_2 do
    SHX4_2 = EnableControlAction
    SHX5_2 = 0
    SHX6_2 = SHX3_2
    SHX7_2 = true
    SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  end
  SHX0_2 = 30
  SHX1_2 = 35
  SHX2_2 = 1
  for SHX3_2 = SHX0_2, SHX1_2, SHX2_2 do
    SHX4_2 = EnableControlAction
    SHX5_2 = 0
    SHX6_2 = SHX3_2
    SHX7_2 = true
    SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_30:: outside nested blocks until all 'goto SHX_LABEL_30' can see it
  ::SHX_LABEL_30::
  SHX0_2 = SHX22_1
  if SHX0_2 then
    SHX0_2 = SHX50_1
    SHX0_2()
    SHX0_2 = drawNativeText
    SHX1_2 = "~r~PLACEMENT PREVIEW"
    SHX0_2(SHX1_2)
    SHX0_2 = GetGameplayCamCoord
    SHX0_2 = SHX0_2()
    SHX1_2 = GetGameplayCamRot
    SHX2_2 = 2
    SHX1_2 = SHX1_2(SHX2_2)
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.rotationToDirection
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    SHX3_2 = SHX2_2 * 10.0
    SHX3_2 = SHX0_2 + SHX3_2
    SHX4_2 = _ENV
    SHX5_2 = "StartExpensiveSynchronousShapeTestLosProbe"
    SHX4_2 = SHX4_2[SHX5_2]
    SHX5_2 = SHX0_2.x
    SHX6_2 = SHX0_2.y
    SHX7_2 = SHX0_2.z
    SHX8_2 = SHX3_2.x
    SHX9_2 = SHX3_2.y
    SHX10_2 = SHX3_2.z
    SHX11_2 = 1
    SHX12_2 = SHX23_1
    SHX13_2 = 4
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX5_2 = GetShapeTestResult
    SHX6_2 = SHX4_2
    SHX5_2, SHX6_2, SHX7_2 = SHX5_2(SHX6_2)
    if SHX6_2 then
      SHX8_2 = GetModelDimensions
      SHX9_2 = GetEntityModel
      SHX10_2 = SHX23_1
      SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2 = SHX9_2(SHX10_2)
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
      SHX9_2 = SetEntityCoordsNoOffset
      SHX10_2 = SHX23_1
      SHX11_2 = SHX7_2.x
      SHX12_2 = SHX7_2.y
      SHX13_2 = SHX7_2.z
      SHX14_2 = math
      SHX14_2 = SHX14_2.abs
      SHX15_2 = SHX8_2.z
      SHX14_2 = SHX14_2(SHX15_2)
      SHX13_2 = SHX13_2 + SHX14_2
      SHX14_2 = false
      SHX15_2 = false
      SHX16_2 = false
      SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
    end
    SHX8_2 = IsDisabledControlPressed
    SHX9_2 = 0
    SHX10_2 = 38
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
    if SHX8_2 then
      SHX8_2 = GetEntityRotation
      SHX9_2 = SHX23_1
      SHX10_2 = 2
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
      SHX9_2 = SetEntityRotation
      SHX10_2 = SHX23_1
      SHX11_2 = SHX8_2.x
      SHX12_2 = SHX8_2.y
      SHX13_2 = SHX8_2.z
      SHX14_2 = GetFrameTime
      SHX14_2 = SHX14_2()
      SHX14_2 = SHX14_2 * 180.0
      SHX13_2 = SHX13_2 + SHX14_2
      SHX14_2 = 2
      SHX15_2 = false
      SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    end
    SHX8_2 = IsDisabledControlPressed
    SHX9_2 = 0
    SHX10_2 = 44
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
    if SHX8_2 then
      SHX8_2 = GetEntityRotation
      SHX9_2 = SHX23_1
      SHX10_2 = 2
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
      SHX9_2 = SetEntityRotation
      SHX10_2 = SHX23_1
      SHX11_2 = SHX8_2.x
      SHX12_2 = SHX8_2.y
      SHX13_2 = SHX8_2.z
      SHX14_2 = GetFrameTime
      SHX14_2 = SHX14_2()
      SHX14_2 = SHX14_2 * 180.0
      SHX13_2 = SHX13_2 - SHX14_2
      SHX14_2 = 2
      SHX15_2 = false
      SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    end
    SHX8_2 = IsDisabledControlJustPressed
    SHX9_2 = 0
    SHX10_2 = 237
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
    if SHX8_2 then
      SHX8_2 = GetEntityCoords
      SHX9_2 = SHX23_1
      SHX10_2 = true
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
      SHX9_2 = GetEntityRotation
      SHX10_2 = SHX23_1
      SHX11_2 = 2
      SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
      SHX10_2 = SHX24_1
      if SHX10_2 then
        SHX10_2 = SHX24_1
        SHX11_2 = SHX8_2
        SHX12_2 = SHX9_2
        SHX10_2(SHX11_2, SHX12_2)
      end
    end
    SHX8_2 = IsDisabledControlJustPressed
    SHX9_2 = 0
    SHX10_2 = 238
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
    if SHX8_2 then
      SHX8_2 = CMG
      SHX8_2 = SHX8_2.exitHomePlacementPreview
      SHX8_2()
    end
  else
    SHX0_2 = SHX25_1
    if SHX0_2 then
      SHX0_2 = SHX46_1
      SHX0_2()
      SHX0_2 = SHX51_1
      SHX0_2()
      SHX0_2 = drawNativeText
      SHX1_2 = "~r~DELETION PREVIEW"
      SHX0_2(SHX1_2)
      SHX0_2 = GetGameplayCamCoord
      SHX0_2 = SHX0_2()
      SHX1_2 = GetGameplayCamRot
      SHX2_2 = 2
      SHX1_2 = SHX1_2(SHX2_2)
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.rotationToDirection
      SHX3_2 = SHX1_2
      SHX2_2 = SHX2_2(SHX3_2)
      SHX3_2 = SHX2_2 * 10.0
      SHX3_2 = SHX0_2 + SHX3_2
      SHX4_2 = _ENV
      SHX5_2 = "StartExpensiveSynchronousShapeTestLosProbe"
      SHX4_2 = SHX4_2[SHX5_2]
      SHX5_2 = SHX0_2.x
      SHX6_2 = SHX0_2.y
      SHX7_2 = SHX0_2.z
      SHX8_2 = SHX3_2.x
      SHX9_2 = SHX3_2.y
      SHX10_2 = SHX3_2.z
      SHX11_2 = 17
      SHX12_2 = SHX23_1
      SHX13_2 = 4
      SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
      SHX5_2 = GetShapeTestResult
      SHX6_2 = SHX4_2
      SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX5_2(SHX6_2)
      if SHX6_2 and 0 ~= SHX9_2 then
        SHX10_2 = table
        SHX10_2 = SHX10_2.find
        SHX11_2 = SHX26_1
        SHX12_2 = SHX9_2
        SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
        if SHX10_2 then
          SHX10_2 = SHX27_1
          if 0 ~= SHX10_2 then
            SHX10_2 = SetEntityDrawOutline
            SHX11_2 = SHX27_1
            SHX12_2 = false
            SHX10_2(SHX11_2, SHX12_2)
          end
          SHX27_1 = SHX9_2
          SHX10_2 = SetEntityDrawOutline
          SHX11_2 = SHX27_1
          SHX12_2 = true
          SHX10_2(SHX11_2, SHX12_2)
      end
      else
        SHX10_2 = SHX27_1
        if 0 ~= SHX10_2 then
          SHX10_2 = SetEntityDrawOutline
          SHX11_2 = SHX27_1
          SHX12_2 = false
          SHX10_2(SHX11_2, SHX12_2)
          SHX10_2 = 0
          SHX27_1 = SHX10_2
        end
      end
      SHX10_2 = IsDisabledControlJustPressed
      SHX11_2 = 0
      SHX12_2 = 237
      SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
      if SHX10_2 then
        SHX10_2 = SHX27_1
        if 0 ~= SHX10_2 then
          SHX10_2 = SHX28_1
          if SHX10_2 then
            SHX10_2 = SHX28_1
            SHX11_2 = SHX27_1
            SHX10_2(SHX11_2)
          end
        else
          SHX10_2 = notify
          SHX11_2 = "~r~No object selected."
          SHX10_2(SHX11_2)
        end
      end
      SHX10_2 = IsDisabledControlJustPressed
      SHX11_2 = 0
      SHX12_2 = 238
      SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
      if SHX10_2 then
        SHX10_2 = CMG
        SHX10_2 = SHX10_2.exitHomeDeletionPreview
        SHX10_2()
      end
    end
  end
end
SHX53_1 = CMG
SHX53_1 = SHX53_1.createThreadOnTick
SHX54_1 = SHX52_1
SHX55_1 = "Home Preview"
SHX53_1(SHX54_1, SHX55_1)
SHX53_1 = AddEventHandler
SHX54_1 = "onResourceStop"
function SHX55_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = GetCurrentResourceName
  SHX1_2 = SHX1_2()
  if SHX1_2 == SHX0_2 then
    SHX1_2 = SHX22_1
    if SHX1_2 then
      SHX1_2 = DeleteEntity
      SHX2_2 = SHX23_1
      SHX1_2(SHX2_2)
    end
  end
end
SHX53_1(SHX54_1, SHX55_1)
SHX53_1 = RegisterNetEvent
SHX54_1 = "93679fdb00"
function SHX55_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX11_1 = SHX0_2
  SHX1_2 = [[
~r~Outstanding House Tax~b~

]]
  SHX2_2 = pairs
  SHX3_2 = SHX0_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = print
    SHX9_2 = string
    SHX9_2 = SHX9_2.format
    SHX10_2 = "[Multiple] House tax for %s set to \194\163%s"
    SHX11_2 = SHX6_2
    SHX12_2 = getMoneyStringFormatted
    SHX13_2 = SHX7_2
    SHX12_2, SHX13_2 = SHX12_2(SHX13_2)
    SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX8_2 = SHX1_2
    SHX9_2 = string
    SHX9_2 = SHX9_2.format
    SHX10_2 = "\194\163%s @ %s\n"
    SHX11_2 = getMoneyStringFormatted
    SHX12_2 = SHX7_2
    SHX11_2 = SHX11_2(SHX12_2)
    SHX12_2 = SHX6_2
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
    SHX8_2 = SHX8_2 .. SHX9_2
    SHX1_2 = SHX8_2
  end
  SHX2_2 = table
  SHX2_2 = SHX2_2.count
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if 0 == SHX2_2 then
    return
  end
  SHX2_2 = Wait
  SHX3_2 = 10000
  SHX2_2(SHX3_2)
  SHX2_2 = notify
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
end
SHX53_1(SHX54_1, SHX55_1)
SHX53_1 = RegisterNetEvent
SHX54_1 = "fe80dc02ed"
function SHX55_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX12_1 = SHX0_2
end
SHX53_1(SHX54_1, SHX55_1)
SHX53_1 = exports
SHX54_1 = "lbGetHomes"
function SHX55_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX2_2 = {}
  SHX3_2 = pairs
  SHX4_2 = SHX1_1
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX8_2 = table
    SHX8_2 = SHX8_2.insert
    SHX9_2 = SHX2_2
    SHX10_2 = {}
    SHX10_2.label = SHX7_2
    SHX10_2.id = SHX7_2
    SHX10_2.uniqueId = SHX7_2
    SHX10_2.locked = true
    SHX11_2 = {}
    SHX10_2.keyholders = SHX11_2
    SHX8_2(SHX9_2, SHX10_2)
  end
  SHX3_2 = SHX1_2
  SHX4_2 = SHX2_2
  SHX3_2(SHX4_2)
end
SHX53_1(SHX54_1, SHX55_1)
SHX53_1 = exports
SHX54_1 = "lbRemoveKeyHolder"
function SHX55_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = exports
  SHX0_2 = SHX0_2["lb-phone"]
  SHX1_2 = SHX0_2
  SHX0_2 = SHX0_2.SendNotification
  SHX2_2 = {}
  SHX2_2.app = "Home"
  SHX2_2.title = "Home"
  SHX2_2.content = "This is not available right now"
  SHX0_2(SHX1_2, SHX2_2)
end
SHX53_1(SHX54_1, SHX55_1)
SHX53_1 = exports
SHX54_1 = "lbAddKeyholder"
function SHX55_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = exports
  SHX0_2 = SHX0_2["lb-phone"]
  SHX1_2 = SHX0_2
  SHX0_2 = SHX0_2.SendNotification
  SHX2_2 = {}
  SHX2_2.app = "Home"
  SHX2_2.title = "Home"
  SHX2_2.content = "This is not available right now"
  SHX0_2(SHX1_2, SHX2_2)
end
SHX53_1(SHX54_1, SHX55_1)
SHX53_1 = exports
SHX54_1 = "lbToggleLocked"
function SHX55_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = exports
  SHX0_2 = SHX0_2["lb-phone"]
  SHX1_2 = SHX0_2
  SHX0_2 = SHX0_2.SendNotification
  SHX2_2 = {}
  SHX2_2.app = "Home"
  SHX2_2.title = "Home"
  SHX2_2.content = "This is not available right now"
  SHX0_2(SHX1_2, SHX2_2)
end
SHX53_1(SHX54_1, SHX55_1)
SHX53_1 = exports
SHX54_1 = "lbSetWaypoint"
function SHX55_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX10_1.homes
  SHX2_2 = SHX0_2.id
  SHX1_2 = SHX1_2[SHX2_2]
  SHX1_2 = SHX1_2.position
  SHX2_2 = SetNewWaypoint
  SHX3_2 = SHX1_2.x
  SHX4_2 = SHX1_2.y
  SHX2_2(SHX3_2, SHX4_2)
end
SHX53_1(SHX54_1, SHX55_1)
SHX53_1 = RegisterNetEvent
SHX54_1 = "7da2e8ef8a"
function SHX55_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
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
    SHX2_3 = SHX0_3.id
    SHX3_3 = SHX1_3.id
    SHX2_3 = SHX2_3 > SHX3_3
    return SHX2_3
  end
  SHX1_2(SHX2_2, SHX3_2)
  SHX13_1 = SHX0_2
end
SHX53_1(SHX54_1, SHX55_1)
SHX53_1 = RegisterNetEvent
SHX54_1 = "d0cba285eb"
function SHX55_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsAnyMenuOfTypeVisible
  SHX1_2 = "cmghouses"
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX0_2 = RageUI
    SHX0_2 = SHX0_2.CloseAll
    SHX0_2()
  end
end
SHX53_1(SHX54_1, SHX55_1)
SHX53_1 = RegisterNetEvent
SHX54_1 = "91b7bc09c9"
function SHX55_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX29_1 = SHX0_2
end
SHX53_1(SHX54_1, SHX55_1)
function SHX53_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = notify
  SHX1_2 = "~y~You have outstanding debt on house payment plans. Please ensure you make weekly payments."
  SHX0_2(SHX1_2)
end
SHX54_1 = RegisterNetEvent
SHX55_1 = "d7b6c868d9"
function SHX56_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX30_1 = SHX0_2
  if SHX1_2 then
    SHX2_2 = SetTimeout
    SHX3_2 = 10000
    SHX4_2 = SHX53_1
    SHX2_2(SHX3_2, SHX4_2)
    SHX2_2 = SetTimeout
    SHX3_2 = 30000
    SHX4_2 = SHX53_1
    SHX2_2(SHX3_2, SHX4_2)
  end
end
SHX54_1(SHX55_1, SHX56_1)
SHX54_1 = RegisterNetEvent
SHX55_1 = "db9c26653f"
function SHX56_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX31_1
  if SHX1_2 then
    SHX1_2 = SHX31_1.houseName
    if SHX1_2 then
      SHX1_2 = SHX0_2.houseName
      if not SHX1_2 then
        SHX1_2 = SHX31_1.houseName
        SHX0_2.houseName = SHX1_2
      end
    end
  end
  SHX31_1 = SHX0_2
end
SHX54_1(SHX55_1, SHX56_1)
SHX54_1 = RegisterNetEvent
SHX55_1 = "7aaa8e5a9f"
function SHX56_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX38_1 = SHX0_2
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.Visible
  SHX2_2 = RMenu
  SHX3_2 = SHX2_2
  SHX2_2 = SHX2_2.Get
  SHX4_2 = "cmghouses"
  SHX5_2 = "paymentplanoffer"
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
end
SHX54_1(SHX55_1, SHX56_1)
SHX54_1 = CMG
SHX54_1 = SHX54_1.registerDevMenuState
SHX55_1 = "Home"
SHX56_1 = {}
SHX56_1.boundsEnabled = false
SHX54_1 = SHX54_1(SHX55_1, SHX56_1)
SHX55_1 = CMG
SHX55_1 = SHX55_1.registerDevMenuItems
SHX56_1 = "Home"
function SHX57_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Checkbox
  SHX1_2 = "Bounds Enabled"
  SHX2_2 = ""
  SHX3_2 = SHX54_1.boundsEnabled
  SHX4_2 = {}
  function SHX5_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    SHX54_1.boundsEnabled = SHX3_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX55_1(SHX56_1, SHX57_1)
function SHX55_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX0_2.bounds
  SHX2_2 = SHX2_2[1]
  SHX3_2 = SHX0_2.bounds
  SHX3_2 = SHX3_2[2]
  SHX4_2 = IsEntityInArea
  SHX5_2 = SHX1_2
  SHX6_2 = SHX2_2.x
  SHX7_2 = SHX2_2.y
  SHX8_2 = SHX2_2.z
  SHX9_2 = SHX3_2.x
  SHX10_2 = SHX3_2.y
  SHX11_2 = SHX3_2.z
  SHX12_2 = false
  SHX13_2 = true
  SHX14_2 = 0
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX5_2 = GetGameTimer
  SHX5_2 = SHX5_2()
  SHX6_2 = SHX18_1
  SHX5_2 = SHX5_2 - SHX6_2
  SHX6_2 = SHX54_1.boundsEnabled
  if SHX6_2 then
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.drawDebugText
    SHX7_2 = "---------- House Bounds ----------"
    SHX6_2(SHX7_2)
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.drawDebugText
    SHX7_2 = "In Bounds: %s"
    if SHX4_2 then
      SHX8_2 = "Yes"
      if SHX8_2 then
        goto SHX_LABEL_40
      end
    end
    SHX8_2 = "No"
    -- [FIX IF ERROR] Move ::SHX_LABEL_40:: outside nested blocks until all 'goto SHX_LABEL_40' can see it
    ::SHX_LABEL_40::
    SHX6_2(SHX7_2, SHX8_2)
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.drawDebugText
    SHX7_2 = "Time Since Entering: %s"
    SHX8_2 = SHX5_2
    SHX6_2(SHX7_2, SHX8_2)
  end
  if not SHX4_2 then
    SHX6_2 = 5000
    if SHX5_2 > SHX6_2 then
      SHX6_2 = notify
      SHX7_2 = "~r~You have automatically left the house due to going too far away."
      SHX6_2(SHX7_2)
      SHX6_2 = CMG
      SHX6_2 = SHX6_2.leaveActiveHouse
      SHX6_2()
    end
  end
end
function SHX56_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX38_1
  if SHX0_2 then
    SHX0_2 = SHX38_1.sellerUserId
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.isUserOnlineAndNearby
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if not SHX1_2 then
      SHX1_2 = nil
      SHX38_1 = SHX1_2
      SHX1_2 = TriggerServerEvent
      SHX2_2 = "38dfab8a29"
      SHX1_2(SHX2_2)
      SHX1_2 = RageUI
      SHX1_2 = SHX1_2.CloseAll
      SHX1_2()
      return
    end
  end
  SHX0_2 = SHX16_1
  if SHX0_2 then
    SHX0_2 = SHX10_1.homes
    SHX1_2 = SHX16_1
    SHX0_2 = SHX0_2[SHX1_2]
    if SHX0_2 then
      SHX1_2 = SHX55_1
      SHX2_2 = SHX0_2
      SHX1_2(SHX2_2)
    end
  end
end
SHX57_1 = CMG
SHX57_1 = SHX57_1.createThreadOnTick
SHX58_1 = SHX56_1
SHX59_1 = "Home Payment Plan"
SHX57_1(SHX58_1, SHX59_1)
SHX57_1 = RegisterNetEvent
SHX58_1 = "e417f3e111"
function SHX59_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  SHX32_1.income = SHX0_2
  SHX32_1.outcome = SHX1_2
end
SHX57_1(SHX58_1, SHX59_1)
SHX57_1 = RegisterNetEvent
SHX58_1 = "1cf3b7e94a"
SHX59_1 = CMG
SHX59_1 = SHX59_1.leaveActiveHouse
SHX57_1(SHX58_1, SHX59_1)
SHX57_1 = RegisterNetEvent
SHX58_1 = "5e9b531d09"
function SHX59_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX16_1 = SHX0_2
  SHX1_2 = GetGameTimer
  SHX1_2 = SHX1_2()
  SHX18_1 = SHX1_2
end
SHX57_1(SHX58_1, SHX59_1)
SHX57_1 = RegisterNetEvent
SHX58_1 = "2b274e7fa8"
function SHX59_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = nil
  SHX16_1 = SHX0_2
end
SHX57_1(SHX58_1, SHX59_1)
SHX57_1 = CMG
function SHX58_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = 0
  SHX1_2 = pairs
  SHX2_2 = SHX11_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX0_2 = SHX0_2 + SHX6_2
  end
  return SHX0_2
end
SHX57_1.getOustandingHouseTaxAmount = SHX58_1
SHX57_1 = RegisterNetEvent
SHX58_1 = "85fff2fa8b"
function SHX59_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX0_1
  if SHX2_2 == SHX0_2 then
    SHX17_1 = SHX1_2
  end
end
SHX57_1(SHX58_1, SHX59_1)
