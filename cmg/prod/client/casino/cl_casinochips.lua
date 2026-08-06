-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1
SHX0_1 = "0"
SHX1_1 = 0
SHX2_1 = RMenu
SHX2_1 = SHX2_1.Add
SHX3_1 = "cmgchips"
SHX4_1 = "cashier"
SHX5_1 = RageUI
SHX5_1 = SHX5_1.CreateMenu
SHX6_1 = ""
SHX7_1 = ""
SHX8_1 = CMG
SHX8_1 = SHX8_1.getRageUIMenuWidth
SHX8_1 = SHX8_1()
SHX9_1 = CMG
SHX9_1 = SHX9_1.getRageUIMenuHeight
SHX9_1 = SHX9_1()
SHX10_1 = "cmg_casino"
SHX11_1 = "cmg_casino"
SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1)
SHX2_1(SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1)
SHX2_1 = RMenu
SHX3_1 = SHX2_1
SHX2_1 = SHX2_1.Get
SHX4_1 = "cmgchips"
SHX5_1 = "cashier"
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX3_1 = SHX2_1
SHX2_1 = SHX2_1.SetSubtitle
SHX4_1 = "~b~CHIPS"
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = RMenu
SHX2_1 = SHX2_1.Add
SHX3_1 = "casino_enter"
SHX4_1 = "casino"
SHX5_1 = RageUI
SHX5_1 = SHX5_1.CreateMenu
SHX6_1 = ""
SHX7_1 = ""
SHX8_1 = CMG
SHX8_1 = SHX8_1.getRageUIMenuWidth
SHX8_1 = SHX8_1()
SHX9_1 = CMG
SHX9_1 = SHX9_1.getRageUIMenuHeight
SHX9_1 = SHX9_1()
SHX10_1 = "cmg_casino"
SHX11_1 = "cmg_casino"
SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1)
SHX2_1(SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1)
SHX2_1 = RMenu
SHX3_1 = SHX2_1
SHX2_1 = SHX2_1.Get
SHX4_1 = "casino_enter"
SHX5_1 = "casino"
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX3_1 = SHX2_1
SHX2_1 = SHX2_1.SetSubtitle
SHX4_1 = "~b~ENTER"
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = RMenu
SHX2_1 = SHX2_1.Add
SHX3_1 = "casino_exit"
SHX4_1 = "casino"
SHX5_1 = RageUI
SHX5_1 = SHX5_1.CreateMenu
SHX6_1 = ""
SHX7_1 = ""
SHX8_1 = CMG
SHX8_1 = SHX8_1.getRageUIMenuWidth
SHX8_1 = SHX8_1()
SHX9_1 = CMG
SHX9_1 = SHX9_1.getRageUIMenuHeight
SHX9_1 = SHX9_1()
SHX10_1 = "cmg_casino"
SHX11_1 = "cmg_casino"
SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1)
SHX2_1(SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1)
SHX2_1 = RMenu
SHX3_1 = SHX2_1
SHX2_1 = SHX2_1.Get
SHX4_1 = "casino_exit"
SHX5_1 = "casino"
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX3_1 = SHX2_1
SHX2_1 = SHX2_1.SetSubtitle
SHX4_1 = "~b~EXIT"
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = RMenu
SHX2_1 = SHX2_1.Add
SHX3_1 = "casino_rooftop_exit"
SHX4_1 = "casino"
SHX5_1 = RageUI
SHX5_1 = SHX5_1.CreateMenu
SHX6_1 = ""
SHX7_1 = ""
SHX8_1 = CMG
SHX8_1 = SHX8_1.getRageUIMenuWidth
SHX8_1 = SHX8_1()
SHX9_1 = CMG
SHX9_1 = SHX9_1.getRageUIMenuHeight
SHX9_1 = SHX9_1()
SHX10_1 = "cmg_casino"
SHX11_1 = "cmg_casino"
SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1)
SHX2_1(SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1)
SHX2_1 = RMenu
SHX3_1 = SHX2_1
SHX2_1 = SHX2_1.Get
SHX4_1 = "casino_rooftop_exit"
SHX5_1 = "casino"
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX3_1 = SHX2_1
SHX2_1 = SHX2_1.SetSubtitle
SHX4_1 = "~b~EXIT"
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = {}
SHX3_1 = {}
SHX3_1.model = -1156746507
SHX4_1 = vector3
SHX5_1 = 966.41003417969
SHX6_1 = 23.916101455688
SHX7_1 = 81.00611114502
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX3_1.pedPosition = SHX4_1
SHX3_1.pedHeading = 328.0
SHX4_1 = vector3
SHX5_1 = 967.09735107422
SHX6_1 = 25.525142669678
SHX7_1 = 80.026103515625
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX3_1.entryPosition = SHX4_1
SHX4_1 = {}
SHX4_1.model = -1156746507
SHX5_1 = vector3
SHX6_1 = 414.69891357422
SHX7_1 = 8.465934753418
SHX8_1 = 91.927490234375
SHX5_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1)
SHX4_1.pedPosition = SHX5_1
SHX4_1.pedHeading = 62.362205505371
SHX5_1 = vector3
SHX6_1 = 412.84494018555
SHX7_1 = 9.5947942733765
SHX8_1 = 91.035302734375
SHX5_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1)
SHX4_1.entryPosition = SHX5_1
SHX5_1 = {}
SHX5_1.model = -1156746507
SHX6_1 = vector3
SHX7_1 = -274.54943847656
SHX8_1 = -732.19781494141
SHX9_1 = 125.49230957031
SHX6_1 = SHX6_1(SHX7_1, SHX8_1, SHX9_1)
SHX5_1.pedPosition = SHX6_1
SHX5_1.pedHeading = 73.700790405273
SHX6_1 = vector3
SHX7_1 = -276.10549926758
SHX8_1 = -731.72308349609
SHX9_1 = 124.46861816406
SHX6_1 = SHX6_1(SHX7_1, SHX8_1, SHX9_1)
SHX5_1.entryPosition = SHX6_1
SHX6_1 = {}
SHX6_1.model = -1156746507
SHX7_1 = vector3
SHX8_1 = -54.039554595947
SHX9_1 = 8039.7231445312
SHX10_1 = 12.665893554688
SHX7_1 = SHX7_1(SHX8_1, SHX9_1, SHX10_1)
SHX6_1.pedPosition = SHX7_1
SHX6_1.pedHeading = 249.44882202148
SHX7_1 = vector3
SHX8_1 = -52.50394821167
SHX9_1 = 8039.302734375
SHX10_1 = 11.70361164093
SHX7_1 = SHX7_1(SHX8_1, SHX9_1, SHX10_1)
SHX6_1.entryPosition = SHX7_1
SHX7_1 = {}
SHX7_1.model = -1156746507
SHX8_1 = vector3
SHX9_1 = 1148.6636962891
SHX10_1 = -428.51867675781
SHX11_1 = 62.22119140625
SHX8_1 = SHX8_1(SHX9_1, SHX10_1, SHX11_1)
SHX7_1.pedPosition = SHX8_1
SHX7_1.pedHeading = 167.24407958984
SHX8_1 = vector3
SHX9_1 = 1147.1414794922
SHX10_1 = -429.94134521484
SHX11_1 = 61.235101470947
SHX8_1 = SHX8_1(SHX9_1, SHX10_1, SHX11_1)
SHX7_1.entryPosition = SHX8_1
SHX8_1 = {}
SHX8_1.model = -1156746507
SHX9_1 = vector3
SHX10_1 = -114.57550811768
SHX11_1 = 384.71957397461
SHX12_1 = 113.28313446045
SHX9_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1)
SHX8_1.pedPosition = SHX9_1
SHX8_1.pedHeading = 252.28346252441
SHX9_1 = vector3
SHX10_1 = -112.58515167236
SHX11_1 = 383.98904418945
SHX12_1 = 112.28524890137
SHX9_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1)
SHX8_1.entryPosition = SHX9_1
SHX9_1 = {}
SHX9_1.model = -1156746507
SHX10_1 = vector3
SHX11_1 = -263.38021850586
SHX12_1 = -913.14727783203
SHX13_1 = 32.312866210938
SHX10_1 = SHX10_1(SHX11_1, SHX12_1, SHX13_1)
SHX9_1.pedPosition = SHX10_1
SHX9_1.pedHeading = 17.007873535156
SHX10_1 = vector3
SHX11_1 = -262.64916992188
SHX12_1 = -911.17016601562
SHX13_1 = 31.34413269043
SHX10_1 = SHX10_1(SHX11_1, SHX12_1, SHX13_1)
SHX9_1.entryPosition = SHX10_1
SHX10_1 = {}
SHX10_1.model = -1156746507
SHX11_1 = vector3
SHX12_1 = 2071.5825195312
SHX13_1 = 5085.4946289062
SHX14_1 = 41.950927734375
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1.pedPosition = SHX11_1
SHX10_1.pedHeading = 124.72441101074
SHX11_1 = vector3
SHX12_1 = 2070.2563476562
SHX13_1 = 5084.326171875
SHX14_1 = 40.965917358398
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1.entryPosition = SHX11_1
SHX11_1 = {}
SHX11_1.model = -1156746507
SHX12_1 = vector3
SHX13_1 = 3943.1472167969
SHX14_1 = 4859.7495117188
SHX15_1 = 14.114990234375
SHX12_1 = SHX12_1(SHX13_1, SHX14_1, SHX15_1)
SHX11_1.pedPosition = SHX12_1
SHX11_1.pedHeading = 289.13385009766
SHX12_1 = vector3
SHX13_1 = 3943.9750976562
SHX14_1 = 4860.068359375
SHX15_1 = 13.121613502502
SHX12_1 = SHX12_1(SHX13_1, SHX14_1, SHX15_1)
SHX11_1.entryPosition = SHX12_1
SHX12_1 = {}
SHX12_1.model = -1156746507
SHX13_1 = vector3
SHX14_1 = 1157.31640625
SHX15_1 = -436.75601196289
SHX16_1 = 62.225215911865
SHX13_1 = SHX13_1(SHX14_1, SHX15_1, SHX16_1)
SHX12_1.pedPosition = SHX13_1
SHX12_1.pedHeading = 345.82678222656
SHX13_1 = vector3
SHX14_1 = 1157.9731445312
SHX15_1 = -434.87191772461
SHX16_1 = 61.225276947021
SHX13_1 = SHX13_1(SHX14_1, SHX15_1, SHX16_1)
SHX12_1.entryPosition = SHX13_1
SHX13_1 = {}
SHX13_1.model = -1156746507
SHX14_1 = vector3
SHX15_1 = 3762.5803222656
SHX16_1 = -1556.5977783203
SHX17_1 = 4.02197265625
SHX14_1 = SHX14_1(SHX15_1, SHX16_1, SHX17_1)
SHX13_1.pedPosition = SHX14_1
SHX13_1.pedHeading = 164.4094543457
SHX14_1 = vector3
SHX15_1 = 3762.2326660156
SHX16_1 = -1559.1011962891
SHX17_1 = 3.0253777503967
SHX14_1 = SHX14_1(SHX15_1, SHX16_1, SHX17_1)
SHX13_1.entryPosition = SHX14_1
SHX14_1 = {}
SHX14_1.model = -1156746507
SHX15_1 = vector3
SHX16_1 = -3007.8989257812
SHX17_1 = 76.193405151367
SHX18_1 = 16.305541992188
SHX15_1 = SHX15_1(SHX16_1, SHX17_1, SHX18_1)
SHX14_1.pedPosition = SHX15_1
SHX14_1.pedHeading = 238.11022949219
SHX15_1 = vector3
SHX16_1 = -3006.765625
SHX17_1 = 75.510192871094
SHX18_1 = 15.231451034546
SHX15_1 = SHX15_1(SHX16_1, SHX17_1, SHX18_1)
SHX14_1.entryPosition = SHX15_1
SHX15_1 = {}
SHX15_1.model = -1156746507
SHX16_1 = vector3
SHX17_1 = -1026.8967285156
SHX18_1 = -1369.3714599609
SHX19_1 = 9.4476318359375
SHX16_1 = SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX15_1.pedPosition = SHX16_1
SHX15_1.pedHeading = 289.13385009766
SHX16_1 = vector3
SHX17_1 = -1026.01171875
SHX18_1 = -1368.8759765625
SHX19_1 = 8.4597616195679
SHX16_1 = SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX15_1.entryPosition = SHX16_1
SHX16_1 = {}
SHX16_1.model = -1156746507
SHX17_1 = vector3
SHX18_1 = -1890.4483642578
SHX19_1 = 2064.3295898438
SHX20_1 = 145.56042480469
SHX17_1 = SHX17_1(SHX18_1, SHX19_1, SHX20_1)
SHX16_1.pedPosition = SHX17_1
SHX16_1.pedHeading = 252.28346252441
SHX17_1 = vector3
SHX18_1 = -1888.734375
SHX19_1 = 2063.6904296875
SHX20_1 = 144.57385253906
SHX17_1 = SHX17_1(SHX18_1, SHX19_1, SHX20_1)
SHX16_1.entryPosition = SHX17_1
SHX2_1[1] = SHX3_1
SHX2_1[2] = SHX4_1
SHX2_1[3] = SHX5_1
SHX2_1[4] = SHX6_1
SHX2_1[5] = SHX7_1
SHX2_1[6] = SHX8_1
SHX2_1[7] = SHX9_1
SHX2_1[8] = SHX10_1
SHX2_1[9] = SHX11_1
SHX2_1[10] = SHX12_1
SHX2_1[11] = SHX13_1
SHX2_1[12] = SHX14_1
SHX2_1[13] = SHX15_1
SHX2_1[14] = SHX16_1
SHX3_1 = Citizen
SHX3_1 = SHX3_1.CreateThread
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX0_2 = pairs
  SHX1_2 = SHX2_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.createDynamicPed
    SHX7_2 = SHX5_2.model
    SHX8_2 = SHX5_2.pedPosition
    SHX9_2 = 100.0
    SHX10_2 = true
    SHX11_2 = "mini@strip_club@idles@bouncer@base"
    SHX12_2 = "base"
    SHX13_2 = 75.0
    SHX14_2 = nil
    function SHX15_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
      SHX1_3 = SetEntityCanBeDamaged
      SHX2_3 = SHX0_3
      SHX3_3 = false
      SHX1_3(SHX2_3, SHX3_3)
      SHX1_3 = SetPedAsEnemy
      SHX2_3 = SHX0_3
      SHX3_3 = false
      SHX1_3(SHX2_3, SHX3_3)
      SHX1_3 = SetBlockingOfNonTemporaryEvents
      SHX2_3 = SHX0_3
      SHX3_3 = true
      SHX1_3(SHX2_3, SHX3_3)
      SHX1_3 = SetPedResetFlag
      SHX2_3 = SHX0_3
      SHX3_3 = 249
      SHX4_3 = true
      SHX1_3(SHX2_3, SHX3_3, SHX4_3)
      SHX1_3 = SetPedConfigFlag
      SHX2_3 = SHX0_3
      SHX3_3 = 185
      SHX4_3 = true
      SHX1_3(SHX2_3, SHX3_3, SHX4_3)
      SHX1_3 = SetPedConfigFlag
      SHX2_3 = SHX0_3
      SHX3_3 = 108
      SHX4_3 = true
      SHX1_3(SHX2_3, SHX3_3, SHX4_3)
      SHX1_3 = SetPedCanEvasiveDive
      SHX2_3 = SHX0_3
      SHX3_3 = false
      SHX1_3(SHX2_3, SHX3_3)
      SHX1_3 = SetPedCanRagdollFromPlayerImpact
      SHX2_3 = SHX0_3
      SHX3_3 = false
      SHX1_3(SHX2_3, SHX3_3)
      SHX1_3 = SetPedConfigFlag
      SHX2_3 = SHX0_3
      SHX3_3 = 208
      SHX4_3 = true
      SHX1_3(SHX2_3, SHX3_3, SHX4_3)
      SHX1_3 = SetEntityCollision
      SHX2_3 = SHX0_3
      SHX3_3 = false
      SHX4_3 = false
      SHX1_3(SHX2_3, SHX3_3, SHX4_3)
      SHX1_3 = SetEntityCoordsNoOffset
      SHX2_3 = SHX0_3
      SHX3_3 = SHX5_2.pedPosition
      SHX3_3 = SHX3_3.x
      SHX4_3 = SHX5_2.pedPosition
      SHX4_3 = SHX4_3.y
      SHX5_3 = SHX5_2.pedPosition
      SHX5_3 = SHX5_3.z
      SHX6_3 = false
      SHX7_3 = false
      SHX8_3 = false
      SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
      SHX1_3 = SetEntityHeading
      SHX2_3 = SHX0_3
      SHX3_3 = SHX5_2.pedHeading
      SHX1_3(SHX2_3, SHX3_3)
      SHX1_3 = FreezeEntityPosition
      SHX2_3 = SHX0_3
      SHX3_3 = true
      SHX1_3(SHX2_3, SHX3_3)
    end
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  end
end
SHX3_1(SHX4_1)
SHX3_1 = RageUI
SHX3_1 = SHX3_1.CreateWhile
SHX4_1 = 1.0
SHX5_1 = RMenu
SHX6_1 = SHX5_1
SHX5_1 = SHX5_1.Get
SHX7_1 = "cmgchips"
SHX8_1 = "cashier"
SHX5_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1)
SHX6_1 = nil
function SHX7_1()
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
  SHX3_2 = "cmgchips"
  SHX4_2 = "cashier"
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
    SHX1_3 = "Buy chips"
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
        SHX3_4 = CMG
        SHX3_4 = SHX3_4.GetRageInputInt
        SHX4_4 = "Enter Chips"
        SHX3_4 = SHX3_4(SHX4_4)
        if SHX3_4 then
          if SHX3_4 > 0 then
            SHX4_4 = TriggerServerEvent
            SHX5_4 = "d5dbf55707"
            SHX6_4 = math
            SHX6_4 = SHX6_4.floor
            SHX7_4 = SHX3_4
            SHX6_4, SHX7_4 = SHX6_4(SHX7_4)
            SHX4_4(SHX5_4, SHX6_4, SHX7_4)
          else
            SHX4_4 = tCMG
            SHX4_4 = SHX4_4.notify
            SHX5_4 = "~r~Negative amount."
            SHX4_4(SHX5_4)
          end
        else
          SHX4_4 = tCMG
          SHX4_4 = SHX4_4.notify
          SHX5_4 = "~r~Invalid amount."
          SHX4_4(SHX5_4)
        end
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Buy all chips"
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
        SHX4_4 = "434a212611"
        SHX3_4(SHX4_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Sell chips"
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
        SHX3_4 = CMG
        SHX3_4 = SHX3_4.GetRageInputInt
        SHX4_4 = "Enter Chips"
        SHX3_4 = SHX3_4(SHX4_4)
        if SHX3_4 then
          if SHX3_4 > 0 then
            SHX4_4 = TriggerServerEvent
            SHX5_4 = "5de4d2dc4c"
            SHX6_4 = SHX3_4
            SHX4_4(SHX5_4, SHX6_4)
          else
            SHX4_4 = tCMG
            SHX4_4 = SHX4_4.notify
            SHX5_4 = "~r~Negative amount."
            SHX4_4(SHX5_4)
          end
        else
          SHX4_4 = tCMG
          SHX4_4 = SHX4_4.notify
          SHX5_4 = "~r~Invalid amount."
          SHX4_4(SHX5_4)
        end
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "Sell all chips"
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
        SHX4_4 = "d1aaad3e19"
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
end
SHX3_1(SHX4_1, SHX5_1, SHX6_1, SHX7_1)
function SHX3_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.Visible
  SHX2_2 = RMenu
  SHX3_2 = SHX2_2
  SHX2_2 = SHX2_2.Get
  SHX4_2 = "cmgchips"
  SHX5_2 = "cashier"
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
end
SHX4_1 = RegisterNetEvent
SHX5_1 = "5b934498c8"
function SHX6_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = math
  SHX1_2 = SHX1_2.floor
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX1_1 = SHX1_2
  SHX1_2 = tostring
  SHX2_2 = math
  SHX2_2 = SHX2_2.floor
  SHX3_2 = SHX0_2
  SHX2_2, SHX3_2 = SHX2_2(SHX3_2)
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX2_2 = getMoneyStringFormatted
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX0_1 = SHX2_2
end
SHX4_1(SHX5_1, SHX6_1)
SHX4_1 = {}
SHX5_1 = {}
SHX6_1 = vector3
SHX7_1 = 967.20806884766
SHX8_1 = 36.561210632324
SHX9_1 = 80.994140625
SHX6_1 = SHX6_1(SHX7_1, SHX8_1, SHX9_1)
SHX5_1.position = SHX6_1
SHX5_1.radius = 100
SHX6_1 = {}
SHX7_1 = vector3
SHX8_1 = 54.053936004639
SHX9_1 = 6742.1513671875
SHX10_1 = -107.354347229
SHX7_1 = SHX7_1(SHX8_1, SHX9_1, SHX10_1)
SHX6_1.position = SHX7_1
SHX6_1.radius = 100
SHX7_1 = {}
SHX8_1 = vector3
SHX9_1 = -1896.8582763672
SHX10_1 = 2069.3537597656
SHX11_1 = 144.86274719238
SHX8_1 = SHX8_1(SHX9_1, SHX10_1, SHX11_1)
SHX7_1.position = SHX8_1
SHX7_1.radius = 10
SHX8_1 = {}
SHX9_1 = vector3
SHX10_1 = 774.75134277344
SHX11_1 = -552.91137695312
SHX12_1 = 22.498882293701
SHX9_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1)
SHX8_1.position = SHX9_1
SHX8_1.radius = 100
SHX9_1 = {}
SHX10_1 = vector3
SHX11_1 = -1137.8917236328
SHX12_1 = -184.71762084961
SHX13_1 = 40.0803565979
SHX10_1 = SHX10_1(SHX11_1, SHX12_1, SHX13_1)
SHX9_1.position = SHX10_1
SHX9_1.radius = 50
SHX10_1 = {}
SHX11_1 = vector3
SHX12_1 = 422.06201171875
SHX13_1 = 18.277492523193
SHX14_1 = 91.935234069824
SHX11_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1)
SHX10_1.position = SHX11_1
SHX10_1.radius = 25
SHX11_1 = {}
SHX12_1 = vector3
SHX13_1 = -276.10549926758
SHX14_1 = -731.72308349609
SHX15_1 = 124.46861816406
SHX12_1 = SHX12_1(SHX13_1, SHX14_1, SHX15_1)
SHX11_1.position = SHX12_1
SHX11_1.radius = 25
SHX12_1 = {}
SHX13_1 = vector3
SHX14_1 = -112.58515167236
SHX15_1 = 383.98904418945
SHX16_1 = 113.28324890137
SHX13_1 = SHX13_1(SHX14_1, SHX15_1, SHX16_1)
SHX12_1.position = SHX13_1
SHX12_1.radius = 25
SHX13_1 = {}
SHX14_1 = vector3
SHX15_1 = -52.887622833252
SHX16_1 = 8034.4389648438
SHX17_1 = 12.681856155396
SHX14_1 = SHX14_1(SHX15_1, SHX16_1, SHX17_1)
SHX13_1.position = SHX14_1
SHX13_1.radius = 25
SHX13_1.ignoreInteriorCheck = true
SHX14_1 = {}
SHX15_1 = vector3
SHX16_1 = 1147.0424804688
SHX17_1 = -433.18096923828
SHX18_1 = 62.217880249023
SHX15_1 = SHX15_1(SHX16_1, SHX17_1, SHX18_1)
SHX14_1.position = SHX15_1
SHX14_1.radius = 25
SHX15_1 = {}
SHX16_1 = vector3
SHX17_1 = -251.02876281738
SHX18_1 = -914.43530273438
SHX19_1 = 32.557731628418
SHX16_1 = SHX16_1(SHX17_1, SHX18_1, SHX19_1)
SHX15_1.position = SHX16_1
SHX15_1.radius = 25
SHX16_1 = {}
SHX17_1 = vector3
SHX18_1 = -266.23413085938
SHX19_1 = -912.22039794922
SHX20_1 = 46.270469665527
SHX17_1 = SHX17_1(SHX18_1, SHX19_1, SHX20_1)
SHX16_1.position = SHX17_1
SHX16_1.radius = 10
SHX17_1 = {}
SHX18_1 = vector3
SHX19_1 = 2062.2058105469
SHX20_1 = 5095.21484375
SHX21_1 = 41.955909729004
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX17_1.position = SHX18_1
SHX17_1.radius = 25
SHX18_1 = {}
SHX19_1 = vector3
SHX20_1 = 3945.9306640625
SHX21_1 = 4855.9868164062
SHX22_1 = 14.121611595154
SHX19_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1)
SHX18_1.position = SHX19_1
SHX18_1.radius = 10
SHX19_1 = {}
SHX20_1 = vector3
SHX21_1 = 3761.9794921875
SHX22_1 = -1559.1925048828
SHX23_1 = 4.0253777503967
SHX20_1 = SHX20_1(SHX21_1, SHX22_1, SHX23_1)
SHX19_1.position = SHX20_1
SHX19_1.radius = 40
SHX19_1.ignoreInteriorCheck = true
SHX20_1 = {}
SHX21_1 = vector3
SHX22_1 = -3006.765625
SHX23_1 = 75.510192871094
SHX24_1 = 16.231451034546
SHX21_1 = SHX21_1(SHX22_1, SHX23_1, SHX24_1)
SHX20_1.position = SHX21_1
SHX20_1.radius = 40
SHX20_1.ignoreInteriorCheck = true
SHX21_1 = {}
SHX22_1 = vector3
SHX23_1 = -1022.5
SHX24_1 = -1367.5
SHX25_1 = 9.46
SHX22_1 = SHX22_1(SHX23_1, SHX24_1, SHX25_1)
SHX21_1.position = SHX22_1
SHX21_1.radius = 25
SHX4_1[1] = SHX5_1
SHX4_1[2] = SHX6_1
SHX4_1[3] = SHX7_1
SHX4_1[4] = SHX8_1
SHX4_1[5] = SHX9_1
SHX4_1[6] = SHX10_1
SHX4_1[7] = SHX11_1
SHX4_1[8] = SHX12_1
SHX4_1[9] = SHX13_1
SHX4_1[10] = SHX14_1
SHX4_1[11] = SHX15_1
SHX4_1[12] = SHX16_1
SHX4_1[13] = SHX17_1
SHX4_1[14] = SHX18_1
SHX4_1[15] = SHX19_1
SHX4_1[16] = SHX20_1
SHX4_1[17] = SHX21_1
SHX5_1 = false
SHX6_1 = CMG
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX5_1
  return SHX0_2
