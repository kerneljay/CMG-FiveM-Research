-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_aimtraining"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = CMG
SHX1_1 = SHX1_1.loadModule
SHX2_1 = "cfg/weapons"
SHX1_1 = SHX1_1(SHX2_1)
SHX2_1 = CMG
SHX2_1 = SHX2_1.registerDevMenuState
SHX3_1 = "Aim Training"
SHX4_1 = {}
SHX4_1.drawLines = false
SHX2_1 = SHX2_1(SHX3_1, SHX4_1)
SHX3_1 = false
SHX4_1 = true
SHX5_1 = nil
SHX6_1 = table
SHX6_1 = SHX6_1.copy
SHX7_1 = SHX0_1.defaultSettings
SHX6_1 = SHX6_1(SHX7_1)
SHX7_1 = nil
SHX8_1 = {}
SHX9_1 = 0
SHX10_1 = 0
SHX11_1 = 0
SHX12_1 = 0
SHX13_1 = 0
SHX14_1 = 0
SHX15_1 = nil
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = 0
  SHX12_1 = SHX0_2
  SHX0_2 = 0
  SHX13_1 = SHX0_2
  SHX0_2 = 0
  SHX14_1 = SHX0_2
  SHX0_2 = 0
  SHX11_1 = SHX0_2
end
function SHX17_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = pairs
  SHX1_2 = SHX8_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX5_2 = DeleteEntity
    SHX6_2 = SHX4_2
    SHX5_2(SHX6_2)
  end
  SHX0_2 = table
  SHX0_2 = SHX0_2.clear
  SHX1_2 = SHX8_1
  SHX0_2(SHX1_2)
end
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = nil
  SHX7_1 = SHX0_2
  SHX0_2 = table
  SHX0_2 = SHX0_2.copy
  SHX1_2 = SHX0_1.defaultSettings
  SHX0_2 = SHX0_2(SHX1_2)
  SHX6_1 = SHX0_2
  SHX0_2 = SHX16_1
  SHX0_2()
  SHX0_2 = SHX17_1
  SHX0_2()
  SHX0_2 = RemoveAnimDict
  SHX1_2 = SHX0_1.runAnim
  SHX1_2 = SHX1_2.dict
  SHX0_2(SHX1_2)
  SHX0_2 = RemoveAnimDict
  SHX1_2 = SHX0_1.sideAnim
  SHX1_2 = SHX1_2.dict
  SHX0_2(SHX1_2)
  SHX0_2 = RemoveAnimDict
  SHX1_2 = SHX0_1.rollAnims
  SHX1_2 = SHX1_2.dict
  SHX0_2(SHX1_2)
