-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1
SHX0_1 = false
SHX1_1 = 0
SHX2_1 = 0
SHX3_1 = vector3
SHX4_1 = -710.4659
SHX5_1 = 269.6835
SHX6_1 = 83.13184
SHX3_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1)
SHX4_1 = false
SHX5_1 = 0
SHX6_1 = false
SHX7_1 = false
SHX8_1 = nil
SHX9_1 = nil
SHX10_1 = {}
SHX11_1 = "g4svan"
SHX12_1 = {}
SHX13_1 = false
SHX14_1 = {}
SHX15_1 = false
SHX16_1 = false
SHX17_1 = 0
SHX18_1 = 0
SHX19_1 = ""
SHX20_1 = {}
SHX20_1.hackingEngaged = false
SHX20_1.netId = 0
SHX20_1.entity = 0
SHX20_1.src = 0
SHX20_1.successful = false
SHX20_1.hackingCooldown = false
SHX20_1.awaitingResponse = false
SHX21_1 = {}
SHX21_1.x = -709.134
SHX21_1.y = 277.1604
SHX21_1.z = 83.89014
SHX21_1.heading = 288.89
SHX22_1 = {}
SHX22_1.active = false
SHX22_1.handle = 0
SHX23_1 = 0
function SHX24_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = math
  SHX0_2 = SHX0_2.ceil
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerCoords
  SHX1_2 = SHX1_2()
  SHX2_2 = GetEntityCoords
  SHX3_2 = SHX1_1
  SHX2_2 = SHX2_2(SHX3_2)
  SHX1_2 = SHX1_2 - SHX2_2
  SHX1_2 = #SHX1_2
  SHX1_2 = SHX1_2 / 10
  SHX0_2 = SHX0_2(SHX1_2)
  SHX0_2 = 500 * SHX0_2
  SHX1_2 = SHX7_1
  if SHX1_2 then
    SHX1_2 = RenderScriptCams
    SHX2_2 = false
    SHX3_2 = true
    SHX4_2 = SHX0_2
    SHX5_2 = true
    SHX6_2 = false
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    SHX1_2 = ClearTimecycleModifier
    SHX1_2()
    SHX1_2 = DoesCamExist
    SHX2_2 = SHX23_1
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = DestroyCam
      SHX2_2 = SHX23_1
      SHX3_2 = false
      SHX1_2(SHX2_2, SHX3_2)
    end
    SHX1_2 = false
    SHX7_1 = SHX1_2
  else
    SHX1_2 = CreateCam
    SHX2_2 = "DEFAULT_SCRIPTED_CAMERA"
    SHX3_2 = true
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    SHX23_1 = SHX1_2
    SHX1_2 = AttachCamToEntity
    SHX2_2 = SHX23_1
    SHX3_2 = SHX1_1
    SHX4_2 = 2.5
    SHX5_2 = 5.0
    SHX6_2 = 2.0
    SHX7_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
    SHX1_2 = PointCamAtEntity
    SHX2_2 = SHX23_1
    SHX3_2 = SHX1_1
    SHX4_2 = 1
    SHX5_2 = 1
    SHX6_2 = 1
    SHX7_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
    SHX1_2 = RenderScriptCams
    SHX2_2 = true
    SHX3_2 = true
    SHX4_2 = SHX0_2
    SHX5_2 = true
    SHX6_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    SHX1_2 = Wait
    SHX2_2 = SHX0_2
    SHX1_2(SHX2_2)
    SHX1_2 = SetTimecycleModifier
    SHX2_2 = "scanline_cam_cheap"
    SHX1_2(SHX2_2)
    SHX1_2 = SetTimecycleModifierStrength
    SHX2_2 = 3.0
    SHX1_2(SHX2_2)
    SHX1_2 = true
    SHX7_1 = SHX1_2
  end
end
SHX25_1 = RMenu
SHX25_1 = SHX25_1.Add
SHX26_1 = "g4s"
SHX27_1 = "shiftHandler"
SHX28_1 = RageUI
SHX28_1 = SHX28_1.CreateMenu
SHX29_1 = ""
SHX30_1 = "Security Company"
SHX31_1 = CMG
SHX31_1 = SHX31_1.getRageUIMenuWidth
SHX31_1 = SHX31_1()
SHX32_1 = CMG
SHX32_1 = SHX32_1.getRageUIMenuHeight
SHX32_1 = SHX32_1()
SHX33_1 = "cmg_g4sjob"
SHX34_1 = "cmg_g4sjob"
SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1)
SHX25_1(SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1)
SHX25_1 = RMenu
SHX26_1 = SHX25_1
SHX25_1 = SHX25_1.Get
SHX27_1 = "g4s"
SHX28_1 = "shiftHandler"
SHX25_1 = SHX25_1(SHX26_1, SHX27_1, SHX28_1)
SHX26_1 = SHX25_1
SHX25_1 = SHX25_1.SetSubtitle
SHX27_1 = "Security Company"
SHX25_1(SHX26_1, SHX27_1)
SHX25_1 = RMenu
SHX26_1 = SHX25_1
SHX25_1 = SHX25_1.Get
SHX27_1 = "g4s"
SHX28_1 = "shiftHandler"
SHX25_1 = SHX25_1(SHX26_1, SHX27_1, SHX28_1)
SHX25_1.Closable = true
SHX25_1 = RMenu
SHX25_1 = SHX25_1.Add
SHX26_1 = "g4s"
SHX27_1 = "main"
SHX28_1 = RageUI
SHX28_1 = SHX28_1.CreateMenu
SHX29_1 = ""
SHX30_1 = "Security Company"
SHX31_1 = CMG
SHX31_1 = SHX31_1.getRageUIMenuWidth
SHX31_1 = SHX31_1()
SHX32_1 = CMG
SHX32_1 = SHX32_1.getRageUIMenuHeight
SHX32_1 = SHX32_1()
SHX33_1 = "cmg_g4sjob"
SHX34_1 = "cmg_g4sjob"
SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1 = SHX28_1(SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1)
SHX25_1(SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1)
SHX25_1 = RMenu
SHX26_1 = SHX25_1
SHX25_1 = SHX25_1.Get
SHX27_1 = "g4s"
SHX28_1 = "main"
SHX25_1 = SHX25_1(SHX26_1, SHX27_1, SHX28_1)
SHX26_1 = SHX25_1
SHX25_1 = SHX25_1.SetSubtitle
SHX27_1 = "Security Company"
SHX25_1(SHX26_1, SHX27_1)
SHX25_1 = RMenu
SHX26_1 = SHX25_1
SHX25_1 = SHX25_1.Get
SHX27_1 = "g4s"
SHX28_1 = "main"
SHX25_1 = SHX25_1(SHX26_1, SHX27_1, SHX28_1)
SHX25_1.Closable = true
SHX25_1 = TriggerEvent
SHX26_1 = "chat:addSuggestion"
SHX27_1 = "/securejob"
SHX28_1 = "Toggles your Cash Driver menu."
SHX25_1(SHX26_1, SHX27_1, SHX28_1)
SHX25_1 = tCMG
SHX25_1 = SHX25_1.addMarker
SHX26_1 = SHX3_1.x
SHX27_1 = SHX3_1.y
SHX28_1 = SHX3_1.z
SHX29_1 = 1.2
SHX30_1 = 1.2
SHX31_1 = 1.2
SHX32_1 = 0
SHX33_1 = 255
SHX34_1 = 125
SHX35_1 = 125
SHX36_1 = 50
SHX37_1 = 0
SHX38_1 = true
SHX39_1 = true
SHX25_1(SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1)
SHX25_1 = tCMG
SHX25_1 = SHX25_1.addBlip
SHX26_1 = SHX3_1.x
SHX27_1 = SHX3_1.y
SHX28_1 = SHX3_1.z
SHX29_1 = 457
SHX30_1 = 18
SHX31_1 = "Cash Driver Depot"
SHX32_1 = 1.0
SHX33_1 = false
SHX25_1(SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1)
function SHX25_1()
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
  SHX3_2 = "g4s"
  SHX4_2 = "shiftHandler"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
end
function SHX26_1()
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
  SHX3_2 = "g4s"
  SHX4_2 = "shiftHandler"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
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
end
SHX28_1 = CMG
SHX28_1 = SHX28_1.createArea
SHX29_1 = "g4sDepot_"
SHX30_1 = SHX3_1
SHX31_1 = 1.5
SHX32_1 = 6
SHX33_1 = SHX25_1
SHX34_1 = SHX26_1
SHX35_1 = SHX27_1
SHX28_1(SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1)
function SHX28_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.DrawText
  SHX1_2 = 0.011
  SHX2_2 = 0.55
  SHX3_2 = "Job Number: "
  SHX4_2 = SHX10_1.totalJobs
  SHX4_2 = SHX4_2 + 1
  SHX3_2 = SHX3_2 .. SHX4_2
  SHX4_2 = 0.5
  SHX5_2 = 6
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = DrawRect
  SHX1_2 = 0.175
  SHX2_2 = 0.51
  SHX3_2 = 0.005
  SHX4_2 = 0.17
  SHX5_2 = 0
  SHX6_2 = 121
  SHX7_2 = 235
  SHX8_2 = 255
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
end
function SHX29_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = SHX10_1.jobActive
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.DrawText
    SHX1_2 = 0.011
    SHX2_2 = 0.51
    SHX3_2 = "Destination: "
    SHX4_2 = SHX10_1.depositName
    SHX3_2 = SHX3_2 .. SHX4_2
    SHX4_2 = 0.5
    SHX5_2 = 4
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
    SHX0_2 = SHX28_1
    SHX0_2()
  end
end
function SHX30_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = SHX10_1.jobActive
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.DrawText
    SHX1_2 = 0.011
    SHX2_2 = 0.47
    SHX3_2 = "Current Job: "
    SHX4_2 = SHX10_1.collectionName
    SHX3_2 = SHX3_2 .. SHX4_2
    SHX4_2 = 0.5
    SHX5_2 = 4
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
    SHX0_2 = AddTextComponentSubstringPlayerName
    SHX1_2 = "Current Job: "
    SHX2_2 = SHX10_1.collectionName
    SHX1_2 = SHX1_2 .. SHX2_2
    SHX0_2(SHX1_2)
  else
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.DrawText
    SHX1_2 = 0.011
    SHX2_2 = 0.47
    SHX3_2 = "Pending"
    SHX4_2 = 4
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  end
  SHX0_2 = SHX29_1
  SHX0_2()
end
function SHX31_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.DrawText
  SHX1_2 = 0.011
  SHX2_2 = 0.43
  SHX3_2 = "Cash Driver"
  SHX4_2 = 0.7
  SHX5_2 = 4
  SHX6_2 = 1
  SHX7_2 = {}
  SHX8_2 = 0
  SHX9_2 = 121
  SHX10_2 = 235
  SHX11_2 = 255
  SHX7_2[1] = SHX8_2
  SHX7_2[2] = SHX9_2
  SHX7_2[3] = SHX10_2
  SHX7_2[4] = SHX11_2
  SHX8_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX0_2 = DrawRect
  SHX1_2 = 0.0
  SHX2_2 = 0.51
  SHX3_2 = 0.35
  SHX4_2 = 0.17
  SHX5_2 = 0
  SHX6_2 = 0
  SHX7_2 = 0
  SHX8_2 = 150
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX0_2 = SHX30_1
  SHX0_2()
