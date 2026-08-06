-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1
SHX0_1 = TriggerEvent
SHX1_1 = "chat:addSuggestion"
SHX2_1 = "/dl"
SHX3_1 = "Manage your driving licence and book a test"
SHX0_1(SHX1_1, SHX2_1, SHX3_1)
SHX0_1 = CMG
SHX1_1 = {}
SHX0_1.DVSA = SHX1_1
SHX0_1 = RMenu
SHX0_1 = SHX0_1.Add
SHX1_1 = "dvsa"
SHX2_1 = "main"
SHX3_1 = RageUI
SHX3_1 = SHX3_1.CreateMenu
SHX4_1 = ""
SHX5_1 = "CMG Learning Centre"
SHX6_1 = CMG
SHX6_1 = SHX6_1.getRageUIMenuWidth
SHX6_1 = SHX6_1()
SHX7_1 = CMG
SHX7_1 = SHX7_1.getRageUIMenuHeight
SHX7_1 = SHX7_1()
SHX8_1 = "dvsa_banner"
SHX9_1 = "dvsa_banner"
SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1)
SHX0_1(SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1)
SHX0_1 = RMenu
SHX0_1 = SHX0_1.Add
SHX1_1 = "dvsa"
SHX2_1 = "surrenderconfirm"
SHX3_1 = RageUI
SHX3_1 = SHX3_1.CreateSubMenu
SHX4_1 = RMenu
SHX5_1 = SHX4_1
SHX4_1 = SHX4_1.Get
SHX6_1 = "dvsa"
SHX7_1 = "main"
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX5_1 = ""
SHX6_1 = "~b~Surrender Licence"
SHX7_1 = CMG
SHX7_1 = SHX7_1.getRageUIMenuWidth
SHX7_1 = SHX7_1()
SHX8_1 = CMG
SHX8_1 = SHX8_1.getRageUIMenuHeight
SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1 = SHX8_1()
SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1)
SHX0_1(SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1)
SHX0_1 = RMenu
SHX0_1 = SHX0_1.Add
SHX1_1 = "dvsa"
SHX2_1 = "licence"
SHX3_1 = RageUI
SHX3_1 = SHX3_1.CreateSubMenu
SHX4_1 = RMenu
SHX5_1 = SHX4_1
SHX4_1 = SHX4_1.Get
SHX6_1 = "dvsa"
SHX7_1 = "main"
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX5_1 = ""
SHX6_1 = "~b~Driving Licence"
SHX7_1 = CMG
SHX7_1 = SHX7_1.getRageUIMenuWidth
SHX7_1 = SHX7_1()
SHX8_1 = CMG
SHX8_1 = SHX8_1.getRageUIMenuHeight
SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1 = SHX8_1()
SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1)
SHX0_1(SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1)
SHX0_1 = RMenu
SHX0_1 = SHX0_1.Add
SHX1_1 = "dvsa"
SHX2_1 = "tests"
SHX3_1 = RageUI
SHX3_1 = SHX3_1.CreateSubMenu
SHX4_1 = RMenu
SHX5_1 = SHX4_1
SHX4_1 = SHX4_1.Get
SHX6_1 = "dvsa"
SHX7_1 = "main"
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX5_1 = ""
SHX6_1 = "~b~Driving Tests"
SHX7_1 = CMG
SHX7_1 = SHX7_1.getRageUIMenuWidth
SHX7_1 = SHX7_1()
SHX8_1 = CMG
SHX8_1 = SHX8_1.getRageUIMenuHeight
SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1 = SHX8_1()
SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1)
SHX0_1(SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1)
SHX0_1 = RMenu
SHX0_1 = SHX0_1.Add
SHX1_1 = "dvsa"
SHX2_1 = "alerts"
SHX3_1 = RageUI
SHX3_1 = SHX3_1.CreateSubMenu
SHX4_1 = RMenu
SHX5_1 = SHX4_1
SHX4_1 = SHX4_1.Get
SHX6_1 = "dvsa"
SHX7_1 = "main"
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX5_1 = ""
SHX6_1 = "~b~Alerts"
SHX7_1 = CMG
SHX7_1 = SHX7_1.getRageUIMenuWidth
SHX7_1 = SHX7_1()
SHX8_1 = CMG
SHX8_1 = SHX8_1.getRageUIMenuHeight
SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1 = SHX8_1()
SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1)
SHX0_1(SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1)
SHX0_1 = {}
SHX1_1 = {}
SHX2_1 = {}
SHX3_1 = {}
SHX4_1 = false
SHX5_1 = false
SHX6_1 = {}
SHX7_1 = nil
SHX8_1 = {}
SHX8_1.active = false
SHX8_1.ped = 0
SHX8_1.vehicle = 0
SHX8_1.parkingSpace = 0
SHX8_1.route = 0
SHX8_1.waypoint = 0
SHX8_1.blip = 0
SHX8_1.serious = 0
SHX8_1.minors = 0
SHX9_1 = {}
SHX8_1.minorsReason = SHX9_1
SHX9_1 = {}
SHX8_1.seriousReason = SHX9_1
SHX8_1.subtitle = ""
SHX9_1 = CMG
SHX9_1 = SHX9_1.loadModule
SHX10_1 = "cfg/cfg_dvsa"
SHX9_1 = SHX9_1(SHX10_1)
SHX10_1 = tCMG
SHX10_1 = SHX10_1.addMarker
SHX11_1 = SHX9_1.test
SHX11_1 = SHX11_1.reception
SHX11_1 = SHX11_1.x
SHX12_1 = SHX9_1.test
SHX12_1 = SHX12_1.reception
SHX12_1 = SHX12_1.y
SHX13_1 = SHX9_1.test
SHX13_1 = SHX13_1.reception
SHX13_1 = SHX13_1.z
SHX13_1 = SHX13_1 - 0.96
SHX14_1 = 1.2
SHX15_1 = 1.2
SHX16_1 = 1.2
SHX17_1 = 0
SHX18_1 = 255
SHX19_1 = 125
SHX20_1 = 125
SHX21_1 = 50
SHX22_1 = 27
SHX23_1 = true
SHX24_1 = false
SHX25_1 = false
SHX26_1 = nil
SHX27_1 = nil
SHX28_1 = 0.0
SHX29_1 = 0.0
SHX30_1 = 0.0
SHX10_1(SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1)
SHX10_1 = tCMG
SHX10_1 = SHX10_1.addBlip
SHX11_1 = SHX9_1.test
SHX11_1 = SHX11_1.reception
SHX11_1 = SHX11_1.x
SHX12_1 = SHX9_1.test
SHX12_1 = SHX12_1.reception
SHX12_1 = SHX12_1.y
SHX13_1 = SHX9_1.test
SHX13_1 = SHX13_1.reception
SHX13_1 = SHX13_1.z
SHX14_1 = 523
SHX15_1 = 47
SHX16_1 = "CMG Learning Centre"
SHX17_1 = 1.0
SHX18_1 = false
SHX10_1(SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1)
function SHX10_1()
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
  SHX0_2 = true
  SHX5_1 = SHX0_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Visible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "dvsa"
  SHX4_2 = "licence"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Visible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "dvsa"
  SHX4_2 = "tests"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Visible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "dvsa"
  SHX4_2 = "alerts"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Visible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "dvsa"
  SHX4_2 = "main"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
end
function SHX11_1()
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
  SHX3_2 = "dvsa"
  SHX4_2 = "main"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = false
  SHX5_1 = SHX0_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.CloseAll
  SHX0_2()
end
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
SHX13_1 = CMG
SHX13_1 = SHX13_1.createArea
SHX14_1 = "dvsaTestCentre_"
SHX15_1 = SHX9_1.test
SHX15_1 = SHX15_1.reception
SHX16_1 = 1.5
SHX17_1 = 6
SHX18_1 = SHX10_1
SHX19_1 = SHX11_1
SHX20_1 = SHX12_1
SHX13_1(SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1)
SHX13_1 = RegisterNetEvent
SHX14_1 = "47b6267afd"
function SHX15_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  SHX0_1 = SHX0_2
  SHX1_1 = SHX1_2
  SHX2_1 = SHX2_2
  SHX3_1 = SHX3_2
  SHX4_2 = pairs
  SHX5_2 = SHX9_1.peds
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
  for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    SHX10_2 = SHX9_2.eup
    if not SHX10_2 then
      SHX10_2 = vector3
      SHX11_2 = SHX9_2.coords
      SHX11_2 = SHX11_2.x
      SHX12_2 = SHX9_2.coords
      SHX12_2 = SHX12_2.y
      SHX13_2 = SHX9_2.coords
      SHX13_2 = SHX13_2.z
      SHX13_2 = SHX13_2 - 1.02
      SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
      SHX11_2 = CMG
      SHX11_2 = SHX11_2.createDynamicPed
      SHX12_2 = SHX9_2.model
      SHX13_2 = SHX10_2
      SHX14_2 = SHX9_2.heading
      SHX15_2 = true
      SHX16_2 = "mini@strip_club@idles@bouncer@base"
      SHX17_2 = "base"
      SHX18_2 = 30
      SHX19_2 = false
      function SHX20_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3
      end
      SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
    end
  end
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.loadModel
  SHX5_2 = SHX9_1.models
  SHX5_2 = SHX5_2.camera
  SHX4_2(SHX5_2)
  SHX4_2 = pairs
  SHX5_2 = SHX9_1.cameras
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
  for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    SHX10_2 = SHX9_1.cameras
    SHX10_2 = SHX10_2[SHX8_2]
    SHX11_2 = CreateObject
    SHX12_2 = SHX9_1.models
    SHX12_2 = SHX12_2.camera
    SHX13_2 = SHX9_2.coords
    SHX13_2 = SHX13_2.x
    SHX14_2 = SHX9_2.coords
    SHX14_2 = SHX14_2.y
    SHX15_2 = SHX9_2.coords
    SHX15_2 = SHX15_2.z
    SHX16_2 = false
    SHX17_2 = false
    SHX18_2 = false
    SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
    SHX10_2.prop = SHX11_2
    while true do
      SHX10_2 = DoesEntityExist
      SHX11_2 = SHX9_1.cameras
      SHX11_2 = SHX11_2[SHX8_2]
      SHX11_2 = SHX11_2.prop
      SHX10_2 = SHX10_2(SHX11_2)
      if SHX10_2 then
        break
      end
      SHX10_2 = Wait
      SHX11_2 = 0
      SHX10_2(SHX11_2)
    end
    SHX10_2 = PlaceObjectOnGroundProperly
    SHX11_2 = SHX9_1.cameras
    SHX11_2 = SHX11_2[SHX8_2]
    SHX11_2 = SHX11_2.prop
    SHX10_2(SHX11_2)
    SHX10_2 = SetEntityHeading
    SHX11_2 = SHX9_1.cameras
    SHX11_2 = SHX11_2[SHX8_2]
    SHX11_2 = SHX11_2.prop
    SHX12_2 = SHX9_2.heading
    SHX10_2(SHX11_2, SHX12_2)
    SHX10_2 = FreezeEntityPosition
    SHX11_2 = SHX9_1.cameras
    SHX11_2 = SHX11_2[SHX8_2]
    SHX11_2 = SHX11_2.prop
    SHX12_2 = true
    SHX10_2(SHX11_2, SHX12_2)
    SHX10_2 = SHX9_1.cameras
    SHX10_2 = SHX10_2[SHX8_2]
    SHX10_2.flashed = false
    SHX10_2 = SHX9_1.cameras
    SHX10_2 = SHX10_2[SHX8_2]
    SHX11_2 = GetOffsetFromEntityInWorldCoords
    SHX12_2 = SHX9_1.cameras
    SHX12_2 = SHX12_2[SHX8_2]
    SHX12_2 = SHX12_2.prop
    SHX13_2 = 0.0
    SHX14_2 = 7.0
    SHX15_2 = 0.5
    SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    SHX10_2.offSet = SHX11_2
    SHX10_2 = GetGroundZFor_3dCoord
    SHX11_2 = SHX9_1.cameras
    SHX11_2 = SHX11_2[SHX8_2]
    SHX11_2 = SHX11_2.offSet
    SHX11_2 = SHX11_2.x
    SHX12_2 = SHX9_1.cameras
    SHX12_2 = SHX12_2[SHX8_2]
    SHX12_2 = SHX12_2.offSet
    SHX12_2 = SHX12_2.y
    SHX13_2 = SHX9_1.cameras
    SHX13_2 = SHX13_2[SHX8_2]
    SHX13_2 = SHX13_2.offSet
    SHX13_2 = SHX13_2.z
    SHX14_2 = 0
    SHX15_2 = false
    SHX10_2, SHX11_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    SHX12_2 = SHX9_1.cameras
    SHX12_2 = SHX12_2[SHX8_2]
    SHX13_2 = vector3
    SHX14_2 = SHX9_1.cameras
    SHX14_2 = SHX14_2[SHX8_2]
    SHX14_2 = SHX14_2.offSet
    SHX14_2 = SHX14_2.x
    SHX15_2 = SHX9_1.cameras
    SHX15_2 = SHX15_2[SHX8_2]
    SHX15_2 = SHX15_2.offSet
    SHX15_2 = SHX15_2.y
    SHX16_2 = SHX11_2 + 0.2
    SHX13_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2)
    SHX12_2.offSet = SHX13_2
  end
  SHX4_2 = SetModelAsNoLongerNeeded
  SHX5_2 = SHX9_1.models
  SHX5_2 = SHX5_2.camera
  SHX4_2(SHX5_2)
end
SHX13_1(SHX14_1, SHX15_1)
SHX13_1 = RegisterNetEvent
SHX14_1 = "c32c90c683"
function SHX15_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  if nil ~= SHX0_2 then
    SHX0_1 = SHX0_2
  end
  if nil ~= SHX1_2 then
    SHX1_1 = SHX1_2
  end
  if nil ~= SHX2_2 then
    SHX2_1 = SHX2_2
  end
  if nil ~= SHX3_2 then
    SHX3_1 = SHX3_2
  end
end
SHX13_1(SHX14_1, SHX15_1)
SHX13_1 = RegisterNetEvent
SHX14_1 = "cb3b7b0160"
function SHX15_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2
  SHX3_2 = notify
  SHX4_2 = SHX2_2
  SHX3_2(SHX4_2)
end
SHX13_1(SHX14_1, SHX15_1)
SHX13_1 = false
SHX14_1 = CMG
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX8_1
  return SHX0_2
