-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/weapons"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = CMG
SHX1_1 = SHX1_1.loadModule
SHX2_1 = "cfg/cfg_gunstore"
SHX1_1 = SHX1_1(SHX2_1)
SHX2_1 = CMG
SHX2_1 = SHX2_1.loadModule
SHX3_1 = "cfg/cfg_smallarms"
SHX2_1 = SHX2_1(SHX3_1)
SHX3_1 = nil
SHX4_1 = vector3
SHX5_1 = 0.0
SHX6_1 = 0.0
SHX7_1 = 0.0
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX5_1 = ""
SHX6_1 = ""
SHX7_1 = ""
SHX8_1 = false
SHX9_1 = {}
SHX10_1 = false
SHX11_1 = {}
SHX11_1.name = ""
SHX11_1.price = 0
SHX11_1.model = ""
SHX11_1.ammoPrice = 0
SHX11_1.weaponShop = ""
SHX11_1.breakdown = nil
SHX12_1 = {}
SHX13_1 = RMenu
SHX13_1 = SHX13_1.Add
SHX14_1 = "cmggunstore"
SHX15_1 = "mainmenu"
SHX16_1 = RageUI
SHX16_1 = SHX16_1.CreateMenu
SHX17_1 = ""
SHX18_1 = ""
SHX19_1 = CMG
SHX19_1 = SHX19_1.getRageUIMenuWidth
SHX19_1 = SHX19_1()
SHX20_1 = CMG
SHX20_1 = SHX20_1.getRageUIMenuHeight
SHX20_1 = SHX20_1()
SHX21_1 = "cmg_gunstoreui"
SHX22_1 = "cmg_gunstoreui"
SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1 = SHX16_1(SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1)
SHX13_1(SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1)
SHX13_1 = RMenu
SHX14_1 = SHX13_1
SHX13_1 = SHX13_1.Get
SHX15_1 = "cmggunstore"
SHX16_1 = "mainmenu"
SHX13_1 = SHX13_1(SHX14_1, SHX15_1, SHX16_1)
SHX14_1 = SHX13_1
SHX13_1 = SHX13_1.SetSubtitle
SHX15_1 = "~b~GUNSTORE"
SHX13_1(SHX14_1, SHX15_1)
SHX13_1 = RMenu
SHX13_1 = SHX13_1.Add
SHX14_1 = "cmggunstore"
SHX15_1 = "category"
SHX16_1 = RageUI
SHX16_1 = SHX16_1.CreateSubMenu
SHX17_1 = RMenu
SHX18_1 = SHX17_1
SHX17_1 = SHX17_1.Get
SHX19_1 = "cmggunstore"
SHX20_1 = "mainmenu"
SHX17_1 = SHX17_1(SHX18_1, SHX19_1, SHX20_1)
SHX18_1 = ""
SHX19_1 = "~b~Purchase Weapon or Ammo"
SHX20_1 = CMG
SHX20_1 = SHX20_1.getRageUIMenuWidth
SHX20_1 = SHX20_1()
SHX21_1 = CMG
SHX21_1 = SHX21_1.getRageUIMenuHeight
SHX21_1 = SHX21_1()
SHX22_1 = "cmg_gunstoreui"
SHX23_1 = "cmg_gunstoreui"
SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1 = SHX16_1(SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1)
SHX13_1(SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1)
SHX13_1 = RMenu
SHX13_1 = SHX13_1.Add
SHX14_1 = "cmggunstore"
SHX15_1 = "type"
SHX16_1 = RageUI
SHX16_1 = SHX16_1.CreateSubMenu
SHX17_1 = RMenu
SHX18_1 = SHX17_1
SHX17_1 = SHX17_1.Get
SHX19_1 = "cmggunstore"
SHX20_1 = "category"
SHX17_1 = SHX17_1(SHX18_1, SHX19_1, SHX20_1)
SHX18_1 = ""
SHX19_1 = "~b~Purchase Weapon or Ammo"
SHX20_1 = CMG
SHX20_1 = SHX20_1.getRageUIMenuWidth
SHX20_1 = SHX20_1()
SHX21_1 = CMG
SHX21_1 = SHX21_1.getRageUIMenuHeight
SHX21_1 = SHX21_1()
SHX22_1 = "cmg_gunstoreui"
SHX23_1 = "cmg_gunstoreui"
SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1 = SHX16_1(SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1)
SHX13_1(SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1)
SHX13_1 = RMenu
SHX13_1 = SHX13_1.Add
SHX14_1 = "cmggunstore"
SHX15_1 = "confirm"
SHX16_1 = RageUI
SHX16_1 = SHX16_1.CreateSubMenu
SHX17_1 = RMenu
SHX18_1 = SHX17_1
SHX17_1 = SHX17_1.Get
SHX19_1 = "cmggunstore"
SHX20_1 = "type"
SHX17_1 = SHX17_1(SHX18_1, SHX19_1, SHX20_1)
SHX18_1 = ""
SHX19_1 = "~b~Purchase confirm your purchase"
SHX20_1 = CMG
SHX20_1 = SHX20_1.getRageUIMenuWidth
SHX20_1 = SHX20_1()
SHX21_1 = CMG
SHX21_1 = SHX21_1.getRageUIMenuHeight
SHX21_1 = SHX21_1()
SHX22_1 = "cmg_gunstoreui"
SHX23_1 = "cmg_gunstoreui"
SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1 = SHX16_1(SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1)
SHX13_1(SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1)
SHX13_1 = RMenu
SHX13_1 = SHX13_1.Add
SHX14_1 = "cmggunstore"
SHX15_1 = "vip_melee"
SHX16_1 = RageUI
SHX16_1 = SHX16_1.CreateSubMenu
SHX17_1 = RMenu
SHX18_1 = SHX17_1
SHX17_1 = SHX17_1.Get
SHX19_1 = "cmggunstore"
SHX20_1 = "mainmenu"
SHX17_1 = SHX17_1(SHX18_1, SHX19_1, SHX20_1)
SHX18_1 = ""
SHX19_1 = "~b~Purchase Weapon or Ammo"
SHX20_1 = CMG
SHX20_1 = SHX20_1.getRageUIMenuWidth
SHX20_1 = SHX20_1()
SHX21_1 = CMG
SHX21_1 = SHX21_1.getRageUIMenuHeight
SHX21_1 = SHX21_1()
SHX22_1 = "cmg_gunstoreui"
SHX23_1 = "cmg_gunstoreui"
SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1 = SHX16_1(SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1)
SHX13_1(SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1)
SHX13_1 = RMenu
SHX13_1 = SHX13_1.Add
SHX14_1 = "cmggunstore"
SHX15_1 = "vip_smallarms"
SHX16_1 = RageUI
SHX16_1 = SHX16_1.CreateSubMenu
SHX17_1 = RMenu
SHX18_1 = SHX17_1
SHX17_1 = SHX17_1.Get
SHX19_1 = "cmggunstore"
SHX20_1 = "mainmenu"
SHX17_1 = SHX17_1(SHX18_1, SHX19_1, SHX20_1)
SHX18_1 = ""
SHX19_1 = "~b~Purchase Weapon or Ammo"
SHX20_1 = CMG
SHX20_1 = SHX20_1.getRageUIMenuWidth
SHX20_1 = SHX20_1()
SHX21_1 = CMG
SHX21_1 = SHX21_1.getRageUIMenuHeight
SHX21_1 = SHX21_1()
SHX22_1 = "cmg_gunstoreui"
SHX23_1 = "cmg_gunstoreui"
SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1 = SHX16_1(SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1)
SHX13_1(SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1)
SHX13_1 = RMenu
SHX13_1 = SHX13_1.Add
SHX14_1 = "cmggunstore"
SHX15_1 = "vip_largearms"
SHX16_1 = RageUI
SHX16_1 = SHX16_1.CreateSubMenu
SHX17_1 = RMenu
SHX18_1 = SHX17_1
SHX17_1 = SHX17_1.Get
SHX19_1 = "cmggunstore"
SHX20_1 = "mainmenu"
SHX17_1 = SHX17_1(SHX18_1, SHX19_1, SHX20_1)
SHX18_1 = ""
SHX19_1 = "~b~Purchase Weapon or Ammo"
SHX20_1 = CMG
SHX20_1 = SHX20_1.getRageUIMenuWidth
SHX20_1 = SHX20_1()
SHX21_1 = CMG
SHX21_1 = SHX21_1.getRageUIMenuHeight
SHX21_1 = SHX21_1()
SHX22_1 = "cmg_gunstoreui"
SHX23_1 = "cmg_gunstoreui"
SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1 = SHX16_1(SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1)
SHX13_1(SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1)
SHX13_1 = RMenu
SHX13_1 = SHX13_1.Add
SHX14_1 = "cmggunstore"
SHX15_1 = "largearms_rebel"
SHX16_1 = RageUI
SHX16_1 = SHX16_1.CreateSubMenu
SHX17_1 = RMenu
SHX18_1 = SHX17_1
SHX17_1 = SHX17_1.Get
SHX19_1 = "cmggunstore"
SHX20_1 = "mainmenu"
SHX17_1 = SHX17_1(SHX18_1, SHX19_1, SHX20_1)
SHX18_1 = ""
SHX19_1 = "~b~Purchase Weapon or Ammo"
SHX20_1 = CMG
SHX20_1 = SHX20_1.getRageUIMenuWidth
SHX20_1 = SHX20_1()
SHX21_1 = CMG
SHX21_1 = SHX21_1.getRageUIMenuHeight
SHX21_1 = SHX21_1()
SHX22_1 = "cmg_gunstoreui"
SHX23_1 = "cmg_gunstoreui"
SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1 = SHX16_1(SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1)
SHX13_1(SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1)
function SHX13_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  if not SHX1_2 then
    SHX2_2 = string
    SHX2_2 = SHX2_2.format
    SHX3_2 = "\194\163%s"
    SHX4_2 = getMoneyStringFormatted
    SHX5_2 = SHX0_2
    SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2 = SHX4_2(SHX5_2)
    return SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  end
  SHX2_2 = SHX1_2.basePrice
  if not SHX2_2 then
    SHX2_2 = SHX0_2
  end
  SHX3_2 = SHX1_2.commissionPct
  if not SHX3_2 then
    SHX3_2 = 0
  end
  SHX4_2 = SHX1_2.discounts
  if not SHX4_2 then
    SHX4_2 = {}
  end
  SHX5_2 = SHX1_2.totalDiscountPct
  if not SHX5_2 then
    SHX5_2 = 0
  end
  if 0 == SHX3_2 then
    SHX6_2 = #SHX4_2
    if 0 == SHX6_2 then
      SHX6_2 = string
      SHX6_2 = SHX6_2.format
      SHX7_2 = "\194\163%s"
      SHX8_2 = getMoneyStringFormatted
      SHX9_2 = SHX0_2
      SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2 = SHX8_2(SHX9_2)
      return SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
    end
  end
  SHX6_2 = {}
  SHX7_2 = table
  SHX7_2 = SHX7_2.insert
  SHX8_2 = SHX6_2
  SHX9_2 = string
  SHX9_2 = SHX9_2.format
  SHX10_2 = "Base: ~c~\194\163%s~s~"
  SHX11_2 = getMoneyStringFormatted
  SHX12_2 = SHX2_2
  SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2 = SHX11_2(SHX12_2)
  SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  if SHX3_2 > 0 then
    SHX7_2 = math
    SHX7_2 = SHX7_2.floor
    SHX8_2 = SHX3_2 / 100
    SHX8_2 = 1 + SHX8_2
    SHX8_2 = SHX2_2 * SHX8_2
    SHX7_2 = SHX7_2(SHX8_2)
    SHX8_2 = table
    SHX8_2 = SHX8_2.insert
    SHX9_2 = SHX6_2
    SHX10_2 = string
    SHX10_2 = SHX10_2.format
    SHX11_2 = "~y~+%d%% Turf Commission~s~ \226\134\146 \194\163%s"
    SHX12_2 = SHX3_2
    SHX13_2 = getMoneyStringFormatted
    SHX14_2 = SHX7_2
    SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2 = SHX13_2(SHX14_2)
    SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
    SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  end
  SHX7_2 = ipairs
  SHX8_2 = SHX4_2
  SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
  for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
    SHX13_2 = table
    SHX13_2 = SHX13_2.insert
    SHX14_2 = SHX6_2
    SHX15_2 = string
    SHX15_2 = SHX15_2.format
    SHX16_2 = "~b~-%d%% %s~s~"
    SHX17_2 = SHX12_2.pct
    SHX18_2 = SHX12_2.name
    SHX15_2, SHX16_2, SHX17_2, SHX18_2 = SHX15_2(SHX16_2, SHX17_2, SHX18_2)
    SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  end
  SHX7_2 = #SHX4_2
  if SHX7_2 > 1 then
    SHX7_2 = table
    SHX7_2 = SHX7_2.insert
    SHX8_2 = SHX6_2
    SHX9_2 = string
    SHX9_2 = SHX9_2.format
    SHX10_2 = "~b~Total Discount: -%d%%~s~"
    SHX11_2 = SHX5_2
    SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2 = SHX9_2(SHX10_2, SHX11_2)
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  end
  SHX7_2 = table
  SHX7_2 = SHX7_2.insert
  SHX8_2 = SHX6_2
  SHX9_2 = string
  SHX9_2 = SHX9_2.format
  SHX10_2 = "Final: ~g~\194\163%s~s~"
  SHX11_2 = getMoneyStringFormatted
  SHX12_2 = SHX0_2
  SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2 = SHX11_2(SHX12_2)
  SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  SHX7_2 = table
  SHX7_2 = SHX7_2.concat
  SHX8_2 = SHX6_2
  SHX9_2 = "\n"
  return SHX7_2(SHX8_2, SHX9_2)