end
function SHX32_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  if "g4slogo" == SHX0_2 then
    SHX5_2 = HasStreamedTextureDictLoaded
    SHX6_2 = "g4slogo"
    SHX5_2 = SHX5_2(SHX6_2)
    if not SHX5_2 then
      SHX5_2 = RequestStreamedTextureDict
      SHX6_2 = "g4slogo"
      SHX7_2 = true
      SHX5_2(SHX6_2, SHX7_2)
      while true do
        SHX5_2 = HasStreamedTextureDictLoaded
        SHX6_2 = "g4slogo"
        SHX5_2 = SHX5_2(SHX6_2)
        if SHX5_2 then
          break
        end
        SHX5_2 = Wait
        SHX6_2 = 0
        SHX5_2(SHX6_2)
      end
    end
  end
  SHX5_2 = BeginTextCommandThefeedPost
  SHX6_2 = "STRING"
  SHX5_2(SHX6_2)
  SHX5_2 = AddTextComponentSubstringPlayerName
  SHX6_2 = SHX2_2
  SHX5_2(SHX6_2)
  SHX5_2 = EndTextCommandThefeedPostMessagetext
  SHX6_2 = SHX0_2
  SHX7_2 = SHX1_2
  SHX8_2 = false
  SHX9_2 = 0
  SHX10_2 = SHX3_2
  SHX11_2 = SHX4_2
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX5_2 = true
  SHX6_2 = false
  SHX7_2 = EndTextCommandThefeedPostTicker
  SHX8_2 = SHX6_2
  SHX9_2 = SHX5_2
  SHX7_2(SHX8_2, SHX9_2)
  SHX7_2 = PlaySoundFrontend
  SHX8_2 = -1
  SHX9_2 = "CHECKPOINT_NORMAL"
  SHX10_2 = "HUD_MINI_GAME_SOUNDSET"
  SHX11_2 = true
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
end
function SHX33_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX0_2 = SHX22_1.active
  if SHX0_2 then
    SHX0_2 = DeleteObject
    SHX1_2 = SHX22_1.handle
    SHX0_2(SHX1_2)
    SHX22_1.active = false
  else
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.loadModel
    SHX1_2 = 355444045
    SHX0_2 = SHX0_2(SHX1_2)
    if not SHX0_2 then
      return
    end
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerPed
    SHX1_2 = SHX1_2()
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.requestEntitySpawn
    SHX3_2 = "g4s_cashbox"
    SHX2_2(SHX3_2)
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.getPlayerCoords
    SHX2_2 = SHX2_2()
    SHX3_2 = CreateObject
    SHX4_2 = SHX0_2
    SHX5_2 = SHX2_2.x
    SHX6_2 = SHX2_2.y
    SHX7_2 = SHX2_2.z
    SHX8_2 = true
    SHX9_2 = true
    SHX10_2 = true
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    SHX22_1.handle = SHX3_2
    while true do
      SHX3_2 = DoesEntityExist
      SHX4_2 = SHX22_1.handle
      SHX3_2 = SHX3_2(SHX4_2)
      if SHX3_2 then
        break
      end
      SHX3_2 = Wait
      SHX4_2 = 0
      SHX3_2(SHX4_2)
    end
    SHX22_1.active = true
    SHX3_2 = AttachEntityToEntity
    SHX4_2 = SHX22_1.handle
    SHX5_2 = SHX1_2
    SHX6_2 = GetPedBoneIndex
    SHX7_2 = SHX1_2
    SHX8_2 = 57005
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
    SHX7_2 = 0.5
    SHX8_2 = 0
    SHX9_2 = 0.03
    SHX10_2 = -95.0
    SHX11_2 = 0
    SHX12_2 = 90.0
    SHX13_2 = true
    SHX14_2 = true
    SHX15_2 = false
    SHX16_2 = true
    SHX17_2 = 1
    SHX18_2 = true
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
    SHX3_2 = SetModelAsNoLongerNeeded
    SHX4_2 = SHX0_2
    SHX3_2(SHX4_2)
  end
end
function SHX34_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerVehicle
  SHX0_2 = SHX0_2()
  if 0 ~= SHX0_2 and nil ~= SHX0_2 then
    SHX1_2 = SHX1_1
    if nil ~= SHX1_2 then
      SHX1_2 = SHX1_1
      if 0 ~= SHX1_2 then
        SHX1_2 = SHX1_1
        if SHX0_2 ~= SHX1_2 then
          SHX1_2 = true
          SHX13_1 = SHX1_2
          SHX1_2 = SHX32_1
          SHX2_2 = "g4slogo"
          SHX3_2 = "g4slogo"
          SHX4_2 = "Please ensure you are in your private security vehicle."
          SHX5_2 = "Cash Driver Security"
          SHX6_2 = "Human Resources"
          SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
          SHX1_2 = SetTimeout
          SHX2_2 = 15000
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
            SHX0_2 = SHX0_3
            SHX0_3 = SHX0_2
            if 0 ~= SHX0_3 then
              SHX0_3 = SHX0_2
              SHX1_3 = SHX1_1
              if SHX0_3 ~= SHX1_3 then
                SHX0_3 = TriggerServerEvent
                SHX1_3 = "2ee6b18cbd"
                SHX2_3 = false
                SHX0_3(SHX1_3, SHX2_3)
                SHX0_3 = tCMG
                SHX0_3 = SHX0_3.removeBlip
                SHX1_3 = SHX8_1
                SHX0_3(SHX1_3)
                SHX0_3 = tCMG
                SHX0_3 = SHX0_3.removeBlip
                SHX1_3 = SHX9_1
                SHX0_3(SHX1_3)
                SHX0_3 = ClearGpsPlayerWaypoint
                SHX0_3()
              end
            end
            SHX0_3 = false
            SHX13_1 = SHX0_3
          end
          SHX1_2(SHX2_2, SHX3_2)
        end
      end
    end
  end
end
SHX35_1 = Citizen
SHX35_1 = SHX35_1.CreateThread
function SHX36_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2
  while true do
    SHX0_2 = SHX0_1
    if SHX0_2 then
      SHX0_2 = SHX16_1
      if not SHX0_2 then
        SHX0_2 = SHX31_1
        SHX0_2()
      end
      SHX0_2 = SHX10_1.jobActive
      if SHX0_2 then
        SHX0_2 = SHX10_1.collected
        if not SHX0_2 then
          SHX0_2 = SHX15_1
          if SHX0_2 then
            SHX0_2 = DrawMarker
            SHX1_2 = 29
            SHX2_2 = SHX10_1.collectionCoords
            SHX2_2 = SHX2_2.x
            SHX3_2 = SHX10_1.collectionCoords
            SHX3_2 = SHX3_2.y
            SHX4_2 = SHX10_1.collectionCoords
            SHX4_2 = SHX4_2.z
            SHX5_2 = 0.0
            SHX6_2 = 0.0
            SHX7_2 = 0.0
            SHX8_2 = 0.0
            SHX9_2 = 0.0
            SHX10_2 = 0.0
            SHX11_2 = 1.5
            SHX12_2 = 1.5
            SHX13_2 = 1.5
            SHX14_2 = 0
            SHX15_2 = 221
            SHX16_2 = 255
            SHX17_2 = 36
            SHX18_2 = false
            SHX19_2 = true
            SHX20_2 = 0
            SHX21_2 = false
            SHX22_2 = nil
            SHX23_2 = nil
            SHX24_2 = false
            SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
          else
            SHX0_2 = DrawMarker
            SHX1_2 = 29
            SHX2_2 = SHX10_1.collectionCoords
            SHX2_2 = SHX2_2.x
            SHX3_2 = SHX10_1.collectionCoords
            SHX3_2 = SHX3_2.y
            SHX4_2 = SHX10_1.collectionCoords
            SHX4_2 = SHX4_2.z
            SHX5_2 = 0.0
            SHX6_2 = 0.0
            SHX7_2 = 0.0
            SHX8_2 = 0.0
            SHX9_2 = 0.0
            SHX10_2 = 0.0
            SHX11_2 = 1.5
            SHX12_2 = 1.5
            SHX13_2 = 1.5
            SHX14_2 = 0
            SHX15_2 = 255
            SHX16_2 = 36
            SHX17_2 = 36
            SHX18_2 = false
            SHX19_2 = true
            SHX20_2 = 0
            SHX21_2 = false
            SHX22_2 = nil
            SHX23_2 = nil
            SHX24_2 = false
            SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
          end
          SHX0_2 = SHX10_1.collecting
          if SHX0_2 then
            SHX0_2 = SHX22_1.active
            if not SHX0_2 then
              SHX0_2 = SHX33_1
              SHX0_2()
            end
          else
            SHX0_2 = RageUI
            SHX0_2 = SHX0_2.Text
            SHX1_2 = {}
            SHX2_2 = "Drive to ~b~"
            SHX3_2 = SHX10_1.collectionName
            SHX2_2 = SHX2_2 .. SHX3_2
            SHX1_2.message = SHX2_2
            SHX0_2(SHX1_2)
            SHX0_2 = SHX13_1
            if not SHX0_2 then
              SHX0_2 = SHX34_1
              SHX0_2()
            end
          end
        else
          SHX0_2 = SHX10_1.deposited
          if not SHX0_2 then
            SHX0_2 = SHX10_1.depositing
            if SHX0_2 then
              SHX0_2 = SHX22_1.active
              if not SHX0_2 then
                SHX0_2 = SHX33_1
                SHX0_2()
              end
            else
              SHX0_2 = RageUI
              SHX0_2 = SHX0_2.Text
              SHX1_2 = {}
              SHX2_2 = "Drive to ~b~"
              SHX3_2 = SHX10_1.depositName
              SHX2_2 = SHX2_2 .. SHX3_2
              SHX1_2.message = SHX2_2
              SHX0_2(SHX1_2)
              SHX0_2 = SHX13_1
              if not SHX0_2 then
                SHX0_2 = SHX34_1
                SHX0_2()
              end
            end
            SHX0_2 = DrawMarker
            SHX1_2 = 29
            SHX2_2 = SHX10_1.depositCoords
            SHX2_2 = SHX2_2.x
            SHX3_2 = SHX10_1.depositCoords
            SHX3_2 = SHX3_2.y
            SHX4_2 = SHX10_1.depositCoords
            SHX4_2 = SHX4_2.z
            SHX5_2 = 0.0
            SHX6_2 = 0.0
            SHX7_2 = 0.0
            SHX8_2 = 0.0
            SHX9_2 = 0.0
            SHX10_2 = 0.0
            SHX11_2 = 1.5
            SHX12_2 = 1.5
            SHX13_2 = 1.5
            SHX14_2 = 255
            SHX15_2 = 36
            SHX16_2 = 36
            SHX17_2 = 50
            SHX18_2 = true
            SHX19_2 = true
            SHX20_2 = 2
            SHX21_2 = false
            SHX22_2 = nil
            SHX23_2 = nil
            SHX24_2 = false
            SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
          end
        end
      end
      SHX0_2 = SHX7_1
      if SHX0_2 then
        SHX0_2 = RageUI
        SHX0_2 = SHX0_2.Visible
        SHX1_2 = RMenu
        SHX2_2 = SHX1_2
        SHX1_2 = SHX1_2.Get
        SHX3_2 = "g4s"
        SHX4_2 = "shiftHandler"
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
        SHX2_2 = true
        SHX0_2(SHX1_2, SHX2_2)
      else
      end
    end
    SHX0_2 = Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