end
SHX14_1.getCurrentDVSATest = SHX15_1
SHX14_1 = RegisterNetEvent
SHX15_1 = "f395e7a334"
function SHX16_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  if SHX0_2 then
    SHX3_2 = SHX8_1.active
    if SHX3_2 then
      SHX3_2 = notify
      SHX4_2 = "~r~A driving test is already in progress."
      SHX3_2(SHX4_2)
      return
    end
    SHX3_2 = {}
    SHX3_2.active = false
    SHX3_2.ped = 0
    SHX3_2.vehicle = 0
    SHX3_2.parkingSpace = 0
    SHX3_2.route = 0
    SHX3_2.waypoint = 0
    SHX3_2.blip = 0
    SHX3_2.serious = 0
    SHX3_2.minors = 0
    SHX4_2 = {}
    SHX3_2.minorsReason = SHX4_2
    SHX4_2 = {}
    SHX3_2.seriousReason = SHX4_2
    SHX3_2.subtitle = ""
    SHX4_2 = true == SHX2_2
    SHX3_2.quick = SHX4_2
    SHX8_1 = SHX3_2
    SHX8_1.active = true
    SHX8_1.parkingSpace = SHX1_2
    SHX3_2 = false
    SHX13_1 = SHX3_2
    SHX8_1.serious = 0
    SHX8_1.seriousIssued = false
    SHX8_1.minors = 0
    SHX3_2 = nil
    SHX7_1 = SHX3_2
    SHX3_2 = TriggerServerEvent
    SHX4_2 = "90aa93a379"
    SHX5_2 = false
    SHX3_2(SHX4_2, SHX5_2)
    SHX3_2 = GetGameTimer
    SHX3_2 = SHX3_2()
    SHX3_2 = SHX3_2 + 10000
    while true do
      SHX4_2 = GetGameTimer
      SHX4_2 = SHX4_2()
      if not (SHX3_2 > SHX4_2) then
        break
      end
      SHX4_2 = SHX7_1
      if nil ~= SHX4_2 then
        SHX4_2 = CMG
        SHX4_2 = SHX4_2.getPlayerBucket
        SHX4_2 = SHX4_2()
        SHX5_2 = SHX7_1
        if SHX4_2 == SHX5_2 then
          break
        end
      end
      SHX4_2 = Wait
      SHX5_2 = 0
      SHX4_2(SHX5_2)
    end
    SHX4_2 = SHX7_1
    if nil ~= SHX4_2 then
      SHX4_2 = CMG
      SHX4_2 = SHX4_2.getPlayerBucket
      SHX4_2 = SHX4_2()
      SHX5_2 = SHX7_1
      if SHX4_2 == SHX5_2 then
        goto SHX_LABEL_90
      end
    end
    SHX8_1.active = false
    SHX8_1.requested = false
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.notifyPicture
    SHX5_2 = SHX9_1.images
    SHX5_2 = SHX5_2.dict
    SHX6_2 = SHX9_1.images
    SHX6_2 = SHX6_2.govLarge
    SHX7_2 = "We could not prepare your test, please try again."
    SHX8_2 = "Marcus"
    SHX9_2 = "Driving Examiner"
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    return
    -- [FIX IF ERROR] Move ::SHX_LABEL_90:: outside nested blocks until all 'goto SHX_LABEL_90' can see it
    ::SHX_LABEL_90::
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.spawnVehicle
    SHX5_2 = SHX9_1.test
    SHX5_2 = SHX5_2.modelName
    SHX6_2 = SHX9_1.test
    SHX6_2 = SHX6_2.parkingSpaces
    SHX6_2 = SHX6_2[SHX1_2]
    SHX6_2 = SHX6_2.coords
    SHX6_2 = SHX6_2.x
    SHX7_2 = SHX9_1.test
    SHX7_2 = SHX7_2.parkingSpaces
    SHX7_2 = SHX7_2[SHX1_2]
    SHX7_2 = SHX7_2.coords
    SHX7_2 = SHX7_2.y
    SHX8_2 = SHX9_1.test
    SHX8_2 = SHX8_2.parkingSpaces
    SHX8_2 = SHX8_2[SHX1_2]
    SHX8_2 = SHX8_2.coords
    SHX8_2 = SHX8_2.z
    SHX9_2 = SHX9_1.test
    SHX9_2 = SHX9_2.parkingSpaces
    SHX9_2 = SHX9_2[SHX1_2]
    SHX9_2 = SHX9_2.heading
    SHX10_2 = true
    SHX11_2 = false
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX8_1.vehicle = SHX4_2
    SHX4_2 = DoesEntityExist
    SHX5_2 = SHX8_1.vehicle
    SHX4_2 = SHX4_2(SHX5_2)
    if not SHX4_2 then
      SHX8_1.active = false
      SHX8_1.requested = false
      SHX4_2 = TriggerServerEvent
      SHX5_2 = "90aa93a379"
      SHX6_2 = true
      SHX4_2(SHX5_2, SHX6_2)
      SHX4_2 = CMG
      SHX4_2 = SHX4_2.notifyPicture
      SHX5_2 = SHX9_1.images
      SHX5_2 = SHX5_2.dict
      SHX6_2 = SHX9_1.images
      SHX6_2 = SHX6_2.govLarge
      SHX7_2 = "We could not prepare your test vehicle, please try again."
      SHX8_2 = "Marcus"
      SHX9_2 = "Driving Examiner"
      SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
      return
    end
    SHX4_2 = FreezeEntityPosition
    SHX5_2 = SHX8_1.vehicle
    SHX6_2 = true
    SHX4_2(SHX5_2, SHX6_2)
    SHX4_2 = SetVehicleDirtLevel
    SHX5_2 = SHX8_1.vehicle
    SHX6_2 = 0
    SHX4_2(SHX5_2, SHX6_2)
    SHX4_2 = SetVehicleRadioEnabled
    SHX5_2 = SHX8_1.vehicle
    SHX6_2 = false
    SHX4_2(SHX5_2, SHX6_2)
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.loadModel
    SHX5_2 = SHX9_1.test
    SHX5_2 = SHX5_2.examinerModel
    SHX4_2 = SHX4_2(SHX5_2)
    SHX5_2 = SHX8_1.quick
    if SHX5_2 then
      SHX5_2 = CreatePed
      SHX6_2 = 26
      SHX7_2 = SHX4_2
      SHX8_2 = SHX9_1.test
      SHX8_2 = SHX8_2.parkingSpaces
      SHX8_2 = SHX8_2[SHX1_2]
      SHX8_2 = SHX8_2.coords
      SHX8_2 = SHX8_2.x
      SHX9_2 = SHX9_1.test
      SHX9_2 = SHX9_2.parkingSpaces
      SHX9_2 = SHX9_2[SHX1_2]
      SHX9_2 = SHX9_2.coords
      SHX9_2 = SHX9_2.y
      SHX10_2 = SHX9_1.test
      SHX10_2 = SHX10_2.parkingSpaces
      SHX10_2 = SHX10_2[SHX1_2]
      SHX10_2 = SHX10_2.coords
      SHX10_2 = SHX10_2.z
      SHX11_2 = SHX9_1.test
      SHX11_2 = SHX11_2.parkingSpaces
      SHX11_2 = SHX11_2[SHX1_2]
      SHX11_2 = SHX11_2.heading
      SHX12_2 = false
      SHX13_2 = true
      SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
      SHX8_1.ped = SHX5_2
      while true do
        SHX5_2 = DoesEntityExist
        SHX6_2 = SHX8_1.ped
        SHX5_2 = SHX5_2(SHX6_2)
        if SHX5_2 then
          break
        end
        SHX5_2 = Wait
        SHX6_2 = 0
        SHX5_2(SHX6_2)
      end
      SHX5_2 = SetModelAsNoLongerNeeded
      SHX6_2 = SHX4_2
      SHX5_2(SHX6_2)
      SHX5_2 = SetEntityCanBeDamaged
      SHX6_2 = SHX8_1.ped
      SHX7_2 = false
      SHX5_2(SHX6_2, SHX7_2)
      SHX5_2 = SetPedAsEnemy
      SHX6_2 = SHX8_1.ped
      SHX7_2 = false
      SHX5_2(SHX6_2, SHX7_2)
      SHX5_2 = SetBlockingOfNonTemporaryEvents
      SHX6_2 = SHX8_1.ped
      SHX7_2 = true
      SHX5_2(SHX6_2, SHX7_2)
      SHX5_2 = SetPedCanRagdollFromPlayerImpact
      SHX6_2 = SHX8_1.ped
      SHX7_2 = false
      SHX5_2(SHX6_2, SHX7_2)
      SHX5_2 = TaskWarpPedIntoVehicle
      SHX6_2 = SHX8_1.ped
      SHX7_2 = SHX8_1.vehicle
      SHX8_2 = 0
      SHX5_2(SHX6_2, SHX7_2, SHX8_2)
      SHX5_2 = SetVehicleHasMutedSirens
      SHX6_2 = SHX8_1.vehicle
      SHX7_2 = true
      SHX5_2(SHX6_2, SHX7_2)
      SHX5_2 = SetVehicleLightsMode
      SHX6_2 = SHX8_1.vehicle
      SHX7_2 = 0
      SHX5_2(SHX6_2, SHX7_2)
      SHX5_2 = CMG
      SHX5_2 = SHX5_2.DVSA
      SHX5_2 = SHX5_2.initialMoveOff
      SHX5_2()
      return
    end
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.DVSA
    SHX5_2 = SHX5_2.cameraTransition
    SHX6_2 = SHX9_1.test
    SHX6_2 = SHX6_2.parkingSpaces
    SHX6_2 = SHX6_2[SHX1_2]
    SHX6_2 = SHX6_2.coords
    SHX5_2(SHX6_2)
    SHX5_2 = CreatePed
    SHX6_2 = 26
    SHX7_2 = SHX4_2
    SHX8_2 = 218.611
    SHX9_2 = -1390.879
    SHX10_2 = 30.57727
    SHX11_2 = 321.37
    SHX12_2 = false
    SHX13_2 = true
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX8_1.ped = SHX5_2
    while true do
      SHX5_2 = DoesEntityExist
      SHX6_2 = SHX8_1.ped
      SHX5_2 = SHX5_2(SHX6_2)
      if SHX5_2 then
        break
      end
      SHX5_2 = Wait
      SHX6_2 = 0
      SHX5_2(SHX6_2)
    end
    SHX5_2 = SetModelAsNoLongerNeeded
    SHX6_2 = SHX4_2
    SHX5_2(SHX6_2)
    SHX5_2 = SetEntityCanBeDamaged
    SHX6_2 = SHX8_1.ped
    SHX7_2 = false
    SHX5_2(SHX6_2, SHX7_2)
    SHX5_2 = SetPedAsEnemy
    SHX6_2 = SHX8_1.ped
    SHX7_2 = false
    SHX5_2(SHX6_2, SHX7_2)
    SHX5_2 = SetBlockingOfNonTemporaryEvents
    SHX6_2 = SHX8_1.ped
    SHX7_2 = true
    SHX5_2(SHX6_2, SHX7_2)
    SHX5_2 = SetPedCanRagdollFromPlayerImpact
    SHX6_2 = SHX8_1.ped
    SHX7_2 = false
    SHX5_2(SHX6_2, SHX7_2)
    SHX5_2 = TaskGoToEntity
    SHX6_2 = SHX8_1.ped
    SHX7_2 = SHX8_1.vehicle
    SHX8_2 = 10.0
    SHX9_2 = 2.0
    SHX10_2 = 5.0
    SHX11_2 = 0
    SHX12_2 = 0
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX5_2 = TaskGoToCoordAnyMeans
    SHX6_2 = SHX8_1.ped
    SHX7_2 = SHX9_1.test
    SHX7_2 = SHX7_2.parkingSpaces
    SHX7_2 = SHX7_2[SHX1_2]
    SHX7_2 = SHX7_2.coords
    SHX7_2 = SHX7_2.x
    SHX8_2 = SHX9_1.test
    SHX8_2 = SHX8_2.parkingSpaces
    SHX8_2 = SHX8_2[SHX1_2]
    SHX8_2 = SHX8_2.coords
    SHX8_2 = SHX8_2.y
    SHX9_2 = SHX9_1.test
    SHX9_2 = SHX9_2.parkingSpaces
    SHX9_2 = SHX9_2[SHX1_2]
    SHX9_2 = SHX9_2.coords
    SHX9_2 = SHX9_2.z
    SHX10_2 = 6.0
    SHX11_2 = false
    SHX12_2 = false
    SHX13_2 = 786603
    SHX14_2 = 1.0
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX5_2 = SetVehicleEngineOn
    SHX6_2 = SHX8_1.vehicle
    SHX7_2 = false
    SHX8_2 = true
    SHX9_2 = true
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    SHX5_2 = SetVehicleHasMutedSirens
    SHX6_2 = SHX8_1.vehicle
    SHX7_2 = true
    SHX5_2(SHX6_2, SHX7_2)
    SHX5_2 = SetVehicleLightsMode
    SHX6_2 = SHX8_1.vehicle
    SHX7_2 = 0
    SHX5_2(SHX6_2, SHX7_2)
    SHX5_2 = Wait
    SHX6_2 = 9000
    SHX5_2(SHX6_2)
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.DVSA
    SHX5_2 = SHX5_2.dvsaSound
    SHX6_2 = "welcome"
    SHX5_2(SHX6_2)
    SHX8_1.subtitle = "Hey! I'm ~y~Marcus"
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.notifyPicture
    SHX6_2 = SHX9_1.images
    SHX6_2 = SHX6_2.dict
    SHX7_2 = SHX9_1.images
    SHX7_2 = SHX7_2.govLarge
    SHX8_2 = "Your assigned examiner for the test is Marcus."
    SHX9_2 = "CMG Learning Centre"
    SHX10_2 = "UK Government"
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.loadAnimDict
    SHX6_2 = "amb@medic@standing@tendtodead@base"
    SHX5_2(SHX6_2)
    SHX5_2 = TaskPlayAnim
    SHX6_2 = SHX8_1.ped
    SHX7_2 = "amb@medic@standing@tendtodead@base"
    SHX8_2 = "base"
    SHX9_2 = 8.0
    SHX10_2 = 0.0
    SHX11_2 = -1
    SHX12_2 = 1
    SHX13_2 = 0
    SHX14_2 = false
    SHX15_2 = false
    SHX16_2 = false
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
    SHX5_2 = RemoveAnimDict
    SHX6_2 = "amb@medic@standing@tendtodead@base"
    SHX5_2(SHX6_2)
    SHX5_2 = Wait
    SHX6_2 = 5000
    SHX5_2(SHX6_2)
    SHX8_1.subtitle = "I am a ~b~driving examiner~w~ for the ~b~CMG Learning Centre"
    SHX8_1.subtitle = "I'm just inspecting your vehicle"
    SHX5_2 = Wait
    SHX6_2 = 5000
    SHX5_2(SHX6_2)
    SHX8_1.subtitle = "Thanks for your patience, we'll start shortly"
    SHX5_2 = Wait
    SHX6_2 = 7000
    SHX5_2(SHX6_2)
    SHX8_1.subtitle = "Your vehicle is ~g~suitable ~w~for the test"
    SHX5_2 = Wait
    SHX6_2 = 5000
    SHX5_2(SHX6_2)
    SHX8_1.subtitle = "I will now enter the vehicle"
    SHX5_2 = ClearPedTasksImmediately
    SHX6_2 = SHX8_1.ped
    SHX5_2(SHX6_2)
    SHX5_2 = TaskEnterVehicle
    SHX6_2 = SHX8_1.ped
    SHX7_2 = SHX8_1.vehicle
    SHX8_2 = 10.0
    SHX9_2 = 0
    SHX10_2 = 5.0
    SHX11_2 = 0
    SHX12_2 = 0
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX5_2 = Wait
    SHX6_2 = 4000
    SHX5_2(SHX6_2)
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.notifyPicture
    SHX6_2 = SHX9_1.images
    SHX6_2 = SHX6_2.dict
    SHX7_2 = SHX9_1.images
    SHX7_2 = SHX7_2.govLarge
    SHX8_2 = "You'll now be given information about the test, listen carefully"
    SHX9_2 = "CMG Learning Centre"
    SHX10_2 = "UK Government"
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.DVSA
    SHX5_2 = SHX5_2.initialMoveOff
    SHX5_2()
  else
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.notifyPicture
    SHX4_2 = SHX9_1.images
    SHX4_2 = SHX4_2.dict
    SHX5_2 = SHX9_1.images
    SHX5_2 = SHX5_2.govLarge
    SHX6_2 = "We currently have no test availability, please try again shortly."
    SHX7_2 = "Marcus"
    SHX8_2 = "Driving Examiner"
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX3_2 = SetTimeout
    SHX4_2 = 20000
    function SHX5_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX8_1.requested = false
    end
    SHX3_2(SHX4_2, SHX5_2)
  end
end
SHX14_1(SHX15_1, SHX16_1)
SHX14_1 = CMG
SHX14_1 = SHX14_1.DVSA
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = SHX8_1.quick
  if not SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.DVSA
    SHX0_2 = SHX0_2.dvsaSound
    SHX1_2 = "testExplained"
    SHX0_2(SHX1_2)
    SHX0_2 = pairs
    SHX1_2 = SHX9_1.notifications
    SHX1_2 = SHX1_2.testStartMessages
    SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
    for SHX4_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
      SHX5_2 = SHX9_1.notifications
      SHX5_2 = SHX5_2.testStartMessages
      SHX5_2 = SHX5_2[SHX4_2]
      SHX8_1.subtitle = SHX5_2
      SHX5_2 = Wait
      SHX6_2 = 4000
      SHX5_2(SHX6_2)
    end
  end
  SHX0_2 = math
  SHX0_2 = SHX0_2.random
  SHX1_2 = 1
  SHX2_2 = table
  SHX2_2 = SHX2_2.count
  SHX3_2 = SHX9_1.test
  SHX3_2 = SHX3_2.routes
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX2_2(SHX3_2)
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX8_1.route = SHX0_2
  SHX0_2 = SetVehicleEngineOn
  SHX1_2 = SHX8_1.vehicle
  SHX2_2 = true
  SHX3_2 = true
  SHX4_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = FreezeEntityPosition
  SHX1_2 = SHX8_1.vehicle
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SHX8_1.quick
  if not SHX0_2 then
    SHX0_2 = Wait
    SHX1_2 = 2000
    SHX0_2(SHX1_2)
  end
  SHX8_1.subtitle = "~y~Move off ~w~when you are ready, carrying out good, all round observations"
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.DVSA
  SHX0_2 = SHX0_2.handleTestRoute
  SHX0_2()