end
SHX19_1 = RMenu
SHX19_1 = SHX19_1.Add
SHX20_1 = "aimtraining"
SHX21_1 = "mainmenu"
SHX22_1 = RageUI
SHX22_1 = SHX22_1.CreateMenu
SHX23_1 = ""
SHX24_1 = "Aim Training"
SHX25_1 = CMG
SHX25_1 = SHX25_1.getRageUIMenuWidth
SHX25_1 = SHX25_1()
SHX26_1 = CMG
SHX26_1 = SHX26_1.getRageUIMenuHeight
SHX26_1 = SHX26_1()
SHX27_1 = "cmg_aimtraining"
SHX28_1 = "aimtraining"
SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1 = SHX22_1(SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1)
SHX19_1(SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1)
SHX19_1 = RMenu
SHX19_1 = SHX19_1.Add
SHX20_1 = "aimtraining"
SHX21_1 = "weapons"
SHX22_1 = RageUI
SHX22_1 = SHX22_1.CreateSubMenu
SHX23_1 = RMenu
SHX24_1 = SHX23_1
SHX23_1 = SHX23_1.Get
SHX25_1 = "aimtraining"
SHX26_1 = "mainmenu"
SHX23_1 = SHX23_1(SHX24_1, SHX25_1, SHX26_1)
SHX24_1 = ""
SHX25_1 = "Weapons"
SHX26_1 = CMG
SHX26_1 = SHX26_1.getRageUIMenuWidth
SHX26_1 = SHX26_1()
SHX27_1 = CMG
SHX27_1 = SHX27_1.getRageUIMenuHeight
SHX27_1 = SHX27_1()
SHX28_1 = "cmg_aimtraining"
SHX29_1 = "aimtraining"
SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1 = SHX22_1(SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1)
SHX19_1(SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1)
SHX19_1 = RMenu
SHX19_1 = SHX19_1.Add
SHX20_1 = "aimtraining"
SHX21_1 = "challenges"
SHX22_1 = RageUI
SHX22_1 = SHX22_1.CreateSubMenu
SHX23_1 = RMenu
SHX24_1 = SHX23_1
SHX23_1 = SHX23_1.Get
SHX25_1 = "aimtraining"
SHX26_1 = "mainmenu"
SHX23_1 = SHX23_1(SHX24_1, SHX25_1, SHX26_1)
SHX24_1 = ""
SHX25_1 = "Challenges"
SHX26_1 = CMG
SHX26_1 = SHX26_1.getRageUIMenuWidth
SHX26_1 = SHX26_1()
SHX27_1 = CMG
SHX27_1 = SHX27_1.getRageUIMenuHeight
SHX27_1 = SHX27_1()
SHX28_1 = "cmg_aimtraining"
SHX29_1 = "aimtraining"
SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1 = SHX22_1(SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1)
SHX19_1(SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1)
SHX19_1 = RMenu
SHX19_1 = SHX19_1.Add
SHX20_1 = "aimtraining"
SHX21_1 = "challenge"
SHX22_1 = RageUI
SHX22_1 = SHX22_1.CreateSubMenu
SHX23_1 = RMenu
SHX24_1 = SHX23_1
SHX23_1 = SHX23_1.Get
SHX25_1 = "aimtraining"
SHX26_1 = "challenges"
SHX23_1 = SHX23_1(SHX24_1, SHX25_1, SHX26_1)
SHX24_1 = ""
SHX25_1 = "View Challenge"
SHX26_1 = CMG
SHX26_1 = SHX26_1.getRageUIMenuWidth
SHX26_1 = SHX26_1()
SHX27_1 = CMG
SHX27_1 = SHX27_1.getRageUIMenuHeight
SHX27_1 = SHX27_1()
SHX28_1 = "cmg_aimtraining"
SHX29_1 = "aimtraining"
SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1 = SHX22_1(SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1)
SHX19_1(SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1)
SHX19_1 = RageUI
SHX19_1 = SHX19_1.CreateWhile
SHX20_1 = 1.0
SHX21_1 = RMenu
SHX22_1 = SHX21_1
SHX21_1 = SHX21_1.Get
SHX23_1 = "aimtraining"
SHX24_1 = "mainmenu"
SHX21_1 = SHX21_1(SHX22_1, SHX23_1, SHX24_1)
SHX22_1 = nil
function SHX23_1()
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
  SHX3_2 = "aimtraining"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3
    SHX0_3 = SHX7_1
    if not SHX0_3 then
      SHX0_3 = true
      if SHX0_3 then
        goto SHX_LABEL_8
      end
    end
    SHX0_3 = false
    -- [FIX IF ERROR] Move ::SHX_LABEL_8:: outside nested blocks until all 'goto SHX_LABEL_8' can see it
    ::SHX_LABEL_8::
    if not SHX0_3 then
      SHX1_3 = "Settings can not be edited whilst in a challenge"
      if SHX1_3 then
        goto SHX_LABEL_14
      end
    end
    SHX1_3 = nil
    -- [FIX IF ERROR] Move ::SHX_LABEL_14:: outside nested blocks until all 'goto SHX_LABEL_14' can see it
    ::SHX_LABEL_14::
    SHX2_3 = RageUI
    SHX2_3 = SHX2_3.Checkbox
    SHX3_3 = "Headshots Only"
    SHX4_3 = SHX1_3 or SHX4_3
    if not SHX1_3 then
      SHX4_3 = "Whether to only kill if a headshot happens. When changed your statistics will reset."
    end
    SHX5_3 = SHX6_1.headshotsOnly
    SHX6_3 = {}
    function SHX7_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX4_4
      SHX4_4 = SHX6_1.headshotsOnly
      if SHX4_4 ~= SHX3_4 then
        SHX4_4 = SHX0_3
        if SHX4_4 then
          SHX4_4 = SHX16_1
          SHX4_4()
          SHX6_1.headshotsOnly = SHX3_4
        end
      end
    end
    SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    SHX2_3 = RageUI
    SHX2_3 = SHX2_3.List
    SHX3_3 = "Num Targets"
    SHX4_3 = SHX0_1.numTargetsList
    SHX5_3 = SHX6_1.numTargetsCount
    SHX6_3 = SHX1_3 or SHX6_3
    if not SHX1_3 then
      SHX6_3 = "The amount of targets to be active at one time."
    end
    SHX7_3 = {}
    SHX8_3 = SHX0_3
    function SHX9_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX4_4
      SHX4_4 = SHX6_1.numTargetsCount
      if SHX3_4 ~= SHX4_4 then
        SHX4_4 = SHX0_3
        if SHX4_4 then
          SHX6_1.numTargetsCount = SHX3_4
        end
      end
    end
    SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    SHX2_3 = RageUI
    SHX2_3 = SHX2_3.List
    SHX3_3 = "Movement Type"
    SHX4_3 = SHX0_1.movementsList
    SHX5_3 = SHX6_1.movementsIndex
    SHX6_3 = SHX1_3 or SHX6_3
    if not SHX1_3 then
      SHX6_3 = "The type of movement each target should perform."
    end
    SHX7_3 = {}
    SHX8_3 = SHX0_3
    function SHX9_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX4_4
      SHX4_4 = SHX6_1.movementsIndex
      if SHX3_4 ~= SHX4_4 then
        SHX4_4 = SHX0_3
        if SHX4_4 then
          SHX4_4 = SHX17_1
          SHX4_4()
          SHX6_1.movementsIndex = SHX3_4
        end
      end
    end
    SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    SHX2_3 = RageUI
    SHX2_3 = SHX2_3.List
    SHX3_3 = "Distance"
    SHX4_3 = SHX0_1.distanceList
    SHX5_3 = SHX6_1.distanceIndex
    SHX6_3 = SHX1_3 or SHX6_3
    if not SHX1_3 then
      SHX6_3 = "The distance each target should be at."
    end
    SHX7_3 = {}
    SHX8_3 = SHX0_3
    function SHX9_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX4_4
      SHX4_4 = SHX6_1.distanceIndex
      if SHX3_4 ~= SHX4_4 then
        SHX4_4 = SHX0_3
        if SHX4_4 then
          SHX4_4 = SHX17_1
          SHX4_4()
          SHX6_1.distanceIndex = SHX3_4
        end
      end
    end
    SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    SHX2_3 = RageUI
    SHX2_3 = SHX2_3.List
    SHX3_3 = "Movement Speed"
    SHX4_3 = SHX0_1.movementSpeedList
    SHX5_3 = SHX6_1.movementSpeedIndex
    SHX6_3 = SHX1_3 or SHX6_3
    if not SHX1_3 then
      SHX6_3 = "A multiplier for how fast each movement should be"
    end
    SHX7_3 = {}
    SHX8_3 = SHX0_3
    function SHX9_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX4_4
      SHX4_4 = SHX0_3
      if SHX4_4 then
        SHX6_1.movementSpeedIndex = SHX3_4
      end
    end
    SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3)
    SHX2_3 = RageUI
    SHX2_3 = SHX2_3.Checkbox
    SHX3_3 = "Fast Respawns"
    SHX4_3 = SHX1_3 or SHX4_3
    if not SHX1_3 then
      SHX4_3 = "Whether targets should respawn quickly or at their rate of one per second."
    end
    SHX5_3 = SHX6_1.fastRespawns
    SHX6_3 = {}
    function SHX7_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX4_4
      SHX4_4 = SHX0_3
      if SHX4_4 then
        SHX6_1.fastRespawns = SHX3_4
      end
    end
    SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    SHX2_3 = RageUI
    SHX2_3 = SHX2_3.Checkbox
    SHX3_3 = "Play Sounds"
    SHX4_3 = "Plays a sound whether you successfully kill the target."
    SHX5_3 = SHX4_1
    SHX6_3 = {}
    function SHX7_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      SHX4_1 = SHX3_4
    end
    SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    SHX2_3 = RageUI
    SHX2_3 = SHX2_3.Button
    SHX3_3 = "~r~Reset Stats"
    SHX4_3 = "Resets your local statistics for this run."
    SHX5_3 = true
    function SHX6_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4
      if SHX2_4 then
        SHX3_4 = SHX7_1
        if not SHX3_4 then
          SHX3_4 = SHX16_1
          SHX3_4()
          SHX3_4 = notify
          SHX4_4 = "~y~Statistics have been reset."
          SHX3_4(SHX4_4)
        end
      end
    end
    SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3)
    SHX2_3 = SHX7_1
    if not SHX2_3 then
      SHX2_3 = RageUI
      SHX2_3 = SHX2_3.ButtonWithStyle
      SHX3_3 = "~y~Select Weapon"
      SHX4_3 = "Select a weapon to test with."
      SHX5_3 = {}
      SHX5_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
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
      SHX8_3 = RMenu
      SHX9_3 = SHX8_3
      SHX8_3 = SHX8_3.Get
      SHX10_3 = "aimtraining"
      SHX11_3 = "weapons"
      SHX8_3, SHX9_3, SHX10_3, SHX11_3 = SHX8_3(SHX9_3, SHX10_3, SHX11_3)
      SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
      SHX2_3 = RageUI
      SHX2_3 = SHX2_3.ButtonWithStyle
      SHX3_3 = "~g~View Challenges"
      SHX4_3 = "View challenges you can compete in. These are recorded and can be viewed against other players."
      SHX5_3 = {}
      SHX5_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
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
      SHX8_3 = RMenu
      SHX9_3 = SHX8_3
      SHX8_3 = SHX8_3.Get
      SHX10_3 = "aimtraining"
      SHX11_3 = "challenges"
      SHX8_3, SHX9_3, SHX10_3, SHX11_3 = SHX8_3(SHX9_3, SHX10_3, SHX11_3)
      SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
    else
      SHX2_3 = RageUI
      SHX2_3 = SHX2_3.Button
      SHX3_3 = "~r~Stop Challenge"
      SHX4_3 = "Stops the challenge immediately. You will not receive any score."
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
          SHX7_1.isEnding = true
          SHX3_4 = TriggerServerEvent
          SHX4_4 = "302b46f2b0"
          SHX5_4 = false
          SHX3_4(SHX4_4, SHX5_4)
        end
      end
      SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3)
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
  SHX3_2 = "aimtraining"
  SHX4_2 = "weapons"
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
    SHX1_3 = SHX0_1.availableWeapons
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
    for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      SHX6_3 = SHX1_1.weapons
      SHX6_3 = SHX6_3[SHX5_3]
      if SHX6_3 then
        SHX7_3 = RageUI
        SHX7_3 = SHX7_3.Button
        SHX8_3 = SHX6_3.name
        SHX9_3 = ""
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
            SHX4_4 = "c6c2102caf"
            SHX5_4 = SHX5_3
            SHX3_4(SHX4_4, SHX5_4)
          end
        end
        SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3)
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
  SHX3_2 = "aimtraining"
  SHX4_2 = "challenges"
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
    SHX0_3 = pairs
    SHX1_3 = SHX0_1.challenges
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
    for SHX4_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      SHX5_3 = RageUI
      SHX5_3 = SHX5_3.ButtonWithStyle
      SHX6_3 = SHX4_3
      SHX7_3 = ""
      SHX8_3 = {}
      SHX8_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
      SHX9_3 = true
      function SHX10_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4
        if SHX2_4 then
          SHX3_4 = SHX4_3
          SHX5_1 = SHX3_4
        end
      end
      SHX11_3 = RMenu
      SHX12_3 = SHX11_3
      SHX11_3 = SHX11_3.Get
      SHX13_3 = "aimtraining"
      SHX14_3 = "challenge"
      SHX11_3, SHX12_3, SHX13_3, SHX14_3 = SHX11_3(SHX12_3, SHX13_3, SHX14_3)
      SHX5_3(SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3)
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
  SHX3_2 = "aimtraining"
  SHX4_2 = "challenge"
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
    SHX0_3 = SHX0_1.challenges
    SHX1_3 = SHX5_1
    SHX0_3 = SHX0_3[SHX1_3]
    SHX1_3 = assert
    SHX2_3 = SHX0_3
    SHX1_3(SHX2_3)
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.Separator
    SHX2_3 = string
    SHX2_3 = SHX2_3.format
    SHX3_3 = "~y~%s"
    SHX4_3 = SHX5_1
    SHX2_3, SHX3_3, SHX4_3, SHX5_3 = SHX2_3(SHX3_3, SHX4_3)
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.Separator
    SHX2_3 = string
    SHX2_3 = SHX2_3.format
    SHX3_3 = "Num Targets: %s"
    SHX4_3 = SHX0_3.numTargets
    SHX2_3, SHX3_3, SHX4_3, SHX5_3 = SHX2_3(SHX3_3, SHX4_3)
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.Separator
    SHX2_3 = string
    SHX2_3 = SHX2_3.format
    SHX3_3 = "Target Duration: %s seconds"
    SHX4_3 = math
    SHX4_3 = SHX4_3.floor
    SHX5_3 = SHX0_3.targetDurationMsec
    SHX5_3 = SHX5_3 / 1000
    SHX4_3, SHX5_3 = SHX4_3(SHX5_3)
    SHX2_3, SHX3_3, SHX4_3, SHX5_3 = SHX2_3(SHX3_3, SHX4_3, SHX5_3)
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.Separator
    SHX2_3 = string
    SHX2_3 = SHX2_3.format
    SHX3_3 = "Challenge Time: %s seconds"
    SHX4_3 = math
    SHX4_3 = SHX4_3.floor
    SHX5_3 = SHX0_3.timeToCompleteMsec
    SHX5_3 = SHX5_3 / 1000
    SHX4_3, SHX5_3 = SHX4_3(SHX5_3)
    SHX2_3, SHX3_3, SHX4_3, SHX5_3 = SHX2_3(SHX3_3, SHX4_3, SHX5_3)
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.Button
    SHX2_3 = "~g~Start Challenge"
    SHX3_3 = SHX0_3.description
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
        SHX4_4 = "9a918b808a"
        SHX5_4 = SHX5_1
        SHX3_4(SHX4_4, SHX5_4)
      end
    end
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3)
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
SHX19_1(SHX20_1, SHX21_1, SHX22_1, SHX23_1)
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = GetInteriorFromEntity
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX0_2 = SHX0_2(SHX1_2)
  if 0 == SHX0_2 then
    SHX0_2 = TriggerServerEvent
    SHX1_2 = "9d2ccf39a9"
    SHX0_2(SHX1_2)
    SHX0_2 = false
    return SHX0_2
  end
  SHX0_2 = true
  return SHX0_2
