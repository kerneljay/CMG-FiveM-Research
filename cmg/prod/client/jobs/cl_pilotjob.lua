-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1, SHX78_1, SHX79_1, SHX80_1, SHX81_1, SHX82_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_pilotjob"
SHX0_1 = SHX0_1(SHX1_1)
globalOnPilotDuty = false
SHX1_1 = SHX0_1.fuelStations
SHX2_1 = {}
SHX3_1 = false
SHX4_1 = nil
SHX5_1 = nil
SHX6_1 = nil
SHX7_1 = false
SHX8_1 = false
SHX9_1 = false
SHX10_1 = false
SHX11_1 = false
SHX12_1 = nil
SHX13_1 = false
SHX14_1 = nil
SHX15_1 = nil
SHX16_1 = nil
SHX17_1 = 0
SHX18_1 = 150
SHX19_1 = 0
SHX20_1 = 0
SHX21_1 = {}
SHX21_1.x = 0.932
SHX21_1.y = 0.77
SHX21_1.width = 0.03
SHX21_1.height = 0.4
SHX22_1 = {}
SHX23_1 = SHX21_1.x
SHX22_1.x = SHX23_1
SHX23_1 = SHX21_1.y
SHX22_1.y = SHX23_1
SHX23_1 = SHX21_1.width
SHX22_1.width = SHX23_1
SHX23_1 = SHX21_1.height
SHX22_1.height = SHX23_1
SHX23_1 = {}
SHX24_1 = SHX21_1.x
SHX23_1.x = SHX24_1
SHX24_1 = SHX21_1.y
SHX25_1 = SHX21_1.height
SHX25_1 = SHX25_1 / 2
SHX24_1 = SHX24_1 - SHX25_1
SHX23_1.y = SHX24_1
SHX24_1 = SHX21_1.width
SHX23_1.width = SHX24_1
SHX23_1.height = 0.002
SHX24_1 = {}
SHX25_1 = SHX21_1.x
SHX24_1.x = SHX25_1
SHX25_1 = SHX21_1.y
SHX26_1 = SHX21_1.height
SHX26_1 = SHX26_1 / 2
SHX25_1 = SHX25_1 + SHX26_1
SHX24_1.y = SHX25_1
SHX25_1 = SHX21_1.width
SHX24_1.width = SHX25_1
SHX25_1 = SHX23_1.height
SHX24_1.height = SHX25_1
SHX25_1 = {}
SHX26_1 = SHX21_1.x
SHX27_1 = SHX21_1.width
SHX27_1 = SHX27_1 / 2
SHX26_1 = SHX26_1 - SHX27_1
SHX25_1.x = SHX26_1
SHX26_1 = SHX21_1.y
SHX25_1.y = SHX26_1
SHX26_1 = SHX23_1.height
SHX26_1 = SHX26_1 / 2
SHX25_1.width = SHX26_1
SHX26_1 = SHX21_1.height
SHX27_1 = SHX23_1.height
SHX26_1 = SHX26_1 + SHX27_1
SHX25_1.height = SHX26_1
SHX26_1 = {}
SHX27_1 = SHX21_1.x
SHX28_1 = SHX21_1.width
SHX28_1 = SHX28_1 / 2
SHX27_1 = SHX27_1 + SHX28_1
SHX26_1.x = SHX27_1
SHX27_1 = SHX21_1.y
SHX26_1.y = SHX27_1
SHX27_1 = SHX23_1.height
SHX27_1 = SHX27_1 / 2
SHX26_1.width = SHX27_1
SHX27_1 = SHX21_1.height
SHX28_1 = SHX23_1.height
SHX27_1 = SHX27_1 + SHX28_1
SHX26_1.height = SHX27_1
SHX27_1 = {}
SHX27_1.x = 0.965
SHX27_1.y = 0.77
SHX27_1.width = 0.03
SHX27_1.height = 0.4
SHX28_1 = {}
SHX29_1 = SHX27_1.x
SHX28_1.x = SHX29_1
SHX28_1.y = 0
SHX29_1 = SHX27_1.width
SHX28_1.width = SHX29_1
SHX29_1 = SHX17_1 / 150
SHX30_1 = SHX27_1.height
SHX29_1 = SHX29_1 * SHX30_1
SHX28_1.height = SHX29_1
SHX29_1 = SHX27_1.y
SHX30_1 = SHX27_1.height
SHX30_1 = SHX30_1 / 2
SHX31_1 = SHX28_1.height
SHX31_1 = SHX31_1 / 2
SHX30_1 = SHX30_1 - SHX31_1
SHX29_1 = SHX29_1 + SHX30_1
SHX28_1.y = SHX29_1
SHX29_1 = {}
SHX30_1 = SHX27_1.x
SHX29_1.x = SHX30_1
SHX30_1 = SHX27_1.y
SHX31_1 = SHX27_1.height
SHX31_1 = SHX31_1 / 2
SHX30_1 = SHX30_1 - SHX31_1
SHX29_1.y = SHX30_1
SHX30_1 = SHX27_1.width
SHX29_1.width = SHX30_1
SHX29_1.height = 0.002
SHX30_1 = {}
SHX31_1 = SHX27_1.x
SHX30_1.x = SHX31_1
SHX31_1 = SHX27_1.y
SHX32_1 = SHX27_1.height
SHX32_1 = SHX32_1 / 2
SHX31_1 = SHX31_1 + SHX32_1
SHX30_1.y = SHX31_1
SHX31_1 = SHX27_1.width
SHX30_1.width = SHX31_1
SHX31_1 = SHX29_1.height
SHX30_1.height = SHX31_1
SHX31_1 = {}
SHX32_1 = SHX27_1.x
SHX33_1 = SHX27_1.width
SHX33_1 = SHX33_1 / 2
SHX32_1 = SHX32_1 - SHX33_1
SHX31_1.x = SHX32_1
SHX32_1 = SHX27_1.y
SHX31_1.y = SHX32_1
SHX32_1 = SHX29_1.height
SHX32_1 = SHX32_1 / 2
SHX31_1.width = SHX32_1
SHX32_1 = SHX27_1.height
SHX33_1 = SHX29_1.height
SHX32_1 = SHX32_1 + SHX33_1
SHX31_1.height = SHX32_1
SHX32_1 = {}
SHX33_1 = SHX27_1.x
SHX34_1 = SHX27_1.width
SHX34_1 = SHX34_1 / 2
SHX33_1 = SHX33_1 + SHX34_1
SHX32_1.x = SHX33_1
SHX33_1 = SHX27_1.y
SHX32_1.y = SHX33_1
SHX33_1 = SHX29_1.height
SHX33_1 = SHX33_1 / 2
SHX32_1.width = SHX33_1
SHX33_1 = SHX27_1.height
SHX34_1 = SHX29_1.height
SHX33_1 = SHX33_1 + SHX34_1
SHX32_1.height = SHX33_1
SHX33_1 = {}
SHX33_1.x = 0.899
SHX33_1.y = 0.77
SHX33_1.width = 0.03
SHX33_1.height = 0.4
SHX34_1 = {}
SHX35_1 = SHX33_1.x
SHX34_1.x = SHX35_1
SHX35_1 = SHX33_1.y
SHX34_1.y = SHX35_1
SHX35_1 = SHX33_1.width
SHX34_1.width = SHX35_1
SHX35_1 = SHX33_1.height
SHX34_1.height = SHX35_1
SHX35_1 = {}
SHX36_1 = SHX33_1.x
SHX35_1.x = SHX36_1
SHX36_1 = SHX33_1.y
SHX37_1 = SHX33_1.height
SHX37_1 = SHX37_1 / 2
SHX36_1 = SHX36_1 - SHX37_1
SHX35_1.y = SHX36_1
SHX36_1 = SHX33_1.width
SHX35_1.width = SHX36_1
SHX35_1.height = 0.002
SHX36_1 = {}
SHX37_1 = SHX33_1.x
SHX36_1.x = SHX37_1
SHX37_1 = SHX33_1.y
SHX38_1 = SHX33_1.height
SHX38_1 = SHX38_1 / 2
SHX37_1 = SHX37_1 + SHX38_1
SHX36_1.y = SHX37_1
SHX37_1 = SHX33_1.width
SHX36_1.width = SHX37_1
SHX37_1 = SHX35_1.height
SHX36_1.height = SHX37_1
SHX37_1 = {}
SHX38_1 = SHX33_1.x
SHX39_1 = SHX33_1.width
SHX39_1 = SHX39_1 / 2
SHX38_1 = SHX38_1 - SHX39_1
SHX37_1.x = SHX38_1
SHX38_1 = SHX33_1.y
SHX37_1.y = SHX38_1
SHX38_1 = SHX35_1.height
SHX38_1 = SHX38_1 / 2
SHX37_1.width = SHX38_1
SHX38_1 = SHX33_1.height
SHX39_1 = SHX35_1.height
SHX38_1 = SHX38_1 + SHX39_1
SHX37_1.height = SHX38_1
SHX38_1 = {}
SHX39_1 = SHX33_1.x
SHX40_1 = SHX33_1.width
SHX40_1 = SHX40_1 / 2
SHX39_1 = SHX39_1 + SHX40_1
SHX38_1.x = SHX39_1
SHX39_1 = SHX33_1.y
SHX38_1.y = SHX39_1
SHX39_1 = SHX35_1.height
SHX39_1 = SHX39_1 / 2
SHX38_1.width = SHX39_1
SHX39_1 = SHX33_1.height
SHX40_1 = SHX35_1.height
SHX39_1 = SHX39_1 + SHX40_1
SHX38_1.height = SHX39_1
SHX39_1 = 0
SHX40_1 = vector3
SHX41_1 = 0.0
SHX42_1 = 0.0
SHX43_1 = 0.0
SHX40_1 = SHX40_1(SHX41_1, SHX42_1, SHX43_1)
SHX41_1 = 0
SHX42_1 = RMenu
SHX42_1 = SHX42_1.Add
SHX43_1 = "CMGpilotJob"
SHX44_1 = "atcMenu"
SHX45_1 = RageUI
SHX45_1 = SHX45_1.CreateMenu
SHX46_1 = ""
SHX47_1 = "Air Traffic Communications"
SHX48_1 = CMG
SHX48_1 = SHX48_1.getRageUIMenuWidth
SHX48_1 = SHX48_1()
SHX49_1 = CMG
SHX49_1 = SHX49_1.getRageUIMenuHeight
SHX49_1 = SHX49_1()
SHX50_1 = "cmg_pilotjob"
SHX51_1 = "cmg_pilotjob"
SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1, SHX78_1, SHX79_1, SHX80_1, SHX81_1, SHX82_1 = SHX45_1(SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1)
SHX42_1(SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1, SHX65_1, SHX66_1, SHX67_1, SHX68_1, SHX69_1, SHX70_1, SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1, SHX78_1, SHX79_1, SHX80_1, SHX81_1, SHX82_1)
SHX42_1 = AddEventHandler
SHX43_1 = "CMG:onClientSpawn"
function SHX44_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2
  SHX2_2 = SHX0_1.startJobLocs
  if SHX1_2 then
    SHX3_2 = 1
    SHX4_2 = #SHX2_2
    SHX5_2 = 1
    for SHX6_2 = SHX3_2, SHX4_2, SHX5_2 do
      SHX7_2 = tCMG
      SHX7_2 = SHX7_2.addMarker
      SHX8_2 = SHX2_2[SHX6_2]
      SHX8_2 = SHX8_2.coords
      SHX8_2 = SHX8_2.x
      SHX9_2 = SHX2_2[SHX6_2]
      SHX9_2 = SHX9_2.coords
      SHX9_2 = SHX9_2.y
      SHX10_2 = SHX2_2[SHX6_2]
      SHX10_2 = SHX10_2.coords
      SHX10_2 = SHX10_2.z
      SHX11_2 = 1.0
      SHX12_2 = 1.0
      SHX13_2 = 1.3
      SHX14_2 = 10
      SHX15_2 = 255
      SHX16_2 = 81
      SHX17_2 = 170
      SHX18_2 = 50
      SHX19_2 = 33
      SHX20_2 = false
      SHX21_2 = false
      SHX22_2 = true
      SHX23_2 = nil
      SHX24_2 = nil
      SHX25_2 = 0.0
      SHX26_2 = 0.0
      SHX27_2 = 0.0
      SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2)
    end
  end
end
SHX42_1(SHX43_1, SHX44_1)
function SHX42_1(...)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = print
  SHX1_2 = "[Pilot Job]"
  SHX2_2 = ...
  SHX0_2(SHX1_2, SHX2_2)
end
SHX43_1 = nil
SHX44_1 = nil
SHX45_1 = nil
SHX46_1 = nil
SHX47_1 = nil
SHX48_1 = nil
SHX49_1 = nil
SHX50_1 = nil
SHX51_1 = nil
function SHX52_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.arePilotJobGuidesDisabled
  SHX1_2 = SHX1_2()
  if SHX1_2 then
    return
  end
  SHX1_2 = GetActiveScreenResolution
  SHX1_2, SHX2_2 = SHX1_2()
  SHX3_2 = SHX2_2 / SHX1_2
  SHX4_2 = 0.08
  if SHX0_2 then
    SHX5_2 = 0.35
    if SHX5_2 then
      goto SHX_LABEL_18
    end
  end
  SHX5_2 = 0.65
  -- [FIX IF ERROR] Move ::SHX_LABEL_18:: outside nested blocks until all 'goto SHX_LABEL_18' can see it
  ::SHX_LABEL_18::
  if SHX0_2 then
    SHX6_2 = -SHX4_2
    SHX6_2 = SHX6_2 * SHX3_2
    if SHX6_2 then
      goto SHX_LABEL_27
    end
  end
  SHX6_2 = SHX4_2 * SHX3_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_27:: outside nested blocks until all 'goto SHX_LABEL_27' can see it
  ::SHX_LABEL_27::
  SHX7_2 = DrawSprite
  SHX8_2 = "pilotjob"
  SHX9_2 = "arrow"
  SHX10_2 = SHX5_2
  SHX11_2 = 0.5
  SHX12_2 = SHX6_2
  SHX13_2 = SHX4_2
  SHX14_2 = 0.0
  SHX15_2 = 255
  SHX16_2 = 255
  SHX17_2 = 255
  SHX18_2 = 255
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
end
function SHX53_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = nil
  if SHX0_2 < SHX1_2 then
    SHX2_2 = SHX1_2 - SHX0_2
  else
    SHX3_2 = 360
    SHX3_2 = SHX3_2 - SHX0_2
    SHX2_2 = SHX3_2 + SHX1_2
  end
  SHX3_2 = nil
  if SHX1_2 < SHX0_2 then
    SHX3_2 = SHX0_2 - SHX1_2
  else
    SHX4_2 = 360
    SHX4_2 = SHX4_2 - SHX1_2
    SHX3_2 = SHX4_2 + SHX0_2
  end
  SHX4_2 = SHX2_2
  SHX5_2 = SHX3_2
  return SHX4_2, SHX5_2
end
SHX54_1 = Citizen
SHX54_1 = SHX54_1.CreateThread
function SHX55_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = RequestStreamedTextureDict
  SHX1_2 = "pilotjob"
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  while true do
    SHX0_2 = HasStreamedTextureDictLoaded
    SHX1_2 = "pilotjob"
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      break
    end
    SHX0_2 = Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
end
SHX54_1(SHX55_1)
SHX54_1 = RegisterNetEvent
SHX55_1 = "02292c1ca8"
function SHX56_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2
  SHX15_1 = SHX1_2
  SHX14_1 = SHX2_2
  SHX3_2 = SHX0_1.planeSpawnLocs
  SHX4_2 = SHX0_1.tugSpawnLocs
  SHX4_1 = SHX0_2
  globalOnPilotDuty = true
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.getModelGender
  SHX5_2 = SHX5_2()
  if "male" == SHX5_2 then
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.loadCustomisationPreset
    SHX6_2 = "PilotMale"
    SHX5_2(SHX6_2)
  else
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.loadCustomisationPreset
    SHX6_2 = "PilotFemale"
    SHX5_2(SHX6_2)
  end
  SHX5_2 = Citizen
  SHX5_2 = SHX5_2.Wait
  SHX6_2 = 500
  SHX5_2(SHX6_2)
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.requestEntitySpawn
  SHX6_2 = "pilotjob_airtug"
  SHX5_2(SHX6_2)
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.spawnVehicle
  SHX6_2 = "airtug"
  SHX7_2 = SHX4_2[SHX2_2]
  SHX7_2 = SHX7_2.coords
  SHX7_2 = SHX7_2.x
  SHX8_2 = SHX4_2[SHX2_2]
  SHX8_2 = SHX8_2.coords
  SHX8_2 = SHX8_2.y
  SHX9_2 = SHX4_2[SHX2_2]
  SHX9_2 = SHX9_2.coords
  SHX9_2 = SHX9_2.z
  SHX10_2 = SHX4_2[SHX2_2]
  SHX10_2 = SHX10_2.h
  SHX11_2 = true
  SHX12_2 = true
  SHX13_2 = false
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX6_1 = SHX5_2
  SHX5_2 = SetVehicleColours
  SHX6_2 = SHX6_1
  SHX7_2 = 89
  SHX8_2 = 0
  SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = SetNewWaypoint
  SHX6_2 = SHX3_2[SHX1_2]
  SHX6_2 = SHX6_2.coords
  SHX6_2 = SHX6_2.x
  SHX7_2 = SHX3_2[SHX1_2]
  SHX7_2 = SHX7_2.coords
  SHX7_2 = SHX7_2.y
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.drawPlaneScaleForm
  SHX6_2 = "~g~COLLECT PLANE"
  SHX7_2 = "Collect your plane from the waypoint on your map"
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = "Collect your ~b~plane~w~ from the ~y~airport~w~."
  SHX16_1 = SHX5_2
  while true do
    SHX5_2 = SHX3_2[SHX1_2]
    SHX5_2 = SHX5_2.coords
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.getPlayerCoords
    SHX6_2 = SHX6_2()
    SHX5_2 = SHX5_2 - SHX6_2
    SHX5_2 = #SHX5_2
    SHX6_2 = 250
    if not (SHX5_2 > SHX6_2) then
      break
    end
    SHX5_2 = print
    SHX6_2 = "Pilot Job - waiting to get to spawn location"
    SHX5_2(SHX6_2)
    SHX5_2 = Citizen
    SHX5_2 = SHX5_2.Wait
    SHX6_2 = 500
    SHX5_2(SHX6_2)
  end
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.requestEntitySpawn
  SHX6_2 = "pilotjob_plane"
  SHX5_2(SHX6_2)
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.spawnVehicle
  SHX6_2 = SHX0_2.spawnName
  SHX7_2 = SHX3_2[SHX1_2]
  SHX7_2 = SHX7_2.coords
  SHX7_2 = SHX7_2.x
  SHX8_2 = SHX3_2[SHX1_2]
  SHX8_2 = SHX8_2.coords
  SHX8_2 = SHX8_2.y
  SHX9_2 = SHX3_2[SHX1_2]
  SHX9_2 = SHX9_2.coords
  SHX9_2 = SHX9_2.z
  SHX10_2 = SHX3_2[SHX1_2]
  SHX10_2 = SHX10_2.h
  SHX11_2 = false
  SHX12_2 = true
  SHX13_2 = false
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX5_1 = SHX5_2
  SHX5_2 = TriggerServerEvent
  SHX6_2 = "1e0bbaf6cd"
  SHX7_2 = SHX0_2.spawnName
  SHX8_2 = "pilot_job"
  SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = print
  SHX6_2 = "Pilot Job - Spawned"
  SHX7_2 = SHX5_1
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = SetLocalPlayerAsGhost
  SHX6_2 = true
  SHX5_2(SHX6_2)
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.getPlayerVehicle
  SHX5_2 = SHX5_2()
  SHX6_2 = SetNetworkVehicleAsGhost
  SHX7_2 = SHX5_2
  SHX8_2 = true
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = SetEntityAlpha
  SHX7_2 = SHX5_2
  SHX8_2 = 255
  SHX9_2 = false
  SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX6_2 = GetOffsetFromEntityInWorldCoords
  SHX7_2 = SHX5_1
  SHX8_2 = 0.0
  SHX9_2 = 0.0
  SHX10_2 = 6.0
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX7_2 = print
  SHX8_2 = "Pilot Job - planeCoords"
  SHX9_2 = SHX6_2
  SHX7_2(SHX8_2, SHX9_2)
  SHX7_2 = tCMG
  SHX7_2 = SHX7_2.setNamedMarker
  SHX8_2 = "planeMarker"
  SHX9_2 = SHX6_2.x
  SHX10_2 = SHX6_2.y
  SHX11_2 = SHX6_2.z
  SHX12_2 = 2.0
  SHX13_2 = 2.0
  SHX14_2 = 2.3
  SHX15_2 = 10
  SHX16_2 = 255
  SHX17_2 = 81
  SHX18_2 = 255
  SHX19_2 = 250
  SHX20_2 = 0
  SHX21_2 = false
  SHX22_2 = true
  SHX23_2 = true
  SHX24_2 = nil
  SHX25_2 = nil
  SHX26_2 = 0.0
  SHX27_2 = 0.0
  SHX28_2 = 0.0
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
  while true do
    SHX7_2 = IsPedInVehicle
    SHX8_2 = CMG
    SHX8_2 = SHX8_2.getPlayerPed
    SHX8_2 = SHX8_2()
    SHX9_2 = SHX5_1
    SHX10_2 = false
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
    if SHX7_2 then
      break
    end
    SHX7_2 = DoesEntityExist
    SHX8_2 = SHX5_1
    SHX7_2 = SHX7_2(SHX8_2)
    if SHX7_2 then
      SHX7_2 = GetVehicleEngineHealth
      SHX8_2 = SHX5_1
      SHX7_2 = SHX7_2(SHX8_2)
      if SHX7_2 <= 0 then
        SHX7_2 = nil
        SHX16_1 = SHX7_2
        SHX7_2 = tCMG
        SHX7_2 = SHX7_2.removeNamedMarker
        SHX8_2 = "planeMarker"
        SHX7_2(SHX8_2)
        SHX7_2 = DoesEntityExist
        SHX8_2 = SHX6_1
        SHX7_2 = SHX7_2(SHX8_2)
        if SHX7_2 then
          SHX7_2 = DeleteEntity
          SHX8_2 = SHX6_1
          SHX7_2(SHX8_2)
        end
        SHX7_2 = DeleteEntity
        SHX8_2 = SHX5_1
        SHX7_2(SHX8_2)
        SHX7_2 = TriggerServerEvent
        SHX8_2 = "8ae979e044"
        SHX7_2(SHX8_2)
        return
      end
    else
      SHX7_2 = nil
      SHX16_1 = SHX7_2
      SHX7_2 = tCMG
      SHX7_2 = SHX7_2.removeNamedMarker
      SHX8_2 = "planeMarker"
      SHX7_2(SHX8_2)
      SHX7_2 = DoesEntityExist
      SHX8_2 = SHX6_1
      SHX7_2 = SHX7_2(SHX8_2)
      if SHX7_2 then
        SHX7_2 = DeleteEntity
        SHX8_2 = SHX6_1
        SHX7_2(SHX8_2)
      end
      SHX7_2 = TriggerServerEvent
      SHX8_2 = "8ae979e044"
      SHX7_2(SHX8_2)
      return
    end
    SHX7_2 = Citizen
    SHX7_2 = SHX7_2.Wait
    SHX8_2 = 1000
    SHX7_2(SHX8_2)
  end
  SHX7_2 = tCMG
  SHX7_2 = SHX7_2.removeNamedMarker
  SHX8_2 = "planeMarker"
  SHX7_2(SHX8_2)
  SHX7_2 = DeleteEntity
  SHX8_2 = SHX6_1
  SHX7_2(SHX8_2)
  SHX7_2 = nil
  SHX16_1 = SHX7_2
  SHX7_2 = true
  SHX8_1 = SHX7_2
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.getPilotingFuelCapacityPercent
  if SHX7_2 then
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.getPilotingFuelCapacityPercent
    SHX7_2 = SHX7_2()
    if SHX7_2 then
      goto SHX_LABEL_252
    end
  end
  SHX7_2 = 0
  -- [FIX IF ERROR] Move ::SHX_LABEL_252:: outside nested blocks until all 'goto SHX_LABEL_252' can see it
  ::SHX_LABEL_252::
  SHX8_2 = math
  SHX8_2 = SHX8_2.floor
  SHX9_2 = SHX7_2 / 100
  SHX9_2 = 1 + SHX9_2
  SHX9_2 = 150 * SHX9_2
  SHX8_2 = SHX8_2(SHX9_2)
  SHX18_1 = SHX8_2
  SHX8_2 = SHX18_1
  SHX17_1 = SHX8_2
  SHX8_2 = TriggerEvent
  SHX9_2 = "671af762e6"
  SHX8_2(SHX9_2)
  SHX8_2 = TriggerEvent
  SHX9_2 = "b0652830d5"
  SHX8_2(SHX9_2)
  SHX8_2 = Citizen
  SHX8_2 = SHX8_2.Wait
  SHX9_2 = 10000
  SHX8_2(SHX9_2)
  SHX8_2 = SetEntityProofs
  SHX9_2 = SHX5_1
  SHX10_2 = false
  SHX11_2 = false
  SHX12_2 = false
  SHX13_2 = false
  SHX14_2 = false
  SHX15_2 = false
  SHX16_2 = false
  SHX17_2 = false
  SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX8_2 = TriggerServerEvent
  SHX9_2 = "229bf66229"
  SHX10_2 = SHX1_2
  SHX8_2(SHX9_2, SHX10_2)
  SHX8_2 = TriggerServerEvent
  SHX9_2 = "e1cb2b3c18"
  SHX10_2 = SHX2_2
  SHX8_2(SHX9_2, SHX10_2)