end
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX0_2 = {}
  SHX1_2 = SHX1_1.CMGGunStores
  SHX2_2 = SHX3_1
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = pairs
  SHX3_2 = SHX1_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX7_2 = SHX0_1.weapons
    SHX7_2 = SHX7_2[SHX6_2]
    if SHX7_2 then
      SHX8_2 = SHX7_2.ammo
      if "modelammo" ~= SHX8_2 then
        SHX8_2 = SHX1_1.miscWeaponItems
        SHX8_2 = SHX8_2[SHX6_2]
        if not SHX8_2 then
          SHX8_2 = SHX7_2.class
          SHX8_2 = SHX0_2[SHX8_2]
          if not SHX8_2 then
            SHX8_2 = SHX7_2.class
            SHX0_2[SHX8_2] = true
          end
      end
    end
    else
      SHX0_2.Misc = true
    end
  end
  SHX2_2 = {}
  SHX3_2 = pairs
  SHX4_2 = SHX0_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX8_2 = table
    SHX8_2 = SHX8_2.insert
    SHX9_2 = SHX2_2
    SHX10_2 = SHX7_2
    SHX8_2(SHX9_2, SHX10_2)
  end
  SHX3_2 = table
  SHX3_2 = SHX3_2.sort
  SHX4_2 = SHX2_2
  SHX3_2(SHX4_2)
  return SHX2_2
end
function SHX15_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX0_1.weapons
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX2_2 = SHX1_2.ammo
    if "modelammo" ~= SHX2_2 then
      SHX2_2 = SHX1_1.miscWeaponItems
      SHX2_2 = SHX2_2[SHX0_2]
      if not SHX2_2 then
        goto SHX_LABEL_18
      end
    end
  end
  SHX2_2 = SHX5_1
  SHX2_2 = "Misc" == SHX2_2
  return SHX2_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_18:: outside nested blocks until all 'goto SHX_LABEL_18' can see it
  ::SHX_LABEL_18::
  SHX2_2 = SHX1_2.class
  SHX3_2 = SHX5_1
  SHX2_2 = SHX2_2 == SHX3_2
  return SHX2_2
end
function SHX16_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = false
  SHX2_2 = pairs
  SHX3_2 = SHX0_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    if "cmgplatinum.whitelisted" == SHX7_2 then
      SHX1_2 = true
    end
  end
  SHX2_2 = SHX1_2
  if SHX1_2 then
    SHX3_2 = pairs
    SHX4_2 = SHX0_2
    SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
    for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
      if "" ~= SHX8_2 then
        SHX9_2 = CMG
        SHX9_2 = SHX9_2.hasClientPermission
        SHX10_2 = SHX8_2
        SHX9_2 = SHX9_2(SHX10_2)
        if not SHX9_2 then
          SHX2_2 = false
        end
      end
    end
  else
    SHX3_2 = pairs
    SHX4_2 = SHX0_2
    SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
    for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
      if "" ~= SHX8_2 then
        SHX9_2 = CMG
        SHX9_2 = SHX9_2.hasClientPermission
        SHX10_2 = SHX8_2
        SHX9_2 = SHX9_2(SHX10_2)
        if not SHX9_2 then
          goto SHX_LABEL_45
        end
      end
      SHX2_2 = true
      -- [FIX IF ERROR] Move ::SHX_LABEL_45:: outside nested blocks until all 'goto SHX_LABEL_45' can see it
      ::SHX_LABEL_45::
    end
  end
  return SHX2_2