end
SHX14_1.initialMoveOff = SHX15_1
SHX14_1 = CMG
SHX14_1 = SHX14_1.DVSA
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX0_2 = false
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.addBlip
  SHX2_2 = SHX9_1.test
  SHX2_2 = SHX2_2.routes
  SHX3_2 = SHX8_1.route
  SHX2_2 = SHX2_2[SHX3_2]
  SHX3_2 = SHX8_1.waypoint
  SHX3_2 = SHX3_2 + 1
  SHX2_2 = SHX2_2[SHX3_2]
  SHX2_2 = SHX2_2.coords
  SHX2_2 = SHX2_2.x
  SHX3_2 = SHX9_1.test
  SHX3_2 = SHX3_2.routes
  SHX4_2 = SHX8_1.route
  SHX3_2 = SHX3_2[SHX4_2]
  SHX4_2 = SHX8_1.waypoint
  SHX4_2 = SHX4_2 + 1
  SHX3_2 = SHX3_2[SHX4_2]
  SHX3_2 = SHX3_2.coords
  SHX3_2 = SHX3_2.y
  SHX4_2 = SHX9_1.test
  SHX4_2 = SHX4_2.routes
  SHX5_2 = SHX8_1.route
  SHX4_2 = SHX4_2[SHX5_2]
  SHX5_2 = SHX8_1.waypoint
  SHX5_2 = SHX5_2 + 1
  SHX4_2 = SHX4_2[SHX5_2]
  SHX4_2 = SHX4_2.coords
  SHX4_2 = SHX4_2.z
  SHX5_2 = 0
  SHX6_2 = 38
  SHX7_2 = "Waypoint"
  SHX8_2 = 1.0
  SHX9_2 = false
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX8_1.blip = SHX1_2
  SHX1_2 = SetBlipRoute
  SHX2_2 = SHX8_1.blip
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetBlipRouteColour
  SHX2_2 = SHX8_1.blip
  SHX3_2 = 38
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SHX9_1.test
  SHX1_2 = SHX1_2.routes
  SHX2_2 = SHX8_1.route
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = SHX8_1.waypoint
  SHX2_2 = SHX2_2 + 1
  SHX1_2 = SHX1_2[SHX2_2]
  SHX1_2.speeding = false
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.addMarker
  SHX2_2 = SHX9_1.test
  SHX2_2 = SHX2_2.routes
  SHX3_2 = SHX8_1.route
  SHX2_2 = SHX2_2[SHX3_2]
  SHX3_2 = SHX8_1.waypoint
  SHX3_2 = SHX3_2 + 1
  SHX2_2 = SHX2_2[SHX3_2]
  SHX2_2 = SHX2_2.coords
  SHX2_2 = SHX2_2.x
  SHX3_2 = SHX9_1.test
  SHX3_2 = SHX3_2.routes
  SHX4_2 = SHX8_1.route
  SHX3_2 = SHX3_2[SHX4_2]
  SHX4_2 = SHX8_1.waypoint
  SHX4_2 = SHX4_2 + 1
  SHX3_2 = SHX3_2[SHX4_2]
  SHX3_2 = SHX3_2.coords
  SHX3_2 = SHX3_2.y
  SHX4_2 = SHX9_1.test
  SHX4_2 = SHX4_2.routes
  SHX5_2 = SHX8_1.route
  SHX4_2 = SHX4_2[SHX5_2]
  SHX5_2 = SHX8_1.waypoint
  SHX5_2 = SHX5_2 + 1
  SHX4_2 = SHX4_2[SHX5_2]
  SHX4_2 = SHX4_2.coords
  SHX4_2 = SHX4_2.z
  SHX5_2 = 1.6
  SHX6_2 = 1.6
  SHX7_2 = 1.6
  SHX8_2 = 0
  SHX9_2 = 89
  SHX10_2 = 255
  SHX11_2 = 200
  SHX12_2 = 50
  SHX13_2 = 36
  SHX14_2 = true
  SHX15_2 = true
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX8_1.marker = SHX1_2
  SHX8_1.subtitle = "Follow the ~y~sat nav"
  SHX1_2 = SHX8_1.quick
  if not SHX1_2 then
    SHX1_2 = Wait
    SHX2_2 = 2000
    SHX1_2(SHX2_2)
  end
  while true do
    SHX1_2 = SHX8_1.active
    if not SHX1_2 then
      break
    end
    if not SHX0_2 then
      SHX1_2 = SHX9_1.images
      SHX1_2 = SHX1_2.speed30
      SHX2_2 = SHX9_1.test
      SHX2_2 = SHX2_2.routes
      SHX3_2 = SHX8_1.route
      SHX2_2 = SHX2_2[SHX3_2]
      SHX3_2 = SHX8_1.waypoint
      SHX3_2 = SHX3_2 + 1
      SHX2_2 = SHX2_2[SHX3_2]
      SHX2_2 = SHX2_2.limit
      if 30.0 == SHX2_2 then
        SHX2_2 = SHX9_1.images
        SHX1_2 = SHX2_2.speed30
      end
      SHX2_2 = SHX9_1.test
      SHX2_2 = SHX2_2.routes
      SHX3_2 = SHX8_1.route
      SHX2_2 = SHX2_2[SHX3_2]
      SHX3_2 = SHX8_1.waypoint
      SHX3_2 = SHX3_2 + 1
      SHX2_2 = SHX2_2[SHX3_2]
      SHX2_2 = SHX2_2.limit
      if 40.0 == SHX2_2 then
        SHX2_2 = SHX9_1.images
        SHX1_2 = SHX2_2.speed40
      end
      SHX2_2 = SHX9_1.test
      SHX2_2 = SHX2_2.routes
      SHX3_2 = SHX8_1.route
      SHX2_2 = SHX2_2[SHX3_2]
      SHX3_2 = SHX8_1.waypoint
      SHX3_2 = SHX3_2 + 1
      SHX2_2 = SHX2_2[SHX3_2]
      SHX2_2 = SHX2_2.limit
      if 60.0 == SHX2_2 then
        SHX2_2 = SHX9_1.images
        SHX1_2 = SHX2_2.speed60
      end
      SHX2_2 = SHX9_1.test
      SHX2_2 = SHX2_2.routes
      SHX3_2 = SHX8_1.route
      SHX2_2 = SHX2_2[SHX3_2]
      SHX3_2 = SHX8_1.waypoint
      SHX3_2 = SHX3_2 + 1
      SHX2_2 = SHX2_2[SHX3_2]
      SHX2_2 = SHX2_2.limit
      if 70.0 == SHX2_2 then
        SHX2_2 = SHX9_1.images
        SHX1_2 = SHX2_2.speed70
      end
      SHX2_2 = HasStreamedTextureDictLoaded
      SHX3_2 = SHX9_1.images
      SHX3_2 = SHX3_2.dict
      SHX2_2 = SHX2_2(SHX3_2)
      if not SHX2_2 then
        SHX2_2 = RequestStreamedTextureDict
        SHX3_2 = SHX9_1.images
        SHX3_2 = SHX3_2.dict
        SHX4_2 = false
        SHX2_2(SHX3_2, SHX4_2)
        while true do
          SHX2_2 = HasStreamedTextureDictLoaded
          SHX3_2 = SHX9_1.images
          SHX3_2 = SHX3_2.dict
          SHX2_2 = SHX2_2(SHX3_2)
          if SHX2_2 then
            break
          end
          SHX2_2 = Wait
          SHX3_2 = 0
          SHX2_2(SHX3_2)
        end
      end
      SHX2_2 = DrawSprite
      SHX3_2 = SHX9_1.images
      SHX3_2 = SHX3_2.dict
      SHX4_2 = SHX1_2
      SHX5_2 = 0.95
      SHX6_2 = 0.77
      SHX7_2 = 0.052
      SHX8_2 = 0.09
      SHX9_2 = 0.05
      SHX10_2 = 255
      SHX11_2 = 255
      SHX12_2 = 255
      SHX13_2 = 255
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.getPlayerCoords
      SHX2_2 = SHX2_2()
      SHX3_2 = SHX9_1.test
      SHX3_2 = SHX3_2.routes
      SHX4_2 = SHX8_1.route
      SHX3_2 = SHX3_2[SHX4_2]
      SHX4_2 = SHX8_1.waypoint
      SHX4_2 = SHX4_2 + 1
      SHX3_2 = SHX3_2[SHX4_2]
      SHX3_2 = SHX3_2.coords
      SHX2_2 = SHX2_2 - SHX3_2
      SHX2_2 = #SHX2_2
      SHX3_2 = GetEntitySpeed
      SHX4_2 = SHX8_1.vehicle
      SHX3_2 = SHX3_2(SHX4_2)
      SHX3_2 = SHX3_2 * 2.236936
      SHX4_2 = SHX9_1.test
      SHX4_2 = SHX4_2.routes
      SHX5_2 = SHX8_1.route
      SHX4_2 = SHX4_2[SHX5_2]
      SHX5_2 = SHX8_1.waypoint
      SHX5_2 = SHX5_2 + 1
      SHX4_2 = SHX4_2[SHX5_2]
      SHX4_2 = SHX4_2.limit
      SHX4_2 = SHX4_2 + 19.0
      if SHX3_2 > SHX4_2 then
        SHX4_2 = SHX9_1.test
        SHX4_2 = SHX4_2.routes
        SHX5_2 = SHX8_1.route
        SHX4_2 = SHX4_2[SHX5_2]
        SHX5_2 = SHX8_1.waypoint
        SHX5_2 = SHX5_2 + 1
        SHX4_2 = SHX4_2[SHX5_2]
        SHX4_2 = SHX4_2.speeding
        if not SHX4_2 then
          SHX4_2 = CMG
          SHX4_2 = SHX4_2.DVSA
          SHX4_2 = SHX4_2.issueMinor
          SHX5_2 = "Speeding"
          SHX4_2(SHX5_2)
          SHX4_2 = SHX9_1.test
          SHX4_2 = SHX4_2.routes
          SHX5_2 = SHX8_1.route
          SHX4_2 = SHX4_2[SHX5_2]
          SHX5_2 = SHX8_1.waypoint
          SHX5_2 = SHX5_2 + 1
          SHX4_2 = SHX4_2[SHX5_2]
          SHX4_2.speeding = true
        else
          SHX4_2 = SHX9_1.test
          SHX4_2 = SHX4_2.routes
          SHX5_2 = SHX8_1.route
          SHX4_2 = SHX4_2[SHX5_2]
          SHX5_2 = SHX8_1.waypoint
          SHX5_2 = SHX5_2 + 1
          SHX4_2 = SHX4_2[SHX5_2]
          SHX4_2 = SHX4_2.limit
          SHX4_2 = SHX4_2 + 85.0
          if SHX3_2 > SHX4_2 then
            SHX4_2 = CMG
            SHX4_2 = SHX4_2.DVSA
            SHX4_2 = SHX4_2.issueSerious
            SHX5_2 = "Speeding"
            SHX4_2(SHX5_2)
            SHX4_2 = CMG
            SHX4_2 = SHX4_2.DVSA
            SHX4_2 = SHX4_2.dvsaSound
            SHX5_2 = "slowDownOrTermination"
            SHX4_2(SHX5_2)
            SHX8_1.subtitle = "You ~r~must ~w~slow down, or risk the test being terminated immediately"
            SHX8_1.subtitle = "Follow the ~y~sat nav"
          end
        end
      end
      SHX4_2 = 3.5
      if SHX2_2 < SHX4_2 then
        SHX4_2 = SHX8_1.waypoint
        SHX4_2 = SHX4_2 + 1
        SHX8_1.waypoint = SHX4_2
        SHX4_2 = SHX8_1.waypoint
        SHX5_2 = table
        SHX5_2 = SHX5_2.count
        SHX6_2 = SHX9_1.test
        SHX6_2 = SHX6_2.routes
        SHX7_2 = SHX8_1.route
        SHX6_2 = SHX6_2[SHX7_2]
        SHX5_2 = SHX5_2(SHX6_2)
        if SHX4_2 >= SHX5_2 then
          SHX0_2 = true
          SHX4_2 = SHX8_1.blip
          if 0 ~= SHX4_2 then
            SHX4_2 = tCMG
            SHX4_2 = SHX4_2.removeBlip
            SHX5_2 = SHX8_1.blip
            SHX4_2(SHX5_2)
          end
          SHX4_2 = SHX8_1.marker
          if 0 ~= SHX4_2 then
            SHX4_2 = tCMG
            SHX4_2 = SHX4_2.removeMarker
            SHX5_2 = SHX8_1.marker
            SHX4_2(SHX5_2)
          end
          SHX4_2 = CMG
          SHX4_2 = SHX4_2.DVSA
          SHX4_2 = SHX4_2.returnToTestCentre
          SHX4_2()
        else
          SHX4_2 = SHX8_1.blip
          if 0 ~= SHX4_2 then
            SHX4_2 = SHX8_1.blip
            if 0 ~= SHX4_2 then
              SHX4_2 = tCMG
              SHX4_2 = SHX4_2.removeBlip
              SHX5_2 = SHX8_1.blip
              SHX4_2(SHX5_2)
            end
          end
          SHX4_2 = tCMG
          SHX4_2 = SHX4_2.addBlip
          SHX5_2 = SHX9_1.test
          SHX5_2 = SHX5_2.routes
          SHX6_2 = SHX8_1.route
          SHX5_2 = SHX5_2[SHX6_2]
          SHX6_2 = SHX8_1.waypoint
          SHX6_2 = SHX6_2 + 1
          SHX5_2 = SHX5_2[SHX6_2]
          SHX5_2 = SHX5_2.coords
          SHX5_2 = SHX5_2.x
          SHX6_2 = SHX9_1.test
          SHX6_2 = SHX6_2.routes
          SHX7_2 = SHX8_1.route
          SHX6_2 = SHX6_2[SHX7_2]
          SHX7_2 = SHX8_1.waypoint
          SHX7_2 = SHX7_2 + 1
          SHX6_2 = SHX6_2[SHX7_2]
          SHX6_2 = SHX6_2.coords
          SHX6_2 = SHX6_2.y
          SHX7_2 = SHX9_1.test
          SHX7_2 = SHX7_2.routes
          SHX8_2 = SHX8_1.route
          SHX7_2 = SHX7_2[SHX8_2]
          SHX8_2 = SHX8_1.waypoint
          SHX8_2 = SHX8_2 + 1
          SHX7_2 = SHX7_2[SHX8_2]
          SHX7_2 = SHX7_2.coords
          SHX7_2 = SHX7_2.z
          SHX8_2 = 0
          SHX9_2 = 38
          SHX10_2 = "Waypoint"
          SHX11_2 = 1.0
          SHX12_2 = false
          SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
          SHX8_1.blip = SHX4_2
          SHX4_2 = SetBlipRoute
          SHX5_2 = SHX8_1.blip
          SHX6_2 = true
          SHX4_2(SHX5_2, SHX6_2)
          SHX4_2 = SetBlipRouteColour
          SHX5_2 = SHX8_1.blip
          SHX6_2 = 38
          SHX4_2(SHX5_2, SHX6_2)
          SHX4_2 = SHX8_1.marker
          if 0 ~= SHX4_2 then
            SHX4_2 = SHX8_1.marker
            if nil ~= SHX4_2 then
              SHX4_2 = tCMG
              SHX4_2 = SHX4_2.removeMarker
              SHX5_2 = SHX8_1.marker
              SHX4_2(SHX5_2)
            end
          end
          SHX4_2 = tCMG
          SHX4_2 = SHX4_2.addMarker
          SHX5_2 = SHX9_1.test
          SHX5_2 = SHX5_2.routes
          SHX6_2 = SHX8_1.route
          SHX5_2 = SHX5_2[SHX6_2]
          SHX6_2 = SHX8_1.waypoint
          SHX6_2 = SHX6_2 + 1
          SHX5_2 = SHX5_2[SHX6_2]
          SHX5_2 = SHX5_2.coords
          SHX5_2 = SHX5_2.x
          SHX6_2 = SHX9_1.test
          SHX6_2 = SHX6_2.routes
          SHX7_2 = SHX8_1.route
          SHX6_2 = SHX6_2[SHX7_2]
          SHX7_2 = SHX8_1.waypoint
          SHX7_2 = SHX7_2 + 1
          SHX6_2 = SHX6_2[SHX7_2]
          SHX6_2 = SHX6_2.coords
          SHX6_2 = SHX6_2.y
          SHX7_2 = SHX9_1.test
          SHX7_2 = SHX7_2.routes
          SHX8_2 = SHX8_1.route
          SHX7_2 = SHX7_2[SHX8_2]
          SHX8_2 = SHX8_1.waypoint
          SHX8_2 = SHX8_2 + 1
          SHX7_2 = SHX7_2[SHX8_2]
          SHX7_2 = SHX7_2.coords
          SHX7_2 = SHX7_2.z
          SHX8_2 = 1.6
          SHX9_2 = 1.6
          SHX10_2 = 1.6
          SHX11_2 = 0
          SHX12_2 = 89
          SHX13_2 = 255
          SHX14_2 = 200
          SHX15_2 = 50
          SHX16_2 = 36
          SHX17_2 = true
          SHX18_2 = true
          SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
          SHX8_1.marker = SHX4_2
          SHX4_2 = SHX9_1.test
          SHX4_2 = SHX4_2.routes
          SHX5_2 = SHX8_1.route
          SHX4_2 = SHX4_2[SHX5_2]
          SHX5_2 = SHX8_1.waypoint
          SHX5_2 = SHX5_2 + 1
          SHX4_2 = SHX4_2[SHX5_2]
          SHX4_2.speeding = false
          SHX4_2 = Citizen
          SHX4_2 = SHX4_2.CreateThread
          function SHX5_2()
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX0_3, SHX1_3
            SHX0_3 = SHX9_1.test
            SHX0_3 = SHX0_3.routes
            SHX1_3 = SHX8_1.route
            SHX0_3 = SHX0_3[SHX1_3]
            SHX1_3 = SHX8_1.waypoint
            SHX0_3 = SHX0_3[SHX1_3]
            SHX0_3 = SHX0_3.action
            SHX1_3 = SHX8_1
            SHX0_3(SHX1_3)
            SHX8_1.subtitle = "Follow the ~y~sat nav"
          end
          SHX4_2(SHX5_2)
        end
      end
    end
    SHX1_2 = Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
  end
end
SHX14_1.handleTestRoute = SHX15_1
SHX14_1 = CMG
SHX14_1 = SHX14_1.DVSA
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.DVSA
  SHX0_2 = SHX0_2.dvsaSound
  SHX1_2 = "policePursuitContinue"
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.notifyPicture
  SHX1_2 = SHX9_1.images
  SHX1_2 = SHX1_2.dict
  SHX2_2 = SHX9_1.images
  SHX2_2 = SHX2_2.govLarge
  SHX3_2 = "You are required to ~b~move over ~w~to allow a police pursuit to continue."
  SHX4_2 = "CMG Learning Centre"
  SHX5_2 = "UK Government"
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX8_1.subtitle = "Move ~y~over"
  SHX0_2 = -344943009
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadModel
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = vector3
  SHX2_2 = 113.0901
  SHX3_2 = -1226.426
  SHX4_2 = 37.60364
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.spawnVehicle
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2.x
  SHX5_2 = SHX1_2.y
  SHX6_2 = SHX1_2.z
  SHX7_2 = 270.93
  SHX8_2 = false
  SHX9_2 = false
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  while true do
    SHX3_2 = DoesEntityExist
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      break
    end
    SHX3_2 = Wait
    SHX4_2 = 0
    SHX3_2(SHX4_2)
  end
  SHX3_2 = SetModelAsNoLongerNeeded
  SHX4_2 = SHX0_2
  SHX3_2(SHX4_2)
  SHX3_2 = 826475330
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.loadModel
  SHX5_2 = SHX3_2
  SHX4_2(SHX5_2)
  SHX4_2 = CreatePed
  SHX5_2 = 4
  SHX6_2 = SHX3_2
  SHX7_2 = SHX1_2.x
  SHX8_2 = SHX1_2.y
  SHX9_2 = SHX1_2.z
  SHX10_2 = 270.93
  SHX11_2 = false
  SHX12_2 = false
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  while true do
    SHX5_2 = DoesEntityExist
    SHX6_2 = SHX4_2
    SHX5_2 = SHX5_2(SHX6_2)
    if SHX5_2 then
      break
    end
    SHX5_2 = Wait
    SHX6_2 = 0
    SHX5_2(SHX6_2)
  end
  SHX5_2 = SetModelAsNoLongerNeeded
  SHX6_2 = SHX3_2
  SHX5_2(SHX6_2)
  SHX5_2 = SetEntityInvincible
  SHX6_2 = SHX4_2
  SHX7_2 = true
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = SetPedAlertness
  SHX6_2 = SHX4_2
  SHX7_2 = 0.0
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = TaskWarpPedIntoVehicle
  SHX6_2 = SHX4_2
  SHX7_2 = SHX2_2
  SHX8_2 = -1
  SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = SetVehicleEngineOn
  SHX6_2 = SHX2_2
  SHX7_2 = true
  SHX8_2 = true
  SHX9_2 = false
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  while true do
    SHX5_2 = IsPedInVehicle
    SHX6_2 = SHX4_2
    SHX7_2 = SHX2_2
    SHX8_2 = false
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
    if SHX5_2 then
      break
    end
    SHX5_2 = Wait
    SHX6_2 = 0
    SHX5_2(SHX6_2)
  end
  SHX5_2 = vector3
  SHX6_2 = 816.9495
  SHX7_2 = -1216.404
  SHX8_2 = 45.8938
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX6_2 = TaskVehicleDriveToCoord
  SHX7_2 = SHX4_2
  SHX8_2 = SHX2_2
  SHX9_2 = SHX5_2.x
  SHX10_2 = SHX5_2.y
  SHX11_2 = SHX5_2.z
  SHX12_2 = 60.0
  SHX13_2 = 1.0
  SHX14_2 = SHX0_2
  SHX15_2 = 786472
  SHX16_2 = 1.0
  SHX17_2 = 0
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX6_2 = Wait
  SHX7_2 = 2000
  SHX6_2(SHX7_2)
  SHX6_2 = 1462516421
  SHX7_2 = IsModelValid
  SHX8_2 = SHX6_2
  SHX7_2 = SHX7_2(SHX8_2)
  if not SHX7_2 then
    SHX6_2 = 456714581
  end
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.loadModel
  SHX8_2 = SHX6_2
  SHX7_2(SHX8_2)
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.spawnVehicle
  SHX8_2 = SHX6_2
  SHX9_2 = SHX1_2.x
  SHX10_2 = SHX1_2.y
  SHX11_2 = SHX1_2.z
  SHX12_2 = 270.93
  SHX13_2 = false
  SHX14_2 = false
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  while true do
    SHX8_2 = DoesEntityExist
    SHX9_2 = SHX7_2
    SHX8_2 = SHX8_2(SHX9_2)
    if SHX8_2 then
      break
    end
    SHX8_2 = Wait
    SHX9_2 = 0
    SHX8_2(SHX9_2)
  end
  SHX8_2 = SetModelAsNoLongerNeeded
  SHX9_2 = SHX6_2
  SHX8_2(SHX9_2)
  SHX8_2 = 1644266841
  SHX9_2 = CMG
  SHX9_2 = SHX9_2.loadModel
  SHX10_2 = SHX8_2
  SHX9_2(SHX10_2)
  SHX9_2 = CreatePed
  SHX10_2 = 4
  SHX11_2 = SHX8_2
  SHX12_2 = SHX1_2.x
  SHX13_2 = SHX1_2.y
  SHX14_2 = SHX1_2.z
  SHX15_2 = 270.93
  SHX16_2 = false
  SHX17_2 = false
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  while true do
    SHX10_2 = DoesEntityExist
    SHX11_2 = SHX9_2
    SHX10_2 = SHX10_2(SHX11_2)
    if SHX10_2 then
      break
    end
    SHX10_2 = Wait
    SHX11_2 = 0
    SHX10_2(SHX11_2)
  end
  SHX10_2 = SetModelAsNoLongerNeeded
  SHX11_2 = SHX8_2
  SHX10_2(SHX11_2)
  SHX10_2 = SetEntityInvincible
  SHX11_2 = SHX9_2
  SHX12_2 = true
  SHX10_2(SHX11_2, SHX12_2)
  SHX10_2 = SetPedAlertness
  SHX11_2 = SHX9_2
  SHX12_2 = 0.0
  SHX10_2(SHX11_2, SHX12_2)
  SHX10_2 = TaskWarpPedIntoVehicle
  SHX11_2 = SHX9_2
  SHX12_2 = SHX7_2
  SHX13_2 = -1
  SHX10_2(SHX11_2, SHX12_2, SHX13_2)
  SHX10_2 = SetVehicleEngineOn
  SHX11_2 = SHX7_2
  SHX12_2 = true
  SHX13_2 = true
  SHX14_2 = false
  SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  while true do
    SHX10_2 = IsPedInVehicle
    SHX11_2 = SHX9_2
    SHX12_2 = SHX7_2
    SHX13_2 = false
    SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
    if SHX10_2 then
      break
    end
    SHX10_2 = Wait
    SHX11_2 = 0
    SHX10_2(SHX11_2)
  end
  SHX10_2 = GetSoundId
  SHX10_2 = SHX10_2()
  SHX11_2 = PlaySoundFromEntity
  SHX12_2 = SHX10_2
  SHX13_2 = "VEHICLES_HORNS_SIREN_1"
  SHX14_2 = SHX7_2
  SHX15_2 = nil
  SHX16_2 = false
  SHX17_2 = 0
  SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX11_2 = TaskVehicleDriveToCoord
  SHX12_2 = SHX9_2
  SHX13_2 = SHX7_2
  SHX14_2 = SHX5_2.x
  SHX15_2 = SHX5_2.y
  SHX16_2 = SHX5_2.z
  SHX17_2 = 70.0
  SHX18_2 = 1.0
  SHX19_2 = SHX6_2
  SHX20_2 = 786472
  SHX21_2 = 1.0
  SHX22_2 = 0
  SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
  SHX11_2 = Citizen
  SHX11_2 = SHX11_2.SetTimeout
  SHX12_2 = 30000
  function SHX13_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = DoesEntityExist
    SHX1_3 = SHX2_2
    SHX0_3 = SHX0_3(SHX1_3)
    if SHX0_3 then
      SHX0_3 = DeleteEntity
      SHX1_3 = SHX2_2
      SHX0_3(SHX1_3)
    end
    SHX0_3 = DoesEntityExist
    SHX1_3 = SHX4_2
    SHX0_3 = SHX0_3(SHX1_3)
    if SHX0_3 then
      SHX0_3 = DeleteEntity
      SHX1_3 = SHX4_2
      SHX0_3(SHX1_3)
    end
    SHX0_3 = DoesEntityExist
    SHX1_3 = SHX7_2
    SHX0_3 = SHX0_3(SHX1_3)
    if SHX0_3 then
      SHX0_3 = DeleteEntity
      SHX1_3 = SHX7_2
      SHX0_3(SHX1_3)
    end
    SHX0_3 = DoesEntityExist
    SHX1_3 = SHX9_2
    SHX0_3 = SHX0_3(SHX1_3)
    if SHX0_3 then
      SHX0_3 = DeleteEntity
      SHX1_3 = SHX9_2
      SHX0_3(SHX1_3)
    end
    SHX0_3 = StopSound
    SHX1_3 = SHX10_2
    SHX0_3(SHX1_3)
    SHX0_3 = ReleaseSoundId
    SHX1_3 = SHX10_2
    SHX0_3(SHX1_3)
  end
  SHX11_2(SHX12_2, SHX13_2)