end
SHX54_1(SHX55_1, SHX56_1)
SHX54_1 = RegisterNetEvent
SHX55_1 = "5f151ea19c"
function SHX56_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX2_2 = tCMG
  SHX2_2 = SHX2_2.removeArea
  SHX3_2 = "dropOffPassengers_"
  SHX2_2(SHX3_2)
  while true do
    SHX2_2 = IsPedInVehicle
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.getPlayerPed
    SHX3_2 = SHX3_2()
    SHX4_2 = SHX5_1
    SHX5_2 = false
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    if SHX2_2 then
      break
    end
    SHX2_2 = DoesEntityExist
    SHX3_2 = SHX5_1
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      SHX2_2 = GetVehicleEngineHealth
      SHX3_2 = SHX5_1
      SHX2_2 = SHX2_2(SHX3_2)
      if SHX2_2 <= 0 then
        SHX2_2 = SHX42_1
        SHX3_2 = "CMG:pilotJobPickupLoc -> engine health (1)"
        SHX4_2 = SHX5_1
        SHX2_2(SHX3_2, SHX4_2)
        return
      end
    end
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = 500
    SHX2_2(SHX3_2)
  end
  SHX2_2 = Citizen
  SHX2_2 = SHX2_2.Wait
  SHX3_2 = 2000
  SHX2_2(SHX3_2)
  SHX2_2 = SetVehicleEngineOn
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerVehicle
  SHX3_2 = SHX3_2()
  SHX4_2 = true
  SHX5_2 = false
  SHX6_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = SetVehicleDoorsShut
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerVehicle
  SHX3_2 = SHX3_2()
  SHX4_2 = false
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = FreezeEntityPosition
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerVehicle
  SHX3_2 = SHX3_2()
  SHX4_2 = false
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.drawPlaneScaleForm
  SHX3_2 = "~g~COLLECT PASSENGERS"
  SHX4_2 = string
  SHX4_2 = SHX4_2.format
  SHX5_2 = "Collect Passengers from %s"
  SHX6_2 = SHX0_2.name
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX2_2 = SHX17_1
  SHX3_2 = SHX18_1
  SHX3_2 = SHX3_2 * 0.2
  if SHX2_2 < SHX3_2 then
    SHX2_2 = tCMG
    SHX2_2 = SHX2_2.notify
    SHX3_2 = "~r~Remember to fuel your plane!"
    SHX2_2(SHX3_2)
  end
  SHX2_2 = SHX0_2.coords
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerCoords
  SHX3_2 = SHX3_2()
  SHX2_2 = SHX2_2 - SHX3_2
  SHX2_2 = #SHX2_2
  SHX3_2 = 1000
  if SHX2_2 > SHX3_2 then
    SHX2_2 = SHX47_1
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    if not SHX2_2 then
      SHX2_2 = SHX42_1
      SHX3_2 = "CMG:pilotJobPickupLoc -> not aircraftTakeOffAtc"
      SHX4_2 = json
      SHX4_2 = SHX4_2.encode
      SHX5_2 = SHX0_2
      SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX4_2(SHX5_2)
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      return
    end
  end
  SHX2_2 = SetNewWaypoint
  SHX3_2 = SHX0_2.coords
  SHX3_2 = SHX3_2.x
  SHX4_2 = SHX0_2.coords
  SHX4_2 = SHX4_2.y
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = "Fly to the destination ~y~airport~w~."
  SHX16_1 = SHX2_2
  SHX2_2 = SHX0_2.coords
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerCoords
  SHX3_2 = SHX3_2()
  SHX2_2 = SHX2_2 - SHX3_2
  SHX2_2 = #SHX2_2
  SHX3_2 = 1500
  if SHX2_2 > SHX3_2 then
    while true do
      SHX2_2 = SHX0_2.coords
      SHX3_2 = CMG
      SHX3_2 = SHX3_2.getPlayerCoords
      SHX3_2 = SHX3_2()
      SHX2_2 = SHX2_2 - SHX3_2
      SHX2_2 = #SHX2_2
      SHX3_2 = 1500
      if not (SHX2_2 > SHX3_2) then
        break
      end
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.getPlayerCoords
      SHX2_2 = SHX2_2()
      SHX3_2 = GetEntityHeading
      SHX4_2 = SHX5_1
      SHX3_2 = SHX3_2(SHX4_2)
      SHX4_2 = 360.0
      SHX3_2 = SHX4_2 - SHX3_2
      SHX4_2 = math
      SHX4_2 = SHX4_2.deg
      SHX5_2 = math
      SHX5_2 = SHX5_2.atan
      SHX6_2 = SHX0_2.coords
      SHX6_2 = SHX6_2.x
      SHX7_2 = SHX2_2.x
      SHX6_2 = SHX6_2 - SHX7_2
      SHX7_2 = SHX0_2.coords
      SHX7_2 = SHX7_2.y
      SHX8_2 = SHX2_2.y
      SHX7_2 = SHX7_2 - SHX8_2
      SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX5_2(SHX6_2, SHX7_2)
      SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX4_2 = SHX4_2 % 360
      SHX5_2 = math
      SHX5_2 = SHX5_2.abs
      SHX6_2 = SHX3_2 - SHX4_2
      SHX5_2 = SHX5_2(SHX6_2)
      if SHX5_2 > 25 then
        SHX5_2 = SHX53_1
        SHX6_2 = SHX4_2
        SHX7_2 = SHX3_2
        SHX5_2, SHX6_2 = SHX5_2(SHX6_2, SHX7_2)
        SHX7_2 = SHX52_1
        SHX8_2 = SHX5_2 < SHX6_2
        SHX7_2(SHX8_2)
      end
      SHX5_2 = DoesEntityExist
      SHX6_2 = SHX5_1
      SHX5_2 = SHX5_2(SHX6_2)
      if SHX5_2 then
        SHX5_2 = GetVehicleEngineHealth
        SHX6_2 = SHX5_1
        SHX5_2 = SHX5_2(SHX6_2)
        if SHX5_2 <= 0 then
          SHX5_2 = SHX42_1
          SHX6_2 = "CMG:pilotJobPickupLoc -> engine health (2)"
          SHX7_2 = SHX5_1
          SHX5_2(SHX6_2, SHX7_2)
          SHX5_2 = nil
          SHX16_1 = SHX5_2
          return
        end
      else
        SHX5_2 = SHX42_1
        SHX6_2 = "CMG:pilotJobPickupLoc -> no vehicle"
        SHX7_2 = SHX5_1
        SHX5_2(SHX6_2, SHX7_2)
        SHX5_2 = nil
        SHX16_1 = SHX5_2
        return
      end
      SHX5_2 = Citizen
      SHX5_2 = SHX5_2.Wait
      SHX6_2 = 0
      SHX5_2(SHX6_2)
    end
    SHX2_2 = SHX46_1
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    if not SHX2_2 then
      SHX2_2 = SHX42_1
      SHX3_2 = "CMG:pilotJobPickupLoc -> not aircraftLandingAtc"
      SHX4_2 = json
      SHX4_2 = SHX4_2.encode
      SHX5_2 = SHX0_2
      SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX4_2(SHX5_2)
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX2_2 = nil
      SHX16_1 = SHX2_2
      return
    end
  end
  SHX2_2 = nil
  SHX16_1 = SHX2_2
  SHX2_2 = SHX45_1
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    SHX2_2 = SHX42_1
    SHX3_2 = "passengerCollectionAtc -> not passengerCollectionAtc"
    SHX4_2 = json
    SHX4_2 = SHX4_2.encode
    SHX5_2 = SHX0_2
    SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX4_2(SHX5_2)
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    return
  end
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = drawNativeNotification
    SHX1_3 = "Press ~INPUT_CONTEXT~ to collect"
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
  end
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
    SHX0_3 = IsControlJustPressed
    SHX1_3 = 0
    SHX2_3 = 51
    SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
    if SHX0_3 then
      SHX0_3 = IsPedInVehicle
      SHX1_3 = CMG
      SHX1_3 = SHX1_3.getPlayerPed
      SHX1_3 = SHX1_3()
      SHX2_3 = SHX5_1
      SHX3_3 = false
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      if SHX0_3 then
        SHX0_3 = SHX11_1
        if not SHX0_3 then
          SHX0_3 = GetEntitySpeed
          SHX1_3 = CMG
          SHX1_3 = SHX1_3.getPlayerVehicle
          SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3 = SHX1_3()
          SHX0_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
          SHX0_3 = SHX0_3 * 2.236936
          if SHX0_3 < 5 then
            SHX0_3 = true
            SHX11_1 = SHX0_3
            SHX0_3 = false
            SHX10_1 = SHX0_3
            SHX0_3 = 1
            SHX1_3 = SHX4_1.doorsToToggle
            SHX1_3 = #SHX1_3
            SHX2_3 = 1
            for SHX3_3 = SHX0_3, SHX1_3, SHX2_3 do
              SHX4_3 = SetVehicleDoorOpen
              SHX5_3 = CMG
              SHX5_3 = SHX5_3.getPlayerVehicle
              SHX5_3 = SHX5_3()
              SHX6_3 = SHX4_1.doorsToToggle
              SHX6_3 = SHX6_3[SHX3_3]
              SHX7_3 = false
              SHX8_3 = false
              SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3)
            end
            SHX0_3 = TriggerServerEvent
            SHX1_3 = "2854d0f57f"
            SHX0_3(SHX1_3)
            SHX0_3 = FreezeEntityPosition
            SHX1_3 = CMG
            SHX1_3 = SHX1_3.getPlayerVehicle
            SHX1_3 = SHX1_3()
            SHX2_3 = true
            SHX0_3(SHX1_3, SHX2_3)
            SHX0_3 = SetVehicleEngineOn
            SHX1_3 = CMG
            SHX1_3 = SHX1_3.getPlayerVehicle
            SHX1_3 = SHX1_3()
            SHX2_3 = false
            SHX3_3 = true
            SHX4_3 = true
            SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
            SHX0_3 = Citizen
            SHX0_3 = SHX0_3.CreateThread
            function SHX1_3()
              -- [AI CLEANUP] Decompiled Lua - Fix these:
              -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
              -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
              -- 3. Replace goto/label with while/repeat-until where possible
              -- 4. Remove decompiler comments, add meaningful ones
              -- 5. Fix indentation and formatting
              
              local SHX0_4, SHX1_4, SHX2_4, SHX3_4
              SHX0_4 = SHX49_1
              SHX1_4 = true
              SHX2_4 = SHX0_2
              SHX3_4 = SHX1_2
              SHX0_4(SHX1_4, SHX2_4, SHX3_4)
            end
            SHX0_3(SHX1_3)
            SHX0_3 = tCMG
            SHX0_3 = SHX0_3.notify
            SHX1_3 = "~g~Picking up passengers!"
            SHX0_3(SHX1_3)
          else
            SHX0_3 = tCMG
            SHX0_3 = SHX0_3.notify
            SHX1_3 = "~r~You are going too fast!"
            SHX0_3(SHX1_3)
          end
      end
    end
    else
      SHX0_3 = IsControlJustPressed
      SHX1_3 = 0
      SHX2_3 = 51
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      if SHX0_3 then
        SHX0_3 = IsPedInVehicle
        SHX1_3 = CMG
        SHX1_3 = SHX1_3.getPlayerPed
        SHX1_3 = SHX1_3()
        SHX2_3 = SHX5_1
        SHX3_3 = false
        SHX0_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3)
        if not SHX0_3 then
          SHX0_3 = SHX11_1
          if not SHX0_3 then
            SHX0_3 = tCMG
            SHX0_3 = SHX0_3.notify
            SHX1_3 = "~r~You are not in your plane!"
            SHX0_3(SHX1_3)
          end
        end
      end
    end
  end
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.createArea
  SHX6_2 = "collectPassengers_"
  SHX7_2 = SHX0_2.coords
  SHX8_2 = 80
  SHX9_2 = 10
  SHX10_2 = SHX2_2
  SHX11_2 = SHX3_2
  SHX12_2 = SHX4_2
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
end
SHX54_1(SHX55_1, SHX56_1)
SHX54_1 = RegisterNetEvent
SHX55_1 = "a9dc9ed74f"
function SHX56_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX2_2 = print
  SHX3_2 = "triggering collected"
  SHX2_2(SHX3_2)
  SHX2_2 = tCMG
  SHX2_2 = SHX2_2.removeArea
  SHX3_2 = "collectPassengers_"
  SHX2_2(SHX3_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.drawPlaneScaleForm
  SHX3_2 = "~y~TRANSPORT PASSENGERS"
  SHX4_2 = string
  SHX4_2 = SHX4_2.format
  SHX5_2 = "Transport Passengers to %s"
  SHX6_2 = SHX0_2.name
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX2_2 = SHX17_1
  SHX3_2 = SHX18_1
  SHX3_2 = SHX3_2 * 0.2
  if SHX2_2 < SHX3_2 then
    SHX2_2 = tCMG
    SHX2_2 = SHX2_2.notify
    SHX3_2 = "~r~Remember to fuel your plane!"
    SHX2_2(SHX3_2)
  end
  SHX2_2 = SHX47_1
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    SHX2_2 = SHX42_1
    SHX3_2 = "CMG:pilotJobCollectedPassengers -> not aircraftTakeOffAtc"
    SHX4_2 = json
    SHX4_2 = SHX4_2.encode
    SHX5_2 = SHX0_2
    SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX4_2(SHX5_2)
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    return
  end
  SHX2_2 = SetNewWaypoint
  SHX3_2 = SHX0_2.coords
  SHX3_2 = SHX3_2.x
  SHX4_2 = SHX0_2.coords
  SHX4_2 = SHX4_2.y
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = "Fly to the destination ~y~airport~w~."
  SHX16_1 = SHX2_2
  while true do
    SHX2_2 = SHX0_2.coords
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.getPlayerCoords
    SHX3_2 = SHX3_2()
    SHX2_2 = SHX2_2 - SHX3_2
    SHX2_2 = #SHX2_2
    SHX3_2 = 1500
    if not (SHX2_2 > SHX3_2) then
      break
    end
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.getPlayerCoords
    SHX2_2 = SHX2_2()
    SHX3_2 = GetEntityHeading
    SHX4_2 = SHX5_1
    SHX3_2 = SHX3_2(SHX4_2)
    SHX4_2 = 360.0
    SHX3_2 = SHX4_2 - SHX3_2
    SHX4_2 = math
    SHX4_2 = SHX4_2.deg
    SHX5_2 = math
    SHX5_2 = SHX5_2.atan
    SHX6_2 = SHX0_2.coords
    SHX6_2 = SHX6_2.x
    SHX7_2 = SHX2_2.x
    SHX6_2 = SHX6_2 - SHX7_2
    SHX7_2 = SHX0_2.coords
    SHX7_2 = SHX7_2.y
    SHX8_2 = SHX2_2.y
    SHX7_2 = SHX7_2 - SHX8_2
    SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX5_2(SHX6_2, SHX7_2)
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX4_2 = SHX4_2 % 360
    SHX5_2 = math
    SHX5_2 = SHX5_2.abs
    SHX6_2 = SHX3_2 - SHX4_2
    SHX5_2 = SHX5_2(SHX6_2)
    if SHX5_2 > 25 then
      SHX5_2 = SHX53_1
      SHX6_2 = SHX4_2
      SHX7_2 = SHX3_2
      SHX5_2, SHX6_2 = SHX5_2(SHX6_2, SHX7_2)
      SHX7_2 = SHX52_1
      SHX8_2 = SHX5_2 < SHX6_2
      SHX7_2(SHX8_2)
    end
    SHX5_2 = SetNewWaypoint
    SHX6_2 = SHX0_2.coords
    SHX6_2 = SHX6_2.x
    SHX7_2 = SHX0_2.coords
    SHX7_2 = SHX7_2.y
    SHX5_2(SHX6_2, SHX7_2)
    SHX5_2 = DoesEntityExist
    SHX6_2 = SHX5_1
    SHX5_2 = SHX5_2(SHX6_2)
    if SHX5_2 then
      SHX5_2 = GetVehicleEngineHealth
      SHX6_2 = SHX5_1
      SHX5_2 = SHX5_2(SHX6_2)
      if SHX5_2 <= 0 then
        SHX5_2 = SHX42_1
        SHX6_2 = "CMG:pilotJobCollectedPassengers -> engine health"
        SHX7_2 = SHX5_1
        SHX5_2(SHX6_2, SHX7_2)
        SHX5_2 = nil
        SHX16_1 = SHX5_2
        return
      end
    else
      SHX5_2 = SHX42_1
      SHX6_2 = "CMG:pilotJobCollectedPassengers -> no vehicle"
      SHX7_2 = SHX5_1
      SHX5_2(SHX6_2, SHX7_2)
      SHX5_2 = nil
      SHX16_1 = SHX5_2
      return
    end
    SHX5_2 = Citizen
    SHX5_2 = SHX5_2.Wait
    SHX6_2 = 0
    SHX5_2(SHX6_2)
  end
  SHX2_2 = nil
  SHX16_1 = SHX2_2
  SHX2_2 = SHX46_1
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    SHX2_2 = SHX42_1
    SHX3_2 = "CMG:pilotJobCollectedPassengers -> not aircraftLandingAtc"
    SHX4_2 = json
    SHX4_2 = SHX4_2.encode
    SHX5_2 = SHX0_2
    SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX4_2(SHX5_2)
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    return
  end
  SHX2_2 = SHX45_1
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    SHX2_2 = SHX42_1
    SHX3_2 = "CMG:pilotJobCollectedPassengers -> not passengerCollectionAtc"
    SHX4_2 = json
    SHX4_2 = SHX4_2.encode
    SHX5_2 = SHX0_2
    SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX4_2(SHX5_2)
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    return
  end
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = drawNativeNotification
    SHX1_3 = "Press ~INPUT_CONTEXT~ to deliver"
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
  end
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
    SHX0_3 = IsControlJustPressed
    SHX1_3 = 0
    SHX2_3 = 51
    SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
    if SHX0_3 then
      SHX0_3 = IsPedInVehicle
      SHX1_3 = CMG
      SHX1_3 = SHX1_3.getPlayerPed
      SHX1_3 = SHX1_3()
      SHX2_3 = SHX5_1
      SHX3_3 = false
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      if SHX0_3 then
        SHX0_3 = SHX10_1
        if not SHX0_3 then
          SHX0_3 = true
          SHX10_1 = SHX0_3
          SHX0_3 = false
          SHX11_1 = SHX0_3
          SHX0_3 = 1
          SHX1_3 = SHX4_1.doorsToToggle
          SHX1_3 = #SHX1_3
          SHX2_3 = 1
          for SHX3_3 = SHX0_3, SHX1_3, SHX2_3 do
            SHX4_3 = SetVehicleDoorOpen
            SHX5_3 = CMG
            SHX5_3 = SHX5_3.getPlayerVehicle
            SHX5_3 = SHX5_3()
            SHX6_3 = SHX4_1.doorsToToggle
            SHX6_3 = SHX6_3[SHX3_3]
            SHX7_3 = false
            SHX8_3 = false
            SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3)
          end
          SHX0_3 = TriggerServerEvent
          SHX1_3 = "1f9d117c88"
          SHX2_3 = SHX41_1
          SHX0_3(SHX1_3, SHX2_3)
          SHX0_3 = 0
          SHX41_1 = SHX0_3
          SHX0_3 = SetVehicleEngineOn
          SHX1_3 = CMG
          SHX1_3 = SHX1_3.getPlayerVehicle
          SHX1_3 = SHX1_3()
          SHX2_3 = false
          SHX3_3 = false
          SHX4_3 = false
          SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
          SHX0_3 = FreezeEntityPosition
          SHX1_3 = CMG
          SHX1_3 = SHX1_3.getPlayerVehicle
          SHX1_3 = SHX1_3()
          SHX2_3 = true
          SHX0_3(SHX1_3, SHX2_3)
          SHX0_3 = Citizen
          SHX0_3 = SHX0_3.CreateThread
          function SHX1_3()
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX0_4, SHX1_4, SHX2_4, SHX3_4
            SHX0_4 = SHX49_1
            SHX1_4 = false
            SHX2_4 = SHX0_2
            SHX3_4 = SHX1_2
            SHX0_4(SHX1_4, SHX2_4, SHX3_4)
          end
          SHX0_3(SHX1_3)
          SHX0_3 = tCMG
          SHX0_3 = SHX0_3.notify
          SHX1_3 = "~g~Dropping off passengers!"
          SHX0_3(SHX1_3)
      end
    end
    else
      SHX0_3 = IsControlJustPressed
      SHX1_3 = 0
      SHX2_3 = 51
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      if SHX0_3 then
        SHX0_3 = IsPedInVehicle
        SHX1_3 = CMG
        SHX1_3 = SHX1_3.getPlayerPed
        SHX1_3 = SHX1_3()
        SHX2_3 = SHX5_1
        SHX3_3 = false
        SHX0_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3)
        if not SHX0_3 then
          SHX0_3 = SHX10_1
          if not SHX0_3 then
            SHX0_3 = tCMG
            SHX0_3 = SHX0_3.notify
            SHX1_3 = "~r~You are not in your plane!"
            SHX0_3(SHX1_3)
          end
        end
      end
    end
  end
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.createArea
  SHX6_2 = "dropOffPassengers_"
  SHX7_2 = SHX0_2.coords
  SHX8_2 = 80
  SHX9_2 = 10
  SHX10_2 = SHX2_2
  SHX11_2 = SHX3_2
  SHX12_2 = SHX4_2
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
end
SHX54_1(SHX55_1, SHX56_1)
SHX54_1 = false
SHX55_1 = RegisterNetEvent
SHX56_1 = "2fb2e09781"
function SHX57_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX19_1 = SHX0_2
  SHX20_1 = SHX1_2
  SHX2_2 = SHX54_1
  if not SHX2_2 then
    SHX2_2 = true
    SHX54_1 = SHX2_2
    SHX2_2 = true
    SHX3_1 = SHX2_2
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.CreateThread
    function SHX3_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3
      while true do
        SHX0_3 = SHX3_1
        if not SHX0_3 then
          break
        end
        SHX0_3 = IsPedInVehicle
        SHX1_3 = CMG
        SHX1_3 = SHX1_3.getPlayerPed
        SHX1_3 = SHX1_3()
        SHX2_3 = SHX5_1
        SHX3_3 = false
        SHX0_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3)
        if SHX0_3 then
          SHX0_3 = DrawRect
          SHX1_3 = SHX21_1.x
          SHX2_3 = SHX21_1.y
          SHX3_3 = SHX21_1.width
          SHX4_3 = SHX21_1.height
          SHX5_3 = 0
          SHX6_3 = 0
          SHX7_3 = 0
          SHX8_3 = 120
          SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
          SHX0_3 = DrawRect
          SHX1_3 = SHX22_1.x
          SHX2_3 = SHX22_1.y
          SHX3_3 = SHX22_1.width
          SHX4_3 = SHX22_1.height
          SHX5_3 = 0
          SHX6_3 = 200
          SHX7_3 = 0
          SHX8_3 = 255
          SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
          SHX0_3 = DrawRect
          SHX1_3 = SHX23_1.x
          SHX2_3 = SHX23_1.y
          SHX3_3 = SHX23_1.width
          SHX4_3 = SHX23_1.height
          SHX5_3 = 0
          SHX6_3 = 0
          SHX7_3 = 0
          SHX8_3 = 200
          SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
          SHX0_3 = DrawRect
          SHX1_3 = SHX24_1.x
          SHX2_3 = SHX24_1.y
          SHX3_3 = SHX24_1.width
          SHX4_3 = SHX24_1.height
          SHX5_3 = 0
          SHX6_3 = 0
          SHX7_3 = 0
          SHX8_3 = 200
          SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
          SHX0_3 = DrawRect
          SHX1_3 = SHX25_1.x
          SHX2_3 = SHX25_1.y
          SHX3_3 = SHX25_1.width
          SHX4_3 = SHX25_1.height
          SHX5_3 = 0
          SHX6_3 = 0
          SHX7_3 = 0
          SHX8_3 = 200
          SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
          SHX0_3 = DrawRect
          SHX1_3 = SHX26_1.x
          SHX2_3 = SHX26_1.y
          SHX3_3 = SHX26_1.width
          SHX4_3 = SHX26_1.height
          SHX5_3 = 0
          SHX6_3 = 0
          SHX7_3 = 0
          SHX8_3 = 200
          SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
          SHX0_3 = DrawSprite
          SHX1_3 = "pilotjob"
          SHX2_3 = "passengerSprite"
          SHX3_3 = SHX21_1.x
          SHX4_3 = SHX21_1.y
          SHX5_3 = 0.022
          SHX6_3 = 0.045
          SHX7_3 = 0.0
          SHX8_3 = 255
          SHX9_3 = 255
          SHX10_3 = 255
          SHX11_3 = 255
          SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
        end
        SHX0_3 = Wait
        SHX1_3 = 0
        SHX0_3(SHX1_3)
      end
    end
    SHX2_2(SHX3_2)
  end
  SHX2_2 = SHX54_1
  if SHX2_2 then
    SHX2_2 = SHX22_1.height
    SHX3_2 = SHX19_1
    SHX4_2 = SHX20_1
    SHX3_2 = SHX3_2 / SHX4_2
    SHX4_2 = SHX21_1.height
    SHX3_2 = SHX3_2 * SHX4_2
    SHX22_1.height = SHX3_2
    SHX3_2 = SHX22_1.y
    SHX4_2 = SHX22_1.height
    SHX4_2 = SHX4_2 - SHX2_2
    SHX4_2 = SHX4_2 / 2
    SHX3_2 = SHX3_2 - SHX4_2
    SHX22_1.y = SHX3_2
  end