end
function SHX17_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2
  if "_config" == SHX0_2 then
    return
  end
  if SHX2_2 then
    SHX3_2 = SHX15_1
    SHX4_2 = SHX0_2
    SHX3_2 = SHX3_2(SHX4_2)
    if not SHX3_2 then
      return
    end
  end
  SHX3_2 = SHX1_1.CMGGunStores
  SHX3_2 = SHX3_2[SHX1_2]
  SHX4_2 = table
  SHX4_2 = SHX4_2.unpack
  SHX5_2 = SHX3_2[SHX0_2]
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
  SHX8_2 = SHX16_1
  SHX9_2 = SHX7_2
  SHX8_2 = SHX8_2(SHX9_2)
  SHX9_2 = SHX3_2._config
  if not SHX8_2 then
    SHX10_2 = SHX9_2.grayNotPurchableItems
    if not SHX10_2 then
      return
    end
  end
  SHX10_2 = SHX5_2
  SHX11_2 = SHX6_2
  SHX12_2 = nil
  SHX13_2 = SHX9_1
  SHX13_2 = SHX13_2[SHX1_2]
  if SHX13_2 then
    SHX14_2 = SHX13_2[SHX0_2]
    if SHX14_2 then
      SHX15_2 = SHX14_2.price
      SHX10_2 = SHX15_2 or SHX10_2
      if not SHX15_2 then
      end
      SHX15_2 = SHX14_2.ammoPrice
      SHX11_2 = SHX15_2 or SHX11_2
      if not SHX15_2 then
      end
      SHX12_2 = SHX14_2.breakdown
    end
  end
  SHX14_2 = nil
  SHX15_2 = SHX9_2.useRebelTokens
  if SHX15_2 then
    SHX15_2 = string
    SHX15_2 = SHX15_2.format
    SHX16_2 = "%s Rebel Tokens"
    SHX17_2 = getMoneyStringFormatted
    SHX18_2 = SHX10_2
    SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2 = SHX17_2(SHX18_2)
    SHX15_2 = SHX15_2(SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
    SHX14_2 = SHX15_2
  else
    SHX15_2 = SHX13_1
    SHX16_2 = SHX10_2
    SHX17_2 = SHX12_2
    SHX15_2 = SHX15_2(SHX16_2, SHX17_2)
    SHX14_2 = SHX15_2
  end
  SHX15_2 = SHX9_2.useRebelTokens
  if SHX15_2 then
    SHX15_2 = string
    SHX15_2 = SHX15_2.format
    SHX16_2 = "%s Rebel Tokens"
    SHX17_2 = getMoneyStringFormatted
    SHX18_2 = SHX10_2
    SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2 = SHX17_2(SHX18_2)
    SHX15_2 = SHX15_2(SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
    SHX14_2 = SHX15_2
  end
  SHX15_2 = RageUI
  SHX15_2 = SHX15_2.ButtonWithStyle
  SHX16_2 = SHX4_2
  SHX17_2 = SHX14_2
  SHX18_2 = {}
  SHX18_2.RightLabel = "\226\134\146\226\134\146\226\134\146"
  SHX19_2 = SHX8_2
  function SHX20_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3
    if SHX1_3 then
      SHX3_3 = SHX0_2
      SHX7_1 = SHX3_3
    end
    if SHX2_3 then
      SHX3_3 = SHX4_2
      SHX11_1.name = SHX3_3
      SHX3_3 = SHX0_2
      SHX11_1.model = SHX3_3
      SHX3_3 = SHX10_2
      SHX11_1.price = SHX3_3
      SHX3_3 = SHX11_2
      SHX11_1.ammoPrice = SHX3_3
      SHX3_3 = SHX1_2
      SHX11_1.weaponShop = SHX3_3
      SHX3_3 = SHX12_2
      SHX11_1.breakdown = SHX3_3
    end
  end
  SHX21_2 = RMenu
  SHX22_2 = SHX21_2
  SHX21_2 = SHX21_2.Get
  SHX23_2 = "cmggunstore"
  SHX24_2 = "type"
  SHX21_2, SHX22_2, SHX23_2, SHX24_2 = SHX21_2(SHX22_2, SHX23_2, SHX24_2)
  SHX15_2(SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
end
SHX18_1 = RageUI
SHX18_1 = SHX18_1.CreateWhile
SHX19_1 = 1.0
SHX20_1 = RMenu
SHX21_1 = SHX20_1
SHX20_1 = SHX20_1.Get
SHX22_1 = "cmggunstore"
SHX23_1 = "mainmenu"
SHX20_1 = SHX20_1(SHX21_1, SHX22_1, SHX23_1)
SHX21_1 = nil
function SHX22_1()
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
  SHX3_2 = "cmggunstore"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3
    SHX0_3 = assert
    SHX1_3 = SHX3_1
    SHX0_3(SHX1_3)
    SHX0_3 = SHX1_1.CMGGunStores
    SHX1_3 = SHX3_1
    SHX0_3 = SHX0_3[SHX1_3]
    SHX1_3 = SHX0_3._config
    SHX2_3 = SHX1_3.useRebelTokens
    if SHX2_3 then
      SHX2_3 = RageUI
      SHX2_3 = SHX2_3.Separator
      SHX3_3 = "~y~Rebel Tokens: "
      SHX4_3 = tostring
      SHX5_3 = select
      SHX6_3 = 4
      SHX7_3 = CMG
      SHX7_3 = SHX7_3.getClientDisplayMoney
      SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3 = SHX7_3()
      SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3 = SHX5_3(SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3)
      SHX4_3 = SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3)
      SHX3_3 = SHX3_3 .. SHX4_3
      SHX2_3(SHX3_3)
    end
    SHX2_3 = CMG
    SHX2_3 = SHX2_3.isPlatClub
    SHX2_3 = SHX2_3()
    if SHX2_3 then
      SHX2_3 = SHX1_3.hasPlatLargeArms
      if SHX2_3 then
        SHX2_3 = CMG
        SHX2_3 = SHX2_3.hasClientPermission
        SHX3_3 = "vip.gunstore"
        SHX2_3 = SHX2_3(SHX3_3)
        if SHX2_3 then
          SHX2_3 = RageUI
          SHX2_3 = SHX2_3.ButtonWithStyle
          SHX3_3 = "~y~[Platinum Melee Store]"
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
            
            local SHX3_4, SHX4_4, SHX5_4
            if SHX2_4 then
              SHX3_4 = TriggerServerEvent
              SHX4_4 = "da3d489217"
              SHX5_4 = "Legion_VIP"
              SHX3_4(SHX4_4, SHX5_4)
            end
          end
          SHX8_3 = RMenu
          SHX9_3 = SHX8_3
          SHX8_3 = SHX8_3.Get
          SHX10_3 = "cmggunstore"
          SHX11_3 = "vip_melee"
          SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3 = SHX8_3(SHX9_3, SHX10_3, SHX11_3)
          SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3)
          SHX2_3 = RageUI
          SHX2_3 = SHX2_3.ButtonWithStyle
          SHX3_3 = "~y~[Platinum Small Arms]"
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
            
            local SHX3_4, SHX4_4, SHX5_4
            if SHX2_4 then
              SHX3_4 = TriggerServerEvent
              SHX4_4 = "da3d489217"
              SHX5_4 = "SmallArms_VIP"
              SHX3_4(SHX4_4, SHX5_4)
            end
          end
          SHX8_3 = RMenu
          SHX9_3 = SHX8_3
          SHX8_3 = SHX8_3.Get
          SHX10_3 = "cmggunstore"
          SHX11_3 = "vip_smallarms"
          SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3 = SHX8_3(SHX9_3, SHX10_3, SHX11_3)
          SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3)
          SHX2_3 = RageUI
          SHX2_3 = SHX2_3.ButtonWithStyle
          SHX3_3 = "~y~[Platinum Large Arms]"
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
            
            local SHX3_4, SHX4_4, SHX5_4
            if SHX2_4 then
              SHX3_4 = TriggerServerEvent
              SHX4_4 = "da3d489217"
              SHX5_4 = "LargeArms_VIP"
              SHX3_4(SHX4_4, SHX5_4)
            end
          end
          SHX8_3 = RMenu
          SHX9_3 = SHX8_3
          SHX8_3 = SHX8_3.Get
          SHX10_3 = "cmggunstore"
          SHX11_3 = "vip_largearms"
          SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3 = SHX8_3(SHX9_3, SHX10_3, SHX11_3)
          SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3)
        end
      end
    end
    SHX2_3 = SHX1_3[4]
    if "Rebel Gun Store" == SHX2_3 then
      SHX2_3 = RageUI
      SHX2_3 = SHX2_3.ButtonWithStyle
      SHX3_3 = "~r~[Rebel Large Arms]"
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
        
        local SHX3_4, SHX4_4, SHX5_4
        if SHX2_4 then
          SHX3_4 = TriggerServerEvent
          SHX4_4 = "da3d489217"
          SHX5_4 = "LargeArms_Rebel"
          SHX3_4(SHX4_4, SHX5_4)
        end
      end
      SHX8_3 = RMenu
      SHX9_3 = SHX8_3
      SHX8_3 = SHX8_3.Get
      SHX10_3 = "cmggunstore"
      SHX11_3 = "largearms_rebel"
      SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3 = SHX8_3(SHX9_3, SHX10_3, SHX11_3)
      SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3)
    end
    SHX2_3 = SHX1_3.disableCategories
    if SHX2_3 then
      SHX2_3 = pairs
      SHX3_3 = sortedKeys
      SHX4_3 = SHX0_3
      SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3 = SHX3_3(SHX4_3)
      SHX2_3, SHX3_3, SHX4_3, SHX5_3 = SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3)
      for SHX6_3, SHX7_3 in SHX2_3, SHX3_3, SHX4_3, SHX5_3 do
        SHX8_3 = SHX17_1
        SHX9_3 = SHX7_3
        SHX10_3 = SHX3_1
        SHX11_3 = false
        SHX8_3(SHX9_3, SHX10_3, SHX11_3)
      end
    else
      SHX2_3 = pairs
      SHX3_3 = SHX14_1
      SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3 = SHX3_3()
      SHX2_3, SHX3_3, SHX4_3, SHX5_3 = SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3)
      for SHX6_3, SHX7_3 in SHX2_3, SHX3_3, SHX4_3, SHX5_3 do
        SHX8_3 = RageUI
        SHX8_3 = SHX8_3.ButtonWithStyle
        SHX9_3 = SHX1_1.classToName
        SHX9_3 = SHX9_3[SHX7_3]
        if not SHX9_3 then
          SHX9_3 = SHX7_3
        end
        SHX10_3 = ""
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
          
          local SHX3_4
          if SHX2_4 then
            SHX3_4 = SHX7_3
            SHX5_1 = SHX3_4
          end
        end
        SHX14_3 = RMenu
        SHX15_3 = SHX14_3
        SHX14_3 = SHX14_3.Get
        SHX16_3 = "cmggunstore"
        SHX17_3 = "category"
        SHX14_3, SHX15_3, SHX16_3, SHX17_3 = SHX14_3(SHX15_3, SHX16_3, SHX17_3)
        SHX8_3(SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3)
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
  SHX3_2 = "cmggunstore"
  SHX4_2 = "category"
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
    SHX0_3 = assert
    SHX1_3 = SHX3_1
    SHX0_3(SHX1_3)
    SHX0_3 = SHX1_1.CMGGunStores
    SHX1_3 = SHX3_1
    SHX0_3 = SHX0_3[SHX1_3]
    SHX1_3 = pairs
    SHX2_3 = sortedKeys
    SHX3_3 = SHX0_3
    SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3 = SHX2_3(SHX3_3)
    SHX1_3, SHX2_3, SHX3_3, SHX4_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3)
    for SHX5_3, SHX6_3 in SHX1_3, SHX2_3, SHX3_3, SHX4_3 do
      SHX7_3 = SHX17_1
      SHX8_3 = SHX6_3
      SHX9_3 = SHX3_1
      SHX10_3 = true
      SHX7_3(SHX8_3, SHX9_3, SHX10_3)
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
  SHX3_2 = "cmggunstore"
  SHX4_2 = "type"
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
    SHX0_3 = SHX1_1.CMGGunStores
    SHX1_3 = SHX3_1
    SHX0_3 = SHX0_3[SHX1_3]
    SHX0_3 = SHX0_3._config
    SHX1_3 = nil
    SHX2_3 = SHX0_3.useRebelTokens
    if SHX2_3 then
      SHX2_3 = string
      SHX2_3 = SHX2_3.format
      SHX3_3 = "%s Rebel Tokens"
      SHX4_3 = getMoneyStringFormatted
      SHX5_3 = tonumber
      SHX6_3 = SHX11_1.price
      SHX5_3 = SHX5_3(SHX6_3)
      if not SHX5_3 then
        SHX5_3 = 0
      end
      SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3 = SHX4_3(SHX5_3)
      SHX2_3 = SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
      SHX1_3 = SHX2_3
    else
      SHX2_3 = SHX13_1
      SHX3_3 = tonumber
      SHX4_3 = SHX11_1.price
      SHX3_3 = SHX3_3(SHX4_3)
      if not SHX3_3 then
        SHX3_3 = 0
      end
      SHX4_3 = SHX11_1.breakdown
      SHX2_3 = SHX2_3(SHX3_3, SHX4_3)
      SHX1_3 = SHX2_3
    end
    SHX2_3 = RageUI
    SHX2_3 = SHX2_3.ButtonWithStyle
    SHX3_3 = "Purchase Weapon Body"
    SHX4_3 = SHX1_3
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
      
      local SHX3_4
      if SHX2_4 then
        SHX3_4 = false
        SHX10_1 = SHX3_4
      end
    end
    SHX8_3 = RMenu
    SHX9_3 = SHX8_3
    SHX8_3 = SHX8_3.Get
    SHX10_3 = "cmggunstore"
    SHX11_3 = "confirm"
    SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3 = SHX8_3(SHX9_3, SHX10_3, SHX11_3)
    SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
    SHX2_3 = nil
    SHX3_3 = SHX0_3.useRebelTokens
    if SHX3_3 then
      SHX3_3 = string
      SHX3_3 = SHX3_3.format
      SHX4_3 = "%s Rebel Tokens"
      SHX5_3 = getMoneyStringFormatted
      SHX6_3 = tonumber
      SHX7_3 = SHX11_1.ammoPrice
      SHX6_3 = SHX6_3(SHX7_3)
      if not SHX6_3 then
        SHX6_3 = 0
      end
      SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3 = SHX5_3(SHX6_3)
      SHX3_3 = SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
      SHX2_3 = SHX3_3
    else
      SHX3_3 = nil
      SHX4_3 = SHX11_1.breakdown
      if SHX4_3 then
        SHX5_3 = {}
        SHX6_3 = SHX4_3.baseAmmoPrice
        if not SHX6_3 then
          SHX6_3 = SHX4_3.basePrice
        end
        SHX5_3.basePrice = SHX6_3
        SHX6_3 = SHX4_3.commissionPct
        SHX5_3.commissionPct = SHX6_3
        SHX6_3 = SHX4_3.discounts
        SHX5_3.discounts = SHX6_3
        SHX6_3 = SHX4_3.totalDiscountPct
        SHX5_3.totalDiscountPct = SHX6_3
        SHX3_3 = SHX5_3
      end
      SHX5_3 = SHX13_1
      SHX6_3 = tonumber
      SHX7_3 = SHX11_1.ammoPrice
      SHX6_3 = SHX6_3(SHX7_3)
      if not SHX6_3 then
        SHX6_3 = 0
      end
      SHX7_3 = SHX3_3
      SHX5_3 = SHX5_3(SHX6_3, SHX7_3)
      SHX2_3 = SHX5_3
    end
    SHX3_3 = SHX0_1.weapons
    SHX4_3 = SHX11_1.model
    SHX3_3 = SHX3_3[SHX4_3]
    if SHX3_3 then
      SHX3_3 = SHX0_1.weapons
      SHX4_3 = SHX11_1.model
      SHX3_3 = SHX3_3[SHX4_3]
      SHX3_3 = SHX3_3.ammo
      if "modelammo" ~= SHX3_3 then
        SHX3_3 = RageUI
        SHX3_3 = SHX3_3.ButtonWithStyle
        SHX4_3 = "Purchase Weapon Ammo (Max)"
        SHX5_3 = SHX2_3
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
          
          local SHX3_4
          if SHX2_4 then
            SHX3_4 = true
            SHX10_1 = SHX3_4
          end
        end
        SHX9_3 = RMenu
        SHX10_3 = SHX9_3
        SHX9_3 = SHX9_3.Get
        SHX11_3 = "cmggunstore"
        SHX12_3 = "confirm"
        SHX9_3, SHX10_3, SHX11_3, SHX12_3 = SHX9_3(SHX10_3, SHX11_3, SHX12_3)
        SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
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
  SHX3_2 = "cmggunstore"
  SHX4_2 = "confirm"
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
        SHX3_4 = TriggerServerEvent
        SHX4_4 = "7fa6c51dd3"
        SHX5_4 = SHX11_1.weaponShop
        SHX6_4 = SHX11_1.model
        SHX7_4 = SHX10_1
        SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4)
      end
    end
    SHX6_3 = RMenu
    SHX7_3 = SHX6_3
    SHX6_3 = SHX6_3.Get
    SHX8_3 = "cmggunstore"
    SHX9_3 = "confirm"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "No"
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
      
      local SHX3_4
      if SHX2_4 then
        SHX3_4 = RageUI
        SHX3_4 = SHX3_4.GoBack
        SHX3_4()
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
  SHX3_2 = "cmggunstore"
  SHX4_2 = "vip_melee"
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
    SHX0_3 = pairs
    SHX1_3 = sortedKeys
    SHX2_3 = SHX1_1.CMGGunStores
    SHX2_3 = SHX2_3.Legion_VIP
    SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX1_3(SHX2_3)
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      SHX6_3 = SHX17_1
      SHX7_3 = SHX5_3
      SHX8_3 = "Legion_VIP"
      SHX9_3 = false
      SHX6_3(SHX7_3, SHX8_3, SHX9_3)
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
  SHX3_2 = "cmggunstore"
  SHX4_2 = "vip_smallarms"
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
    SHX0_3 = pairs
    SHX1_3 = sortedKeys
    SHX2_3 = SHX1_1.CMGGunStores
    SHX2_3 = SHX2_3.SmallArms_VIP
    SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX1_3(SHX2_3)
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      SHX6_3 = SHX17_1
      SHX7_3 = SHX5_3
      SHX8_3 = "SmallArms_VIP"
      SHX9_3 = false
      SHX6_3(SHX7_3, SHX8_3, SHX9_3)
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
  SHX3_2 = "cmggunstore"
  SHX4_2 = "vip_largearms"
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
    SHX0_3 = pairs
    SHX1_3 = sortedKeys
    SHX2_3 = SHX1_1.CMGGunStores
    SHX2_3 = SHX2_3.LargeArms_VIP
    SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX1_3(SHX2_3)
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      SHX6_3 = SHX17_1
      SHX7_3 = SHX5_3
      SHX8_3 = "LargeArms_VIP"
      SHX9_3 = false
      SHX6_3(SHX7_3, SHX8_3, SHX9_3)
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
  SHX3_2 = "cmggunstore"
  SHX4_2 = "largearms_rebel"
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
    SHX0_3 = pairs
    SHX1_3 = sortedKeys
    SHX2_3 = SHX1_1.CMGGunStores
    SHX2_3 = SHX2_3.LargeArms_Rebel
    SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX1_3(SHX2_3)
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      SHX6_3 = SHX17_1
      SHX7_3 = SHX5_3
      SHX8_3 = "LargeArms_Rebel"
      SHX9_3 = false
      SHX6_3(SHX7_3, SHX8_3, SHX9_3)
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
SHX18_1(SHX19_1, SHX20_1, SHX21_1, SHX22_1)
function SHX18_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX3_1 = SHX0_2
  SHX4_1 = SHX1_2
  SHX2_2 = SHX1_1.CMGGunStores
  SHX3_2 = SHX3_1
  SHX2_2 = SHX2_2[SHX3_2]
  SHX2_2 = SHX2_2._config
  SHX2_2 = SHX2_2.menuTexture
  if not SHX2_2 then
    SHX2_2 = "cmg_gunstoreui"
  end
  SHX3_2 = RMenu
  SHX4_2 = SHX3_2
  SHX3_2 = SHX3_2.Get
  SHX5_2 = "cmggunstore"
  SHX6_2 = "mainmenu"
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX4_2 = SHX3_2
  SHX3_2 = SHX3_2.SetSpriteBanner
  SHX5_2 = SHX2_2
  SHX6_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = RageUI
  SHX3_2 = SHX3_2.Visible
  SHX4_2 = RMenu
  SHX5_2 = SHX4_2
  SHX4_2 = SHX4_2.Get
  SHX6_2 = "cmggunstore"
  SHX7_2 = "mainmenu"
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX5_2 = true
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = TriggerServerEvent
  SHX4_2 = "da3d489217"
  SHX5_2 = SHX0_2
  SHX3_2(SHX4_2, SHX5_2)