end
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX0_1.distanceList
  SHX2_2 = SHX6_1.distanceIndex
  SHX1_2 = SHX1_2[SHX2_2]
  if "Random" == SHX1_2 then
    SHX2_2 = SHX0_1.distanceList
    SHX3_2 = math
    SHX3_2 = SHX3_2.random
    SHX4_2 = 1
    SHX5_2 = SHX0_1.distanceList
    SHX5_2 = #SHX5_2
    SHX5_2 = SHX5_2 - 1
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
    SHX1_2 = SHX2_2[SHX3_2]
  end
  SHX2_2 = SHX0_2.zones
  SHX2_2 = SHX2_2[SHX1_2]
  SHX3_2 = SHX2_2.min
  SHX4_2 = SHX2_2.max
  return SHX3_2, SHX4_2
end
function SHX21_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX2_2 = math
  SHX2_2 = SHX2_2.floor
  SHX3_2 = SHX1_2.x
  SHX4_2 = SHX0_2.x
  SHX3_2 = SHX3_2 - SHX4_2
  SHX3_2 = SHX3_2 * 10.0
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = math
  SHX3_2 = SHX3_2.floor
  SHX4_2 = SHX1_2.y
  SHX5_2 = SHX0_2.y
  SHX4_2 = SHX4_2 - SHX5_2
  SHX4_2 = SHX4_2 * 10.0
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = math
  SHX4_2 = SHX4_2.random
  SHX5_2 = 1
  SHX6_2 = SHX2_2
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX5_2 = math
  SHX5_2 = SHX5_2.random
  SHX6_2 = 1
  SHX7_2 = SHX3_2
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
  SHX6_2 = vector3
  SHX7_2 = SHX0_2.x
  SHX8_2 = SHX4_2 / 10.0
  SHX7_2 = SHX7_2 + SHX8_2
  SHX8_2 = SHX0_2.y
  SHX9_2 = SHX5_2 / 10.0
  SHX8_2 = SHX8_2 + SHX9_2
  SHX9_2 = SHX0_2.z
  return SHX6_2(SHX7_2, SHX8_2, SHX9_2)
end
function SHX22_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = pairs
  SHX2_2 = SHX8_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = GetEntityCoords
    SHX7_2 = SHX5_2
    SHX8_2 = true
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
    SHX6_2 = SHX6_2 - SHX0_2
    SHX6_2 = #SHX6_2
    SHX7_2 = 0.8
    if SHX6_2 < SHX7_2 then
      SHX6_2 = true
      return SHX6_2
    end
  end
  SHX1_2 = false
  return SHX1_2
end
function SHX23_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  if SHX2_2 then
    SHX3_2 = SHX2_2.startTime
    if not SHX3_2 then
      return
    end
    SHX3_2 = SHX2_2.numSpawned
    SHX4_2 = SHX2_2.numTargets
    if SHX3_2 >= SHX4_2 then
      return
    end
  end
  SHX3_2 = table
  SHX3_2 = SHX3_2.count
  SHX4_2 = SHX8_1
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = SHX6_1.numTargetsCount
  if SHX3_2 > SHX4_2 then
    SHX4_2 = table
    SHX4_2 = SHX4_2.keyat
    SHX5_2 = SHX8_1
    SHX6_2 = 1
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
    SHX5_2 = DeleteEntity
    SHX6_2 = SHX4_2
    SHX5_2(SHX6_2)
    SHX5_2 = SHX8_1
    SHX5_2[SHX4_2] = nil
  end
  SHX4_2 = SHX6_1.numTargetsCount
  if SHX3_2 == SHX4_2 then
    return
  end
  SHX4_2 = SHX6_1.fastRespawns
  if SHX4_2 then
    SHX4_2 = 250
    if SHX4_2 then
      goto SHX_LABEL_40
    end
  end
  SHX4_2 = 1000
  -- [FIX IF ERROR] Move ::SHX_LABEL_40:: outside nested blocks until all 'goto SHX_LABEL_40' can see it
  ::SHX_LABEL_40::
  SHX5_2 = SHX10_1
  SHX5_2 = SHX0_2 - SHX5_2
  if not (SHX4_2 > SHX5_2) then
    SHX5_2 = SHX9_1
    SHX5_2 = SHX0_2 - SHX5_2
    if not (SHX4_2 > SHX5_2) then
      goto SHX_LABEL_51
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_51:: outside nested blocks until all 'goto SHX_LABEL_51' can see it
  ::SHX_LABEL_51::
  SHX5_2 = math
  SHX5_2 = SHX5_2.random
  SHX6_2 = 1
  SHX7_2 = 5
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
  if SHX5_2 <= 4 then
    SHX5_2 = 1885233650
    if SHX5_2 then
      goto SHX_LABEL_62
    end
  end
  SHX5_2 = -1667301416
  -- [FIX IF ERROR] Move ::SHX_LABEL_62:: outside nested blocks until all 'goto SHX_LABEL_62' can see it
  ::SHX_LABEL_62::
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.loadModel
  SHX7_2 = SHX5_2
  SHX6_2(SHX7_2)
  SHX6_2 = SHX20_1
  SHX7_2 = SHX1_2
  SHX6_2, SHX7_2 = SHX6_2(SHX7_2)
  SHX8_2 = SHX21_1
  SHX9_2 = SHX6_2
  SHX10_2 = SHX7_2
  SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
  SHX9_2 = 1
  SHX10_2 = 10
  SHX11_2 = 1
  for SHX12_2 = SHX9_2, SHX10_2, SHX11_2 do
    SHX13_2 = SHX22_1
    SHX14_2 = SHX8_2
    SHX13_2 = SHX13_2(SHX14_2)
    if SHX13_2 then
      SHX13_2 = SHX21_1
      SHX14_2 = SHX6_2
      SHX15_2 = SHX7_2
      SHX13_2 = SHX13_2(SHX14_2, SHX15_2)
      SHX8_2 = SHX13_2
    end
  end
  SHX9_2 = CreatePed
  SHX10_2 = 0
  SHX11_2 = SHX5_2
  SHX12_2 = SHX8_2.x
  SHX13_2 = SHX8_2.y
  SHX14_2 = SHX8_2.z
  SHX15_2 = SHX1_2.targetForwardHeading
  SHX16_2 = false
  SHX17_2 = false
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX10_2 = SetEntityMaxHealth
  SHX11_2 = SHX9_2
  SHX12_2 = SHX0_1.fakeEntityHealth
  SHX10_2(SHX11_2, SHX12_2)
  SHX10_2 = SetEntityHealth
  SHX11_2 = SHX9_2
  SHX12_2 = SHX0_1.fakeEntityHealth
  SHX10_2(SHX11_2, SHX12_2)
  SHX10_2 = SetBlockingOfNonTemporaryEvents
  SHX11_2 = SHX9_2
  SHX12_2 = true
  SHX10_2(SHX11_2, SHX12_2)
  SHX10_2 = SetPedCanRagdoll
  SHX11_2 = SHX9_2
  SHX12_2 = false
  SHX10_2(SHX11_2, SHX12_2)
  SHX10_2 = GetEntityMatrix
  SHX11_2 = SHX9_2
  SHX10_2, SHX11_2 = SHX10_2(SHX11_2)
  SHX12_2 = SHX0_1.movementsList
  SHX13_2 = SHX6_1.movementsIndex
  SHX12_2 = SHX12_2[SHX13_2]
  if "Random" == SHX12_2 then
    SHX13_2 = SHX0_1.movementsList
    SHX14_2 = math
    SHX14_2 = SHX14_2.random
    SHX15_2 = 1
    SHX16_2 = SHX0_1.movementsList
    SHX16_2 = #SHX16_2
    SHX16_2 = SHX16_2 - 1
    SHX14_2 = SHX14_2(SHX15_2, SHX16_2)
    SHX12_2 = SHX13_2[SHX14_2]
  end
  SHX13_2 = SHX8_1
  SHX14_2 = {}
  SHX14_2.fowardVector = SHX10_2
  SHX14_2.rightVector = SHX11_2
  SHX14_2.movementType = SHX12_2
  SHX14_2.isReversed = false
  SHX14_2.createdTime = SHX0_2
  SHX13_2[SHX9_2] = SHX14_2
  SHX10_1 = SHX0_2
  if SHX2_2 then
    SHX13_2 = SHX2_2.numSpawned
    SHX13_2 = SHX13_2 + 1
    SHX2_2.numSpawned = SHX13_2
  end
end
function SHX24_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = pairs
  SHX2_2 = SHX8_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = GetInteriorFromEntity
    SHX7_2 = SHX5_2
    SHX6_2 = SHX6_2(SHX7_2)
    if 0 == SHX6_2 then
      SHX6_2 = DeleteEntity
      SHX7_2 = SHX5_2
      SHX6_2(SHX7_2)
      SHX6_2 = SHX8_1
      SHX6_2[SHX5_2] = nil
      if SHX0_2 then
        SHX6_2 = SHX0_2.numSpawned
        SHX6_2 = SHX6_2 - 1
        SHX0_2.numSpawned = SHX6_2
      end
    end
  end