end
SHX55_1(SHX56_1, SHX57_1)
SHX55_1 = RegisterNetEvent
SHX56_1 = "9ffaf6daa9"
function SHX57_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = false
  SHX8_1 = SHX0_2
  SHX0_2 = 0
  SHX19_1 = SHX0_2
  SHX0_2 = 0
  SHX17_1 = SHX0_2
  SHX0_2 = 150
  SHX18_1 = SHX0_2
  SHX0_2 = false
  SHX9_1 = SHX0_2
  SHX0_2 = false
  SHX10_1 = SHX0_2
  SHX0_2 = false
  SHX11_1 = SHX0_2
  SHX0_2 = DeleteCheckpoint
  SHX1_2 = SHX12_1
  SHX0_2(SHX1_2)
  SHX0_2 = DeleteEntity
  SHX1_2 = SHX6_1
  SHX0_2(SHX1_2)
  SHX0_2 = DeleteEntity
  SHX1_2 = SHX5_1
  SHX0_2(SHX1_2)
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.removeArea
  SHX1_2 = "collectPassengers_"
  SHX0_2(SHX1_2)
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.removeArea
  SHX1_2 = "dropOffPassengers_"
  SHX0_2(SHX1_2)
  SHX0_2 = 1
  SHX1_2 = SHX2_1
  SHX1_2 = #SHX1_2
  SHX2_2 = 1
  for SHX3_2 = SHX0_2, SHX1_2, SHX2_2 do
    SHX4_2 = DeleteCheckpoint
    SHX5_2 = SHX2_1
    SHX5_2 = SHX5_2[SHX3_2]
    SHX4_2(SHX5_2)
    SHX4_2 = tCMG
    SHX4_2 = SHX4_2.removeArea
    SHX5_2 = "fuelPlane_"
    SHX6_2 = SHX3_2
    SHX5_2 = SHX5_2 .. SHX6_2
    SHX4_2(SHX5_2)
  end
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "e1cb2b3c18"
  SHX2_2 = SHX14_1
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "229bf66229"
  SHX2_2 = SHX15_1
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetLocalPlayerAsGhost
  SHX1_2 = false
  SHX0_2(SHX1_2)
  SHX0_2 = SetEntityAlpha
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = 255
  SHX3_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerVehicle
  SHX0_2 = SHX0_2()
  if 0 ~= SHX0_2 then
    SHX1_2 = SetNetworkVehicleAsGhost
    SHX2_2 = SHX0_2
    SHX3_2 = false
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SetEntityAlpha
    SHX2_2 = SHX0_2
    SHX3_2 = 255
    SHX4_2 = false
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  end
end
SHX55_1(SHX56_1, SHX57_1)
SHX55_1 = RegisterNetEvent
SHX56_1 = "b0652830d5"
function SHX57_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  function SHX0_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = drawNativeNotification
    SHX1_3 = "Press ~INPUT_CONTEXT~ to fuel plane"
    SHX0_3(SHX1_3)
  end
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  function SHX2_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3, SHX3_3
    SHX1_3 = GetEntitySpeed
    SHX2_3 = CMG
    SHX2_3 = SHX2_3.getPlayerVehicle
    SHX2_3, SHX3_3 = SHX2_3()
    SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
    if SHX1_3 < 5 then
      SHX1_3 = IsControlJustPressed
      SHX2_3 = 0
      SHX3_3 = 51
      SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
      if SHX1_3 then
        SHX1_3 = SHX9_1
        if not SHX1_3 then
          SHX1_3 = SHX17_1
          SHX2_3 = 145
          if SHX1_3 < SHX2_3 then
            SHX1_3 = tCMG
            SHX1_3 = SHX1_3.notify
            SHX2_3 = "~g~Your plane will begin refuelling shortly"
            SHX1_3(SHX2_3)
            SHX1_3 = true
            SHX9_1 = SHX1_3
            SHX1_3 = Citizen
            SHX1_3 = SHX1_3.CreateThread
            function SHX2_3()
              -- [AI CLEANUP] Decompiled Lua - Fix these:
              -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
              -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
              -- 3. Replace goto/label with while/repeat-until where possible
              -- 4. Remove decompiler comments, add meaningful ones
              -- 5. Fix indentation and formatting
              
              local SHX0_4, SHX1_4
              SHX0_4 = SHX51_1
              SHX0_4()
              SHX0_4 = SHX48_1
              SHX1_4 = SHX0_3.currentStation
              SHX0_4(SHX1_4)
            end
            SHX1_3(SHX2_3)
        end
      end
      else
        SHX1_3 = IsControlJustPressed
        SHX2_3 = 0
        SHX3_3 = 51
        SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
        if SHX1_3 then
          SHX1_3 = SHX9_1
          if SHX1_3 then
            SHX1_3 = tCMG
            SHX1_3 = SHX1_3.notify
            SHX2_3 = "~r~Your plane is currently being refuelled!"
            SHX1_3(SHX2_3)
        end
        else
          SHX1_3 = IsControlJustPressed
          SHX2_3 = 0
          SHX3_3 = 51
          SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
          if SHX1_3 then
            SHX1_3 = SHX17_1
            SHX2_3 = 145
            if SHX1_3 >= SHX2_3 then
              SHX1_3 = tCMG
              SHX1_3 = SHX1_3.notify
              SHX2_3 = "~r~Your plane is full of fuel!"
              SHX1_3(SHX2_3)
            end
          end
        end
      end
    else
      SHX1_3 = tCMG
      SHX1_3 = SHX1_3.notify
      SHX2_3 = "~r~You are going too fast!"
      SHX1_3(SHX2_3)
    end
  end
  SHX3_2 = 1
  SHX4_2 = SHX1_1
  SHX4_2 = #SHX4_2
  SHX5_2 = 1
  for SHX6_2 = SHX3_2, SHX4_2, SHX5_2 do
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.createArea
    SHX8_2 = "fuelPlane_"
    SHX9_2 = SHX6_2
    SHX8_2 = SHX8_2 .. SHX9_2
    SHX9_2 = SHX1_1
    SHX9_2 = SHX9_2[SHX6_2]
    SHX9_2 = SHX9_2.coords
    SHX10_2 = 25
    SHX11_2 = 10
    SHX12_2 = SHX0_2
    SHX13_2 = SHX1_2
    SHX14_2 = SHX2_2
    SHX15_2 = {}
    SHX15_2.currentStation = SHX6_2
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    SHX7_2 = tCMG
    SHX7_2 = SHX7_2.addBlip
    SHX8_2 = SHX1_1
    SHX8_2 = SHX8_2[SHX6_2]
    SHX8_2 = SHX8_2.coords
    SHX8_2 = SHX8_2.x
    SHX9_2 = SHX1_1
    SHX9_2 = SHX9_2[SHX6_2]
    SHX9_2 = SHX9_2.coords
    SHX9_2 = SHX9_2.y
    SHX10_2 = SHX1_1
    SHX10_2 = SHX10_2[SHX6_2]
    SHX10_2 = SHX10_2.coords
    SHX10_2 = SHX10_2.z
    SHX11_2 = 361
    SHX12_2 = 46
    SHX13_2 = "Fuel Plane"
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  end
end
SHX55_1(SHX56_1, SHX57_1)
SHX55_1 = RegisterNetEvent
SHX56_1 = "671af762e6"
function SHX57_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2
  function SHX0_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = drawNativeNotification
    SHX1_3 = "Press ~INPUT_CONTEXT~ to repair your plane"
    SHX0_3(SHX1_3)
  end
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3
    SHX0_3 = IsControlJustPressed
    SHX1_3 = 0
    SHX2_3 = 51
    SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
    if SHX0_3 then
      SHX0_3 = globalOnPilotDuty
      if SHX0_3 then
        SHX0_3 = IsPedInVehicle
        SHX1_3 = CMG
        SHX1_3 = SHX1_3.getPlayerPed
        SHX1_3 = SHX1_3()
        SHX2_3 = SHX5_1
        SHX3_3 = false
        SHX0_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3)
        if SHX0_3 then
          SHX0_3 = GetEntitySpeed
          SHX1_3 = SHX5_1
          SHX0_3 = SHX0_3(SHX1_3)
          if SHX0_3 < 5.0 then
            SHX0_3 = tCMG
            SHX0_3 = SHX0_3.notify
            SHX1_3 = "~g~Your plane is being repaired!"
            SHX0_3(SHX1_3)
            SHX0_3 = FreezeEntityPosition
            SHX1_3 = SHX5_1
            SHX2_3 = true
            SHX0_3(SHX1_3, SHX2_3)
            SHX0_3 = Citizen
            SHX0_3 = SHX0_3.Wait
            SHX1_3 = 15000
            SHX0_3(SHX1_3)
            SHX0_3 = SetVehicleFixed
            SHX1_3 = SHX5_1
            SHX0_3(SHX1_3)
            SHX0_3 = SetVehicleEngineHealth
            SHX1_3 = SHX5_1
            SHX2_3 = 1000.0
            SHX0_3(SHX1_3, SHX2_3)
            SHX0_3 = SetVehicleBodyHealth
            SHX1_3 = SHX5_1
            SHX2_3 = 1000.0
            SHX0_3(SHX1_3, SHX2_3)
            SHX0_3 = SetVehicleDeformationFixed
            SHX1_3 = SHX5_1
            SHX0_3(SHX1_3)
            SHX0_3 = SetVehiclePetrolTankHealth
            SHX1_3 = SHX5_1
            SHX2_3 = 1000.0
            SHX0_3(SHX1_3, SHX2_3)
            SHX0_3 = FreezeEntityPosition
            SHX1_3 = SHX5_1
            SHX2_3 = false
            SHX0_3(SHX1_3, SHX2_3)
            SHX0_3 = tCMG
            SHX0_3 = SHX0_3.notify
            SHX1_3 = "~g~Your plane has been repaired!"
            SHX0_3(SHX1_3)
          else
            SHX0_3 = tCMG
            SHX0_3 = SHX0_3.notify
            SHX1_3 = "~r~You are going too fast!"
            SHX0_3(SHX1_3)
          end
        end
      end
    end
  end
  SHX3_2 = SHX0_1.planeRepairStations
  SHX4_2 = 1
  SHX5_2 = #SHX3_2
  SHX6_2 = 1
  for SHX7_2 = SHX4_2, SHX5_2, SHX6_2 do
    SHX8_2 = CMG
    SHX8_2 = SHX8_2.createArea
    SHX9_2 = "pilotRepairStations_"
    SHX10_2 = SHX7_2
    SHX9_2 = SHX9_2 .. SHX10_2
    SHX10_2 = SHX3_2[SHX7_2]
    SHX10_2 = SHX10_2.coords
    SHX11_2 = 25
    SHX12_2 = 10
    SHX13_2 = SHX0_2
    SHX14_2 = SHX1_2
    SHX15_2 = SHX2_2
    SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    SHX8_2 = tCMG
    SHX8_2 = SHX8_2.addBlip
    SHX9_2 = SHX3_2[SHX7_2]
    SHX9_2 = SHX9_2.coords
    SHX9_2 = SHX9_2.x
    SHX10_2 = SHX3_2[SHX7_2]
    SHX10_2 = SHX10_2.coords
    SHX10_2 = SHX10_2.y
    SHX11_2 = SHX3_2[SHX7_2]
    SHX11_2 = SHX11_2.coords
    SHX11_2 = SHX11_2.z
    SHX12_2 = 446
    SHX13_2 = 46
    SHX14_2 = "Repair Plane"
    SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX8_2 = CreateCheckpoint
    SHX9_2 = 47
    SHX10_2 = SHX3_2[SHX7_2]
    SHX10_2 = SHX10_2.coords
    SHX10_2 = SHX10_2.x
    SHX11_2 = SHX3_2[SHX7_2]
    SHX11_2 = SHX11_2.coords
    SHX11_2 = SHX11_2.y
    SHX12_2 = SHX3_2[SHX7_2]
    SHX12_2 = SHX12_2.coords
    SHX12_2 = SHX12_2.z
    SHX12_2 = SHX12_2 - 6.5
    SHX13_2 = SHX3_2[SHX7_2]
    SHX13_2 = SHX13_2.coords
    SHX13_2 = SHX13_2.x
    SHX14_2 = SHX3_2[SHX7_2]
    SHX14_2 = SHX14_2.coords
    SHX14_2 = SHX14_2.y
    SHX15_2 = SHX3_2[SHX7_2]
    SHX15_2 = SHX15_2.coords
    SHX15_2 = SHX15_2.z
    SHX16_2 = 25.0
    SHX17_2 = 255
    SHX18_2 = 215
    SHX19_2 = 0
    SHX20_2 = 150
    SHX21_2 = 0
    SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
  end
