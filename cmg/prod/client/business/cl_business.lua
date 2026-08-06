-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_business"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = 93
SHX2_1 = 2
SHX3_1 = 1.3
SHX4_1 = nil
SHX5_1 = nil
SHX6_1 = nil
SHX7_1 = nil
SHX8_1 = nil
SHX9_1 = nil
SHX10_1 = nil
SHX11_1 = nil
SHX12_1 = nil
SHX13_1 = nil
SHX14_1 = nil
SHX15_1 = {}
SHX16_1 = {}
SHX17_1 = nil
SHX18_1 = {}
SHX19_1 = {}
SHX20_1 = {}
SHX21_1 = RMenu
SHX21_1 = SHX21_1.Add
SHX22_1 = "business"
SHX23_1 = "marker"
SHX24_1 = RageUI
SHX24_1 = SHX24_1.CreateMenu
SHX25_1 = ""
SHX26_1 = "~b~CMG Business"
SHX27_1 = CMG
SHX27_1 = SHX27_1.getRageUIMenuWidth
SHX27_1 = SHX27_1()
SHX28_1 = CMG
SHX28_1 = SHX28_1.getRageUIMenuHeight
SHX28_1 = SHX28_1()
SHX29_1 = "cmg_marketui"
SHX30_1 = "cmg_marketui"
SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1 = SHX24_1(SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1)
SHX21_1(SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1)
SHX21_1 = RMenu
SHX21_1 = SHX21_1.Add
SHX22_1 = "business"
SHX23_1 = "purchase"
SHX24_1 = RageUI
SHX24_1 = SHX24_1.CreateSubMenu
SHX25_1 = RMenu
SHX26_1 = SHX25_1
SHX25_1 = SHX25_1.Get
SHX27_1 = "business"
SHX28_1 = "marker"
SHX25_1 = SHX25_1(SHX26_1, SHX27_1, SHX28_1)
SHX26_1 = ""
SHX27_1 = "~b~CMG Business"
SHX28_1 = CMG
SHX28_1 = SHX28_1.getRageUIMenuWidth
SHX28_1 = SHX28_1()
SHX29_1 = CMG
SHX29_1 = SHX29_1.getRageUIMenuHeight
SHX29_1 = SHX29_1()
SHX30_1 = "cmg_marketui"
SHX31_1 = "cmg_marketui"
SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1 = SHX24_1(SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1)
SHX21_1(SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1)
SHX21_1 = RMenu
SHX21_1 = SHX21_1.Add
SHX22_1 = "business"
SHX23_1 = "edititemprices"
SHX24_1 = RageUI
SHX24_1 = SHX24_1.CreateSubMenu
SHX25_1 = RMenu
SHX26_1 = SHX25_1
SHX25_1 = SHX25_1.Get
SHX27_1 = "business"
SHX28_1 = "marker"
SHX25_1 = SHX25_1(SHX26_1, SHX27_1, SHX28_1)
SHX26_1 = ""
SHX27_1 = "~b~CMG Business"
SHX28_1 = CMG
SHX28_1 = SHX28_1.getRageUIMenuWidth
SHX28_1 = SHX28_1()
SHX29_1 = CMG
SHX29_1 = SHX29_1.getRageUIMenuHeight
SHX29_1 = SHX29_1()
SHX30_1 = "cmg_marketui"
SHX31_1 = "cmg_marketui"
SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1 = SHX24_1(SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1)
SHX21_1(SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1)
SHX21_1 = RMenu
SHX21_1 = SHX21_1.Add
SHX22_1 = "business"
SHX23_1 = "viewusers"
SHX24_1 = RageUI
SHX24_1 = SHX24_1.CreateSubMenu
SHX25_1 = RMenu
SHX26_1 = SHX25_1
SHX25_1 = SHX25_1.Get
SHX27_1 = "business"
SHX28_1 = "marker"
SHX25_1 = SHX25_1(SHX26_1, SHX27_1, SHX28_1)
SHX26_1 = ""
SHX27_1 = "~b~CMG Business"
SHX28_1 = CMG
SHX28_1 = SHX28_1.getRageUIMenuWidth
SHX28_1 = SHX28_1()
SHX29_1 = CMG
SHX29_1 = SHX29_1.getRageUIMenuHeight
SHX29_1 = SHX29_1()
SHX30_1 = "cmg_marketui"
SHX31_1 = "cmg_marketui"
SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1 = SHX24_1(SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1)
SHX21_1(SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1)
SHX21_1 = RMenu
SHX21_1 = SHX21_1.Add
SHX22_1 = "business"
SHX23_1 = "menu"
SHX24_1 = RageUI
SHX24_1 = SHX24_1.CreateMenu
SHX25_1 = ""
SHX26_1 = "~b~CMG Business"
SHX27_1 = CMG
SHX27_1 = SHX27_1.getRageUIMenuWidth
SHX27_1 = SHX27_1()
SHX28_1 = CMG
SHX28_1 = SHX28_1.getRageUIMenuHeight
SHX28_1 = SHX28_1()
SHX29_1 = "cmg_marketui"
SHX30_1 = "cmg_marketui"
SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1 = SHX24_1(SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1)
SHX21_1(SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1)
SHX21_1 = RMenu
SHX21_1 = SHX21_1.Add
SHX22_1 = "business"
SHX23_1 = "employees"
SHX24_1 = RageUI
SHX24_1 = SHX24_1.CreateMenu
SHX25_1 = ""
SHX26_1 = "~b~CMG Business"
SHX27_1 = CMG
SHX27_1 = SHX27_1.getRageUIMenuWidth
SHX27_1 = SHX27_1()
SHX28_1 = CMG
SHX28_1 = SHX28_1.getRageUIMenuHeight
SHX28_1 = SHX28_1()
SHX29_1 = "cmg_marketui"
SHX30_1 = "cmg_marketui"
SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1 = SHX24_1(SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1)
SHX21_1(SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1)
SHX21_1 = {}
SHX22_1 = "1 Week"
SHX23_1 = "2 Weeks"
SHX24_1 = "3 Weeks"
SHX25_1 = "4 Weeks"
SHX21_1[1] = SHX22_1
SHX21_1[2] = SHX23_1
SHX21_1[3] = SHX24_1
SHX21_1[4] = SHX25_1
SHX22_1 = {}
SHX23_1 = 1
SHX24_1 = 2
SHX25_1 = 3
SHX26_1 = 4
SHX22_1[1] = SHX23_1
SHX22_1[2] = SHX24_1
SHX22_1[3] = SHX25_1
SHX22_1[4] = SHX26_1
SHX23_1 = 1
SHX24_1 = RageUI
SHX24_1 = SHX24_1.CreateWhile
SHX25_1 = 1.0
SHX26_1 = RMenu
SHX27_1 = SHX26_1
SHX26_1 = SHX26_1.Get
SHX28_1 = "business"
SHX29_1 = "marker"
SHX26_1 = SHX26_1(SHX27_1, SHX28_1, SHX29_1)
SHX27_1 = nil
function SHX28_1()
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
  SHX3_2 = "business"
  SHX4_2 = "marker"
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
    SHX0_3 = SHX14_1
    if SHX0_3 then
      SHX0_3 = SHX14_1.ownerId
      if SHX0_3 then
        SHX0_3 = SHX14_1.ownerId
        SHX1_3 = CMG
        SHX1_3 = SHX1_3.getClientUserId
        SHX1_3 = SHX1_3()
        if SHX0_3 == SHX1_3 then
          SHX0_3 = RageUI
          SHX0_3 = SHX0_3.Separator
          SHX1_3 = "~y~You are the owner of "
          SHX2_3 = SHX13_1
          SHX1_3 = SHX1_3 .. SHX2_3
          SHX0_3(SHX1_3)
          SHX0_3 = RageUI
          SHX0_3 = SHX0_3.Separator
          SHX1_3 = "Options"
          SHX0_3(SHX1_3)
          SHX0_3 = RageUI
          SHX0_3 = SHX0_3.ButtonWithStyle
          SHX1_3 = "~g~Manage Employees"
          SHX2_3 = nil
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
          SHX8_3 = "business"
          SHX9_3 = "viewusers"
          SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
          SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3)
          SHX0_3 = pairs
          SHX1_3 = SHX0_1.locations
          SHX2_3 = SHX13_1
          SHX1_3 = SHX1_3[SHX2_3]
          SHX1_3 = SHX1_3.jobs
          SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
          for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
            SHX6_3 = SHX5_3.jobType
            if "waiter" == SHX6_3 then
              SHX6_3 = RageUI
              SHX6_3 = SHX6_3.ButtonWithStyle
              SHX7_3 = "~y~Edit Item Prices"
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
                
                local SHX3_4, SHX4_4, SHX5_4
                if SHX2_4 then
                  SHX3_4 = TriggerServerEvent
                  SHX4_4 = "e76e0858eb"
                  SHX5_4 = SHX13_1
                  SHX3_4(SHX4_4, SHX5_4)
                end
              end
              SHX12_3 = RMenu
              SHX13_3 = SHX12_3
              SHX12_3 = SHX12_3.Get
              SHX14_3 = "business"
              SHX15_3 = "edititemprices"
              SHX12_3, SHX13_3, SHX14_3, SHX15_3 = SHX12_3(SHX13_3, SHX14_3, SHX15_3)
              SHX6_3(SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3)
              break
            end
          end
          SHX0_3 = RageUI
          SHX0_3 = SHX0_3.ButtonWithStyle
          SHX1_3 = "~r~Dissolve Business"
          SHX2_3 = "Immediately closes the business with no money returned."
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
              SHX4_4 = "6b1c458600"
              SHX5_4 = SHX13_1
              SHX3_4(SHX4_4, SHX5_4)
            end
          end
          SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
          SHX0_3 = RageUI
          SHX0_3 = SHX0_3.Separator
          SHX1_3 = "~y~Cash Stored: \194\163"
          SHX2_3 = getMoneyStringFormatted
          SHX3_3 = SHX14_1.totalMoneyDisplay
          SHX2_3 = SHX2_3(SHX3_3)
          SHX1_3 = SHX1_3 .. SHX2_3
          SHX0_3(SHX1_3)
          SHX0_3 = RageUI
          SHX0_3 = SHX0_3.ButtonWithStyle
          SHX1_3 = "Withdraw Cash"
          SHX2_3 = ""
          SHX3_3 = {}
          SHX3_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
          SHX4_3 = SHX14_1.totalMoneyDisplay
          SHX4_3 = SHX4_3 > 0
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
              SHX4_4 = "3a86b10cb1"
              SHX5_4 = SHX13_1
              SHX3_4(SHX4_4, SHX5_4)
            end
          end
          SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
        else
          SHX0_3 = SHX14_1.users
          SHX1_3 = CMG
          SHX1_3 = SHX1_3.getClientUserId
          SHX1_3 = SHX1_3()
          SHX0_3 = SHX0_3[SHX1_3]
          if SHX0_3 then
            SHX1_3 = RageUI
            SHX1_3 = SHX1_3.Separator
            SHX2_3 = "~y~"
            SHX3_3 = SHX13_1
            SHX4_3 = " is owned by "
            SHX5_3 = SHX14_1.ownerName
            SHX6_3 = "."
            SHX2_3 = SHX2_3 .. SHX3_3 .. SHX4_3 .. SHX5_3 .. SHX6_3
            SHX1_3(SHX2_3)
            SHX1_3 = SHX0_3.isManager
            if SHX1_3 then
              SHX1_3 = RageUI
              SHX1_3 = SHX1_3.ButtonWithStyle
              SHX2_3 = "~g~Manage Employees"
              SHX3_3 = nil
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
              SHX9_3 = "business"
              SHX10_3 = "viewusers"
              SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3 = SHX7_3(SHX8_3, SHX9_3, SHX10_3)
              SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3)
              SHX1_3 = RageUI
              SHX1_3 = SHX1_3.Separator
              SHX2_3 = "~y~You are a manager of the business."
              SHX1_3(SHX2_3)
            else
              SHX1_3 = RageUI
              SHX1_3 = SHX1_3.Separator
              SHX2_3 = "~y~You are an employee of the business."
              SHX1_3(SHX2_3)
            end
          else
            SHX1_3 = RageUI
            SHX1_3 = SHX1_3.Separator
            SHX2_3 = "~y~"
            SHX3_3 = SHX13_1
            SHX4_3 = " is owned by "
            SHX5_3 = SHX14_1.ownerName
            SHX6_3 = "."
            SHX2_3 = SHX2_3 .. SHX3_3 .. SHX4_3 .. SHX5_3 .. SHX6_3
            SHX1_3(SHX2_3)
            SHX1_3 = RageUI
            SHX1_3 = SHX1_3.Separator
            SHX2_3 = "~y~Contact them if you are interested in a job."
            SHX1_3(SHX2_3)
          end
        end
      else
        SHX0_3 = RageUI
        SHX0_3 = SHX0_3.ButtonWithStyle
        SHX1_3 = "~y~Purchase Business"
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
        SHX8_3 = "business"
        SHX9_3 = "purchase"
        SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3)
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3)
      end
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "business"
  SHX4_2 = "viewusers"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "~y~Invite Person"
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
        SHX4_4 = "86c5f9a5d9"
        SHX5_4 = SHX13_1
        SHX3_4(SHX4_4, SHX5_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = SHX14_1
    if SHX0_3 then
      SHX0_3 = SHX14_1.ownerId
      SHX1_3 = CMG
      SHX1_3 = SHX1_3.getClientUserId
      SHX1_3 = SHX1_3()
      SHX0_3 = SHX0_3 == SHX1_3
      SHX1_3 = pairs
      SHX2_3 = SHX14_1.users
      SHX1_3, SHX2_3, SHX3_3, SHX4_3 = SHX1_3(SHX2_3)
      for SHX5_3, SHX6_3 in SHX1_3, SHX2_3, SHX3_3, SHX4_3 do
        SHX7_3 = SHX6_3.name
        SHX8_3 = SHX14_1.ownerId
        if SHX5_3 == SHX8_3 then
          SHX8_3 = SHX7_3
          SHX9_3 = " [Owner]"
          SHX8_3 = SHX8_3 .. SHX9_3
          SHX7_3 = SHX8_3
        else
          SHX8_3 = SHX6_3.isManager
          if SHX8_3 then
            SHX8_3 = SHX7_3
            SHX9_3 = " [Manager]"
            SHX8_3 = SHX8_3 .. SHX9_3
            SHX7_3 = SHX8_3
          end
        end
        SHX8_3 = RageUI
        SHX8_3 = SHX8_3.ButtonWithStyle
        SHX9_3 = SHX7_3
        SHX10_3 = ""
        SHX11_3 = {}
        SHX12_3 = "PermID: "
        SHX13_3 = tostring
        SHX14_3 = SHX5_3
        SHX13_3 = SHX13_3(SHX14_3)
        SHX12_3 = SHX12_3 .. SHX13_3
        SHX11_3.RightLabel = SHX12_3
        SHX12_3 = true
        function SHX13_3(SHX0_4, SHX1_4, SHX2_4)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4
          if SHX1_4 then
            SHX3_4 = "Press ~INPUT_FRONTEND_ACCEPT~ to remove the user."
            SHX4_4 = SHX0_3
            if SHX4_4 then
              SHX4_4 = SHX3_4
              SHX5_4 = [[

Press ~INPUT_FRONTEND_X~ to ]]
              SHX6_4 = SHX6_3.isManager
              if SHX6_4 then
                SHX6_4 = "demote"
                if SHX6_4 then
                  goto SHX_LABEL_16
                end
              end
              SHX6_4 = "promote"
              -- [FIX IF ERROR] Move ::SHX_LABEL_16:: outside nested blocks until all 'goto SHX_LABEL_16' can see it
              ::SHX_LABEL_16::
              SHX7_4 = " the user."
              SHX4_4 = SHX4_4 .. SHX5_4 .. SHX6_4 .. SHX7_4
              SHX3_4 = SHX4_4
            end
            SHX4_4 = drawNativeNotification
            SHX5_4 = SHX3_4
            SHX4_4(SHX5_4)
          end
          if SHX2_4 then
            SHX3_4 = TriggerServerEvent
            SHX4_4 = "58871193a2"
            SHX5_4 = SHX13_1
            SHX6_4 = SHX5_3
            SHX3_4(SHX4_4, SHX5_4, SHX6_4)
          end
          SHX3_4 = SHX0_3
          if SHX3_4 then
            SHX3_4 = DisableControlAction
            SHX4_4 = 0
            SHX5_4 = 203
            SHX6_4 = true
            SHX3_4(SHX4_4, SHX5_4, SHX6_4)
            SHX3_4 = IsDisabledControlJustPressed
            SHX4_4 = 0
            SHX5_4 = 203
            SHX3_4 = SHX3_4(SHX4_4, SHX5_4)
            if SHX3_4 then
              SHX3_4 = TriggerServerEvent
              SHX4_4 = "59bcded368"
              SHX5_4 = SHX13_1
              SHX6_4 = SHX5_3
              SHX3_4(SHX4_4, SHX5_4, SHX6_4)
            end
          end
        end
        SHX8_3(SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3)
      end
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "business"
  SHX4_2 = "purchase"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
    SHX1_3 = SHX23_1
    SHX0_3 = SHX22_1
    SHX0_3 = SHX0_3[SHX1_3]
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.Separator
    SHX2_3 = "Business Cost \194\163"
    SHX3_3 = getMoneyStringFormatted
    SHX4_3 = SHX0_1.weekCost
    SHX4_3 = SHX4_3 * SHX0_3
    SHX3_3 = SHX3_3(SHX4_3)
    SHX2_3 = SHX2_3 .. SHX3_3
    SHX1_3(SHX2_3)
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.List
    SHX2_3 = "Weeks To Rent"
    SHX3_3 = SHX21_1
    SHX4_3 = SHX23_1
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
      
      SHX23_1 = SHX3_4
    end
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.ButtonWithStyle
    SHX2_3 = "~y~Confirm Purchase"
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
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4
      if SHX2_4 then
        SHX3_4 = TriggerServerEvent
        SHX4_4 = "5504a12141"
        SHX5_4 = SHX13_1
        SHX6_4 = SHX0_3
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
  SHX3_2 = "business"
  SHX4_2 = "edititemprices"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3
    SHX0_3 = SHX13_1
    if not SHX0_3 then
      return
    end
    SHX0_3 = SHX0_1.locations
    SHX1_3 = SHX13_1
    SHX0_3 = SHX0_3[SHX1_3]
    SHX1_3 = nil
    SHX2_3 = pairs
    SHX3_3 = SHX0_3.jobs
    SHX2_3, SHX3_3, SHX4_3, SHX5_3 = SHX2_3(SHX3_3)
    for SHX6_3, SHX7_3 in SHX2_3, SHX3_3, SHX4_3, SHX5_3 do
      SHX8_3 = SHX7_3.jobType
      if "waiter" == SHX8_3 then
        SHX1_3 = SHX7_3
        break
      end
    end
    if SHX1_3 then
      SHX2_3 = pairs
      SHX3_3 = SHX1_3.jobMetadata
      SHX3_3 = SHX3_3.sellableItems
      SHX2_3, SHX3_3, SHX4_3, SHX5_3 = SHX2_3(SHX3_3)
      for SHX6_3, SHX7_3 in SHX2_3, SHX3_3, SHX4_3, SHX5_3 do
        SHX8_3 = SHX0_3.items
        SHX8_3 = SHX8_3[SHX6_3]
        if SHX8_3 then
          SHX9_3 = CMG
          SHX9_3 = SHX9_3.getBusinessPriceOverrides
          SHX10_3 = SHX13_1
          SHX9_3 = SHX9_3(SHX10_3)
          SHX9_3 = SHX9_3[SHX6_3]
          if not SHX9_3 then
            SHX9_3 = SHX7_3
          end
          SHX10_3 = RageUI
          SHX10_3 = SHX10_3.ButtonWithStyle
          SHX11_3 = SHX8_3[1]
          SHX12_3 = "Minimum Price \194\163"
          SHX13_3 = getMoneyStringFormatted
          SHX14_3 = SHX7_3
          SHX13_3 = SHX13_3(SHX14_3)
          SHX12_3 = SHX12_3 .. SHX13_3
          SHX13_3 = {}
          SHX14_3 = "\194\163"
          SHX15_3 = getMoneyStringFormatted
          SHX16_3 = SHX9_3
          SHX15_3 = SHX15_3(SHX16_3)
          SHX14_3 = SHX14_3 .. SHX15_3
          SHX13_3.RightLabel = SHX14_3
          SHX14_3 = true
          function SHX15_3(SHX0_4, SHX1_4, SHX2_4)
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX3_4, SHX4_4, SHX5_4, SHX6_4
            if SHX2_4 then
              SHX3_4 = TriggerServerEvent
              SHX4_4 = "12848977b5"
              SHX5_4 = SHX13_1
              SHX6_4 = SHX6_3
              SHX3_4(SHX4_4, SHX5_4, SHX6_4)
            end
          end
          SHX10_3(SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3)
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
  SHX3_2 = "business"
  SHX4_2 = "menu"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3
    SHX0_3 = nil
    SHX1_3 = SHX17_1
    if SHX1_3 then
      SHX1_3 = pairs
      SHX2_3 = SHX17_1.locationInfo
      SHX2_3 = SHX2_3.jobs
      SHX1_3, SHX2_3, SHX3_3, SHX4_3 = SHX1_3(SHX2_3)
      for SHX5_3, SHX6_3 in SHX1_3, SHX2_3, SHX3_3, SHX4_3 do
        SHX7_3 = SHX6_3.jobType
        if "waiter" == SHX7_3 then
          SHX0_3 = SHX6_3
          break
        end
      end
    end
    SHX1_3 = {}
    if SHX0_3 then
      SHX2_3 = SHX17_1
      if SHX2_3 then
        SHX2_3 = pairs
        SHX3_3 = SHX0_3.jobMetadata
        SHX3_3 = SHX3_3.sellableItems
        SHX2_3, SHX3_3, SHX4_3, SHX5_3 = SHX2_3(SHX3_3)
        for SHX6_3, SHX7_3 in SHX2_3, SHX3_3, SHX4_3, SHX5_3 do
          SHX8_3 = SHX17_1.locationInfo
          SHX8_3 = SHX8_3.items
          SHX8_3 = SHX8_3[SHX6_3]
          if SHX8_3 then
            SHX9_3 = CMG
            SHX9_3 = SHX9_3.getBusinessPriceOverrides
            SHX10_3 = SHX17_1.businessName
            SHX9_3 = SHX9_3(SHX10_3)
            SHX9_3 = SHX9_3[SHX6_3]
            if not SHX9_3 then
              SHX9_3 = SHX7_3
            end
            SHX10_3 = table
            SHX10_3 = SHX10_3.insert
            SHX11_3 = SHX1_3
            SHX12_3 = {}
            SHX12_3.localItemId = SHX6_3
            SHX13_3 = SHX8_3[1]
            SHX12_3.name = SHX13_3
            SHX12_3.price = SHX9_3
            SHX13_3 = SHX18_1
            SHX13_3 = SHX13_3[SHX6_3]
            if not SHX13_3 then
              SHX13_3 = false
            end
            SHX12_3.inStock = SHX13_3
            SHX10_3(SHX11_3, SHX12_3)
          end
        end
      end
    end
    SHX2_3 = table
    SHX2_3 = SHX2_3.sort
    SHX3_3 = SHX1_3
    function SHX4_3(SHX0_4, SHX1_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX2_4, SHX3_4
      SHX2_4 = SHX0_4.name
      SHX3_4 = SHX1_4.name
      SHX2_4 = SHX2_4 < SHX3_4
      return SHX2_4
    end
    SHX2_3(SHX3_3, SHX4_3)
    SHX2_3 = pairs
    SHX3_3 = SHX1_3
    SHX2_3, SHX3_3, SHX4_3, SHX5_3 = SHX2_3(SHX3_3)
    for SHX6_3, SHX7_3 in SHX2_3, SHX3_3, SHX4_3, SHX5_3 do
      SHX8_3 = SHX7_3.inStock
      if SHX8_3 then
        SHX8_3 = "~g~"
        if SHX8_3 then
          goto SHX_LABEL_78
        end
      end
      SHX8_3 = "~r~"
      -- [FIX IF ERROR] Move ::SHX_LABEL_78:: outside nested blocks until all 'goto SHX_LABEL_78' can see it
      ::SHX_LABEL_78::
      SHX9_3 = SHX7_3.inStock
      if SHX9_3 then
        SHX9_3 = "Purchase this item"
        if SHX9_3 then
          goto SHX_LABEL_85
        end
      end
      SHX9_3 = "Out of stock"
      -- [FIX IF ERROR] Move ::SHX_LABEL_85:: outside nested blocks until all 'goto SHX_LABEL_85' can see it
      ::SHX_LABEL_85::
      SHX10_3 = RageUI
      SHX10_3 = SHX10_3.ButtonWithStyle
      SHX11_3 = SHX8_3
      SHX12_3 = SHX7_3.name
      SHX11_3 = SHX11_3 .. SHX12_3
      SHX12_3 = SHX9_3
      SHX13_3 = {}
      SHX14_3 = "\194\163"
      SHX15_3 = getMoneyStringFormatted
      SHX16_3 = SHX7_3.price
      SHX15_3 = SHX15_3(SHX16_3)
      SHX14_3 = SHX14_3 .. SHX15_3
      SHX13_3.RightLabel = SHX14_3
      SHX14_3 = SHX7_3.inStock
      function SHX15_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4, SHX6_4
        if SHX2_4 then
          SHX3_4 = SHX17_1
          if SHX3_4 then
            SHX3_4 = TriggerServerEvent
            SHX4_4 = "67c8d1e23b"
            SHX5_4 = SHX17_1.businessName
            SHX6_4 = SHX7_3.localItemId
            SHX3_4(SHX4_4, SHX5_4, SHX6_4)
          end
        end
      end
      SHX10_3(SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "business"
  SHX4_2 = "employees"
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
    SHX1_3 = SHX20_1
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
    for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      SHX6_3 = RageUI
      SHX6_3 = SHX6_3.ButtonWithStyle
      SHX7_3 = SHX5_3.name
      SHX8_3 = ""
      SHX9_3 = {}
      SHX10_3 = SHX5_3.jobName
      SHX9_3.RightLabel = SHX10_3
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
SHX24_1(SHX25_1, SHX26_1, SHX27_1, SHX28_1)
function SHX24_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX0_2[1]
  SHX13_1 = SHX1_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "bb058c40b1"
  SHX3_2 = SHX0_2[1]
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.Visible
  SHX2_2 = RMenu
  SHX3_2 = SHX2_2
  SHX2_2 = SHX2_2.Get
  SHX4_2 = "business"
  SHX5_2 = "marker"
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
end
function SHX25_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = nil
  SHX13_1 = SHX0_2
  SHX0_2 = nil
  SHX14_1 = SHX0_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.CloseAll
  SHX0_2()
end
SHX26_1 = pairs
SHX27_1 = SHX0_1.locations
SHX26_1, SHX27_1, SHX28_1, SHX29_1 = SHX26_1(SHX27_1)
for SHX30_1, SHX31_1 in SHX26_1, SHX27_1, SHX28_1, SHX29_1 do
  SHX32_1 = CMG
  SHX32_1 = SHX32_1.createArea
  SHX33_1 = "business_"
  SHX34_1 = SHX30_1
  SHX33_1 = SHX33_1 .. SHX34_1
  SHX34_1 = SHX31_1.ownerMarker
  SHX35_1 = 1.5
  SHX36_1 = 3.0
  SHX37_1 = SHX24_1
  SHX38_1 = SHX25_1
  function SHX39_1()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_2, SHX1_2
  end
  SHX40_1 = {}
  SHX41_1 = SHX30_1
  SHX40_1[1] = SHX41_1
  SHX32_1(SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1)
  SHX32_1 = tCMG
  SHX32_1 = SHX32_1.addMarker
  SHX33_1 = SHX31_1.ownerMarker
  SHX33_1 = SHX33_1.x
  SHX34_1 = SHX31_1.ownerMarker
  SHX34_1 = SHX34_1.y
  SHX35_1 = SHX31_1.ownerMarker
  SHX35_1 = SHX35_1.z
  SHX36_1 = 1.0
  SHX37_1 = 1.0
  SHX38_1 = 1.0
  SHX39_1 = 255
  SHX40_1 = 0
  SHX41_1 = 0
  SHX42_1 = 170
  SHX43_1 = 50
  SHX44_1 = 27
  SHX32_1(SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1)
  SHX32_1 = SHX31_1.doorAreaName
  if SHX32_1 then
    SHX32_1 = CMG
    SHX32_1 = SHX32_1.registerCanAccessGangDoorLocation
    SHX33_1 = SHX31_1.doorAreaName
    function SHX34_1()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_2, SHX1_2
      SHX1_2 = SHX30_1
      SHX0_2 = SHX19_1
      SHX0_2 = SHX0_2[SHX1_2]
      if not SHX0_2 then
        SHX0_2 = false
      end
      return SHX0_2
    end
    SHX32_1(SHX33_1, SHX34_1)
  end
end
SHX26_1 = RegisterNetEvent
SHX27_1 = "018b28fa1e"
function SHX28_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX19_1 = SHX0_2
end
SHX26_1(SHX27_1, SHX28_1)
SHX26_1 = RegisterNetEvent
SHX27_1 = "03b0ee5cda"
function SHX28_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX1_2 = pairs
  SHX2_2 = SHX0_1.locations
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = "business_open_"
    SHX8_2 = SHX5_2
    SHX7_2 = SHX7_2 .. SHX8_2
    SHX8_2 = SHX0_2[SHX5_2]
    if SHX8_2 then
      SHX8_2 = SHX6_2.jobMarker
      SHX9_2 = tCMG
      SHX9_2 = SHX9_2.setNamedBlip
      SHX10_2 = SHX7_2
      SHX11_2 = SHX8_2.x
      SHX12_2 = SHX8_2.y
      SHX13_2 = SHX8_2.z
      SHX14_2 = SHX1_1
      SHX15_2 = SHX2_1
      SHX16_2 = SHX5_2
      SHX17_2 = SHX3_1
      SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
    else
      SHX8_2 = tCMG
      SHX8_2 = SHX8_2.removeNamedBlip
      SHX9_2 = SHX7_2
      SHX8_2(SHX9_2)
    end
  end
end
SHX26_1(SHX27_1, SHX28_1)
SHX26_1 = RegisterNetEvent
SHX27_1 = "7e14d0799b"
function SHX28_1(SHX0_2, SHX1_2)
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
SHX26_1(SHX27_1, SHX28_1)
SHX26_1 = RegisterNetEvent
SHX27_1 = "bb058c40b1"
function SHX28_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX14_1 = SHX0_2
  if SHX0_2 then
    SHX1_2 = SHX0_2.ownerId
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.getClientUserId
    SHX2_2 = SHX2_2()
    if SHX1_2 ~= SHX2_2 then
      SHX1_2 = SHX0_2.users
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.getClientUserId
      SHX2_2 = SHX2_2()
      SHX1_2 = SHX1_2[SHX2_2]
      if not SHX1_2 then
        goto SHX_LABEL_20
      end
    end
    SHX1_2 = TriggerServerEvent
    SHX2_2 = "e7a86c3e34"
    SHX1_2(SHX2_2)
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_20:: outside nested blocks until all 'goto SHX_LABEL_20' can see it
  ::SHX_LABEL_20::
end
SHX26_1(SHX27_1, SHX28_1)
SHX26_1 = RegisterNetEvent
SHX27_1 = "ad32ced60b"
function SHX28_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "e7a86c3e34"
  SHX0_2(SHX1_2)
end
SHX26_1(SHX27_1, SHX28_1)
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "c195715473"
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
end
function SHX27_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerEvent
  SHX1_2 = "2a70dddd80"
  SHX0_2(SHX1_2)
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "72490db2b8"
  SHX0_2(SHX1_2)
end
function SHX28_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX0_2 = {}
  SHX4_1 = SHX0_2
  SHX0_2 = SHX0_1.locations
  SHX1_2 = SHX5_1
  SHX0_2 = SHX0_2[SHX1_2]
  if SHX0_2 then
    SHX0_2 = pairs
    SHX1_2 = SHX0_1.locations
    SHX2_2 = SHX5_1
    SHX1_2 = SHX1_2[SHX2_2]
    SHX1_2 = SHX1_2.inventoryPositions
    SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
    for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
      SHX6_2 = "business_inventory_"
      SHX7_2 = tostring
      SHX8_2 = SHX4_2
      SHX7_2 = SHX7_2(SHX8_2)
      SHX6_2 = SHX6_2 .. SHX7_2
      SHX7_2 = CMG
      SHX7_2 = SHX7_2.createArea
      SHX8_2 = SHX6_2
      SHX9_2 = SHX5_2
      SHX10_2 = 1.25
      SHX11_2 = 3.0
      SHX12_2 = SHX26_1
      SHX13_2 = SHX27_1
      function SHX14_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3
      end
      SHX15_2 = {}
      SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
      SHX7_2 = tCMG
      SHX7_2 = SHX7_2.addMarker
      SHX8_2 = SHX5_2.x
      SHX9_2 = SHX5_2.y
      SHX10_2 = SHX5_2.z
      SHX11_2 = 0.5
      SHX12_2 = 0.5
      SHX13_2 = 0.5
      SHX14_2 = 255
      SHX15_2 = 0
      SHX16_2 = 0
      SHX17_2 = 170
      SHX18_2 = 50
      SHX19_2 = 27
      SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
      SHX8_2 = table
      SHX8_2 = SHX8_2.insert
      SHX9_2 = SHX4_1
      SHX10_2 = {}
      SHX11_2 = SHX6_2
      SHX12_2 = SHX7_2
      SHX10_2[1] = SHX11_2
      SHX10_2[2] = SHX12_2
      SHX8_2(SHX9_2, SHX10_2)
    end
  end
end
SHX29_1 = CMG
function SHX30_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  return SHX1_2
end
SHX29_1.getBusinessItemId = SHX30_1
SHX29_1 = CMG
function SHX30_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = string
  SHX2_2 = SHX2_2.lower
  SHX3_2 = string
  SHX3_2 = SHX3_2.gsub
  SHX4_2 = SHX0_2
  SHX5_2 = "%s+"
  SHX6_2 = "_"
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = "_"
  SHX2_2 = SHX2_2 .. SHX3_2
  SHX3_2 = string
  SHX3_2 = SHX3_2.sub
  SHX4_2 = SHX1_2
  SHX5_2 = 1
  SHX6_2 = #SHX2_2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  if SHX3_2 == SHX2_2 then
    SHX3_2 = string
    SHX3_2 = SHX3_2.sub
    SHX4_2 = SHX1_2
    SHX5_2 = #SHX2_2
    SHX5_2 = SHX5_2 + 1
    return SHX3_2(SHX4_2, SHX5_2)
  end
  return SHX1_2
end
SHX29_1.getBusinessLocalItemId = SHX30_1
function SHX29_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX5_1
  if not SHX1_2 then
    SHX1_2 = false
    return SHX1_2
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getBusinessLocalItemId
  SHX2_2 = SHX5_1
  SHX3_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX2_2 = SHX0_1.locations
  SHX3_2 = SHX5_1
  SHX2_2 = SHX2_2[SHX3_2]
  SHX2_2 = SHX2_2.items
  SHX2_2 = SHX2_2[SHX1_2]
  if SHX2_2 then
    SHX2_2 = true
    return SHX2_2
  else
    SHX2_2 = false
    return SHX2_2
  end
end
SHX30_1 = RegisterNetEvent
SHX31_1 = "6caf35bab2"
function SHX32_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX4_2 = SHX0_1.locations
  SHX4_2 = SHX4_2[SHX0_2]
  SHX5_2 = pairs
  SHX6_2 = SHX4_2.jobs
  SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
  for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
    SHX11_2 = SHX10_2.jobType
    if SHX11_2 == SHX2_2 then
      SHX5_1 = SHX0_2
      SHX6_1 = SHX1_2
      SHX11_2 = SHX15_1
      SHX11_2 = SHX11_2[SHX2_2]
      SHX7_1 = SHX11_2
      SHX11_2 = SHX7_1.initStage
      SHX10_1 = SHX11_2
      SHX11_1 = SHX3_2
      SHX12_1 = SHX2_2
      SHX11_2 = SHX28_1
      SHX11_2()
      SHX11_2 = CMG
      SHX11_2 = SHX11_2.setInventoryBusinessCb
      SHX12_2 = SHX29_1
      SHX11_2(SHX12_2)
      SHX11_2 = SHX10_2.jobMetadata
      SHX8_1 = SHX11_2
      SHX11_2 = {}
      SHX9_1 = SHX11_2
      SHX11_2 = CMG
      SHX11_2 = SHX11_2.getUserBusinessData
      SHX11_2 = SHX11_2()
      SHX12_2 = assert
      SHX13_2 = SHX11_2
      SHX14_2 = "Expecting valid business data whilst trying to set working"
      SHX12_2(SHX13_2, SHX14_2)
      SHX12_2 = SHX7_1.init
      if SHX12_2 then
        SHX12_2 = SHX7_1.init
        SHX13_2 = SHX11_2
        SHX12_2(SHX13_2)
      end
      SHX12_2 = SHX7_1.stages
      SHX13_2 = SHX10_1
      SHX12_2 = SHX12_2[SHX13_2]
      SHX12_2 = SHX12_2.init
      if SHX12_2 then
        SHX13_2 = SHX12_2
        SHX14_2 = SHX11_2
        SHX13_2(SHX14_2)
      end
      SHX13_2 = PlaySound
      SHX14_2 = -1
      SHX15_2 = "CHECKPOINT_BEHIND"
      SHX16_2 = "HUD_MINI_GAME_SOUNDSET"
      SHX17_2 = false
      SHX18_2 = 0
      SHX19_2 = true
      SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
      SHX13_2 = CMG
      SHX13_2 = SHX13_2.initializeInstructionalJobScaleform
      SHX14_2 = SHX6_1
      SHX15_2 = "You have started working, follow the instructions to fulfill your job."
      SHX13_2(SHX14_2, SHX15_2)
      break
    end
  end
end
SHX30_1(SHX31_1, SHX32_1)
function SHX30_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = SHX4_1
  if SHX0_2 then
    SHX0_2 = pairs
    SHX1_2 = SHX4_1
    SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
    for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
      SHX6_2 = tCMG
      SHX6_2 = SHX6_2.removeArea
      SHX7_2 = SHX5_2[1]
      SHX6_2(SHX7_2)
      SHX6_2 = tCMG
      SHX6_2 = SHX6_2.removeMarker
      SHX7_2 = SHX5_2[2]
      SHX6_2(SHX7_2)
    end
  end
  SHX0_2 = nil
  SHX4_1 = SHX0_2
end
SHX31_1 = RegisterNetEvent
SHX32_1 = "458add671d"
function SHX33_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX7_1
  if SHX0_2 then
    SHX0_2 = SHX30_1
    SHX0_2()
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getUserBusinessData
    SHX0_2 = SHX0_2()
    SHX1_2 = assert
    SHX2_2 = SHX0_2
    SHX3_2 = "Expecting valid business data whilst trying to stop working"
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SHX7_1.stages
    SHX2_2 = SHX10_1
    SHX1_2 = SHX1_2[SHX2_2]
    SHX1_2 = SHX1_2.finish
    if SHX1_2 then
      SHX2_2 = SHX1_2
      SHX3_2 = SHX0_2
      SHX2_2(SHX3_2)
    end
    SHX2_2 = SHX7_1.finish
    if SHX2_2 then
      SHX2_2 = SHX7_1.finish
      SHX3_2 = SHX0_2
      SHX2_2(SHX3_2)
    end
    SHX2_2 = nil
    SHX5_1 = SHX2_2
    SHX2_2 = nil
    SHX6_1 = SHX2_2
    SHX2_2 = nil
    SHX8_1 = SHX2_2
    SHX2_2 = nil
    SHX9_1 = SHX2_2
    SHX2_2 = nil
    SHX11_1 = SHX2_2
    SHX2_2 = nil
    SHX12_1 = SHX2_2
    SHX2_2 = nil
    SHX7_1 = SHX2_2
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.setInventoryBusinessCb
    SHX3_2 = nil
    SHX2_2(SHX3_2)
  end
end
SHX31_1(SHX32_1, SHX33_1)
SHX31_1 = AddEventHandler
SHX32_1 = "onResourceStop"
function SHX33_1(SHX0_2)
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
    SHX1_2 = TriggerEvent
    SHX2_2 = "458add671d"
    SHX1_2(SHX2_2)
  end
end
SHX31_1(SHX32_1, SHX33_1)
function SHX31_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = SHX7_1
  if not SHX0_2 then
    return
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getUserBusinessData
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    return
  end
  SHX1_2 = SHX7_1.stages
  SHX2_2 = SHX10_1
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = SHX1_2.tick
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = SHX1_2.finish
    if SHX2_2 then
      SHX2_2 = SHX1_2.finish
      SHX3_2 = SHX0_2
      SHX2_2(SHX3_2)
    end
    SHX2_2 = SHX1_2.next
    SHX10_1 = SHX2_2
    SHX2_2 = SHX7_1.stages
    SHX3_2 = SHX10_1
    SHX2_2 = SHX2_2[SHX3_2]
    SHX2_2 = SHX2_2.init
    if SHX2_2 then
      SHX3_2 = SHX2_2
      SHX4_2 = SHX0_2
      SHX3_2(SHX4_2)
    end
  end
end
SHX32_1 = CMG
SHX32_1 = SHX32_1.createThreadOnTick
SHX33_1 = SHX31_1
SHX34_1 = "Business Job Type Tick"
SHX32_1(SHX33_1, SHX34_1)
SHX32_1 = CMG
function SHX33_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX5_2, SHX6_2
  SHX5_2 = SHX15_1
  SHX6_2 = {}
  SHX6_2.init = SHX1_2
  SHX6_2.initStage = SHX2_2
  SHX6_2.stages = SHX3_2
  SHX6_2.finish = SHX4_2
  SHX5_2[SHX0_2] = SHX6_2
end
SHX32_1.registerBusinessJob = SHX33_1
SHX32_1 = CMG
function SHX33_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX5_1
  if not SHX1_2 then
    SHX1_2 = nil
    return SHX1_2
  end
  SHX1_2 = SHX0_1.locations
  SHX2_2 = SHX5_1
  SHX1_2 = SHX1_2[SHX2_2]
  if not SHX1_2 then
    SHX2_2 = nil
    return SHX2_2
  end
  SHX2_2 = false
  if SHX0_2 then
    SHX3_2 = SHX12_1
    SHX2_2 = SHX0_2 == SHX3_2
  else
    SHX2_2 = true
  end
  if not SHX2_2 then
    SHX3_2 = nil
    return SHX3_2
  end
  SHX3_2 = assert
  SHX4_2 = SHX8_1
  SHX3_2(SHX4_2)
  SHX3_2 = assert
  SHX4_2 = SHX9_1
  SHX3_2(SHX4_2)
  SHX3_2 = {}
  SHX4_2 = SHX5_1
  SHX3_2.name = SHX4_2
  SHX3_2.locationInfo = SHX1_2
  SHX4_2 = SHX8_1
  SHX3_2.jobMetadata = SHX4_2
  SHX4_2 = SHX9_1
  SHX3_2.jobInfo = SHX4_2
  SHX4_2 = SHX11_1
  if not SHX4_2 then
    SHX4_2 = {}
  end
  SHX3_2.state = SHX4_2
  return SHX3_2
end
SHX32_1.getUserBusinessData = SHX33_1
SHX32_1 = RegisterNetEvent
SHX33_1 = "48d68977ee"
function SHX34_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX11_1 = SHX0_2
end
SHX32_1(SHX33_1, SHX34_1)
SHX32_1 = RegisterNetEvent
SHX33_1 = "da8e8bb9ff"
function SHX34_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setInventoryTransferDisabled
  SHX1_2 = true
  SHX0_2(SHX1_2)
  while true do
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.isDrawingInventoryUI
    SHX0_2 = SHX0_2()
    if not SHX0_2 then
      break
    end
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setInventoryTransferDisabled
  SHX1_2 = false
  SHX0_2(SHX1_2)
end
SHX32_1(SHX33_1, SHX34_1)
SHX32_1 = RegisterNetEvent
SHX33_1 = "7eef379887"
function SHX34_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2
  SHX2_2 = SHX16_1
  SHX2_2[SHX0_2] = SHX1_2
end
SHX32_1(SHX33_1, SHX34_1)
SHX32_1 = CMG
function SHX33_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX16_1
  SHX1_2 = SHX1_2[SHX0_2]
  if not SHX1_2 then
    SHX1_2 = {}
  end
  return SHX1_2
end
SHX32_1.getBusinessPriceOverrides = SHX33_1
function SHX32_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = DisableControlAction
  SHX2_2 = 0
  SHX3_2 = 22
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = SHX0_2.distance
  if SHX1_2 > 1.0 then
    return
  end
  SHX1_2 = drawNativeNotification
  SHX2_2 = "Press ~INPUT_CONTEXT~ to view the menu"
  SHX1_2(SHX2_2)
  SHX1_2 = IsControlJustPressed
  SHX2_2 = 0
  SHX3_2 = 51
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if SHX1_2 then
    SHX1_2 = RageUI
    SHX1_2 = SHX1_2.Visible
    SHX2_2 = RMenu
    SHX3_2 = SHX2_2
    SHX2_2 = SHX2_2.Get
    SHX4_2 = "business"
    SHX5_2 = "menu"
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = true
    SHX1_2(SHX2_2, SHX3_2)
    SHX17_1 = SHX0_2
    SHX1_2 = TriggerServerEvent
    SHX2_2 = "e76e0858eb"
    SHX3_2 = SHX0_2.businessName
    SHX1_2(SHX2_2, SHX3_2)
  end
end
function SHX33_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.CloseAll
  SHX0_2()
end
SHX34_1 = Citizen
SHX34_1 = SHX34_1.CreateThread
function SHX35_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2
  SHX0_2 = DecorRegister
  SHX1_2 = "adf4399051"
  SHX2_2 = 2
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = pairs
  SHX1_2 = SHX0_1.locations
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = pairs
    SHX7_2 = SHX5_2.menuPositions
    SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
    for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
      SHX12_2 = tCMG
      SHX12_2 = SHX12_2.addMarker
      SHX13_2 = SHX11_2.x
      SHX14_2 = SHX11_2.y
      SHX15_2 = SHX11_2.z
      SHX15_2 = SHX15_2 - 0.95
      SHX16_2 = 0.2
      SHX17_2 = 0.2
      SHX18_2 = 0.2
      SHX19_2 = 255
      SHX20_2 = 255
      SHX21_2 = 0
      SHX22_2 = 150
      SHX23_2 = 25.0
      SHX24_2 = 27
      SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
      SHX12_2 = CMG
      SHX12_2 = SHX12_2.createArea
      SHX13_2 = "business_menu_"
      SHX14_2 = SHX4_2
      SHX15_2 = "_"
      SHX16_2 = tostring
      SHX17_2 = SHX10_2
      SHX16_2 = SHX16_2(SHX17_2)
      SHX13_2 = SHX13_2 .. SHX14_2 .. SHX15_2 .. SHX16_2
      SHX14_2 = SHX11_2
      SHX15_2 = 5.0
      SHX16_2 = 1.5
      function SHX17_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3
      end
      SHX18_2 = SHX33_1
      SHX19_2 = SHX32_1
      SHX20_2 = {}
      SHX20_2.businessName = SHX4_2
      SHX20_2.locationInfo = SHX5_2
      SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
    end
  end
end
SHX34_1(SHX35_1)
SHX34_1 = RegisterNetEvent
SHX35_1 = "7902668e2b"
function SHX36_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.CloseAll
  SHX0_2()
end
SHX34_1(SHX35_1, SHX36_1)
SHX34_1 = false
SHX35_1 = nil
SHX36_1 = nil
SHX37_1 = nil
SHX38_1 = nil
SHX39_1 = nil
SHX40_1 = nil
SHX41_1 = nil
SHX42_1 = nil
SHX43_1 = nil
SHX44_1 = 400
SHX45_1 = 20.0
SHX46_1 = 30000
function SHX47_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX35_1
  if SHX0_2 then
    SHX0_2 = SetSwimMultiplierForPlayer
    SHX1_2 = PlayerId
    SHX1_2 = SHX1_2()
    SHX2_2 = 1.49
    SHX0_2(SHX1_2, SHX2_2)
  end
  SHX0_2 = SHX36_1
  if SHX0_2 then
    SHX0_2 = SetRunSprintMultiplierForPlayer
    SHX1_2 = PlayerId
    SHX1_2 = SHX1_2()
    SHX2_2 = 1.49
    SHX0_2(SHX1_2, SHX2_2)
  end
  SHX0_2 = SHX37_1
  if SHX0_2 then
    SHX0_2 = GetGameTimer
    SHX0_2 = SHX0_2()
    SHX1_2 = SHX37_1.lastChange
    if SHX1_2 then
      SHX1_2 = SHX37_1.lastChange
      SHX1_2 = SHX0_2 - SHX1_2
      SHX2_2 = SHX46_1
      if not (SHX1_2 > SHX2_2) then
        goto SHX_LABEL_42
      end
    end
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getRandomWalkStyle
    SHX1_2 = SHX1_2()
    if SHX1_2 then
      SHX2_2 = Citizen
      SHX2_2 = SHX2_2.CreateThread
      function SHX3_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3, SHX2_3, SHX3_3
        SHX0_3 = CMG
        SHX0_3 = SHX0_3.loadAnimDict
        SHX1_3 = SHX1_2
        SHX0_3(SHX1_3)
        SHX0_3 = SetPedMovementClipset
        SHX1_3 = PlayerPedId
        SHX1_3 = SHX1_3()
        SHX2_3 = SHX1_2
        SHX3_3 = 0.2
        SHX0_3(SHX1_3, SHX2_3, SHX3_3)
        SHX0_3 = RemoveAnimSet
        SHX1_3 = SHX1_2
        SHX0_3(SHX1_3)
        SHX0_3 = RemoveAnimDict
        SHX1_3 = SHX1_2
        SHX0_3(SHX1_3)
      end
      SHX2_2(SHX3_2)
      SHX37_1.lastChange = SHX0_2
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_42:: outside nested blocks until all 'goto SHX_LABEL_42' can see it
  ::SHX_LABEL_42::
  SHX0_2 = SHX38_1
  if SHX0_2 then
    SHX0_2 = DecorSetBool
    SHX1_2 = PlayerPedId
    SHX1_2 = SHX1_2()
    SHX2_2 = "adf4399051"
    SHX3_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  end
  SHX0_2 = SHX39_1
  if SHX0_2 then
    SHX0_2 = IsPedReloading
    SHX1_2 = PlayerPedId
    SHX1_2, SHX2_2, SHX3_2 = SHX1_2()
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    if SHX0_2 then
      SHX0_2 = GetGameTimer
      SHX0_2 = SHX0_2()
      SHX1_2 = SHX39_1.wantsTime
      if not SHX1_2 then
        SHX1_2 = SHX39_1.lastReloadTime
        if SHX1_2 then
          SHX1_2 = SHX39_1.lastReloadTime
          SHX1_2 = SHX0_2 - SHX1_2
          SHX2_2 = SHX44_1
        end
        if SHX1_2 > SHX2_2 then
          SHX39_1.wantsTime = SHX0_2
        end
      else
        SHX1_2 = SHX39_1.wantsTime
        SHX1_2 = SHX0_2 - SHX1_2
        SHX2_2 = SHX44_1
        if SHX1_2 > SHX2_2 then
          SHX1_2 = RefillAmmoInstantly
          SHX2_2 = PlayerPedId
          SHX2_2, SHX3_2 = SHX2_2()
          SHX1_2(SHX2_2, SHX3_2)
          SHX39_1.wantsTime = nil
          SHX1_2 = GetGameTimer
          SHX1_2 = SHX1_2()
          SHX39_1.lastReloadTime = SHX1_2
        end
      end
    end
  end
  SHX0_2 = SHX40_1
  if SHX0_2 then
    SHX0_2 = SetNightvision
    SHX1_2 = true
    SHX0_2(SHX1_2)
  end
  SHX0_2 = SHX41_1
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.isScubaJobInProgress
    SHX0_2 = SHX0_2()
    if not SHX0_2 then
      SHX0_2 = SetPedMaxTimeUnderwater
      SHX1_2 = PlayerPedId
      SHX1_2 = SHX1_2()
      SHX2_2 = SHX45_1
      SHX0_2(SHX1_2, SHX2_2)
    end
  end
  SHX0_2 = SHX42_1
  if SHX0_2 then
    SHX0_2 = StatSetInt
    SHX1_2 = -1210645269
    SHX2_2 = 500
    SHX3_2 = false
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  end
  SHX0_2 = SHX43_1
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.enablePunching
    SHX1_2 = true
    SHX0_2(SHX1_2)
  end
end
function SHX48_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX34_1
  if not SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.createThreadOnTick
    SHX1_2 = SHX47_1
    SHX2_2 = "Business Item Effect Tick"
    SHX0_2(SHX1_2, SHX2_2)
    SHX0_2 = true
    SHX34_1 = SHX0_2
  end
end
function SHX49_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX34_1
  if not SHX0_2 then
    return
  end
  SHX0_2 = SHX35_1
  if not SHX0_2 then
    SHX0_2 = SHX36_1
    if not SHX0_2 then
      SHX0_2 = SHX37_1
      if not SHX0_2 then
        SHX0_2 = SHX38_1
        if not SHX0_2 then
          SHX0_2 = SHX39_1
          if not SHX0_2 then
            SHX0_2 = SHX40_1
            if not SHX0_2 then
              SHX0_2 = SHX41_1
              if not SHX0_2 then
                SHX0_2 = SHX42_1
                if not SHX0_2 then
                  SHX0_2 = SHX43_1
                  if not SHX0_2 then
                    goto SHX_LABEL_33
                  end
                end
              end
            end
          end
        end
      end
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_33:: outside nested blocks until all 'goto SHX_LABEL_33' can see it
  ::SHX_LABEL_33::
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.deleteThreadOnTick
  SHX1_2 = SHX47_1
  SHX0_2(SHX1_2)
  SHX0_2 = false
  SHX34_1 = SHX0_2
end
function SHX50_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = RegisterNetEvent
  SHX3_2 = SHX0_2
  function SHX4_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3
    SHX1_3 = SHX48_1
    SHX1_3()
    SHX1_3 = SHX1_2
    SHX2_3 = SHX0_3
    SHX1_3(SHX2_3)
    SHX1_3 = SHX49_1
    SHX1_3()
  end
  SHX2_2(SHX3_2, SHX4_2)
end
function SHX51_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX5_2 = SHX2_2.duration
  if SHX5_2 then
    SHX5_2 = SHX2_2.duration
    if not (SHX5_2 <= 0) then
      goto SHX_LABEL_8
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_8:: outside nested blocks until all 'goto SHX_LABEL_8' can see it
  ::SHX_LABEL_8::
  SHX5_2 = SHX3_2
  SHX6_2 = SHX2_2
  SHX5_2(SHX6_2)
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.addHudDurationTimer
  SHX6_2 = SHX0_2
  SHX7_2 = SHX1_2
  SHX8_2 = SHX2_2.duration
  function SHX9_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = SHX4_2
    SHX1_3 = SHX2_2
    SHX0_3(SHX1_3)
  end
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX5_2 = Citizen
  SHX5_2 = SHX5_2.Wait
  SHX6_2 = SHX2_2.duration
  SHX6_2 = SHX6_2 * 1000
  SHX5_2(SHX6_2)
  SHX5_2 = SHX4_2
  SHX6_2 = SHX2_2
  SHX5_2(SHX6_2)
end
SHX52_1 = RegisterNetEvent
SHX53_1 = "0c657e4148"
function SHX54_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = GetEntityHealth
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = GetEntityMaxHealth
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  if not (SHX2_2 <= 102) then
    SHX4_2 = tCMG
    SHX4_2 = SHX4_2.isInComa
    SHX4_2 = SHX4_2()
    if not SHX4_2 then
      goto SHX_LABEL_17
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_17:: outside nested blocks until all 'goto SHX_LABEL_17' can see it
  ::SHX_LABEL_17::
  SHX4_2 = math
  SHX4_2 = SHX4_2.min
  SHX5_2 = SHX0_2.amount
  SHX5_2 = SHX2_2 + SHX5_2
  SHX6_2 = SHX3_2
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX5_2 = SetEntityHealth
  SHX6_2 = SHX1_2
  SHX7_2 = SHX4_2
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = notify
  SHX6_2 = "~y~You start beginning to feel refreshed."
  SHX5_2(SHX6_2)
end
SHX52_1(SHX53_1, SHX54_1)
SHX52_1 = SHX50_1
SHX53_1 = "3166a56bf1"
function SHX54_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = notify
  SHX2_2 = "~y~You feel a sudden burst of energy..."
  SHX1_2(SHX2_2)
  SHX1_2 = SHX51_1
  SHX2_2 = "businessSwim"
  SHX3_2 = "Swim Boost"
  SHX4_2 = SHX0_2
  function SHX5_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3
    SHX35_1 = SHX0_3
  end
  function SHX6_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3, SHX3_3
    SHX1_3 = SHX35_1
    if SHX1_3 == SHX0_3 then
      SHX1_3 = SetSwimMultiplierForPlayer
      SHX2_3 = PlayerId
      SHX2_3 = SHX2_3()
      SHX3_3 = 1.0
      SHX1_3(SHX2_3, SHX3_3)
      SHX1_3 = nil
      SHX35_1 = SHX1_3
    end
  end
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
end
SHX52_1(SHX53_1, SHX54_1)
SHX52_1 = SHX50_1
SHX53_1 = "d2497ff135"
function SHX54_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = notify
  SHX2_2 = "~y~You feel a sudden burst of energy..."
  SHX1_2(SHX2_2)
  SHX1_2 = SHX51_1
  SHX2_2 = "businessSprint"
  SHX3_2 = "Sprint Boost"
  SHX4_2 = SHX0_2
  function SHX5_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3
    SHX36_1 = SHX0_3
  end
  function SHX6_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3, SHX3_3
    SHX1_3 = SHX36_1
    if SHX1_3 == SHX0_3 then
      SHX1_3 = SetRunSprintMultiplierForPlayer
      SHX2_3 = PlayerId
      SHX2_3 = SHX2_3()
      SHX3_3 = 1.0
      SHX1_3(SHX2_3, SHX3_3)
      SHX1_3 = nil
      SHX36_1 = SHX1_3
    end
  end
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
end
SHX52_1(SHX53_1, SHX54_1)
SHX52_1 = SHX50_1
SHX53_1 = "e100559849"
function SHX54_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = notify
  SHX2_2 = "~y~You begin to work effectively..."
  SHX1_2(SHX2_2)
  SHX1_2 = SHX0_2.duration
  if SHX1_2 then
    SHX1_2 = SHX0_2.duration
    if SHX1_2 > 0 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.addHudDurationTimer
      SHX2_2 = "businessFarming"
      SHX3_2 = "Farming Boost"
      SHX4_2 = SHX0_2.duration
      SHX5_2 = nil
      SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
      SHX1_2 = Citizen
      SHX1_2 = SHX1_2.Wait
      SHX2_2 = SHX0_2.duration
      SHX2_2 = SHX2_2 * 1000
      SHX1_2(SHX2_2)
    end
  end
end
SHX52_1(SHX53_1, SHX54_1)
SHX52_1 = SHX50_1
SHX53_1 = "462ba9d5f3"
function SHX54_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = notify
  SHX2_2 = "~y~You start to feel dizzy..."
  SHX1_2(SHX2_2)
  SHX1_2 = SHX51_1
  SHX2_2 = "businessRandomWalk"
  SHX3_2 = "Dizzy"
  SHX4_2 = SHX0_2
  function SHX5_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3
    SHX37_1 = SHX0_3
  end
  function SHX6_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3
    SHX1_3 = SHX37_1
    if SHX1_3 == SHX0_3 then
      SHX1_3 = nil
      SHX37_1 = SHX1_3
    end
  end
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
end
SHX52_1(SHX53_1, SHX54_1)
SHX52_1 = SHX50_1
SHX53_1 = "83e8ddd5af"
function SHX54_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = notify
  SHX2_2 = "~y~You start feel more concentrated..."
  SHX1_2(SHX2_2)
  SHX1_2 = SHX51_1
  SHX2_2 = "businessDriveSpeed"
  SHX3_2 = "Drive Boost"
  SHX4_2 = SHX0_2
  function SHX5_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3
    SHX38_1 = SHX0_3
  end
  function SHX6_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3, SHX3_3
    SHX1_3 = SHX38_1
    if SHX1_3 == SHX0_3 then
      SHX1_3 = DecorRemove
      SHX2_3 = PlayerPedId
      SHX2_3 = SHX2_3()
      SHX3_3 = "adf4399051"
      SHX1_3(SHX2_3, SHX3_3)
      SHX1_3 = nil
      SHX38_1 = SHX1_3
    end
  end
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
end
SHX52_1(SHX53_1, SHX54_1)
SHX52_1 = SHX50_1
SHX53_1 = "90424f5389"
function SHX54_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = notify
  SHX2_2 = "~y~Your hand grip strengthens."
  SHX1_2(SHX2_2)
  SHX1_2 = SHX51_1
  SHX2_2 = "businessFastReload"
  SHX3_2 = "Fast Reload"
  SHX4_2 = SHX0_2
  function SHX5_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3
    SHX39_1 = SHX0_3
  end
  function SHX6_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3
    SHX1_3 = SHX39_1
    if SHX1_3 == SHX0_3 then
      SHX1_3 = nil
      SHX39_1 = SHX1_3
    end
  end
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
end
SHX52_1(SHX53_1, SHX54_1)
SHX52_1 = SHX50_1
SHX53_1 = "4a387338b1"
function SHX54_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = notify
  SHX2_2 = "~y~Your pupils dilate."
  SHX1_2(SHX2_2)
  SHX1_2 = SHX51_1
  SHX2_2 = "businessNightVision"
  SHX3_2 = "Night Vision"
  SHX4_2 = SHX0_2
  function SHX5_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3
    SHX40_1 = SHX0_3
  end
  function SHX6_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3
    SHX1_3 = SHX40_1
    if SHX1_3 == SHX0_3 then
      SHX1_3 = SetNightvision
      SHX2_3 = false
      SHX1_3(SHX2_3)
      SHX1_3 = nil
      SHX40_1 = SHX1_3
    end
  end
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
end
SHX52_1(SHX53_1, SHX54_1)
SHX52_1 = SHX50_1
SHX53_1 = "825b9d40ef"
function SHX54_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = notify
  SHX2_2 = "~y~You start feeling less exhausted..."
  SHX1_2(SHX2_2)
  SHX1_2 = SHX51_1
  SHX2_2 = "businessLungCapacity"
  SHX3_2 = "Lung Capacity"
  SHX4_2 = SHX0_2
  function SHX5_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3
    SHX41_1 = SHX0_3
  end
  function SHX6_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3, SHX3_3
    SHX1_3 = SHX41_1
    if SHX1_3 == SHX0_3 then
      SHX1_3 = CMG
      SHX1_3 = SHX1_3.isScubaJobInProgress
      SHX1_3 = SHX1_3()
      if not SHX1_3 then
        SHX1_3 = SetPedMaxTimeUnderwater
        SHX2_3 = PlayerPedId
        SHX2_3 = SHX2_3()
        SHX3_3 = 10.0
        SHX1_3(SHX2_3, SHX3_3)
      end
      SHX1_3 = nil
      SHX41_1 = SHX1_3
    end
  end
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
end
SHX52_1(SHX53_1, SHX54_1)
SHX52_1 = SHX50_1
SHX53_1 = "ea7a34b297"
function SHX54_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = notify
  SHX2_2 = "~y~You start feeling more flexible..."
  SHX1_2(SHX2_2)
  SHX1_2 = SHX51_1
  SHX2_2 = "businessDoubleRoll"
  SHX3_2 = "Double Roll"
  SHX4_2 = SHX0_2
  function SHX5_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3
    SHX42_1 = SHX0_3
  end
  function SHX6_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3, SHX3_3, SHX4_3
    SHX1_3 = SHX42_1
    if SHX1_3 == SHX0_3 then
      SHX1_3 = StatSetInt
      SHX2_3 = -1210645269
      SHX3_3 = 0
      SHX4_3 = false
      SHX1_3(SHX2_3, SHX3_3, SHX4_3)
      SHX1_3 = nil
      SHX42_1 = SHX1_3
    end
  end
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
end
SHX52_1(SHX53_1, SHX54_1)
SHX52_1 = SHX50_1
SHX53_1 = "341cc286bd"
function SHX54_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = notify
  SHX2_2 = "~y~Your fists clench..."
  SHX1_2(SHX2_2)
  SHX1_2 = SHX51_1
  SHX2_2 = "businessPunch"
  SHX3_2 = "Punch Boost"
  SHX4_2 = SHX0_2
  function SHX5_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3
    SHX43_1 = SHX0_3
  end
  function SHX6_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3
    SHX1_3 = SHX43_1
    if SHX1_3 == SHX0_3 then
      SHX1_3 = CMG
      SHX1_3 = SHX1_3.enablePunching
      SHX2_3 = false
      SHX1_3(SHX2_3)
      SHX1_3 = nil
      SHX43_1 = SHX1_3
    end
  end
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
end
SHX52_1(SHX53_1, SHX54_1)
SHX52_1 = RegisterNetEvent
SHX53_1 = "a4028221c0"
function SHX54_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = SHX0_2.duration
  if not SHX1_2 then
    SHX1_2 = 300
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.addHudDurationTimer
  SHX3_2 = "businessStorage"
  SHX4_2 = "Extra Storage"
  SHX5_2 = SHX1_2
  SHX6_2 = nil
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
end
SHX52_1(SHX53_1, SHX54_1)
SHX52_1 = RegisterNetEvent
SHX53_1 = "a0b1882a81"
function SHX54_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  if "food" == SHX0_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.playEmote
    SHX2_2 = "burger"
    SHX1_2(SHX2_2)
  elseif "drink" == SHX0_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.playEmote
    SHX2_2 = "sipsoda"
    SHX1_2(SHX2_2)
  elseif "milkshake" == SHX0_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.playEmote
    SHX2_2 = "sipshakel"
    SHX1_2(SHX2_2)
  elseif "icecream" == SHX0_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.playEmote
    SHX2_2 = "icecreama"
    SHX1_2(SHX2_2)
  elseif "cupcake" == SHX0_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.playEmote
    SHX2_2 = "xmascc"
    SHX1_2(SHX2_2)
  elseif "egobar" == SHX0_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.playEmote
    SHX2_2 = "egobar"
    SHX1_2(SHX2_2)
  elseif "edrink" == SHX0_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.playEmote
    SHX2_2 = "edrink"
    SHX1_2(SHX2_2)
  elseif "beer2" == SHX0_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.playEmote
    SHX2_2 = "beer2"
    SHX1_2(SHX2_2)
  elseif "carrot" == SHX0_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.playEmote
    SHX2_2 = "carrot"
    SHX1_2(SHX2_2)
  end
  SHX1_2 = Wait
  SHX2_2 = 4000
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.cancelEmote
  SHX2_2 = true
  SHX1_2(SHX2_2)
end
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
  SHX0_2 = SHX5_1
  SHX0_2 = nil ~= SHX0_2
  return SHX0_2
end
SHX52_1.isWorkingInBusiness = SHX53_1
SHX52_1 = RegisterNetEvent
SHX53_1 = "082804e988"
function SHX54_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX18_1 = SHX0_2
end
SHX52_1(SHX53_1, SHX54_1)
SHX52_1 = RegisterNetEvent
SHX53_1 = "b50f9b40e3"
function SHX54_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX20_1 = SHX0_2
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.Visible
  SHX2_2 = RMenu
  SHX3_2 = SHX2_2
  SHX2_2 = SHX2_2.Get
  SHX4_2 = "business"
  SHX5_2 = "employees"
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
end
SHX52_1(SHX53_1, SHX54_1)