end
SHX35_1(SHX36_1)
SHX35_1 = Citizen
SHX35_1 = SHX35_1.CreateThread
function SHX36_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2
  while true do
    SHX0_2 = SHX20_1.hackingEngaged
    if not SHX0_2 then
      SHX0_2 = SHX0_1
      if not SHX0_2 then
        SHX0_2 = SHX20_1.awaitingResponse
        if not SHX0_2 then
          SHX0_2 = table
          SHX0_2 = SHX0_2.count
          SHX1_2 = SHX14_1
          SHX0_2 = SHX0_2(SHX1_2)
          if SHX0_2 > 0 then
            SHX0_2 = CMG
            SHX0_2 = SHX0_2.getPlayerVehicle
            SHX0_2 = SHX0_2()
            if 0 == SHX0_2 then
              SHX0_2 = pairs
              SHX1_2 = SHX14_1
              SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
              for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
                SHX6_2 = SHX5_2[3]
                SHX7_2 = SHX5_2[2]
                SHX8_2 = SHX5_2[1]
                SHX9_2 = table
                SHX9_2 = SHX9_2.has
                SHX10_2 = SHX12_1
                SHX11_2 = SHX8_2
                SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
                if not SHX9_2 then
                  SHX9_2 = DoesEntityExist
                  SHX10_2 = SHX7_2
                  SHX9_2 = SHX9_2(SHX10_2)
                  if SHX9_2 then
                    goto SHX_LABEL_43
                  end
                end
                SHX9_2 = SHX14_1
                SHX9_2[SHX4_2] = nil
                goto SHX_LABEL_144
                -- [FIX IF ERROR] Move ::SHX_LABEL_43:: outside nested blocks until all 'goto SHX_LABEL_43' can see it
                ::SHX_LABEL_43::
                SHX9_2 = IsVehicleStopped
                SHX10_2 = SHX7_2
                SHX9_2 = SHX9_2(SHX10_2)
                if SHX9_2 then
                  SHX9_2 = CMG
                  SHX9_2 = SHX9_2.getPlayerCoords
                  SHX9_2 = SHX9_2()
                  SHX10_2 = GetEntityCoords
                  SHX11_2 = SHX7_2
                  SHX10_2 = SHX10_2(SHX11_2)
                  SHX9_2 = SHX9_2 - SHX10_2
                  SHX9_2 = #SHX9_2
                  SHX10_2 = GetOffsetFromEntityInWorldCoords
                  SHX11_2 = SHX1_1
                  SHX12_2 = 0.0
                  SHX13_2 = -6.0
                  SHX14_2 = 0.0
                  SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2)
                  if SHX9_2 <= 11.0 then
                    SHX11_2 = DrawMarker
                    SHX12_2 = 29
                    SHX13_2 = SHX10_2.x
                    SHX14_2 = SHX10_2.y
                    SHX15_2 = SHX10_2.z
                    SHX15_2 = SHX15_2 + 0.5
                    SHX16_2 = 0.0
                    SHX17_2 = 0.0
                    SHX18_2 = 0.0
                    SHX19_2 = 0.0
                    SHX20_2 = 0.0
                    SHX21_2 = 0.0
                    SHX22_2 = 1.5
                    SHX23_2 = 1.5
                    SHX24_2 = 1.5
                    SHX25_2 = 255
                    SHX26_2 = 36
                    SHX27_2 = 36
                    SHX28_2 = 50
                    SHX29_2 = true
                    SHX30_2 = false
                    SHX31_2 = 2
                    SHX32_2 = false
                    SHX33_2 = nil
                    SHX34_2 = nil
                    SHX35_2 = false
                    SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2)
                    SHX11_2 = RageUI
                    SHX11_2 = SHX11_2.Text
                    SHX12_2 = {}
                    SHX12_2.message = "~b~Cash Driver~w~: Press ENTER to hack."
                    SHX11_2(SHX12_2)
                    SHX11_2 = IsControlJustPressed
                    SHX12_2 = 1
                    SHX13_2 = 18
                    SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
                    if SHX11_2 then
                      SHX20_1.netId = SHX6_2
                      SHX20_1.entity = SHX7_2
                      SHX20_1.src = SHX8_2
                      SHX11_2 = TriggerServerEvent
                      SHX12_2 = "370aa47158"
                      SHX13_2 = SHX6_2
                      SHX14_2 = SHX8_2
                      SHX11_2(SHX12_2, SHX13_2, SHX14_2)
                      SHX20_1.awaitingResponse = true
                      break
                    end
                  elseif SHX9_2 <= 35.0 then
                    SHX11_2 = DrawMarker
                    SHX12_2 = 29
                    SHX13_2 = SHX10_2.x
                    SHX14_2 = SHX10_2.y
                    SHX15_2 = SHX10_2.z
                    SHX15_2 = SHX15_2 + 0.5
                    SHX16_2 = 0.0
                    SHX17_2 = 0.0
                    SHX18_2 = 0.0
                    SHX19_2 = 0.0
                    SHX20_2 = 0.0
                    SHX21_2 = 0.0
                    SHX22_2 = 1.5
                    SHX23_2 = 1.5
                    SHX24_2 = 1.5
                    SHX25_2 = 255
                    SHX26_2 = 36
                    SHX27_2 = 36
                    SHX28_2 = 50
                    SHX29_2 = true
                    SHX30_2 = false
                    SHX31_2 = 2
                    SHX32_2 = false
                    SHX33_2 = nil
                    SHX34_2 = nil
                    SHX35_2 = false
                    SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2)
                  end
                end
                -- [FIX IF ERROR] Move ::SHX_LABEL_144:: outside nested blocks until all 'goto SHX_LABEL_144' can see it
                ::SHX_LABEL_144::
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
SHX35_1(SHX36_1)
SHX35_1 = nil
SHX36_1 = nil
SHX37_1 = 2
SHX38_1 = "HONGKONG"
function SHX39_1()
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3
    function SHX0_3(SHX0_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX1_4, SHX2_4, SHX3_4, SHX4_4
      SHX1_4 = RequestScaleformMovieInteractive
      SHX2_4 = SHX0_4
      SHX1_4 = SHX1_4(SHX2_4)
      SHX35_1 = SHX1_4
      while true do
        SHX1_4 = HasScaleformMovieLoaded
        SHX2_4 = SHX35_1
        SHX1_4 = SHX1_4(SHX2_4)
        if SHX1_4 then
          break
        end
        SHX1_4 = Citizen
        SHX1_4 = SHX1_4.Wait
        SHX2_4 = 0
        SHX1_4(SHX2_4)
      end
      SHX1_4 = BeginScaleformMovieMethod
      SHX2_4 = SHX35_1
      SHX3_4 = "SET_LABELS"
      SHX1_4(SHX2_4, SHX3_4)
      SHX1_4 = _ENV
      SHX2_4 = "ScaleformMovieMethodAddParamTextureNameString"
      SHX1_4 = SHX1_4[SHX2_4]
      SHX2_4 = "Local Disk (C:)"
      SHX1_4(SHX2_4)
      SHX1_4 = _ENV
      SHX2_4 = "ScaleformMovieMethodAddParamTextureNameString"
      SHX1_4 = SHX1_4[SHX2_4]
      SHX2_4 = "Cash Driver Network"
      SHX1_4(SHX2_4)
      SHX1_4 = _ENV
      SHX2_4 = "ScaleformMovieMethodAddParamTextureNameString"
      SHX1_4 = SHX1_4[SHX2_4]
      SHX2_4 = "External Device (E:)"
      SHX1_4(SHX2_4)
      SHX1_4 = _ENV
      SHX2_4 = "ScaleformMovieMethodAddParamTextureNameString"
      SHX1_4 = SHX1_4[SHX2_4]
      SHX2_4 = "HackConnect.exe"
      SHX1_4(SHX2_4)
      SHX1_4 = _ENV
      SHX2_4 = "ScaleformMovieMethodAddParamTextureNameString"
      SHX1_4 = SHX1_4[SHX2_4]
      SHX2_4 = "DriverHack.exe"
      SHX1_4(SHX2_4)
      SHX1_4 = EndScaleformMovieMethod
      SHX1_4()
      SHX1_4 = BeginScaleformMovieMethod
      SHX2_4 = SHX35_1
      SHX3_4 = "SET_BACKGROUND"
      SHX1_4(SHX2_4, SHX3_4)
      SHX1_4 = ScaleformMovieMethodAddParamInt
      SHX2_4 = math
      SHX2_4 = SHX2_4.random
      SHX3_4 = 1
      SHX4_4 = 6
      SHX2_4, SHX3_4, SHX4_4 = SHX2_4(SHX3_4, SHX4_4)
      SHX1_4(SHX2_4, SHX3_4, SHX4_4)
      SHX1_4 = EndScaleformMovieMethod
      SHX1_4()
      SHX1_4 = BeginScaleformMovieMethod
      SHX2_4 = SHX35_1
      SHX3_4 = "ADD_PROGRAM"
      SHX1_4(SHX2_4, SHX3_4)
      SHX1_4 = ScaleformMovieMethodAddParamFloat
      SHX2_4 = 1.0
      SHX1_4(SHX2_4)
      SHX1_4 = ScaleformMovieMethodAddParamFloat
      SHX2_4 = 4.0
      SHX1_4(SHX2_4)
      SHX1_4 = _ENV
      SHX2_4 = "ScaleformMovieMethodAddParamTextureNameString"
      SHX1_4 = SHX1_4[SHX2_4]
      SHX2_4 = "Cash Driver Control Panel"
      SHX1_4(SHX2_4)
      SHX1_4 = EndScaleformMovieMethod
      SHX1_4()
      SHX1_4 = BeginScaleformMovieMethod
      SHX2_4 = SHX35_1
      SHX3_4 = "ADD_PROGRAM"
      SHX1_4(SHX2_4, SHX3_4)
      SHX1_4 = ScaleformMovieMethodAddParamFloat
      SHX2_4 = 6.0
      SHX1_4(SHX2_4)
      SHX1_4 = ScaleformMovieMethodAddParamFloat
      SHX2_4 = 6.0
      SHX1_4(SHX2_4)
      SHX1_4 = _ENV
      SHX2_4 = "ScaleformMovieMethodAddParamTextureNameString"
      SHX1_4 = SHX1_4[SHX2_4]
      SHX2_4 = "Power Off"
      SHX1_4(SHX2_4)
      SHX1_4 = EndScaleformMovieMethod
      SHX1_4()
      SHX1_4 = BeginScaleformMovieMethod
      SHX2_4 = SHX35_1
      SHX3_4 = "SET_COLUMN_SPEED"
      SHX1_4(SHX2_4, SHX3_4)
      SHX1_4 = ScaleformMovieMethodAddParamInt
      SHX2_4 = 0
      SHX1_4(SHX2_4)
      SHX1_4 = ScaleformMovieMethodAddParamInt
      SHX2_4 = 255
      SHX1_4(SHX2_4)
      SHX1_4 = EndScaleformMovieMethod
      SHX1_4()
      SHX1_4 = BeginScaleformMovieMethod
      SHX2_4 = SHX35_1
      SHX3_4 = "SET_COLUMN_SPEED"
      SHX1_4(SHX2_4, SHX3_4)
      SHX1_4 = ScaleformMovieMethodAddParamInt
      SHX2_4 = 1
      SHX1_4(SHX2_4)
      SHX1_4 = ScaleformMovieMethodAddParamInt
      SHX2_4 = 255
      SHX1_4(SHX2_4)
      SHX1_4 = EndScaleformMovieMethod
      SHX1_4()
      SHX1_4 = BeginScaleformMovieMethod
      SHX2_4 = SHX35_1
      SHX3_4 = "SET_COLUMN_SPEED"
      SHX1_4(SHX2_4, SHX3_4)
      SHX1_4 = ScaleformMovieMethodAddParamInt
      SHX2_4 = 2
      SHX1_4(SHX2_4)
      SHX1_4 = ScaleformMovieMethodAddParamInt
      SHX2_4 = 255
      SHX1_4(SHX2_4)
      SHX1_4 = EndScaleformMovieMethod
      SHX1_4()
      SHX1_4 = BeginScaleformMovieMethod
      SHX2_4 = SHX35_1
      SHX3_4 = "SET_COLUMN_SPEED"
      SHX1_4(SHX2_4, SHX3_4)
      SHX1_4 = ScaleformMovieMethodAddParamInt
      SHX2_4 = 3
      SHX1_4(SHX2_4)
      SHX1_4 = ScaleformMovieMethodAddParamInt
      SHX2_4 = 255
      SHX1_4(SHX2_4)
      SHX1_4 = EndScaleformMovieMethod
      SHX1_4()
      SHX1_4 = BeginScaleformMovieMethod
      SHX2_4 = SHX35_1
      SHX3_4 = "SET_COLUMN_SPEED"
      SHX1_4(SHX2_4, SHX3_4)
      SHX1_4 = ScaleformMovieMethodAddParamInt
      SHX2_4 = 4
      SHX1_4(SHX2_4)
      SHX1_4 = ScaleformMovieMethodAddParamInt
      SHX2_4 = 255
      SHX1_4(SHX2_4)
      SHX1_4 = EndScaleformMovieMethod
      SHX1_4()
      SHX1_4 = BeginScaleformMovieMethod
      SHX2_4 = SHX35_1
      SHX3_4 = "SET_COLUMN_SPEED"
      SHX1_4(SHX2_4, SHX3_4)
      SHX1_4 = ScaleformMovieMethodAddParamInt
      SHX2_4 = 5
      SHX1_4(SHX2_4)
      SHX1_4 = ScaleformMovieMethodAddParamInt
      SHX2_4 = 255
      SHX1_4(SHX2_4)
      SHX1_4 = EndScaleformMovieMethod
      SHX1_4()
      SHX1_4 = BeginScaleformMovieMethod
      SHX2_4 = SHX35_1
      SHX3_4 = "SET_COLUMN_SPEED"
      SHX1_4(SHX2_4, SHX3_4)
      SHX1_4 = ScaleformMovieMethodAddParamInt
      SHX2_4 = 6
      SHX1_4(SHX2_4)
      SHX1_4 = ScaleformMovieMethodAddParamInt
      SHX2_4 = 255
      SHX1_4(SHX2_4)
      SHX1_4 = EndScaleformMovieMethod
      SHX1_4()
      SHX1_4 = BeginScaleformMovieMethod
      SHX2_4 = SHX35_1
      SHX3_4 = "SET_COLUMN_SPEED"
      SHX1_4(SHX2_4, SHX3_4)
      SHX1_4 = ScaleformMovieMethodAddParamInt
      SHX2_4 = 7
      SHX1_4(SHX2_4)
      SHX1_4 = ScaleformMovieMethodAddParamInt
      SHX2_4 = 255
      SHX1_4(SHX2_4)
      SHX1_4 = EndScaleformMovieMethod
      SHX1_4()
      SHX1_4 = SHX35_1
      return SHX1_4
    end
    Initialize = SHX0_3
    SHX0_3 = Initialize
    SHX1_3 = "HACKING_PC"
    SHX0_3 = SHX0_3(SHX1_3)
    SHX35_1 = SHX0_3
    while true do
      SHX0_3 = DrawScaleformMovieFullscreen
      SHX1_3 = SHX35_1
      SHX2_3 = 255
      SHX3_3 = 255
      SHX4_3 = 255
      SHX5_3 = 255
      SHX6_3 = 0
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
      SHX0_3 = BeginScaleformMovieMethod
      SHX1_3 = SHX35_1
      SHX2_3 = "SET_CURSOR"
      SHX0_3(SHX1_3, SHX2_3)
      SHX0_3 = ScaleformMovieMethodAddParamFloat
      SHX1_3 = GetControlNormal
      SHX2_3 = 0
      SHX3_3 = 239
      SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3 = SHX1_3(SHX2_3, SHX3_3)
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
      SHX0_3 = ScaleformMovieMethodAddParamFloat
      SHX1_3 = GetControlNormal
      SHX2_3 = 0
      SHX3_3 = 240
      SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3 = SHX1_3(SHX2_3, SHX3_3)
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
      SHX0_3 = EndScaleformMovieMethod
      SHX0_3()
      SHX0_3 = IsDisabledControlJustPressed
      SHX1_3 = 0
      SHX2_3 = 24
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      if SHX0_3 then
        SHX0_3 = BeginScaleformMovieMethod
        SHX1_3 = SHX35_1
        SHX2_3 = "SET_INPUT_EVENT_SELECT"
        SHX0_3(SHX1_3, SHX2_3)
        SHX0_3 = EndScaleformMovieMethodReturnValue
        SHX0_3 = SHX0_3()
        SHX36_1 = SHX0_3
        SHX0_3 = PlaySoundFrontend
        SHX1_3 = -1
        SHX2_3 = "HACKING_CLICK"
        SHX3_3 = ""
        SHX4_3 = true
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
      else
        SHX0_3 = IsDisabledControlJustPressed
        SHX1_3 = 0
        SHX2_3 = 25
        SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
        if SHX0_3 then
          SHX0_3 = BeginScaleformMovieMethod
          SHX1_3 = SHX35_1
          SHX2_3 = "SET_INPUT_EVENT_BACK"
          SHX0_3(SHX1_3, SHX2_3)
          SHX0_3 = EndScaleformMovieMethod
          SHX0_3()
          SHX0_3 = PlaySoundFrontend
          SHX1_3 = -1
          SHX2_3 = "HACKING_CLICK"
          SHX3_3 = ""
          SHX4_3 = true
          SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
        end
      end
      SHX1_3 = SHX20_1.netId
      SHX0_3 = SHX14_1
      SHX0_3 = SHX0_3[SHX1_3]
      if nil ~= SHX0_3 then
        SHX0_3 = SHX20_1.hackingEngaged
        if SHX0_3 then
          goto SHX_LABEL_88
        end
      end
      SHX0_3 = SetScaleformMovieAsNoLongerNeeded
      SHX1_3 = SHX35_1
      SHX0_3(SHX1_3)
      SHX0_3 = 0
      SHX37_1 = SHX0_3
      SHX0_3 = Wait
      SHX1_3 = 2000
      SHX0_3(SHX1_3)
      do break end
      -- [FIX IF ERROR] Move ::SHX_LABEL_88:: outside nested blocks until all 'goto SHX_LABEL_88' can see it
      ::SHX_LABEL_88::
      SHX0_3 = Citizen
      SHX0_3 = SHX0_3.Wait
      SHX1_3 = 0
      SHX0_3(SHX1_3)
    end
  end
  SHX0_2(SHX1_2)
end
SHX40_1 = RegisterNetEvent
SHX41_1 = "c508e140c0"
function SHX42_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  if SHX3_2 then
    SHX20_1.hackingEngaged = true
    SHX20_1.awaitingResponse = false
    SHX38_1 = SHX2_2
    SHX4_2 = 2
    SHX37_1 = SHX4_2
    SHX4_2 = PlaySoundFrontend
    SHX5_2 = -1
    SHX6_2 = "5s_To_Event_Start_Countdown"
    SHX7_2 = "GTAO_FM_Events_Soundset"
    SHX8_2 = true
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX4_2 = SHX39_1
    SHX4_2()
    SHX4_2 = FreezeEntityPosition
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.getPlayerPed
    SHX5_2 = SHX5_2()
    SHX6_2 = true
    SHX4_2(SHX5_2, SHX6_2)
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.setWeapon
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.getPlayerPed
    SHX5_2 = SHX5_2()
    SHX6_2 = -1569615261
    SHX7_2 = true
    SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.loadModel
    SHX5_2 = -1585232418
    SHX4_2 = SHX4_2(SHX5_2)
    if not SHX4_2 then
      return
    end
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.requestEntitySpawn
    SHX6_2 = "g4s_hack_tablet"
    SHX5_2(SHX6_2)
    SHX5_2 = CreateObject
    SHX6_2 = SHX4_2
    SHX7_2 = 0
    SHX8_2 = 0
    SHX9_2 = 0
    SHX10_2 = true
    SHX11_2 = true
    SHX12_2 = true
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX17_1 = SHX5_2
    SHX5_2 = AttachEntityToEntity
    SHX6_2 = SHX17_1
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.getPlayerPed
    SHX7_2 = SHX7_2()
    SHX8_2 = GetPedBoneIndex
    SHX9_2 = CMG
    SHX9_2 = SHX9_2.getPlayerPed
    SHX9_2 = SHX9_2()
    SHX10_2 = 57005
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
    SHX9_2 = 0.17
    SHX10_2 = 0.1
    SHX11_2 = -0.13
    SHX12_2 = 24.0
    SHX13_2 = 180.0
    SHX14_2 = 0.0
    SHX15_2 = true
    SHX16_2 = true
    SHX17_2 = false
    SHX18_2 = true
    SHX19_2 = 1
    SHX20_2 = true
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
    SHX5_2 = SetModelAsNoLongerNeeded
    SHX6_2 = SHX4_2
    SHX5_2(SHX6_2)
  else
    SHX20_1.awaitingResponse = false
  end
end
SHX40_1(SHX41_1, SHX42_1)
SHX40_1 = Citizen
SHX40_1 = SHX40_1.CreateThread
function SHX41_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  while true do
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
    SHX0_2 = SHX35_1
    if SHX0_2 then
      SHX0_2 = HasScaleformMovieLoaded
      SHX1_2 = SHX35_1
      SHX0_2 = SHX0_2(SHX1_2)
      if SHX0_2 then
        SHX0_2 = DisableControlAction
        SHX1_2 = 0
        SHX2_2 = 24
        SHX3_2 = true
        SHX0_2(SHX1_2, SHX2_2, SHX3_2)
        SHX0_2 = DisableControlAction
        SHX1_2 = 0
        SHX2_2 = 25
        SHX3_2 = true
        SHX0_2(SHX1_2, SHX2_2, SHX3_2)
        SHX0_2 = IsScaleformMovieMethodReturnValueReady
        SHX1_2 = SHX36_1
        SHX0_2 = SHX0_2(SHX1_2)
        if SHX0_2 then
          SHX0_2 = GetScaleformMovieMethodReturnValueInt
          SHX1_2 = SHX36_1
          SHX0_2 = SHX0_2(SHX1_2)
          ProgramID = SHX0_2
          SHX0_2 = ProgramID
          if 82 == SHX0_2 then
            SHX0_2 = PlaySoundFrontend
            SHX1_2 = -1
            SHX2_2 = "HACKING_CLICK_BAD"
            SHX3_2 = ""
            SHX4_2 = false
            SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
          else
            SHX0_2 = ProgramID
            if 83 == SHX0_2 then
              SHX0_2 = BeginScaleformMovieMethod
              SHX1_2 = SHX35_1
              SHX2_2 = "RUN_PROGRAM"
              SHX0_2(SHX1_2, SHX2_2)
              SHX0_2 = ScaleformMovieMethodAddParamFloat
              SHX1_2 = 83.0
              SHX0_2(SHX1_2)
              SHX0_2 = EndScaleformMovieMethod
              SHX0_2()
              SHX0_2 = BeginScaleformMovieMethod
              SHX1_2 = SHX35_1
              SHX2_2 = "SET_ROULETTE_WORD"
              SHX0_2(SHX1_2, SHX2_2)
              SHX0_2 = _ENV
              SHX1_2 = "ScaleformMovieMethodAddParamTextureNameString"
              SHX0_2 = SHX0_2[SHX1_2]
              SHX1_2 = SHX38_1
              SHX0_2(SHX1_2)
              SHX0_2 = EndScaleformMovieMethod
              SHX0_2()
            else
              SHX0_2 = ProgramID
              if 87 == SHX0_2 then
                SHX0_2 = 0
                SHX37_1 = SHX0_2
                SHX0_2 = BeginScaleformMovieMethod
                SHX1_2 = SHX35_1
                SHX2_2 = "SET_ROULETTE_WORD"
                SHX0_2(SHX1_2, SHX2_2)
                SHX0_2 = _ENV
                SHX1_2 = "ScaleformMovieMethodAddParamTextureNameString"
                SHX0_2 = SHX0_2[SHX1_2]
                SHX1_2 = SHX38_1
                SHX0_2(SHX1_2)
                SHX0_2 = EndScaleformMovieMethod
                SHX0_2()
                SHX0_2 = Wait
                SHX1_2 = 100
                SHX0_2(SHX1_2)
                SHX0_2 = BeginScaleformMovieMethod
                SHX1_2 = SHX35_1
                SHX2_2 = "OPEN_ERROR_POPUP"
                SHX0_2(SHX1_2, SHX2_2)
                SHX0_2 = ScaleformMovieMethodAddParamBool
                SHX1_2 = true
                SHX0_2(SHX1_2)
                SHX0_2 = _ENV
                SHX1_2 = "ScaleformMovieMethodAddParamTextureNameString"
                SHX0_2 = SHX0_2[SHX1_2]
                SHX1_2 = "MET POLICE AWARE, DEVICE SHUTTING DOWN"
                SHX0_2(SHX1_2)
                SHX0_2 = EndScaleformMovieMethod
                SHX0_2()
                SHX0_2 = Wait
                SHX1_2 = 100
                SHX0_2(SHX1_2)
                SHX0_2 = SetScaleformMovieAsNoLongerNeeded
                SHX1_2 = SHX35_1
                SHX0_2(SHX1_2)
                SHX0_2 = EndScaleformMovieMethod
                SHX0_2()
                SHX0_2 = SHX32_1
                SHX1_2 = "g4slogo"
                SHX2_2 = "g4slogo"
                SHX3_2 = "Our security team have activated the panic for this vehicle."
                SHX4_2 = "Cash Driver Security"
                SHX5_2 = "Police Notified"
                SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
                SHX0_2 = SHX32_1
                SHX1_2 = "g4slogo"
                SHX2_2 = "g4slogo"
                SHX3_2 = "You have failed to hack this vehicle."
                SHX4_2 = "Cash Driver Security"
                SHX5_2 = "Police Notified"
                SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
                SHX0_2 = TriggerServerEvent
                SHX1_2 = "58c97cecd8"
                SHX2_2 = SHX20_1.netId
                SHX3_2 = SHX20_1.src
                SHX4_2 = SHX38_1
                SHX5_2 = false
                SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
                SHX0_2 = DeleteObject
                SHX1_2 = SHX17_1
                SHX0_2(SHX1_2)
                break
              else
                SHX0_2 = ProgramID
                if 92 == SHX0_2 then
                  SHX0_2 = PlaySoundFrontend
                  SHX1_2 = -1
                  SHX2_2 = "HACKING_CLICK_GOOD"
                  SHX3_2 = ""
                  SHX4_2 = false
                  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
                else
                  SHX0_2 = ProgramID
                  if 86 == SHX0_2 then
                    SHX0_2 = PlaySoundFrontend
                    SHX1_2 = -1
                    SHX2_2 = "HACKING_SUCCESS"
                    SHX3_2 = ""
                    SHX4_2 = true
                    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
                    SHX0_2 = BeginScaleformMovieMethod
                    SHX1_2 = SHX35_1
                    SHX2_2 = "SET_ROULETTE_OUTCOME"
                    SHX0_2(SHX1_2, SHX2_2)
                    SHX0_2 = ScaleformMovieMethodAddParamBool
                    SHX1_2 = true
                    SHX0_2(SHX1_2)
                    SHX0_2 = _ENV
                    SHX1_2 = "ScaleformMovieMethodAddParamTextureNameString"
                    SHX0_2 = SHX0_2[SHX1_2]
                    SHX1_2 = "Cash Driver HACK SUCCESSFUL!"
                    SHX0_2(SHX1_2)
                    SHX0_2 = EndScaleformMovieMethod
                    SHX0_2()
                    SHX0_2 = Wait
                    SHX1_2 = 3800
                    SHX0_2(SHX1_2)
                    SHX0_2 = BeginScaleformMovieMethod
                    SHX1_2 = SHX35_1
                    SHX2_2 = "CLOSE_APP"
                    SHX0_2(SHX1_2, SHX2_2)
                    SHX0_2 = EndScaleformMovieMethod
                    SHX0_2()
                    SHX0_2 = BeginScaleformMovieMethod
                    SHX1_2 = SHX35_1
                    SHX2_2 = "OPEN_LOADING_PROGRESS"
                    SHX0_2(SHX1_2, SHX2_2)
                    SHX0_2 = ScaleformMovieMethodAddParamBool
                    SHX1_2 = true
                    SHX0_2(SHX1_2)
                    SHX0_2 = EndScaleformMovieMethod
                    SHX0_2()
                    SHX0_2 = BeginScaleformMovieMethod
                    SHX1_2 = SHX35_1
                    SHX2_2 = "SET_LOADING_PROGRESS"
                    SHX0_2(SHX1_2, SHX2_2)
                    SHX0_2 = ScaleformMovieMethodAddParamInt
                    SHX1_2 = 35
                    SHX0_2(SHX1_2)
                    SHX0_2 = EndScaleformMovieMethod
                    SHX0_2()
                    SHX0_2 = BeginScaleformMovieMethod
                    SHX1_2 = SHX35_1
                    SHX2_2 = "SET_LOADING_TIME"
                    SHX0_2(SHX1_2, SHX2_2)
                    SHX0_2 = ScaleformMovieMethodAddParamInt
                    SHX1_2 = 35
                    SHX0_2(SHX1_2)
                    SHX0_2 = EndScaleformMovieMethod
                    SHX0_2()
                    SHX0_2 = BeginScaleformMovieMethod
                    SHX1_2 = SHX35_1
                    SHX2_2 = "SET_LOADING_MESSAGE"
                    SHX0_2(SHX1_2, SHX2_2)
                    SHX0_2 = _ENV
                    SHX1_2 = "ScaleformMovieMethodAddParamTextureNameString"
                    SHX0_2 = SHX0_2[SHX1_2]
                    SHX1_2 = "Writing data to hack.."
                    SHX0_2(SHX1_2)
                    SHX0_2 = ScaleformMovieMethodAddParamFloat
                    SHX1_2 = 4.0
                    SHX0_2(SHX1_2)
                    SHX0_2 = EndScaleformMovieMethod
                    SHX0_2()
                    SHX0_2 = Wait
                    SHX1_2 = 1500
                    SHX0_2(SHX1_2)
                    SHX0_2 = BeginScaleformMovieMethod
                    SHX1_2 = SHX35_1
                    SHX2_2 = "SET_LOADING_MESSAGE"
                    SHX0_2(SHX1_2, SHX2_2)
                    SHX0_2 = _ENV
                    SHX1_2 = "ScaleformMovieMethodAddParamTextureNameString"
                    SHX0_2 = SHX0_2[SHX1_2]
                    SHX1_2 = "Executing DriverInjection, accessing money.."
                    SHX0_2(SHX1_2)
                    SHX0_2 = ScaleformMovieMethodAddParamFloat
                    SHX1_2 = 2.0
                    SHX0_2(SHX1_2)
                    SHX0_2 = EndScaleformMovieMethod
                    SHX0_2()
                    SHX0_2 = BeginScaleformMovieMethod
                    SHX1_2 = SHX35_1
                    SHX2_2 = "SET_LOADING_TIME"
                    SHX0_2(SHX1_2, SHX2_2)
                    SHX0_2 = ScaleformMovieMethodAddParamInt
                    SHX1_2 = 15
                    SHX0_2(SHX1_2)
                    SHX0_2 = EndScaleformMovieMethod
                    SHX0_2()
                    SHX0_2 = BeginScaleformMovieMethod
                    SHX1_2 = SHX35_1
                    SHX2_2 = "SET_LOADING_PROGRESS"
                    SHX0_2(SHX1_2, SHX2_2)
                    SHX0_2 = ScaleformMovieMethodAddParamInt
                    SHX1_2 = 75
                    SHX0_2(SHX1_2)
                    SHX0_2 = EndScaleformMovieMethod
                    SHX0_2()
                    SHX0_2 = Wait
                    SHX1_2 = 1500
                    SHX0_2(SHX1_2)
                    SHX0_2 = BeginScaleformMovieMethod
                    SHX1_2 = SHX35_1
                    SHX2_2 = "OPEN_LOADING_PROGRESS"
                    SHX0_2(SHX1_2, SHX2_2)
                    SHX0_2 = ScaleformMovieMethodAddParamBool
                    SHX1_2 = false
                    SHX0_2(SHX1_2)
                    SHX0_2 = EndScaleformMovieMethod
                    SHX0_2()
                    SHX0_2 = BeginScaleformMovieMethod
                    SHX1_2 = SHX35_1
                    SHX2_2 = "OPEN_ERROR_POPUP"
                    SHX0_2(SHX1_2, SHX2_2)
                    SHX0_2 = ScaleformMovieMethodAddParamBool
                    SHX1_2 = true
                    SHX0_2(SHX1_2)
                    SHX0_2 = _ENV
                    SHX1_2 = "ScaleformMovieMethodAddParamTextureNameString"
                    SHX0_2 = SHX0_2[SHX1_2]
                    SHX1_2 = "MET POLICE AWARE - DEVICE SHUTTING DOWN"
                    SHX0_2(SHX1_2)
                    SHX0_2 = EndScaleformMovieMethod
                    SHX0_2()
                    SHX0_2 = Wait
                    SHX1_2 = 3500
                    SHX0_2(SHX1_2)
                    SHX0_2 = SetScaleformMovieAsNoLongerNeeded
                    SHX1_2 = SHX35_1
                    SHX0_2(SHX1_2)
                    SHX0_2 = EndScaleformMovieMethod
                    SHX0_2()
                    SHX0_2 = SHX32_1
                    SHX1_2 = "g4slogo"
                    SHX2_2 = "g4slogo"
                    SHX3_2 = "We have notified the Metropolitan Police service. You are on CCTV."
                    SHX4_2 = "Cash Driver Security"
                    SHX5_2 = "Police Notified"
                    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
                    SHX0_2 = TriggerServerEvent
                    SHX1_2 = "58c97cecd8"
                    SHX2_2 = SHX20_1.netId
                    SHX3_2 = SHX20_1.src
                    SHX4_2 = SHX38_1
                    SHX5_2 = true
                    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
                    SHX0_2 = DeleteObject
                    SHX1_2 = SHX17_1
                    SHX0_2(SHX1_2)
                    break
                  else
                    SHX0_2 = ProgramID
                    if 6 == SHX0_2 then
                      SHX0_2 = Wait
                      SHX1_2 = 500
                      SHX0_2(SHX1_2)
                      SHX0_2 = SetScaleformMovieAsNoLongerNeeded
                      SHX1_2 = SHX35_1
                      SHX0_2(SHX1_2)
                      SHX0_2 = DisableControlAction
                      SHX1_2 = 0
                      SHX2_2 = 24
                      SHX3_2 = false
                      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
                      SHX0_2 = DisableControlAction
                      SHX1_2 = 0
                      SHX2_2 = 25
                      SHX3_2 = false
                      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
                    end
                  end
                end
              end
            end
          end
          SHX0_2 = SHX37_1
          if 0 == SHX0_2 then
            SHX0_2 = PlaySoundFrontend
            SHX1_2 = -1
            SHX2_2 = "HACKING_FAILURE"
            SHX3_2 = ""
            SHX4_2 = true
            SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
            SHX0_2 = BeginScaleformMovieMethod
            SHX1_2 = SHX35_1
            SHX2_2 = "SET_ROULETTE_OUTCOME"
            SHX0_2(SHX1_2, SHX2_2)
            SHX0_2 = ScaleformMovieMethodAddParamBool
            SHX1_2 = false
            SHX0_2(SHX1_2)
            SHX0_2 = _ENV
            SHX1_2 = "ScaleformMovieMethodAddParamTextureNameString"
            SHX0_2 = SHX0_2[SHX1_2]
            SHX1_2 = "DRIVERINJECT - HACK FAILED!"
            SHX0_2(SHX1_2)
            SHX0_2 = EndScaleformMovieMethod
            SHX0_2()
            SHX0_2 = Wait
            SHX1_2 = 3500
            SHX0_2(SHX1_2)
            SHX0_2 = BeginScaleformMovieMethod
            SHX1_2 = SHX35_1
            SHX2_2 = "CLOSE_APP"
            SHX0_2(SHX1_2, SHX2_2)
            SHX0_2 = EndScaleformMovieMethod
            SHX0_2()
            SHX0_2 = BeginScaleformMovieMethod
            SHX1_2 = SHX35_1
            SHX2_2 = "OPEN_ERROR_POPUP"
            SHX0_2(SHX1_2, SHX2_2)
            SHX0_2 = ScaleformMovieMethodAddParamBool
            SHX1_2 = true
            SHX0_2(SHX1_2)
            SHX0_2 = _ENV
            SHX1_2 = "ScaleformMovieMethodAddParamTextureNameString"
            SHX0_2 = SHX0_2[SHX1_2]
            SHX1_2 = "POLICE AWARE OF HACK ATTEMPT, DEVICE SHUTTING DOWN"
            SHX0_2(SHX1_2)
            SHX0_2 = EndScaleformMovieMethod
            SHX0_2()
            SHX0_2 = Wait
            SHX1_2 = 2500
            SHX0_2(SHX1_2)
            SHX0_2 = SetScaleformMovieAsNoLongerNeeded
            SHX1_2 = SHX35_1
            SHX0_2(SHX1_2)
            SHX0_2 = EndScaleformMovieMethod
            SHX0_2()
            SHX0_2 = DisableControlAction
            SHX1_2 = 0
            SHX2_2 = 24
            SHX3_2 = false
            SHX0_2(SHX1_2, SHX2_2, SHX3_2)
            SHX0_2 = DisableControlAction
            SHX1_2 = 0
            SHX2_2 = 25
            SHX3_2 = false
            SHX0_2(SHX1_2, SHX2_2, SHX3_2)
            SHX0_2 = notify
            SHX1_2 = "Hacking Unsuccessful"
            SHX0_2(SHX1_2)
            SHX0_2 = SHX32_1
            SHX1_2 = "g4slogo"
            SHX2_2 = "g4slogo"
            SHX3_2 = "Please note: The police have been notified."
            SHX4_2 = "Cash Driver Security"
            SHX5_2 = "Police Notified"
            SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
            SHX0_2 = TriggerServerEvent
            SHX1_2 = "58c97cecd8"
            SHX2_2 = SHX20_1.netId
            SHX3_2 = SHX20_1.src
            SHX4_2 = SHX38_1
            SHX5_2 = false
            SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
            SHX0_2 = DeleteObject
            SHX1_2 = SHX17_1
            SHX0_2(SHX1_2)
            break
          end
        end
      end
    end
  end
end
SHX40_1(SHX41_1)
SHX40_1 = RageUI
SHX40_1 = SHX40_1.CreateWhile
SHX41_1 = 1
SHX42_1 = RMenu
SHX43_1 = SHX42_1
SHX42_1 = SHX42_1.Get
SHX44_1 = "g4s"
SHX45_1 = "shiftHandler"
SHX42_1 = SHX42_1(SHX43_1, SHX44_1, SHX45_1)
SHX43_1 = nil
function SHX44_1()
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
  SHX3_2 = "g4s"
  SHX4_2 = "shiftHandler"
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
    SHX0_3 = SHX0_1
    if not SHX0_3 then
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.ButtonWithStyle
      SHX1_3 = "Start Shift"
      SHX2_3 = "Start your shift working for Private Security."
      SHX3_3 = {}
      SHX3_3.RightLabel = "Cash Driver"
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
          SHX3_4 = RageUI
          SHX3_4 = SHX3_4.Visible
          SHX4_4 = RMenu
          SHX5_4 = SHX4_4
          SHX4_4 = SHX4_4.Get
          SHX6_4 = "g4s"
          SHX7_4 = "shiftHandler"
          SHX4_4 = SHX4_4(SHX5_4, SHX6_4, SHX7_4)
          SHX5_4 = false
          SHX3_4(SHX4_4, SHX5_4)
          SHX3_4 = TriggerServerEvent
          SHX4_4 = "2ee6b18cbd"
          SHX5_4 = true
          SHX3_4(SHX4_4, SHX5_4)
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    else
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.ButtonWithStyle
      SHX1_3 = "End Shift"
      SHX2_3 = "End your shift working for Private Security"
      SHX3_3 = {}
      SHX3_3.RightLabel = "Cash Driver"
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
          SHX3_4 = RageUI
          SHX3_4 = SHX3_4.Visible
          SHX4_4 = RMenu
          SHX5_4 = SHX4_4
          SHX4_4 = SHX4_4.Get
          SHX6_4 = "g4s"
          SHX7_4 = "shiftHandler"
          SHX4_4 = SHX4_4(SHX5_4, SHX6_4, SHX7_4)
          SHX5_4 = false
          SHX3_4(SHX4_4, SHX5_4)
          SHX3_4 = TriggerServerEvent
          SHX4_4 = "2ee6b18cbd"
          SHX5_4 = false
          SHX3_4(SHX4_4, SHX5_4)
          SHX3_4 = false
          SHX0_1 = SHX3_4
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX40_1(SHX41_1, SHX42_1, SHX43_1, SHX44_1)
function SHX40_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = DoesEntityExist
  SHX2_2 = SHX1_1
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = IsVehicleDriveable
    SHX2_2 = SHX1_1
    SHX3_2 = true
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    if not SHX1_2 then
      SHX1_2 = DeleteEntity
      SHX2_2 = SHX1_1
      SHX1_2(SHX2_2)
      SHX1_2 = GetOffsetFromEntityInWorldCoords
      SHX2_2 = SHX0_2
      SHX3_2 = 0.0
      SHX4_2 = 5.0
      SHX5_2 = 0.0
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.requestEntitySpawn
      SHX3_2 = "g4s"
      SHX4_2 = SHX1_2
      SHX2_2(SHX3_2, SHX4_2)
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.spawnVehicle
      SHX3_2 = SHX11_1
      SHX4_2 = SHX1_2.x
      SHX5_2 = SHX1_2.y
      SHX6_2 = SHX1_2.z
      SHX7_2 = GetEntityHeading
      SHX8_2 = SHX0_2
      SHX7_2 = SHX7_2(SHX8_2)
      SHX8_2 = true
      SHX9_2 = true
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
      SHX1_1 = SHX2_2
      SHX2_2 = VehToNet
      SHX3_2 = SHX1_1
      SHX2_2 = SHX2_2(SHX3_2)
      SHX2_1 = SHX2_2
      SHX2_2 = TriggerServerEvent
      SHX3_2 = "be91a889a5"
      SHX4_2 = SHX2_1
      SHX2_2(SHX3_2, SHX4_2)
      SHX2_2 = SHX18_1
      SHX2_2 = SHX2_2 + 1
      SHX18_1 = SHX2_2
    end
  end
end
SHX41_1 = RageUI
SHX41_1 = SHX41_1.CreateWhile
SHX42_1 = 1
SHX43_1 = RMenu
SHX44_1 = SHX43_1
SHX43_1 = SHX43_1.Get
SHX45_1 = "g4s"
SHX46_1 = "main"
SHX43_1 = SHX43_1(SHX44_1, SHX45_1, SHX46_1)
SHX44_1 = nil
function SHX45_1()
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
  SHX3_2 = "g4s"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
    SHX0_3 = SHX7_1
    if not SHX0_3 then
      SHX0_3 = CMG
      SHX0_3 = SHX0_3.getPlayerVehicle
      SHX0_3 = SHX0_3()
      if 0 == SHX0_3 then
        SHX0_3 = SHX18_1
        if SHX0_3 < 4 then
          SHX0_3 = RageUI
          SHX0_3 = SHX0_3.ButtonWithStyle
          SHX1_3 = "New Vehicle"
          SHX2_3 = "Get a new vehicle"
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
              SHX3_4 = SHX40_1
              SHX3_4()
            end
          end
          SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
        end
      end
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.ButtonWithStyle
      SHX1_3 = "End Shift"
      SHX2_3 = "End your shift"
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
          SHX4_4 = "2ee6b18cbd"
          SHX5_4 = false
          SHX3_4(SHX4_4, SHX5_4)
          SHX3_4 = false
          SHX0_1 = SHX3_4
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.ButtonWithStyle
      SHX1_3 = "Forgot Pin"
      SHX2_3 = "Get a pin reminder"
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
        
        local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4
        if SHX2_4 then
          SHX3_4 = SHX32_1
          SHX4_4 = "CHAR_MP_MEX_DOCKS"
          SHX5_4 = "CHAR_MP_MEX_DOCKS"
          SHX6_4 = "Hey mate, I've got you. Your pin is "
          SHX7_4 = SHX5_1
          SHX8_4 = "."
          SHX6_4 = SHX6_4 .. SHX7_4 .. SHX8_4
          SHX7_4 = "Arthur"
          SHX8_4 = "07925065325"
          SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4)
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
      SHX0_3 = SHX6_1
      if not SHX0_3 then
        SHX0_3 = RageUI
        SHX0_3 = SHX0_3.ButtonWithStyle
        SHX1_3 = "Activate Panic"
        SHX2_3 = "Activate your panic alarm"
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
          
          local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4
          if SHX2_4 then
            SHX3_4 = TriggerServerEvent
            SHX4_4 = "81fb012b91"
            SHX5_4 = SHX2_1
            SHX3_4(SHX4_4, SHX5_4)
            SHX3_4 = SHX32_1
            SHX4_4 = "g4slogo"
            SHX5_4 = "g4slogo"
            SHX6_4 = "You have activated your panic alarm."
            SHX7_4 = "Cash Driver Security"
            SHX8_4 = "Panic Activated"
            SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4)
            SHX3_4 = true
            SHX6_1 = SHX3_4
          end
        end
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
      else
      end
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX41_1(SHX42_1, SHX43_1, SHX44_1, SHX45_1)
SHX41_1 = RegisterNetEvent
SHX42_1 = "c67322d45d"
function SHX43_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = false
  SHX6_1 = SHX0_2