end
SHX55_1(SHX56_1, SHX57_1)
function SHX55_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = true
  while SHX1_2 do
    SHX2_2 = IsPedInVehicle
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.getPlayerPed
    SHX3_2 = SHX3_2()
    SHX4_2 = SHX5_1
    SHX5_2 = false
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    if not SHX2_2 then
      break
    end
    SHX2_2 = RageUI
    SHX2_2 = SHX2_2.Visible
    SHX3_2 = RMenu
    SHX4_2 = SHX3_2
    SHX3_2 = SHX3_2.Get
    SHX5_2 = "CMGpilotJob"
    SHX6_2 = "atcMenu"
    SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    if not SHX2_2 then
      SHX2_2 = RageUI
      SHX2_2 = SHX2_2.Visible
      SHX3_2 = RMenu
      SHX4_2 = SHX3_2
      SHX3_2 = SHX3_2.Get
      SHX5_2 = "CMGpilotJob"
      SHX6_2 = "atcMenu"
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
      SHX4_2 = true
      SHX2_2(SHX3_2, SHX4_2)
    end
    SHX2_2 = RageUI
    SHX2_2 = SHX2_2.IsVisible
    SHX3_2 = RMenu
    SHX4_2 = SHX3_2
    SHX3_2 = SHX3_2.Get
    SHX5_2 = "CMGpilotJob"
    SHX6_2 = "atcMenu"
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    SHX4_2 = true
    SHX5_2 = false
    SHX6_2 = true
    function SHX7_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Button
      SHX1_3 = "> Communicate to ATC"
      SHX2_3 = SHX0_2
      SHX3_3 = true
      function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4
        if SHX1_4 then
          SHX3_4 = IsControlJustPressed
          SHX4_4 = 0
          SHX5_4 = 202
          SHX3_4 = SHX3_4(SHX4_4, SHX5_4)
          if not SHX3_4 then
            SHX3_4 = IsControlJustPressed
            SHX4_4 = 0
            SHX5_4 = 194
            SHX3_4 = SHX3_4(SHX4_4, SHX5_4)
            if not SHX3_4 then
              SHX3_4 = IsControlJustPressed
              SHX4_4 = 0
              SHX5_4 = 177
              SHX3_4 = SHX3_4(SHX4_4, SHX5_4)
              if not SHX3_4 then
                goto SHX_LABEL_34
              end
            end
          end
          SHX3_4 = Citizen
          SHX3_4 = SHX3_4.Wait
          SHX4_4 = 1000
          SHX3_4(SHX4_4)
          SHX3_4 = RageUI
          SHX3_4 = SHX3_4.Visible
          SHX4_4 = RMenu
          SHX5_4 = SHX4_4
          SHX4_4 = SHX4_4.Get
          SHX6_4 = "CMGpilotJob"
          SHX7_4 = "atcMenu"
          SHX4_4 = SHX4_4(SHX5_4, SHX6_4, SHX7_4)
          SHX5_4 = true
          SHX3_4(SHX4_4, SHX5_4)
        end
        -- [FIX IF ERROR] Move ::SHX_LABEL_34:: outside nested blocks until all 'goto SHX_LABEL_34' can see it
        ::SHX_LABEL_34::
        if SHX2_4 then
          SHX3_4 = false
          SHX1_2 = SHX3_4
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
    end
    function SHX8_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX2_2 = Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
  SHX2_2 = RageUI
  SHX2_2 = SHX2_2.Visible
  SHX3_2 = RMenu
  SHX4_2 = SHX3_2
  SHX3_2 = SHX3_2.Get
  SHX5_2 = "CMGpilotJob"
  SHX6_2 = "atcMenu"
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX4_2 = false
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = RageUI
  SHX2_2 = SHX2_2.CloseAll
  SHX2_2()
end
SHX43_1 = SHX55_1
function SHX55_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = GetEntityHeightAboveGround
  SHX1_2 = SHX5_1
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 > 10 then
    SHX0_2 = true
    SHX7_1 = SHX0_2
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.drawPlaneScaleForm
    SHX1_2 = "~r~LAND YOUR PLANE"
    SHX2_2 = "You need clearance before taking off!"
    SHX0_2(SHX1_2, SHX2_2)
    while true do
      SHX0_2 = GetEntityHeightAboveGround
      SHX1_2 = SHX5_1
      SHX0_2 = SHX0_2(SHX1_2)
      if not (SHX0_2 > 10) then
        break
      end
      SHX0_2 = Citizen
      SHX0_2 = SHX0_2.Wait
      SHX1_2 = 500
      SHX0_2(SHX1_2)
    end
    SHX0_2 = false
    SHX7_1 = SHX0_2
  end
end
SHX44_1 = SHX55_1
function SHX55_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.arePilotJobGuidesDisabled
  SHX1_2 = SHX1_2()
  if not SHX1_2 then
    SHX1_2 = SendNUIMessage
    SHX2_2 = SHX0_2
    SHX1_2(SHX2_2)
  end
end
function SHX56_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX0_1.audios
  SHX1_2 = SHX1_2[SHX0_2]
  if not SHX1_2 then
    return
  end
  SHX2_2 = SHX55_1
  SHX3_2 = SHX1_2.name
  SHX2_2(SHX3_2)
  SHX2_2 = SHX1_2.subtitle
  SHX16_1 = SHX2_2
  SHX2_2 = GetGameTimer
  SHX2_2 = SHX2_2()
  while true do
    SHX3_2 = GetGameTimer
    SHX3_2 = SHX3_2()
    SHX3_2 = SHX3_2 - SHX2_2
    SHX4_2 = SHX1_2.durationMsec
    if not (SHX3_2 < SHX4_2) then
      break
    end
    SHX3_2 = Wait
    SHX4_2 = 0
    SHX3_2(SHX4_2)
  end
  SHX3_2 = nil
  SHX16_1 = SHX3_2
end
function SHX57_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX1_2 = SHX44_1
  SHX1_2()
  SHX1_2 = SHX19_1
  if 0 == SHX1_2 then
    SHX1_2 = FreezeEntityPosition
    SHX2_2 = SHX5_1
    SHX3_2 = true
    SHX1_2(SHX2_2, SHX3_2)
  end
  SHX1_2 = SHX43_1
  SHX2_2 = "Ground Control this is Charlie Mike Golf One Five Four Three Three requesting clearance for taxi to gate 1"
  SHX1_2(SHX2_2)
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.Wait
  SHX2_2 = 1500
  SHX1_2(SHX2_2)
  SHX1_2 = SHX56_1
  SHX2_2 = "taxi_gate"
  SHX1_2(SHX2_2)
  SHX1_2 = SHX43_1
  SHX2_2 = "Taxi'ing to gate 1 Charlie Mike Golf One Five Four Three Three"
  SHX1_2(SHX2_2)
  SHX1_2 = FreezeEntityPosition
  SHX2_2 = SHX5_1
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.Wait
  SHX2_2 = 1500
  SHX1_2(SHX2_2)
  SHX1_2 = SetNewWaypoint
  SHX2_2 = SHX0_2.coords
  SHX2_2 = SHX2_2.x
  SHX3_2 = SHX0_2.coords
  SHX3_2 = SHX3_2.y
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = CreateCheckpoint
  SHX2_2 = 47
  SHX3_2 = SHX0_2.coords
  SHX3_2 = SHX3_2.x
  SHX4_2 = SHX0_2.coords
  SHX4_2 = SHX4_2.y
  SHX5_2 = SHX0_2.coords
  SHX5_2 = SHX5_2.z
  SHX5_2 = SHX5_2 - 10.5
  SHX6_2 = SHX0_2.coords
  SHX6_2 = SHX6_2.x
  SHX7_2 = SHX0_2.coords
  SHX7_2 = SHX7_2.y
  SHX8_2 = SHX0_2.coords
  SHX8_2 = SHX8_2.z
  SHX9_2 = 75.0
  SHX10_2 = 255
  SHX11_2 = 215
  SHX12_2 = 0
  SHX13_2 = 150
  SHX14_2 = 0
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX12_1 = SHX1_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.drawPlaneScaleForm
  SHX2_2 = "~g~TAXI YOUR PLANE"
  SHX3_2 = "Taxi your plane to the correct gate marked on your GPS"
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = "Taxi your ~b~aircraft~w~ to the ~y~gate~w~."
  SHX16_1 = SHX1_2
  while true do
    SHX1_2 = SHX0_2.coords
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.getPlayerCoords
    SHX2_2 = SHX2_2()
    SHX1_2 = SHX1_2 - SHX2_2
    SHX1_2 = #SHX1_2
    if not (SHX1_2 > 50) then
      break
    end
    SHX1_2 = DoesEntityExist
    SHX2_2 = SHX5_1
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = GetVehicleEngineHealth
      SHX2_2 = SHX5_1
      SHX1_2 = SHX1_2(SHX2_2)
      if SHX1_2 <= 0 then
        SHX1_2 = nil
        SHX16_1 = SHX1_2
        SHX1_2 = false
        return SHX1_2
      end
    else
      SHX1_2 = nil
      SHX16_1 = SHX1_2
      SHX1_2 = false
      return SHX1_2
    end
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = 500
    SHX1_2(SHX2_2)
  end
  SHX1_2 = nil
  SHX16_1 = SHX1_2
  SHX1_2 = DeleteCheckpoint
  SHX2_2 = SHX12_1
  SHX1_2(SHX2_2)
  SHX1_2 = SHX19_1
  if SHX1_2 > 0 then
    SHX1_2 = SHX43_1
    SHX2_2 = "Ground Control Charlie Mike Golf One Five Four Three Three taxi to gate 1 complete, requesting passenger disembarkment"
    SHX1_2(SHX2_2)
  else
    SHX1_2 = SHX43_1
    SHX2_2 = "Ground Control Charlie Mike Golf One Five Four Three Three taxi to gate 1 complete, requesting passenger boarding to commence"
    SHX1_2(SHX2_2)
  end
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.Wait
  SHX2_2 = 1500
  SHX1_2(SHX2_2)
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.Wait
  SHX2_2 = 5000
  SHX1_2(SHX2_2)
  SHX1_2 = SHX43_1
  SHX2_2 = "Received, Charlie Mike Golf One Five Four Three Three"
  SHX1_2(SHX2_2)
  SHX1_2 = true
  return SHX1_2
end
SHX45_1 = SHX57_1
function SHX57_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX0_2 = nil
  SHX1_2 = 2200.0
  SHX2_2 = 1
  SHX3_2 = SHX0_1.takeOffLocs
  SHX3_2 = #SHX3_2
  SHX4_2 = 1
  for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = SHX0_1.takeOffLocs
    SHX6_2 = SHX6_2[SHX5_2]
    SHX6_2 = SHX6_2.coords
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.getPlayerCoords
    SHX7_2 = SHX7_2()
    SHX6_2 = SHX6_2 - SHX7_2
    SHX6_2 = #SHX6_2
    if SHX1_2 >= SHX6_2 then
      SHX7_2 = SHX0_1.takeOffLocs
      SHX0_2 = SHX7_2[SHX5_2]
      SHX1_2 = SHX6_2
      break
    end
  end
  if nil ~= SHX0_2 then
    SHX2_2 = SHX43_1
    SHX3_2 = "Tower Control this is Charlie Mike Golf One Five Four Three Three entering your airspace now, requesting clearance to land on runway 1"
    SHX2_2(SHX3_2)
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = 1500
    SHX2_2(SHX3_2)
    SHX2_2 = SHX56_1
    SHX3_2 = "cleared_landing"
    SHX2_2(SHX3_2)
    SHX2_2 = "Land on the ~y~airport~w~ runway."
    SHX16_1 = SHX2_2
    SHX2_2 = CreateCheckpoint
    SHX3_2 = 47
    SHX4_2 = SHX0_2.landingCoords
    SHX4_2 = SHX4_2.x
    SHX5_2 = SHX0_2.landingCoords
    SHX5_2 = SHX5_2.y
    SHX6_2 = SHX0_2.landingCoords
    SHX6_2 = SHX6_2.z
    SHX6_2 = SHX6_2 - 5.0
    SHX7_2 = SHX0_2.checkpointHeading
    SHX7_2 = SHX7_2.x
    SHX8_2 = SHX0_2.checkpointHeading
    SHX8_2 = SHX8_2.y
    SHX9_2 = SHX0_2.checkpointHeading
    SHX9_2 = SHX9_2.z
    SHX10_2 = 75.0
    SHX11_2 = 255
    SHX12_2 = 215
    SHX13_2 = 0
    SHX14_2 = 150
    SHX15_2 = 0
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    SHX12_1 = SHX2_2
    while true do
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.getPlayerCoords
      SHX2_2 = SHX2_2()
      SHX2_2 = SHX2_2.z
      SHX3_2 = SHX0_2.landingCoords
      SHX3_2 = SHX3_2.z
      SHX4_2 = SHX4_1.landedZ
      SHX3_2 = SHX3_2 + SHX4_2
      if not (SHX2_2 > SHX3_2) then
        break
      end
      SHX2_2 = DoesEntityExist
      SHX3_2 = SHX5_1
      SHX2_2 = SHX2_2(SHX3_2)
      if SHX2_2 then
        SHX2_2 = GetVehicleEngineHealth
        SHX3_2 = SHX5_1
        SHX2_2 = SHX2_2(SHX3_2)
        if SHX2_2 <= 0 then
          SHX2_2 = nil
          SHX16_1 = SHX2_2
          SHX2_2 = false
          return SHX2_2
        end
      else
        SHX2_2 = nil
        SHX16_1 = SHX2_2
        SHX2_2 = false
        return SHX2_2
      end
      SHX2_2 = Citizen
      SHX2_2 = SHX2_2.Wait
      SHX3_2 = 500
      SHX2_2(SHX3_2)
    end
    while true do
      SHX2_2 = GetEntitySpeed
      SHX3_2 = SHX5_1
      SHX2_2 = SHX2_2(SHX3_2)
      if not (SHX2_2 > 2.0) then
        break
      end
      SHX2_2 = DoesEntityExist
      SHX3_2 = SHX5_1
      SHX2_2 = SHX2_2(SHX3_2)
      if SHX2_2 then
        SHX2_2 = GetVehicleEngineHealth
        SHX3_2 = SHX5_1
        SHX2_2 = SHX2_2(SHX3_2)
        if SHX2_2 <= 0 then
          SHX2_2 = nil
          SHX16_1 = SHX2_2
          SHX2_2 = false
          return SHX2_2
        end
      else
        SHX2_2 = nil
        SHX16_1 = SHX2_2
        SHX2_2 = false
        return SHX2_2
      end
      SHX2_2 = Citizen
      SHX2_2 = SHX2_2.Wait
      SHX3_2 = 500
      SHX2_2(SHX3_2)
    end
    SHX2_2 = DeleteCheckpoint
    SHX3_2 = SHX12_1
    SHX2_2(SHX3_2)
    SHX2_2 = SHX43_1
    SHX3_2 = string
    SHX3_2 = SHX3_2.format
    SHX4_2 = "Tower Control Charlie Mike Golf One Five Four Three Three has landed on runway one at %s:%s hours"
    SHX5_2 = GetClockHours
    SHX5_2 = SHX5_2()
    SHX6_2 = GetClockMinutes
    SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX6_2()
    SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = 1500
    SHX2_2(SHX3_2)
    SHX2_2 = SHX56_1
    SHX3_2 = "contact_ground"
    SHX2_2(SHX3_2)
    SHX2_2 = SHX43_1
    SHX3_2 = "Received, contacting ground control Charlie Mike Golf One Five Four Three Three"
    SHX2_2(SHX3_2)
    SHX2_2 = nil
    SHX16_1 = SHX2_2
    SHX2_2 = true
    return SHX2_2
  end
  SHX2_2 = nil
  SHX16_1 = SHX2_2
  SHX2_2 = false
  return SHX2_2