end
function SHX25_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2
  SHX3_2 = 10.0
  SHX4_2 = SHX2_2 * SHX3_2
  SHX4_2 = SHX1_2 + SHX4_2
  SHX5_2 = SHX2_1.drawLines
  if SHX5_2 then
    SHX5_2 = DrawLine
    SHX6_2 = SHX1_2.x
    SHX7_2 = SHX1_2.y
    SHX8_2 = SHX1_2.z
    SHX9_2 = SHX4_2.x
    SHX10_2 = SHX4_2.y
    SHX11_2 = SHX4_2.z
    SHX12_2 = 0
    SHX13_2 = 255
    SHX14_2 = 0
    SHX15_2 = 255
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  end
  SHX5_2 = _ENV
  SHX6_2 = "StartExpensiveSynchronousShapeTestLosProbe"
  SHX5_2 = SHX5_2[SHX6_2]
  SHX6_2 = SHX1_2.x
  SHX7_2 = SHX1_2.y
  SHX8_2 = SHX1_2.z
  SHX9_2 = SHX4_2.x
  SHX10_2 = SHX4_2.y
  SHX11_2 = SHX4_2.z
  SHX12_2 = 17
  SHX13_2 = SHX0_2
  SHX14_2 = 7
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX6_2 = GetShapeTestResult
  SHX7_2 = SHX5_2
  SHX6_2, SHX7_2, SHX8_2 = SHX6_2(SHX7_2)
  if SHX7_2 then
    SHX9_2 = SHX2_1.drawLines
    if SHX9_2 then
      SHX9_2 = DrawMarker
      SHX10_2 = 28
      SHX11_2 = SHX8_2.x
      SHX12_2 = SHX8_2.y
      SHX13_2 = SHX8_2.z
      SHX14_2 = 0.0
      SHX15_2 = 0.0
      SHX16_2 = 0.0
      SHX17_2 = 0.0
      SHX18_2 = 0.0
      SHX19_2 = 0.0
      SHX20_2 = 0.1
      SHX21_2 = 0.1
      SHX22_2 = 0.1
      SHX23_2 = 0
      SHX24_2 = 0
      SHX25_2 = 255
      SHX26_2 = 255
      SHX27_2 = false
      SHX28_2 = false
      SHX29_2 = 2
      SHX30_2 = false
      SHX31_2 = nil
      SHX32_2 = nil
      SHX33_2 = false
      SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2)
    end
    SHX9_2 = SHX1_2 - SHX8_2
    SHX9_2 = #SHX9_2
    return SHX9_2
  else
    return SHX3_2
  end
end
function SHX26_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX3_2 = SHX25_1
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  SHX6_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX4_2 = SHX25_1
  SHX5_2 = SHX0_2
  SHX6_2 = vector3
  SHX7_2 = 0.0
  SHX8_2 = 0.0
  SHX9_2 = 0.8
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX6_2 = SHX1_2 - SHX6_2
  SHX7_2 = SHX2_2
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX5_2 = math
  SHX5_2 = SHX5_2.min
  SHX6_2 = SHX3_2
  SHX7_2 = SHX4_2
  return SHX5_2(SHX6_2, SHX7_2)
end
function SHX27_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX5_2 = SHX1_2.isReversed
  if SHX5_2 then
    SHX2_2 = -SHX2_2
  end
  SHX5_2 = GetEntityCoords
  SHX6_2 = SHX0_2
  SHX7_2 = true
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
  SHX6_2 = SHX26_1
  SHX7_2 = SHX0_2
  SHX8_2 = SHX5_2
  SHX9_2 = SHX2_2
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  if SHX6_2 < 1.0 then
    SHX7_2 = SHX1_2.isReversed
    SHX7_2 = not SHX7_2
    SHX1_2.isReversed = SHX7_2
    return
  end
  SHX7_2 = SHX0_1.movementSpeedValues
  SHX8_2 = SHX6_1.movementSpeedIndex
  SHX7_2 = SHX7_2[SHX8_2]
  SHX7_2 = SHX4_2 * SHX7_2
  SHX8_2 = SHX2_2 * SHX7_2
  SHX8_2 = SHX8_2 * SHX3_2
  SHX8_2 = SHX5_2 + SHX8_2
  SHX9_2 = SetEntityCoordsNoOffset
  SHX10_2 = SHX0_2
  SHX11_2 = SHX8_2.x
  SHX12_2 = SHX8_2.y
  SHX13_2 = SHX8_2.z
  SHX14_2 = true
  SHX15_2 = false
  SHX16_2 = false
  SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
end
function SHX28_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX3_2 = RequestAnimDict
  SHX4_2 = SHX0_1.runAnim
  SHX4_2 = SHX4_2.dict
  SHX3_2(SHX4_2)
  SHX3_2 = IsEntityPlayingAnim
  SHX4_2 = SHX0_2
  SHX5_2 = SHX0_1.runAnim
  SHX5_2 = SHX5_2.dict
  SHX6_2 = SHX0_1.runAnim
  SHX6_2 = SHX6_2.clip
  SHX7_2 = 3
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  if not SHX3_2 then
    SHX3_2 = TaskPlayAnim
    SHX4_2 = SHX0_2
    SHX5_2 = SHX0_1.runAnim
    SHX5_2 = SHX5_2.dict
    SHX6_2 = SHX0_1.runAnim
    SHX6_2 = SHX6_2.clip
    SHX7_2 = 1.0
    SHX8_2 = 1.0
    SHX9_2 = -1
    SHX10_2 = 1
    SHX11_2 = 1.0
    SHX12_2 = false
    SHX13_2 = false
    SHX14_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  end
  SHX3_2 = SHX27_1
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  SHX6_2 = SHX1_2.fowardVector
  SHX7_2 = SHX2_2
  SHX8_2 = 3.0
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
end
function SHX29_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX3_2 = RequestAnimDict
  SHX4_2 = SHX0_1.sideAnim
  SHX4_2 = SHX4_2.dict
  SHX3_2(SHX4_2)
  SHX3_2 = IsEntityPlayingAnim
  SHX4_2 = SHX0_2
  SHX5_2 = SHX0_1.sideAnim
  SHX5_2 = SHX5_2.dict
  SHX6_2 = SHX0_1.sideAnim
  SHX6_2 = SHX6_2.clip
  SHX7_2 = 3
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  if not SHX3_2 then
    SHX3_2 = TaskPlayAnim
    SHX4_2 = SHX0_2
    SHX5_2 = SHX0_1.sideAnim
    SHX5_2 = SHX5_2.dict
    SHX6_2 = SHX0_1.sideAnim
    SHX6_2 = SHX6_2.clip
    SHX7_2 = 1.0
    SHX8_2 = 1.0
    SHX9_2 = -1
    SHX10_2 = 1
    SHX11_2 = 1.0
    SHX12_2 = false
    SHX13_2 = false
    SHX14_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  end
  SHX3_2 = SHX27_1
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  SHX6_2 = SHX1_2.rightVector
  SHX7_2 = SHX2_2
  SHX8_2 = 2.0
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
end
function SHX30_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX3_2 = SHX1_2.currentClipName
  if not SHX3_2 then
    SHX3_2 = SHX0_1.rollAnims
    SHX3_2 = SHX3_2.clips
    SHX4_2 = math
    SHX4_2 = SHX4_2.random
    SHX5_2 = 1
    SHX6_2 = SHX0_1.rollAnims
    SHX6_2 = SHX6_2.clips
    SHX6_2 = #SHX6_2
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
    SHX3_2 = SHX3_2[SHX4_2]
    SHX1_2.currentClipName = SHX3_2
  end
  SHX3_2 = RequestAnimDict
  SHX4_2 = SHX0_1.rollAnims
  SHX4_2 = SHX4_2.dict
  SHX3_2(SHX4_2)
  SHX3_2 = IsEntityPlayingAnim
  SHX4_2 = SHX0_2
  SHX5_2 = SHX0_1.rollAnims
  SHX5_2 = SHX5_2.dict
  SHX6_2 = SHX1_2.currentClipName
  SHX7_2 = 3
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  if not SHX3_2 then
    SHX3_2 = TaskPlayAnim
    SHX4_2 = SHX0_2
    SHX5_2 = SHX0_1.rollAnims
    SHX5_2 = SHX5_2.dict
    SHX6_2 = SHX1_2.currentClipName
    SHX7_2 = 1.0
    SHX8_2 = 1.0
    SHX9_2 = -1
    SHX10_2 = 1
    SHX11_2 = 1.0
    SHX12_2 = false
    SHX13_2 = false
    SHX14_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  end
  SHX3_2 = SHX27_1
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  SHX6_2 = SHX1_2.rightVector
  SHX7_2 = SHX2_2
  SHX8_2 = 1.5
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
end
function SHX31_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX1_2 = GetFrameTime
  SHX1_2 = SHX1_2()
  SHX2_2 = pairs
  SHX3_2 = SHX8_1
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX7_2.movementType
    if "Running" == SHX8_2 then
      SHX8_2 = SHX28_1
      SHX9_2 = SHX6_2
      SHX10_2 = SHX7_2
      SHX11_2 = SHX1_2
      SHX8_2(SHX9_2, SHX10_2, SHX11_2)
    else
      SHX8_2 = SHX7_2.movementType
      if "Side To Side" == SHX8_2 then
        SHX8_2 = SHX29_1
        SHX9_2 = SHX6_2
        SHX10_2 = SHX7_2
        SHX11_2 = SHX1_2
        SHX8_2(SHX9_2, SHX10_2, SHX11_2)
      else
        SHX8_2 = SHX7_2.movementType
        if "Rolling" == SHX8_2 then
          SHX8_2 = SHX30_1
          SHX9_2 = SHX6_2
          SHX10_2 = SHX7_2
          SHX11_2 = SHX1_2
          SHX8_2(SHX9_2, SHX10_2, SHX11_2)
        end
      end
    end
    SHX8_2 = SetEntityHeading
    SHX9_2 = SHX6_2
    SHX10_2 = SHX0_2.targetForwardHeading
    SHX8_2(SHX9_2, SHX10_2)
  end