end
SHX14_1.policeChase = SHX15_1
SHX14_1 = CMG
SHX14_1 = SHX14_1.DVSA
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX0_2 = GetVehicleEngineHealth
  SHX1_2 = SHX8_1.vehicle
  SHX0_2 = SHX0_2(SHX1_2)
  SHX1_2 = 700.0
  if SHX0_2 < SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.DVSA
    SHX1_2 = SHX1_2.issueSerious
    SHX2_2 = "Vehicle Collision"
    SHX1_2(SHX2_2)
  end
  SHX1_2 = true
  SHX2_2 = SHX8_1.serious
  if not (SHX2_2 > 0) then
    SHX2_2 = SHX8_1.minors
    if not (SHX2_2 > 15) then
      SHX2_2 = SHX8_1.seriousIssued
      if not SHX2_2 then
        goto SHX_LABEL_23
      end
    end
  end
  SHX1_2 = false
  -- [FIX IF ERROR] Move ::SHX_LABEL_23:: outside nested blocks until all 'goto SHX_LABEL_23' can see it
  ::SHX_LABEL_23::
  SHX2_2 = tCMG
  SHX2_2 = SHX2_2.addBlip
  SHX3_2 = SHX9_1.test
  SHX3_2 = SHX3_2.parkingSpaces
  SHX4_2 = SHX8_1.parkingSpace
  SHX3_2 = SHX3_2[SHX4_2]
  SHX3_2 = SHX3_2.coords
  SHX3_2 = SHX3_2.x
  SHX4_2 = SHX9_1.test
  SHX4_2 = SHX4_2.parkingSpaces
  SHX5_2 = SHX8_1.parkingSpace
  SHX4_2 = SHX4_2[SHX5_2]
  SHX4_2 = SHX4_2.coords
  SHX4_2 = SHX4_2.y
  SHX5_2 = SHX9_1.test
  SHX5_2 = SHX5_2.parkingSpaces
  SHX6_2 = SHX8_1.parkingSpace
  SHX5_2 = SHX5_2[SHX6_2]
  SHX5_2 = SHX5_2.coords
  SHX5_2 = SHX5_2.z
  SHX6_2 = 0
  SHX7_2 = 81
  SHX8_2 = "Waypoint"
  SHX9_2 = 1.0
  SHX10_2 = false
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX8_1.blip = SHX2_2
  SHX2_2 = tCMG
  SHX2_2 = SHX2_2.addMarker
  SHX3_2 = SHX9_1.test
  SHX3_2 = SHX3_2.parkingSpaces
  SHX4_2 = SHX8_1.parkingSpace
  SHX3_2 = SHX3_2[SHX4_2]
  SHX3_2 = SHX3_2.coords
  SHX3_2 = SHX3_2.x
  SHX4_2 = SHX9_1.test
  SHX4_2 = SHX4_2.parkingSpaces
  SHX5_2 = SHX8_1.parkingSpace
  SHX4_2 = SHX4_2[SHX5_2]
  SHX4_2 = SHX4_2.coords
  SHX4_2 = SHX4_2.y
  SHX5_2 = SHX9_1.test
  SHX5_2 = SHX5_2.parkingSpaces
  SHX6_2 = SHX8_1.parkingSpace
  SHX5_2 = SHX5_2[SHX6_2]
  SHX5_2 = SHX5_2.coords
  SHX5_2 = SHX5_2.z
  SHX6_2 = 1.2
  SHX7_2 = 1.2
  SHX8_2 = 1.2
  SHX9_2 = 0
  SHX10_2 = 255
  SHX11_2 = 125
  SHX12_2 = 125
  SHX13_2 = 50
  SHX14_2 = 0
  SHX15_2 = true
  SHX16_2 = true
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX8_1.marker = SHX2_2
  SHX2_2 = SetBlipRoute
  SHX3_2 = SHX8_1.blip
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetBlipRouteColour
  SHX3_2 = SHX8_1.blip
  SHX4_2 = 38
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.DVSA
  SHX2_2 = SHX2_2.dvsaSound
  SHX3_2 = "newDestinationSet"
  SHX2_2(SHX3_2)
  SHX8_1.subtitle = "I've set a ~y~new sat nav destination~w~, please follow it"
  SHX2_2 = Wait
  SHX3_2 = 4000
  SHX2_2(SHX3_2)
  SHX8_1.subtitle = "Follow the ~y~sat nav"
  while true do
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.getPlayerCoords
    SHX2_2 = SHX2_2()
    SHX3_2 = SHX9_1.test
    SHX3_2 = SHX3_2.parkingSpaces
    SHX4_2 = SHX8_1.parkingSpace
    SHX3_2 = SHX3_2[SHX4_2]
    SHX3_2 = SHX3_2.coords
    SHX2_2 = SHX2_2 - SHX3_2
    SHX2_2 = #SHX2_2
    if SHX2_2 < 15.0 then
      SHX8_1.subtitle = "Park up at the ~y~waypoint"
      break
    end
    SHX3_2 = Wait
    SHX4_2 = 0
    SHX3_2(SHX4_2)
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.DVSA
  SHX2_2 = SHX2_2.finishTest
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
end
SHX14_1.returnToTestCentre = SHX15_1
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = DeleteEntity
  SHX1_2 = SHX8_1.vehicle
  SHX0_2(SHX1_2)
  SHX0_2 = DeleteEntity
  SHX1_2 = SHX8_1.ped
  SHX0_2(SHX1_2)
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.teleport
  if nil ~= SHX0_2 then
    SHX0_2 = tCMG
    SHX0_2 = SHX0_2.teleport
    SHX1_2 = SHX9_1.test
    SHX1_2 = SHX1_2.finishTestTpCoords
    SHX1_2 = SHX1_2.x
    SHX2_2 = SHX9_1.test
    SHX2_2 = SHX2_2.finishTestTpCoords
    SHX2_2 = SHX2_2.y
    SHX3_2 = SHX9_1.test
    SHX3_2 = SHX3_2.finishTestTpCoords
    SHX3_2 = SHX3_2.z
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  end
end
function SHX15_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX3_2 = nil
  SHX7_1 = SHX3_2
  SHX3_2 = TriggerServerEvent
  SHX4_2 = "90aa93a379"
  SHX5_2 = true
  SHX3_2(SHX4_2, SHX5_2)
  if SHX0_2 then
    SHX3_2 = TriggerServerEvent
    SHX4_2 = "9dd6740ca1"
    SHX5_2 = SHX8_1.serious
    SHX6_2 = SHX8_1.minors
    SHX7_2 = SHX1_2
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
    SHX8_1.active = false
  else
    SHX3_2 = TriggerServerEvent
    SHX4_2 = "7bcdcadbbe"
    SHX5_2 = SHX8_1.serious
    SHX6_2 = SHX8_1.minors
    SHX7_2 = SHX2_2
    SHX8_2 = SHX1_2
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX8_1.active = false
  end
  SHX3_2 = SHX8_1.blip
  if 0 ~= SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.removeBlip
    SHX4_2 = SHX8_1.blip
    SHX3_2(SHX4_2)
  end
  SHX3_2 = SHX8_1.marker
  if 0 ~= SHX3_2 then
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.removeMarker
    SHX4_2 = SHX8_1.marker
    SHX3_2(SHX4_2)
  end
  SHX3_2 = ClearGpsPlayerWaypoint
  SHX3_2()
end
SHX16_1 = CMG
SHX16_1 = SHX16_1.DVSA
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX8_1.subtitle = "Park up ~y~safely"
  while true do
    SHX1_2 = GetEntitySpeed
    SHX2_2 = SHX8_1.vehicle
    SHX1_2 = SHX1_2(SHX2_2)
    SHX1_2 = not SHX1_2
    if 0.0 ~= SHX1_2 then
      break
    end
    SHX1_2 = Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
  end
  SHX1_2 = Wait
  SHX2_2 = 6000
  SHX1_2(SHX2_2)
  SHX1_2 = GetEntitySpeed
  SHX2_2 = SHX8_1.vehicle
  SHX1_2 = SHX1_2(SHX2_2)
  SHX1_2 = not SHX1_2
  if 0.0 == SHX1_2 then
    while true do
      SHX1_2 = GetEntitySpeed
      SHX2_2 = SHX8_1.vehicle
      SHX1_2 = SHX1_2(SHX2_2)
      SHX1_2 = not SHX1_2
      if 0.0 ~= SHX1_2 then
        break
      end
      SHX1_2 = Wait
      SHX2_2 = 0
      SHX1_2(SHX2_2)
    end
  end
  SHX1_2 = Wait
  SHX2_2 = 3000
  SHX1_2(SHX2_2)
  SHX1_2 = GetEntitySpeed
  SHX2_2 = SHX8_1.vehicle
  SHX1_2 = SHX1_2(SHX2_2)
  SHX1_2 = not SHX1_2
  if 0.0 == SHX1_2 then
    while true do
      SHX1_2 = GetEntitySpeed
      SHX2_2 = SHX8_1.vehicle
      SHX1_2 = SHX1_2(SHX2_2)
      SHX1_2 = not SHX1_2
      if 0.0 ~= SHX1_2 then
        break
      end
      SHX1_2 = Wait
      SHX2_2 = 0
      SHX1_2(SHX2_2)
    end
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.DVSA
  SHX1_2 = SHX1_2.useTablet
  SHX1_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.DVSA
  SHX1_2 = SHX1_2.dvsaSound
  SHX2_2 = "completePaperwork"
  SHX1_2(SHX2_2)
  SHX8_1.subtitle = "Please wait whilst I finish my ~y~paperwork"
  SHX1_2 = SetVehicleEngineOn
  SHX2_2 = SHX8_1.vehicle
  SHX3_2 = false
  SHX4_2 = true
  SHX5_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = FreezeEntityPosition
  SHX2_2 = SHX8_1.vehicle
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = Wait
  SHX2_2 = 10000
  SHX1_2(SHX2_2)
  SHX1_2 = ""
  SHX2_2 = ""
  if SHX0_2 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.DVSA
    SHX3_2 = SHX3_2.dvsaSound
    SHX4_2 = "testPassed"
    SHX3_2(SHX4_2)
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.notifyPicture
    SHX4_2 = SHX9_1.images
    SHX4_2 = SHX4_2.dict
    SHX5_2 = SHX9_1.images
    SHX5_2 = SHX5_2.govLarge
    SHX6_2 = "You ~b~passed your test with ~y~"
    SHX7_2 = SHX8_1.minors
    SHX8_2 = " ~w~minors"
    SHX6_2 = SHX6_2 .. SHX7_2 .. SHX8_2
    SHX7_2 = "UK Government"
    SHX8_2 = "CMG Learning Centre"
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX3_2 = "Congratulations, you have ~g~passed ~w~your driving test with ~y~"
    SHX4_2 = SHX8_1.minors
    SHX5_2 = " ~w~minors"
    SHX3_2 = SHX3_2 .. SHX4_2 .. SHX5_2
    SHX8_1.subtitle = SHX3_2
    SHX3_2 = Wait
    SHX4_2 = 6000
    SHX3_2(SHX4_2)
    SHX8_1.subtitle = "This is only the beginning to becoming a ~b~safe ~w~and ~b~confident driver"
    SHX3_2 = Wait
    SHX4_2 = 4000
    SHX3_2(SHX4_2)
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.DVSA
    SHX3_2 = SHX3_2.dvsaSound
    SHX4_2 = "testPassedGoodbye"
    SHX3_2(SHX4_2)
    SHX8_1.subtitle = "I would like to add you drove very well and I wish you the best of luck in the future"
    SHX3_2 = Wait
    SHX4_2 = 4000
    SHX3_2(SHX4_2)
    SHX8_1.subtitle = "See you around!"
  else
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.DVSA
    SHX3_2 = SHX3_2.dvsaSound
    SHX4_2 = "testFailed"
    SHX3_2(SHX4_2)
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.notifyPicture
    SHX4_2 = SHX9_1.images
    SHX4_2 = SHX4_2.dict
    SHX5_2 = SHX9_1.images
    SHX5_2 = SHX5_2.govLarge
    SHX6_2 = "Unfortunately you have ~r~failed your test"
    SHX7_2 = "UK Government"
    SHX8_2 = "CMG Learning Centre"
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX8_1.subtitle = "Unfortunately you have ~y~failed ~w~your driving test"
    SHX3_2 = Wait
    SHX4_2 = 6000
    SHX3_2(SHX4_2)
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.notifyPicture
    SHX4_2 = SHX9_1.images
    SHX4_2 = SHX4_2.dict
    SHX5_2 = SHX9_1.images
    SHX5_2 = SHX5_2.govLarge
    SHX6_2 = "Your ~r~serious ~w~faults were:"
    SHX7_2 = "UK Government"
    SHX8_2 = "CMG Learning Centre"
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX3_2 = Wait
    SHX4_2 = 3000
    SHX3_2(SHX4_2)
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.DVSA
    SHX3_2 = SHX3_2.dvsaSound
    SHX4_2 = "seriousFaults"
    SHX3_2(SHX4_2)
    SHX3_2 = pairs
    SHX4_2 = SHX8_1.seriousReason
    SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
    for SHX7_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
      SHX8_2 = SHX2_2
      SHX9_2 = ", "
      SHX10_2 = SHX8_1.seriousReason
      SHX10_2 = SHX10_2[SHX7_2]
      SHX8_2 = SHX8_2 .. SHX9_2 .. SHX10_2
      SHX2_2 = SHX8_2
      SHX8_2 = tCMG
      SHX8_2 = SHX8_2.notify
      SHX9_2 = "~r~Serious Fault~w~: "
      SHX10_2 = SHX8_1.seriousReason
      SHX10_2 = SHX10_2[SHX7_2]
      SHX9_2 = SHX9_2 .. SHX10_2
      SHX8_2(SHX9_2)
      SHX8_2 = Wait
      SHX9_2 = 500
      SHX8_2(SHX9_2)
    end
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.notifyPicture
    SHX4_2 = SHX9_1.images
    SHX4_2 = SHX4_2.dict
    SHX5_2 = SHX9_1.images
    SHX5_2 = SHX5_2.govLarge
    SHX6_2 = "Your ~y~minor ~w~faults were:"
    SHX7_2 = "UK Government"
    SHX8_2 = "CMG Learning Centre"
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX3_2 = Wait
    SHX4_2 = 3000
    SHX3_2(SHX4_2)
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.DVSA
    SHX3_2 = SHX3_2.dvsaSound
    SHX4_2 = "minorFaults"
    SHX3_2(SHX4_2)
    SHX3_2 = pairs
    SHX4_2 = SHX8_1.minorsReason
    SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
    for SHX7_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
      SHX8_2 = SHX1_2
      SHX9_2 = ", "
      SHX10_2 = SHX8_1.minorsReason
      SHX10_2 = SHX10_2[SHX7_2]
      SHX8_2 = SHX8_2 .. SHX9_2 .. SHX10_2
      SHX1_2 = SHX8_2
      SHX8_2 = tCMG
      SHX8_2 = SHX8_2.notify
      SHX9_2 = "~y~Minor Fault~w~: "
      SHX10_2 = SHX8_1.minorsReason
      SHX10_2 = SHX10_2[SHX7_2]
      SHX9_2 = SHX9_2 .. SHX10_2
      SHX8_2(SHX9_2)
      SHX8_2 = Wait
      SHX9_2 = 500
      SHX8_2(SHX9_2)
    end
    SHX3_2 = Wait
    SHX4_2 = 4000
    SHX3_2(SHX4_2)
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.DVSA
    SHX3_2 = SHX3_2.dvsaSound
    SHX4_2 = "testFailedGoodbye"
    SHX3_2(SHX4_2)
    SHX8_1.subtitle = "We do not fail a candidate lightly and we hope you have the ~b~determination ~w~to improve"
    SHX3_2 = Wait
    SHX4_2 = 4000
    SHX3_2(SHX4_2)
    SHX8_1.subtitle = "I wish you the best of luck in the future and I look forward to seeing you next time"
    SHX3_2 = Wait
    SHX4_2 = 4000
    SHX3_2(SHX4_2)
    SHX8_1.subtitle = "Goodbye!"
    SHX3_2 = Wait
    SHX4_2 = 4000
    SHX3_2(SHX4_2)
  end
  SHX3_2 = Wait
  SHX4_2 = 5000
  SHX3_2(SHX4_2)
  SHX3_2 = SHX14_1
  SHX3_2()
  SHX3_2 = Wait
  SHX4_2 = 3000
  SHX3_2(SHX4_2)
  SHX3_2 = SetTimeout
  SHX4_2 = 20000
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX8_1.requested = false
  end
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SHX15_1
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  SHX6_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
end
SHX16_1.finishTest = SHX17_1
SHX16_1 = CMG
SHX16_1 = SHX16_1.DVSA
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = table
  SHX1_2 = SHX1_2.insert
  SHX2_2 = SHX8_1.seriousReason
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
  SHX8_1.seriousIssued = true
  SHX1_2 = SHX8_1.serious
  SHX1_2 = SHX1_2 + 1
  SHX8_1.serious = SHX1_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.DVSA
  SHX1_2 = SHX1_2.useTablet
  SHX1_2()