end
SHX46_1 = SHX57_1
function SHX57_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX0_2 = nil
  SHX1_2 = SHX0_1.takeOffLocs
  SHX2_2 = 1
  SHX3_2 = #SHX1_2
  SHX4_2 = 1
  for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = SHX1_2[SHX5_2]
    SHX6_2 = SHX6_2.coords
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.getPlayerCoords
    SHX7_2 = SHX7_2()
    SHX6_2 = SHX6_2 - SHX7_2
    SHX6_2 = #SHX6_2
    SHX7_2 = 500
    if SHX6_2 < SHX7_2 then
      SHX0_2 = SHX1_2[SHX5_2]
      break
    end
  end
  if nil ~= SHX0_2 then
    SHX2_2 = SHX44_1
    SHX2_2()
    SHX2_2 = FreezeEntityPosition
    SHX3_2 = SHX5_1
    SHX4_2 = true
    SHX2_2(SHX3_2, SHX4_2)
    SHX2_2 = SHX43_1
    SHX3_2 = "Ground Control this is Charlie Mike Golf One Five Four Three Three at gate 1 requesting clearance for taxi to runway one for departure"
    SHX2_2(SHX3_2)
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = 1500
    SHX2_2(SHX3_2)
    SHX2_2 = SHX56_1
    SHX3_2 = "taxi_runway"
    SHX2_2(SHX3_2)
    SHX2_2 = SHX43_1
    SHX3_2 = "Taxi'ing to runway one Charlie Mike Golf One Five Four Three Three"
    SHX2_2(SHX3_2)
    SHX2_2 = FreezeEntityPosition
    SHX3_2 = SHX5_1
    SHX4_2 = false
    SHX2_2(SHX3_2, SHX4_2)
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = 1500
    SHX2_2(SHX3_2)
    SHX2_2 = "Taxi your ~b~aircraft~w~ to the ~y~runway~w~."
    SHX16_1 = SHX2_2
    SHX2_2 = SetNewWaypoint
    SHX3_2 = SHX0_2.coords
    SHX3_2 = SHX3_2.x
    SHX4_2 = SHX0_2.coords
    SHX4_2 = SHX4_2.y
    SHX2_2(SHX3_2, SHX4_2)
    SHX2_2 = CreateCheckpoint
    SHX3_2 = 1
    SHX4_2 = SHX0_2.coords
    SHX4_2 = SHX4_2.x
    SHX5_2 = SHX0_2.coords
    SHX5_2 = SHX5_2.y
    SHX6_2 = SHX0_2.coords
    SHX6_2 = SHX6_2.z
    SHX7_2 = SHX0_2.checkpointHeading
    SHX7_2 = SHX7_2.x
    SHX8_2 = SHX0_2.checkpointHeading
    SHX8_2 = SHX8_2.y
    SHX9_2 = SHX0_2.checkpointHeading
    SHX9_2 = SHX9_2.z
    SHX10_2 = 30.0
    SHX11_2 = 0
    SHX12_2 = 150
    SHX13_2 = 0
    SHX14_2 = 150
    SHX15_2 = 0
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    SHX12_1 = SHX2_2
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.drawPlaneScaleForm
    SHX3_2 = "~g~TAXI YOUR PLANE"
    SHX4_2 = "Taxi your plane to the correct runway marked on your GPS"
    SHX2_2(SHX3_2, SHX4_2)
    while true do
      SHX2_2 = SHX0_2.coords
      SHX3_2 = CMG
      SHX3_2 = SHX3_2.getPlayerCoords
      SHX3_2 = SHX3_2()
      SHX2_2 = SHX2_2 - SHX3_2
      SHX2_2 = #SHX2_2
      if not (SHX2_2 > 50) then
        break
      end
      SHX2_2 = DoesEntityExist
      SHX3_2 = SHX5_1
      SHX2_2 = SHX2_2(SHX3_2)
      if SHX2_2 then
        SHX2_2 = GetVehicleEngineHealth
        SHX3_2 = SHX5_1
        SHX2_2 = SHX2_2(SHX3_2)
        if SHX2_2 <= 0 then
          SHX2_2 = nil
          SHX16_1 = SHX2_2
          SHX2_2 = false
          return SHX2_2
        end
      else
        SHX2_2 = nil
        SHX16_1 = SHX2_2
        SHX2_2 = false
        return SHX2_2
      end
      SHX2_2 = Citizen
      SHX2_2 = SHX2_2.Wait
      SHX3_2 = 500
      SHX2_2(SHX3_2)
    end
    while true do
      SHX2_2 = GetEntityHeading
      SHX3_2 = CMG
      SHX3_2 = SHX3_2.getPlayerVehicle
      SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX3_2()
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
      SHX3_2 = SHX0_2.heading
      SHX3_2 = SHX3_2 + 5
      if SHX2_2 <= SHX3_2 then
        SHX3_2 = SHX0_2.heading
        SHX3_2 = SHX3_2 - 5
        if SHX2_2 >= SHX3_2 then
          break
        end
      end
      SHX3_2 = "Turn your ~b~aircraft~w~ towards the ~y~runway~w~."
      SHX16_1 = SHX3_2
      SHX3_2 = SHX53_1
      SHX4_2 = SHX0_2.heading
      SHX5_2 = SHX2_2
      SHX3_2, SHX4_2 = SHX3_2(SHX4_2, SHX5_2)
      SHX5_2 = SHX52_1
      SHX6_2 = SHX4_2 < SHX3_2
      SHX5_2(SHX6_2)
      SHX5_2 = Citizen
      SHX5_2 = SHX5_2.Wait
      SHX6_2 = 0
      SHX5_2(SHX6_2)
    end
    SHX2_2 = nil
    SHX16_1 = SHX2_2
    SHX2_2 = DeleteCheckpoint
    SHX3_2 = SHX12_1
    SHX2_2(SHX3_2)
    SHX2_2 = SHX44_1
    SHX2_2()
    SHX2_2 = FreezeEntityPosition
    SHX3_2 = SHX5_1
    SHX4_2 = true
    SHX2_2(SHX3_2, SHX4_2)
    SHX2_2 = SHX43_1
    SHX3_2 = "Ground Control Charlie Mike Golf One Five Four Three Three, taxi to runway one complete"
    SHX2_2(SHX3_2)
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = 1500
    SHX2_2(SHX3_2)
    SHX2_2 = SHX56_1
    SHX3_2 = "contact_tower"
    SHX2_2(SHX3_2)
    SHX2_2 = SHX43_1
    SHX3_2 = "Contacting tower control Charlie Mike Golf One Five Four Three Three"
    SHX2_2(SHX3_2)
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = 1500
    SHX2_2(SHX3_2)
    SHX2_2 = SHX43_1
    SHX3_2 = "Tower Control Charlie Mike Golf One Five Four Three Three at runway 1 requesting clearance for take-off"
    SHX2_2(SHX3_2)
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = 1500
    SHX2_2(SHX3_2)
    SHX2_2 = SHX55_1
    SHX3_2 = {}
    SHX3_2.transactionType = "pilotSeatbelt"
    SHX2_2(SHX3_2)
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = 3000
    SHX2_2(SHX3_2)
    SHX2_2 = SHX56_1
    SHX3_2 = "take_off"
    SHX2_2(SHX3_2)
    SHX2_2 = SHX43_1
    SHX3_2 = "Received, preparing for take-off Charlie Mike Golf One Five Four Three"
    SHX2_2(SHX3_2)
    SHX2_2 = FreezeEntityPosition
    SHX3_2 = SHX5_1
    SHX4_2 = false
    SHX2_2(SHX3_2, SHX4_2)
    SHX2_2 = 0
    SHX41_1 = SHX2_2
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = 1500
    SHX2_2(SHX3_2)
    SHX2_2 = true
    return SHX2_2
  end
  SHX2_2 = nil
  SHX16_1 = SHX2_2
  SHX2_2 = false
  return SHX2_2
end
SHX47_1 = SHX57_1
function SHX57_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SetNetworkVehicleAsGhost
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetEntityAlpha
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = 255
  SHX4_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = SetEntityAlpha
  SHX2_2 = SHX0_2
  SHX3_2 = 255
  SHX4_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
end
function SHX58_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerVehicle
  SHX1_2 = SHX1_2()
  SHX2_2 = SetVehicleEngineOn
  SHX3_2 = SHX1_2
  SHX4_2 = false
  SHX5_2 = true
  SHX6_2 = true
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = SetEntityHeading
  SHX3_2 = SHX1_2
  SHX4_2 = 149.0
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = FreezeEntityPosition
  SHX3_2 = SHX1_2
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = 1644266841
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerCoords
  SHX3_2 = SHX3_2()
  SHX4_2 = GetEntityHeading
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.getPlayerPed
  SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2 = SHX5_2()
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
  while true do
    SHX5_2 = HasModelLoaded
    SHX6_2 = SHX2_2
    SHX5_2 = SHX5_2(SHX6_2)
    if SHX5_2 then
      break
    end
    SHX5_2 = RequestModel
    SHX6_2 = SHX2_2
    SHX5_2(SHX6_2)
    SHX5_2 = Citizen
    SHX5_2 = SHX5_2.Wait
    SHX6_2 = 0
    SHX5_2(SHX6_2)
  end
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.spawnVehicle
  SHX6_2 = "hauler"
  SHX7_2 = SHX1_1
  SHX7_2 = SHX7_2[SHX0_2]
  SHX7_2 = SHX7_2.pedCoords
  SHX7_2 = SHX7_2.x
  SHX8_2 = SHX1_1
  SHX8_2 = SHX8_2[SHX0_2]
  SHX8_2 = SHX8_2.pedCoords
  SHX8_2 = SHX8_2.y
  SHX9_2 = SHX1_1
  SHX9_2 = SHX9_2[SHX0_2]
  SHX9_2 = SHX9_2.pedCoords
  SHX9_2 = SHX9_2.z
  SHX10_2 = SHX1_1
  SHX10_2 = SHX10_2[SHX0_2]
  SHX10_2 = SHX10_2.h
  SHX11_2 = false
  SHX12_2 = false
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.spawnVehicle
  SHX7_2 = "cmgtankert"
  SHX8_2 = SHX1_1
  SHX8_2 = SHX8_2[SHX0_2]
  SHX8_2 = SHX8_2.pedCoords
  SHX8_2 = SHX8_2.x
  SHX8_2 = SHX8_2 - 3.5
  SHX9_2 = SHX1_1
  SHX9_2 = SHX9_2[SHX0_2]
  SHX9_2 = SHX9_2.pedCoords
  SHX9_2 = SHX9_2.y
  SHX9_2 = SHX9_2 - 5.5
  SHX10_2 = SHX1_1
  SHX10_2 = SHX10_2[SHX0_2]
  SHX10_2 = SHX10_2.pedCoords
  SHX10_2 = SHX10_2.z
  SHX11_2 = SHX1_1
  SHX11_2 = SHX11_2[SHX0_2]
  SHX11_2 = SHX11_2.h
  SHX12_2 = false
  SHX13_2 = false
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX7_2 = SHX57_1
  SHX8_2 = SHX5_2
  SHX7_2(SHX8_2)
  SHX7_2 = SHX57_1
  SHX8_2 = SHX6_2
  SHX7_2(SHX8_2)
  SHX7_2 = Citizen
  SHX7_2 = SHX7_2.Wait
  SHX8_2 = 500
  SHX7_2(SHX8_2)
  SHX7_2 = SetEntityInvincible
  SHX8_2 = SHX5_2
  SHX9_2 = true
  SHX7_2(SHX8_2, SHX9_2)
  SHX7_2 = SetEntityInvincible
  SHX8_2 = SHX6_2
  SHX9_2 = true
  SHX7_2(SHX8_2, SHX9_2)
  SHX7_2 = AttachVehicleToTrailer
  SHX8_2 = SHX5_2
  SHX9_2 = SHX6_2
  SHX10_2 = 10
  SHX7_2(SHX8_2, SHX9_2, SHX10_2)
  SHX7_2 = CreatePedInsideVehicle
  SHX8_2 = SHX5_2
  SHX9_2 = 4
  SHX10_2 = SHX2_2
  SHX11_2 = -1
  SHX12_2 = false
  SHX13_2 = false
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX8_2 = SetModelAsNoLongerNeeded
  SHX9_2 = SHX2_2
  SHX8_2(SHX9_2)
  SHX8_2 = Citizen
  SHX8_2 = SHX8_2.Wait
  SHX9_2 = 500
  SHX8_2(SHX9_2)
  SHX8_2 = SetEntityInvincible
  SHX9_2 = SHX7_2
  SHX10_2 = true
  SHX8_2(SHX9_2, SHX10_2)
  SHX8_2 = SetPedSteersAroundVehicles
  SHX9_2 = SHX7_2
  SHX10_2 = true
  SHX8_2(SHX9_2, SHX10_2)
  SHX8_2 = SetPedSteersAroundObjects
  SHX9_2 = SHX7_2
  SHX10_2 = true
  SHX8_2(SHX9_2, SHX10_2)
  SHX8_2 = GetEntityModel
  SHX9_2 = SHX5_2
  SHX8_2 = SHX8_2(SHX9_2)
  SHX9_2 = TaskVehicleDriveToCoord
  SHX10_2 = SHX7_2
  SHX11_2 = SHX5_2
  SHX12_2 = SHX3_2.x
  SHX13_2 = SHX4_1.fuelOffsetX
  SHX12_2 = SHX12_2 + SHX13_2
  SHX13_2 = SHX3_2.y
  SHX14_2 = SHX4_1.fuelOffsetY
  SHX13_2 = SHX13_2 + SHX14_2
  SHX14_2 = SHX3_2.z
  SHX15_2 = SHX4_1.fuelOffsetZ
  SHX14_2 = SHX14_2 + SHX15_2
  SHX15_2 = 7.5
  SHX16_2 = 1.0
  SHX17_2 = SHX8_2
  SHX18_2 = 16777216
  SHX19_2 = 1.0
  SHX20_2 = 1
  SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
  SHX9_2 = Citizen
  SHX9_2 = SHX9_2.Wait
  SHX10_2 = 2000
  SHX9_2(SHX10_2)
  SHX9_2 = 0
  while true do
    SHX10_2 = GetEntityCoords
    SHX11_2 = SHX5_2
    SHX10_2 = SHX10_2(SHX11_2)
    SHX11_2 = CMG
    SHX11_2 = SHX11_2.getPlayerCoords
    SHX11_2 = SHX11_2()
    SHX10_2 = SHX10_2 - SHX11_2
    SHX10_2 = #SHX10_2
    if not (SHX10_2 > 25 and SHX9_2 < 20) then
      break
    end
    SHX10_2 = SetVehicleEngineOn
    SHX11_2 = SHX1_2
    SHX12_2 = false
    SHX13_2 = true
    SHX14_2 = true
    SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX10_2 = Citizen
    SHX10_2 = SHX10_2.Wait
    SHX11_2 = 1000
    SHX10_2(SHX11_2)
    SHX9_2 = SHX9_2 + 1
  end
  SHX10_2 = Citizen
  SHX10_2 = SHX10_2.Wait
  SHX11_2 = 5000
  SHX10_2(SHX11_2)
  SHX10_2 = TaskLeaveVehicle
  SHX11_2 = SHX7_2
  SHX12_2 = SHX5_2
  SHX13_2 = 64
  SHX10_2(SHX11_2, SHX12_2, SHX13_2)
  SHX10_2 = GetEntityCoords
  SHX11_2 = SHX7_2
  SHX10_2 = SHX10_2(SHX11_2)
  SHX11_2 = Citizen
  SHX11_2 = SHX11_2.Wait
  SHX12_2 = 1000
  SHX11_2(SHX12_2)
  SHX11_2 = TaskGoStraightToCoord
  SHX12_2 = SHX7_2
  SHX13_2 = SHX3_2.x
  SHX13_2 = SHX13_2 + 1.5
  SHX14_2 = SHX3_2.y
  SHX14_2 = SHX14_2 - 3
  SHX15_2 = SHX3_2.z
  SHX16_2 = 1.0
  SHX17_2 = 786603
  SHX18_2 = SHX4_2
  SHX19_2 = 100
  SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
  SHX9_2 = 0
  while true do
    SHX11_2 = GetEntityCoords
    SHX12_2 = SHX7_2
    SHX11_2 = SHX11_2(SHX12_2)
    SHX11_2 = SHX11_2.x
    SHX12_2 = SHX3_2.x
    SHX12_2 = SHX12_2 + 1.5
    SHX11_2 = SHX11_2 - SHX12_2
    SHX12_2 = 2.1
    if not (SHX11_2 > SHX12_2 and SHX9_2 < 12) then
      break
    end
    SHX11_2 = SetVehicleEngineOn
    SHX12_2 = SHX1_2
    SHX13_2 = false
    SHX14_2 = true
    SHX15_2 = true
    SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    SHX11_2 = Citizen
    SHX11_2 = SHX11_2.Wait
    SHX12_2 = 1000
    SHX11_2(SHX12_2)
    SHX9_2 = SHX9_2 + 1
  end
  SHX11_2 = SetEntityCoords
  SHX12_2 = SHX7_2
  SHX13_2 = SHX3_2.x
  SHX13_2 = SHX13_2 + 1.5
  SHX14_2 = SHX3_2.y
  SHX15_2 = SHX3_2.z
  SHX16_2 = false
  SHX17_2 = false
  SHX18_2 = false
  SHX19_2 = false
  SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
  while true do
    SHX11_2 = HasAnimDictLoaded
    SHX12_2 = "weapon@w_sp_jerrycan"
    SHX11_2 = SHX11_2(SHX12_2)
    if SHX11_2 then
      break
    end
    SHX11_2 = RequestAnimDict
    SHX12_2 = "weapon@w_sp_jerrycan"
    SHX11_2(SHX12_2)
    SHX11_2 = Citizen
    SHX11_2 = SHX11_2.Wait
    SHX12_2 = 0
    SHX11_2(SHX12_2)
  end
  SHX11_2 = Citizen
  SHX11_2 = SHX11_2.Wait
  SHX12_2 = 1000
  SHX11_2(SHX12_2)
  SHX11_2 = TaskPlayAnim
  SHX12_2 = SHX7_2
  SHX13_2 = "weapon@w_sp_jerrycan"
  SHX14_2 = "fire"
  SHX15_2 = 8.0
  SHX16_2 = -8
  SHX17_2 = -1
  SHX18_2 = 49
  SHX19_2 = 0
  SHX20_2 = false
  SHX21_2 = false
  SHX22_2 = false
  SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
  SHX11_2 = RemoveAnimDict
  SHX12_2 = "weapon@w_sp_jerrycan"
  SHX11_2(SHX12_2)
  while true do
    SHX11_2 = SHX17_1
    SHX12_2 = SHX18_1
    if not (SHX11_2 < SHX12_2) then
      break
    end
    SHX11_2 = SetVehicleEngineOn
    SHX12_2 = SHX1_2
    SHX13_2 = false
    SHX14_2 = true
    SHX15_2 = true
    SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    SHX11_2 = SHX17_1
    SHX11_2 = SHX11_2 + 1
    SHX17_1 = SHX11_2
    SHX11_2 = Citizen
    SHX11_2 = SHX11_2.Wait
    SHX12_2 = 250
    SHX11_2(SHX12_2)
  end
  SHX11_2 = ClearPedTasks
  SHX12_2 = SHX7_2
  SHX11_2(SHX12_2)
  SHX11_2 = TaskGoStraightToCoord
  SHX12_2 = SHX7_2
  SHX13_2 = SHX10_2.x
  SHX14_2 = SHX10_2.y
  SHX15_2 = SHX10_2.z
  SHX16_2 = 1.0
  SHX17_2 = -1
  SHX18_2 = SHX4_2
  SHX19_2 = 50
  SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
  SHX11_2 = FreezeEntityPosition
  SHX12_2 = CMG
  SHX12_2 = SHX12_2.getPlayerVehicle
  SHX12_2 = SHX12_2()
  SHX13_2 = false
  SHX11_2(SHX12_2, SHX13_2)
  SHX11_2 = SetVehicleEngineOn
  SHX12_2 = CMG
  SHX12_2 = SHX12_2.getPlayerVehicle
  SHX12_2 = SHX12_2()
  SHX13_2 = true
  SHX14_2 = true
  SHX15_2 = true
  SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX11_2 = SetVehicleDoorsShut
  SHX12_2 = CMG
  SHX12_2 = SHX12_2.getPlayerVehicle
  SHX12_2 = SHX12_2()
  SHX13_2 = false
  SHX11_2(SHX12_2, SHX13_2)
  SHX11_2 = false
  SHX9_1 = SHX11_2
  SHX9_2 = 0
  while true do
    SHX11_2 = SHX10_2.x
    SHX12_2 = GetEntityCoords
    SHX13_2 = SHX7_2
    SHX12_2 = SHX12_2(SHX13_2)
    SHX12_2 = SHX12_2.x
    SHX11_2 = SHX11_2 - SHX12_2
    SHX12_2 = 0.2
    if not (SHX11_2 < SHX12_2 and SHX9_2 < 30) then
      break
    end
    SHX11_2 = Citizen
    SHX11_2 = SHX11_2.Wait
    SHX12_2 = 1000
    SHX11_2(SHX12_2)
    SHX9_2 = SHX9_2 - 1
  end
  SHX11_2 = TaskEnterVehicle
  SHX12_2 = SHX7_2
  SHX13_2 = SHX5_2
  SHX14_2 = 1
  SHX15_2 = -1
  SHX16_2 = 1.0
  SHX17_2 = 1
  SHX18_2 = 0
  SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  SHX11_2 = TaskVehicleDriveToCoord
  SHX12_2 = SHX7_2
  SHX13_2 = SHX5_2
  SHX14_2 = SHX1_1
  SHX14_2 = SHX14_2[SHX0_2]
  SHX14_2 = SHX14_2.pedCoords
  SHX14_2 = SHX14_2.x
  SHX15_2 = SHX1_1
  SHX15_2 = SHX15_2[SHX0_2]
  SHX15_2 = SHX15_2.pedCoords
  SHX15_2 = SHX15_2.y
  SHX16_2 = SHX1_1
  SHX16_2 = SHX16_2[SHX0_2]
  SHX16_2 = SHX16_2.pedCoords
  SHX16_2 = SHX16_2.z
  SHX17_2 = 7.5
  SHX18_2 = 1.0
  SHX19_2 = SHX8_2
  SHX20_2 = 16777216
  SHX21_2 = 1.0
  SHX22_2 = 1
  SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
  SHX11_2 = Citizen
  SHX11_2 = SHX11_2.Wait
  SHX12_2 = 15000
  SHX11_2(SHX12_2)
  SHX11_2 = DeleteEntity
  SHX12_2 = SHX5_2
  SHX11_2(SHX12_2)
  SHX11_2 = DeleteEntity
  SHX12_2 = SHX6_2
  SHX11_2(SHX12_2)
  SHX11_2 = DeleteEntity
  SHX12_2 = SHX7_2
  SHX11_2(SHX12_2)