end
function SHX32_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX1_2 = pairs
  SHX2_2 = SHX8_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = HasEntityBeenDamagedByAnyPed
    SHX7_2 = SHX5_2
    SHX6_2 = SHX6_2(SHX7_2)
    if SHX6_2 then
      SHX6_2 = GetPedLastDamageBone
      SHX7_2 = SHX5_2
      SHX6_2, SHX7_2 = SHX6_2(SHX7_2)
      if SHX6_2 then
        SHX8_2 = 31086 == SHX7_2
        SHX9_2 = SHX6_1.headshotsOnly
        if not SHX9_2 or SHX8_2 then
          SHX9_2 = DeleteEntity
          SHX10_2 = SHX5_2
          SHX9_2(SHX10_2)
          SHX9_2 = SHX12_1
          SHX9_2 = SHX9_2 + 1
          SHX12_1 = SHX9_2
          if SHX8_2 then
            SHX9_2 = SHX13_1
            SHX9_2 = SHX9_2 + 1
            SHX13_1 = SHX9_2
          end
          SHX9_2 = SHX4_1
          if SHX9_2 then
            SHX9_2 = PlaySoundFrontend
            SHX10_2 = -1
            SHX11_2 = "Enter_1st"
            SHX12_2 = "GTAO_Magnate_Boss_Modes_Soundset"
            SHX13_2 = false
            SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2)
          end
          SHX9_1 = SHX0_2
          SHX9_2 = SHX8_1
          SHX9_2[SHX5_2] = nil
          break
        end
        SHX9_2 = SetEntityHealth
        SHX10_2 = SHX5_2
        SHX11_2 = SHX0_1.fakeEntityHealth
        SHX9_2(SHX10_2, SHX11_2)
        SHX9_2 = ClearPedLastDamageBone
        SHX10_2 = SHX5_2
        SHX9_2(SHX10_2)
        SHX9_2 = ClearPedDecorations
        SHX10_2 = SHX5_2
        SHX9_2(SHX10_2)
      end
      SHX8_2 = SHX4_1
      if SHX8_2 then
        SHX8_2 = PlaySoundFrontend
        SHX9_2 = -1
        SHX10_2 = "Enter_1st"
        SHX11_2 = "GTAO_Biker_Modes_Soundset"
        SHX12_2 = false
        SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      end
      SHX8_2 = ClearEntityLastDamageEntity
      SHX9_2 = SHX5_2
      SHX8_2(SHX9_2)
    end
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.getPlayerCoords
    SHX6_2 = SHX6_2()
    SHX7_2 = GetEntityCoords
    SHX8_2 = SHX5_2
    SHX9_2 = true
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
    SHX8_2 = SHX2_1.drawLines
    if SHX8_2 then
      SHX8_2 = DrawLine
      SHX9_2 = SHX6_2.x
      SHX10_2 = SHX6_2.y
      SHX11_2 = SHX6_2.z
      SHX12_2 = SHX7_2.x
      SHX13_2 = SHX7_2.y
      SHX14_2 = SHX7_2.z
      SHX15_2 = 255
      SHX16_2 = 0
      SHX17_2 = 0
      SHX18_2 = 255
      SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
    end
  end
end
function SHX33_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX2_2 = pairs
  SHX3_2 = SHX8_1
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX7_2.createdTime
    SHX8_2 = SHX1_2 - SHX8_2
    SHX9_2 = SHX0_2.targetDurationMsec
    if SHX8_2 > SHX9_2 then
      SHX8_2 = DeleteEntity
      SHX9_2 = SHX6_2
      SHX8_2(SHX9_2)
      SHX8_2 = SHX8_1
      SHX8_2[SHX6_2] = nil
    end
  end
end
function SHX34_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = GetSelectedPedWeapon
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = GetAmmoInClip
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX5_2 = 0
  SHX2_2, SHX3_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  if not SHX2_2 then
    return
  end
  SHX4_2 = SHX11_1
  if SHX3_2 > SHX4_2 then
    SHX11_1 = SHX3_2
  end
  SHX4_2 = SHX11_1
  SHX4_2 = SHX4_2 - SHX3_2
  if SHX4_2 > 0 then
    SHX5_2 = SHX14_1
    SHX5_2 = SHX5_2 + SHX4_2
    SHX14_1 = SHX5_2
    SHX5_2 = GetMaxAmmoInClip
    SHX6_2 = SHX0_2
    SHX7_2 = SHX1_2
    SHX8_2 = false
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
    SHX6_2 = SetAmmoInClip
    SHX7_2 = SHX0_2
    SHX8_2 = SHX1_2
    SHX9_2 = SHX5_2
    SHX6_2(SHX7_2, SHX8_2, SHX9_2)
    SHX11_1 = SHX5_2
  end
end
function SHX35_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = SHX0_2.timeToCompleteMsec
  SHX3_2 = SHX0_2.startTime
  SHX3_2 = SHX1_2 - SHX3_2
  SHX2_2 = SHX2_2 - SHX3_2
  SHX3_2 = SHX0_2.numTargets
  SHX4_2 = SHX0_2.numSpawned
  SHX3_2 = SHX3_2 - SHX4_2
  SHX4_2 = SHX2_2
  SHX5_2 = table
  SHX5_2 = SHX5_2.count
  SHX6_2 = SHX8_1
  SHX5_2 = SHX5_2(SHX6_2)
  SHX5_2 = SHX3_2 + SHX5_2
  return SHX4_2, SHX5_2
end
function SHX36_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.createTimerBars
  SHX2_2 = SHX2_2()
  SHX3_2 = SHX12_1
  if SHX0_2 then
    SHX3_2 = SHX0_2.numSpawned
  end
  if SHX3_2 > 0 then
    SHX4_2 = SHX13_1
    SHX4_2 = SHX3_2 - SHX4_2
    SHX4_2 = SHX4_2 / SHX3_2
    SHX5_2 = 1.0
    SHX4_2 = SHX5_2 - SHX4_2
    SHX4_2 = SHX4_2 * 100.0
    SHX5_2 = SHX2_2.push
    SHX6_2 = "~y~Headshots"
    SHX7_2 = string
    SHX7_2 = SHX7_2.format
    SHX8_2 = "%s%%"
    SHX9_2 = math
    SHX9_2 = SHX9_2.rounddp
    SHX10_2 = SHX4_2
    SHX11_2 = 1
    SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX9_2(SHX10_2, SHX11_2)
    SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  else
    SHX4_2 = SHX2_2.push
    SHX5_2 = "~y~Headshots"
    SHX6_2 = "N/A"
    SHX4_2(SHX5_2, SHX6_2)
  end
  SHX4_2 = SHX14_1
  if SHX0_2 then
    SHX5_2 = SHX0_2.numSpawned
    SHX6_2 = SHX12_1
    SHX5_2 = SHX5_2 - SHX6_2
    SHX6_2 = SHX14_1
    SHX4_2 = SHX6_2 + SHX5_2
  end
  if SHX4_2 > 0 then
    SHX5_2 = SHX12_1
    SHX5_2 = SHX4_2 - SHX5_2
    SHX5_2 = SHX5_2 / SHX4_2
    SHX6_2 = 1.0
    SHX5_2 = SHX6_2 - SHX5_2
    SHX5_2 = SHX5_2 * 100.0
    SHX6_2 = SHX2_2.push
    SHX7_2 = "~y~Accuracy"
    SHX8_2 = string
    SHX8_2 = SHX8_2.format
    SHX9_2 = "%s%%"
    SHX10_2 = math
    SHX10_2 = SHX10_2.rounddp
    SHX11_2 = SHX5_2
    SHX12_2 = 1
    SHX10_2, SHX11_2, SHX12_2 = SHX10_2(SHX11_2, SHX12_2)
    SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  else
    SHX5_2 = SHX2_2.push
    SHX6_2 = "~y~Accuracy"
    SHX7_2 = "N/A"
    SHX5_2(SHX6_2, SHX7_2)
  end
  if SHX0_2 then
    SHX5_2 = SHX0_2.startTime
    if SHX5_2 then
      SHX5_2 = SHX35_1
      SHX6_2 = SHX0_2
      SHX7_2 = SHX1_2
      SHX5_2, SHX6_2 = SHX5_2(SHX6_2, SHX7_2)
      SHX7_2 = 15000
      if SHX5_2 < SHX7_2 then
        SHX7_2 = "~r~"
        if SHX7_2 then
          goto SHX_LABEL_92
        end
      end
      SHX7_2 = "~y~"
      -- [FIX IF ERROR] Move ::SHX_LABEL_92:: outside nested blocks until all 'goto SHX_LABEL_92' can see it
      ::SHX_LABEL_92::
      SHX8_2 = SHX2_2.push
      SHX9_2 = string
      SHX9_2 = SHX9_2.format
      SHX10_2 = "%sCountdown"
      SHX11_2 = SHX7_2
      SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
      SHX10_2 = tostring
      SHX11_2 = math
      SHX11_2 = SHX11_2.floor
      SHX12_2 = SHX5_2 / 1000
      SHX11_2, SHX12_2 = SHX11_2(SHX12_2)
      SHX10_2, SHX11_2, SHX12_2 = SHX10_2(SHX11_2, SHX12_2)
      SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX8_2 = SHX2_2.push
      SHX9_2 = "~g~Targets Left"
      SHX10_2 = tostring
      SHX11_2 = SHX6_2
      SHX10_2, SHX11_2, SHX12_2 = SHX10_2(SHX11_2)
      SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    end
  end
  SHX5_2 = SHX2_2.draw
  SHX5_2()