end
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = nil
  SHX3_1 = SHX0_2
  SHX0_2 = ""
  SHX7_1 = SHX0_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.CloseAll
  SHX0_2()
end
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2 = SHX6_1
  SHX1_2 = SHX7_1
  if SHX0_2 == SHX1_2 then
    return
  end
  SHX0_2 = SHX7_1
  SHX6_1 = SHX0_2
  SHX0_2 = SHX1_1.CMGGunStores
  SHX1_2 = SHX3_1
  SHX0_2 = SHX0_2[SHX1_2]
  if SHX0_2 then
    SHX1_2 = SHX8_1
    if not SHX1_2 then
      goto SHX_LABEL_17
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_17:: outside nested blocks until all 'goto SHX_LABEL_17' can see it
  ::SHX_LABEL_17::
  SHX1_2 = SHX7_1
  SHX1_2 = SHX0_2[SHX1_2]
  if not SHX1_2 then
    return
  end
  SHX2_2 = SHX1_2[5]
  if not SHX2_2 or "" == SHX2_2 then
    return
  end
  SHX3_2 = GetHashKey
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = IsModelValid
  SHX5_2 = SHX3_2
  SHX4_2 = SHX4_2(SHX5_2)
  if not SHX4_2 then
    return
  end
  SHX4_2 = RequestModel
  SHX5_2 = SHX3_2
  SHX4_2(SHX5_2)
  SHX4_2 = HasModelLoaded
  SHX5_2 = SHX3_2
  SHX4_2 = SHX4_2(SHX5_2)
  if not SHX4_2 then
    return
  end
  SHX4_2 = CreateObject
  SHX5_2 = SHX3_2
  SHX6_2 = SHX4_1.x
  SHX7_2 = SHX4_1.y
  SHX8_2 = SHX4_1.z
  SHX8_2 = SHX8_2 + 1.0
  SHX9_2 = false
  SHX10_2 = false
  SHX11_2 = false
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX5_2 = SetModelAsNoLongerNeeded
  SHX6_2 = SHX3_2
  SHX5_2(SHX6_2)
  if 0 == SHX4_2 then
    return
  end
  SHX5_2 = FreezeEntityPosition
  SHX6_2 = SHX4_2
  SHX7_2 = true
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = SetEntityCollision
  SHX6_2 = SHX4_2
  SHX7_2 = false
  SHX8_2 = false
  SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = true
  SHX8_1 = SHX5_2
  SHX5_2 = Citizen
  SHX5_2 = SHX5_2.CreateThread
  function SHX6_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
    SHX0_3 = SHX6_1
    while true do
      SHX1_3 = SHX6_1
      if SHX1_3 ~= SHX0_3 then
        break
      end
      SHX1_3 = DoesEntityExist
      SHX2_3 = SHX4_2
      SHX1_3 = SHX1_3(SHX2_3)
      if not SHX1_3 then
        break
      end
      SHX1_3 = SetEntityHeading
      SHX2_3 = SHX4_2
      SHX3_3 = GetEntityHeading
      SHX4_3 = SHX4_2
      SHX3_3 = SHX3_3(SHX4_3)
      SHX3_3 = SHX3_3 + 1
      SHX1_3(SHX2_3, SHX3_3)
      SHX1_3 = Wait
      SHX2_3 = 0
      SHX1_3(SHX2_3)
    end
    SHX1_3 = DeleteEntity
    SHX2_3 = SHX4_2
    SHX1_3(SHX2_3)
    SHX1_3 = false
    SHX8_1 = SHX1_3
  end
  SHX5_2(SHX6_2)