end
SHX48_1 = SHX58_1
function SHX58_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX3_2 = Citizen
  SHX3_2 = SHX3_2.CreateThread
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3
    SHX0_3 = GetOffsetFromEntityInWorldCoords
    SHX1_3 = SHX5_1
    SHX2_3 = -30.0
    SHX3_3 = 30.0
    SHX4_3 = -3.0
    SHX0_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
    SHX1_3 = GetEntityHeading
    SHX2_3 = SHX5_1
    SHX1_3 = SHX1_3(SHX2_3)
    SHX1_3 = SHX1_3 - 180
    if SHX1_3 < 0.0 then
      SHX1_3 = 360.0 + SHX1_3
    end
    SHX2_3 = CMG
    SHX2_3 = SHX2_3.spawnVehicle
    SHX3_3 = "airtug"
    SHX4_3 = SHX0_3.x
    SHX5_3 = SHX0_3.y
    SHX6_3 = SHX0_3.z
    SHX7_3 = SHX1_3
    SHX8_3 = false
    SHX9_3 = false
    SHX10_3 = false
    SHX2_3 = SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3)
    SHX3_3 = SetEntityInvincible
    SHX4_3 = SHX2_3
    SHX5_3 = true
    SHX3_3(SHX4_3, SHX5_3)
    SHX3_3 = SetVehicleColours
    SHX4_3 = SHX2_3
    SHX5_3 = 89
    SHX6_3 = 0
    SHX3_3(SHX4_3, SHX5_3, SHX6_3)
    SHX3_3 = GetOffsetFromEntityInWorldCoords
    SHX4_3 = SHX2_3
    SHX5_3 = 0.0
    SHX6_3 = -4.0
    SHX7_3 = 0.0
    SHX3_3 = SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    SHX4_3 = CMG
    SHX4_3 = SHX4_3.spawnVehicle
    SHX5_3 = "cmgtugt"
    SHX6_3 = SHX3_3.x
    SHX7_3 = SHX3_3.y
    SHX8_3 = SHX3_3.z
    SHX9_3 = SHX1_2.tugCoords
    SHX9_3 = SHX9_3.w
    SHX10_3 = false
    SHX11_3 = false
    SHX12_3 = false
    SHX4_3 = SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
    SHX5_3 = SHX57_1
    SHX6_3 = SHX2_3
    SHX5_3(SHX6_3)
    SHX5_3 = SHX57_1
    SHX6_3 = SHX4_3
    SHX5_3(SHX6_3)
    SHX5_3 = 1644266841
    SHX6_3 = AttachVehicleToTrailer
    SHX7_3 = SHX2_3
    SHX8_3 = SHX4_3
    SHX9_3 = 10
    SHX6_3(SHX7_3, SHX8_3, SHX9_3)
    SHX6_3 = Wait
    SHX7_3 = 1000
    SHX6_3(SHX7_3)
    while true do
      SHX6_3 = HasModelLoaded
      SHX7_3 = SHX5_3
      SHX6_3 = SHX6_3(SHX7_3)
      if SHX6_3 then
        break
      end
      SHX6_3 = RequestModel
      SHX7_3 = SHX5_3
      SHX6_3(SHX7_3)
      SHX6_3 = Wait
      SHX7_3 = 0
      SHX6_3(SHX7_3)
    end
    SHX6_3 = CreatePedInsideVehicle
    SHX7_3 = SHX2_3
    SHX8_3 = 4
    SHX9_3 = SHX5_3
    SHX10_3 = -1
    SHX11_3 = false
    SHX12_3 = false
    SHX6_3 = SHX6_3(SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
    SHX7_3 = SetModelAsNoLongerNeeded
    SHX8_3 = SHX5_3
    SHX7_3(SHX8_3)
    SHX7_3 = GetOffsetFromEntityInWorldCoords
    SHX8_3 = CMG
    SHX8_3 = SHX8_3.getPlayerVehicle
    SHX8_3 = SHX8_3()
    SHX9_3 = -12.0
    SHX10_3 = -5.0
    SHX11_3 = 0.0
    SHX7_3 = SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3)
    SHX8_3 = GetEntityModel
    SHX9_3 = SHX2_3
    SHX8_3 = SHX8_3(SHX9_3)
    SHX9_3 = TaskVehicleDriveToCoord
    SHX10_3 = SHX6_3
    SHX11_3 = SHX2_3
    SHX12_3 = SHX7_3.x
    SHX13_3 = SHX7_3.y
    SHX14_3 = SHX7_3.z
    SHX15_3 = 5.0
    SHX16_3 = 1.0
    SHX17_3 = SHX8_3
    SHX18_3 = 16777216
    SHX19_3 = 1.0
    SHX20_3 = 1
    SHX9_3(SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3)
    SHX9_3 = SHX0_2
    if SHX9_3 then
      SHX9_3 = 0
      while true do
        SHX10_3 = SHX19_1
        SHX11_3 = SHX20_1
        if not (SHX10_3 < SHX11_3) then
          break
        end
        SHX10_3 = Wait
        SHX11_3 = 1000
        SHX10_3(SHX11_3)
        SHX9_3 = SHX9_3 + 1
      end
    else
      SHX9_3 = 0
      while true do
        SHX10_3 = SHX19_1
        if 0 == SHX10_3 then
          break
        end
        SHX10_3 = Wait
        SHX11_3 = 1000
        SHX10_3(SHX11_3)
        SHX9_3 = SHX9_3 + 1
      end
    end
    SHX9_3 = GetOffsetFromEntityInWorldCoords
    SHX10_3 = CMG
    SHX10_3 = SHX10_3.getPlayerVehicle
    SHX10_3 = SHX10_3()
    SHX11_3 = -30.0
    SHX12_3 = -30.0
    SHX13_3 = 0.0
    SHX9_3 = SHX9_3(SHX10_3, SHX11_3, SHX12_3, SHX13_3)
    SHX10_3 = TaskVehicleDriveToCoord
    SHX11_3 = SHX6_3
    SHX12_3 = SHX2_3
    SHX13_3 = SHX9_3.x
    SHX14_3 = SHX9_3.y
    SHX15_3 = SHX9_3.z
    SHX16_3 = 5.0
    SHX17_3 = 1.0
    SHX18_3 = SHX8_3
    SHX19_3 = 16777216
    SHX20_3 = 1.0
    SHX21_3 = 1
    SHX10_3(SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3)
    SHX10_3 = 0
    while SHX10_3 < 30 do
      SHX10_3 = SHX10_3 + 1
      SHX11_3 = Wait
      SHX12_3 = 1000
      SHX11_3(SHX12_3)
    end
    SHX11_3 = DeleteEntity
    SHX12_3 = SHX6_3
    SHX11_3(SHX12_3)
    SHX11_3 = DeleteEntity
    SHX12_3 = SHX2_3
    SHX11_3(SHX12_3)
    SHX11_3 = DeleteEntity
    SHX12_3 = SHX4_3
    SHX11_3(SHX12_3)
  end
  SHX3_2(SHX4_2)
  SHX3_2 = {}
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.loadModel
  SHX5_2 = 588969535
  SHX4_2 = SHX4_2(SHX5_2)
  if not SHX4_2 then
    SHX4_2 = 0
  end
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.loadModel
  SHX6_2 = 2120901815
  SHX5_2 = SHX5_2(SHX6_2)
  if not SHX5_2 then
    SHX5_2 = 0
  end
  SHX3_2[1] = SHX4_2
  SHX3_2[2] = SHX5_2
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.loadAnimDict
  SHX5_2 = "anim@heists@box_carry@"
  SHX4_2(SHX5_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.loadModel
  SHX5_2 = -517243780
  SHX4_2(SHX5_2)
  if SHX0_2 then
    SHX4_2 = SHX1_2.pedCoords
    while true do
      SHX5_2 = SHX19_1
      SHX6_2 = SHX20_1
      if not (SHX5_2 < SHX6_2) then
        break
      end
      SHX5_2 = Citizen
      SHX5_2 = SHX5_2.CreateThread
      function SHX6_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3
        SHX0_3 = CMG
        SHX0_3 = SHX0_3.getPlayerCoords
        SHX0_3 = SHX0_3()
        SHX1_3 = math
        SHX1_3 = SHX1_3.random
        SHX2_3 = 1
        SHX3_3 = SHX3_2
        SHX3_3 = #SHX3_3
        SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
        SHX2_3 = SHX3_2
        SHX1_3 = SHX2_3[SHX1_3]
        SHX2_3 = CreatePed
        SHX3_3 = 4
        SHX4_3 = SHX1_3
        SHX5_3 = SHX4_2.x
        SHX6_3 = SHX4_2.y
        SHX7_3 = SHX4_2.z
        SHX8_3 = 0.0
        SHX9_3 = false
        SHX10_3 = false
        SHX2_3 = SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3)
        SHX3_3 = 0
        SHX4_3 = TaskGoStraightToCoord
        SHX5_3 = SHX2_3
        SHX6_3 = SHX0_3.x
        SHX7_3 = SHX0_3.y
        SHX8_3 = SHX0_3.z
        SHX9_3 = 2.0
        SHX10_3 = -1
        SHX11_3 = 0.0
        SHX12_3 = 0
        SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
        SHX4_3 = 0
        SHX5_3 = SHX2_2
        if SHX5_3 then
          SHX5_3 = TaskPlayAnim
          SHX6_3 = SHX2_3
          SHX7_3 = "anim@heists@box_carry@"
          SHX8_3 = "idle"
          SHX9_3 = 2.0
          SHX10_3 = 2.0
          SHX11_3 = -1
          SHX12_3 = 51
          SHX13_3 = 0
          SHX14_3 = false
          SHX15_3 = false
          SHX16_3 = false
          SHX5_3(SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3)
          SHX5_3 = CreateObject
          SHX6_3 = -517243780
          SHX7_3 = SHX0_3.x
          SHX8_3 = SHX0_3.y
          SHX9_3 = SHX0_3.z
          SHX10_3 = false
          SHX11_3 = false
          SHX12_3 = false
          SHX5_3 = SHX5_3(SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
          SHX4_3 = SHX5_3
          SHX5_3 = AttachEntityToEntity
          SHX6_3 = SHX4_3
          SHX7_3 = SHX2_3
          SHX8_3 = GetPedBoneIndex
          SHX9_3 = SHX2_3
          SHX10_3 = 60309
          SHX8_3 = SHX8_3(SHX9_3, SHX10_3)
          SHX9_3 = 0.025
          SHX10_3 = 0.08
          SHX11_3 = 0.255
          SHX12_3 = -145.0
          SHX13_3 = 290.0
          SHX14_3 = 0.0
          SHX15_3 = true
          SHX16_3 = true
          SHX17_3 = false
          SHX18_3 = true
          SHX19_3 = 1
          SHX20_3 = true
          SHX5_3(SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3)
        end
        SHX5_3 = Citizen
        SHX5_3 = SHX5_3.Wait
        SHX6_3 = 10000
        SHX5_3(SHX6_3)
        while true do
          SHX5_3 = GetEntityCoords
          SHX6_3 = SHX2_3
          SHX5_3 = SHX5_3(SHX6_3)
          SHX5_3 = SHX0_3 - SHX5_3
          SHX5_3 = #SHX5_3
          if not (SHX5_3 > 10 and SHX3_3 <= 60) then
            break
          end
          SHX5_3 = Citizen
          SHX5_3 = SHX5_3.Wait
          SHX6_3 = 1000
          SHX5_3(SHX6_3)
          SHX3_3 = SHX3_3 + 1
        end
        SHX5_3 = CMG
        SHX5_3 = SHX5_3.getPlayerVehicle
        SHX5_3 = SHX5_3()
        SHX6_3 = 0
        SHX7_3 = GetVehicleModelNumberOfSeats
        SHX8_3 = GetEntityModel
        SHX9_3 = SHX5_3
        SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3 = SHX8_3(SHX9_3)
        SHX7_3 = SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3)
        if SHX7_3 > 2 then
          SHX6_3 = 1
        end
        SHX7_3 = TaskEnterVehicle
        SHX8_3 = SHX2_3
        SHX9_3 = CMG
        SHX9_3 = SHX9_3.getPlayerVehicle
        SHX9_3 = SHX9_3()
        SHX10_3 = 15000
        SHX11_3 = SHX6_3
        SHX12_3 = 2.0
        SHX13_3 = 1
        SHX14_3 = 0
        SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3)
        SHX7_3 = Citizen
        SHX7_3 = SHX7_3.Wait
        SHX8_3 = 10000
        SHX7_3(SHX8_3)
        SHX7_3 = DeletePed
        SHX8_3 = SHX2_3
        SHX7_3(SHX8_3)
        SHX7_3 = DeleteEntity
        SHX8_3 = SHX4_3
        SHX7_3(SHX8_3)
      end
      SHX5_2(SHX6_2)
      SHX5_2 = Citizen
      SHX5_2 = SHX5_2.Wait
      SHX6_2 = math
      SHX6_2 = SHX6_2.random
      SHX7_2 = 8000
      SHX8_2 = 13000
      SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX6_2(SHX7_2, SHX8_2)
      SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    end
  else
    while true do
      SHX4_2 = SHX19_1
      if 0 == SHX4_2 then
        break
      end
      SHX4_2 = Citizen
      SHX4_2 = SHX4_2.CreateThread
      function SHX5_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3
        SHX0_3 = GetOffsetFromEntityInWorldCoords
        SHX1_3 = CMG
        SHX1_3 = SHX1_3.getPlayerPed
        SHX1_3 = SHX1_3()
        SHX2_3 = -15.0
        SHX3_3 = 3.0
        SHX4_3 = 0.0
        SHX0_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
        SHX1_3 = math
        SHX1_3 = SHX1_3.random
        SHX2_3 = 1
        SHX3_3 = SHX3_2
        SHX3_3 = #SHX3_3
        SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
        SHX2_3 = SHX3_2
        SHX1_3 = SHX2_3[SHX1_3]
        SHX2_3 = CreatePedInsideVehicle
        SHX3_3 = CMG
        SHX3_3 = SHX3_3.getPlayerVehicle
        SHX3_3 = SHX3_3()
        SHX4_3 = 4
        SHX5_3 = SHX1_3
        SHX6_3 = SHX4_1.seatPedSitsIn
        SHX7_3 = false
        SHX8_3 = false
        SHX2_3 = SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
        SHX3_3 = TaskLeaveVehicle
        SHX4_3 = SHX2_3
        SHX5_3 = CMG
        SHX5_3 = SHX5_3.getPlayerVehicle
        SHX5_3 = SHX5_3()
        SHX6_3 = 256
        SHX3_3(SHX4_3, SHX5_3, SHX6_3)
        SHX3_3 = Citizen
        SHX3_3 = SHX3_3.Wait
        SHX4_3 = 3000
        SHX3_3(SHX4_3)
        SHX3_3 = TaskGoStraightToCoord
        SHX4_3 = SHX2_3
        SHX5_3 = SHX0_3.x
        SHX6_3 = SHX0_3.y
        SHX7_3 = SHX0_3.z
        SHX8_3 = 2.0
        SHX9_3 = -1
        SHX10_3 = 0.0
        SHX11_3 = 0
        SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
        SHX3_3 = 0
        SHX4_3 = SHX2_2
        if SHX4_3 then
          SHX4_3 = TaskPlayAnim
          SHX5_3 = SHX2_3
          SHX6_3 = "anim@heists@box_carry@"
          SHX7_3 = "idle"
          SHX8_3 = 2.0
          SHX9_3 = 2.0
          SHX10_3 = -1
          SHX11_3 = 51
          SHX12_3 = 0
          SHX13_3 = false
          SHX14_3 = false
          SHX15_3 = false
          SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3)
          SHX4_3 = CreateObject
          SHX5_3 = -517243780
          SHX6_3 = SHX0_3.x
          SHX7_3 = SHX0_3.y
          SHX8_3 = SHX0_3.z
          SHX9_3 = false
          SHX10_3 = false
          SHX11_3 = false
          SHX4_3 = SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3)
          SHX3_3 = SHX4_3
          SHX4_3 = AttachEntityToEntity
          SHX5_3 = SHX3_3
          SHX6_3 = SHX2_3
          SHX7_3 = GetPedBoneIndex
          SHX8_3 = SHX2_3
          SHX9_3 = 60309
          SHX7_3 = SHX7_3(SHX8_3, SHX9_3)
          SHX8_3 = 0.025
          SHX9_3 = 0.08
          SHX10_3 = 0.255
          SHX11_3 = -145.0
          SHX12_3 = 290.0
          SHX13_3 = 0.0
          SHX14_3 = true
          SHX15_3 = true
          SHX16_3 = false
          SHX17_3 = true
          SHX18_3 = 1
          SHX19_3 = true
          SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3)
        end
        SHX4_3 = 0
        while true do
          SHX5_3 = GetEntityCoords
          SHX6_3 = SHX2_3
          SHX5_3 = SHX5_3(SHX6_3)
          SHX5_3 = SHX0_3 - SHX5_3
          SHX5_3 = #SHX5_3
          if not (SHX5_3 > 5 and SHX4_3 <= 30) then
            break
          end
          SHX5_3 = Citizen
          SHX5_3 = SHX5_3.Wait
          SHX6_3 = 1000
          SHX5_3(SHX6_3)
          SHX4_3 = SHX4_3 + 1
        end
        SHX5_3 = DeletePed
        SHX6_3 = SHX2_3
        SHX5_3(SHX6_3)
        SHX5_3 = DeleteEntity
        SHX6_3 = SHX3_3
        SHX5_3(SHX6_3)
      end
      SHX4_2(SHX5_2)
      SHX4_2 = Citizen
      SHX4_2 = SHX4_2.Wait
      SHX5_2 = math
      SHX5_2 = SHX5_2.random
      SHX6_2 = 8000
      SHX7_2 = 13000
      SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX5_2(SHX6_2, SHX7_2)
      SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    end
  end
  SHX4_2 = FreezeEntityPosition
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.getPlayerVehicle
  SHX5_2 = SHX5_2()
  SHX6_2 = false
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SetVehicleDoorsShut
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.getPlayerVehicle
  SHX5_2 = SHX5_2()
  SHX6_2 = false
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SetVehicleEngineOn
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.getPlayerVehicle
  SHX5_2 = SHX5_2()
  SHX6_2 = true
  SHX7_2 = false
  SHX8_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX4_2 = pairs
  SHX5_2 = SHX3_2
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
  for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    SHX10_2 = SetModelAsNoLongerNeeded
    SHX11_2 = SHX9_2
    SHX10_2(SHX11_2)
  end
  SHX4_2 = RemoveAnimDict
  SHX5_2 = "anim@heists@box_carry@"
  SHX4_2(SHX5_2)
  SHX4_2 = SetModelAsNoLongerNeeded
  SHX5_2 = -517243780
  SHX4_2(SHX5_2)
end
SHX49_1 = SHX58_1
SHX58_1 = CMG
function SHX59_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX3_2 = true
  SHX4_2 = RequestScaleformMovie
  SHX5_2 = "mp_big_message_freemode"
  SHX4_2 = SHX4_2(SHX5_2)
  while true do
    SHX5_2 = HasScaleformMovieLoaded
    SHX6_2 = SHX4_2
    SHX5_2 = SHX5_2(SHX6_2)
    if SHX5_2 then
      break
    end
    SHX5_2 = Wait
    SHX6_2 = 0
    SHX5_2(SHX6_2)
  end
  if not SHX2_2 then
    SHX5_2 = Citizen
    SHX5_2 = SHX5_2.CreateThread
    function SHX6_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3
      while true do
        SHX0_3 = SHX3_2
        if not SHX0_3 then
          break
        end
        SHX0_3 = Wait
        SHX1_3 = 0
        SHX0_3(SHX1_3)
        SHX0_3 = BeginScaleformMovieMethod
        SHX1_3 = SHX4_2
        SHX2_3 = "SHOW_SHARD_WASTED_MP_MESSAGE"
        SHX0_3(SHX1_3, SHX2_3)
        SHX0_3 = _ENV
        SHX1_3 = "ScaleformMovieMethodAddParamTextureNameString"
        SHX0_3 = SHX0_3[SHX1_3]
        SHX1_3 = SHX0_2
        SHX0_3(SHX1_3)
        SHX0_3 = _ENV
        SHX1_3 = "ScaleformMovieMethodAddParamTextureNameString"
        SHX0_3 = SHX0_3[SHX1_3]
        SHX1_3 = SHX1_2
        SHX0_3(SHX1_3)
        SHX0_3 = ScaleformMovieMethodAddParamInt
        SHX1_3 = 0
        SHX0_3(SHX1_3)
        SHX0_3 = EndScaleformMovieMethod
        SHX0_3()
        SHX0_3 = DrawScaleformMovieFullscreen
        SHX1_3 = SHX4_2
        SHX2_3 = 255
        SHX3_3 = 255
        SHX4_3 = 255
        SHX5_3 = 255
        SHX6_3 = 0
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
      end
    end
    SHX5_2(SHX6_2)
    SHX5_2 = Citizen
    SHX5_2 = SHX5_2.Wait
    SHX6_2 = 8000
    SHX5_2(SHX6_2)
    SHX3_2 = false
    SHX5_2 = false
    SHX7_1 = SHX5_2
  else
    SHX5_2 = Citizen
    SHX5_2 = SHX5_2.CreateThread
    function SHX6_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
      SHX0_3 = SHX2_2
      SHX1_3 = Citizen
      SHX1_3 = SHX1_3.CreateThread
      function SHX2_3()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_4, SHX1_4
        while true do
          SHX0_4 = SHX0_3
          if 0 == SHX0_4 then
            break
          end
          SHX0_4 = Wait
          SHX1_4 = 1000
          SHX0_4(SHX1_4)
          SHX0_4 = SHX0_3
          SHX0_4 = SHX0_4 - 1
          SHX0_3 = SHX0_4
        end
      end
      SHX1_3(SHX2_3)
      while 0 ~= SHX0_3 do
        SHX1_3 = Wait
        SHX2_3 = 0
        SHX1_3(SHX2_3)
        SHX1_3 = BeginScaleformMovieMethod
        SHX2_3 = SHX4_2
        SHX3_3 = "SHOW_SHARD_WASTED_MP_MESSAGE"
        SHX1_3(SHX2_3, SHX3_3)
        SHX1_3 = _ENV
        SHX2_3 = "ScaleformMovieMethodAddParamTextureNameString"
        SHX1_3 = SHX1_3[SHX2_3]
        SHX2_3 = SHX0_2
        SHX1_3(SHX2_3)
        SHX1_3 = ""
        SHX2_3 = DoesEntityExist
        SHX3_3 = SHX5_1
        SHX2_3 = SHX2_3(SHX3_3)
        if SHX2_3 then
          SHX2_3 = string
          SHX2_3 = SHX2_3.format
          SHX3_3 = " (Your plane will be deleted in %s seconds and your shift will end)"
          SHX4_3 = SHX0_3
          SHX2_3 = SHX2_3(SHX3_3, SHX4_3)
          SHX1_3 = SHX2_3
        end
        SHX2_3 = _ENV
        SHX3_3 = "ScaleformMovieMethodAddParamTextureNameString"
        SHX2_3 = SHX2_3[SHX3_3]
        SHX3_3 = string
        SHX3_3 = SHX3_3.format
        SHX4_3 = "%s%s"
        SHX5_3 = SHX1_2
        SHX6_3 = SHX1_3
        SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3 = SHX3_3(SHX4_3, SHX5_3, SHX6_3)
        SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
        SHX2_3 = ScaleformMovieMethodAddParamInt
        SHX3_3 = 0
        SHX2_3(SHX3_3)
        SHX2_3 = EndScaleformMovieMethod
        SHX2_3()
        SHX2_3 = DrawScaleformMovieFullscreen
        SHX3_3 = SHX4_2
        SHX4_3 = 255
        SHX5_3 = 255
        SHX6_3 = 255
        SHX7_3 = 255
        SHX8_3 = 0
        SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
      end
      SHX1_3 = false
      SHX7_1 = SHX1_3
    end
    SHX5_2(SHX6_2)
  end