end
function SHX37_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsAnyMenuOfTypeVisible
  SHX1_2 = "aimtraining"
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 then
    SHX1_2 = SHX3_1
    if SHX1_2 then
      SHX1_2 = drawNativeNotification
      SHX2_2 = "Press ~INPUT_INTERACTION_MENU~ to bring up the menu again."
      SHX1_2(SHX2_2)
    end
  end
  if not SHX0_2 then
    SHX1_2 = IsControlJustPressed
    SHX2_2 = 0
    SHX3_2 = 244
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    if SHX1_2 then
      SHX1_2 = RageUI
      SHX1_2 = SHX1_2.Visible
      SHX2_2 = RMenu
      SHX3_2 = SHX2_2
      SHX2_2 = SHX2_2.Get
      SHX4_2 = "aimtraining"
      SHX5_2 = "mainmenu"
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      SHX3_2 = true
      SHX1_2(SHX2_2, SHX3_2)
    end
  end
  SHX3_1 = SHX0_2
end
function SHX38_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX2_2 = SHX0_2.isEnding
  if not SHX2_2 then
    SHX2_2 = SHX0_2.startTime
    if SHX2_2 then
      goto SHX_LABEL_8
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_8:: outside nested blocks until all 'goto SHX_LABEL_8' can see it
  ::SHX_LABEL_8::
  SHX2_2 = SHX35_1
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX2_2, SHX3_2 = SHX2_2(SHX3_2, SHX4_2)
  if 0 == SHX3_2 then
    SHX0_2.isEnding = true
    SHX4_2 = GetHashKey
    SHX5_2 = tostring
    SHX6_2 = SHX0_2.token
    SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX5_2(SHX6_2)
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX5_2 = SHX0_2.startTime
    SHX5_2 = SHX1_2 - SHX5_2
    SHX6_2 = TriggerServerEvent
    SHX7_2 = "5e8e59e7f6"
    SHX8_2 = SHX4_2
    SHX9_2 = SHX5_2
    SHX10_2 = SHX12_1
    SHX11_2 = SHX13_1
    SHX12_2 = SHX14_1
    SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  elseif 0 == SHX2_2 then
    SHX7_1.isEnding = true
    SHX4_2 = TriggerServerEvent
    SHX5_2 = "302b46f2b0"
    SHX6_2 = true
    SHX4_2(SHX5_2, SHX6_2)
  end
end
function SHX39_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = SHX15_1
  if not SHX0_2 then
    return
  end
  SHX0_2 = SHX0_1.locations
  SHX1_2 = SHX15_1
  SHX0_2 = SHX0_2[SHX1_2]
  SHX1_2 = GetGameTimer
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX19_1
  SHX2_2 = SHX2_2()
  if not SHX2_2 then
    return
  end
  SHX2_2 = SHX23_1
  SHX3_2 = SHX1_2
  SHX4_2 = SHX0_2
  SHX5_2 = SHX7_1
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = SHX24_1
  SHX3_2 = SHX7_1
  SHX2_2(SHX3_2)
  SHX2_2 = SHX31_1
  SHX3_2 = SHX0_2
  SHX2_2(SHX3_2)
  SHX2_2 = SHX32_1
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
  SHX2_2 = SHX7_1
  if SHX2_2 then
    SHX2_2 = SHX33_1
    SHX3_2 = SHX7_1
    SHX4_2 = SHX1_2
    SHX2_2(SHX3_2, SHX4_2)
  end
  SHX2_2 = SHX34_1
  SHX2_2()
  SHX2_2 = SHX36_1
  SHX3_2 = SHX7_1
  SHX4_2 = SHX1_2
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SHX37_1
  SHX2_2()
  SHX2_2 = SHX7_1
  if SHX2_2 then
    SHX2_2 = SHX38_1
    SHX3_2 = SHX7_1
    SHX4_2 = SHX1_2
    SHX2_2(SHX3_2, SHX4_2)
  end
end
SHX40_1 = CMG
SHX40_1 = SHX40_1.createThreadOnTick
SHX41_1 = SHX39_1
SHX42_1 = "Aim Training"
SHX40_1(SHX41_1, SHX42_1)
SHX40_1 = AddEventHandler
SHX41_1 = "onResourceStop"
function SHX42_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = GetCurrentResourceName
  SHX1_2 = SHX1_2()
  if SHX0_2 == SHX1_2 then
    SHX1_2 = SHX17_1
    SHX1_2()
  end
end
SHX40_1(SHX41_1, SHX42_1)
function SHX40_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerBucket
  SHX1_2 = SHX1_2()
  if 0 ~= SHX1_2 then
    return
  end
  SHX1_2 = drawNativeNotification
  SHX2_2 = "Press ~INPUT_CONTEXT~ to enter aim training."
  SHX1_2(SHX2_2)
  SHX1_2 = IsControlJustPressed
  SHX2_2 = 0
  SHX3_2 = 51
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if SHX1_2 then
    SHX1_2 = TriggerServerEvent
    SHX2_2 = "8068631044"
    SHX3_2 = SHX0_2.locationName
    SHX1_2(SHX2_2, SHX3_2)
  end
end
SHX41_1 = pairs
SHX42_1 = SHX0_1.locations
SHX41_1, SHX42_1, SHX43_1, SHX44_1 = SHX41_1(SHX42_1)
for SHX45_1, SHX46_1 in SHX41_1, SHX42_1, SHX43_1, SHX44_1 do
  SHX47_1 = CMG
  SHX47_1 = SHX47_1.createArea
  SHX48_1 = string
  SHX48_1 = SHX48_1.format
  SHX49_1 = "aimtraining_%s_enter"
  SHX50_1 = SHX45_1
  SHX48_1 = SHX48_1(SHX49_1, SHX50_1)
  SHX49_1 = SHX46_1.enterPosition
  SHX50_1 = 1.5
  SHX51_1 = 2.0
  function SHX52_1()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_2, SHX1_2
  end
  function SHX53_1()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_2, SHX1_2
  end
  SHX54_1 = SHX40_1
  SHX55_1 = {}
  SHX55_1.locationName = SHX45_1
  SHX47_1(SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1)
  SHX47_1 = tCMG
  SHX47_1 = SHX47_1.addBlip
  SHX48_1 = SHX46_1.enterPosition
  SHX48_1 = SHX48_1.x
  SHX49_1 = SHX46_1.enterPosition
  SHX49_1 = SHX49_1.y
  SHX50_1 = SHX46_1.enterPosition
  SHX50_1 = SHX50_1.z
  SHX51_1 = 390
  SHX52_1 = nil
  SHX53_1 = "Aim Training"
  SHX47_1(SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1)
end
SHX41_1 = pairs
SHX42_1 = SHX0_1.lockedDoors
SHX41_1, SHX42_1, SHX43_1, SHX44_1 = SHX41_1(SHX42_1)
for SHX45_1, SHX46_1 in SHX41_1, SHX42_1, SHX43_1, SHX44_1 do
  SHX47_1 = GetHashKey
  SHX48_1 = string
  SHX48_1 = SHX48_1.format
  SHX49_1 = "aimtraining_%s"
  SHX50_1 = SHX45_1
  SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1 = SHX48_1(SHX49_1, SHX50_1)
  SHX47_1 = SHX47_1(SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1)
  SHX48_1 = AddDoorToSystem
  SHX49_1 = SHX47_1
  SHX50_1 = SHX46_1.modelHash
  SHX51_1 = SHX46_1.position
  SHX51_1 = SHX51_1.x
  SHX52_1 = SHX46_1.position
  SHX52_1 = SHX52_1.y
  SHX53_1 = SHX46_1.position
  SHX53_1 = SHX53_1.z
  SHX54_1 = false
  SHX55_1 = false
  SHX56_1 = false
  SHX48_1(SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1)
  SHX48_1 = DoorSystemSetDoorState
  SHX49_1 = SHX47_1
  SHX50_1 = 4
  SHX51_1 = false
  SHX52_1 = false
  SHX48_1(SHX49_1, SHX50_1, SHX51_1, SHX52_1)
end
function SHX41_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = drawNativeNotification
  SHX1_2 = "Press ~INPUT_CONTEXT~ to enter leave training."
  SHX0_2(SHX1_2)
  SHX0_2 = IsControlJustPressed
  SHX1_2 = 0
  SHX2_2 = 51
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = TriggerServerEvent
    SHX1_2 = "9d2ccf39a9"
    SHX0_2(SHX1_2)
  end
