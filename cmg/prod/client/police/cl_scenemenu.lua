-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1
SHX0_1 = RMenu
SHX0_1 = SHX0_1.Add
SHX1_1 = "cmgscenemenu"
SHX2_1 = "main"
SHX3_1 = RageUI
SHX3_1 = SHX3_1.CreateMenu
SHX4_1 = ""
SHX5_1 = "~b~CMG Traffic Scene Menu"
SHX6_1 = CMG
SHX6_1 = SHX6_1.getRageUIMenuWidth
SHX6_1 = SHX6_1()
SHX7_1 = CMG
SHX7_1 = SHX7_1.getRageUIMenuHeight
SHX7_1 = SHX7_1()
SHX8_1 = "cmg_jobselectorui"
SHX9_1 = "metpd"
SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1)
SHX0_1(SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1)
SHX0_1 = RMenu
SHX0_1 = SHX0_1.Add
SHX1_1 = "cmgscenemenu"
SHX2_1 = "objects"
SHX3_1 = RageUI
SHX3_1 = SHX3_1.CreateSubMenu
SHX4_1 = RMenu
SHX5_1 = SHX4_1
SHX4_1 = SHX4_1.Get
SHX6_1 = "cmgscenemenu"
SHX7_1 = "main"
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX5_1 = ""
SHX6_1 = "~b~Spawn Objects"
SHX7_1 = CMG
SHX7_1 = SHX7_1.getRageUIMenuWidth
SHX7_1 = SHX7_1()
SHX8_1 = CMG
SHX8_1 = SHX8_1.getRageUIMenuHeight
SHX8_1 = SHX8_1()
SHX9_1 = "cmg_jobselectorui"
SHX10_1 = "metpd"
SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1)
SHX0_1(SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1)
SHX0_1 = RMenu
SHX0_1 = SHX0_1.Add
SHX1_1 = "cmgscenemenu"
SHX2_1 = "speedZone"
SHX3_1 = RageUI
SHX3_1 = SHX3_1.CreateSubMenu
SHX4_1 = RMenu
SHX5_1 = SHX4_1
SHX4_1 = SHX4_1.Get
SHX6_1 = "cmgscenemenu"
SHX7_1 = "main"
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX5_1 = ""
SHX6_1 = "~b~Set a speed zone"
SHX7_1 = CMG
SHX7_1 = SHX7_1.getRageUIMenuWidth
SHX7_1 = SHX7_1()
SHX8_1 = CMG
SHX8_1 = SHX8_1.getRageUIMenuHeight
SHX8_1 = SHX8_1()
SHX9_1 = "cmg_jobselectorui"
SHX10_1 = "metpd"
SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1)
SHX0_1(SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1)
SHX0_1 = RMenu
SHX0_1 = SHX0_1.Add
SHX1_1 = "cmgscenemenu"
SHX2_1 = "scenecontainment"
SHX3_1 = RageUI
SHX3_1 = SHX3_1.CreateSubMenu
SHX4_1 = RMenu
SHX5_1 = SHX4_1
SHX4_1 = SHX4_1.Get
SHX6_1 = "cmgscenemenu"
SHX7_1 = "main"
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX5_1 = ""
SHX6_1 = "~b~Scene Containment"
SHX7_1 = CMG
SHX7_1 = SHX7_1.getRageUIMenuWidth
SHX7_1 = SHX7_1()
SHX8_1 = CMG
SHX8_1 = SHX8_1.getRageUIMenuHeight
SHX8_1 = SHX8_1()
SHX9_1 = "cmg_jobselectorui"
SHX10_1 = "metpd"
SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1)
SHX0_1(SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1)
SHX0_1 = RMenu
SHX0_1 = SHX0_1.Add
SHX1_1 = "cmgscenemenu"
SHX2_1 = "newscenecontainement"
SHX3_1 = RageUI
SHX3_1 = SHX3_1.CreateSubMenu
SHX4_1 = RMenu
SHX5_1 = SHX4_1
SHX4_1 = SHX4_1.Get
SHX6_1 = "cmgscenemenu"
SHX7_1 = "scenecontainment"
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX5_1 = ""
SHX6_1 = "~b~New Scene Containment"
SHX7_1 = CMG
SHX7_1 = SHX7_1.getRageUIMenuWidth
SHX7_1 = SHX7_1()
SHX8_1 = CMG
SHX8_1 = SHX8_1.getRageUIMenuHeight
SHX8_1 = SHX8_1()
SHX9_1 = "cmg_jobselectorui"
SHX10_1 = "metpd"
SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1)
SHX0_1(SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1)
SHX0_1 = RMenu
SHX0_1 = SHX0_1.Add
SHX1_1 = "cmgscenemenu"
SHX2_1 = "pendingscenecontainments"
SHX3_1 = RageUI
SHX3_1 = SHX3_1.CreateSubMenu
SHX4_1 = RMenu
SHX5_1 = SHX4_1
SHX4_1 = SHX4_1.Get
SHX6_1 = "cmgscenemenu"
SHX7_1 = "scenecontainment"
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX5_1 = ""
SHX6_1 = "~b~Pending Scene Containment"
SHX7_1 = CMG
SHX7_1 = SHX7_1.getRageUIMenuWidth
SHX7_1 = SHX7_1()
SHX8_1 = CMG
SHX8_1 = SHX8_1.getRageUIMenuHeight
SHX8_1 = SHX8_1()
SHX9_1 = "cmg_jobselectorui"
SHX10_1 = "metpd"
SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1)
SHX0_1(SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1)
SHX0_1 = RMenu
SHX0_1 = SHX0_1.Add
SHX1_1 = "cmgscenemenu"
SHX2_1 = "spikes"
SHX3_1 = RageUI
SHX3_1 = SHX3_1.CreateSubMenu
SHX4_1 = RMenu
SHX5_1 = SHX4_1
SHX4_1 = SHX4_1.Get
SHX6_1 = "cmgscenemenu"
SHX7_1 = "main"
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX5_1 = ""
SHX6_1 = "~b~Set a spike trap"
SHX7_1 = CMG
SHX7_1 = SHX7_1.getRageUIMenuWidth
SHX7_1 = SHX7_1()
SHX8_1 = CMG
SHX8_1 = SHX8_1.getRageUIMenuHeight
SHX8_1 = SHX8_1()
SHX9_1 = "cmg_jobselectorui"
SHX10_1 = "metpd"
SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1)
SHX0_1(SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1)
SHX0_1 = RMenu
SHX0_1 = SHX0_1.Add
SHX1_1 = "cmgscenemenu"
SHX2_1 = "vigilantespikes"
SHX3_1 = RageUI
SHX3_1 = SHX3_1.CreateMenu
SHX4_1 = ""
SHX5_1 = "~b~Spike Strips"
SHX6_1 = CMG
SHX6_1 = SHX6_1.getRageUIMenuWidth
SHX6_1 = SHX6_1()
SHX7_1 = CMG
SHX7_1 = SHX7_1.getRageUIMenuHeight
SHX7_1 = SHX7_1()
SHX8_1 = "cmg_jobselectorui"
SHX9_1 = "jobcentre"
SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1)
SHX0_1(SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1)
SHX0_1 = {}
SHX1_1 = {}
SHX1_1.object = 1
SHX1_1.speedRad = 1
SHX1_1.speed = 1
SHX1_1.amount = 1
SHX1_1.seperation = 1
SHX1_1.degrees = 1
SHX2_1 = {}
SHX1_1.previewObjects = SHX2_1
SHX2_1 = {}
SHX3_1 = 0
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hasClientPermission
  SHX1_2 = "police.onduty.permission"
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.hasClientPermission
    SHX1_2 = "borderforce.onduty.permission"
    SHX0_2 = SHX0_2(SHX1_2)
    if not SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.hasClientGroup
      SHX1_2 = "Vigilante"
      SHX0_2 = SHX0_2(SHX1_2)
      if SHX0_2 then
        SHX0_2 = CMG
        SHX0_2 = SHX0_2.hasClientSkill
        SHX1_2 = "vigilante_spike_strips_1"
        SHX0_2 = SHX0_2(SHX1_2)
      end
    end
  end
  return SHX0_2