end
SHX58_1.drawPlaneScaleForm = SHX59_1
function SHX58_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX0_2 = 1
  SHX1_2 = SHX1_1
  SHX1_2 = #SHX1_2
  SHX2_2 = 1
  for SHX3_2 = SHX0_2, SHX1_2, SHX2_2 do
    SHX4_2 = SHX2_1
    SHX5_2 = CreateCheckpoint
    SHX6_2 = 5
    SHX7_2 = SHX1_1
    SHX7_2 = SHX7_2[SHX3_2]
    SHX7_2 = SHX7_2.coords
    SHX7_2 = SHX7_2.x
    SHX8_2 = SHX1_1
    SHX8_2 = SHX8_2[SHX3_2]
    SHX8_2 = SHX8_2.coords
    SHX8_2 = SHX8_2.y
    SHX9_2 = SHX1_1
    SHX9_2 = SHX9_2[SHX3_2]
    SHX9_2 = SHX9_2.coords
    SHX9_2 = SHX9_2.z
    SHX9_2 = SHX9_2 - 3
    SHX10_2 = SHX1_1
    SHX10_2 = SHX10_2[SHX3_2]
    SHX10_2 = SHX10_2.coords
    SHX10_2 = SHX10_2.x
    SHX11_2 = SHX1_1
    SHX11_2 = SHX11_2[SHX3_2]
    SHX11_2 = SHX11_2.coords
    SHX11_2 = SHX11_2.y
    SHX12_2 = SHX1_1
    SHX12_2 = SHX12_2[SHX3_2]
    SHX12_2 = SHX12_2.coords
    SHX12_2 = SHX12_2.z
    SHX13_2 = 30.0
    SHX14_2 = 255
    SHX15_2 = 215
    SHX16_2 = 0
    SHX17_2 = 100
    SHX18_2 = 0
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
    SHX4_2[SHX3_2] = SHX5_2
  end
end
SHX50_1 = SHX58_1
function SHX58_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = 1
  SHX1_2 = SHX2_1
  SHX1_2 = #SHX1_2
  SHX2_2 = 1
  for SHX3_2 = SHX0_2, SHX1_2, SHX2_2 do
    SHX4_2 = DeleteCheckpoint
    SHX5_2 = SHX2_1
    SHX5_2 = SHX5_2[SHX3_2]
    SHX4_2(SHX5_2)
  end
  SHX0_2 = false
  SHX13_1 = SHX0_2
end
SHX51_1 = SHX58_1
function SHX58_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = SHX41_1
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getTunableValue
  SHX2_2 = "pilot_max_damage"
  SHX1_2 = SHX1_2(SHX2_2)
  SHX0_2 = SHX0_2 / SHX1_2
  if SHX0_2 > 1.0 then
    SHX0_2 = 1.0
  end
  SHX1_2 = SHX33_1.height
  SHX1_2 = SHX0_2 * SHX1_2
  SHX34_1.height = SHX1_2
  SHX1_2 = SHX33_1.y
  SHX2_2 = SHX33_1.height
  SHX2_2 = SHX2_2 / 2
  SHX3_2 = SHX34_1.height
  SHX3_2 = SHX3_2 / 2
  SHX2_2 = SHX2_2 - SHX3_2
  SHX1_2 = SHX1_2 + SHX2_2
  SHX34_1.y = SHX1_2
  SHX1_2 = DrawRect
  SHX2_2 = SHX33_1.x
  SHX3_2 = SHX33_1.y
  SHX4_2 = SHX33_1.width
  SHX5_2 = SHX33_1.height
  SHX6_2 = 0
  SHX7_2 = 0
  SHX8_2 = 0
  SHX9_2 = 120
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX1_2 = DrawRect
  SHX2_2 = SHX34_1.x
  SHX3_2 = SHX34_1.y
  SHX4_2 = SHX34_1.width
  SHX5_2 = SHX34_1.height
  SHX6_2 = 200
  SHX7_2 = 0
  SHX8_2 = 0
  SHX9_2 = 255
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX1_2 = DrawRect
  SHX2_2 = SHX35_1.x
  SHX3_2 = SHX35_1.y
  SHX4_2 = SHX35_1.width
  SHX5_2 = SHX35_1.height
  SHX6_2 = 0
  SHX7_2 = 0
  SHX8_2 = 0
  SHX9_2 = 200
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX1_2 = DrawRect
  SHX2_2 = SHX36_1.x
  SHX3_2 = SHX36_1.y
  SHX4_2 = SHX36_1.width
  SHX5_2 = SHX36_1.height
  SHX6_2 = 0
  SHX7_2 = 0
  SHX8_2 = 0
  SHX9_2 = 200
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX1_2 = DrawRect
  SHX2_2 = SHX37_1.x
  SHX3_2 = SHX37_1.y
  SHX4_2 = SHX37_1.width
  SHX5_2 = SHX37_1.height
  SHX6_2 = 0
  SHX7_2 = 0
  SHX8_2 = 0
  SHX9_2 = 200
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX1_2 = DrawRect
  SHX2_2 = SHX38_1.x
  SHX3_2 = SHX38_1.y
  SHX4_2 = SHX38_1.width
  SHX5_2 = SHX38_1.height
  SHX6_2 = 0
  SHX7_2 = 0
  SHX8_2 = 0
  SHX9_2 = 200
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX1_2 = DrawSprite
  SHX2_2 = "pilotjob"
  SHX3_2 = "damageIcon"
  SHX4_2 = SHX33_1.x
  SHX5_2 = SHX33_1.y
  SHX6_2 = 0.022
  SHX7_2 = 0.045
  SHX8_2 = 0.0
  SHX9_2 = 255
  SHX10_2 = 255
  SHX11_2 = 255
  SHX12_2 = 255
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
end
function SHX59_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2 = globalOnPilotDuty
  if SHX0_2 then
    SHX0_2 = IsPedInVehicle
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerPed
    SHX1_2 = SHX1_2()
    SHX2_2 = SHX5_1
    SHX3_2 = false
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    if SHX0_2 then
      SHX0_2 = SHX17_1
      if SHX0_2 > 0 then
        SHX0_2 = GetIsVehicleEngineRunning
        SHX1_2 = CMG
        SHX1_2 = SHX1_2.getPlayerVehicle
        SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX1_2()
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
        if SHX0_2 then
          SHX0_2 = SHX21_1.y
          SHX1_2 = SHX21_1.height
          SHX1_2 = SHX1_2 / 2
          SHX2_2 = SHX28_1.height
          SHX2_2 = SHX2_2 / 2
          SHX1_2 = SHX1_2 - SHX2_2
          SHX0_2 = SHX0_2 + SHX1_2
          SHX28_1.y = SHX0_2
        end
      end
      SHX0_2 = DrawRect
      SHX1_2 = SHX27_1.x
      SHX2_2 = SHX27_1.y
      SHX3_2 = SHX27_1.width
      SHX4_2 = SHX21_1.height
      SHX5_2 = 0
      SHX6_2 = 0
      SHX7_2 = 0
      SHX8_2 = 120
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX0_2 = DrawRect
      SHX1_2 = SHX28_1.x
      SHX2_2 = SHX28_1.y
      SHX3_2 = SHX28_1.width
      SHX4_2 = SHX28_1.height
      SHX5_2 = math
      SHX5_2 = SHX5_2.floor
      SHX6_2 = SHX18_1
      SHX7_2 = 200
      SHX6_2 = SHX7_2 / SHX6_2
      SHX7_2 = SHX17_1
      SHX6_2 = SHX6_2 * SHX7_2
      SHX7_2 = 200
      SHX6_2 = SHX7_2 - SHX6_2
      SHX5_2 = SHX5_2(SHX6_2)
      SHX6_2 = math
      SHX6_2 = SHX6_2.floor
      SHX7_2 = SHX18_1
      SHX8_2 = 200
      SHX7_2 = SHX8_2 / SHX7_2
      SHX8_2 = SHX17_1
      SHX7_2 = SHX7_2 * SHX8_2
      SHX6_2 = SHX6_2(SHX7_2)
      SHX7_2 = 0
      SHX8_2 = 255
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX0_2 = DrawRect
      SHX1_2 = SHX29_1.x
      SHX2_2 = SHX29_1.y
      SHX3_2 = SHX29_1.width
      SHX4_2 = SHX29_1.height
      SHX5_2 = 0
      SHX6_2 = 0
      SHX7_2 = 0
      SHX8_2 = 200
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX0_2 = DrawRect
      SHX1_2 = SHX30_1.x
      SHX2_2 = SHX30_1.y
      SHX3_2 = SHX30_1.width
      SHX4_2 = SHX30_1.height
      SHX5_2 = 0
      SHX6_2 = 0
      SHX7_2 = 0
      SHX8_2 = 200
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX0_2 = DrawRect
      SHX1_2 = SHX31_1.x
      SHX2_2 = SHX31_1.y
      SHX3_2 = SHX31_1.width
      SHX4_2 = SHX31_1.height
      SHX5_2 = 0
      SHX6_2 = 0
      SHX7_2 = 0
      SHX8_2 = 200
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX0_2 = DrawRect
      SHX1_2 = SHX32_1.x
      SHX2_2 = SHX32_1.y
      SHX3_2 = SHX32_1.width
      SHX4_2 = SHX32_1.height
      SHX5_2 = 0
      SHX6_2 = 0
      SHX7_2 = 0
      SHX8_2 = 200
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX0_2 = DrawSprite
      SHX1_2 = "pilotjob"
      SHX2_2 = "gasCanSprite"
      SHX3_2 = SHX27_1.x
      SHX4_2 = SHX27_1.y
      SHX5_2 = 0.022
      SHX6_2 = 0.045
      SHX7_2 = 0.0
      SHX8_2 = 255
      SHX9_2 = 255
      SHX10_2 = 255
      SHX11_2 = 255
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
      SHX0_2 = SHX58_1
      SHX0_2()
    end
  end
end
SHX60_1 = CMG
SHX60_1 = SHX60_1.createThreadOnTick
SHX61_1 = SHX59_1
SHX62_1 = "Pilot Fuel UI"
SHX60_1(SHX61_1, SHX62_1)
SHX60_1 = 0
function SHX61_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX0_2 = globalOnPilotDuty
  if SHX0_2 then
    SHX0_2 = DoesEntityExist
    SHX1_2 = SHX5_1
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      SHX0_2 = GetGameTimer
      SHX0_2 = SHX0_2()
      SHX60_1 = SHX0_2
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.getPlayerVehicle
      SHX0_2 = SHX0_2()
      SHX1_2 = SHX5_1
      if SHX0_2 == SHX1_2 then
        SHX0_2 = GetEntityHeightAboveGround
        SHX1_2 = CMG
        SHX1_2 = SHX1_2.getPlayerVehicle
        SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2 = SHX1_2()
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
        if SHX0_2 > 60 then
          SHX1_2 = GetVehicleEngineHealth
          SHX2_2 = SHX5_1
          SHX1_2 = SHX1_2(SHX2_2)
          if SHX1_2 < 0 then
            SHX1_2 = SHX7_1
            if not SHX1_2 then
              SHX1_2 = true
              SHX7_1 = SHX1_2
              SHX1_2 = false
              SHX8_1 = SHX1_2
              SHX1_2 = Citizen
              SHX1_2 = SHX1_2.CreateThread
              function SHX2_2()
                -- [AI CLEANUP] Decompiled Lua - Fix these:
                -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
                -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
                -- 3. Replace goto/label with while/repeat-until where possible
                -- 4. Remove decompiler comments, add meaningful ones
                -- 5. Fix indentation and formatting
                
                local SHX0_3, SHX1_3, SHX2_3
                SHX0_3 = CMG
                SHX0_3 = SHX0_3.drawPlaneScaleForm
                SHX1_3 = "~r~MISSION FAILED"
                SHX2_3 = "You crashed your plane, go get a new one!"
                SHX0_3(SHX1_3, SHX2_3)
                SHX0_3 = TriggerServerEvent
                SHX1_3 = "8ae979e044"
                SHX0_3(SHX1_3)
              end
              SHX1_2(SHX2_2)
            end
          end
        else
          SHX1_2 = SHX7_1
          if not SHX1_2 then
            SHX1_2 = true
            SHX7_1 = SHX1_2
            SHX1_2 = Citizen
            SHX1_2 = SHX1_2.CreateThread
            function SHX2_2()
              -- [AI CLEANUP] Decompiled Lua - Fix these:
              -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
              -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
              -- 3. Replace goto/label with while/repeat-until where possible
              -- 4. Remove decompiler comments, add meaningful ones
              -- 5. Fix indentation and formatting
              
              local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3
              SHX0_3 = false
              SHX1_3 = 1
              SHX2_3 = SHX0_1.takeOffLocs
              SHX2_3 = #SHX2_3
              SHX3_3 = 1
              for SHX4_3 = SHX1_3, SHX2_3, SHX3_3 do
                SHX5_3 = SHX0_1.takeOffLocs
                SHX5_3 = SHX5_3[SHX4_3]
                SHX5_3 = SHX5_3.coords
                SHX6_3 = CMG
                SHX6_3 = SHX6_3.getPlayerCoords
                SHX6_3 = SHX6_3()
                SHX5_3 = SHX5_3 - SHX6_3
                SHX5_3 = #SHX5_3
                SHX6_3 = 1500
                if SHX5_3 < SHX6_3 then
                  SHX0_3 = true
                end
              end
              if not SHX0_3 then
                SHX1_3 = SHX55_1
                SHX2_3 = {}
                SHX2_3.transactionType = "pilotPullUpAlarm"
                SHX1_3(SHX2_3)
                SHX1_3 = CMG
                SHX1_3 = SHX1_3.drawPlaneScaleForm
                SHX2_3 = "~r~ LOW ALTITUDE"
                SHX3_3 = "Low altitude warning, Pull up!"
                SHX1_3(SHX2_3, SHX3_3)
              end
              SHX1_3 = false
              SHX7_1 = SHX1_3
            end
            SHX1_2(SHX2_2)
          end
        end
        SHX1_2 = GetGameTimer
        SHX1_2 = SHX1_2()
        SHX2_2 = GetEntityVelocity
        SHX3_2 = SHX5_1
        SHX2_2 = SHX2_2(SHX3_2)
        SHX3_2 = SHX39_1
        SHX3_2 = SHX1_2 - SHX3_2
        SHX4_2 = 1000
        if SHX3_2 < SHX4_2 then
          SHX4_2 = SHX2_2.z
          SHX5_2 = SHX40_1.z
          SHX4_2 = SHX4_2 - SHX5_2
          SHX5_2 = SHX3_2 / 1000
          SHX5_2 = SHX4_2 / SHX5_2
          SHX6_2 = SHX5_2 / 9.81
          SHX7_2 = -0.05
          if SHX6_2 > SHX7_2 then
            SHX7_2 = 0.05
            if SHX6_2 < SHX7_2 then
              SHX6_2 = 0.0
            end
          end
          SHX7_2 = false
          SHX8_2 = CMG
          SHX8_2 = SHX8_2.getTunableValue
          SHX9_2 = "pilot_gforce_limit"
          SHX8_2 = SHX8_2(SHX9_2)
          if SHX0_2 > 5.0 then
            if not (SHX6_2 > SHX8_2) then
              SHX9_2 = -SHX8_2
              if not (SHX6_2 < SHX9_2) then
                goto SHX_LABEL_102
              end
            end
            SHX9_2 = SHX41_1
            SHX10_2 = math
            SHX10_2 = SHX10_2.abs
            SHX11_2 = SHX6_2
            SHX10_2 = SHX10_2(SHX11_2)
            SHX10_2 = SHX3_2 * SHX10_2
            SHX9_2 = SHX9_2 + SHX10_2
            SHX41_1 = SHX9_2
            SHX7_2 = true
          end
          -- [FIX IF ERROR] Move ::SHX_LABEL_102:: outside nested blocks until all 'goto SHX_LABEL_102' can see it
          ::SHX_LABEL_102::
          if SHX7_2 then
            SHX9_2 = "~r~"
            if SHX9_2 then
              goto SHX_LABEL_108
            end
          end
          SHX9_2 = ""
          -- [FIX IF ERROR] Move ::SHX_LABEL_108:: outside nested blocks until all 'goto SHX_LABEL_108' can see it
          ::SHX_LABEL_108::
          if SHX7_2 then
            SHX10_2 = 0.8
            if SHX10_2 then
              goto SHX_LABEL_114
            end
          end
          SHX10_2 = 0.4
          -- [FIX IF ERROR] Move ::SHX_LABEL_114:: outside nested blocks until all 'goto SHX_LABEL_114' can see it
          ::SHX_LABEL_114::
          SHX11_2 = CMG
          SHX11_2 = SHX11_2.DrawText
          SHX12_2 = 0.75
          SHX13_2 = 0.005
          SHX14_2 = SHX9_2
          SHX15_2 = "Vertical Gs: "
          SHX16_2 = tostring
          SHX17_2 = math
          SHX17_2 = SHX17_2.round
          SHX18_2 = SHX6_2
          SHX19_2 = 1
          SHX17_2, SHX18_2, SHX19_2 = SHX17_2(SHX18_2, SHX19_2)
          SHX16_2 = SHX16_2(SHX17_2, SHX18_2, SHX19_2)
          SHX14_2 = SHX14_2 .. SHX15_2 .. SHX16_2
          SHX15_2 = SHX10_2
          SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2)
          SHX11_2 = CMG
          SHX11_2 = SHX11_2.isDevMode
          SHX11_2 = SHX11_2()
          if SHX11_2 then
            SHX11_2 = CMG
            SHX11_2 = SHX11_2.DrawText
            SHX12_2 = 0.75
            SHX13_2 = 0.05
            SHX14_2 = SHX9_2
            SHX15_2 = "Damage Counter: "
            SHX16_2 = tostring
            SHX17_2 = SHX41_1
            SHX16_2 = SHX16_2(SHX17_2)
            SHX14_2 = SHX14_2 .. SHX15_2 .. SHX16_2
            SHX15_2 = SHX10_2
            SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2)
          end
        end
        SHX39_1 = SHX1_2
        SHX40_1 = SHX2_2
      else
        SHX0_2 = SHX8_1
        if SHX0_2 then
          SHX0_2 = SHX7_1
          if not SHX0_2 then
            SHX0_2 = true
            SHX7_1 = SHX0_2
            SHX0_2 = Citizen
            SHX0_2 = SHX0_2.CreateThread
            function SHX1_2()
              -- [AI CLEANUP] Decompiled Lua - Fix these:
              -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
              -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
              -- 3. Replace goto/label with while/repeat-until where possible
              -- 4. Remove decompiler comments, add meaningful ones
              -- 5. Fix indentation and formatting
              
              local SHX0_3, SHX1_3, SHX2_3, SHX3_3
              SHX0_3 = CMG
              SHX0_3 = SHX0_3.drawPlaneScaleForm
              SHX1_3 = "~r~WARNING!"
              SHX2_3 = "Get back in your plane"
              SHX3_3 = 10
              SHX0_3(SHX1_3, SHX2_3, SHX3_3)
              SHX0_3 = Wait
              SHX1_3 = 10000
              SHX0_3(SHX1_3)
              SHX0_3 = CMG
              SHX0_3 = SHX0_3.getPlayerVehicle
              SHX0_3 = SHX0_3()
              SHX1_3 = SHX5_1
              if SHX0_3 ~= SHX1_3 then
                SHX0_3 = DeleteEntity
                SHX1_3 = SHX5_1
                SHX0_3(SHX1_3)
                SHX0_3 = false
                SHX8_1 = SHX0_3
                SHX0_3 = TriggerServerEvent
                SHX1_3 = "8ae979e044"
                SHX0_3(SHX1_3)
              end
            end
            SHX0_2(SHX1_2)
          end
        end
      end
    else
      SHX0_2 = SHX8_1
      if SHX0_2 then
        SHX0_2 = CMG
        SHX0_2 = SHX0_2.getTunableValue
        SHX1_2 = "pilot_delete_fails"
        SHX0_2 = SHX0_2(SHX1_2)
        if SHX0_2 then
          SHX0_2 = GetGameTimer
          SHX0_2 = SHX0_2()
          SHX1_2 = SHX60_1
          SHX0_2 = SHX0_2 - SHX1_2
          SHX1_2 = 10000
          if SHX0_2 > SHX1_2 then
            SHX0_2 = CMG
            SHX0_2 = SHX0_2.drawPlaneScaleForm
            SHX1_2 = "~r~WARNING!"
            SHX2_2 = "Job ended as plane does not exist"
            SHX3_2 = 10
            SHX0_2(SHX1_2, SHX2_2, SHX3_2)
            SHX0_2 = false
            SHX8_1 = SHX0_2
            SHX0_2 = TriggerServerEvent
            SHX1_2 = "8ae979e044"
            SHX0_2(SHX1_2)
          end
        end
      end
    end
    SHX0_2 = SHX16_1
    if SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.arePilotJobGuidesDisabled
      SHX0_2 = SHX0_2()
      if not SHX0_2 then
        SHX0_2 = drawNativeText
        SHX1_2 = SHX16_1
        SHX0_2(SHX1_2)
      end
    end
  end