end
SHX21_1 = CMG
SHX21_1 = SHX21_1.createThreadOnTick
SHX22_1 = SHX20_1
SHX23_1 = "Weapon Preview"
SHX21_1(SHX22_1, SHX23_1)
function SHX21_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.hasClientPermission
  SHX2_2 = "ludde.whitelisted"
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = GetSelectedPedWeapon
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if -1337195216 == SHX1_2 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.setWeapon
      SHX2_2 = SHX0_2
      SHX3_2 = -1569615261
      SHX4_2 = true
      SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    end
  end
end
SHX22_1 = CMG
SHX22_1 = SHX22_1.createThreadOnTick
SHX23_1 = SHX21_1
SHX24_1 = "Disable MP5 Taser"
SHX22_1(SHX23_1, SHX24_1)
SHX22_1 = Citizen
SHX22_1 = SHX22_1.CreateThread
function SHX23_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX0_2 = pairs
  SHX1_2 = SHX1_1.CMGGunStores
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX5_2._config
    SHX7_2 = pairs
    SHX8_2 = SHX6_2[1]
    SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
    for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
      SHX13_2 = CMG
      SHX13_2 = SHX13_2.createGunStore
      SHX14_2 = string
      SHX14_2 = SHX14_2.format
      SHX15_2 = "Static %s"
      SHX16_2 = SHX11_2
      SHX14_2 = SHX14_2(SHX15_2, SHX16_2)
      SHX15_2 = SHX4_2
      SHX16_2 = SHX12_2
      SHX13_2(SHX14_2, SHX15_2, SHX16_2)
    end
  end