end
SHX16_1.issueSerious = SHX17_1
SHX16_1 = CMG
SHX16_1 = SHX16_1.DVSA
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = table
  SHX1_2 = SHX1_2.insert
  SHX2_2 = SHX8_1.minorsReason
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SHX8_1.minors
  SHX1_2 = SHX1_2 + 1
  SHX8_1.minors = SHX1_2
  SHX1_2 = 0
  SHX2_2 = pairs
  SHX3_2 = SHX8_1.minorsReason
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX7_2 = SHX8_1.minorsReason
    SHX7_2 = SHX7_2[SHX6_2]
    if "Speeding" == SHX7_2 then
      SHX1_2 = SHX1_2 + 1
    end
  end
  if 4 == SHX1_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.DVSA
    SHX2_2 = SHX2_2.issueSerious
    SHX3_2 = "Speeding"
    SHX2_2(SHX3_2)
  else
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.DVSA
    SHX2_2 = SHX2_2.useTablet
    SHX2_2()
  end
end
SHX16_1.issueMinor = SHX17_1
SHX16_1 = RegisterNetEvent
SHX17_1 = "05a6478fe0"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX8_1.active
  if SHX0_2 then
    SHX0_2 = SHX13_1
    if not SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.DVSA
      SHX0_2 = SHX0_2.issueSerious
      SHX1_2 = "Used mobile phone"
      SHX0_2(SHX1_2)
      SHX0_2 = true
      SHX13_1 = SHX0_2
    end
  end
end
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = CMG
SHX16_1 = SHX16_1.DVSA
function SHX17_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = PlaySoundFrontend
  SHX1_2 = -1
  SHX2_2 = "Out_Of_Bounds_Timer"
  SHX3_2 = "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS"
  SHX4_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.notifyPicture
  SHX1_2 = SHX9_1.images
  SHX1_2 = SHX1_2.dict
  SHX2_2 = SHX9_1.images
  SHX2_2 = SHX2_2.govLarge
  SHX3_2 = "Listen carefully for directions"
  SHX4_2 = "Controlled Stop"
  SHX5_2 = "CMG Learning Centre"
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = false
  SHX1_2 = false
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.DVSA
  SHX2_2 = SHX2_2.dvsaSound
  SHX3_2 = "controlledStop"
  SHX2_2(SHX3_2)
  SHX8_1.subtitle = "We will soon carry out a ~b~controlled stop"
  SHX2_2 = Wait
  SHX3_2 = 4000
  SHX2_2(SHX3_2)
  SHX8_1.subtitle = "When it is safe to do so, ~y~pull up ~w~and park safely ~y~on the right hand side ~w~of the road."
  SHX2_2 = SetTimeout
  SHX3_2 = 20000
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = true
    SHX0_2 = SHX0_3
  end
  SHX2_2(SHX3_2, SHX4_2)
  while not SHX0_2 do
    SHX2_2 = GetEntitySpeed
    SHX3_2 = SHX8_1.vehicle
    SHX2_2 = SHX2_2(SHX3_2)
    if 0.0 == SHX2_2 then
      SHX2_2 = Wait
      SHX3_2 = 2000
      SHX2_2(SHX3_2)
      SHX2_2 = GetEntitySpeed
      SHX3_2 = SHX8_1.vehicle
      SHX2_2 = SHX2_2(SHX3_2)
      if 0.0 == SHX2_2 then
        SHX0_2 = true
        break
      else
        SHX8_1.subtitle = "Please pull up ~y~on the right"
      end
    elseif SHX0_2 then
      SHX8_1.subtitle = "Thank you, please move off again when you are ready"
      SHX1_2 = true
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.DVSA
      SHX2_2 = SHX2_2.issueSerious
      SHX3_2 = "Controlled Stop - Serious"
      SHX2_2(SHX3_2)
      break
    end
    SHX2_2 = Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
  SHX2_2 = Wait
  SHX3_2 = 2000
  SHX2_2(SHX3_2)
  if not SHX1_2 then
    SHX8_1.subtitle = "Thank you, please move off again when you are ready"
  else
    SHX8_1.subtitle = "Thank you, please move off again when you are ready"
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.DVSA
  SHX2_2 = SHX2_2.dvsaSound
  SHX3_2 = "moveOffWhenReady"
  SHX2_2(SHX3_2)
  SHX2_2 = Wait
  SHX3_2 = 2000
  SHX2_2(SHX3_2)
  SHX8_1.subtitle = "Follow the ~y~sat nav"
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.DVSA
  SHX2_2 = SHX2_2.useTablet
  SHX2_2()