end
SHX41_1(SHX42_1, SHX43_1)
SHX41_1 = RegisterNetEvent
SHX42_1 = "ad7978cf26"
function SHX43_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = SHX9_1
  if 0 ~= SHX1_2 then
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.removeBlip
    SHX2_2 = SHX9_1
    SHX1_2(SHX2_2)
  end
  SHX1_2 = SHX0_2.jobActive
  if SHX1_2 then
    SHX1_2 = SHX0_2.collected
    if not SHX1_2 then
      SHX1_2 = SHX8_1
      if 0 ~= SHX1_2 then
        SHX1_2 = tCMG
        SHX1_2 = SHX1_2.removeBlip
        SHX2_2 = SHX8_1
        SHX1_2(SHX2_2)
      end
      SHX1_2 = tCMG
      SHX1_2 = SHX1_2.addBlip
      SHX2_2 = SHX0_2.collectionCoords
      SHX2_2 = SHX2_2.x
      SHX3_2 = SHX0_2.collectionCoords
      SHX3_2 = SHX3_2.y
      SHX4_2 = SHX0_2.collectionCoords
      SHX4_2 = SHX4_2.z
      SHX5_2 = 500
      SHX6_2 = 18
      SHX7_2 = "Cash Driver Collection"
      SHX8_2 = 1.0
      SHX9_2 = false
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
      SHX8_1 = SHX1_2
      SHX1_2 = SetBlipRoute
      SHX2_2 = SHX8_1
      SHX3_2 = true
      SHX1_2(SHX2_2, SHX3_2)
      SHX1_2 = SetBlipRouteColour
      SHX2_2 = SHX8_1
      SHX3_2 = 18
      SHX1_2(SHX2_2, SHX3_2)
    else
      SHX1_2 = SHX0_2.deposited
      if not SHX1_2 then
        SHX1_2 = tCMG
        SHX1_2 = SHX1_2.removeBlip
        SHX2_2 = SHX8_1
        SHX1_2(SHX2_2)
        SHX1_2 = tCMG
        SHX1_2 = SHX1_2.addBlip
        SHX2_2 = SHX0_2.depositCoords
        SHX2_2 = SHX2_2.x
        SHX3_2 = SHX0_2.depositCoords
        SHX3_2 = SHX3_2.y
        SHX4_2 = SHX0_2.depositCoords
        SHX4_2 = SHX4_2.z
        SHX5_2 = 500
        SHX6_2 = 47
        SHX7_2 = "Cash Driver Deposit"
        SHX8_2 = 1.0
        SHX9_2 = false
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
        SHX9_1 = SHX1_2
        SHX1_2 = SetBlipRoute
        SHX2_2 = SHX9_1
        SHX3_2 = true
        SHX1_2(SHX2_2, SHX3_2)
        SHX1_2 = SetBlipRouteColour
        SHX2_2 = SHX9_1
        SHX3_2 = 47
        SHX1_2(SHX2_2, SHX3_2)
      end
    end
    SHX10_1 = SHX0_2
    SHX1_2 = PlaySoundFrontend
    SHX2_2 = -1
    SHX3_2 = "Out_Of_Bounds_Timer"
    SHX4_2 = "DLC_HEISTS_GENERAL_FRONTEND_SOUNDS"
    SHX5_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  else
    SHX1_2 = notify
    SHX2_2 = [[
~b~New job received:~w~
Collection: ]]
    SHX3_2 = SHX0_2.collectionName
    SHX4_2 = [[

Destination: ]]
    SHX5_2 = SHX0_2.depositName
    SHX2_2 = SHX2_2 .. SHX3_2 .. SHX4_2 .. SHX5_2
    SHX1_2(SHX2_2)
    SHX1_2 = Wait
    SHX2_2 = 3000
    SHX1_2(SHX2_2)
    SHX1_2 = TriggerServerEvent
    SHX2_2 = "3c47441080"
    SHX1_2(SHX2_2)
  end