end
SHX6_1.isDrawingCasinoChipsUI = SHX7_1
SHX6_1 = CMG
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX1_1
  return SHX0_2
end
SHX6_1.getChipsClientDisplayAmount = SHX7_1
SHX6_1 = AddEventHandler
SHX7_1 = "CMG:onClientSpawn"
function SHX8_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2
  if SHX1_2 then
    SHX2_2 = RequestStreamedTextureDict
    SHX3_2 = "CommonMenu"
    SHX4_2 = false
    SHX2_2(SHX3_2, SHX4_2)
    function SHX2_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = SHX3_1
      SHX1_3 = true
      SHX0_3(SHX1_3)
    end
    function SHX3_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = SHX3_1
      SHX1_3 = false
      SHX0_3(SHX1_3)
    end
    function SHX4_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX5_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
      SHX0_3 = false
      SHX5_1 = SHX0_3
    end
    function SHX6_2(SHX0_3)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3
      SHX1_3 = false
      SHX5_1 = SHX1_3
      SHX1_3 = GetRoomKeyFromEntity
      SHX2_3 = PlayerPedId
      SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3 = SHX2_3()
      SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3)
      if 0 == SHX1_3 then
        SHX1_3 = SHX0_3.ignoreInteriorCheck
        if not SHX1_3 then
          goto SHX_LABEL_57
        end
      end
      SHX1_3 = SetScriptGfxDrawOrder
      SHX2_3 = 7
      SHX1_3(SHX2_3)
      SHX1_3 = DrawSprite
      SHX2_3 = "CommonMenu"
      SHX3_3 = "shop_chips_b"
      SHX4_3 = 0.89
      SHX5_3 = 0.078
      SHX6_3 = 0.025
      SHX7_3 = 0.03
      SHX8_3 = 0.0
      SHX9_3 = 255
      SHX10_3 = 255
      SHX11_3 = 255
      SHX12_3 = 255
      SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
      SHX1_3 = SetScriptGfxDrawOrder
      SHX2_3 = 1
      SHX1_3(SHX2_3)
      SHX1_3 = DrawRect
      SHX2_3 = 0.934
      SHX3_3 = 0.077
      SHX4_3 = 0.104
      SHX5_3 = 0.036
      SHX6_3 = 0
      SHX7_3 = 0
      SHX8_3 = 0
      SHX9_3 = 150
      SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
      SHX1_3 = DrawAdvancedTextNoOutline
      SHX2_3 = 1.037
      SHX3_3 = 0.08
      SHX4_3 = 0.005
      SHX5_3 = 0.0028
      SHX6_3 = 0.52
      SHX7_3 = SHX0_1
      SHX8_3 = 255
      SHX9_3 = 255
      SHX10_3 = 255
      SHX11_3 = 255
      SHX12_3 = 7
      SHX13_3 = 0
      SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3)
      SHX1_3 = true
      SHX5_1 = SHX1_3
      -- [FIX IF ERROR] Move ::SHX_LABEL_57:: outside nested blocks until all 'goto SHX_LABEL_57' can see it
      ::SHX_LABEL_57::
    end
    SHX7_2 = pairs
    SHX8_2 = SHX2_1
    SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
    for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
      SHX13_2 = tCMG
      SHX13_2 = SHX13_2.addBlip
      SHX14_2 = SHX12_2.entryPosition
      SHX14_2 = SHX14_2.x
      SHX15_2 = SHX12_2.entryPosition
      SHX15_2 = SHX15_2.y
      SHX16_2 = SHX12_2.entryPosition
      SHX16_2 = SHX16_2.z
      SHX17_2 = 683
      SHX18_2 = 0
      SHX19_2 = "Chips Cashier"
      SHX20_2 = 0.7
      SHX21_2 = true
      SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
      SHX13_2 = tCMG
      SHX13_2 = SHX13_2.addMarker
      SHX14_2 = SHX12_2.entryPosition
      SHX14_2 = SHX14_2.x
      SHX15_2 = SHX12_2.entryPosition
      SHX15_2 = SHX15_2.y
      SHX16_2 = SHX12_2.entryPosition
      SHX16_2 = SHX16_2.z
      SHX17_2 = 1.0
      SHX18_2 = 1.0
      SHX19_2 = 1.0
      SHX20_2 = 138
      SHX21_2 = 43
      SHX22_2 = 226
      SHX23_2 = 70
      SHX24_2 = 50
      SHX25_2 = 27
      SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2)
      SHX13_2 = CMG
      SHX13_2 = SHX13_2.createArea
      SHX14_2 = "chipscashier_"
      SHX15_2 = SHX11_2
      SHX14_2 = SHX14_2 .. SHX15_2
      SHX15_2 = SHX12_2.entryPosition
      SHX16_2 = 1.5
      SHX17_2 = 6
      SHX18_2 = SHX2_2
      SHX19_2 = SHX3_2
      SHX20_2 = SHX4_2
      SHX21_2 = {}
      SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
    end
    SHX7_2 = pairs
    SHX8_2 = SHX4_1
    SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
    for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
      SHX13_2 = CMG
      SHX13_2 = SHX13_2.createArea
      SHX14_2 = "casinos_"
      SHX15_2 = SHX11_2
      SHX14_2 = SHX14_2 .. SHX15_2
      SHX15_2 = SHX12_2.position
      SHX16_2 = SHX12_2.radius
      SHX17_2 = 6
      function SHX18_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3
      end
      SHX19_2 = SHX5_2
      SHX20_2 = SHX6_2
      SHX21_2 = {}
      SHX22_2 = SHX12_2.ignoreInteriorCheck
      SHX21_2.ignoreInteriorCheck = SHX22_2
      SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
    end
  end
end
SHX6_1(SHX7_1, SHX8_1)