end
SHX16_1.pullUpOnRight = SHX17_1
SHX16_1 = CMG
SHX16_1 = SHX16_1.DVSA
function SHX17_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = PlaySoundFrontend
  SHX1_2 = -1
  SHX2_2 = "Out_Of_Bounds_Timer"
  SHX3_2 = "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS"
  SHX4_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.notifyPicture
  SHX1_2 = SHX9_1.images
  SHX1_2 = SHX1_2.dict
  SHX2_2 = SHX9_1.images
  SHX2_2 = SHX2_2.govLarge
  SHX3_2 = "Listen carefully for directions"
  SHX4_2 = "Show Me Question"
  SHX5_2 = "CMG Learning Centre"
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX8_1.subtitle = "I will now ask you one ~y~show me question ~w~while driving"
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.DVSA
  SHX0_2 = SHX0_2.dvsaSound
  SHX1_2 = "askShowMeQuestion"
  SHX0_2(SHX1_2)
  SHX0_2 = Wait
  SHX1_2 = 6000
  SHX0_2(SHX1_2)
  SHX0_2 = false
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.DVSA
  SHX1_2 = SHX1_2.dvsaSound
  SHX2_2 = "operateMainBeamHeadlights"
  SHX1_2(SHX2_2)
  SHX8_1.subtitle = "When it is ~y~safe ~w~to do so, show me how you'd ~y~operate the main beam headlights."
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.notifyPicture
  SHX2_2 = SHX9_1.images
  SHX2_2 = SHX2_2.dict
  SHX3_2 = SHX9_1.images
  SHX3_2 = SHX3_2.govLarge
  SHX4_2 = "Turn on your headlights as requested"
  SHX5_2 = "Show Me Question"
  SHX6_2 = "CMG Learning Centre"
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX1_2 = SetTimeout
  SHX2_2 = 20000
  function SHX3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = true
    SHX0_2 = SHX0_3
  end
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = false
  while not SHX0_2 do
    SHX2_2 = GetVehicleLightsState
    SHX3_2 = SHX8_1.vehicle
    SHX2_2, SHX3_2, SHX4_2 = SHX2_2(SHX3_2)
    if SHX4_2 then
      SHX1_2 = true
    end
    if SHX4_2 then
      SHX5_2 = Wait
      SHX6_2 = 5000
      SHX5_2(SHX6_2)
      SHX0_2 = true
    end
    SHX5_2 = Wait
    SHX6_2 = 0
    SHX5_2(SHX6_2)
  end
  if not SHX1_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.DVSA
    SHX2_2 = SHX2_2.issueMinor
    SHX3_2 = "Show Me - Headlights"
    SHX2_2(SHX3_2)
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.DVSA
  SHX2_2 = SHX2_2.dvsaSound
  SHX3_2 = "continueToFollow"
  SHX2_2(SHX3_2)
  SHX8_1.subtitle = "Thank you, please continue to follow the sat nav"
  SHX2_2 = Wait
  SHX3_2 = 2000
  SHX2_2(SHX3_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.notifyPicture
  SHX3_2 = SHX9_1.images
  SHX3_2 = SHX3_2.dict
  SHX4_2 = SHX9_1.images
  SHX4_2 = SHX4_2.govLarge
  SHX5_2 = "Thank you, the show me question is complete"
  SHX6_2 = "Show Me Question"
  SHX7_2 = "CMG Learning Centre"
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX8_1.subtitle = "Follow the ~y~sat nav"
end
SHX16_1.operateHeadlights = SHX17_1
SHX16_1 = CMG
SHX16_1 = SHX16_1.DVSA
function SHX17_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = PlaySoundFrontend
  SHX1_2 = -1
  SHX2_2 = "Out_Of_Bounds_Timer"
  SHX3_2 = "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS"
  SHX4_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.DVSA
  SHX0_2 = SHX0_2.dvsaSound
  SHX1_2 = "stopSign"
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.notifyPicture
  SHX1_2 = SHX9_1.images
  SHX1_2 = SHX1_2.dict
  SHX2_2 = SHX9_1.images
  SHX2_2 = SHX2_2.govLarge
  SHX3_2 = "You are legally required to stop at this sign"
  SHX4_2 = "Stop Sign"
  SHX5_2 = "CMG Learning Centre"
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = false
  SHX1_2 = false
  SHX2_2 = Citizen
  SHX2_2 = SHX2_2.CreateThread
  function SHX3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3
    SHX0_3 = SetTimeout
    SHX1_3 = 15000
    function SHX2_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
      SHX0_4 = true
      SHX0_2 = SHX0_4
    end
    SHX0_3(SHX1_3, SHX2_3)
    while true do
      SHX0_3 = SHX0_2
      if SHX0_3 then
        break
      end
      SHX0_3 = GetEntitySpeed
      SHX1_3 = SHX8_1.vehicle
      SHX0_3 = SHX0_3(SHX1_3)
      if SHX0_3 <= 1.0 then
        SHX0_3 = true
        SHX1_2 = SHX0_3
        SHX0_3 = true
        SHX0_2 = SHX0_3
      end
      SHX0_3 = Wait
      SHX1_3 = 0
      SHX0_3(SHX1_3)
    end
    SHX0_3 = SHX1_2
    if not SHX0_3 then
      SHX0_3 = CMG
      SHX0_3 = SHX0_3.DVSA
      SHX0_3 = SHX0_3.issueSerious
      SHX1_3 = "Failed to yield for a stop sign"
      SHX0_3(SHX1_3)
    end
  end
  SHX2_2(SHX3_2)
end
SHX16_1.stopSignDetection = SHX17_1
SHX16_1 = CMG
SHX16_1 = SHX16_1.DVSA
function SHX17_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = PlaySoundFrontend
  SHX1_2 = -1
  SHX2_2 = "Out_Of_Bounds_Timer"
  SHX3_2 = "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS"
  SHX4_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.DVSA
  SHX0_2 = SHX0_2.dvsaSound
  SHX1_2 = "emergencyStopIntroduction"
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.notifyPicture
  SHX1_2 = SHX9_1.images
  SHX1_2 = SHX1_2.dict
  SHX2_2 = SHX9_1.images
  SHX2_2 = SHX2_2.govLarge
  SHX3_2 = "Listen carefully for directions"
  SHX4_2 = "Test Instruction"
  SHX5_2 = "CMG Learning Centre"
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX8_1.subtitle = "We will soon carry out an ~y~emergency stop~w~, I will give you a warning before you should stop"
  SHX0_2 = Wait
  SHX1_2 = 3000
  SHX0_2(SHX1_2)
  SHX8_1.subtitle = "You should have practiced this with your ~y~approved driving instructor"
  SHX0_2 = Wait
  SHX1_2 = 3000
  SHX0_2(SHX1_2)
  SHX8_1.subtitle = "When I say ~r~stop ~w~you should react as soon as possible"
  SHX0_2 = Wait
  SHX1_2 = math
  SHX1_2 = SHX1_2.random
  SHX2_2 = 7000
  SHX3_2 = 15000
  SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.DVSA
  SHX0_2 = SHX0_2.dvsaSound
  SHX1_2 = "stopNowMessage"
  SHX0_2(SHX1_2)
  SHX8_1.subtitle = "~r~STOP ~w~- Perform an emergency stop"
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.notifyPicture
  SHX1_2 = SHX9_1.images
  SHX1_2 = SHX1_2.dict
  SHX2_2 = SHX9_1.images
  SHX2_2 = SHX2_2.govLarge
  SHX3_2 = "Perform an emergency stop immediately"
  SHX4_2 = "STOP"
  SHX5_2 = "CMG Learning Centre"
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = Wait
  SHX1_2 = 3000
  SHX0_2(SHX1_2)
  SHX0_2 = GetEntitySpeed
  SHX1_2 = SHX8_1.vehicle
  SHX0_2 = SHX0_2(SHX1_2)
  SHX0_2 = not SHX0_2
  if 0.0 == SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.DVSA
    SHX0_2 = SHX0_2.issueMinor
    SHX1_2 = "ES - Timing"
    SHX0_2(SHX1_2)
  else
    SHX8_1.subtitle = "~r~STOP ~w~- Remain stopped"
  end
  SHX0_2 = Wait
  SHX1_2 = 3000
  SHX0_2(SHX1_2)
  SHX0_2 = GetEntitySpeed
  SHX1_2 = SHX8_1.vehicle
  SHX0_2 = SHX0_2(SHX1_2)
  SHX0_2 = not SHX0_2
  if 0.0 == SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.DVSA
    SHX0_2 = SHX0_2.issueSerious
    SHX1_2 = "ES - Failed"
    SHX0_2(SHX1_2)
  end
  SHX0_2 = Wait
  SHX1_2 = 3000
  SHX0_2(SHX1_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.DVSA
  SHX0_2 = SHX0_2.dvsaSound
  SHX1_2 = "moveOffWhenReady"
  SHX0_2(SHX1_2)
  SHX8_1.subtitle = "Thank you, please continue to follow the sat nav"
  SHX0_2 = Wait
  SHX1_2 = 2000
  SHX0_2(SHX1_2)
  SHX8_1.subtitle = "Follow the ~y~sat nav"
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.DVSA
  SHX0_2 = SHX0_2.useTablet
  SHX0_2()
end
SHX16_1.emergencyStop = SHX17_1
SHX16_1 = CMG
SHX16_1 = SHX16_1.DVSA
function SHX17_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.loadModel
  SHX1_2 = -1585232418
  SHX0_2 = SHX0_2(SHX1_2)
  SHX1_2 = CreateObject
  SHX2_2 = SHX0_2
  SHX3_2 = 0
  SHX4_2 = 0
  SHX5_2 = 0
  SHX6_2 = false
  SHX7_2 = true
  SHX8_2 = true
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX8_1.tabletHandle = SHX1_2
  SHX1_2 = SetModelAsNoLongerNeeded
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = AttachEntityToEntity
  SHX2_2 = SHX8_1.tabletHandle
  SHX3_2 = SHX8_1.ped
  SHX4_2 = GetPedBoneIndex
  SHX5_2 = SHX8_1.ped
  SHX6_2 = 57005
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX5_2 = 0.17
  SHX6_2 = 0.1
  SHX7_2 = -0.13
  SHX8_2 = 24.0
  SHX9_2 = 180.0
  SHX10_2 = 180.0
  SHX11_2 = true
  SHX12_2 = true
  SHX13_2 = false
  SHX14_2 = true
  SHX15_2 = 1
  SHX16_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX1_2 = RequestAnimDict
  SHX2_2 = "amb@world_human_seat_wall_tablet@female@base"
  SHX1_2(SHX2_2)
  while true do
    SHX1_2 = HasAnimDictLoaded
    SHX2_2 = "amb@world_human_seat_wall_tablet@female@base"
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      break
    end
    SHX1_2 = Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
  end
  SHX1_2 = TaskPlayAnim
  SHX2_2 = SHX8_1.ped
  SHX3_2 = "amb@world_human_seat_wall_tablet@female@base"
  SHX4_2 = "base"
  SHX5_2 = 8.0
  SHX6_2 = 1
  SHX7_2 = -1
  SHX8_2 = 1
  SHX9_2 = 1.0
  SHX10_2 = false
  SHX11_2 = false
  SHX12_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX1_2 = RemoveAnimDict
  SHX2_2 = "amb@world_human_seat_wall_tablet@female@base"
  SHX1_2(SHX2_2)
  SHX1_2 = SetTimeout
  SHX2_2 = 9000
  function SHX3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
    SHX0_3 = DeleteEntity
    SHX1_3 = SHX8_1.tabletHandle
    SHX0_3(SHX1_3)
    SHX0_3 = StopAnimTask
    SHX1_3 = SHX8_1.ped
    SHX2_3 = "amb@world_human_seat_wall_tablet@female@base"
    SHX3_3 = "base"
    SHX4_3 = 1.0
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
  end
  SHX1_2(SHX2_2, SHX3_2)
end
SHX16_1.useTablet = SHX17_1
SHX16_1 = CMG
SHX16_1 = SHX16_1.DVSA
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX1_2 = NetworkOverrideClockTime
  SHX2_2 = 9
  SHX3_2 = 0
  SHX4_2 = 0
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.hideAllDisplays
  SHX2_2 = "dvsaintro"
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = FreezeEntityPosition
  SHX3_2 = SHX1_2
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SetFocusPosAndVel
  SHX3_2 = 239.4198
  SHX4_2 = -1392.593
  SHX5_2 = 35.75024
  SHX6_2 = 0.0
  SHX7_2 = 0.0
  SHX8_2 = 0.0
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX2_2 = CreateCameraWithParams
  SHX3_2 = "DEFAULT_SCRIPTED_CAMERA"
  SHX4_2 = 239.4198
  SHX5_2 = -1392.593
  SHX6_2 = 35.75024
  SHX7_2 = 0.0
  SHX8_2 = 0.0
  SHX9_2 = 0.0
  SHX10_2 = 65.0
  SHX11_2 = false
  SHX12_2 = 2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX3_2 = PointCamAtCoord
  SHX4_2 = SHX2_2
  SHX5_2 = 218.9802
  SHX6_2 = -1390.47
  SHX7_2 = 30.57727
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX3_2 = SetCamActive
  SHX4_2 = SHX2_2
  SHX5_2 = true
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = RenderScriptCams
  SHX4_2 = true
  SHX5_2 = true
  SHX6_2 = 0
  SHX7_2 = true
  SHX8_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX8_1.subtitle = "This is the ~b~DVSA ~w~test centre. You'll finish your test here."
  SHX3_2 = Wait
  SHX4_2 = 7000
  SHX3_2(SHX4_2)
  SHX3_2 = CreateCameraWithParams
  SHX4_2 = "DEFAULT_SCRIPTED_CAMERA"
  SHX5_2 = 218.7297
  SHX6_2 = -1370.44
  SHX7_2 = 32.96997
  SHX8_2 = 0.0
  SHX9_2 = 0.0
  SHX10_2 = 0.0
  SHX11_2 = 65.0
  SHX12_2 = false
  SHX13_2 = 2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX4_2 = PointCamAtCoord
  SHX5_2 = SHX3_2
  SHX6_2 = SHX0_2.x
  SHX7_2 = SHX0_2.y
  SHX8_2 = SHX0_2.z
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX4_2 = SetCamActiveWithInterp
  SHX5_2 = SHX3_2
  SHX6_2 = SHX2_2
  SHX7_2 = 10000
  SHX8_2 = 5
  SHX9_2 = 5
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX8_1.subtitle = "This is your vehicle in which you'll be ~b~examined~w~."
  SHX4_2 = Wait
  SHX5_2 = 10000
  SHX4_2(SHX5_2)
  SHX4_2 = DestroyCam
  SHX5_2 = SHX2_2
  SHX6_2 = false
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = DestroyCam
  SHX5_2 = SHX3_2
  SHX6_2 = false
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = RenderScriptCams
  SHX5_2 = false
  SHX6_2 = true
  SHX7_2 = 3000
  SHX8_2 = true
  SHX9_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX4_2 = Wait
  SHX5_2 = 5000
  SHX4_2(SHX5_2)
  SHX4_2 = ClearFocus
  SHX4_2()
  SHX4_2 = FreezeEntityPosition
  SHX5_2 = SHX1_2
  SHX6_2 = false
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.showAllDisplays
  SHX5_2 = "dvsaintro"
  SHX4_2(SHX5_2)
  SHX8_1.subtitle = "Please wait for the ~b~examiner~w~."
end
SHX16_1.cameraTransition = SHX17_1
SHX16_1 = 0
SHX17_1 = RageUI
SHX17_1 = SHX17_1.CreateWhile
SHX18_1 = 1.0
SHX19_1 = RMenu
SHX20_1 = SHX19_1
SHX19_1 = SHX19_1.Get
SHX21_1 = "dvsa"
SHX22_1 = "main"
SHX19_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1)
SHX20_1 = nil
function SHX21_1()
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
  SHX3_2 = "dvsa"
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
    SHX1_3 = "Driving Licence"
    SHX2_3 = "View and manage your driving licence"
    SHX3_3 = {}
    SHX4_3 = RageUI
    SHX4_3 = SHX4_3.BadgeStyle
    SHX4_3 = SHX4_3.Car
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
    SHX8_3 = "dvsa"
    SHX9_3 = "licence"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Driving Test"
    SHX2_3 = "View your driving tests"
    SHX3_3 = {}
    SHX4_3 = RageUI
    SHX4_3 = SHX4_3.BadgeStyle
    SHX4_3 = SHX4_3.Car
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
    SHX8_3 = "dvsa"
    SHX9_3 = "tests"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "CMG Learning Centre Alerts"
    SHX2_3 = "View alerts received from the CMG Learning Centre"
    SHX3_3 = {}
    SHX4_3 = RageUI
    SHX4_3 = SHX4_3.BadgeStyle
    SHX4_3 = SHX4_3.Car
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
    SHX8_3 = "dvsa"
    SHX9_3 = "alerts"
    SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    SHX0_3 = SHX5_1
    if SHX0_3 then
      SHX0_3 = SHX8_1.active
      if not SHX0_3 then
        SHX0_3 = SHX0_1.full
        if not SHX0_3 then
          SHX0_3 = SHX0_1.active
          if SHX0_3 then
            SHX0_3 = SHX8_1.requested
            if not SHX0_3 then
              SHX0_3 = RageUI
              SHX0_3 = SHX0_3.ButtonWithStyle
              SHX1_3 = "Begin driving test"
              SHX2_3 = "Begin your driving test"
              SHX3_3 = {}
              SHX4_3 = RageUI
              SHX4_3 = SHX4_3.BadgeStyle
              SHX4_3 = SHX4_3.Alert
              SHX3_3.RightBadge = SHX4_3
              SHX4_3 = "\194\163"
              SHX5_3 = getMoneyStringFormatted
              SHX6_3 = SHX9_1.test
              SHX6_3 = SHX6_3.price
              SHX5_3 = SHX5_3(SHX6_3)
              SHX4_3 = SHX4_3 .. SHX5_3
              SHX3_3.RightLabel = SHX4_3
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
                  SHX3_4 = SHX0_1.banned
                  if SHX3_4 then
                    SHX3_4 = CMG
                    SHX3_4 = SHX3_4.notifyPicture
                    SHX4_4 = SHX9_1.images
                    SHX4_4 = SHX4_4.dict
                    SHX5_4 = SHX9_1.images
                    SHX5_4 = SHX5_4.govLarge
                    SHX6_4 = "Your licence has been suspended"
                    SHX7_4 = "UK Government"
                    SHX8_4 = "CMG Learning Centre"
                    SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4)
                  else
                    SHX3_4 = SHX8_1.requested
                    if not SHX3_4 then
                      SHX3_4 = TriggerServerEvent
                      SHX4_4 = "372adfd3e8"
                      SHX3_4(SHX4_4)
                      SHX8_1.requested = true
                    end
                  end
                  SHX3_4 = RageUI
                  SHX3_4 = SHX3_4.CloseAll
                  SHX3_4()
                end
              end
              SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
            else
              SHX0_3 = RageUI
              SHX0_3 = SHX0_3.ButtonWithStyle
              SHX1_3 = "No tests available"
              SHX2_3 = "Try again in a few minutes"
              SHX3_3 = {}
              SHX4_3 = RageUI
              SHX4_3 = SHX4_3.BadgeStyle
              SHX4_3 = SHX4_3.Alert
              SHX3_3.RightBadge = SHX4_3
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
                  SHX3_4 = CMG
                  SHX3_4 = SHX3_4.notifyPicture
                  SHX4_4 = SHX9_1.images
                  SHX4_4 = SHX4_4.dict
                  SHX5_4 = SHX9_1.images
                  SHX5_4 = SHX5_4.govLarge
                  SHX6_4 = "We have no tests available, please try again in a few minutes."
                  SHX7_4 = "UK Government"
                  SHX8_4 = "Driving Test"
                  SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4)
                end
              end
              SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
            end
        end
      end
      else
        SHX0_3 = SHX8_1.requested
        if not SHX0_3 then
          SHX0_3 = SHX8_1.active
          if not SHX0_3 then
            SHX0_3 = SHX0_1.full
            if SHX0_3 then
              SHX0_3 = SHX0_1.active
              if SHX0_3 then
                SHX0_3 = RageUI
                SHX0_3 = SHX0_3.ButtonWithStyle
                SHX1_3 = "Surrender your licence"
                SHX2_3 = "Surrender your driving licence to the CMG Learning Centre"
                SHX3_3 = {}
                SHX4_3 = RageUI
                SHX4_3 = SHX4_3.BadgeStyle
                SHX4_3 = SHX4_3.Alert
                SHX3_3.RightBadge = SHX4_3
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
                    SHX3_4 = GetGameTimer
                    SHX3_4 = SHX3_4()
                    SHX16_1 = SHX3_4
                  end
                end
                SHX6_3 = RMenu
                SHX7_3 = SHX6_3
                SHX6_3 = SHX6_3.Get
                SHX8_3 = "dvsa"
                SHX9_3 = "surrenderconfirm"
                SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
                SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
              end
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
  SHX3_2 = "dvsa"
  SHX4_2 = "surrenderconfirm"
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
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "~y~Confirm surrendering of license (READ CAREFULLY)"
    SHX0_3(SHX1_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "This will remove your license and make you a learner."
    SHX0_3(SHX1_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "This will require you to retake the driving test."
    SHX0_3(SHX1_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Confirm Surrender"
    SHX2_3 = "Confirm you wish to surrender your driving licence to the CMG Learning Centre."
    SHX3_3 = {}
    SHX4_3 = RageUI
    SHX4_3 = SHX4_3.BadgeStyle
    SHX4_3 = SHX4_3.Alert
    SHX3_3.RightBadge = SHX4_3
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
        SHX3_4 = GetGameTimer
        SHX3_4 = SHX3_4()
        SHX4_4 = SHX16_1
        SHX3_4 = SHX3_4 - SHX4_4
        SHX4_4 = 5000
        if SHX3_4 < SHX4_4 then
          SHX3_4 = notify
          SHX4_4 = "~r~Please wait 5 seconds and read the confirmation."
          SHX3_4(SHX4_4)
          return
        end
        SHX0_1.full = false
        SHX0_1.active = false
        SHX3_4 = CMG
        SHX3_4 = SHX3_4.notifyPicture
        SHX4_4 = SHX9_1.images
        SHX4_4 = SHX4_4.dict
        SHX5_4 = SHX9_1.images
        SHX5_4 = SHX5_4.govLarge
        SHX6_4 = "You've surrendered your licence. Your points and offences will remain held."
        SHX7_4 = "UK Government"
        SHX8_4 = "Licence Surrendered"
        SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4)
        SHX3_4 = TriggerServerEvent
        SHX4_4 = "515fda600c"
        SHX3_4(SHX4_4)
        SHX3_4 = RageUI
        SHX3_4 = SHX3_4.Visible
        SHX4_4 = RMenu
        SHX5_4 = SHX4_4
        SHX4_4 = SHX4_4.Get
        SHX6_4 = "dvsa"
        SHX7_4 = "main"
        SHX4_4 = SHX4_4(SHX5_4, SHX6_4, SHX7_4)
        SHX5_4 = true
        SHX3_4(SHX4_4, SHX5_4)
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
  SHX3_2 = "dvsa"
  SHX4_2 = "licence"
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
    SHX0_3 = SHX0_1.full
    if SHX0_3 then
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.ButtonWithStyle
      SHX1_3 = "Licence Type:"
      SHX2_3 = "This indiates if you hold a full licence"
      SHX3_3 = {}
      SHX3_3.RightLabel = "Full"
      SHX4_3 = RageUI
      SHX4_3 = SHX4_3.BadgeStyle
      SHX4_3 = SHX4_3.Car
      SHX3_3.RightBadge = SHX4_3
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
          SHX3_4 = CMG
          SHX3_4 = SHX3_4.notifyPicture
          SHX4_4 = SHX9_1.images
          SHX4_4 = SHX4_4.dict
          SHX5_4 = SHX9_1.images
          SHX5_4 = SHX5_4.govLarge
          SHX6_4 = "Your licence is full. You have passed your driving test."
          SHX7_4 = "UK Government"
          SHX8_4 = "CMG Learning Centre"
          SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4)
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    else
      SHX0_3 = SHX0_1.banned
      if SHX0_3 then
        SHX0_3 = RageUI
        SHX0_3 = SHX0_3.ButtonWithStyle
        SHX1_3 = "Licence Type:"
        SHX2_3 = "This indiates if you hold a full licence"
        SHX3_3 = {}
        SHX3_3.RightLabel = "Suspended"
        SHX4_3 = RageUI
        SHX4_3 = SHX4_3.BadgeStyle
        SHX4_3 = SHX4_3.Alert
        SHX3_3.RightBadge = SHX4_3
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
            SHX3_4 = CMG
            SHX3_4 = SHX3_4.notifyPicture
            SHX4_4 = SHX9_1.images
            SHX4_4 = SHX4_4.dict
            SHX5_4 = SHX9_1.images
            SHX5_4 = SHX5_4.govLarge
            SHX6_4 = "Your licence has been suspended"
            SHX7_4 = "UK Government"
            SHX8_4 = "CMG Learning Centre"
            SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4)
          end
        end
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
      else
        SHX0_3 = SHX0_1.active
        if SHX0_3 then
          SHX0_3 = RageUI
          SHX0_3 = SHX0_3.ButtonWithStyle
          SHX1_3 = "Licence Type:"
          SHX2_3 = "This indiates if you hold a full licence"
          SHX3_3 = {}
          SHX3_3.RightLabel = "Provisional"
          SHX4_3 = RageUI
          SHX4_3 = SHX4_3.BadgeStyle
          SHX4_3 = SHX4_3.Alert
          SHX3_3.RightBadge = SHX4_3
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
              SHX3_4 = CMG
              SHX3_4 = SHX3_4.notifyPicture
              SHX4_4 = SHX9_1.images
              SHX4_4 = SHX4_4.dict
              SHX5_4 = SHX9_1.images
              SHX5_4 = SHX5_4.govLarge
              SHX6_4 = "Your licence is currently provisional, take a test at the CMG Learning Centre"
              SHX7_4 = "UK Government"
              SHX8_4 = "CMG Learning Centre"
              SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4)
            end
          end
          SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
        else
          SHX0_3 = RageUI
          SHX0_3 = SHX0_3.ButtonWithStyle
          SHX1_3 = "Licence Type:"
          SHX2_3 = "This indiates if you hold a full licence"
          SHX3_3 = {}
          SHX3_3.RightLabel = "No licence"
          SHX4_3 = RageUI
          SHX4_3 = SHX4_3.BadgeStyle
          SHX4_3 = SHX4_3.Alert
          SHX3_3.RightBadge = SHX4_3
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
              SHX3_4 = CMG
              SHX3_4 = SHX3_4.notifyPicture
              SHX4_4 = SHX9_1.images
              SHX4_4 = SHX4_4.dict
              SHX5_4 = SHX9_1.images
              SHX5_4 = SHX5_4.govLarge
              SHX6_4 = "You do not hold a UK Driving licence."
              SHX7_4 = "UK Government"
              SHX8_4 = "CMG Learning Centre"
              SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4)
            end
          end
          SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
          SHX0_3 = SHX4_1
          if not SHX0_3 then
            SHX0_3 = RageUI
            SHX0_3 = SHX0_3.ButtonWithStyle
            SHX1_3 = "Apply for a provisional licence"
            SHX2_3 = "Apply for a provisional licence"
            SHX3_3 = {}
            SHX4_3 = RageUI
            SHX4_3 = SHX4_3.BadgeStyle
            SHX4_3 = SHX4_3.Car
            SHX3_3.RightBadge = SHX4_3
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
                SHX3_4 = TriggerServerEvent
                SHX4_4 = "2161c94134"
                SHX3_4(SHX4_4)
                SHX3_4 = true
                SHX4_1 = SHX3_4
                SHX3_4 = CMG
                SHX3_4 = SHX3_4.notifyPicture
                SHX4_4 = SHX9_1.images
                SHX4_4 = SHX4_4.dict
                SHX5_4 = SHX9_1.images
                SHX5_4 = SHX5_4.govLarge
                SHX6_4 = "We will process your application shortly. Thank you for submitting."
                SHX7_4 = "UK Government"
                SHX8_4 = "CMG Learning Centre"
                SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4)
              end
            end
            SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
          end
        end
      end
    end
    SHX0_3 = SHX0_1.active
    if SHX0_3 then
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.ButtonWithStyle
      SHX1_3 = "Penalty Points:"
      SHX2_3 = "This indicates your amount of licence points"
      SHX3_3 = {}
      SHX4_3 = SHX0_1.points
      SHX3_3.RightLabel = SHX4_3
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
          SHX3_4 = CMG
          SHX3_4 = SHX3_4.notifyPicture
          SHX4_4 = SHX9_1.images
          SHX4_4 = SHX4_4.dict
          SHX5_4 = SHX9_1.images
          SHX5_4 = SHX5_4.govLarge
          SHX6_4 = "Your licence currently has "
          SHX7_4 = SHX0_1.points
          SHX8_4 = " penalty points."
          SHX6_4 = SHX6_4 .. SHX7_4 .. SHX8_4
          SHX7_4 = "UK Government"
          SHX8_4 = "CMG Learning Centre"
          SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4)
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.ButtonWithStyle
      SHX1_3 = "Licence Number:"
      SHX2_3 = "This indicates your licence number"
      SHX3_3 = {}
      SHX4_3 = SHX0_1.id
      SHX3_3.RightLabel = SHX4_3
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
          SHX3_4 = CMG
          SHX3_4 = SHX3_4.notifyPicture
          SHX4_4 = SHX9_1.images
          SHX4_4 = SHX4_4.dict
          SHX5_4 = SHX9_1.images
          SHX5_4 = SHX5_4.govLarge
          SHX6_4 = "Your licence number is "
          SHX7_4 = SHX0_1.id
          SHX8_4 = ", this is issued with your licence."
          SHX6_4 = SHX6_4 .. SHX7_4 .. SHX8_4
          SHX7_4 = "UK Government"
          SHX8_4 = "CMG Learning Centre"
          SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4)
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.ButtonWithStyle
      SHX1_3 = "Licence Issued:"
      SHX2_3 = "This indicates the date and time of issue"
      SHX3_3 = {}
      SHX4_3 = SHX0_1.date
      SHX3_3.RightLabel = SHX4_3
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
          SHX3_4 = CMG
          SHX3_4 = SHX3_4.notifyPicture
          SHX4_4 = SHX9_1.images
          SHX4_4 = SHX4_4.dict
          SHX5_4 = SHX9_1.images
          SHX5_4 = SHX5_4.govLarge
          SHX6_4 = "Your licence was issued at "
          SHX7_4 = SHX0_1.date
          SHX8_4 = "."
          SHX6_4 = SHX6_4 .. SHX7_4 .. SHX8_4
          SHX7_4 = "UK Government"
          SHX8_4 = "CMG Learning Centre"
          SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4)
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
      SHX0_3 = table
      SHX0_3 = SHX0_3.count
      SHX1_3 = SHX1_1
      SHX0_3 = SHX0_3(SHX1_3)
      if SHX0_3 < 0 then
        SHX0_3 = RageUI
        SHX0_3 = SHX0_3.Separator
        SHX1_3 = "DVSA - Licence Record"
        SHX0_3(SHX1_3)
        SHX0_3 = pairs
        SHX1_3 = SHX1_1
        SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
        for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
          SHX6_3 = RageUI
          SHX6_3 = SHX6_3.ButtonWithStyle
          SHX7_3 = SHX5_3.offence
          SHX8_3 = "Date: "
          SHX9_3 = SHX5_3.date
          SHX10_3 = " | Type: "
          SHX11_3 = SHX5_3.type
          SHX8_3 = SHX8_3 .. SHX9_3 .. SHX10_3 .. SHX11_3
          SHX9_3 = {}
          SHX10_3 = RageUI
          SHX10_3 = SHX10_3.BadgeStyle
          SHX10_3 = SHX10_3.Alert
          SHX9_3.RightBadge = SHX10_3
          SHX10_3 = true
          function SHX11_3(SHX0_4, SHX1_4, SHX2_4)
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4
            if SHX2_4 then
              SHX3_4 = CMG
              SHX3_4 = SHX3_4.notifyPicture
              SHX4_4 = SHX9_1.images
              SHX4_4 = SHX4_4.dict
              SHX5_4 = SHX9_1.images
              SHX5_4 = SHX5_4.govLarge
              SHX6_4 = "You were given "
              SHX7_4 = SHX5_3.points
              SHX8_4 = " penalty points on "
              SHX9_4 = SHX5_3.date
              SHX10_4 = "."
              SHX6_4 = SHX6_4 .. SHX7_4 .. SHX8_4 .. SHX9_4 .. SHX10_4
              SHX7_4 = "UK Government"
              SHX8_4 = "Offence: "
              SHX9_4 = SHX5_3.offence
              SHX8_4 = SHX8_4 .. SHX9_4
              SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4)
            end
          end
          SHX6_3(SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
        end
      end
    end
    SHX0_3 = SHX0_1.full
    if not SHX0_3 then
      SHX0_3 = SHX0_1.passDate
      if SHX0_3 then
        SHX0_3 = RageUI
        SHX0_3 = SHX0_3.ButtonWithStyle
        SHX1_3 = "Renew full driving license"
        SHX2_3 = "You previously had a full licence, you can skip the test and purchase a new one for \194\1631,000,000"
        SHX3_3 = {}
        SHX4_3 = RageUI
        SHX4_3 = SHX4_3.BadgeStyle
        SHX4_3 = SHX4_3.Car
        SHX3_3.RightBadge = SHX4_3
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
            SHX3_4 = TriggerServerEvent
            SHX4_4 = "3887d186ba"
            SHX3_4(SHX4_4)
            SHX3_4 = CMG
            SHX3_4 = SHX3_4.notifyPicture
            SHX4_4 = SHX9_1.images
            SHX4_4 = SHX4_4.dict
            SHX5_4 = SHX9_1.images
            SHX5_4 = SHX5_4.govLarge
            SHX6_4 = "We will process your request shortly. Thank you for submitting."
            SHX7_4 = "UK Government"
            SHX8_4 = "CMG Learning Centre"
            SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4)
          end
        end
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
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
  SHX3_2 = "dvsa"
  SHX4_2 = "tests"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3
    SHX0_3 = SHX2_1
    if nil ~= SHX0_3 then
      SHX0_3 = table
      SHX0_3 = SHX0_3.count
      SHX1_3 = SHX2_1
      SHX0_3 = SHX0_3(SHX1_3)
      if SHX0_3 > 0 then
        SHX0_3 = pairs
        SHX1_3 = SHX2_1
        SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
        for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
          SHX6_3 = "~r~FAIL"
          SHX7_3 = SHX5_3.pass
          if SHX7_3 then
            SHX6_3 = "~g~PASS"
          end
          SHX7_3 = RageUI
          SHX7_3 = SHX7_3.ButtonWithStyle
          SHX8_3 = SHX5_3.date
          SHX9_3 = " | Result: "
          SHX10_3 = SHX6_3
          SHX8_3 = SHX8_3 .. SHX9_3 .. SHX10_3
          SHX9_3 = "~r~Serious Faults~w~: "
          SHX10_3 = SHX5_3.serious
          SHX11_3 = " | ~b~Minor Faults~w~: "
          SHX12_3 = SHX5_3.minor
          SHX9_3 = SHX9_3 .. SHX10_3 .. SHX11_3 .. SHX12_3
          SHX10_3 = {}
          SHX11_3 = RageUI
          SHX11_3 = SHX11_3.BadgeStyle
          SHX11_3 = SHX11_3.Alert
          SHX10_3.RightBadge = SHX11_3
          SHX11_3 = true
          function SHX12_3(SHX0_4, SHX1_4, SHX2_4)
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4, SHX12_4
            if SHX2_4 then
              SHX3_4 = CMG
              SHX3_4 = SHX3_4.notifyPicture
              SHX4_4 = SHX9_1.images
              SHX4_4 = SHX4_4.dict
              SHX5_4 = SHX9_1.images
              SHX5_4 = SHX5_4.govLarge
              SHX6_4 = "Your test result was a "
              SHX7_4 = SHX6_3
              SHX8_4 = " ~w~ with "
              SHX9_4 = SHX5_3.serious
              SHX10_4 = " serious faults and "
              SHX11_4 = SHX5_3.minor
              SHX12_4 = " minor faults."
              SHX6_4 = SHX6_4 .. SHX7_4 .. SHX8_4 .. SHX9_4 .. SHX10_4 .. SHX11_4 .. SHX12_4
              SHX7_4 = "UK Government"
              SHX8_4 = "Driving Test Result"
              SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4)
              SHX3_4 = SHX5_3.minor
              if nil ~= SHX3_4 then
                SHX3_4 = SHX5_3.pass
                if SHX3_4 then
                  SHX3_4 = SHX5_3.minor
                  if SHX3_4 > 0 then
                    SHX3_4 = CMG
                    SHX3_4 = SHX3_4.notifyPicture
                    SHX4_4 = SHX9_1.images
                    SHX4_4 = SHX4_4.dict
                    SHX5_4 = SHX9_1.images
                    SHX5_4 = SHX5_4.govLarge
                    SHX6_4 = "You received "
                    SHX7_4 = SHX5_3.minor
                    SHX8_4 = " minors"
                    SHX6_4 = SHX6_4 .. SHX7_4 .. SHX8_4
                    SHX7_4 = "UK Government"
                    SHX8_4 = "Driving Test Result"
                    SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4)
                end
              end
              else
                SHX3_4 = SHX5_3.pass
                if not SHX3_4 then
                  SHX3_4 = CMG
                  SHX3_4 = SHX3_4.notifyPicture
                  SHX4_4 = SHX9_1.images
                  SHX4_4 = SHX4_4.dict
                  SHX5_4 = SHX9_1.images
                  SHX5_4 = SHX5_4.govLarge
                  SHX6_4 = "Your serious faults were:"
                  SHX7_4 = "UK Government"
                  SHX8_4 = "Driving Test Result"
                  SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4)
                  SHX3_4 = SHX5_3.seriousReason
                  if nil ~= SHX3_4 then
                    SHX3_4 = CMG
                    SHX3_4 = SHX3_4.notifyPicture
                    SHX4_4 = SHX9_1.images
                    SHX4_4 = SHX4_4.dict
                    SHX5_4 = SHX9_1.images
                    SHX5_4 = SHX5_4.govLarge
                    SHX6_4 = "Your serious faults were: "
                    SHX7_4 = SHX5_3.seriousReason
                    SHX6_4 = SHX6_4 .. SHX7_4
                    SHX7_4 = "UK Government"
                    SHX8_4 = "Driving Test Result"
                    SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4)
                  end
                  SHX3_4 = SHX5_3.minor
                  if SHX3_4 > 0 then
                    SHX3_4 = SHX5_3.minorsReason
                    if nil ~= SHX3_4 then
                      SHX3_4 = CMG
                      SHX3_4 = SHX3_4.notifyPicture
                      SHX4_4 = SHX9_1.images
                      SHX4_4 = SHX4_4.dict
                      SHX5_4 = SHX9_1.images
                      SHX5_4 = SHX5_4.govLarge
                      SHX6_4 = "You received minors for "
                      SHX7_4 = SHX5_3.minorsReason
                      SHX6_4 = SHX6_4 .. SHX7_4
                      SHX7_4 = "UK Government"
                      SHX8_4 = "Driving Test Result"
                      SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4)
                    end
                  end
                end
              end
            end
          end
          SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
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
  SHX3_2 = "dvsa"
  SHX4_2 = "alerts"
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
    SHX0_3 = pairs
    SHX1_3 = SHX3_1
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
    for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      SHX6_3 = SHX5_3.date
      if nil == SHX6_3 then
        SHX5_3.date = ""
      end
      SHX6_3 = RageUI
      SHX6_3 = SHX6_3.ButtonWithStyle
      SHX7_3 = SHX5_3.title
      SHX8_3 = " "
      SHX9_3 = SHX5_3.date
      SHX7_3 = SHX7_3 .. SHX8_3 .. SHX9_3
      SHX8_3 = "Press to read this message"
      SHX9_3 = {}
      SHX10_3 = RageUI
      SHX10_3 = SHX10_3.BadgeStyle
      SHX10_3 = SHX10_3.Alert
      SHX9_3.RightBadge = SHX10_3
      SHX10_3 = true
      function SHX11_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4
        if SHX2_4 then
          SHX3_4 = CMG
          SHX3_4 = SHX3_4.notifyPicture
          SHX4_4 = SHX9_1.images
          SHX4_4 = SHX4_4.dict
          SHX5_4 = SHX9_1.images
          SHX5_4 = SHX5_4.govLarge
          SHX6_4 = SHX5_3.message
          SHX7_4 = "UK Government"
          SHX8_4 = SHX5_3.title
          SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4)
        end
      end
      SHX6_3(SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
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
SHX17_1(SHX18_1, SHX19_1, SHX20_1, SHX21_1)
SHX17_1 = RegisterCommand
SHX18_1 = "dl"
function SHX19_1()
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
  SHX3_2 = "dvsa"
  SHX4_2 = "licence"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Visible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "dvsa"
  SHX4_2 = "tests"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Visible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "dvsa"
  SHX4_2 = "alerts"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Visible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "dvsa"
  SHX4_2 = "main"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
end
SHX20_1 = false
SHX17_1(SHX18_1, SHX19_1, SHX20_1)
SHX17_1 = Citizen
SHX17_1 = SHX17_1.CreateThread
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  while true do
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.isDevMode
    SHX0_2 = SHX0_2()
    if SHX0_2 then
      return
    end
    SHX0_2 = SHX8_1.active
    if SHX0_2 then
      SHX0_2 = DisableControlAction
      SHX1_2 = 0
      SHX2_2 = 75
      SHX3_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      SHX0_2 = DisableControlAction
      SHX1_2 = 27
      SHX2_2 = 75
      SHX3_2 = true
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      SHX0_2 = SHX8_1.subtitle
      if "" ~= SHX0_2 then
        SHX0_2 = RageUI
        SHX0_2 = SHX0_2.Text
        SHX1_2 = {}
        SHX2_2 = SHX8_1.subtitle
        SHX1_2.message = SHX2_2
        SHX0_2(SHX1_2)
      end
    end
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerVehicle
    SHX0_2, SHX1_2 = SHX0_2()
    SHX2_2 = SHX0_1.full
    if not SHX2_2 then
      SHX2_2 = SHX0_1.banned
      if not SHX2_2 then
        SHX2_2 = SHX8_1.active
        if not SHX2_2 then
          if 0 ~= SHX0_2 then
            SHX2_2 = GetPedInVehicleSeat
            SHX3_2 = SHX0_2
            SHX4_2 = -1
            SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
            SHX3_2 = CMG
            SHX3_2 = SHX3_2.getPlayerPed
            SHX3_2 = SHX3_2()
            if SHX2_2 == SHX3_2 then
              SHX2_2 = CMG
              SHX2_2 = SHX2_2.inEvent
              SHX2_2 = SHX2_2()
              if not SHX2_2 then
                SHX2_2 = CMG
                SHX2_2 = SHX2_2.isEmergencyService
                SHX2_2 = SHX2_2()
                if SHX2_2 then
                  SHX2_2 = GetVehicleClass
                  SHX3_2 = SHX0_2
                  SHX2_2 = SHX2_2(SHX3_2)
                  if 18 == SHX2_2 then
                    SHX2_2 = IsVehicleEngineStarting
                    SHX3_2 = SHX0_2
                    SHX2_2 = SHX2_2(SHX3_2)
                    if not SHX2_2 then
                      SHX2_2 = GetIsVehicleEngineRunning
                      SHX3_2 = SHX0_2
                      SHX2_2 = SHX2_2(SHX3_2)
                    end
                    if SHX2_2 then
                      SHX2_2 = SetVehicleEngineOn
                      SHX3_2 = SHX0_2
                      SHX4_2 = false
                      SHX5_2 = true
                      SHX6_2 = true
                      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
                      SHX2_2 = notify
                      SHX3_2 = "~r~You require a full valid license to drive an emergency vehicle."
                      SHX2_2(SHX3_2)
                    end
                end
                else
                  SHX2_2 = Entity
                  SHX3_2 = SHX0_2
                  SHX2_2 = SHX2_2(SHX3_2)
                  SHX2_2 = SHX2_2.state
                  SHX2_2 = SHX2_2.isLearner
                  if not SHX2_2 then
                    SHX2_2 = NetworkHasControlOfEntity
                    SHX3_2 = SHX0_2
                    SHX2_2 = SHX2_2(SHX3_2)
                    if SHX2_2 then
                      SHX2_2 = NetworkGetEntityIsNetworked
                      SHX3_2 = SHX0_2
                      SHX2_2 = SHX2_2(SHX3_2)
                      if SHX2_2 then
                        SHX2_2 = GetEntityModel
                        SHX3_2 = SHX0_2
                        SHX2_2 = SHX2_2(SHX3_2)
                        SHX3_2 = IsThisModelABicycle
                        SHX4_2 = SHX2_2
                        SHX3_2 = SHX3_2(SHX4_2)
                        if not SHX3_2 then
                          SHX3_2 = IsThisModelAPlane
                          SHX4_2 = SHX2_2
                          SHX3_2 = SHX3_2(SHX4_2)
                          if not SHX3_2 then
                            SHX3_2 = IsThisModelAHeli
                            SHX4_2 = SHX2_2
                            SHX3_2 = SHX3_2(SHX4_2)
                            if not SHX3_2 then
                              SHX3_2 = IsThisModelABoat
                              SHX4_2 = SHX2_2
                              SHX3_2 = SHX3_2(SHX4_2)
                              if not SHX3_2 then
                                SHX3_2 = CMG
                                SHX3_2 = SHX3_2.getServerNum
                                SHX3_2 = SHX3_2()
                                if 1 == SHX3_2 then
                                  SHX3_2 = CMG
                                  SHX3_2 = SHX3_2.getPlayerBucket
                                  SHX3_2 = SHX3_2()
                                  if 333 ~= SHX3_2 then
                                    SHX3_2 = TriggerServerEvent
                                    SHX4_2 = "fa83d34371"
                                    SHX3_2(SHX4_2)
                                    SHX3_2 = CMG
                                    SHX3_2 = SHX3_2.notifyPicture
                                    SHX4_2 = SHX9_1.images
                                    SHX4_2 = SHX4_2.dict
                                    SHX5_2 = SHX9_1.images
                                    SHX5_2 = SHX5_2.lPlate
                                    SHX6_2 = SHX9_1.notifications
                                    SHX6_2 = SHX6_2.lPlatesAdded
                                    SHX7_2 = "CMG Learning Centre"
                                    SHX8_2 = "Licence Services"
                                    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
                                    SHX3_2 = CMG
                                    SHX3_2 = SHX3_2.notifyPicture
                                    SHX4_2 = SHX9_1.images
                                    SHX4_2 = SHX4_2.dict
                                    SHX5_2 = SHX9_1.images
                                    SHX5_2 = SHX5_2.lPlate
                                    SHX6_2 = SHX9_1.notifications
                                    SHX6_2 = SHX6_2.lPlatesAdded2
                                    SHX7_2 = "CMG Learning Centre"
                                    SHX8_2 = "Licence Services"
                                    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
                                    SHX3_2 = Citizen
                                    SHX3_2 = SHX3_2.Wait
                                    SHX4_2 = 2000
                                    SHX3_2(SHX4_2)
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
          end
      end
    end
    elseif 0 ~= SHX0_2 and SHX1_2 then
      SHX2_2 = SHX6_1
      SHX2_2 = SHX2_2[SHX0_2]
      if SHX2_2 then
        SHX2_2 = TriggerServerEvent
        SHX3_2 = "755cc07672"
        SHX2_2(SHX3_2)
        SHX2_2 = Citizen
        SHX2_2 = SHX2_2.Wait
        SHX3_2 = 2000
        SHX2_2(SHX3_2)
      end
    end
    SHX2_2 = Wait
    SHX3_2 = 100
    SHX2_2(SHX3_2)
  end
end
SHX17_1(SHX18_1)
function SHX17_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.elsDoesVehicleHaveConfig
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.elsDoesVehicleHaveLightsEnabled
    SHX4_2 = SHX0_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      SHX3_2 = false
      return SHX3_2
    else
      SHX3_2 = 230.0
      SHX3_2 = SHX1_2 > SHX3_2
      return SHX3_2
    end
  end
  SHX3_2 = SHX2_2 < SHX1_2
  return SHX3_2
end
function SHX18_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2
  SHX2_2 = 1
  SHX3_2 = 2
  SHX4_2 = 1
  for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = false
    SHX7_2 = Citizen
    SHX7_2 = SHX7_2.SetTimeout
    SHX8_2 = 450
    function SHX9_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = true
      SHX6_2 = SHX0_3
    end
    SHX7_2(SHX8_2, SHX9_2)
    while not SHX6_2 do
      SHX7_2 = DrawSpotLight
      SHX8_2 = SHX0_2.x
      SHX9_2 = SHX0_2.y
      SHX10_2 = SHX0_2.z
      SHX11_2 = SHX1_2.x
      SHX12_2 = SHX1_2.y
      SHX13_2 = SHX1_2.z
      SHX14_2 = 221
      SHX15_2 = 221
      SHX16_2 = 221
      SHX17_2 = 70.0
      SHX18_2 = 70.0
      SHX19_2 = 2.3
      SHX20_2 = 25.0
      SHX21_2 = 25.6
      SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
      SHX7_2 = Wait
      SHX8_2 = 0
      SHX7_2(SHX8_2)
    end
    SHX7_2 = Wait
    SHX8_2 = 100
    SHX7_2(SHX8_2)
    SHX5_2 = SHX5_2 + 1
  end
end
function SHX19_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = SHX9_1.cameras
  SHX1_2 = SHX1_2[SHX0_2]
  SHX1_2.flashed = true
  SHX1_2 = GetOffsetFromEntityInWorldCoords
  SHX2_2 = SHX9_1.cameras
  SHX2_2 = SHX2_2[SHX0_2]
  SHX2_2 = SHX2_2.prop
  SHX3_2 = 0.0
  SHX4_2 = 12.0
  SHX5_2 = 0.5
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = GetGroundZFor_3dCoord
  SHX3_2 = SHX1_2.x
  SHX4_2 = SHX1_2.y
  SHX5_2 = SHX1_2.z
  SHX6_2 = 0
  SHX7_2 = false
  SHX2_2, SHX3_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = vector3
  SHX5_2 = SHX1_2.x
  SHX6_2 = SHX1_2.y
  SHX7_2 = SHX3_2
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX5_2 = vector3
  SHX6_2 = SHX9_1.cameras
  SHX6_2 = SHX6_2[SHX0_2]
  SHX6_2 = SHX6_2.coords
  SHX6_2 = SHX6_2.x
  SHX7_2 = SHX9_1.cameras
  SHX7_2 = SHX7_2[SHX0_2]
  SHX7_2 = SHX7_2.coords
  SHX7_2 = SHX7_2.y
  SHX8_2 = SHX9_1.cameras
  SHX8_2 = SHX8_2[SHX0_2]
  SHX8_2 = SHX8_2.coords
  SHX8_2 = SHX8_2.z
  SHX8_2 = SHX8_2 + 3.0
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX4_2 = SHX4_2 - SHX5_2
  SHX5_2 = TriggerServerEvent
  SHX6_2 = "14d72a10d1"
  SHX7_2 = SHX0_2
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = Citizen
  SHX5_2 = SHX5_2.CreateThread
  function SHX6_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3
    SHX0_3 = SHX18_1
    SHX1_3 = SHX9_1.cameras
    SHX2_3 = SHX0_2
    SHX1_3 = SHX1_3[SHX2_3]
    SHX1_3 = SHX1_3.coords
    SHX2_3 = SHX4_2
    SHX0_3(SHX1_3, SHX2_3)
  end
  SHX5_2(SHX6_2)
  SHX5_2 = Citizen
  SHX5_2 = SHX5_2.SetTimeout
  SHX6_2 = 10000
  function SHX7_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = SHX9_1.cameras
    SHX1_3 = SHX0_2
    SHX0_3 = SHX0_3[SHX1_3]
    SHX0_3.flashed = false
  end
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = PlaySoundFrontend
  SHX6_2 = -1
  SHX7_2 = "ScreenFlash"
  SHX8_2 = "MissionFailedSounds"
  SHX9_2 = true
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX5_2 = AnimpostfxPlay
  SHX6_2 = "FocusOut"
  SHX7_2 = 0
  SHX8_2 = false
  SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = Citizen
  SHX5_2 = SHX5_2.CreateThread
  function SHX6_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = Wait
    SHX1_3 = 2000
    SHX0_3(SHX1_3)
    SHX0_3 = AnimpostfxStop
    SHX1_3 = "FocusOut"
    SHX0_3(SHX1_3)
  end
  SHX5_2(SHX6_2)
end
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerVehicle
  SHX0_2 = SHX0_2()
  if 0 ~= SHX0_2 then
    SHX1_2 = GetPedInVehicleSeat
    SHX2_2 = SHX0_2
    SHX3_2 = -1
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.getPlayerPed
    SHX2_2 = SHX2_2()
    if SHX1_2 == SHX2_2 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.inEvent
      SHX1_2 = SHX1_2()
      if not SHX1_2 then
        SHX1_2 = GetEntitySpeed
        SHX2_2 = SHX0_2
        SHX1_2 = SHX1_2(SHX2_2)
        SHX1_2 = SHX1_2 * 2.236936
        SHX2_2 = CMG
        SHX2_2 = SHX2_2.getPlayerCoords
        SHX2_2 = SHX2_2()
        if nil ~= SHX2_2 then
          SHX3_2 = pairs
          SHX4_2 = SHX9_1.cameras
          SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
          for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
            SHX9_2 = SHX8_2.flashed
            if not SHX9_2 then
              SHX9_2 = SHX8_2.coords
              SHX9_2 = SHX2_2 - SHX9_2
              SHX9_2 = #SHX9_2
              if SHX9_2 < 15.0 then
                SHX10_2 = SHX17_1
                SHX11_2 = SHX0_2
                SHX12_2 = SHX1_2
                SHX13_2 = SHX8_2.limit
                SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
                if SHX10_2 then
                  SHX10_2 = SHX19_1
                  SHX11_2 = SHX7_2
                  SHX10_2(SHX11_2)
                end
              end
            end
          end
        end
      end
    end
  end
end
SHX21_1 = CMG
SHX21_1 = SHX21_1.createThreadOnTick
SHX22_1 = SHX20_1
SHX23_1 = "Speed Camera"
SHX21_1(SHX22_1, SHX23_1)
SHX21_1 = RegisterNetEvent
SHX22_1 = "fd2dfb4859"
function SHX23_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2
  SHX2_2 = 1
  SHX3_2 = 2
  SHX4_2 = 1
  for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = false
    SHX7_2 = Citizen
    SHX7_2 = SHX7_2.SetTimeout
    SHX8_2 = 450
    function SHX9_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = true
      SHX6_2 = SHX0_3
    end
    SHX7_2(SHX8_2, SHX9_2)
    while not SHX6_2 do
      SHX7_2 = DrawSpotLight
      SHX8_2 = SHX0_2.x
      SHX9_2 = SHX0_2.y
      SHX10_2 = SHX0_2.z
      SHX11_2 = SHX1_2.x
      SHX12_2 = SHX1_2.y
      SHX13_2 = SHX1_2.z
      SHX14_2 = 221
      SHX15_2 = 221
      SHX16_2 = 221
      SHX17_2 = 70.0
      SHX18_2 = 70.0
      SHX19_2 = 2.3
      SHX20_2 = 25.0
      SHX21_2 = 25.6
      SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
      SHX7_2 = Wait
      SHX8_2 = 0
      SHX7_2(SHX8_2)
    end
    SHX7_2 = Wait
    SHX8_2 = 100
    SHX7_2(SHX8_2)
    SHX5_2 = SHX5_2 + 1
  end
end
SHX21_1(SHX22_1, SHX23_1)
SHX21_1 = RegisterNetEvent
SHX22_1 = "2d177faeb8"
function SHX23_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getObjectId
  SHX2_2 = SHX0_2
  SHX3_2 = "deletePlate"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if SHX1_2 then
    SHX2_2 = DoesEntityExist
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      SHX2_2 = DeleteEntity
      SHX3_2 = SHX1_2
      SHX2_2(SHX3_2)
    end
  end
end
SHX21_1(SHX22_1, SHX23_1)
function SHX21_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2
  SHX1_2 = SHX6_1
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    return
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadModel
  SHX2_2 = -1652494567
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerCoords
  SHX2_2 = SHX2_2()
  SHX3_2 = CreateObject
  SHX4_2 = SHX1_2
  SHX5_2 = SHX2_2.x
  SHX6_2 = SHX2_2.y
  SHX7_2 = SHX2_2.z
  SHX8_2 = false
  SHX9_2 = false
  SHX10_2 = false
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX4_2 = CreateObject
  SHX5_2 = SHX1_2
  SHX6_2 = SHX2_2.x
  SHX7_2 = SHX2_2.y
  SHX8_2 = SHX2_2.z
  SHX9_2 = false
  SHX10_2 = false
  SHX11_2 = false
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  while true do
    SHX5_2 = DoesEntityExist
    SHX6_2 = SHX3_2
    SHX5_2 = SHX5_2(SHX6_2)
    if SHX5_2 then
      break
    end
    SHX5_2 = DoesEntityExist
    SHX6_2 = SHX4_2
    SHX5_2 = SHX5_2(SHX6_2)
    if SHX5_2 then
      break
    end
    SHX5_2 = Wait
    SHX6_2 = 0
    SHX5_2(SHX6_2)
  end
  SHX5_2 = SetModelAsNoLongerNeeded
  SHX6_2 = SHX1_2
  SHX5_2(SHX6_2)
  SHX5_2 = GetEntityBoneIndexByName
  SHX6_2 = SHX0_2
  SHX7_2 = "windscreen"
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
  SHX6_2 = AttachEntityToEntity
  SHX7_2 = SHX3_2
  SHX8_2 = SHX0_2
  SHX9_2 = SHX5_2
  SHX10_2 = 0.0
  SHX11_2 = 0.3
  SHX12_2 = -0.1
  SHX13_2 = -25.0
  SHX14_2 = 0.0
  SHX15_2 = 180.0
  SHX16_2 = true
  SHX17_2 = true
  SHX18_2 = false
  SHX19_2 = true
  SHX20_2 = 0
  SHX21_2 = true
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
  SHX6_2 = GetEntityBoneIndexByName
  SHX7_2 = SHX0_2
  SHX8_2 = "windscreen_r"
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  SHX7_2 = AttachEntityToEntity
  SHX8_2 = SHX4_2
  SHX9_2 = SHX0_2
  SHX10_2 = SHX6_2
  SHX11_2 = 0.0
  SHX12_2 = 0.2
  SHX13_2 = -0.1
  SHX14_2 = -10.0
  SHX15_2 = 0.0
  SHX16_2 = 0.0
  SHX17_2 = true
  SHX18_2 = true
  SHX19_2 = false
  SHX20_2 = true
  SHX21_2 = 0
  SHX22_2 = true
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
  SHX7_2 = SHX6_1
  SHX8_2 = {}
  SHX9_2 = SHX3_2
  SHX10_2 = SHX4_2
  SHX8_2[1] = SHX9_2
  SHX8_2[2] = SHX10_2
  SHX7_2[SHX0_2] = SHX8_2
end
function SHX22_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX6_1
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX2_2 = DeleteEntity
    SHX3_2 = SHX1_2[1]
    SHX2_2(SHX3_2)
    SHX2_2 = DeleteEntity
    SHX3_2 = SHX1_2[2]
    SHX2_2(SHX3_2)
    SHX2_2 = SHX6_1
    SHX2_2[SHX0_2] = nil
  end
end
SHX23_1 = AddStateBagChangeHandler
SHX24_1 = "isLearner"
SHX25_1 = nil
function SHX26_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX3_2 = tonumber
  SHX4_2 = stringsplit
  SHX5_2 = SHX0_2
  SHX6_2 = ":"
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SHX4_2[2]
  SHX3_2 = SHX3_2(SHX4_2)
  if not SHX3_2 then
    return
  end
  SHX4_2 = 0
  while true do
    if SHX4_2 > 25 then
      return
    else
      SHX5_2 = NetworkDoesEntityExistWithNetworkId
      SHX6_2 = SHX3_2
      SHX5_2 = SHX5_2(SHX6_2)
      if SHX5_2 then
        SHX5_2 = NetworkGetEntityFromNetworkId
        SHX6_2 = SHX3_2
        SHX5_2 = SHX5_2(SHX6_2)
        if 0 ~= SHX5_2 then
          if SHX2_2 then
            SHX6_2 = SHX21_1
            SHX7_2 = SHX5_2
            SHX6_2(SHX7_2)
            break
          end
          SHX6_2 = SHX22_1
          SHX7_2 = SHX5_2
          SHX6_2(SHX7_2)
          break
        end
      end
    end
    SHX4_2 = SHX4_2 + 1
    SHX5_2 = Citizen
    SHX5_2 = SHX5_2.Wait
    SHX6_2 = 200
    SHX5_2(SHX6_2)
  end
end
SHX23_1(SHX24_1, SHX25_1, SHX26_1)
SHX23_1 = Citizen
SHX23_1 = SHX23_1.CreateThread
function SHX24_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  while true do
    SHX0_2 = pairs
    SHX1_2 = SHX6_1
    SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
    for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
      SHX6_2 = DoesEntityExist
      SHX7_2 = SHX4_2
      SHX6_2 = SHX6_2(SHX7_2)
      if not SHX6_2 then
        SHX6_2 = DeleteEntity
        SHX7_2 = SHX5_2[1]
        SHX6_2(SHX7_2)
        SHX6_2 = DeleteEntity
        SHX7_2 = SHX5_2[2]
        SHX6_2(SHX7_2)
        SHX6_2 = SHX6_1
        SHX6_2[SHX4_2] = nil
      end
    end
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 1000
    SHX0_2(SHX1_2)
  end
end
SHX23_1(SHX24_1)
SHX23_1 = CMG
SHX23_1 = SHX23_1.DVSA
function SHX24_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.loadModel
  SHX6_2 = SHX0_2
  SHX5_2(SHX6_2)
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.spawnVehicle
  SHX6_2 = SHX0_2
  SHX7_2 = SHX2_2.x
  SHX8_2 = SHX2_2.y
  SHX9_2 = SHX2_2.z
  SHX10_2 = SHX4_2
  SHX11_2 = false
  SHX12_2 = false
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
  SHX6_2 = SetModelAsNoLongerNeeded
  SHX7_2 = SHX0_2
  SHX6_2(SHX7_2)
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.loadModel
  SHX7_2 = SHX1_2
  SHX6_2(SHX7_2)
  SHX6_2 = CreatePed
  SHX7_2 = 4
  SHX8_2 = SHX1_2
  SHX9_2 = SHX2_2.x
  SHX10_2 = SHX2_2.y
  SHX11_2 = SHX2_2.z
  SHX12_2 = SHX4_2
  SHX13_2 = false
  SHX14_2 = false
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
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
  SHX7_2 = SetModelAsNoLongerNeeded
  SHX8_2 = SHX1_2
  SHX7_2(SHX8_2)
  SHX7_2 = SetEntityInvincible
  SHX8_2 = SHX6_2
  SHX9_2 = true
  SHX7_2(SHX8_2, SHX9_2)
  SHX7_2 = SetPedAlertness
  SHX8_2 = SHX6_2
  SHX9_2 = 0.0
  SHX7_2(SHX8_2, SHX9_2)
  SHX7_2 = TaskWarpPedIntoVehicle
  SHX8_2 = SHX6_2
  SHX9_2 = SHX5_2
  SHX10_2 = -1
  SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  SHX7_2 = SetVehicleEngineOn
  SHX8_2 = SHX5_2
  SHX9_2 = true
  SHX10_2 = true
  SHX11_2 = false
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  while true do
    SHX7_2 = IsPedInVehicle
    SHX8_2 = SHX6_2
    SHX9_2 = SHX5_2
    SHX10_2 = false
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
    if SHX7_2 then
      break
    end
    SHX7_2 = Wait
    SHX8_2 = 0
    SHX7_2(SHX8_2)
  end
  SHX7_2 = TaskVehicleDriveToCoord
  SHX8_2 = SHX6_2
  SHX9_2 = SHX5_2
  SHX10_2 = SHX3_2.x
  SHX11_2 = SHX3_2.y
  SHX12_2 = SHX3_2.z
  SHX13_2 = 30.0
  SHX14_2 = 1.0
  SHX15_2 = SHX0_2
  SHX16_2 = 786472
  SHX17_2 = 1.0
  SHX18_2 = 1
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  SHX7_2 = Citizen
  SHX7_2 = SHX7_2.SetTimeout
  SHX8_2 = 20000
  function SHX9_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = DoesEntityExist
    SHX1_3 = SHX5_2
    SHX0_3 = SHX0_3(SHX1_3)
    if SHX0_3 then
      SHX0_3 = DeleteEntity
      SHX1_3 = SHX5_2
      SHX0_3(SHX1_3)
    end
    SHX0_3 = DoesEntityExist
    SHX1_3 = SHX6_2
    SHX0_3 = SHX0_3(SHX1_3)
    if SHX0_3 then
      SHX0_3 = DeleteEntity
      SHX1_3 = SHX6_2
      SHX0_3(SHX1_3)
    end
  end
  SHX7_2(SHX8_2, SHX9_2)
end
SHX23_1.makeVehicleCrash = SHX24_1
SHX23_1 = CMG
SHX23_1 = SHX23_1.DVSA
function SHX24_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SendNUIMessage
  SHX2_2 = {}
  SHX2_2.transactionType = SHX0_2
  SHX1_2(SHX2_2)
end
SHX23_1.dvsaSound = SHX24_1
SHX23_1 = RegisterNetEvent
SHX24_1 = "15bdccee8a"
function SHX25_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX7_1 = SHX0_2
end
SHX23_1(SHX24_1, SHX25_1)
SHX23_1 = AddEventHandler
SHX24_1 = "919aefda0c"
function SHX25_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX7_1
  if SHX1_2 then
    SHX1_2 = SHX7_1
    if SHX0_2 ~= SHX1_2 then
      SHX1_2 = SHX14_1
      SHX1_2()
      SHX1_2 = SHX15_1
      SHX2_2 = false
      SHX3_2 = ""
      SHX4_2 = ""
      SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      SHX1_2 = notify
      SHX2_2 = "~r~Test cancelled due to unexpected change in bucket."
      SHX1_2(SHX2_2)
    end
  end
end
SHX23_1(SHX24_1, SHX25_1)
SHX23_1 = CMG
SHX23_1 = SHX23_1.registerDevMenuItems
SHX24_1 = "DVSA"
function SHX25_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "Quick Start Driving Test"
  SHX2_2 = "Starts the driving test instantly (no payment, skips intro dialogue)."
  SHX3_2 = true
  function SHX4_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3
    if SHX2_3 then
      SHX3_3 = TriggerServerEvent
      SHX4_3 = "fa5a2f254a"
      SHX3_3(SHX4_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
end
SHX23_1(SHX24_1, SHX25_1)