end
SHX41_1(SHX42_1, SHX43_1)
SHX41_1 = RegisterNetEvent
SHX42_1 = "eb54246956"
function SHX43_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = true
  SHX0_1 = SHX2_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.requestEntitySpawn
  SHX3_2 = "g4s"
  SHX4_2 = vector3
  SHX5_2 = SHX21_1.x
  SHX6_2 = SHX21_1.y
  SHX7_2 = SHX21_1.z
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.spawnVehicle
  SHX3_2 = SHX11_1
  SHX4_2 = SHX21_1.x
  SHX5_2 = SHX21_1.y
  SHX6_2 = SHX21_1.z
  SHX7_2 = SHX21_1.heading
  SHX8_2 = true
  SHX9_2 = true
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX1_1 = SHX2_2
  SHX2_2 = VehToNet
  SHX3_2 = SHX1_1
  SHX2_2 = SHX2_2(SHX3_2)
  SHX2_1 = SHX2_2
  SHX2_2 = TaskWarpPedIntoVehicle
  SHX3_2 = SHX1_2
  SHX4_2 = SHX1_1
  SHX5_2 = -1
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX5_1 = SHX0_2
  SHX2_2 = {}
  SHX3_2 = "Marcus"
  SHX4_2 = "Arthur"
  SHX5_2 = "Rob"
  SHX6_2 = "Thomas"
  SHX7_2 = "Despawned"
  SHX2_2[1] = SHX3_2
  SHX2_2[2] = SHX4_2
  SHX2_2[3] = SHX5_2
  SHX2_2[4] = SHX6_2
  SHX2_2[5] = SHX7_2
  SHX3_2 = math
  SHX3_2 = SHX3_2.random
  SHX4_2 = 1
  SHX5_2 = 5
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX4_2 = SHX2_2[SHX3_2]
  SHX5_2 = SHX32_1
  SHX6_2 = "CHAR_MP_MEX_DOCKS"
  SHX7_2 = "CHAR_MP_MEX_DOCKS"
  SHX8_2 = "Hey, I'm "
  SHX9_2 = SHX4_2
  SHX10_2 = " , another agent for Private Security. I'll be here giving you some tips along the way."
  SHX8_2 = SHX8_2 .. SHX9_2 .. SHX10_2
  SHX9_2 = SHX4_2
  SHX10_2 = "07925065325"
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX5_2 = TriggerServerEvent
  SHX6_2 = "be91a889a5"
  SHX7_2 = SHX2_1
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = false
  SHX6_2 = GetEntityModel
  SHX7_2 = SHX1_2
  SHX6_2 = SHX6_2(SHX7_2)
  if 1885233650 == SHX6_2 then
    SHX5_2 = true
  else
    SHX5_2 = true
    SHX7_2 = tCMG
    SHX7_2 = SHX7_2.setCustomization
    SHX8_2 = {}
    SHX8_2.modelhash = 1885233650
    SHX7_2(SHX8_2)
  end
  SHX7_2 = json
  SHX7_2 = SHX7_2.encode
  SHX8_2 = tCMG
  SHX8_2 = SHX8_2.getCustomization
  SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2 = SHX8_2()
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  if not SHX7_2 then
    SHX7_2 = ""
  end
  SHX19_1 = SHX7_2
  if SHX5_2 then
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.loadCustomisationPreset
    SHX8_2 = "G4SMale"
    SHX7_2(SHX8_2)
  else
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.loadCustomisationPreset
    SHX8_2 = "G4SFemale"
    SHX7_2(SHX8_2)
  end
  SHX7_2 = Wait
  SHX8_2 = 2000
  SHX7_2(SHX8_2)
  SHX7_2 = TaskVehicleDriveToCoord
  SHX8_2 = CMG
  SHX8_2 = SHX8_2.getPlayerPed
  SHX8_2 = SHX8_2()
  SHX9_2 = SHX1_1
  SHX10_2 = -672.356
  SHX11_2 = 282.3297
  SHX12_2 = 81.43005
  SHX13_2 = math
  SHX13_2 = SHX13_2.rad
  SHX14_2 = 250.0
  SHX13_2 = SHX13_2(SHX14_2)
  SHX14_2 = 1
  SHX15_2 = GetHashKey
  SHX16_2 = GetEntityModel
  SHX17_2 = SHX1_1
  SHX16_2, SHX17_2, SHX18_2 = SHX16_2(SHX17_2)
  SHX15_2 = SHX15_2(SHX16_2, SHX17_2, SHX18_2)
  SHX16_2 = 60
  SHX17_2 = 5
  SHX18_2 = 1
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  SHX7_2 = Wait
  SHX8_2 = 5000
  SHX7_2(SHX8_2)
  SHX7_2 = TaskVehicleTempAction
  SHX8_2 = CMG
  SHX8_2 = SHX8_2.getPlayerPed
  SHX8_2 = SHX8_2()
  SHX9_2 = SHX1_1
  SHX10_2 = 27
  SHX11_2 = 10.0
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX7_2 = Wait
  SHX8_2 = 2000
  SHX7_2(SHX8_2)
  SHX7_2 = SHX32_1
  SHX8_2 = "CHAR_MP_MEX_DOCKS"
  SHX9_2 = "CHAR_MP_MEX_DOCKS"
  SHX10_2 = "Use /securejob to access the Cash Driver menu."
  SHX11_2 = SHX4_2
  SHX12_2 = "Cash Driver"
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
end
SHX41_1(SHX42_1, SHX43_1)
SHX41_1 = RegisterNetEvent
SHX42_1 = "273e1a7f10"
function SHX43_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = DoesEntityExist
  SHX1_2 = SHX1_1
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX0_2 = DeleteEntity
    SHX1_2 = SHX1_1
    SHX0_2(SHX1_2)
  end
  SHX10_1.jobActive = false
  SHX0_2 = false
  SHX0_1 = SHX0_2
  SHX0_2 = SHX7_1
  if SHX0_2 then
    SHX0_2 = SHX24_1
    SHX0_2()
  end
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.setCustomization
  SHX1_2 = json
  SHX1_2 = SHX1_2.decode
  SHX2_2 = SHX19_1
  SHX1_2, SHX2_2 = SHX1_2(SHX2_2)
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SHX22_1.active
  if SHX0_2 then
    SHX0_2 = SHX33_1
    SHX0_2()
  end
  SHX0_2 = SHX8_1
  if 0 ~= SHX0_2 then
    SHX0_2 = tCMG
    SHX0_2 = SHX0_2.removeBlip
    SHX1_2 = SHX8_1
    SHX0_2(SHX1_2)
  end
  SHX0_2 = SHX9_1
  if 0 ~= SHX0_2 then
    SHX0_2 = tCMG
    SHX0_2 = SHX0_2.removeBlip
    SHX1_2 = SHX9_1
    SHX0_2(SHX1_2)
  end
  SHX0_2 = ClearGpsPlayerWaypoint
  SHX0_2()