end
SHX5_1 = TriggerEvent
SHX6_1 = "chat:addSuggestion"
SHX7_1 = "/trafficmenu"
SHX8_1 = "Open the traffic scene menu"
SHX5_1(SHX6_1, SHX7_1, SHX8_1)
SHX5_1 = {}
SHX6_1 = "0"
SHX7_1 = "25"
SHX8_1 = "50"
SHX9_1 = "75"
SHX10_1 = "100"
SHX11_1 = "125"
SHX12_1 = "150"
SHX13_1 = "175"
SHX14_1 = "200"
SHX5_1[1] = SHX6_1
SHX5_1[2] = SHX7_1
SHX5_1[3] = SHX8_1
SHX5_1[4] = SHX9_1
SHX5_1[5] = SHX10_1
SHX5_1[6] = SHX11_1
SHX5_1[7] = SHX12_1
SHX5_1[8] = SHX13_1
SHX5_1[9] = SHX14_1
SHX6_1 = {}
SHX7_1 = "0"
SHX8_1 = "5"
SHX9_1 = "10"
SHX10_1 = "15"
SHX11_1 = "20"
SHX12_1 = "25"
SHX13_1 = "30"
SHX14_1 = "35"
SHX15_1 = "40"
SHX16_1 = "45"
SHX17_1 = "50"
SHX6_1[1] = SHX7_1
SHX6_1[2] = SHX8_1
SHX6_1[3] = SHX9_1
SHX6_1[4] = SHX10_1
SHX6_1[5] = SHX11_1
SHX6_1[6] = SHX12_1
SHX6_1[7] = SHX13_1
SHX6_1[8] = SHX14_1
SHX6_1[9] = SHX15_1
SHX6_1[10] = SHX16_1
SHX6_1[11] = SHX17_1
SHX7_1 = {}
SHX8_1 = 1
SHX9_1 = 2
SHX10_1 = 3
SHX11_1 = 4
SHX12_1 = 5
SHX7_1[1] = SHX8_1
SHX7_1[2] = SHX9_1
SHX7_1[3] = SHX10_1
SHX7_1[4] = SHX11_1
SHX7_1[5] = SHX12_1
SHX8_1 = {}
SHX9_1 = 3
SHX10_1 = 6
SHX11_1 = 9
SHX12_1 = 12
SHX13_1 = 15
SHX8_1[1] = SHX9_1
SHX8_1[2] = SHX10_1
SHX8_1[3] = SHX11_1
SHX8_1[4] = SHX12_1
SHX8_1[5] = SHX13_1
SHX9_1 = {}
SHX10_1 = 0
SHX11_1 = 45
SHX12_1 = 90
SHX13_1 = 135
SHX14_1 = 190
SHX15_1 = 235
SHX16_1 = 270
SHX17_1 = 315
SHX9_1[1] = SHX10_1
SHX9_1[2] = SHX11_1
SHX9_1[3] = SHX12_1
SHX9_1[4] = SHX13_1
SHX9_1[5] = SHX14_1
SHX9_1[6] = SHX15_1
SHX9_1[7] = SHX16_1
SHX9_1[8] = SHX17_1
SHX10_1 = {}
SHX11_1 = {}
SHX12_1 = {}
SHX13_1 = "Police Slow"
SHX14_1 = "prop_barrier_slow"
SHX15_1 = true
SHX16_1 = 0.05
SHX12_1[1] = SHX13_1
SHX12_1[2] = SHX14_1
SHX12_1[3] = SHX15_1
SHX12_1[4] = SHX16_1
SHX13_1 = {}
SHX14_1 = "Police No Entry"
SHX15_1 = "prop_barrier_noentry"
SHX16_1 = true
SHX17_1 = 0.05
SHX13_1[1] = SHX14_1
SHX13_1[2] = SHX15_1
SHX13_1[3] = SHX16_1
SHX13_1[4] = SHX17_1
SHX14_1 = {}
SHX15_1 = "Incident Ahead"
SHX16_1 = "prop_barrier_incident"
SHX17_1 = true
SHX18_1 = 0.05
SHX14_1[1] = SHX15_1
SHX14_1[2] = SHX16_1
SHX14_1[3] = SHX17_1
SHX14_1[4] = SHX18_1
SHX15_1 = {}
SHX16_1 = "Police Checkpoint"
SHX17_1 = "prop_barrier_checkpoint"
SHX18_1 = true
SHX19_1 = 0.05
SHX15_1[1] = SHX16_1
SHX15_1[2] = SHX17_1
SHX15_1[3] = SHX18_1
SHX15_1[4] = SHX19_1
SHX16_1 = {}
SHX17_1 = "Police Collision"
SHX18_1 = "prop_barrier_collision"
SHX19_1 = true
SHX20_1 = 0.05
SHX16_1[1] = SHX17_1
SHX16_1[2] = SHX18_1
SHX16_1[3] = SHX19_1
SHX16_1[4] = SHX20_1
SHX17_1 = {}
SHX18_1 = "Diagonal Left"
SHX19_1 = "prop_barrier_diagonalleft"
SHX20_1 = true
SHX21_1 = 0.05
SHX17_1[1] = SHX18_1
SHX17_1[2] = SHX19_1
SHX17_1[3] = SHX20_1
SHX17_1[4] = SHX21_1
SHX18_1 = {}
SHX19_1 = "Diagonal Right"
SHX20_1 = "prop_barrier_diagonalright"
SHX21_1 = true
SHX22_1 = 0.05
SHX18_1[1] = SHX19_1
SHX18_1[2] = SHX20_1
SHX18_1[3] = SHX21_1
SHX18_1[4] = SHX22_1
SHX19_1 = {}
SHX20_1 = "Big Cone"
SHX21_1 = "prop_roadcone01a"
SHX22_1 = true
SHX19_1[1] = SHX20_1
SHX19_1[2] = SHX21_1
SHX19_1[3] = SHX22_1
SHX20_1 = {}
SHX21_1 = "Gazebo"
SHX22_1 = "prop_gazebo_02"
SHX23_1 = true
SHX20_1[1] = SHX21_1
SHX20_1[2] = SHX22_1
SHX20_1[3] = SHX23_1
SHX21_1 = {}
SHX22_1 = "Worklight"
SHX23_1 = "prop_worklight_03b"
SHX24_1 = true
SHX21_1[1] = SHX22_1
SHX21_1[2] = SHX23_1
SHX21_1[3] = SHX24_1
SHX22_1 = {}
SHX23_1 = "Gate Barrier"
SHX24_1 = "ba_prop_battle_barrier_02a"
SHX25_1 = true
SHX22_1[1] = SHX23_1
SHX22_1[2] = SHX24_1
SHX22_1[3] = SHX25_1
SHX23_1 = {}
SHX24_1 = "Gazebo"
SHX25_1 = "prop_gazebo_02"
SHX26_1 = true
SHX23_1[1] = SHX24_1
SHX23_1[2] = SHX25_1
SHX23_1[3] = SHX26_1
SHX24_1 = {}
SHX25_1 = "Fence Transparent"
SHX26_1 = "prop_fncsec_03b"
SHX27_1 = true
SHX28_1 = -0.45
SHX24_1[1] = SHX25_1
SHX24_1[2] = SHX26_1
SHX24_1[3] = SHX27_1
SHX24_1[4] = SHX28_1
SHX25_1 = {}
SHX26_1 = "Fence Hidden"
SHX27_1 = "prop_fncsec_03d"
SHX28_1 = true
SHX25_1[1] = SHX26_1
SHX25_1[2] = SHX27_1
SHX25_1[3] = SHX28_1
SHX26_1 = {}
SHX27_1 = "Plastic Fence"
SHX28_1 = "prop_barrier_work06a"
SHX29_1 = true
SHX26_1[1] = SHX27_1
SHX26_1[2] = SHX28_1
SHX26_1[3] = SHX29_1
SHX11_1[1] = SHX12_1
SHX11_1[2] = SHX13_1
SHX11_1[3] = SHX14_1
SHX11_1[4] = SHX15_1
SHX11_1[5] = SHX16_1
SHX11_1[6] = SHX17_1
SHX11_1[7] = SHX18_1
SHX11_1[8] = SHX19_1
SHX11_1[9] = SHX20_1
SHX11_1[10] = SHX21_1
SHX11_1[11] = SHX22_1
SHX11_1[12] = SHX23_1
SHX11_1[13] = SHX24_1
SHX11_1[14] = SHX25_1
SHX11_1[15] = SHX26_1
SHX12_1 = {}
SHX13_1 = {}
SHX13_1.bone = "wheel_lf"
SHX13_1.index = 0
SHX14_1 = {}
SHX14_1.bone = "wheel_rf"
SHX14_1.index = 1
SHX15_1 = {}
SHX15_1.bone = "wheel_lm"
SHX15_1.index = 2
SHX16_1 = {}
SHX16_1.bone = "wheel_rm"
SHX16_1.index = 3
SHX17_1 = {}
SHX17_1.bone = "wheel_lr"
SHX17_1.index = 4
SHX18_1 = {}
SHX18_1.bone = "wheel_rr"
SHX18_1.index = 5
SHX12_1[1] = SHX13_1
SHX12_1[2] = SHX14_1
SHX12_1[3] = SHX15_1
SHX12_1[4] = SHX16_1
SHX12_1[5] = SHX17_1
SHX12_1[6] = SHX18_1
SHX13_1 = {}
SHX14_1 = pairs
SHX15_1 = SHX11_1
SHX14_1, SHX15_1, SHX16_1, SHX17_1 = SHX14_1(SHX15_1)
for SHX18_1, SHX19_1 in SHX14_1, SHX15_1, SHX16_1, SHX17_1 do
  SHX20_1 = SHX19_1[1]
  SHX13_1[SHX18_1] = SHX20_1
end
SHX14_1 = nil
SHX15_1 = nil
SHX16_1 = ""
SHX17_1 = {}
SHX18_1 = {}
function SHX19_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.getPlayerPed
  SHX6_2 = SHX6_2()
  SHX7_2 = GetEntityHeading
  SHX8_2 = SHX6_2
  SHX7_2 = SHX7_2(SHX8_2)
  SHX8_2 = GetEntityCoords
  SHX9_2 = PlayerPedId
  SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2 = SHX9_2()
  SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
  SHX9_2 = GetEntityForwardVector
  SHX10_2 = PlayerPedId
  SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2 = SHX10_2()
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
  SHX11_2 = SHX1_1.seperation
  SHX10_2 = SHX8_1
  SHX10_2 = SHX10_2[SHX11_2]
  SHX11_2 = SHX5_2 - 1
  SHX10_2 = SHX10_2 * SHX11_2
  SHX10_2 = 3.0 + SHX10_2
  SHX9_2 = SHX9_2 * SHX10_2
  SHX8_2 = SHX8_2 + SHX9_2
  SHX9_2 = CMG
  SHX9_2 = SHX9_2.loadModel
  SHX10_2 = SHX0_2
  SHX9_2 = SHX9_2(SHX10_2)
  if not SHX9_2 then
    return
  end
  if SHX4_2 then
    SHX10_2 = CMG
    SHX10_2 = SHX10_2.requestEntitySpawn
    SHX11_2 = "scenemenu_object"
    SHX12_2 = SHX9_2
    SHX13_2 = SHX8_2
    SHX10_2(SHX11_2, SHX12_2, SHX13_2)
  end
  SHX10_2 = CreateObject
  SHX11_2 = SHX9_2
  SHX12_2 = SHX8_2.x
  SHX13_2 = SHX8_2.y
  SHX14_2 = SHX8_2.z
  SHX15_2 = SHX4_2
  SHX16_2 = false
  SHX17_2 = false
  SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  if SHX1_2 then
    SHX11_2 = FreezeEntityPosition
    SHX12_2 = SHX10_2
    SHX13_2 = true
    SHX11_2(SHX12_2, SHX13_2)
  end
  SHX11_2 = PlaceObjectOnGroundProperly
  SHX12_2 = SHX10_2
  SHX11_2(SHX12_2)
  if SHX2_2 then
    SHX11_2 = GetEntityCoords
    SHX12_2 = SHX10_2
    SHX13_2 = true
    SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
    SHX12_2 = SetEntityCoords
    SHX13_2 = SHX10_2
    SHX14_2 = SHX11_2.x
    SHX15_2 = SHX11_2.y
    SHX16_2 = SHX11_2.z
    SHX16_2 = SHX16_2 + SHX2_2
    SHX17_2 = true
    SHX18_2 = true
    SHX19_2 = true
    SHX20_2 = true
    SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
  end
  SHX11_2 = SetEntityHeading
  SHX12_2 = SHX10_2
  SHX14_2 = SHX1_1.degrees
  SHX13_2 = SHX9_1
  SHX13_2 = SHX13_2[SHX14_2]
  SHX13_2 = SHX7_2 + SHX13_2
  SHX11_2(SHX12_2, SHX13_2)
  if SHX3_2 then
    SHX11_2 = SetEntityAlpha
    SHX12_2 = SHX10_2
    SHX13_2 = SHX3_2
    SHX14_2 = false
    SHX11_2(SHX12_2, SHX13_2, SHX14_2)
  end
  SHX11_2 = SetModelAsNoLongerNeeded
  SHX12_2 = SHX9_2
  SHX11_2(SHX12_2)
  SHX11_2 = table
  SHX11_2 = SHX11_2.insert
  SHX12_2 = SHX0_1
  SHX13_2 = {}
  SHX13_2.entity = SHX10_2
  SHX13_2.modelHash = SHX9_2
  if SHX4_2 then
    SHX14_2 = NetworkGetNetworkIdFromEntity
    SHX15_2 = SHX10_2
    SHX14_2 = SHX14_2(SHX15_2)
    if SHX14_2 then
      goto SHX_LABEL_112
    end
  end
  SHX14_2 = 0
  -- [FIX IF ERROR] Move ::SHX_LABEL_112:: outside nested blocks until all 'goto SHX_LABEL_112' can see it
  ::SHX_LABEL_112::
  SHX13_2.entityNetId = SHX14_2
  SHX11_2(SHX12_2, SHX13_2)
  return SHX10_2