end
SHX62_1 = CMG
SHX62_1 = SHX62_1.createThreadOnTick
SHX63_1 = SHX61_1
SHX64_1 = "Pilot Plane Check"
SHX62_1(SHX63_1, SHX64_1)
function SHX62_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX0_2 = {}
  SHX1_2 = pairs
  SHX2_2 = GetGamePool
  SHX3_2 = "CVehicle"
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2 = SHX2_2(SHX3_2)
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = GetEntityModel
    SHX8_2 = SHX6_2
    SHX7_2 = SHX7_2(SHX8_2)
    SHX8_2 = IsThisModelAHeli
    SHX9_2 = SHX7_2
    SHX8_2 = SHX8_2(SHX9_2)
    if not SHX8_2 then
      SHX8_2 = IsThisModelAPlane
      SHX9_2 = SHX7_2
      SHX8_2 = SHX8_2(SHX9_2)
      if not SHX8_2 then
        goto SHX_LABEL_27
      end
    end
    SHX8_2 = table
    SHX8_2 = SHX8_2.insert
    SHX9_2 = SHX0_2
    SHX10_2 = SHX6_2
    SHX8_2(SHX9_2, SHX10_2)
    -- [FIX IF ERROR] Move ::SHX_LABEL_27:: outside nested blocks until all 'goto SHX_LABEL_27' can see it
    ::SHX_LABEL_27::
  end
  SHX1_2 = pairs
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = pairs
    SHX8_2 = SHX0_2
    SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
    for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
      if SHX6_2 ~= SHX12_2 then
        SHX13_2 = SetEntityNoCollisionEntity
        SHX14_2 = SHX6_2
        SHX15_2 = SHX12_2
        SHX16_2 = true
        SHX13_2(SHX14_2, SHX15_2, SHX16_2)
      end
    end
    SHX7_2 = DisableCamCollisionForEntity
    SHX8_2 = SHX6_2
    SHX7_2(SHX8_2)
  end
end
SHX63_1 = Citizen
SHX63_1 = SHX63_1.CreateThread
function SHX64_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  while true do
    SHX0_2 = globalOnPilotDuty
    if SHX0_2 then
      SHX0_2 = SHX62_1
      SHX0_2()
      SHX0_2 = IsPedInVehicle
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.getPlayerPed
      SHX1_2 = SHX1_2()
      SHX2_2 = SHX5_1
      SHX3_2 = false
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      if SHX0_2 then
        SHX0_2 = SHX17_1
        if SHX0_2 > 0 then
          SHX0_2 = GetIsVehicleEngineRunning
          SHX1_2 = CMG
          SHX1_2 = SHX1_2.getPlayerVehicle
          SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2()
          SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
          if SHX0_2 then
            SHX0_2 = Wait
            SHX1_2 = math
            SHX1_2 = SHX1_2.random
            SHX2_2 = 6000
            SHX3_2 = 10000
            SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2, SHX3_2)
            SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
            SHX0_2 = SHX17_1
            SHX0_2 = SHX0_2 - 1
            SHX17_1 = SHX0_2
        end
      end
      else
        SHX0_2 = IsPedInVehicle
        SHX1_2 = CMG
        SHX1_2 = SHX1_2.getPlayerPed
        SHX1_2 = SHX1_2()
        SHX2_2 = SHX5_1
        SHX3_2 = false
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2)
        if SHX0_2 then
          SHX0_2 = SHX17_1
          if 0 == SHX0_2 then
            SHX0_2 = GetIsVehicleEngineRunning
            SHX1_2 = CMG
            SHX1_2 = SHX1_2.getPlayerVehicle
            SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2()
            SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
            if SHX0_2 then
              SHX0_2 = SetVehicleEngineOn
              SHX1_2 = CMG
              SHX1_2 = SHX1_2.getPlayerVehicle
              SHX1_2 = SHX1_2()
              SHX2_2 = false
              SHX3_2 = true
              SHX4_2 = true
              SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
            end
          end
        end
      end
      SHX0_2 = IsPedInVehicle
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.getPlayerPed
      SHX1_2 = SHX1_2()
      SHX2_2 = SHX5_1
      SHX3_2 = false
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      if SHX0_2 then
        SHX0_2 = SHX17_1
        SHX1_2 = SHX18_1
        SHX1_2 = SHX1_2 * 0.2
        if SHX0_2 <= SHX1_2 then
          SHX0_2 = SHX13_1
          if not SHX0_2 then
            SHX0_2 = SHX9_1
            if not SHX0_2 then
              SHX0_2 = true
              SHX13_1 = SHX0_2
              SHX0_2 = SHX50_1
              SHX0_2()
            end
          end
        end
      end
      SHX0_2 = SHX17_1
      SHX1_2 = SHX18_1
      SHX0_2 = SHX0_2 / SHX1_2
      SHX1_2 = SHX21_1.height
      SHX0_2 = SHX0_2 * SHX1_2
      SHX28_1.height = SHX0_2
      SHX0_2 = SHX21_1.y
      SHX1_2 = SHX21_1.height
      SHX1_2 = SHX1_2 / 2
      SHX2_2 = SHX28_1.height
      SHX2_2 = SHX2_2 / 2
      SHX1_2 = SHX1_2 - SHX2_2
      SHX0_2 = SHX0_2 + SHX1_2
      SHX28_1.y = SHX0_2
    end
    SHX0_2 = Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
end
SHX63_1(SHX64_1)
function SHX63_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = globalOnPilotDuty
  if SHX0_2 then
    SHX0_2 = IsPedInVehicle
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerPed
    SHX1_2 = SHX1_2()
    SHX2_2 = SHX5_1
    SHX3_2 = false
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    if not SHX0_2 then
      SHX0_2 = DoesEntityExist
      SHX1_2 = SHX5_1
      SHX0_2 = SHX0_2(SHX1_2)
      if not SHX0_2 then
        goto SHX_LABEL_118
      end
    end
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerPed
    SHX0_2 = SHX0_2()
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerVehicle
    SHX1_2 = SHX1_2()
    SHX2_2 = DoesEntityExist
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      SHX2_2 = IsThisModelAPlane
      SHX3_2 = GetEntityModel
      SHX4_2 = SHX1_2
      SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX3_2(SHX4_2)
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
      if SHX2_2 then
        goto SHX_LABEL_37
      end
    end
    SHX1_2 = SHX5_1
    -- [FIX IF ERROR] Move ::SHX_LABEL_37:: outside nested blocks until all 'goto SHX_LABEL_37' can see it
    ::SHX_LABEL_37::
    SHX2_2 = GetActivePlayers
    SHX2_2 = SHX2_2()
    SHX3_2 = pairs
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.getAllVehicles
    SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX4_2()
    SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
      SHX9_2 = SetEntityNoCollisionEntity
      SHX10_2 = SHX0_2
      SHX11_2 = SHX8_2
      SHX12_2 = true
      SHX9_2(SHX10_2, SHX11_2, SHX12_2)
      SHX9_2 = SetEntityNoCollisionEntity
      SHX10_2 = SHX8_2
      SHX11_2 = SHX0_2
      SHX12_2 = true
      SHX9_2(SHX10_2, SHX11_2, SHX12_2)
      SHX9_2 = SetEntityNoCollisionEntity
      SHX10_2 = SHX1_2
      SHX11_2 = SHX8_2
      SHX12_2 = true
      SHX9_2(SHX10_2, SHX11_2, SHX12_2)
      SHX9_2 = SetEntityNoCollisionEntity
      SHX10_2 = SHX8_2
      SHX11_2 = SHX1_2
      SHX12_2 = true
      SHX9_2(SHX10_2, SHX11_2, SHX12_2)
    end
    SHX3_2 = pairs
    SHX4_2 = SHX2_2
    SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
    for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
      SHX9_2 = GetPlayerPed
      SHX10_2 = SHX8_2
      SHX9_2 = SHX9_2(SHX10_2)
      SHX10_2 = GetVehiclePedIsIn
      SHX11_2 = SHX9_2
      SHX12_2 = true
      SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
      if SHX10_2 then
        SHX11_2 = PlayerPedId
        SHX11_2 = SHX11_2()
        if SHX9_2 ~= SHX11_2 then
          SHX11_2 = SetEntityNoCollisionEntity
          SHX12_2 = SHX0_2
          SHX13_2 = SHX10_2
          SHX14_2 = true
          SHX11_2(SHX12_2, SHX13_2, SHX14_2)
          SHX11_2 = SetEntityNoCollisionEntity
          SHX12_2 = SHX10_2
          SHX13_2 = SHX0_2
          SHX14_2 = true
          SHX11_2(SHX12_2, SHX13_2, SHX14_2)
          SHX11_2 = SetEntityNoCollisionEntity
          SHX12_2 = SHX1_2
          SHX13_2 = SHX10_2
          SHX14_2 = true
          SHX11_2(SHX12_2, SHX13_2, SHX14_2)
          SHX11_2 = SetEntityNoCollisionEntity
          SHX12_2 = SHX10_2
          SHX13_2 = SHX1_2
          SHX14_2 = true
          SHX11_2(SHX12_2, SHX13_2, SHX14_2)
        end
      end
      SHX11_2 = SetEntityNoCollisionEntity
      SHX12_2 = SHX9_2
      SHX13_2 = SHX1_2
      SHX14_2 = true
      SHX11_2(SHX12_2, SHX13_2, SHX14_2)
      SHX11_2 = SetEntityNoCollisionEntity
      SHX12_2 = SHX1_2
      SHX13_2 = SHX9_2
      SHX14_2 = true
      SHX11_2(SHX12_2, SHX13_2, SHX14_2)
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_118:: outside nested blocks until all 'goto SHX_LABEL_118' can see it
  ::SHX_LABEL_118::
end
SHX64_1 = CMG
SHX64_1 = SHX64_1.createThreadOnTick
SHX65_1 = SHX63_1
SHX66_1 = "Pilot Collision Disable"
SHX64_1(SHX65_1, SHX66_1)
SHX64_1 = nil
function SHX65_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = SHX64_1
  if SHX0_2 then
    SHX0_2 = pairs
    SHX1_2 = SHX64_1
    SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
    for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
      SHX6_2 = RemoveBlip
      SHX7_2 = SHX5_2
      SHX6_2(SHX7_2)
    end
  end
  SHX0_2 = nil
  SHX64_1 = SHX0_2
end
SHX66_1 = RegisterNetEvent
SHX67_1 = "8bd13f474f"
function SHX68_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX1_2 = SHX65_1
  SHX1_2()
  SHX1_2 = {}
  SHX64_1 = SHX1_2
  SHX1_2 = pairs
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.getLocalPlayerSrc
    SHX7_2 = SHX7_2()
    if SHX7_2 ~= SHX5_2 then
      SHX7_2 = table
      SHX7_2 = SHX7_2.unpack
      SHX8_2 = SHX6_2
      SHX7_2, SHX8_2 = SHX7_2(SHX8_2)
      SHX9_2 = AddBlipForCoord
      SHX10_2 = SHX7_2.x
      SHX11_2 = SHX7_2.y
      SHX12_2 = SHX7_2.z
      SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2)
      SHX10_2 = SetBlipSprite
      SHX11_2 = SHX9_2
      SHX12_2 = 307
      SHX10_2(SHX11_2, SHX12_2)
      SHX10_2 = SetBlipRotation
      SHX11_2 = SHX9_2
      SHX12_2 = math
      SHX12_2 = SHX12_2.floor
      SHX13_2 = SHX8_2
      SHX12_2, SHX13_2 = SHX12_2(SHX13_2)
      SHX10_2(SHX11_2, SHX12_2, SHX13_2)
      SHX10_2 = table
      SHX10_2 = SHX10_2.insert
      SHX11_2 = SHX64_1
      SHX12_2 = SHX9_2
      SHX10_2(SHX11_2, SHX12_2)
    end
  end
end
SHX66_1(SHX67_1, SHX68_1)
SHX66_1 = RegisterNetEvent
SHX67_1 = "cecfb38548"
function SHX68_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX65_1
  SHX0_2()
end
SHX66_1(SHX67_1, SHX68_1)
SHX66_1 = vector3
SHX67_1 = -1335.5045166016
SHX68_1 = -2851.1315917969
SHX69_1 = 13.94490814209
SHX66_1 = SHX66_1(SHX67_1, SHX68_1, SHX69_1)
SHX67_1 = 500.0
function SHX68_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX2_2 = GetVehicleModelNumberOfSeats
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if 0 == SHX2_2 then
    SHX3_2 = false
    return SHX3_2
  end
  SHX3_2 = -1
  SHX4_2 = SHX2_2 - 2
  SHX5_2 = 1
  for SHX6_2 = SHX3_2, SHX4_2, SHX5_2 do
    SHX7_2 = IsVehicleSeatFree
    SHX8_2 = SHX0_2
    SHX9_2 = SHX6_2
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
    if not SHX7_2 then
      SHX7_2 = false
      return SHX7_2
    end
  end
  SHX3_2 = true
  return SHX3_2
end
function SHX69_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2 = math
  SHX0_2 = SHX0_2.floor
  SHX1_2 = GetNetworkTime
  SHX1_2 = SHX1_2()
  SHX1_2 = SHX1_2 / 1000
  SHX0_2 = SHX0_2(SHX1_2)
  SHX1_2 = SHX0_2 % 60
  if 0 ~= SHX1_2 then
    return
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getTunableValue
  SHX2_2 = "clear_airport"
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    return
  end
  SHX1_2 = GetVehiclePedIsIn
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = true
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if 0 ~= SHX1_2 then
    SHX2_2 = GetEntityCoords
    SHX3_2 = SHX1_2
    SHX4_2 = true
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.getPlayerCoords
    SHX3_2 = SHX3_2()
    SHX2_2 = SHX2_2 - SHX3_2
    SHX2_2 = #SHX2_2
    if SHX2_2 > 25.0 then
      SHX1_2 = 0
    end
  end
  SHX2_2 = pairs
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getAllVehicles
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX3_2()
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = NetworkGetEntityIsNetworked
    SHX9_2 = SHX7_2
    SHX8_2 = SHX8_2(SHX9_2)
    if SHX8_2 then
      SHX8_2 = NetworkHasControlOfEntity
      SHX9_2 = SHX7_2
      SHX8_2 = SHX8_2(SHX9_2)
      if SHX8_2 and SHX7_2 ~= SHX1_2 then
        SHX8_2 = GetEntityModel
        SHX9_2 = SHX7_2
        SHX8_2 = SHX8_2(SHX9_2)
        SHX9_2 = IsThisModelAHeli
        SHX10_2 = SHX8_2
        SHX9_2 = SHX9_2(SHX10_2)
        if not SHX9_2 then
          SHX9_2 = IsThisModelAPlane
          SHX10_2 = SHX8_2
          SHX9_2 = SHX9_2(SHX10_2)
          if not SHX9_2 and 1560980623 ~= SHX8_2 then
            SHX9_2 = SHX68_1
            SHX10_2 = SHX7_2
            SHX11_2 = SHX8_2
            SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
            if SHX9_2 then
              SHX9_2 = GetEntityAttachedTo
              SHX10_2 = SHX7_2
              SHX9_2 = SHX9_2(SHX10_2)
              if 0 == SHX9_2 then
                SHX9_2 = DeleteEntity
                SHX10_2 = SHX7_2
                SHX9_2(SHX10_2)
              end
            end
          end
        end
      end
    end
  end
end
SHX70_1 = CMG
SHX70_1 = SHX70_1.createArea
SHX71_1 = "pilot_clear_area"
SHX72_1 = SHX66_1
SHX73_1 = SHX67_1
SHX74_1 = SHX67_1
function SHX75_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
function SHX76_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
SHX77_1 = SHX69_1
SHX78_1 = {}
SHX70_1(SHX71_1, SHX72_1, SHX73_1, SHX74_1, SHX75_1, SHX76_1, SHX77_1, SHX78_1)
SHX70_1 = vector3
SHX71_1 = 3070.2856445312
SHX72_1 = -4729.2885742188
SHX73_1 = 15.261543273926
SHX70_1 = SHX70_1(SHX71_1, SHX72_1, SHX73_1)
SHX71_1 = 200.0
SHX72_1 = 0
SHX73_1 = {}
SHX74_1 = 1246158990
SHX75_1 = -2133399564
SHX73_1[1] = SHX74_1
SHX73_1[2] = SHX75_1
function SHX74_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX0_2 = GetGameTimer
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX72_1
  SHX1_2 = SHX0_2 - SHX1_2
  SHX2_2 = 1000
  if SHX1_2 < SHX2_2 then
    return
  end
  SHX1_2 = pairs
  SHX2_2 = GetGamePool
  SHX3_2 = "CObject"
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2 = SHX2_2(SHX3_2)
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = GetEntityModel
    SHX8_2 = SHX6_2
    SHX7_2 = SHX7_2(SHX8_2)
    SHX8_2 = table
    SHX8_2 = SHX8_2.has
    SHX9_2 = SHX73_1
    SHX10_2 = SHX7_2
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
    if SHX8_2 then
      SHX8_2 = SetEntityCanBeDamaged
      SHX9_2 = SHX6_2
      SHX10_2 = false
      SHX8_2(SHX9_2, SHX10_2)
      SHX8_2 = SetEntityProofs
      SHX9_2 = SHX6_2
      SHX10_2 = true
      SHX11_2 = true
      SHX12_2 = true
      SHX13_2 = true
      SHX14_2 = false
      SHX15_2 = false
      SHX16_2 = false
      SHX17_2 = false
      SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
    end
  end
  SHX72_1 = SHX0_2
end
SHX75_1 = CMG
SHX75_1 = SHX75_1.createArea
SHX76_1 = "no_explosion_props"
SHX77_1 = SHX70_1
SHX78_1 = SHX71_1
SHX79_1 = SHX71_1
function SHX80_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
function SHX81_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
SHX82_1 = SHX74_1
SHX75_1(SHX76_1, SHX77_1, SHX78_1, SHX79_1, SHX80_1, SHX81_1, SHX82_1)