end
SHX22_1(SHX23_1)
SHX22_1 = {}
SHX23_1 = CMG
function SHX24_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  function SHX3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3
    SHX0_3 = GetVehiclePedIsIn
    SHX1_3 = CMG
    SHX1_3 = SHX1_3.getPlayerPed
    SHX1_3 = SHX1_3()
    SHX2_3 = false
    SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
    if 0 == SHX0_3 then
      SHX0_3 = SHX18_1
      SHX1_3 = SHX1_2
      SHX2_3 = SHX2_2
      SHX0_3(SHX1_3, SHX2_3)
    else
      SHX0_3 = tCMG
      SHX0_3 = SHX0_3.notify
      SHX1_3 = "~r~Exit your vehicle to access the gun store."
      SHX0_3(SHX1_3)
    end
  end
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = SHX19_1
    SHX0_3()
  end
  SHX5_2 = string
  SHX5_2 = SHX5_2.format
  SHX6_2 = "gunstore_%s_%s"
  SHX7_2 = SHX1_2
  SHX8_2 = SHX0_2
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.createArea
  SHX7_2 = SHX5_2
  SHX8_2 = SHX2_2
  SHX9_2 = 1.5
  SHX10_2 = 6
  SHX11_2 = SHX3_2
  SHX12_2 = SHX4_2
  function SHX13_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX6_2 = tCMG
  SHX6_2 = SHX6_2.addPropMarker
  SHX7_2 = "bzzz_marker_gun_red_anim"
  SHX8_2 = SHX2_2.x
  SHX9_2 = SHX2_2.y
  SHX10_2 = SHX2_2.z
  SHX11_2 = 20.0
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX7_2 = SHX22_1
  SHX8_2 = {}
  SHX8_2.area = SHX5_2
  SHX8_2.marker = SHX6_2
  SHX7_2[SHX0_2] = SHX8_2
  return SHX0_2
end
SHX23_1.createGunStore = SHX24_1
SHX23_1 = CMG
function SHX24_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX22_1
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX2_2 = tCMG
    SHX2_2 = SHX2_2.removeMarker
    SHX3_2 = SHX1_2.marker
    SHX2_2(SHX3_2)
    SHX2_2 = tCMG
    SHX2_2 = SHX2_2.removeArea
    SHX3_2 = SHX1_2.area
    SHX2_2(SHX3_2)
    SHX2_2 = SHX22_1
    SHX2_2[SHX0_2] = nil
  end