end
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = pairs
  SHX1_2 = SHX1_1.previewObjects
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = DeleteEntity
    SHX7_2 = SHX5_2
    SHX6_2(SHX7_2)
  end
  SHX0_2 = {}
  SHX1_1.previewObjects = SHX0_2
end
function SHX21_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = SHX20_1
  SHX0_2()
  SHX1_2 = SHX1_1.object
  SHX0_2 = SHX11_1
  SHX0_2 = SHX0_2[SHX1_2]
  SHX2_2 = SHX1_1.amount
  SHX1_2 = SHX7_1
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = 1
  SHX3_2 = SHX1_2
  SHX4_2 = 1
  for SHX5_2 = SHX2_2, SHX3_2, SHX4_2 do
    SHX6_2 = SHX19_1
    SHX7_2 = SHX0_2[2]
    SHX8_2 = SHX0_2[3]
    SHX9_2 = SHX0_2[4]
    SHX10_2 = 155
    SHX11_2 = false
    SHX12_2 = SHX5_2
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX7_2 = table
    SHX7_2 = SHX7_2.insert
    SHX8_2 = SHX1_1.previewObjects
    SHX9_2 = SHX6_2
    SHX7_2(SHX8_2, SHX9_2)
  end
end
function SHX22_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX0_2 = pairs
  SHX1_2 = SHX11_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX5_2[2]
    SHX7_2 = GetHashKey
    SHX8_2 = SHX6_2
    SHX7_2 = SHX7_2(SHX8_2)
    SHX8_2 = table
    SHX8_2 = SHX8_2.unpack
    SHX9_2 = GetEntityCoords
    SHX10_2 = CMG
    SHX10_2 = SHX10_2.getPlayerPed
    SHX10_2 = SHX10_2()
    SHX11_2 = true
    SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2 = SHX9_2(SHX10_2, SHX11_2)
    SHX8_2, SHX9_2, SHX10_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
    SHX11_2 = DoesObjectOfTypeExistAtCoords
    SHX12_2 = SHX8_2
    SHX13_2 = SHX9_2
    SHX14_2 = SHX10_2
    SHX15_2 = 0.9
    SHX16_2 = SHX7_2
    SHX17_2 = true
    SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
    if SHX11_2 then
      SHX11_2 = GetClosestObjectOfType
      SHX12_2 = SHX8_2
      SHX13_2 = SHX9_2
      SHX14_2 = SHX10_2
      SHX15_2 = 0.9
      SHX16_2 = SHX7_2
      SHX17_2 = false
      SHX18_2 = false
      SHX19_2 = false
      SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
      SHX12_2 = NetworkGetEntityIsNetworked
      SHX13_2 = SHX11_2
      SHX12_2 = SHX12_2(SHX13_2)
      if SHX12_2 then
        SHX12_2 = NetworkHasControlOfEntity
        SHX13_2 = SHX11_2
        SHX12_2 = SHX12_2(SHX13_2)
        if not SHX12_2 then
          SHX12_2 = CMG
          SHX12_2 = SHX12_2.getNetId
          SHX13_2 = SHX11_2
          SHX14_2 = "deleteObject()"
          SHX12_2 = SHX12_2(SHX13_2, SHX14_2)
          if 0 ~= SHX12_2 then
            SHX13_2 = TriggerServerEvent
            SHX14_2 = "26e2cfab1c"
            SHX15_2 = SHX12_2
            SHX13_2(SHX14_2, SHX15_2)
          end
      end
      else
        SHX12_2 = DeleteObject
        SHX13_2 = SHX11_2
        SHX12_2(SHX13_2)
      end
    end
  end
end
function SHX23_1()
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
    SHX0_3 = pairs
    SHX1_3 = SHX0_1
    SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
    for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
      SHX6_3 = DoesEntityExist
      SHX7_3 = SHX5_3.entity
      SHX6_3 = SHX6_3(SHX7_3)
      if not SHX6_3 then
        SHX6_3 = SHX5_3.entityNetId
        if 0 ~= SHX6_3 then
          SHX6_3 = NetworkGetEntityFromNetworkId
          SHX7_3 = SHX5_3.entityNetId
          SHX6_3 = SHX6_3(SHX7_3)
          if 0 ~= SHX6_3 then
            SHX7_3 = GetEntityModel
            SHX8_3 = SHX6_3
            SHX7_3 = SHX7_3(SHX8_3)
            SHX8_3 = SHX5_3.modelHash
            if SHX7_3 == SHX8_3 then
              SHX5_3.entity = SHX6_3
            end
          end
        end
      end
      SHX6_3 = DoesEntityExist
      SHX7_3 = SHX5_3.entity
      SHX6_3 = SHX6_3(SHX7_3)
      if SHX6_3 then
        SHX6_3 = SHX5_3.entityNetId
        if 0 ~= SHX6_3 then
          SHX6_3 = NetworkGetEntityIsNetworked
          SHX7_3 = SHX5_3.entity
          SHX6_3 = SHX6_3(SHX7_3)
          if SHX6_3 then
            SHX6_3 = TriggerServerEvent
            SHX7_3 = "26e2cfab1c"
            SHX8_3 = SHX5_3.entityNetId
            SHX6_3(SHX7_3, SHX8_3)
        end
        else
          SHX6_3 = DeleteEntity
          SHX7_3 = SHX5_3.entity
          SHX6_3(SHX7_3)
        end
      end
    end
    SHX0_3 = {}
    SHX0_1 = SHX0_3
  end
  SHX0_2(SHX1_2)
end
function SHX24_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX1_2 = {}
  SHX1_2.id = ""
  SHX1_2.name = SHX0_2
  SHX2_2 = vector3
  SHX3_2 = 0.0
  SHX4_2 = 0.0
  SHX5_2 = 0.0
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2.position = SHX2_2
  SHX2_2 = {}
  SHX1_2.objects = SHX2_2
  SHX2_2 = vector3
  SHX3_2 = 0.0
  SHX4_2 = 0.0
  SHX5_2 = 0.0
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX3_2 = pairs
  SHX4_2 = SHX0_1
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = DoesEntityExist
    SHX10_2 = SHX8_2.entity
    SHX9_2 = SHX9_2(SHX10_2)
    if SHX9_2 then
      SHX9_2 = GetEntityModel
      SHX10_2 = SHX8_2.entity
      SHX9_2 = SHX9_2(SHX10_2)
      SHX10_2 = nil
      SHX11_2 = pairs
      SHX12_2 = SHX11_1
      SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX11_2(SHX12_2)
      for SHX15_2, SHX16_2 in SHX11_2, SHX12_2, SHX13_2, SHX14_2 do
        SHX17_2 = GetHashKey
        SHX18_2 = SHX16_2[2]
        SHX17_2 = SHX17_2(SHX18_2)
        if SHX17_2 == SHX9_2 then
          SHX10_2 = SHX16_2[1]
          break
        end
      end
      if SHX10_2 then
        SHX11_2 = GetEntityCoords
        SHX12_2 = SHX8_2.entity
        SHX13_2 = true
        SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
        SHX12_2 = table
        SHX12_2 = SHX12_2.insert
        SHX13_2 = SHX1_2.objects
        SHX14_2 = {}
        SHX14_2.name = SHX10_2
        SHX14_2.position = SHX11_2
        SHX15_2 = GetEntityRotation
        SHX16_2 = SHX8_2.entity
        SHX17_2 = 2
        SHX15_2 = SHX15_2(SHX16_2, SHX17_2)
        SHX14_2.rotation = SHX15_2
        SHX12_2(SHX13_2, SHX14_2)
        SHX2_2 = SHX2_2 + SHX11_2
      end
    end
  end
  SHX3_2 = SHX1_2.objects
  SHX3_2 = #SHX3_2
  SHX3_2 = SHX2_2 / SHX3_2
  SHX1_2.position = SHX3_2
  SHX3_2 = TriggerServerEvent
  SHX4_2 = "0beb8c8e6b"
  SHX5_2 = SHX1_2
  SHX3_2(SHX4_2, SHX5_2)