end
SHX42_1 = RegisterNetEvent
SHX43_1 = "671e105ec5"
function SHX44_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = SHX15_1
  SHX15_1 = SHX0_2
  SHX2_2 = SHX15_1
  if SHX2_2 then
    SHX2_2 = SHX0_1.locations
    SHX3_2 = SHX15_1
    SHX2_2 = SHX2_2[SHX3_2]
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.teleport
    SHX4_2 = SHX2_2.leavePosition
    SHX4_2 = SHX4_2.x
    SHX5_2 = SHX2_2.leavePosition
    SHX5_2 = SHX5_2.y
    SHX6_2 = SHX2_2.leavePosition
    SHX6_2 = SHX6_2.z
    SHX7_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
    SHX3_2 = RageUI
    SHX3_2 = SHX3_2.Visible
    SHX4_2 = RMenu
    SHX5_2 = SHX4_2
    SHX4_2 = SHX4_2.Get
    SHX6_2 = "aimtraining"
    SHX7_2 = "mainmenu"
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    SHX5_2 = true
    SHX3_2(SHX4_2, SHX5_2)
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.createArea
    SHX4_2 = "aimtraining_leave"
    SHX5_2 = SHX2_2.leavePosition
    SHX6_2 = 1.5
    SHX7_2 = 2.0
    function SHX8_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    function SHX9_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    SHX10_2 = SHX41_1
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.setSwitchGunEnabled
    SHX4_2 = false
    SHX3_2(SHX4_2)
  else
    SHX2_2 = SHX18_1
    SHX2_2()
    SHX2_2 = SHX0_1.locations
    SHX2_2 = SHX2_2[SHX1_2]
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.teleport
    SHX4_2 = SHX2_2.enterPosition
    SHX4_2 = SHX4_2.x
    SHX5_2 = SHX2_2.enterPosition
    SHX5_2 = SHX5_2.y
    SHX6_2 = SHX2_2.enterPosition
    SHX6_2 = SHX6_2.z
    SHX7_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
    SHX3_2 = RageUI
    SHX3_2 = SHX3_2.Visible
    SHX4_2 = RMenu
    SHX5_2 = SHX4_2
    SHX4_2 = SHX4_2.Get
    SHX6_2 = "aimtraining"
    SHX7_2 = "mainmenu"
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    SHX5_2 = false
    SHX3_2(SHX4_2, SHX5_2)
    SHX3_2 = tCMG
    SHX3_2 = SHX3_2.removeArea
    SHX4_2 = "aimtraining_leave"
    SHX3_2(SHX4_2)
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.setSwitchGunEnabled
    SHX4_2 = true
    SHX3_2(SHX4_2)
  end
end
SHX42_1(SHX43_1, SHX44_1)
SHX42_1 = CMG
SHX42_1 = SHX42_1.registerDevMenuItems
SHX43_1 = "Aim Training"
function SHX44_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Checkbox
  SHX1_2 = "Debug Lines"
  SHX2_2 = "Whether to draw debug lines for the targets."
  SHX3_2 = SHX2_1.drawLines
  SHX4_2 = {}
  function SHX5_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    SHX2_1.drawLines = SHX3_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX42_1(SHX43_1, SHX44_1)
SHX42_1 = RegisterNetEvent
SHX43_1 = "9a918b808a"
function SHX44_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = SHX18_1
  SHX2_2()
  SHX2_2 = table
  SHX2_2 = SHX2_2.copy
  SHX3_2 = SHX0_1.challenges
  SHX3_2 = SHX3_2[SHX0_2]
  SHX2_2 = SHX2_2(SHX3_2)
  SHX7_1 = SHX2_2
  SHX7_1.token = SHX1_2
  SHX7_1.numSpawned = 0
  SHX2_2 = SHX7_1.settings
  SHX6_1 = SHX2_2
  SHX2_2 = RageUI
  SHX2_2 = SHX2_2.CloseAll
  SHX2_2()
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.showCountdownTimer
  SHX3_2 = 3
  SHX2_2(SHX3_2)
  SHX2_2 = GetGameTimer
  SHX2_2 = SHX2_2()
  SHX7_1.startTime = SHX2_2
end
SHX42_1(SHX43_1, SHX44_1)
SHX42_1 = RegisterNetEvent
SHX43_1 = "302b46f2b0"
function SHX44_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = SHX18_1
  SHX2_2()
  if SHX0_2 then
    SHX2_2 = notify
    SHX3_2 = "~r~Failed to complete challenge in time."
    SHX2_2(SHX3_2)
  elseif SHX1_2 then
    SHX2_2 = notify
    SHX3_2 = "~g~You succesfully completed the challenge!"
    SHX2_2(SHX3_2)
  else
    SHX2_2 = notify
    SHX3_2 = "~y~Challenge stopped by user."
    SHX2_2(SHX3_2)
  end
end
SHX42_1(SHX43_1, SHX44_1)
SHX42_1 = CMG
function SHX43_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX15_1
  if SHX0_2 then
    SHX0_2 = true
    if SHX0_2 then
      goto SHX_LABEL_8
    end
  end
  SHX0_2 = false
  -- [FIX IF ERROR] Move ::SHX_LABEL_8:: outside nested blocks until all 'goto SHX_LABEL_8' can see it
  ::SHX_LABEL_8::
  return SHX0_2
end
SHX42_1.isAimTraining = SHX43_1
SHX42_1 = 0
SHX43_1 = 0
SHX44_1 = {}
SHX45_1 = {}
SHX46_1 = {}
SHX47_1 = 1
function SHX48_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = IsNamedRendertargetRegistered
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    SHX2_2 = RegisterNamedRendertarget
    SHX3_2 = SHX0_2
    SHX4_2 = false
    SHX2_2(SHX3_2, SHX4_2)
  end
  SHX2_2 = IsNamedRendertargetLinked
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    SHX2_2 = LinkNamedRendertarget
    SHX3_2 = SHX1_2
    SHX2_2(SHX3_2)
  end
  SHX2_2 = IsNamedRendertargetLinked
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = GetNamedRendertargetRenderId
    SHX3_2 = SHX0_2
    return SHX2_2(SHX3_2)
  else
    SHX2_2 = 0
    return SHX2_2
  end
end
function SHX49_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadModel
  SHX2_2 = SHX0_1.statsBoardModel
  SHX1_2(SHX2_2)
  SHX1_2 = CreateObject
  SHX2_2 = SHX0_1.statsBoardModel
  SHX3_2 = SHX0_2.position
  SHX3_2 = SHX3_2.x
  SHX4_2 = SHX0_2.position
  SHX4_2 = SHX4_2.y
  SHX5_2 = SHX0_2.position
  SHX5_2 = SHX5_2.z
  SHX6_2 = false
  SHX7_2 = false
  SHX8_2 = false
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX42_1 = SHX1_2
  SHX1_2 = SetModelAsNoLongerNeeded
  SHX2_2 = SHX0_1.statsBoardModel
  SHX1_2(SHX2_2)
  SHX1_2 = SetEntityHeading
  SHX2_2 = SHX42_1
  SHX3_2 = SHX0_2.position
  SHX3_2 = SHX3_2.w
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetEntityLodDist
  SHX2_2 = SHX42_1
  SHX3_2 = 75
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SHX48_1
  SHX2_2 = "cmgtv9"
  SHX3_2 = SHX0_1.statsBoardModel
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX43_1 = SHX1_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "689c64f285"
  SHX1_2(SHX2_2)
end
function SHX50_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = DeleteEntity
  SHX1_2 = SHX42_1
  SHX0_2(SHX1_2)
  SHX0_2 = 0
  SHX42_1 = SHX0_2
  SHX0_2 = ReleaseNamedRendertarget
  SHX1_2 = "cmgtv9"
  SHX0_2(SHX1_2)
  SHX0_2 = 0
  SHX43_1 = SHX0_2