end
SHX41_1(SHX42_1, SHX43_1)
function SHX41_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = true
  SHX16_1 = SHX0_2
  SHX0_2 = SetScaleformMovieAsNoLongerNeeded
  SHX0_2()
  SHX0_2 = RequestScaleformMovie
  SHX1_2 = "ATM"
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
  SHX3_2 = "enterPINanim"
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = EndScaleformMovieMethod
  SHX1_2()
  SHX1_2 = true
  SHX2_2 = SetTimeout
  SHX3_2 = 3000
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = false
    SHX1_2 = SHX0_3
  end
  SHX2_2(SHX3_2, SHX4_2)
  while SHX1_2 do
    SHX2_2 = DrawScaleformMovie
    SHX3_2 = SHX0_2
    SHX4_2 = 0.5
    SHX5_2 = 0.5
    SHX6_2 = 0.8
    SHX7_2 = 0.8
    SHX8_2 = 255
    SHX9_2 = 255
    SHX10_2 = 255
    SHX11_2 = 0
    SHX12_2 = 0
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
  SHX2_2 = SetScaleformMovieAsNoLongerNeeded
  SHX3_2 = SHX0_2
  SHX2_2(SHX3_2)
  SHX2_2 = EndScaleformMovieMethod
  SHX2_2()
  SHX2_2 = false
  SHX16_1 = SHX2_2