end
function SHX25_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.loadModel
  SHX5_2 = -874338148
  SHX4_2(SHX5_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.loadAnimDict
  SHX5_2 = "p_ld_stinger_s"
  SHX4_2(SHX5_2)
  SHX4_2 = 0
  SHX5_2 = 3
  SHX6_2 = 1
  for SHX7_2 = SHX4_2, SHX5_2, SHX6_2 do
    SHX8_2 = SHX7_2 * 3.5
    SHX8_2 = SHX2_2 * SHX8_2
    SHX8_2 = SHX0_2 + SHX8_2
    SHX9_2 = CreateObject
    SHX10_2 = -874338148
    SHX11_2 = SHX8_2.x
    SHX12_2 = SHX8_2.y
    SHX13_2 = SHX8_2.z
    SHX14_2 = false
    SHX15_2 = false
    SHX16_2 = false
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
    SHX10_2 = SetEntityHeading
    SHX11_2 = SHX9_2
    SHX12_2 = SHX1_2
    SHX10_2(SHX11_2, SHX12_2)
    SHX10_2 = FreezeEntityPosition
    SHX11_2 = SHX9_2
    SHX12_2 = true
    SHX10_2(SHX11_2, SHX12_2)
    SHX10_2 = PlaceObjectOnGroundProperly
    SHX11_2 = SHX9_2
    SHX10_2(SHX11_2)
    SHX10_2 = SetEntityCollision
    SHX11_2 = SHX9_2
    SHX12_2 = false
    SHX13_2 = false
    SHX10_2(SHX11_2, SHX12_2, SHX13_2)
    if not SHX3_2 then
      SHX10_2 = SetEntityVisible
      SHX11_2 = SHX9_2
      SHX12_2 = false
      SHX13_2 = false
      SHX10_2(SHX11_2, SHX12_2, SHX13_2)
      SHX10_2 = PlayEntityAnim
      SHX11_2 = SHX9_2
      SHX12_2 = "P_Stinger_S_Deploy"
      SHX13_2 = "p_ld_stinger_s"
      SHX14_2 = 1000.0
      SHX15_2 = false
      SHX16_2 = true
      SHX17_2 = false
      SHX18_2 = 0.0
      SHX19_2 = 0
      SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
      SHX10_2 = SHX2_1
      SHX10_2[SHX9_2] = SHX8_2
      SHX10_2 = SetTimeout
      SHX11_2 = 90000
      function SHX12_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3, SHX2_3, SHX3_3
        SHX1_3 = SHX9_2
        SHX0_3 = SHX2_1
        SHX0_3 = SHX0_3[SHX1_3]
        if SHX0_3 then
          SHX1_3 = SHX9_2
          SHX0_3 = SHX2_1
          SHX0_3 = SHX0_3[SHX1_3]
          SHX1_3 = DeleteEntity
          SHX2_3 = SHX9_2
          SHX1_3(SHX2_3)
          SHX2_3 = SHX9_2
          SHX1_3 = SHX2_1
          SHX1_3[SHX2_3] = nil
          SHX1_3 = TriggerServerEvent
          SHX2_3 = "21ef28a0d0"
          SHX3_3 = SHX0_3
          SHX1_3(SHX2_3, SHX3_3)
        end
      end
      SHX10_2(SHX11_2, SHX12_2)
      while true do
        SHX10_2 = IsEntityPlayingAnim
        SHX11_2 = SHX9_2
        SHX12_2 = "p_ld_stinger_s"
        SHX13_2 = "P_Stinger_S_Deploy"
        SHX14_2 = 3
        SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2)
        if SHX10_2 then
          break
        end
        SHX10_2 = Citizen
        SHX10_2 = SHX10_2.Wait
        SHX11_2 = 0
        SHX10_2(SHX11_2)
      end
      SHX10_2 = SetEntityVisible
      SHX11_2 = SHX9_2
      SHX12_2 = true
      SHX13_2 = true
      SHX10_2(SHX11_2, SHX12_2, SHX13_2)
      while true do
        SHX10_2 = IsEntityPlayingAnim
        SHX11_2 = SHX9_2
        SHX12_2 = "p_ld_stinger_s"
        SHX13_2 = "P_Stinger_S_Deploy"
        SHX14_2 = 3
        SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2)
        if not SHX10_2 then
          break
        end
        SHX10_2 = GetEntityAnimCurrentTime
        SHX11_2 = SHX9_2
        SHX12_2 = "p_ld_stinger_s"
        SHX13_2 = "P_Stinger_S_Deploy"
        SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2)
        SHX11_2 = 0.75
        if not (SHX10_2 <= SHX11_2) then
          break
        end
        SHX10_2 = SetEntityAnimSpeed
        SHX11_2 = SHX9_2
        SHX12_2 = "p_ld_stinger_s"
        SHX13_2 = "P_Stinger_S_Deploy"
        SHX14_2 = 3.0
        SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2)
        SHX10_2 = Citizen
        SHX10_2 = SHX10_2.Wait
        SHX11_2 = 0
        SHX10_2(SHX11_2)
      end
      SHX10_2 = PlayEntityAnim
      SHX11_2 = SHX9_2
      SHX12_2 = "p_stinger_s_idle_deployed"
      SHX13_2 = "p_ld_stinger_s"
      SHX14_2 = 1000.0
      SHX15_2 = false
      SHX16_2 = true
      SHX17_2 = false
      SHX18_2 = 0.99
      SHX19_2 = 0
      SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
    else
      SHX10_2 = SetEntityAlpha
      SHX11_2 = SHX9_2
      SHX12_2 = 100
      SHX13_2 = false
      SHX10_2(SHX11_2, SHX12_2, SHX13_2)
      SHX10_2 = SetTimeout
      SHX11_2 = 0
      function SHX12_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3
        SHX0_3 = DeleteEntity
        SHX1_3 = SHX9_2
        SHX0_3(SHX1_3)
      end
      SHX10_2(SHX11_2, SHX12_2)
    end
  end
  SHX4_2 = SetModelAsNoLongerNeeded
  SHX5_2 = -874338148
  SHX4_2(SHX5_2)
  SHX4_2 = RemoveAnimDict
  SHX5_2 = "p_ld_stinger_s"
  SHX4_2(SHX5_2)
end
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX25_1
  SHX2_2 = GetOffsetFromEntityInWorldCoords
  SHX3_2 = SHX0_2
  SHX4_2 = -0.2
  SHX5_2 = 2.0
  SHX6_2 = 0.0
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = GetEntityHeading
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = GetEntityForwardVector
  SHX5_2 = SHX0_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX27_1 = RageUI