end
SHX51_1 = {}
SHX52_1 = {}
SHX53_1 = 255
SHX54_1 = 215
SHX55_1 = 0
SHX52_1[1] = SHX53_1
SHX52_1[2] = SHX54_1
SHX52_1[3] = SHX55_1
SHX53_1 = {}
SHX54_1 = 192
SHX55_1 = 192
SHX56_1 = 192
SHX53_1[1] = SHX54_1
SHX53_1[2] = SHX55_1
SHX53_1[3] = SHX56_1
SHX54_1 = {}
SHX55_1 = 140
SHX56_1 = 120
SHX57_1 = 83
SHX54_1[1] = SHX55_1
SHX54_1[2] = SHX56_1
SHX54_1[3] = SHX57_1
SHX51_1[1] = SHX52_1
SHX51_1[2] = SHX53_1
SHX51_1[3] = SHX54_1
function SHX52_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2
  SHX1_2 = SHX0_2.distance
  if SHX1_2 > 50.0 then
    return
  end
  SHX1_2 = SetTextRenderId
  SHX2_2 = SHX43_1
  SHX1_2(SHX2_2)
  SHX1_2 = SetScriptGfxDrawOrder
  SHX2_2 = 4
  SHX1_2(SHX2_2)
  SHX1_2 = SetScriptGfxDrawBehindPausemenu
  SHX2_2 = true
  SHX1_2(SHX2_2)
  SHX1_2 = "Top Completed"
  SHX2_2 = SHX46_1
  SHX3_2 = SHX47_1
  if 2 == SHX3_2 then
    SHX1_2 = "Top Headshots"
    SHX2_2 = SHX45_1
  else
    SHX3_2 = SHX47_1
    if 3 == SHX3_2 then
      SHX1_2 = "Top Accuracy"
      SHX2_2 = SHX44_1
    end
  end
  SHX3_2 = DrawAdvancedText
  SHX4_2 = 0.6
  SHX5_2 = 0.0
  SHX6_2 = 0.005
  SHX7_2 = 0.0028
  SHX8_2 = 0.7
  SHX9_2 = SHX1_2
  SHX10_2 = 248
  SHX11_2 = 246
  SHX12_2 = 240
  SHX13_2 = 200
  SHX14_2 = 4
  SHX15_2 = 0
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX3_2 = DrawAdvancedText
  SHX4_2 = 0.1
  SHX5_2 = 0.17
  SHX6_2 = 0.005
  SHX7_2 = 0.0028
  SHX8_2 = 0.4
  SHX9_2 = "Name"
  SHX10_2 = 248
  SHX11_2 = 246
  SHX12_2 = 240
  SHX13_2 = 255
  SHX14_2 = 4
  SHX15_2 = 1
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX3_2 = DrawAdvancedText
  SHX4_2 = 0.3
  SHX5_2 = 0.17
  SHX6_2 = 0.005
  SHX7_2 = 0.0028
  SHX8_2 = 0.4
  SHX9_2 = "Perm ID"
  SHX10_2 = 248
  SHX11_2 = 246
  SHX12_2 = 240
  SHX13_2 = 255
  SHX14_2 = 4
  SHX15_2 = 1
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX3_2 = DrawAdvancedText
  SHX4_2 = 0.5
  SHX5_2 = 0.17
  SHX6_2 = 0.005
  SHX7_2 = 0.0028
  SHX8_2 = 0.4
  SHX9_2 = "Challenge"
  SHX10_2 = 248
  SHX11_2 = 246
  SHX12_2 = 240
  SHX13_2 = 255
  SHX14_2 = 4
  SHX15_2 = 1
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX3_2 = DrawAdvancedText
  SHX4_2 = 0.9
  SHX5_2 = 0.17
  SHX6_2 = 0.005
  SHX7_2 = 0.0028
  SHX8_2 = 0.4
  SHX9_2 = "Percent"
  SHX10_2 = 248
  SHX11_2 = 246
  SHX12_2 = 240
  SHX13_2 = 255
  SHX14_2 = 4
  SHX15_2 = 1
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX3_2 = DrawRect
  SHX4_2 = 0.5
  SHX5_2 = 0.26
  SHX6_2 = 0.95
  SHX7_2 = 0.005
  SHX8_2 = 248
  SHX9_2 = 246
  SHX10_2 = 240
  SHX11_2 = 255
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX3_2 = 1
  SHX4_2 = pairs
  SHX5_2 = SHX2_2
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
  for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    SHX10_2 = pairs
    SHX11_2 = SHX9_2
    SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX10_2(SHX11_2)
    for SHX14_2, SHX15_2 in SHX10_2, SHX11_2, SHX12_2, SHX13_2 do
      SHX16_2 = SHX51_1
      SHX16_2 = SHX16_2[SHX14_2]
      if SHX16_2 and SHX15_2 then
        SHX17_2 = DrawAdvancedText
        SHX18_2 = 0.1
        SHX19_2 = 0.07 * SHX3_2
        SHX19_2 = 0.205 + SHX19_2
        SHX20_2 = 0.005
        SHX21_2 = 0.0028
        SHX22_2 = 0.34
        SHX23_2 = SHX15_2[1]
        SHX24_2 = SHX16_2[1]
        SHX25_2 = SHX16_2[2]
        SHX26_2 = SHX16_2[3]
        SHX27_2 = 255
        SHX28_2 = 4
        SHX29_2 = 1
        SHX17_2(SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2)
        SHX17_2 = DrawAdvancedText
        SHX18_2 = 0.3
        SHX19_2 = 0.07 * SHX3_2
        SHX19_2 = 0.205 + SHX19_2
        SHX20_2 = 0.005
        SHX21_2 = 0.0028
        SHX22_2 = 0.35
        SHX23_2 = SHX15_2[2]
        SHX24_2 = SHX16_2[1]
        SHX25_2 = SHX16_2[2]
        SHX26_2 = SHX16_2[3]
        SHX27_2 = 255
        SHX28_2 = 4
        SHX29_2 = 1
        SHX17_2(SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2)
        SHX17_2 = DrawAdvancedText
        SHX18_2 = 0.5
        SHX19_2 = 0.07 * SHX3_2
        SHX19_2 = 0.205 + SHX19_2
        SHX20_2 = 0.005
        SHX21_2 = 0.0028
        SHX22_2 = 0.35
        SHX23_2 = SHX15_2[3]
        SHX24_2 = SHX16_2[1]
        SHX25_2 = SHX16_2[2]
        SHX26_2 = SHX16_2[3]
        SHX27_2 = 255
        SHX28_2 = 4
        SHX29_2 = 1
        SHX17_2(SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2)
        SHX17_2 = DrawAdvancedText
        SHX18_2 = 0.9
        SHX19_2 = 0.07 * SHX3_2
        SHX19_2 = 0.205 + SHX19_2
        SHX20_2 = 0.005
        SHX21_2 = 0.0028
        SHX22_2 = 0.35
        SHX23_2 = SHX15_2[4]
        SHX24_2 = SHX16_2[1]
        SHX25_2 = SHX16_2[2]
        SHX26_2 = SHX16_2[3]
        SHX27_2 = 255
        SHX28_2 = 4
        SHX29_2 = 1
        SHX17_2(SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2)
      end
      SHX3_2 = SHX3_2 + 1
    end
  end
  SHX4_2 = SetTextRenderId
  SHX5_2 = GetDefaultScriptRendertargetRenderId
  SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2 = SHX5_2()
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2)
  SHX4_2 = SetScriptGfxDrawBehindPausemenu
  SHX5_2 = false
  SHX4_2(SHX5_2)
  SHX4_2 = SHX0_2.distance
  SHX5_2 = 2.5
  if SHX4_2 < SHX5_2 then
    SHX4_2 = drawNativeNotification
    SHX5_2 = "Press ~INPUT_CONTEXT~ to switch page"
    SHX4_2(SHX5_2)
    SHX4_2 = IsControlJustPressed
    SHX5_2 = 0
    SHX6_2 = 51
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
    if SHX4_2 then
      SHX4_2 = TriggerServerEvent
      SHX5_2 = "908ae89bda"
      SHX4_2(SHX5_2)
    end
  end
end
SHX53_1 = pairs
SHX54_1 = SHX0_1.statsBoardLocations
SHX53_1, SHX54_1, SHX55_1, SHX56_1 = SHX53_1(SHX54_1)
for SHX57_1, SHX58_1 in SHX53_1, SHX54_1, SHX55_1, SHX56_1 do
  SHX59_1 = CMG
  SHX59_1 = SHX59_1.createArea
  SHX60_1 = string
  SHX60_1 = SHX60_1.format
  SHX61_1 = "aimtraining_tv_%s"
  SHX62_1 = SHX57_1
  SHX60_1 = SHX60_1(SHX61_1, SHX62_1)
  SHX61_1 = SHX58_1.xyz
  SHX62_1 = 100.0
  SHX63_1 = 500.0
  SHX64_1 = SHX49_1
  SHX65_1 = SHX50_1
  SHX66_1 = SHX52_1
  SHX67_1 = {}
  SHX67_1.position = SHX58_1
  SHX59_1(SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1)
end
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
  if SHX0_2 == SHX1_2 then
    SHX1_2 = DoesEntityExist
    SHX2_2 = SHX42_1
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = DeleteEntity
      SHX2_2 = SHX42_1
      SHX1_2(SHX2_2)
    end
  end
end
SHX53_1(SHX54_1, SHX55_1)
SHX53_1 = RegisterNetEvent
SHX54_1 = "50ef81cac8"
function SHX55_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  SHX46_1 = SHX0_2
  SHX45_1 = SHX1_2
  SHX44_1 = SHX2_2
  SHX47_1 = SHX3_2
end
SHX53_1(SHX54_1, SHX55_1)
SHX53_1 = RegisterNetEvent
SHX54_1 = "908ae89bda"
function SHX55_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX47_1 = SHX0_2
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
  SHX0_2 = drawNativeNotification
  SHX1_2 = "This is not a gun store, look elsewhere."
  SHX0_2(SHX1_2)
end
SHX54_1 = CMG
SHX54_1 = SHX54_1.createDynamicPed
SHX55_1 = -1782092083
SHX56_1 = vector3
SHX57_1 = 22.523078918457
SHX58_1 = -1105.4901123047
SHX59_1 = 29.785400390625
SHX56_1 = SHX56_1(SHX57_1, SHX58_1, SHX59_1)
SHX57_1 = 161.57479858398
SHX58_1 = true
SHX59_1 = nil
SHX60_1 = nil
SHX61_1 = 25.0
SHX62_1 = nil
function SHX63_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
SHX54_1(SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1)
SHX54_1 = CMG
SHX54_1 = SHX54_1.createArea
SHX55_1 = "aim_training_goaway"
SHX56_1 = vector3
SHX57_1 = 21.84729385376
SHX58_1 = -1106.693359375
SHX59_1 = 29.796985626221
SHX56_1 = SHX56_1(SHX57_1, SHX58_1, SHX59_1)
SHX57_1 = 2.0
SHX58_1 = 2.0
function SHX59_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
function SHX60_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
SHX61_1 = SHX53_1
SHX54_1(SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1)