end
function SHX42_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = true
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.CreateThread
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3
    while true do
      SHX0_3 = SHX0_2
      if not SHX0_3 then
        break
      end
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Text
      SHX1_3 = {}
      SHX2_3 = "Your pin is ~b~"
      SHX3_3 = SHX5_1
      SHX2_3 = SHX2_3 .. SHX3_3
      SHX1_3.message = SHX2_3
      SHX0_3(SHX1_3)
      SHX0_3 = Wait
      SHX1_3 = 0
      SHX0_3(SHX1_3)
    end
  end
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.GetRageInputText
  SHX2_2 = "Enter the safe code:"
  SHX1_2 = SHX1_2(SHX2_2)
  SHX0_2 = false
  SHX2_2 = SHX41_1
  SHX2_2()
  SHX2_2 = tostring
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = tostring
  SHX4_2 = SHX5_1
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX2_2 == SHX3_2 then
    SHX2_2 = SHX32_1
    SHX3_2 = "g4slogo"
    SHX4_2 = "g4slogo"
    SHX5_2 = "The safe pin has been entered correctly."
    SHX6_2 = "Cash Driver Security"
    SHX7_2 = "Authorised"
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
    SHX2_2 = FreezeEntityPosition
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.getPlayerPed
    SHX3_2 = SHX3_2()
    SHX4_2 = false
    SHX2_2(SHX3_2, SHX4_2)
    SHX2_2 = true
    return SHX2_2
  else
    SHX2_2 = PlaySoundFrontend
    SHX3_2 = -1
    SHX4_2 = "Hack_Failed"
    SHX5_2 = "DLC_HEIST_BIOLAB_PREP_HACKING_SOUNDS"
    SHX6_2 = true
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    SHX2_2 = Wait
    SHX3_2 = 2000
    SHX2_2(SHX3_2)
    SHX2_2 = FreezeEntityPosition
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.getPlayerPed
    SHX3_2 = SHX3_2()
    SHX4_2 = false
    SHX2_2(SHX3_2, SHX4_2)
    SHX2_2 = false
    return SHX2_2
  end
end
SHX43_1 = RegisterNetEvent
SHX44_1 = "457368e155"
function SHX45_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2
  SHX0_2 = math
  SHX0_2 = SHX0_2.random
  SHX1_2 = 1
  SHX2_2 = 4
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if 1 == SHX0_2 then
    SHX1_2 = SHX32_1
    SHX2_2 = "g4slogo"
    SHX3_2 = "g4slogo"
    SHX4_2 = "Use /securejob to access your Cash Driver Menu."
    SHX5_2 = "Cash Driver Security"
    SHX6_2 = "Alert"
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  end
  SHX1_2 = true
  SHX15_1 = SHX1_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = IsPedInAnyVehicle
  SHX3_2 = SHX1_2
  SHX4_2 = true
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  if SHX2_2 then
    while true do
      SHX2_2 = IsPedInAnyVehicle
      SHX3_2 = SHX1_2
      SHX4_2 = true
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
      if not SHX2_2 then
        break
      end
      SHX2_2 = Wait
      SHX3_2 = 400
      SHX2_2(SHX3_2)
    end
  end
  SHX2_2 = SetVehicleDoorOpen
  SHX3_2 = SHX1_1
  SHX4_2 = 3
  SHX5_2 = false
  SHX6_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = SetVehicleDoorOpen
  SHX3_2 = SHX1_1
  SHX4_2 = 4
  SHX5_2 = false
  SHX6_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = false
  SHX3_2 = GetOffsetFromEntityInWorldCoords
  SHX4_2 = SHX1_1
  SHX5_2 = 0.0
  SHX6_2 = -5.0
  SHX7_2 = 0.0
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  while true do
    SHX4_2 = SHX4_1
    if SHX4_2 then
      break
    end
    SHX4_2 = DrawMarker
    SHX5_2 = 29
    SHX6_2 = SHX3_2.x
    SHX7_2 = SHX3_2.y
    SHX8_2 = SHX3_2.z
    SHX8_2 = SHX8_2 + 0.5
    SHX9_2 = 0.0
    SHX10_2 = 0.0
    SHX11_2 = 0.0
    SHX12_2 = 0.0
    SHX13_2 = 0.0
    SHX14_2 = 0.0
    SHX15_2 = 1.5
    SHX16_2 = 1.5
    SHX17_2 = 1.5
    SHX18_2 = 255
    SHX19_2 = 36
    SHX20_2 = 36
    SHX21_2 = 50
    SHX22_2 = true
    SHX23_2 = false
    SHX24_2 = 2
    SHX25_2 = false
    SHX26_2 = nil
    SHX27_2 = nil
    SHX28_2 = false
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.getPlayerCoords
    SHX4_2 = SHX4_2()
    SHX4_2 = SHX4_2 - SHX3_2
    SHX4_2 = #SHX4_2
    if SHX4_2 <= 1.0 then
      SHX2_2 = true
      SHX5_2 = SHX42_1
      SHX5_2 = SHX5_2()
      SHX2_2 = false
      if SHX5_2 then
        SHX6_2 = true
        SHX4_1 = SHX6_2
      end
      while SHX2_2 do
        SHX6_2 = Wait
        SHX7_2 = 100
        SHX6_2(SHX7_2)
      end
    end
    SHX5_2 = Wait
    SHX6_2 = 0
    SHX5_2(SHX6_2)
  end
  SHX4_2 = SetVehicleDoorShut
  SHX5_2 = SHX1_1
  SHX6_2 = 3
  SHX7_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = SetVehicleDoorShut
  SHX5_2 = SHX1_1
  SHX6_2 = 4
  SHX7_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX10_1.collecting = false
  SHX4_2 = SHX22_1.active
  if SHX4_2 then
    SHX4_2 = SHX33_1
    SHX4_2()
  end
  SHX4_2 = TriggerServerEvent
  SHX5_2 = "932a3df12c"
  SHX4_2(SHX5_2)
  SHX4_2 = false
  SHX15_1 = SHX4_2