SHX27_1 = SHX27_1.CreateWhile
SHX28_1 = 1.0
SHX29_1 = RMenu
SHX30_1 = SHX29_1
SHX29_1 = SHX29_1.Get
SHX31_1 = "cmgscenemenu"
SHX32_1 = "main"
SHX29_1 = SHX29_1(SHX30_1, SHX31_1, SHX32_1)
SHX30_1 = nil
function SHX31_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.inOrganHesit
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX0_2 = RageUI
    SHX0_2 = SHX0_2.IsAnyMenuOfTypeVisible
    SHX1_2 = "cmgscenemenu"
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      SHX0_2 = RageUI
      SHX0_2 = SHX0_2.CloseAll
      SHX0_2()
      return
    end
  end
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "cmgscenemenu"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Button
    SHX1_3 = "Object Menu"
    SHX2_3 = nil
    SHX3_3 = true
    function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
    end
    SHX5_3 = RMenu
    SHX6_3 = SHX5_3
    SHX5_3 = SHX5_3.Get
    SHX7_3 = "cmgscenemenu"
    SHX8_3 = "objects"
    SHX5_3, SHX6_3, SHX7_3, SHX8_3 = SHX5_3(SHX6_3, SHX7_3, SHX8_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Button
    SHX1_3 = "Speed Zone"
    SHX2_3 = nil
    SHX3_3 = true
    function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
    end
    SHX5_3 = RMenu
    SHX6_3 = SHX5_3
    SHX5_3 = SHX5_3.Get
    SHX7_3 = "cmgscenemenu"
    SHX8_3 = "speedZone"
    SHX5_3, SHX6_3, SHX7_3, SHX8_3 = SHX5_3(SHX6_3, SHX7_3, SHX8_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
    SHX0_3 = SHX4_1
    SHX0_3 = SHX0_3()
    if SHX0_3 then
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Button
      SHX1_3 = "Spike Strip Menu"
      SHX2_3 = nil
      SHX3_3 = true
      function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
      end
      SHX5_3 = RMenu
      SHX6_3 = SHX5_3
      SHX5_3 = SHX5_3.Get
      SHX7_3 = "cmgscenemenu"
      SHX8_3 = "spikes"
      SHX5_3, SHX6_3, SHX7_3, SHX8_3 = SHX5_3(SHX6_3, SHX7_3, SHX8_3)
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
    end
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Button
    SHX1_3 = "Scene Containment"
    SHX2_3 = nil
    SHX3_3 = true
    function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
    end
    SHX5_3 = RMenu
    SHX6_3 = SHX5_3
    SHX5_3 = SHX5_3.Get
    SHX7_3 = "cmgscenemenu"
    SHX8_3 = "scenecontainment"
    SHX5_3, SHX6_3, SHX7_3, SHX8_3 = SHX5_3(SHX6_3, SHX7_3, SHX8_3)
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Button
    SHX1_3 = "Close Menu"
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
        SHX3_4 = RageUI
        SHX3_4 = SHX3_4.Visible
        SHX4_4 = RMenu
        SHX5_4 = SHX4_4
        SHX4_4 = SHX4_4.Get
        SHX6_4 = "cmgscenemenu"
        SHX7_4 = "main"
        SHX4_4 = SHX4_4(SHX5_4, SHX6_4, SHX7_4)
        SHX5_4 = false
        SHX3_4(SHX4_4, SHX5_4)
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
  SHX3_2 = "cmgscenemenu"
  SHX4_2 = "objects"
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
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.BackspaceMenuCallback
    function SHX1_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
      SHX0_4 = SHX20_1
      SHX0_4()
    end
    SHX0_3(SHX1_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.List
    SHX1_3 = "Spawn Object"
    SHX2_3 = SHX13_1
    SHX3_3 = SHX1_1.object
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
      
      local SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4, SHX12_4, SHX13_4, SHX14_4, SHX15_4, SHX16_4
      if SHX2_4 then
        SHX4_4 = CMG
        SHX4_4 = SHX4_4.getPlayerVehicle
        SHX4_4 = SHX4_4()
        if 0 == SHX4_4 then
          SHX4_4 = SHX20_1
          SHX4_4()
          SHX5_4 = SHX1_1.object
          SHX4_4 = SHX11_1
          SHX4_4 = SHX4_4[SHX5_4]
          SHX6_4 = SHX1_1.amount
          SHX5_4 = SHX7_1
          SHX5_4 = SHX5_4[SHX6_4]
          SHX6_4 = 1
          SHX7_4 = SHX5_4
          SHX8_4 = 1
          for SHX9_4 = SHX6_4, SHX7_4, SHX8_4 do
            SHX10_4 = SHX19_1
            SHX11_4 = SHX4_4[2]
            SHX12_4 = SHX4_4[3]
            SHX13_4 = SHX4_4[4]
            SHX14_4 = nil
            SHX15_4 = true
            SHX16_4 = SHX9_4
            SHX10_4(SHX11_4, SHX12_4, SHX13_4, SHX14_4, SHX15_4, SHX16_4)
          end
          SHX6_4 = TriggerServerEvent
          SHX7_4 = "b5e4673fdb"
          SHX8_4 = SHX4_4[1]
          SHX9_4 = SHX5_4
          SHX6_4(SHX7_4, SHX8_4, SHX9_4)
          SHX6_4 = SHX21_1
          SHX6_4()
        else
          SHX4_4 = notify
          SHX5_4 = "~r~You can not use the traffic menu in a vehicle"
          SHX4_4(SHX5_4)
        end
      end
      if SHX1_4 then
        SHX4_4 = SHX1_1.object
        if SHX4_4 ~= SHX3_4 then
          SHX1_1.object = SHX3_4
          SHX4_4 = SHX21_1
          SHX4_4()
        end
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.List
    SHX1_3 = "Number To Place"
    SHX2_3 = SHX7_1
    SHX3_3 = SHX1_1.amount
    SHX4_3 = ""
    SHX5_3 = {}
    SHX6_3 = true
    function SHX7_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX4_4
      if SHX1_4 then
        SHX4_4 = SHX1_1.amount
        if SHX4_4 ~= SHX3_4 then
          SHX1_1.amount = SHX3_4
          SHX4_4 = SHX21_1
          SHX4_4()
        end
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.List
    SHX1_3 = "Seperation (m)"
    SHX2_3 = SHX8_1
    SHX3_3 = SHX1_1.seperation
    SHX4_3 = ""
    SHX5_3 = {}
    SHX6_3 = true
    function SHX7_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX4_4
      if SHX1_4 then
        SHX4_4 = SHX1_1.seperation
        if SHX4_4 ~= SHX3_4 then
          SHX1_1.seperation = SHX3_4
          SHX4_4 = SHX21_1
          SHX4_4()
        end
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.List
    SHX1_3 = "Rotation (degrees)"
    SHX2_3 = SHX9_1
    SHX3_3 = SHX1_1.degrees
    SHX4_3 = ""
    SHX5_3 = {}
    SHX6_3 = true
    function SHX7_3(SHX0_4, SHX1_4, SHX2_4, SHX3_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX4_4
      if SHX1_4 then
        SHX4_4 = SHX1_1.degrees
        if SHX4_4 ~= SHX3_4 then
          SHX1_1.degrees = SHX3_4
          SHX4_4 = SHX21_1
          SHX4_4()
        end
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Button
    SHX1_3 = "Delete Object"
    SHX2_3 = nil
    SHX3_3 = true
    function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4
      if SHX2_4 then
        SHX3_4 = SHX22_1
        SHX3_4()
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Button
    SHX1_3 = "Delete All Objects"
    SHX2_3 = "Deletes all objects you have placed"
    SHX3_3 = true
    function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4
      if SHX2_4 then
        SHX3_4 = SHX23_1
        SHX3_4()
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
    SHX1_3 = SHX1_1.object
    SHX0_3 = SHX11_1
    SHX0_3 = SHX0_3[SHX1_3]
    SHX1_3 = pairs
    SHX2_3 = SHX1_1.previewObjects
    SHX1_3, SHX2_3, SHX3_3, SHX4_3 = SHX1_3(SHX2_3)
    for SHX5_3, SHX6_3 in SHX1_3, SHX2_3, SHX3_3, SHX4_3 do
      SHX7_3 = DoesEntityExist
      SHX8_3 = SHX6_3
      SHX7_3 = SHX7_3(SHX8_3)
      if SHX7_3 then
        SHX7_3 = GetEntityCoords
        SHX8_3 = PlayerPedId
        SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3 = SHX8_3()
        SHX7_3 = SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3)
        SHX8_3 = GetEntityForwardVector
        SHX9_3 = PlayerPedId
        SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3 = SHX9_3()
        SHX8_3 = SHX8_3(SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3)
        SHX10_3 = SHX1_1.seperation
        SHX9_3 = SHX8_1
        SHX9_3 = SHX9_3[SHX10_3]
        SHX10_3 = SHX5_3 - 1
        SHX9_3 = SHX9_3 * SHX10_3
        SHX9_3 = 3.0 + SHX9_3
        SHX8_3 = SHX8_3 * SHX9_3
        SHX7_3 = SHX7_3 + SHX8_3
        SHX8_3 = SHX0_3[4]
        if SHX8_3 then
          SHX8_3 = SHX0_3[4]
          SHX9_3 = SetEntityCoordsNoOffset
          SHX10_3 = SHX6_3
          SHX11_3 = SHX7_3.x
          SHX12_3 = SHX7_3.y
          SHX13_3 = SHX7_3.z
          SHX14_3 = false
          SHX15_3 = false
          SHX16_3 = false
          SHX9_3(SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3)
          SHX9_3 = PlaceObjectOnGroundProperly
          SHX10_3 = SHX6_3
          SHX9_3(SHX10_3)
          SHX9_3 = GetEntityCoords
          SHX10_3 = SHX6_3
          SHX11_3 = true
          SHX9_3 = SHX9_3(SHX10_3, SHX11_3)
          SHX10_3 = SetEntityCoordsNoOffset
          SHX11_3 = SHX6_3
          SHX12_3 = SHX9_3.x
          SHX13_3 = SHX9_3.y
          SHX14_3 = SHX9_3.z
          SHX14_3 = SHX14_3 + SHX8_3
          SHX15_3 = false
          SHX16_3 = false
          SHX17_3 = false
          SHX10_3(SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3)
        else
          SHX8_3 = SetEntityCoordsNoOffset
          SHX9_3 = SHX6_3
          SHX10_3 = SHX7_3.x
          SHX11_3 = SHX7_3.y
          SHX12_3 = SHX7_3.z
          SHX13_3 = false
          SHX14_3 = false
          SHX15_3 = false
          SHX8_3(SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3)
          SHX8_3 = PlaceObjectOnGroundProperly
          SHX9_3 = SHX6_3
          SHX8_3(SHX9_3)
        end
        SHX8_3 = SetEntityNoCollisionEntity
        SHX9_3 = SHX6_3
        SHX10_3 = PlayerPedId
        SHX10_3 = SHX10_3()
        SHX11_3 = true
        SHX8_3(SHX9_3, SHX10_3, SHX11_3)
        SHX8_3 = SetEntityNoCollisionEntity
        SHX9_3 = PlayerPedId
        SHX9_3 = SHX9_3()
        SHX10_3 = SHX6_3
        SHX11_3 = true
        SHX8_3(SHX9_3, SHX10_3, SHX11_3)
        SHX8_3 = SetEntityHeading
        SHX9_3 = SHX6_3
        SHX10_3 = GetEntityHeading
        SHX11_3 = PlayerPedId
        SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3 = SHX11_3()
        SHX10_3 = SHX10_3(SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3)
        SHX12_3 = SHX1_1.degrees
        SHX11_3 = SHX9_1
        SHX11_3 = SHX11_3[SHX12_3]
        SHX10_3 = SHX10_3 + SHX11_3
        SHX8_3(SHX9_3, SHX10_3)
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
  SHX3_2 = "cmgscenemenu"
  SHX4_2 = "speedZone"
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
    SHX1_3 = "Radius"
    SHX2_3 = SHX5_1
    SHX3_3 = SHX1_1.speedRad
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
        SHX1_1.speedRad = SHX3_4
        SHX4_4 = tonumber
        SHX5_4 = SHX5_1
        SHX5_4 = SHX5_4[SHX3_4]
        SHX4_4 = SHX4_4(SHX5_4)
        SHX14_1 = SHX4_4
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.List
    SHX1_3 = "Speed"
    SHX2_3 = SHX6_1
    SHX3_3 = SHX1_1.speed
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
        SHX1_1.speed = SHX3_4
        SHX4_4 = tonumber
        SHX5_4 = SHX6_1
        SHX5_4 = SHX5_4[SHX3_4]
        SHX4_4 = SHX4_4(SHX5_4)
        SHX15_1 = SHX4_4
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Button
    SHX1_3 = "Create Speedzone"
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
        SHX3_4 = SHX14_1
        if 0 == SHX3_4 then
          SHX3_4 = tCMG
          SHX3_4 = SHX3_4.notify
          SHX4_4 = "~r~Please set a radius"
          SHX3_4(SHX4_4)
        else
          SHX3_4 = SHX15_1
          if 0 == SHX3_4 then
            SHX3_4 = tCMG
            SHX3_4 = SHX3_4.notify
            SHX4_4 = "~r~Please set a speed"
            SHX3_4(SHX4_4)
          else
            SHX3_4 = TriggerServerEvent
            SHX4_4 = "a472b07a4b"
            SHX5_4 = CMG
            SHX5_4 = SHX5_4.getPlayerCoords
            SHX5_4 = SHX5_4()
            SHX6_4 = SHX15_1
            SHX6_4 = SHX6_4 + 0.0
            SHX7_4 = SHX14_1
            SHX7_4 = SHX7_4 + 0.0
            SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4)
            SHX3_4 = tCMG
            SHX3_4 = SHX3_4.notify
            SHX4_4 = "~b~Speed zone created"
            SHX3_4(SHX4_4)
          end
        end
      end
    end
    SHX5_3 = nil
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Button
    SHX1_3 = "Delete Speedzone"
    SHX2_3 = nil
    SHX3_3 = true
    function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4, SHX12_4, SHX13_4
      if SHX2_4 then
        SHX3_4 = CMG
        SHX3_4 = SHX3_4.getPlayerCoords
        SHX3_4 = SHX3_4()
        SHX4_4 = nil
        SHX5_4 = 250.0
        SHX6_4 = pairs
        SHX7_4 = SHX10_1
        SHX6_4, SHX7_4, SHX8_4, SHX9_4 = SHX6_4(SHX7_4)
        for SHX10_4, SHX11_4 in SHX6_4, SHX7_4, SHX8_4, SHX9_4 do
          SHX12_4 = SHX11_4.position
          SHX12_4 = SHX3_4 - SHX12_4
          SHX12_4 = #SHX12_4
          if SHX5_4 > SHX12_4 then
            SHX13_4 = SHX11_4.radius
            if SHX12_4 < SHX13_4 then
              SHX4_4 = SHX10_4
              SHX5_4 = SHX12_4
            end
          end
        end
        if SHX4_4 then
          SHX6_4 = TriggerServerEvent
          SHX7_4 = "a1ee24f902"
          SHX8_4 = SHX4_4
          SHX6_4(SHX7_4, SHX8_4)
          SHX6_4 = tCMG
          SHX6_4 = SHX6_4.notify
          SHX7_4 = "~r~Speed zone removed"
          SHX6_4(SHX7_4)
        end
      end
    end
    SHX5_3 = nil
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
  SHX3_2 = "cmgscenemenu"
  SHX4_2 = "spikes"
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
    SHX1_3 = "Place Spike"
    SHX2_3 = nil
    SHX3_3 = true
    function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4
      if SHX1_4 then
        SHX3_4 = SHX26_1
        SHX3_4()
      end
      if SHX2_4 then
        SHX3_4 = GetGameTimer
        SHX3_4 = SHX3_4()
        SHX4_4 = SHX3_1
        SHX3_4 = SHX3_4 - SHX4_4
        SHX4_4 = 20000
        if not (SHX3_4 > SHX4_4) then
          SHX3_4 = CMG
          SHX3_4 = SHX3_4.isDevMode
          SHX3_4 = SHX3_4()
          if not SHX3_4 then
            goto SHX_LABEL_44
          end
        end
        SHX3_4 = PlayerPedId
        SHX3_4 = SHX3_4()
        SHX4_4 = GetOffsetFromEntityInWorldCoords
        SHX5_4 = SHX3_4
        SHX6_4 = -0.2
        SHX7_4 = 2.0
        SHX8_4 = 0.0
        SHX4_4 = SHX4_4(SHX5_4, SHX6_4, SHX7_4, SHX8_4)
        SHX5_4 = GetEntityHeading
        SHX6_4 = SHX3_4
        SHX5_4 = SHX5_4(SHX6_4)
        SHX6_4 = GetEntityForwardVector
        SHX7_4 = SHX3_4
        SHX6_4 = SHX6_4(SHX7_4)
        SHX7_4 = TriggerServerEvent
        SHX8_4 = "280e848c4b"
        SHX9_4 = SHX4_4
        SHX10_4 = SHX5_4
        SHX11_4 = SHX6_4
        SHX7_4(SHX8_4, SHX9_4, SHX10_4, SHX11_4)
        SHX7_4 = GetGameTimer
        SHX7_4 = SHX7_4()
        SHX3_1 = SHX7_4
        goto SHX_LABEL_47
        -- [FIX IF ERROR] Move ::SHX_LABEL_44:: outside nested blocks until all 'goto SHX_LABEL_44' can see it
        ::SHX_LABEL_44::
        SHX3_4 = notify
        SHX4_4 = "~r~You have created a spike strip recently. Please wait."
        SHX3_4(SHX4_4)
      end
      -- [FIX IF ERROR] Move ::SHX_LABEL_47:: outside nested blocks until all 'goto SHX_LABEL_47' can see it
      ::SHX_LABEL_47::
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Button
    SHX1_3 = "Delete Spike"
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
        SHX3_4 = CMG
        SHX3_4 = SHX3_4.getPlayerCoords
        SHX3_4 = SHX3_4()
        SHX4_4 = pairs
        SHX5_4 = SHX2_1
        SHX4_4, SHX5_4, SHX6_4, SHX7_4 = SHX4_4(SHX5_4)
        for SHX8_4, SHX9_4 in SHX4_4, SHX5_4, SHX6_4, SHX7_4 do
          SHX10_4 = SHX3_4 - SHX9_4
          SHX10_4 = #SHX10_4
          if SHX10_4 < 5.0 then
            SHX10_4 = TriggerServerEvent
            SHX11_4 = "21ef28a0d0"
            SHX12_4 = SHX9_4
            SHX10_4(SHX11_4, SHX12_4)
            break
          end
        end
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "cmgscenemenu"
  SHX4_2 = "scenecontainment"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.hasClientPermission
    SHX1_3 = "scenemenu.prefabs"
    SHX0_3 = SHX0_3(SHX1_3)
    if SHX0_3 then
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Button
      SHX1_3 = "~g~Create New Area"
      SHX2_3 = "Creates a new area from all your currently placed objects"
      SHX3_3 = SHX0_1
      SHX3_3 = #SHX3_3
      SHX3_3 = SHX3_3 > 0
      function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4
        if SHX2_4 then
          SHX3_4 = ""
          SHX16_1 = SHX3_4
        end
      end
      SHX5_3 = RMenu
      SHX6_3 = SHX5_3
      SHX5_3 = SHX5_3.Get
      SHX7_3 = "cmgscenemenu"
      SHX8_3 = "newscenecontainement"
      SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3 = SHX5_3(SHX6_3, SHX7_3, SHX8_3)
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3)
    end
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Separator
    SHX1_3 = "Nearby Area Templates"
    SHX0_3(SHX1_3)
    SHX0_3 = SHX17_1
    SHX1_3 = CMG
    SHX1_3 = SHX1_3.getPlayerCoords
    SHX1_3 = SHX1_3()
    SHX2_3 = pairs
    SHX3_3 = SHX0_3
    SHX2_3, SHX3_3, SHX4_3, SHX5_3 = SHX2_3(SHX3_3)
    for SHX6_3, SHX7_3 in SHX2_3, SHX3_3, SHX4_3, SHX5_3 do
      SHX8_3 = SHX7_3.position
      SHX8_3 = SHX8_3 - SHX1_3
      SHX8_3 = #SHX8_3
      SHX7_3.distance = SHX8_3
    end
    SHX2_3 = table
    SHX2_3 = SHX2_3.sort
    SHX3_3 = SHX0_3
    function SHX4_3(SHX0_4, SHX1_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX2_4, SHX3_4
      SHX2_4 = SHX0_4.distance
      SHX3_4 = SHX1_4.distance
      SHX2_4 = SHX2_4 < SHX3_4
      return SHX2_4
    end
    SHX2_3(SHX3_3, SHX4_3)
    SHX2_3 = pairs
    SHX3_3 = SHX0_3
    SHX2_3, SHX3_3, SHX4_3, SHX5_3 = SHX2_3(SHX3_3)
    for SHX6_3, SHX7_3 in SHX2_3, SHX3_3, SHX4_3, SHX5_3 do
      SHX8_3 = SHX7_3.distance
      SHX9_3 = 200.0
      if SHX8_3 > SHX9_3 then
        break
      end
      SHX8_3 = RageUI
      SHX8_3 = SHX8_3.Button
      SHX9_3 = SHX7_3.name
      SHX10_3 = string
      SHX10_3 = SHX10_3.format
      SHX11_3 = [[
Distance: %sm

Pressing this will place down a template for 2 minutes.]]
      SHX12_3 = math
      SHX12_3 = SHX12_3.floor
      SHX13_3 = SHX7_3.distance
      SHX12_3, SHX13_3 = SHX12_3(SHX13_3)
      SHX10_3 = SHX10_3(SHX11_3, SHX12_3, SHX13_3)
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
          SHX3_4 = SHX3_4.getPlayerVehicle
          SHX3_4 = SHX3_4()
          if 0 == SHX3_4 then
            SHX3_4 = TriggerServerEvent
            SHX4_4 = "6d8667b87e"
            SHX5_4 = SHX7_3.id
            SHX3_4(SHX4_4, SHX5_4)
          else
            SHX3_4 = notify
            SHX4_4 = source
            SHX5_4 = "~r~You must be outside of a vehicle to place down a template."
            SHX3_4(SHX4_4, SHX5_4)
          end
        end
      end
      SHX8_3(SHX9_3, SHX10_3, SHX11_3, SHX12_3)
      SHX8_3 = CMG
      SHX8_3 = SHX8_3.hasClientPermission
      SHX9_3 = "scenemenu.prefabs"
      SHX8_3 = SHX8_3(SHX9_3)
      if SHX8_3 then
        SHX8_3 = RageUI
        SHX8_3 = SHX8_3.Button
        SHX9_3 = "~r~Delete: "
        SHX10_3 = SHX7_3.name
        SHX9_3 = SHX9_3 .. SHX10_3
        SHX10_3 = "Delete this scene containment template"
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
            SHX4_4 = "581770225f"
            SHX5_4 = SHX7_3.id
            SHX3_4(SHX4_4, SHX5_4)
          end
        end
        SHX8_3(SHX9_3, SHX10_3, SHX11_3, SHX12_3)
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
  SHX3_2 = "cmgscenemenu"
  SHX4_2 = "newscenecontainement"
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
    SHX1_3 = "Name"
    SHX2_3 = "The name you want this scene containment to show as."
    SHX3_3 = {}
    SHX4_3 = SHX16_1
    SHX3_3.RightLabel = SHX4_3
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
        SHX3_4 = SHX3_4.clientPrompt
        SHX4_4 = "Enter Name"
        SHX5_4 = ""
        function SHX6_4(SHX0_5)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX1_5
          SHX16_1 = SHX0_5
        end
        SHX3_4(SHX4_4, SHX5_4, SHX6_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Button
    SHX1_3 = "~b~Create New Scene Containment"
    SHX2_3 = "Creates a new scene containment area"
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
        SHX3_4 = SHX24_1
        SHX4_4 = SHX16_1
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
end
SHX27_1(SHX28_1, SHX29_1, SHX30_1, SHX31_1)
SHX27_1 = RegisterNetEvent
SHX28_1 = "acaf25d389"
function SHX29_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Visible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "cmgscenemenu"
  SHX4_2 = "main"
  SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX0_2 = not SHX0_2
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.Visible
  SHX2_2 = RMenu
  SHX3_2 = SHX2_2
  SHX2_2 = SHX2_2.Get
  SHX4_2 = "cmgscenemenu"
  SHX5_2 = "main"
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.hasClientPermission
  SHX2_2 = "police.onduty.permission"
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.hasPoliceCallsign
    SHX1_2 = SHX1_2()
    if SHX1_2 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.inOrganHesit
      SHX1_2 = SHX1_2()
      if not SHX1_2 then
        SHX1_2 = RMenu
        SHX2_2 = SHX1_2
        SHX1_2 = SHX1_2.Get
        SHX3_2 = "cmgscenemenu"
        SHX4_2 = "main"
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
        SHX2_2 = SHX1_2
        SHX1_2 = SHX1_2.SetSubtitle
        SHX3_2 = "~b~MPD~w~: "
        SHX4_2 = CMG
        SHX4_2 = SHX4_2.getPoliceCallsign
        SHX4_2 = SHX4_2()
        SHX5_2 = " - "
        SHX6_2 = CMG
        SHX6_2 = SHX6_2.getPoliceRank
        SHX6_2 = SHX6_2()
        SHX7_2 = " - "
        SHX8_2 = CMG
        SHX8_2 = SHX8_2.getPlayerName
        SHX9_2 = PlayerId
        SHX9_2 = SHX9_2()
        SHX8_2 = SHX8_2(SHX9_2)
        SHX3_2 = SHX3_2 .. SHX4_2 .. SHX5_2 .. SHX6_2 .. SHX7_2 .. SHX8_2
        SHX1_2(SHX2_2, SHX3_2)
      end
    end
  end
end
SHX27_1(SHX28_1, SHX29_1)
SHX27_1 = RegisterNetEvent
SHX28_1 = "377fce6749"
function SHX29_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Visible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "cmgscenemenu"
  SHX4_2 = "vigilantespikes"
  SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = not SHX0_2
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.Visible
  SHX2_2 = RMenu
  SHX3_2 = SHX2_2
  SHX2_2 = SHX2_2.Get
  SHX4_2 = "cmgscenemenu"
  SHX5_2 = "vigilantespikes"
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
end
SHX27_1(SHX28_1, SHX29_1)
SHX27_1 = RageUI
SHX27_1 = SHX27_1.CreateWhile
SHX28_1 = 1.0
SHX29_1 = RMenu
SHX30_1 = SHX29_1
SHX29_1 = SHX29_1.Get
SHX31_1 = "cmgscenemenu"
SHX32_1 = "vigilantespikes"
SHX29_1 = SHX29_1(SHX30_1, SHX31_1, SHX32_1)
SHX30_1 = nil
function SHX31_1()
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
  SHX3_2 = "cmgscenemenu"
  SHX4_2 = "vigilantespikes"
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
    SHX1_3 = "Place Spike"
    SHX2_3 = nil
    SHX3_3 = true
    function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4, SHX9_4, SHX10_4, SHX11_4
      if SHX1_4 then
        SHX3_4 = SHX26_1
        SHX3_4()
      end
      if SHX2_4 then
        SHX3_4 = GetGameTimer
        SHX3_4 = SHX3_4()
        SHX4_4 = SHX3_1
        SHX3_4 = SHX3_4 - SHX4_4
        SHX4_4 = 20000
        if not (SHX3_4 > SHX4_4) then
          SHX3_4 = CMG
          SHX3_4 = SHX3_4.isDevMode
          SHX3_4 = SHX3_4()
          if not SHX3_4 then
            goto SHX_LABEL_44
          end
        end
        SHX3_4 = PlayerPedId
        SHX3_4 = SHX3_4()
        SHX4_4 = GetOffsetFromEntityInWorldCoords
        SHX5_4 = SHX3_4
        SHX6_4 = -0.2
        SHX7_4 = 2.0
        SHX8_4 = 0.0
        SHX4_4 = SHX4_4(SHX5_4, SHX6_4, SHX7_4, SHX8_4)
        SHX5_4 = GetEntityHeading
        SHX6_4 = SHX3_4
        SHX5_4 = SHX5_4(SHX6_4)
        SHX6_4 = GetEntityForwardVector
        SHX7_4 = SHX3_4
        SHX6_4 = SHX6_4(SHX7_4)
        SHX7_4 = TriggerServerEvent
        SHX8_4 = "280e848c4b"
        SHX9_4 = SHX4_4
        SHX10_4 = SHX5_4
        SHX11_4 = SHX6_4
        SHX7_4(SHX8_4, SHX9_4, SHX10_4, SHX11_4)
        SHX7_4 = GetGameTimer
        SHX7_4 = SHX7_4()
        SHX3_1 = SHX7_4
        goto SHX_LABEL_47
        -- [FIX IF ERROR] Move ::SHX_LABEL_44:: outside nested blocks until all 'goto SHX_LABEL_44' can see it
        ::SHX_LABEL_44::
        SHX3_4 = notify
        SHX4_4 = "~r~You have created a spike strip recently. Please wait."
        SHX3_4(SHX4_4)
      end
      -- [FIX IF ERROR] Move ::SHX_LABEL_47:: outside nested blocks until all 'goto SHX_LABEL_47' can see it
      ::SHX_LABEL_47::
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.Button
    SHX1_3 = "Delete Spike"
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
        SHX3_4 = CMG
        SHX3_4 = SHX3_4.getPlayerCoords
        SHX3_4 = SHX3_4()
        SHX4_4 = pairs
        SHX5_4 = SHX2_1
        SHX4_4, SHX5_4, SHX6_4, SHX7_4 = SHX4_4(SHX5_4)
        for SHX8_4, SHX9_4 in SHX4_4, SHX5_4, SHX6_4, SHX7_4 do
          SHX10_4 = SHX3_4 - SHX9_4
          SHX10_4 = #SHX10_4
          if SHX10_4 < 5.0 then
            SHX10_4 = TriggerServerEvent
            SHX11_4 = "21ef28a0d0"
            SHX12_4 = SHX9_4
            SHX10_4(SHX11_4, SHX12_4)
            break
          end
        end
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
SHX27_1(SHX28_1, SHX29_1, SHX30_1, SHX31_1)
SHX27_1 = RegisterNetEvent
SHX28_1 = "b7b8478d92"
function SHX29_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX3_2 = SHX25_1
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  SHX6_2 = SHX2_2
  SHX7_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
end
SHX27_1(SHX28_1, SHX29_1)
SHX27_1 = RegisterNetEvent
SHX28_1 = "99b0254c0a"
function SHX29_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = pairs
  SHX2_2 = SHX2_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX0_2 - SHX6_2
    SHX7_2 = #SHX7_2
    if SHX7_2 < 15.0 then
      SHX7_2 = DeleteEntity
      SHX8_2 = SHX5_2
      SHX7_2(SHX8_2)
      SHX7_2 = SHX2_1
      SHX7_2[SHX5_2] = nil
    end
  end
end
SHX27_1(SHX28_1, SHX29_1)
SHX27_1 = Citizen
SHX27_1 = SHX27_1.CreateThread
function SHX28_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2
  while true do
    SHX0_2 = 1000
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerVehicle
    SHX1_2, SHX2_2 = SHX1_2()
    if 0 ~= SHX1_2 and SHX2_2 then
      SHX3_2 = CMG
      SHX3_2 = SHX3_2.getPlayerCoords
      SHX3_2 = SHX3_2()
      SHX4_2 = pairs
      SHX5_2 = SHX2_1
      SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
      for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
        SHX10_2 = SHX3_2 - SHX9_2
        SHX10_2 = #SHX10_2
        if SHX10_2 < 20.0 then
          if SHX10_2 < 5.0 then
            SHX11_2 = pairs
            SHX12_2 = SHX12_1
            SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX11_2(SHX12_2)
            for SHX15_2, SHX16_2 in SHX11_2, SHX12_2, SHX13_2, SHX14_2 do
              SHX17_2 = GetEntityBoneIndexByName
              SHX18_2 = SHX1_2
              SHX19_2 = SHX16_2.bone
              SHX17_2 = SHX17_2(SHX18_2, SHX19_2)
              if 0 ~= SHX17_2 then
                SHX18_2 = GetWorldPositionOfEntityBone
                SHX19_2 = SHX1_2
                SHX20_2 = SHX17_2
                SHX18_2 = SHX18_2(SHX19_2, SHX20_2)
                SHX19_2 = SHX18_2 - SHX9_2
                SHX19_2 = #SHX19_2
                SHX20_2 = 2.5
                if SHX19_2 < SHX20_2 then
                  SHX19_2 = SetVehicleTyreBurst
                  SHX20_2 = SHX1_2
                  SHX21_2 = SHX16_2.index
                  SHX22_2 = false
                  SHX23_2 = 1000.0
                  SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2)
                end
              end
            end
          end
          SHX0_2 = 0
        elseif SHX10_2 < 50.0 then
          SHX0_2 = 100
        end
      end
    end
    SHX3_2 = Citizen
    SHX3_2 = SHX3_2.Wait
    SHX4_2 = SHX0_2
    SHX3_2(SHX4_2)
  end
end
SHX27_1(SHX28_1)
SHX27_1 = false
SHX28_1 = 1000.0
function SHX29_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerVehicle
  SHX0_2, SHX1_2 = SHX0_2()
  if 0 ~= SHX0_2 and SHX1_2 then
    SHX2_2 = false
    SHX3_2 = 1000.0
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.getPlayerCoords
    SHX4_2 = SHX4_2()
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.getPlayerBucket
    SHX5_2 = SHX5_2()
    if 333 ~= SHX5_2 then
      SHX5_2 = CMG
      SHX5_2 = SHX5_2.inEvent
      SHX5_2 = SHX5_2()
      if not SHX5_2 then
        SHX5_2 = pairs
        SHX6_2 = SHX10_1
        SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
        for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
          SHX11_2 = SHX10_2.position
          SHX11_2 = SHX11_2 - SHX4_2
          SHX11_2 = #SHX11_2
          SHX12_2 = SHX10_2.radius
          if SHX11_2 < SHX12_2 then
            SHX2_2 = true
            SHX11_2 = SHX10_2.speed
            if SHX3_2 > SHX11_2 then
              SHX3_2 = SHX10_2.speed
            end
          end
        end
      end
    end
    if SHX2_2 then
      SHX5_2 = SHX27_1
      if SHX5_2 then
        SHX5_2 = SHX28_1
        if SHX5_2 == SHX3_2 then
          goto SHX_LABEL_58
        end
      end
      SHX5_2 = SetVehicleMaxSpeed
      SHX6_2 = SHX0_2
      SHX7_2 = SHX3_2 / 2.236936
      SHX5_2(SHX6_2, SHX7_2)
      SHX5_2 = true
      SHX27_1 = SHX5_2
      SHX28_1 = SHX3_2
      -- [FIX IF ERROR] Move ::SHX_LABEL_58:: outside nested blocks until all 'goto SHX_LABEL_58' can see it
      ::SHX_LABEL_58::
      SHX5_2 = drawNativeNotification
      SHX6_2 = "Hold up! There is a temporary ~b~speed restriction ~w~in this area."
      SHX5_2(SHX6_2)
    else
      SHX5_2 = SHX27_1
      if SHX5_2 then
        SHX5_2 = SetVehicleMaxSpeed
        SHX6_2 = SHX0_2
        SHX7_2 = -1.0
        SHX5_2(SHX6_2, SHX7_2)
        SHX5_2 = false
        SHX27_1 = SHX5_2
        SHX5_2 = 1000.0
        SHX28_1 = SHX5_2
      end
    end
  end
end
SHX30_1 = CMG
SHX30_1 = SHX30_1.createThreadOnTick
SHX31_1 = SHX29_1
SHX32_1 = "Speedzone"
SHX30_1(SHX31_1, SHX32_1)
SHX30_1 = RegisterNetEvent
SHX31_1 = "a472b07a4b"
function SHX32_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX4_2 = SHX10_1
  SHX4_2 = SHX4_2[SHX0_2]
  if SHX4_2 then
    return
  end
  SHX4_2 = AddBlipForRadius
  SHX5_2 = SHX1_2.x
  SHX6_2 = SHX1_2.y
  SHX7_2 = SHX1_2.z
  SHX8_2 = SHX3_2
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = SetBlipColour
  SHX6_2 = SHX4_2
  SHX7_2 = 26
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = SetBlipAlpha
  SHX6_2 = SHX4_2
  SHX7_2 = 120
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = AddRoadNodeSpeedZone
  SHX6_2 = SHX1_2.x
  SHX7_2 = SHX1_2.y
  SHX8_2 = SHX1_2.z
  SHX9_2 = SHX3_2
  SHX10_2 = SHX2_2
  SHX11_2 = false
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX6_2 = SHX10_1
  SHX7_2 = {}
  SHX7_2.position = SHX1_2
  SHX7_2.speed = SHX2_2
  SHX7_2.radius = SHX3_2
  SHX7_2.blip = SHX4_2
  SHX7_2.zone = SHX5_2
  SHX6_2[SHX0_2] = SHX7_2
end
SHX30_1(SHX31_1, SHX32_1)
SHX30_1 = RegisterNetEvent
SHX31_1 = "a1ee24f902"
function SHX32_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX10_1
  SHX1_2 = SHX1_2[SHX0_2]
  if SHX1_2 then
    SHX2_2 = RemoveBlip
    SHX3_2 = SHX1_2.blip
    SHX2_2(SHX3_2)
    SHX2_2 = RemoveRoadNodeSpeedZone
    SHX3_2 = SHX1_2.zone
    SHX2_2(SHX3_2)
    SHX2_2 = SHX10_1
    SHX2_2[SHX0_2] = nil
  end
end
SHX30_1(SHX31_1, SHX32_1)
SHX30_1 = RegisterNetEvent
SHX31_1 = "e9ad367cfd"
function SHX32_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = table
  SHX1_2 = SHX1_2.insert
  SHX2_2 = SHX17_1
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
end
SHX30_1(SHX31_1, SHX32_1)
SHX30_1 = RegisterNetEvent
SHX31_1 = "c12e0fd364"
function SHX32_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX17_1 = SHX0_2
end
SHX30_1(SHX31_1, SHX32_1)
function SHX30_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.hasClientPermission
  SHX2_2 = "police.onduty.permission"
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.hasClientPermission
    SHX2_2 = "prisonguard.onduty.permission"
    SHX1_2 = SHX1_2(SHX2_2)
    if not SHX1_2 then
      return
    end
  end
  SHX1_2 = pairs
  SHX2_2 = SHX0_2.objects
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = nil
    SHX8_2 = pairs
    SHX9_2 = SHX11_1
    SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX8_2(SHX9_2)
    for SHX12_2, SHX13_2 in SHX8_2, SHX9_2, SHX10_2, SHX11_2 do
      SHX14_2 = SHX13_2[1]
      SHX15_2 = SHX6_2.name
      if SHX14_2 == SHX15_2 then
        SHX7_2 = SHX13_2
        break
      end
    end
    if SHX7_2 then
      SHX8_2 = SHX0_2.placedObjects
      SHX8_2 = SHX8_2[SHX5_2]
      if not SHX8_2 then
        SHX8_2 = CMG
        SHX8_2 = SHX8_2.loadModel
        SHX9_2 = SHX7_2[2]
        SHX8_2 = SHX8_2(SHX9_2)
        if SHX8_2 then
          SHX9_2 = CreateObjectNoOffset
          SHX10_2 = SHX8_2
          SHX11_2 = SHX6_2.position
          SHX11_2 = SHX11_2.x
          SHX12_2 = SHX6_2.position
          SHX12_2 = SHX12_2.y
          SHX13_2 = SHX6_2.position
          SHX13_2 = SHX13_2.z
          SHX14_2 = false
          SHX15_2 = false
          SHX16_2 = false
          SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
          SHX10_2 = FreezeEntityPosition
          SHX11_2 = SHX9_2
          SHX12_2 = true
          SHX10_2(SHX11_2, SHX12_2)
          SHX10_2 = SetEntityRotation
          SHX11_2 = SHX9_2
          SHX12_2 = SHX6_2.rotation
          SHX12_2 = SHX12_2.x
          SHX13_2 = SHX6_2.rotation
          SHX13_2 = SHX13_2.y
          SHX14_2 = SHX6_2.rotation
          SHX14_2 = SHX14_2.z
          SHX15_2 = 2
          SHX16_2 = true
          SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
          SHX10_2 = SetEntityCollision
          SHX11_2 = SHX9_2
          SHX12_2 = false
          SHX13_2 = false
          SHX10_2(SHX11_2, SHX12_2, SHX13_2)
          SHX10_2 = SetCanClimbOnEntity
          SHX11_2 = SHX9_2
          SHX12_2 = false
          SHX10_2(SHX11_2, SHX12_2)
          SHX10_2 = SHX0_2.objectHandles
          SHX10_2[SHX5_2] = SHX9_2
        end
      end
    end
  end
end
function SHX31_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = pairs
  SHX2_2 = SHX0_2.objectHandles
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = DeleteEntity
    SHX8_2 = SHX6_2
    SHX7_2(SHX8_2)
  end
  SHX1_2 = table
  SHX1_2 = SHX1_2.clear
  SHX2_2 = SHX0_2.objectHandles
  SHX1_2(SHX2_2)
end
function SHX32_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX1_2 = math
  SHX1_2 = SHX1_2.sin
  SHX2_2 = GetNetworkTime
  SHX2_2 = SHX2_2()
  SHX2_2 = SHX2_2 / 1000.0
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = nil
  SHX3_2 = 2.0
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getPlayerCoords
  SHX4_2 = SHX4_2()
  SHX5_2 = math
  SHX5_2 = SHX5_2.floor
  SHX6_2 = math
  SHX6_2 = SHX6_2.abs
  SHX7_2 = SHX1_2
  SHX6_2 = SHX6_2(SHX7_2)
  SHX6_2 = 150.0 * SHX6_2
  SHX6_2 = 50 + SHX6_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = pairs
  SHX7_2 = SHX0_2.objectHandles
  SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
  for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
    SHX12_2 = SHX0_2.objects
    SHX12_2 = SHX12_2[SHX10_2]
    SHX12_2 = SHX12_2.position
    SHX12_2 = SHX4_2 - SHX12_2
    SHX12_2 = #SHX12_2
    if SHX3_2 > SHX12_2 then
      SHX2_2 = SHX10_2
      SHX3_2 = SHX12_2
    end
    SHX13_2 = SetEntityAlpha
    SHX14_2 = SHX11_2
    SHX15_2 = SHX5_2
    SHX16_2 = true
    SHX13_2(SHX14_2, SHX15_2, SHX16_2)
  end
  if SHX2_2 then
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.getPlayerVehicle
    SHX6_2 = SHX6_2()
    if 0 == SHX6_2 then
      goto SHX_LABEL_54
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_54:: outside nested blocks until all 'goto SHX_LABEL_54' can see it
  ::SHX_LABEL_54::
  SHX6_2 = drawNativeNotification
  SHX7_2 = [[
Press ~INPUT_CONTEXT~ to place down the object.
Press ~INPUT_FRONTEND_DELETE~ to delete the object.]]
  SHX6_2(SHX7_2)
  SHX6_2 = IsControlJustPressed
  SHX7_2 = 0
  SHX8_2 = 51
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  if SHX6_2 then
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.setIgnoreRadialInputThisFrame
    SHX6_2()
    SHX6_2 = TriggerServerEvent
    SHX7_2 = "90706e5309"
    SHX8_2 = SHX0_2.id
    SHX9_2 = SHX2_2
    SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  end
  SHX6_2 = IsControlJustPressed
  SHX7_2 = 0
  SHX8_2 = 214
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  if SHX6_2 then
    SHX6_2 = TriggerServerEvent
    SHX7_2 = "efbe9eb340"
    SHX8_2 = SHX0_2.id
    SHX9_2 = SHX2_2
    SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  end
end
function SHX33_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.createArea
  SHX2_2 = string
  SHX2_2 = SHX2_2.format
  SHX3_2 = "scene_containment_%s"
  SHX4_2 = SHX0_2.id
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = SHX0_2.position
  SHX4_2 = 100.0
  SHX5_2 = 100.0
  SHX6_2 = SHX30_1
  SHX7_2 = SHX31_1
  SHX8_2 = SHX32_1
  SHX9_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX1_2 = table
  SHX1_2 = SHX1_2.insert
  SHX2_2 = SHX18_1
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
end
SHX34_1 = RegisterNetEvent
SHX35_1 = "ad3e839b3e"
function SHX36_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX33_1
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
SHX34_1(SHX35_1, SHX36_1)
SHX34_1 = RegisterNetEvent
SHX35_1 = "1836c67900"
function SHX36_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = pairs
  SHX2_2 = SHX0_2
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX33_1
    SHX8_2 = SHX6_2
    SHX7_2(SHX8_2)
  end
end
SHX34_1(SHX35_1, SHX36_1)
SHX34_1 = RegisterNetEvent
SHX35_1 = "fe73be5dd6"
function SHX36_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX2_2 = pairs
  SHX3_2 = SHX18_1
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX7_2.id
    if SHX8_2 == SHX0_2 then
      SHX8_2 = SHX7_2.placedObjects
      SHX8_2[SHX1_2] = true
      SHX8_2 = SHX7_2.objectHandles
      SHX8_2 = SHX8_2[SHX1_2]
      if SHX8_2 then
        SHX9_2 = DeleteEntity
        SHX10_2 = SHX8_2
        SHX9_2(SHX10_2)
      end
      SHX9_2 = SHX7_2.objectHandles
      SHX9_2[SHX1_2] = nil
      break
    end
  end
end
SHX34_1(SHX35_1, SHX36_1)
SHX34_1 = RegisterNetEvent
SHX35_1 = "90706e5309"
function SHX36_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX2_2 = pairs
  SHX3_2 = SHX18_1
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = SHX7_2.id
    if SHX8_2 == SHX0_2 then
      SHX8_2 = SHX7_2.objects
      SHX8_2 = SHX8_2[SHX1_2]
      SHX9_2 = nil
      SHX10_2 = pairs
      SHX11_2 = SHX11_1
      SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX10_2(SHX11_2)
      for SHX14_2, SHX15_2 in SHX10_2, SHX11_2, SHX12_2, SHX13_2 do
        SHX16_2 = SHX15_2[1]
        SHX17_2 = SHX8_2.name
        if SHX16_2 == SHX17_2 then
          SHX9_2 = SHX15_2
          break
        end
      end
      if not SHX9_2 then
        return
      end
      SHX10_2 = CMG
      SHX10_2 = SHX10_2.loadModel
      SHX11_2 = SHX9_2[2]
      SHX10_2 = SHX10_2(SHX11_2)
      if not SHX10_2 then
        return
      end
      SHX11_2 = CMG
      SHX11_2 = SHX11_2.requestEntitySpawn
      SHX12_2 = "scenemenu_object"
      SHX13_2 = SHX10_2
      SHX14_2 = SHX8_2.position
      SHX11_2(SHX12_2, SHX13_2, SHX14_2)
      SHX11_2 = CreateObjectNoOffset
      SHX12_2 = SHX10_2
      SHX13_2 = SHX8_2.position
      SHX13_2 = SHX13_2.x
      SHX14_2 = SHX8_2.position
      SHX14_2 = SHX14_2.y
      SHX15_2 = SHX8_2.position
      SHX15_2 = SHX15_2.z
      SHX16_2 = true
      SHX17_2 = true
      SHX18_2 = true
      SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
      SHX12_2 = FreezeEntityPosition
      SHX13_2 = SHX11_2
      SHX14_2 = true
      SHX12_2(SHX13_2, SHX14_2)
      SHX12_2 = SetEntityRotation
      SHX13_2 = SHX11_2
      SHX14_2 = SHX8_2.rotation
      SHX14_2 = SHX14_2.x
      SHX15_2 = SHX8_2.rotation
      SHX15_2 = SHX15_2.y
      SHX16_2 = SHX8_2.rotation
      SHX16_2 = SHX16_2.z
      SHX17_2 = 2
      SHX18_2 = false
      SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
      SHX12_2 = table
      SHX12_2 = SHX12_2.insert
      SHX13_2 = SHX0_1
      SHX14_2 = {}
      SHX14_2.entity = SHX11_2
      SHX14_2.modelHash = SHX10_2
      SHX15_2 = NetworkGetNetworkIdFromEntity
      SHX16_2 = SHX11_2
      SHX15_2 = SHX15_2(SHX16_2)
      SHX14_2.entityNetId = SHX15_2
      SHX12_2(SHX13_2, SHX14_2)
      break
    end
  end
end
SHX34_1(SHX35_1, SHX36_1)
SHX34_1 = RegisterNetEvent
SHX35_1 = "9ecb0e4077"
function SHX36_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = pairs
  SHX2_2 = SHX17_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.id
    if SHX7_2 == SHX0_2 then
      SHX7_2 = table
      SHX7_2 = SHX7_2.remove
      SHX8_2 = SHX17_1
      SHX9_2 = SHX5_2
      SHX7_2(SHX8_2, SHX9_2)
      break
    end
  end
end
SHX34_1(SHX35_1, SHX36_1)
SHX34_1 = RegisterNetEvent
SHX35_1 = "c050c5b664"
function SHX36_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = pairs
  SHX2_2 = SHX18_1
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = SHX6_2.id
    if SHX7_2 == SHX0_2 then
      SHX7_2 = SHX31_1
      SHX8_2 = SHX6_2
      SHX7_2(SHX8_2)
      SHX7_2 = table
      SHX7_2 = SHX7_2.remove
      SHX8_2 = SHX18_1
      SHX9_2 = SHX5_2
      SHX7_2(SHX8_2, SHX9_2)
      break
    end
  end
end
SHX34_1(SHX35_1, SHX36_1)