end
SHX23_1.deleteGunStore = SHX24_1
SHX23_1 = RMenu
SHX23_1 = SHX23_1.Add
SHX24_1 = "gunstore"
SHX25_1 = "inactivity"
SHX26_1 = RageUI
SHX26_1 = SHX26_1.CreateMenu
SHX27_1 = ""
SHX28_1 = "Weapon Inactivity"
SHX29_1 = CMG
SHX29_1 = SHX29_1.getRageUIMenuWidth
SHX29_1 = SHX29_1()
SHX30_1 = CMG
SHX30_1 = SHX30_1.getRageUIMenuHeight
SHX30_1 = SHX30_1()
SHX31_1 = "cmg_gunstoreui"
SHX32_1 = "cmg_gunstoreui"
SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1 = SHX26_1(SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1)
SHX23_1(SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1)
SHX23_1 = nil
SHX24_1 = nil
SHX25_1 = RageUI
SHX25_1 = SHX25_1.CreateWhile
SHX26_1 = 1.0
SHX27_1 = RMenu
SHX28_1 = SHX27_1
SHX27_1 = SHX27_1.Get
SHX29_1 = "gunstore"
SHX30_1 = "inactivity"
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
  SHX3_2 = "gunstore"
  SHX4_2 = "inactivity"
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
    SHX1_3 = "~y~The weapon '"
    SHX2_3 = SHX23_1
    SHX3_3 = "' is inactive."
    SHX1_3 = SHX1_3 .. SHX2_3 .. SHX3_3
    SHX0_3(SHX1_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "~y~This occurs to weapon which aren't used in 4 months."
    SHX0_3(SHX1_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "~y~This improves load times and increases performance."
    SHX0_3(SHX1_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "~y~To make the weapon active click the button below."
    SHX0_3(SHX1_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "~y~The weapon will be spawnable from the next restart."
    SHX0_3(SHX1_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "~g~Activate Weapon"
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
        SHX3_4 = TriggerServerEvent
        SHX4_4 = "5137044dad"
        SHX5_4 = SHX24_1
        SHX3_4(SHX4_4, SHX5_4)
        SHX3_4 = RageUI
        SHX3_4 = SHX3_4.CloseAll
        SHX3_4()
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
SHX25_1(SHX26_1, SHX27_1, SHX28_1, SHX29_1)
SHX25_1 = RegisterNetEvent
SHX26_1 = "32de57e1f2"
function SHX27_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX23_1 = SHX0_2
  SHX24_1 = SHX1_2
  SHX2_2 = RageUI
  SHX2_2 = SHX2_2.Visible
  SHX3_2 = RMenu
  SHX4_2 = SHX3_2
  SHX3_2 = SHX3_2.Get
  SHX5_2 = "gunstore"
  SHX6_2 = "inactivity"
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
end
SHX25_1(SHX26_1, SHX27_1)
SHX25_1 = RegisterNetEvent
SHX26_1 = "96bacf0094"
function SHX27_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX9_1 = SHX0_2
end
SHX25_1(SHX26_1, SHX27_1)
SHX25_1 = CMG
function SHX26_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX3_2 = 0
  SHX4_2 = ""
  SHX5_2 = SHX1_1.CMGGunStores
  SHX5_2 = SHX5_2[SHX0_2]
  if not SHX5_2 then
    return
  end
  SHX6_2 = SHX5_2[SHX1_2]
  if not SHX6_2 then
    return
  end
  if SHX3_2 and SHX4_2 then
    SHX7_2 = 1
    SHX8_2 = SHX2_2
    SHX9_2 = 1
    for SHX10_2 = SHX7_2, SHX8_2, SHX9_2 do
      SHX11_2 = TriggerServerEvent
      SHX12_2 = "7fa6c51dd3"
      SHX13_2 = SHX0_2
      SHX14_2 = SHX1_2
      SHX15_2 = false
      SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    end
  end
end
SHX25_1.purchaseFromGunstore = SHX26_1
function SHX25_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = FreezeEntityPosition
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetEntityProofs
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX4_2 = true
  SHX5_2 = true
  SHX6_2 = true
  SHX7_2 = true
  SHX8_2 = true
  SHX9_2 = true
  SHX10_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX1_2 = SetEntityCanBeDamaged
  SHX2_2 = SHX0_2
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetEntityLodDist
  SHX2_2 = SHX0_2
  SHX3_2 = 225
  SHX1_2(SHX2_2, SHX3_2)
end
function SHX26_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2.isActive = true
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadModel
  SHX2_2 = SHX0_2.pedModel
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadModel
  SHX2_2 = SHX0_2.vehicleModel
  SHX1_2(SHX2_2)
  SHX1_2 = SHX0_2.isActive
  if SHX1_2 then
    SHX1_2 = SHX0_2.ped
    if SHX1_2 then
      SHX1_2 = CreatePed
      SHX2_2 = 0
      SHX3_2 = SHX0_2.pedModel
      SHX4_2 = SHX0_2.ped
      SHX4_2 = SHX4_2.x
      SHX5_2 = SHX0_2.ped
      SHX5_2 = SHX5_2.y
      SHX6_2 = SHX0_2.ped
      SHX6_2 = SHX6_2.z
      SHX6_2 = SHX6_2 - 1.0
      SHX7_2 = SHX0_2.ped
      SHX7_2 = SHX7_2.w
      SHX8_2 = false
      SHX9_2 = false
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
      SHX0_2.pedHandle = SHX1_2
      SHX1_2 = SHX25_1
      SHX2_2 = SHX0_2.pedHandle
      SHX1_2(SHX2_2)
      SHX1_2 = SetBlockingOfNonTemporaryEvents
      SHX2_2 = SHX0_2.pedHandle
      SHX3_2 = true
      SHX1_2(SHX2_2, SHX3_2)
    end
    SHX1_2 = SHX0_2.van
    if SHX1_2 then
      SHX1_2 = CreateVehicle
      SHX2_2 = SHX0_2.vehicleModel
      SHX3_2 = SHX0_2.van
      SHX3_2 = SHX3_2.x
      SHX4_2 = SHX0_2.van
      SHX4_2 = SHX4_2.y
      SHX5_2 = SHX0_2.van
      SHX5_2 = SHX5_2.z
      SHX6_2 = SHX0_2.van
      SHX6_2 = SHX6_2.w
      SHX7_2 = false
      SHX8_2 = false
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX0_2.vehicleHandle = SHX1_2
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.initLocalVehicle
      SHX2_2 = SHX0_2.vehicleHandle
      SHX1_2(SHX2_2)
      SHX1_2 = SHX25_1
      SHX2_2 = SHX0_2.vehicleHandle
      SHX1_2(SHX2_2)
      SHX1_2 = SetVehicleOnGroundProperly
      SHX2_2 = SHX0_2.vehicleHandle
      SHX1_2(SHX2_2)
      SHX1_2 = SetVehicleDoorOpen
      SHX2_2 = SHX0_2.vehicleHandle
      SHX3_2 = 2
      SHX4_2 = false
      SHX5_2 = true
      SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
      SHX1_2 = SetVehicleDoorOpen
      SHX2_2 = SHX0_2.vehicleHandle
      SHX3_2 = 3
      SHX4_2 = false
      SHX5_2 = true
      SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
      SHX1_2 = SetVehicleDoorsLocked
      SHX2_2 = SHX0_2.vehicleHandle
      SHX3_2 = 2
      SHX1_2(SHX2_2, SHX3_2)
      SHX1_2 = SetVehicleDoorsLockedForAllPlayers
      SHX2_2 = SHX0_2.vehicleHandle
      SHX3_2 = true
      SHX1_2(SHX2_2, SHX3_2)
    end
  end
  SHX1_2 = SetModelAsNoLongerNeeded
  SHX2_2 = SHX0_2.pedModel
  SHX1_2(SHX2_2)
  SHX1_2 = SetModelAsNoLongerNeeded
  SHX2_2 = SHX0_2.vehicleModel
  SHX1_2(SHX2_2)
end
function SHX27_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX0_2.isActive = false
  SHX1_2 = SHX0_2.pedHandle
  if SHX1_2 then
    SHX1_2 = DeleteEntity
    SHX2_2 = SHX0_2.pedHandle
    SHX1_2(SHX2_2)
    SHX0_2.pedHandle = nil
  end
  SHX1_2 = SHX0_2.vehicleHandle
  if SHX1_2 then
    SHX1_2 = DeleteEntity
    SHX2_2 = SHX0_2.vehicleHandle
    SHX1_2(SHX2_2)
    SHX0_2.vehicleHandle = nil
  end
end
SHX28_1 = nil
SHX29_1 = 0.0
SHX30_1 = 0.0
SHX31_1 = false
SHX32_1 = false
SHX33_1 = 0
function SHX34_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  if 0 == SHX0_2 or -1569615261 == SHX0_2 or 1953687840 == SHX0_2 then
    SHX1_2 = true
    return SHX1_2
  end
  SHX1_2 = SHX0_1.weaponHashToModels
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX2_2 = SHX0_1.weapons
    SHX2_2 = SHX2_2[SHX1_2]
    if SHX2_2 then
      SHX3_2 = SHX2_2.class
      if "Pistol" == SHX3_2 then
        SHX3_2 = true
        return SHX3_2
      end
    end
    SHX3_2 = false
    return SHX3_2
  end
  SHX2_2 = GetWeapontypeGroup
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX2_2 = 416676503 == SHX2_2
  return SHX2_2
end
function SHX35_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerBucket
  SHX0_2 = SHX0_2()
  if 0 ~= SHX0_2 then
    SHX0_2 = false
    return SHX0_2
  end
  SHX0_2 = SHX28_1
  if SHX0_2 then
    SHX0_2 = SHX29_1
    if not (SHX0_2 <= 0.0) then
      goto SHX_LABEL_16
    end
  end
  SHX0_2 = false
  return SHX0_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_16:: outside nested blocks until all 'goto SHX_LABEL_16' can see it
  ::SHX_LABEL_16::
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerCoords
  SHX0_2 = SHX0_2()
  SHX1_2 = pairs
  SHX2_2 = SHX28_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX0_2.xy
    SHX8_2 = SHX6_2.xy
    SHX7_2 = SHX7_2 - SHX8_2
    SHX7_2 = #SHX7_2
    SHX8_2 = SHX29_1
    if SHX7_2 <= SHX8_2 then
      SHX7_2 = math
      SHX7_2 = SHX7_2.abs
      SHX8_2 = SHX0_2.z
      SHX9_2 = SHX6_2.z
      SHX8_2 = SHX8_2 - SHX9_2
      SHX7_2 = SHX7_2(SHX8_2)
      SHX8_2 = SHX30_1
      if SHX7_2 <= SHX8_2 then
        SHX7_2 = true
        return SHX7_2
      end
    end
  end
  SHX1_2 = false
  return SHX1_2
end
function SHX36_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = SHX35_1
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX1_2 = false
    SHX32_1 = SHX1_2
    return
  end
  SHX1_2 = SHX32_1
  if not SHX1_2 then
    SHX1_2 = true
    SHX32_1 = SHX1_2
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.notify
    SHX2_2 = "~b~Pistol only zone~s~ - only pistols may be used in this area."
    SHX1_2(SHX2_2)
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.inEvent
  SHX1_2 = SHX1_2()
  if SHX1_2 then
    return
  end
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = PlayerId
  SHX2_2 = SHX2_2()
  SHX3_2 = GetSelectedPedWeapon
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  if -1569615261 == SHX3_2 then
    return
  end
  SHX4_2 = SHX34_1
  SHX5_2 = SHX3_2
  SHX4_2 = SHX4_2(SHX5_2)
  if SHX4_2 then
    return
  end
  SHX4_2 = DisablePlayerFiring
  SHX5_2 = SHX2_2
  SHX6_2 = true
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = DisableControlAction
  SHX5_2 = 0
  SHX6_2 = 24
  SHX7_2 = true
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = DisableControlAction
  SHX5_2 = 0
  SHX6_2 = 257
  SHX7_2 = true
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = DisableControlAction
  SHX5_2 = 0
  SHX6_2 = 263
  SHX7_2 = true
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = GetGameTimer
  SHX4_2 = SHX4_2()
  SHX5_2 = SHX33_1
  SHX4_2 = SHX4_2 - SHX5_2
  SHX5_2 = 3000
  if SHX4_2 > SHX5_2 then
    SHX4_2 = tCMG
    SHX4_2 = SHX4_2.notify
    SHX5_2 = "~r~Only pistols can be used in this area!"
    SHX4_2(SHX5_2)
    SHX4_2 = GetGameTimer
    SHX4_2 = SHX4_2()
    SHX33_1 = SHX4_2
  end
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.setWeapon
  SHX5_2 = SHX1_2
  SHX6_2 = -1569615261
  SHX7_2 = true
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
end
function SHX37_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX1_2 = {}
  SHX28_1 = SHX1_2
  SHX1_2 = SHX2_1.pistolZone
  SHX1_2 = SHX1_2.radius
  SHX29_1 = SHX1_2
  SHX1_2 = SHX2_1.pistolZone
  SHX1_2 = SHX1_2.height
  SHX30_1 = SHX1_2
  SHX1_2 = pairs
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.pistolZone
    if SHX7_2 then
      SHX7_2 = SHX28_1
      SHX7_2 = #SHX7_2
      SHX8_2 = SHX7_2 + 1
      SHX7_2 = SHX28_1
      SHX9_2 = SHX6_2.shop
      SHX7_2[SHX8_2] = SHX9_2
      SHX7_2 = AddBlipForRadius
      SHX8_2 = SHX6_2.shop
      SHX8_2 = SHX8_2.x
      SHX9_2 = SHX6_2.shop
      SHX9_2 = SHX9_2.y
      SHX10_2 = SHX6_2.shop
      SHX10_2 = SHX10_2.z
      SHX11_2 = SHX29_1
      SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
      SHX8_2 = SetBlipColour
      SHX9_2 = SHX7_2
      SHX10_2 = 5
      SHX8_2(SHX9_2, SHX10_2)
      SHX8_2 = SetBlipAlpha
      SHX9_2 = SHX7_2
      SHX10_2 = 180
      SHX8_2(SHX9_2, SHX10_2)
      SHX8_2 = SetBlipDisplay
      SHX9_2 = SHX7_2
      SHX10_2 = 5
      SHX8_2(SHX9_2, SHX10_2)
      SHX8_2 = CMG
      SHX8_2 = SHX8_2.addBlipContext
      SHX9_2 = "Civilian"
      SHX10_2 = SHX7_2
      SHX8_2(SHX9_2, SHX10_2)
    end
  end
  SHX1_2 = SHX28_1
  SHX1_2 = #SHX1_2
  if SHX1_2 > 0 then
    SHX1_2 = SHX31_1
    if not SHX1_2 then
      SHX1_2 = true
      SHX31_1 = SHX1_2
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.createThreadOnTick
      SHX2_2 = SHX36_1
      SHX3_2 = "Small Arms Pistol Zone"
      SHX1_2(SHX2_2, SHX3_2)
    end
  end
end
SHX38_1 = RegisterNetEvent
SHX39_1 = "1e8e401746"
function SHX40_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX1_2 = nil
  while not SHX1_2 do
    SHX2_2 = SHX1_1.CMGGunStores
    SHX1_2 = SHX2_2.SmallArmsDealer
    SHX2_2 = Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
  SHX2_2 = SHX1_2._config
  if not SHX2_2 then
    return
  end
  SHX3_2 = pairs
  SHX4_2 = SHX0_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = CMG
    SHX9_2 = SHX9_2.createGunStore
    SHX10_2 = "Small Arms "
    SHX11_2 = tostring
    SHX12_2 = SHX7_2
    SHX11_2 = SHX11_2(SHX12_2)
    SHX10_2 = SHX10_2 .. SHX11_2
    SHX11_2 = "SmallArmsDealer"
    SHX12_2 = SHX8_2.shop
    SHX13_2 = vector3
    SHX14_2 = 0.0
    SHX15_2 = 0.0
    SHX16_2 = 0.99
    SHX13_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2)
    SHX12_2 = SHX12_2 - SHX13_2
    SHX9_2(SHX10_2, SHX11_2, SHX12_2)
    SHX9_2 = CMG
    SHX9_2 = SHX9_2.createArea
    SHX10_2 = "small_arms_"
    SHX11_2 = tostring
    SHX12_2 = SHX7_2
    SHX11_2 = SHX11_2(SHX12_2)
    SHX10_2 = SHX10_2 .. SHX11_2
    SHX11_2 = SHX8_2.shop
    SHX12_2 = SHX2_1.pistolZone
    SHX12_2 = SHX12_2.radius
    SHX13_2 = SHX2_1.pistolZone
    SHX13_2 = SHX13_2.height
    SHX14_2 = SHX26_1
    SHX15_2 = SHX27_1
    function SHX16_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    SHX17_2 = SHX8_2
    SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
    SHX9_2 = tCMG
    SHX9_2 = SHX9_2.addBlip
    SHX10_2 = SHX8_2.shop
    SHX10_2 = SHX10_2.x
    SHX11_2 = SHX8_2.shop
    SHX11_2 = SHX11_2.y
    SHX12_2 = SHX8_2.shop
    SHX12_2 = SHX12_2.z
    SHX13_2 = SHX2_2[2]
    SHX14_2 = SHX2_2[3]
    SHX15_2 = SHX2_2[4]
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    SHX10_2 = CMG
    SHX10_2 = SHX10_2.addBlipContext
    SHX11_2 = "Civilian"
    SHX12_2 = SHX9_2
    SHX10_2(SHX11_2, SHX12_2)
    SHX10_2 = SHX8_2.van
    if SHX10_2 then
      SHX10_2 = AddBlipForRadius
      SHX11_2 = SHX8_2.shop
      SHX11_2 = SHX11_2.x
      SHX12_2 = SHX8_2.shop
      SHX12_2 = SHX12_2.y
      SHX13_2 = SHX8_2.shop
      SHX13_2 = SHX13_2.z
      SHX14_2 = 20.0
      SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2)
      SHX11_2 = SetBlipColour
      SHX12_2 = SHX10_2
      SHX13_2 = 5
      SHX11_2(SHX12_2, SHX13_2)
      SHX11_2 = SetBlipAlpha
      SHX12_2 = SHX10_2
      SHX13_2 = 180
      SHX11_2(SHX12_2, SHX13_2)
      SHX11_2 = CMG
      SHX11_2 = SHX11_2.addBlipContext
      SHX12_2 = "Civilian"
      SHX13_2 = SHX10_2
      SHX11_2(SHX12_2, SHX13_2)
    end
  end
  SHX12_1 = SHX0_2
  SHX3_2 = SHX37_1
  SHX4_2 = SHX0_2
  SHX3_2(SHX4_2)
end
SHX38_1(SHX39_1, SHX40_1)
SHX38_1 = CMG
function SHX39_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = {}
  SHX1_2 = pairs
  SHX2_2 = SHX12_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.shop
    if SHX7_2 then
      SHX7_2 = #SHX0_2
      SHX7_2 = SHX7_2 + 1
      SHX8_2 = SHX6_2.shop
      SHX0_2[SHX7_2] = SHX8_2
    end
  end
  return SHX0_2
end
SHX38_1.getSmallArmsShopCoordsForHudWaypoint = SHX39_1
function SHX38_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadAnimDict
  SHX2_2 = "mp_common"
  SHX1_2(SHX2_2)
  SHX1_2 = TaskPlayAnim
  SHX2_2 = SHX0_2
  SHX3_2 = "mp_common"
  SHX4_2 = "givetake1_a"
  SHX5_2 = 8.0
  SHX6_2 = 8.0
  SHX7_2 = 2000
  SHX8_2 = 1
  SHX9_2 = 0
  SHX10_2 = false
  SHX11_2 = false
  SHX12_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX1_2 = RemoveAnimDict
  SHX2_2 = "mp_common"
  SHX1_2(SHX2_2)
end
SHX39_1 = RegisterNetEvent
SHX40_1 = "efb8051732"
function SHX41_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX1_2 = GetPlayerFromServerId
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if -1 == SHX1_2 then
    return
  end
  SHX2_2 = GetPlayerPed
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if 0 == SHX2_2 then
    return
  end
  SHX3_2 = PlayerPedId
  SHX3_2 = SHX3_2()
  if SHX2_2 == SHX3_2 then
    SHX4_2 = SHX38_1
    SHX5_2 = SHX3_2
    SHX4_2(SHX5_2)
  end
  SHX4_2 = GetEntityCoords
  SHX5_2 = SHX2_2
  SHX6_2 = true
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX5_2 = pairs
  SHX6_2 = SHX12_1
  SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
  for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
    SHX11_2 = SHX10_2.pedHandle
    if SHX11_2 then
      SHX11_2 = GetEntityCoords
      SHX12_2 = SHX10_2.pedHandle
      SHX13_2 = true
      SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
      SHX12_2 = SHX4_2 - SHX11_2
      SHX12_2 = #SHX12_2
      if SHX12_2 < 10.0 then
        SHX12_2 = SHX38_1
        SHX13_2 = SHX10_2.pedHandle
        SHX12_2(SHX13_2)
        break
      end
    end
  end
end
SHX39_1(SHX40_1, SHX41_1)
SHX39_1 = CMG
SHX39_1 = SHX39_1.createDynamicPed
SHX40_1 = -1275859404
SHX41_1 = vector3
SHX42_1 = 1444.9714355469
SHX43_1 = 6333.5341796875
SHX44_1 = 23.854248046875
SHX41_1 = SHX41_1(SHX42_1, SHX43_1, SHX44_1)
SHX42_1 = 90.708656311035
SHX43_1 = true
SHX44_1 = nil
SHX45_1 = nil
SHX46_1 = 25.0
SHX47_1 = nil
function SHX48_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
SHX39_1(SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1)
SHX39_1 = SHX1_1.CMGGunStores
SHX39_1 = SHX39_1.Legion
SHX39_1 = SHX39_1._config
SHX39_1 = SHX39_1[1]
SHX40_1 = pairs
SHX41_1 = SHX39_1
SHX40_1, SHX41_1, SHX42_1, SHX43_1 = SHX40_1(SHX41_1)
for SHX44_1, SHX45_1 in SHX40_1, SHX41_1, SHX42_1, SHX43_1 do
  SHX46_1 = tCMG
  SHX46_1 = SHX46_1.addBlip
  SHX47_1 = SHX45_1.x
  SHX48_1 = SHX45_1.y
  SHX49_1 = SHX45_1.z
  SHX50_1 = 154
  SHX51_1 = 1
  SHX52_1 = "Melee Store"
  SHX53_1 = 1.0
  SHX46_1 = SHX46_1(SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1)
  SHX47_1 = CMG
  SHX47_1 = SHX47_1.addBlipContext
  SHX48_1 = "Civilian"
  SHX49_1 = SHX46_1
  SHX47_1(SHX48_1, SHX49_1)
end