end
SHX43_1(SHX44_1, SHX45_1)
SHX43_1 = RegisterNetEvent
SHX44_1 = "2f71d37526"
function SHX45_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  while true do
    SHX1_2 = IsPedInAnyVehicle
    SHX2_2 = SHX0_2
    SHX3_2 = true
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    if not SHX1_2 then
      break
    end
    SHX1_2 = Wait
    SHX2_2 = 400
    SHX1_2(SHX2_2)
  end
  SHX1_2 = SetVehicleDoorOpen
  SHX2_2 = SHX1_1
  SHX3_2 = 3
  SHX4_2 = false
  SHX5_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SetVehicleDoorOpen
  SHX2_2 = SHX1_1
  SHX3_2 = 4
  SHX4_2 = false
  SHX5_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX10_1.depositing = true
  SHX1_2 = false
  SHX2_2 = GetOffsetFromEntityInWorldCoords
  SHX3_2 = SHX1_1
  SHX4_2 = 0.0
  SHX5_2 = -5.0
  SHX6_2 = 0.0
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  while true do
    SHX3_2 = SHX4_1
    if not SHX3_2 then
      break
    end
    SHX3_2 = DrawMarker
    SHX4_2 = 29
    SHX5_2 = SHX2_2.x
    SHX6_2 = SHX2_2.y
    SHX7_2 = SHX2_2.z
    SHX7_2 = SHX7_2 + 0.5
    SHX8_2 = 0.0
    SHX9_2 = 0.0
    SHX10_2 = 0.0
    SHX11_2 = 0.0
    SHX12_2 = 0.0
    SHX13_2 = 0.0
    SHX14_2 = 1.5
    SHX15_2 = 1.5
    SHX16_2 = 1.5
    SHX17_2 = 255
    SHX18_2 = 36
    SHX19_2 = 36
    SHX20_2 = 50
    SHX21_2 = true
    SHX22_2 = false
    SHX23_2 = 2
    SHX24_2 = false
    SHX25_2 = nil
    SHX26_2 = nil
    SHX27_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2)
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.getPlayerCoords
    SHX3_2 = SHX3_2()
    SHX3_2 = SHX3_2 - SHX2_2
    SHX3_2 = #SHX3_2
    if SHX3_2 <= 1.0 then
      SHX1_2 = true
      SHX4_2 = SHX42_1
      SHX4_2 = SHX4_2()
      SHX1_2 = false
      if SHX4_2 then
        SHX5_2 = false
        SHX4_1 = SHX5_2
      end
      while SHX1_2 do
        SHX5_2 = Wait
        SHX6_2 = 100
        SHX5_2(SHX6_2)
      end
    end
    SHX4_2 = Wait
    SHX5_2 = 0
    SHX4_2(SHX5_2)
  end
  SHX3_2 = SetVehicleDoorShut
  SHX4_2 = SHX1_1
  SHX5_2 = 3
  SHX6_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = SetVehicleDoorShut
  SHX4_2 = SHX1_1
  SHX5_2 = 4
  SHX6_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = SHX22_1.active
  if SHX3_2 then
    SHX3_2 = SHX33_1
    SHX3_2()
  end
  SHX3_2 = 1
  SHX18_1 = SHX3_2
  SHX3_2 = TriggerServerEvent
  SHX4_2 = "6734eb94a6"
  SHX3_2(SHX4_2)
end
SHX43_1(SHX44_1, SHX45_1)
SHX43_1 = RegisterNetEvent
SHX44_1 = "5143298b93"
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
  SHX3_2 = "g4s"
  SHX4_2 = "main"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
end
SHX43_1(SHX44_1, SHX45_1)
SHX43_1 = RegisterNetEvent
SHX44_1 = "285fe4d48d"
function SHX45_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX5_2 = SHX32_1
  SHX6_2 = SHX0_2
  SHX7_2 = SHX1_2
  SHX8_2 = SHX2_2
  SHX9_2 = SHX3_2
  SHX10_2 = SHX4_2
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
end
SHX43_1(SHX44_1, SHX45_1)
function SHX43_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = _ENV
  SHX2_2 = "ScaleformMovieMethodAddParamPlayerNameString"
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
InstructionButton = SHX43_1
function SHX43_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = BeginTextCommandScaleformString
  SHX2_2 = "STRING"
  SHX1_2(SHX2_2)
  SHX1_2 = AddTextComponentSubstringKeyboardDisplay
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = EndTextCommandScaleformString
  SHX1_2()
end
InstructionButtonMessage = SHX43_1
function SHX43_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = 0
  while SHX1_2 > SHX2_2 do
    SHX3_2 = RageUI
    SHX3_2 = SHX3_2.Text
    SHX4_2 = {}
    SHX4_2.message = SHX0_2
    SHX3_2(SHX4_2)
    SHX3_2 = Wait
    SHX4_2 = 0
    SHX3_2(SHX4_2)
  end
end
SHX44_1 = RegisterNetEvent
SHX45_1 = "abf15683a3"
function SHX46_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = SHX43_1
  SHX3_2 = SHX0_2
  SHX4_2 = SHX1_2
  SHX2_2(SHX3_2, SHX4_2)
end
SHX44_1(SHX45_1, SHX46_1)
function SHX44_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = GetGameTimer
  SHX0_2 = SHX0_2()
  while true do
    SHX1_2 = RequestScriptAudioBank
    SHX2_2 = "DLC_SECURITY\\SIREN_ONE"
    SHX3_2 = false
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    if SHX1_2 then
      break
    end
    SHX1_2 = GetGameTimer
    SHX1_2 = SHX1_2()
    SHX1_2 = SHX1_2 - SHX0_2
    SHX2_2 = 1500
    if SHX1_2 > SHX2_2 then
      SHX1_2 = print
      SHX2_2 = "Failed to load DLC_SECURITY audio bank"
      SHX1_2(SHX2_2)
      SHX1_2 = ReleaseNamedScriptAudioBank
      SHX2_2 = "DLC_SECURITY\\SIREN_ONE"
      SHX1_2(SHX2_2)
      return
    end
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = 0
    SHX1_2(SHX2_2)
  end
end
SHX45_1 = RegisterNetEvent
SHX46_1 = "32e875a544"
function SHX47_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  if 0 ~= SHX0_2 then
    SHX1_2 = NetworkDoesNetworkIdExist
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      SHX1_2 = GetSoundId
      SHX1_2 = SHX1_2()
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.getObjectId
      SHX3_2 = SHX0_2
      SHX4_2 = "CMG:activatePanicAll (1)"
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
      if SHX2_2 then
        SHX3_2 = DoesEntityExist
        SHX4_2 = SHX2_2
        SHX3_2 = SHX3_2(SHX4_2)
        if SHX3_2 then
          SHX3_2 = SHX44_1
          SHX3_2()
          SHX3_2 = PlaySoundFromEntity
          SHX4_2 = SHX1_2
          SHX5_2 = "siren_one"
          SHX6_2 = SHX2_2
          SHX7_2 = "dlc_security_soundset"
          SHX8_2 = false
          SHX9_2 = 0
          SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
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
            SHX3_2 = RequestNamedPtfxAsset
            SHX4_2 = "core"
            SHX3_2(SHX4_2)
            SHX3_2 = Wait
            SHX4_2 = 0
            SHX3_2(SHX4_2)
          end
          SHX3_2 = SHX20_1.netId
          if SHX3_2 == SHX0_2 then
            SHX20_1.hackingEngaged = false
            SHX20_1.netId = 0
            SHX20_1.entity = 0
            SHX3_2 = 0
            SHX37_1 = SHX3_2
            SHX3_2 = FreezeEntityPosition
            SHX4_2 = CMG
            SHX4_2 = SHX4_2.getPlayerPed
            SHX4_2 = SHX4_2()
            SHX5_2 = false
            SHX3_2(SHX4_2, SHX5_2)
            SHX3_2 = SHX32_1
            SHX4_2 = "g4slogo"
            SHX5_2 = "g4slogo"
            SHX6_2 = "The alarm has been manually activated."
            SHX7_2 = "Cash Driver Security"
            SHX8_2 = "Alarm Activated"
            SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
          end
          SHX3_2 = UseParticleFxAsset
          SHX4_2 = "core"
          SHX3_2(SHX4_2)
          SHX3_2 = StartParticleFxLoopedOnEntity
          SHX4_2 = "exp_grd_grenade_smoke"
          SHX5_2 = CMG
          SHX5_2 = SHX5_2.getObjectId
          SHX6_2 = SHX0_2
          SHX7_2 = "CMG:activatePanicAll (2)"
          SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
          if not SHX5_2 then
            SHX5_2 = 0
          end
          SHX6_2 = 0.0
          SHX7_2 = 0.0
          SHX8_2 = 0.0
          SHX9_2 = 0.0
          SHX10_2 = 0.0
          SHX11_2 = 0.0
          SHX12_2 = 1.0
          SHX13_2 = true
          SHX14_2 = true
          SHX15_2 = true
          SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
          SHX4_2 = RemoveNamedPtfxAsset
          SHX5_2 = "core"
          SHX4_2(SHX5_2)
          SHX4_2 = Citizen
          SHX4_2 = SHX4_2.CreateThread
          function SHX5_2()
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX0_3, SHX1_3, SHX2_3
            SHX0_3 = Wait
            SHX1_3 = 100000
            SHX0_3(SHX1_3)
            SHX0_3 = StopSound
            SHX1_3 = SHX1_2
            SHX0_3(SHX1_3)
            SHX0_3 = ReleaseSoundId
            SHX1_3 = SHX1_2
            SHX0_3(SHX1_3)
            SHX0_3 = StopParticleFxLooped
            SHX1_3 = SHX3_2
            SHX2_3 = true
            SHX0_3(SHX1_3, SHX2_3)
          end
          SHX4_2(SHX5_2)
          SHX4_2 = ReleaseNamedScriptAudioBank
          SHX5_2 = "DLC_SECURITY\\SIREN_ONE"
          SHX4_2(SHX5_2)
        end
      end
    end
  end
end
SHX45_1(SHX46_1, SHX47_1)
SHX45_1 = AddStateBagChangeHandler
SHX46_1 = "activeG4SVan"
SHX47_1 = nil
function SHX48_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX3_2 = tonumber
  SHX4_2 = stringsplit
  SHX5_2 = SHX0_2
  SHX6_2 = ":"
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SHX4_2[2]
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = 0
  while true do
    if SHX4_2 > 25 then
      return
    elseif SHX3_2 then
      SHX5_2 = NetworkDoesEntityExistWithNetworkId
      SHX6_2 = SHX3_2
      SHX5_2 = SHX5_2(SHX6_2)
      if SHX5_2 then
        SHX5_2 = NetworkGetEntityFromNetworkId
        SHX6_2 = SHX3_2
        SHX5_2 = SHX5_2(SHX6_2)
        if 0 ~= SHX5_2 then
          if SHX2_2 then
            SHX6_2 = table
            SHX6_2 = SHX6_2.has
            SHX7_2 = SHX14_1
            SHX8_2 = SHX3_2
            SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
            if not SHX6_2 then
              SHX6_2 = SHX14_1
              SHX7_2 = {}
              SHX8_2 = SHX2_2
              SHX9_2 = SHX5_2
              SHX10_2 = SHX3_2
              SHX7_2[1] = SHX8_2
              SHX7_2[2] = SHX9_2
              SHX7_2[3] = SHX10_2
              SHX6_2[SHX3_2] = SHX7_2
            end
            break
          end
          SHX6_2 = SHX14_1
          SHX6_2[SHX3_2] = nil
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
SHX45_1(SHX46_1, SHX47_1, SHX48_1)
SHX45_1 = RegisterNetEvent
SHX46_1 = "5b2a6e23a5"
function SHX47_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX3_2 = SHX0_1
  if not SHX3_2 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.getObjectId
    SHX4_2 = SHX0_2
    SHX5_2 = "CMG:activeVansUpdate 1"
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
    if 0 ~= SHX3_2 and nil ~= SHX3_2 then
      SHX4_2 = DoesEntityExist
      SHX5_2 = SHX3_2
      SHX4_2 = SHX4_2(SHX5_2)
      if SHX4_2 then
        if SHX2_2 then
          SHX4_2 = SHX14_1
          SHX4_2[SHX0_2] = nil
        else
          SHX4_2 = table
          SHX4_2 = SHX4_2.has
          SHX5_2 = SHX14_1
          SHX6_2 = SHX0_2
          SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
          if not SHX4_2 then
            SHX4_2 = CMG
            SHX4_2 = SHX4_2.getObjectId
            SHX5_2 = SHX0_2
            SHX6_2 = "5b2a6e23a5"
            SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
            SHX5_2 = SHX14_1
            SHX6_2 = {}
            SHX7_2 = SHX1_2
            SHX8_2 = SHX4_2
            SHX9_2 = SHX0_2
            SHX6_2[1] = SHX7_2
            SHX6_2[2] = SHX8_2
            SHX6_2[3] = SHX9_2
            SHX5_2[SHX0_2] = SHX6_2
          end
        end
      end
    end
  end
end
SHX45_1(SHX46_1, SHX47_1)
SHX45_1 = RegisterNetEvent
SHX46_1 = "139a32a44e"
function SHX47_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = PlaySoundFrontend
  SHX1_2 = -1
  SHX2_2 = "FocusIn"
  SHX3_2 = "HintCamSounds"
  SHX4_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX20_1.hackingEngaged = false
  SHX20_1.netId = 0
  SHX20_1.entity = 0
  SHX0_2 = 0
  SHX37_1 = SHX0_2
  SHX0_2 = FreezeEntityPosition
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
end
SHX45_1(SHX46_1, SHX47_1)
