-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1
SHX0_1 = RMenu
SHX0_1 = SHX0_1.Add
SHX1_1 = "cmgpets"
SHX2_1 = "main"
SHX3_1 = RageUI
SHX3_1 = SHX3_1.CreateMenu
SHX4_1 = ""
SHX5_1 = "Select your ~b~Pet"
SHX6_1 = CMG
SHX6_1 = SHX6_1.getRageUIMenuWidth
SHX6_1 = SHX6_1()
SHX7_1 = CMG
SHX7_1 = SHX7_1.getRageUIMenuHeight
SHX7_1 = SHX7_1()
SHX8_1 = "cmg_petsui"
SHX9_1 = "cmg_petsui"
SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1)
SHX0_1(SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1)
SHX0_1 = RMenu
SHX0_1 = SHX0_1.Add
SHX1_1 = "cmgpets"
SHX2_1 = "store"
SHX3_1 = RageUI
SHX3_1 = SHX3_1.CreateMenu
SHX4_1 = ""
SHX5_1 = "~b~Store"
SHX6_1 = CMG
SHX6_1 = SHX6_1.getRageUIMenuWidth
SHX6_1 = SHX6_1()
SHX7_1 = CMG
SHX7_1 = SHX7_1.getRageUIMenuHeight
SHX7_1 = SHX7_1()
SHX8_1 = "cmg_petsui"
SHX9_1 = "cmg_petsui"
SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1)
SHX0_1(SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1, SHX30_1, SHX31_1, SHX32_1, SHX33_1, SHX34_1, SHX35_1, SHX36_1, SHX37_1, SHX38_1, SHX39_1, SHX40_1, SHX41_1, SHX42_1, SHX43_1, SHX44_1, SHX45_1, SHX46_1, SHX47_1, SHX48_1, SHX49_1, SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1)
SHX0_1 = TriggerEvent
SHX1_1 = "chat:addSuggestion"
SHX2_1 = "/pet"
SHX3_1 = "Manage your owned pets!"
SHX0_1(SHX1_1, SHX2_1, SHX3_1)
SHX0_1 = {}
SHX1_1 = false
SHX2_1 = false
SHX3_1 = {}
SHX3_1.purchasing = false
SHX3_1.purchasingId = 0
SHX3_1.viewingPet = false
SHX3_1.lastViewingId = 0
SHX3_1.viewingId = 0
SHX3_1.cameraEnabled = false
SHX3_1.cameraHandle = 0
SHX4_1 = {}
SHX4_1.Follow = 1
SHX4_1.Stay = 2
SHX4_1.Attack = 3
SHX4_1.Sit = 4
SHX4_1.Trick = 5
SHX4_1.Shoulder = 5
SHX4_1.Floor = 6
SHX4_1.Ride = 7
SHX5_1 = {}
SHX5_1.active = false
SHX5_1.id = 0
SHX5_1.cooldown = false
SHX6_1 = {}
SHX6_1.Success = 1
SHX6_1.Error = 2
SHX6_1.Alert = 3
SHX6_1.Info = 4
SHX6_1.Unknown = 5
function SHX7_1()
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
  SHX3_2 = "cmgpets"
  SHX4_2 = "store"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
  SHX3_1.viewingPet = true
  SHX0_2 = SHX3_1.cameraEnabled
  if not SHX0_2 then
    SHX0_2 = DestroyCam
    SHX1_2 = SHX3_1.cameraHandle
    SHX2_2 = false
    SHX0_2(SHX1_2, SHX2_2)
    SHX0_2 = CreateCam
    SHX1_2 = "DEFAULT_SCRIPTED_CAMERA"
    SHX2_2 = true
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    SHX3_1.cameraHandle = SHX0_2
    SHX0_2 = SetCamCoord
    SHX1_2 = SHX3_1.cameraHandle
    SHX2_2 = 562.7604
    SHX3_2 = 2752.879
    SHX4_2 = 42.4
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
    SHX0_2 = SetCamRot
    SHX1_2 = SHX3_1.cameraHandle
    SHX2_2 = -1
    SHX3_2 = -1
    SHX4_2 = -84.73
    SHX5_2 = 2
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
    SHX0_2 = RenderScriptCams
    SHX1_2 = true
    SHX2_2 = false
    SHX3_2 = 0
    SHX4_2 = true
    SHX5_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
    SHX3_1.cameraEnabled = true
  end
end
function SHX8_1()
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
  SHX3_2 = "cmgpets"
  SHX4_2 = "store"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX3_1.viewingPet = false
  SHX0_2 = SHX3_1.viewingId
  if 0 ~= SHX0_2 then
    SHX0_2 = DeleteEntity
    SHX1_2 = SHX3_1.viewingEntity
    SHX0_2(SHX1_2)
    SHX3_1.viewingPet = false
    SHX3_1.viewingId = 0
  end
  SHX0_2 = SHX3_1.cameraEnabled
  if SHX0_2 then
    SHX0_2 = RenderScriptCams
    SHX1_2 = false
    SHX2_2 = false
    SHX3_2 = 0
    SHX4_2 = true
    SHX5_2 = false
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
    SHX0_2 = DestroyCam
    SHX1_2 = SHX3_1.cameraHandle
    SHX2_2 = false
    SHX0_2(SHX1_2, SHX2_2)
    SHX3_1.cameraEnabled = false
  end
end
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
function SHX10_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = notify
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
end
SHX11_1 = RegisterNetEvent
SHX12_1 = "5af8df8edf"
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = pairs
  SHX2_2 = SHX0_1.pets
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
  for SHX5_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    if not SHX0_2 then
      SHX6_2 = SHX0_1.pets
      SHX6_2 = SHX6_2[SHX5_2]
      SHX6_2 = SHX6_2.abilities
      SHX6_2.attack = false
      SHX6_2 = SHX10_1
      SHX7_2 = SHX6_1.Alert
      SHX8_2 = "Your ability to attack has been disabled by a ~b~CMG Staff Member~w~."
      SHX6_2(SHX7_2, SHX8_2)
    end
  end
end
SHX11_1(SHX12_1, SHX13_1)
SHX11_1 = RegisterNetEvent
SHX12_1 = "a56e8354c6"
function SHX13_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX2_2 = SHX0_1.pets
  SHX2_2 = SHX2_2[SHX0_2]
  SHX2_2 = SHX2_2.info
  SHX2_2 = SHX2_2.owned
  if SHX2_2 then
    SHX2_2 = SHX0_1.pets
    SHX2_2 = SHX2_2[SHX0_2]
    SHX2_2.health = SHX1_2
    SHX2_2 = RMenu
    SHX3_2 = SHX2_2
    SHX2_2 = SHX2_2.Get
    SHX4_2 = "cmgpets"
    SHX5_2 = "main"
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = SHX2_2
    SHX2_2 = SHX2_2.SetSubtitle
    SHX4_2 = "~b~Pet: ~w~"
    SHX5_2 = SHX0_1.pets
    SHX6_2 = SHX5_1.id
    SHX5_2 = SHX5_2[SHX6_2]
    SHX5_2 = SHX5_2.name
    SHX6_2 = " ~b~Health: ~w~"
    SHX7_2 = SHX0_1.pets
    SHX8_2 = SHX5_1.id
    SHX7_2 = SHX7_2[SHX8_2]
    SHX7_2 = SHX7_2.health
    SHX8_2 = "/100"
    SHX4_2 = SHX4_2 .. SHX5_2 .. SHX6_2 .. SHX7_2 .. SHX8_2
    SHX2_2(SHX3_2, SHX4_2)
  end
end
SHX11_1(SHX12_1, SHX13_1)
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = SetPedComponentVariation
  SHX2_2 = SHX0_2
  SHX3_2 = 1
  SHX4_2 = 0
  SHX5_2 = 0
  SHX6_2 = 0
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX1_2 = SetPedComponentVariation
  SHX2_2 = SHX0_2
  SHX3_2 = 2
  SHX4_2 = 12
  SHX5_2 = 3
  SHX6_2 = 1
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX1_2 = SetPedComponentVariation
  SHX2_2 = SHX0_2
  SHX3_2 = 3
  SHX4_2 = 0
  SHX5_2 = 0
  SHX6_2 = 0
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX1_2 = SetPedComponentVariation
  SHX2_2 = SHX0_2
  SHX3_2 = 4
  SHX4_2 = 4
  SHX5_2 = 0
  SHX6_2 = 0
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX1_2 = SetPedComponentVariation
  SHX2_2 = SHX0_2
  SHX3_2 = 5
  SHX4_2 = 0
  SHX5_2 = 0
  SHX6_2 = 0
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX1_2 = SetPedComponentVariation
  SHX2_2 = SHX0_2
  SHX3_2 = 6
  SHX4_2 = 75
  SHX5_2 = 0
  SHX6_2 = 0
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX1_2 = SetPedComponentVariation
  SHX2_2 = SHX0_2
  SHX3_2 = 7
  SHX4_2 = 0
  SHX5_2 = 0
  SHX6_2 = 0
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX1_2 = SetPedComponentVariation
  SHX2_2 = SHX0_2
  SHX3_2 = 8
  SHX4_2 = 142
  SHX5_2 = 0
  SHX6_2 = 0
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX1_2 = SetPedComponentVariation
  SHX2_2 = SHX0_2
  SHX3_2 = 9
  SHX4_2 = 0
  SHX5_2 = 0
  SHX6_2 = 0
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX1_2 = SetPedComponentVariation
  SHX2_2 = SHX0_2
  SHX3_2 = 10
  SHX4_2 = 0
  SHX5_2 = 0
  SHX6_2 = 0
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX1_2 = SetPedComponentVariation
  SHX2_2 = SHX0_2
  SHX3_2 = 11
  SHX4_2 = 146
  SHX5_2 = 0
  SHX6_2 = 0
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
end
SHX12_1 = RegisterNetEvent
SHX13_1 = "4c301d11e7"
function SHX14_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2
  SHX0_1 = SHX2_2
  SHX3_2 = SHX0_2
  SHX4_2 = pairs
  SHX5_2 = SHX0_1.pets
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2)
  for SHX8_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    SHX9_2 = SHX0_1.pets
    SHX9_2 = SHX9_2[SHX8_2]
    SHX9_2 = SHX9_2.abilities
    SHX9_2.teleport = false
    SHX9_2 = SHX0_1.pets
    SHX9_2 = SHX9_2[SHX8_2]
    SHX9_2.awaitingHealthReduction = false
    SHX9_2 = SHX0_1.pets
    SHX9_2 = SHX9_2[SHX8_2]
    SHX10_2 = {}
    SHX10_2.currentAction = 1
    SHX10_2.owned = false
    SHX10_2.dead = false
    SHX10_2.inVehicle = false
    SHX9_2.info = SHX10_2
    SHX9_2 = SHX1_2.attack
    if SHX9_2 then
      SHX9_2 = SHX0_1.pets
      SHX9_2 = SHX9_2[SHX8_2]
      SHX9_2 = SHX9_2.abilities
      SHX9_2.attack = false
    end
    SHX9_2 = false
    SHX10_2 = pairs
    SHX11_2 = SHX3_2
    SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX10_2(SHX11_2)
    for SHX14_2 in SHX10_2, SHX11_2, SHX12_2, SHX13_2 do
      SHX15_2 = SHX3_2[SHX14_2]
      SHX15_2 = SHX15_2.id
      if SHX15_2 == SHX8_2 then
        SHX9_2 = true
        SHX15_2 = SHX0_1.pets
        SHX15_2 = SHX15_2[SHX8_2]
        SHX16_2 = SHX3_2[SHX14_2]
        SHX16_2 = SHX16_2.name
        SHX15_2.name = SHX16_2
        SHX15_2 = SHX3_2[SHX14_2]
        SHX15_2 = SHX15_2.ownedSkills
        SHX15_2 = SHX15_2.teleport
        if not SHX15_2 then
          SHX15_2 = SHX0_1.pets
          SHX15_2 = SHX15_2[SHX8_2]
          SHX15_2 = SHX15_2.abilities
          SHX15_2.teleport = false
        else
          SHX15_2 = SHX0_1.pets
          SHX15_2 = SHX15_2[SHX8_2]
          SHX15_2 = SHX15_2.abilities
          SHX15_2.teleport = true
        end
        SHX15_2 = SHX3_2[SHX14_2]
        SHX15_2 = SHX15_2.health
        if nil ~= SHX15_2 then
          SHX15_2 = SHX0_1.pets
          SHX15_2 = SHX15_2[SHX8_2]
          SHX16_2 = tonumber
          SHX17_2 = SHX3_2[SHX14_2]
          SHX17_2 = SHX17_2.health
          SHX16_2 = SHX16_2(SHX17_2)
          SHX15_2.health = SHX16_2
        else
          SHX15_2 = SHX0_1.pets
          SHX15_2 = SHX15_2[SHX8_2]
          SHX15_2.health = 100
        end
      end
    end
    if SHX9_2 then
      SHX10_2 = SHX0_1.pets
      SHX10_2 = SHX10_2[SHX8_2]
      SHX10_2 = SHX10_2.info
      SHX10_2.owned = true
    end
  end
  SHX4_2 = tCMG
  SHX4_2 = SHX4_2.addMarker
  SHX5_2 = SHX0_1.shop
  SHX5_2 = SHX5_2.coords
  SHX5_2 = SHX5_2.x
  SHX6_2 = SHX0_1.shop
  SHX6_2 = SHX6_2.coords
  SHX6_2 = SHX6_2.y
  SHX7_2 = SHX0_1.shop
  SHX7_2 = SHX7_2.coords
  SHX7_2 = SHX7_2.z
  SHX8_2 = 1.0001
  SHX9_2 = 1.0001
  SHX10_2 = 0.5001
  SHX11_2 = 31
  SHX12_2 = 135
  SHX13_2 = 173
  SHX14_2 = 220
  SHX15_2 = 20.0
  SHX16_2 = 31
  SHX17_2 = false
  SHX18_2 = false
  SHX19_2 = true
  SHX20_2 = nil
  SHX21_2 = nil
  SHX22_2 = 0.0
  SHX23_2 = 0.0
  SHX24_2 = 0.0
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.createArea
  SHX5_2 = "petStore"
  SHX6_2 = SHX0_1.shop
  SHX6_2 = SHX6_2.coords
  SHX7_2 = 1.5
  SHX8_2 = 1.5
  SHX9_2 = SHX7_1
  SHX10_2 = SHX8_1
  SHX11_2 = SHX9_1
  SHX12_2 = {}
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX4_2 = tCMG
  SHX4_2 = SHX4_2.addBlip
  SHX5_2 = SHX0_1.shop
  SHX5_2 = SHX5_2.coords
  SHX5_2 = SHX5_2.x
  SHX6_2 = SHX0_1.shop
  SHX6_2 = SHX6_2.coords
  SHX6_2 = SHX6_2.y
  SHX7_2 = SHX0_1.shop
  SHX7_2 = SHX7_2.coords
  SHX7_2 = SHX7_2.z
  SHX8_2 = 442
  SHX9_2 = 26
  SHX10_2 = "Pet Store"
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX4_2 = true
  SHX1_1 = SHX4_2
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.createDynamicPed
  SHX5_2 = 1885233650
  SHX6_2 = vector3
  SHX7_2 = 558.74
  SHX8_2 = 2752.71
  SHX9_2 = 42.85
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX7_2 = 179.45
  SHX8_2 = true
  SHX9_2 = "mini@strip_club@idles@bouncer@base"
  SHX10_2 = "base"
  SHX11_2 = 10
  SHX12_2 = false
  SHX13_2 = SHX11_1
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
end
SHX12_1(SHX13_1, SHX14_1)
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isHandcuffed
  SHX0_2 = SHX0_2()
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isPlayerNearPrison
  SHX0_2 = SHX0_2()
  SHX0_2 = not SHX0_2 and SHX0_2
  return SHX0_2
end
SHX13_1 = RegisterNetEvent
SHX14_1 = "fee61f9761"
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = SHX1_1
  if not SHX0_2 then
    SHX0_2 = SHX10_1
    SHX1_2 = "Please wait before opening the pet menu."
    SHX0_2(SHX1_2)
  else
    SHX0_2 = false
    SHX1_2 = pairs
    SHX2_2 = SHX0_1.pets
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
    for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
      SHX7_2 = SHX6_2.info
      SHX7_2 = SHX7_2.owned
      if SHX7_2 then
        SHX7_2 = SHX6_2.info
        SHX7_2 = SHX7_2.dead
        if not SHX7_2 then
          SHX0_2 = true
        end
      end
    end
    SHX1_2 = SHX5_1.cooldown
    if SHX1_2 then
      SHX1_2 = SHX10_1
      SHX2_2 = SHX6_1.Info
      SHX3_2 = "Please wait before spawning in a new pet."
      SHX1_2(SHX2_2, SHX3_2)
    elseif not SHX0_2 then
      SHX1_2 = SHX10_1
      SHX2_2 = SHX6_1.Error
      SHX3_2 = "You do not own any ~b~pets~w~. Visit a ~b~pet store ~w~to purchase one."
      SHX1_2(SHX2_2, SHX3_2)
    else
      SHX1_2 = SHX12_1
      SHX1_2 = SHX1_2()
      if SHX1_2 then
        SHX1_2 = RageUI
        SHX1_2 = SHX1_2.Visible
        SHX2_2 = RMenu
        SHX3_2 = SHX2_2
        SHX2_2 = SHX2_2.Get
        SHX4_2 = "cmgpets"
        SHX5_2 = "main"
        SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
        SHX3_2 = true
        SHX1_2(SHX2_2, SHX3_2)
      else
        SHX1_2 = notify
        SHX2_2 = "~r~Unable to access the pet menu at this time"
        SHX1_2(SHX2_2)
      end
    end
  end
end
SHX13_1(SHX14_1, SHX15_1)
SHX13_1 = RegisterNetEvent
SHX14_1 = "47e666d484"
function SHX15_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = PlaySoundFrontend
  SHX2_2 = -1
  SHX3_2 = "PROPERTY_PURCHASE"
  SHX4_2 = "HUD_AWARDS"
  SHX5_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX10_1
  SHX2_2 = SHX6_1.Success
  SHX3_2 = "You have now ~b~purchased ~w~a ~b~"
  SHX4_2 = SHX0_1.pets
  SHX4_2 = SHX4_2[SHX0_2]
  SHX4_2 = SHX4_2.name
  SHX5_2 = "~w~. Use /pet to spawn it in."
  SHX3_2 = SHX3_2 .. SHX4_2 .. SHX5_2
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SHX0_1.pets
  SHX1_2 = SHX1_2[SHX0_2]
  SHX1_2 = SHX1_2.info
  SHX1_2.owned = true
  SHX1_2 = SHX0_1.pets
  SHX1_2 = SHX1_2[SHX0_2]
  SHX1_2.health = 100
end
SHX13_1(SHX14_1, SHX15_1)
SHX13_1 = RegisterNetEvent
SHX14_1 = "88afa5e8d8"
function SHX15_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX2_2 = PlaySoundFrontend
  SHX3_2 = -1
  SHX4_2 = "PROPERTY_PURCHASE"
  SHX5_2 = "HUD_AWARDS"
  SHX6_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = SHX10_1
  SHX3_2 = SHX6_1.Success
  SHX4_2 = "You have now changed your pet name to ~b~"
  SHX5_2 = SHX1_2
  SHX6_2 = "~w~!"
  SHX4_2 = SHX4_2 .. SHX5_2 .. SHX6_2
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SHX0_1.pets
  SHX2_2 = SHX2_2[SHX0_2]
  SHX2_2.name = SHX1_2
  SHX2_2 = RMenu
  SHX3_2 = SHX2_2
  SHX2_2 = SHX2_2.Get
  SHX4_2 = "cmgpets"
  SHX5_2 = "main"
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX3_2 = SHX2_2
  SHX2_2 = SHX2_2.SetSubtitle
  SHX4_2 = "~b~Pet: ~w~"
  SHX5_2 = SHX0_1.pets
  SHX6_2 = SHX5_1.id
  SHX5_2 = SHX5_2[SHX6_2]
  SHX5_2 = SHX5_2.name
  SHX6_2 = " ~b~Health: ~w~"
  SHX7_2 = SHX0_1.pets
  SHX8_2 = SHX5_1.id
  SHX7_2 = SHX7_2[SHX8_2]
  SHX7_2 = SHX7_2.health
  SHX8_2 = "/100"
  SHX4_2 = SHX4_2 .. SHX5_2 .. SHX6_2 .. SHX7_2 .. SHX8_2
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = RageUI
  SHX2_2 = SHX2_2.Visible
  SHX3_2 = RMenu
  SHX4_2 = SHX3_2
  SHX3_2 = SHX3_2.Get
  SHX5_2 = "cmgpets"
  SHX6_2 = "main"
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
end
SHX13_1(SHX14_1, SHX15_1)
SHX13_1 = RegisterNetEvent
SHX14_1 = "5e0ec7f5c1"
function SHX15_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX0_1.pets
  SHX1_2 = SHX1_2[SHX0_2]
  SHX1_2 = SHX1_2.abilities
  SHX1_2.teleport = true
end
SHX13_1(SHX14_1, SHX15_1)
function SHX13_1(SHX0_2, ...)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = NetworkGetNetworkIdFromEntity
  SHX2_2 = SHX5_1.handle
  SHX1_2 = SHX1_2(SHX2_2)
  if 0 ~= SHX1_2 then
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "23e9f76715"
    SHX4_2 = SHX5_1.id
    SHX5_2 = SHX1_2
    SHX6_2 = SHX0_2
    SHX7_2 = ...
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  end
end
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX5_1
  if not SHX0_2 then
    return
  end
  SHX0_2 = SHX0_1.pets
  SHX1_2 = SHX5_1.id
  SHX0_2 = SHX0_2[SHX1_2]
  return SHX0_2
end
function SHX15_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX0_1.pets
  SHX2_2 = SHX5_1.id
  SHX1_2 = SHX1_2[SHX2_2]
  SHX1_2 = SHX1_2.onShoulder
  if SHX1_2 then
    SHX1_2 = SHX0_1.pets
    SHX2_2 = SHX5_1.id
    SHX1_2 = SHX1_2[SHX2_2]
    SHX1_2 = SHX1_2.info
    SHX2_2 = SHX4_1.Shoulder
    SHX1_2.currentAction = SHX2_2
    SHX1_2 = SHX13_1
    SHX2_2 = "petOnShoulder"
    SHX3_2 = GetPlayerServerId
    SHX4_2 = PlayerId
    SHX4_2 = SHX4_2()
    SHX3_2 = SHX3_2(SHX4_2)
    SHX4_2 = SHX0_2
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = SHX10_1
    SHX2_2 = SHX6_1.Success
    SHX3_2 = SHX14_1
    SHX3_2 = SHX3_2()
    SHX3_2 = SHX3_2.name
    SHX4_2 = " is now on your shoulder."
    SHX3_2 = SHX3_2 .. SHX4_2
    SHX1_2(SHX2_2, SHX3_2)
  end
end
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX0_1.pets
  SHX1_2 = SHX5_1.id
  SHX0_2 = SHX0_2[SHX1_2]
  SHX0_2 = SHX0_2.onShoulder
  if not SHX0_2 then
    SHX0_2 = SHX10_1
    SHX1_2 = SHX6_1.Info
    SHX2_2 = SHX14_1
    SHX2_2 = SHX2_2()
    SHX2_2 = SHX2_2.name
    SHX3_2 = " is now following."
    SHX2_2 = SHX2_2 .. SHX3_2
    SHX0_2(SHX1_2, SHX2_2)
    SHX0_2 = SHX13_1
    SHX1_2 = "petFollow"
    SHX2_2 = GetPlayerServerId
    SHX3_2 = PlayerId
    SHX3_2 = SHX3_2()
    SHX2_2, SHX3_2 = SHX2_2(SHX3_2)
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = SHX0_1.pets
    SHX1_2 = SHX5_1.id
    SHX0_2 = SHX0_2[SHX1_2]
    SHX0_2 = SHX0_2.info
    SHX1_2 = SHX4_1.Follow
    SHX0_2.currentAction = SHX1_2
  else
    SHX0_2 = SHX15_1
    SHX0_2()
  end
end
SHX17_1 = CMG
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX5_1
  if SHX0_2 then
    SHX0_2 = SHX5_1.id
    if SHX0_2 then
      SHX0_2 = SHX0_1.pets
      SHX1_2 = SHX5_1.id
      SHX0_2 = SHX0_2[SHX1_2]
      if SHX0_2 then
        SHX0_2 = SHX16_1
        SHX0_2()
      end
    end
  end
end
SHX17_1.setActivePetFollowsPlayer = SHX18_1
function SHX17_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.loadModel
  SHX3_2 = SHX0_1.pets
  SHX3_2 = SHX3_2[SHX0_2]
  SHX3_2 = SHX3_2.model
  SHX2_2(SHX3_2)
  SHX2_2 = GetOffsetFromEntityInWorldCoords
  SHX3_2 = SHX1_2
  SHX4_2 = 0.0
  SHX5_2 = 1.0
  SHX6_2 = 0.0
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = GetEntityHeading
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.requestEntitySpawn
  SHX5_2 = "pets_ped"
  SHX6_2 = SHX0_2
  SHX7_2 = SHX2_2
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = SHX0_1.pets
  SHX4_2 = SHX4_2[SHX0_2]
  SHX4_2 = SHX4_2.info
  SHX5_2 = CreatePed
  SHX6_2 = 28
  SHX7_2 = SHX0_1.pets
  SHX7_2 = SHX7_2[SHX0_2]
  SHX7_2 = SHX7_2.model
  SHX8_2 = SHX2_2.x
  SHX9_2 = SHX2_2.y
  SHX10_2 = SHX2_2.z
  SHX11_2 = SHX3_2
  SHX12_2 = true
  SHX13_2 = true
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX4_2.handle = SHX5_2
  while true do
    SHX4_2 = DoesEntityExist
    SHX5_2 = SHX0_1.pets
    SHX5_2 = SHX5_2[SHX0_2]
    SHX5_2 = SHX5_2.info
    SHX5_2 = SHX5_2.handle
    SHX4_2 = SHX4_2(SHX5_2)
    if SHX4_2 then
      break
    end
    SHX4_2 = Wait
    SHX5_2 = 0
    SHX4_2(SHX5_2)
  end
  SHX4_2 = SetModelAsNoLongerNeeded
  SHX5_2 = SHX0_1.pets
  SHX5_2 = SHX5_2[SHX0_2]
  SHX5_2 = SHX5_2.model
  SHX4_2(SHX5_2)
  SHX4_2 = DoesEntityExist
  SHX5_2 = SHX0_1.pets
  SHX5_2 = SHX5_2[SHX0_2]
  SHX5_2 = SHX5_2.info
  SHX5_2 = SHX5_2.handle
  SHX4_2 = SHX4_2(SHX5_2)
  if SHX4_2 then
    SHX4_2 = SHX0_1.pets
    SHX4_2 = SHX4_2[SHX0_2]
    SHX4_2 = SHX4_2.movementRate
    if nil ~= SHX4_2 then
      SHX4_2 = SetPedMoveRateOverride
      SHX5_2 = SHX0_1.pets
      SHX5_2 = SHX5_2[SHX0_2]
      SHX5_2 = SHX5_2.info
      SHX5_2 = SHX5_2.handle
      SHX6_2 = SHX0_1.pets
      SHX6_2 = SHX6_2[SHX0_2]
      SHX6_2 = SHX6_2.movementRate
      SHX4_2(SHX5_2, SHX6_2)
    end
    SHX4_2 = SetBlockingOfNonTemporaryEvents
    SHX5_2 = SHX0_1.pets
    SHX5_2 = SHX5_2[SHX0_2]
    SHX5_2 = SHX5_2.info
    SHX5_2 = SHX5_2.handle
    SHX6_2 = true
    SHX4_2(SHX5_2, SHX6_2)
    SHX4_2 = SHX0_1.pets
    SHX4_2 = SHX4_2[SHX0_2]
    SHX4_2 = SHX4_2.info
    SHX4_2.active = true
    SHX5_1.active = true
    SHX5_1.id = SHX0_2
    SHX4_2 = SHX0_1.pets
    SHX4_2 = SHX4_2[SHX0_2]
    SHX4_2 = SHX4_2.info
    SHX4_2 = SHX4_2.handle
    SHX5_1.handle = SHX4_2
    SHX4_2 = SHX16_1
    SHX4_2()
    SHX4_2 = RMenu
    SHX5_2 = SHX4_2
    SHX4_2 = SHX4_2.Get
    SHX6_2 = "cmgpets"
    SHX7_2 = "main"
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    SHX5_2 = SHX4_2
    SHX4_2 = SHX4_2.SetSubtitle
    SHX6_2 = "~b~Pet: ~w~"
    SHX7_2 = SHX0_1.pets
    SHX8_2 = SHX5_1.id
    SHX7_2 = SHX7_2[SHX8_2]
    SHX7_2 = SHX7_2.name
    SHX6_2 = SHX6_2 .. SHX7_2
    SHX4_2(SHX5_2, SHX6_2)
    SHX4_2 = SHX0_1.pets
    SHX5_2 = SHX5_1.id
    SHX4_2 = SHX4_2[SHX5_2]
    SHX4_2 = SHX4_2.health
    if nil ~= SHX4_2 then
      SHX4_2 = RMenu
      SHX5_2 = SHX4_2
      SHX4_2 = SHX4_2.Get
      SHX6_2 = "cmgpets"
      SHX7_2 = "main"
      SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
      SHX5_2 = SHX4_2
      SHX4_2 = SHX4_2.SetSubtitle
      SHX6_2 = "~b~Pet: ~w~"
      SHX7_2 = SHX0_1.pets
      SHX8_2 = SHX5_1.id
      SHX7_2 = SHX7_2[SHX8_2]
      SHX7_2 = SHX7_2.name
      SHX8_2 = " ~b~Health: ~w~"
      SHX9_2 = SHX0_1.pets
      SHX10_2 = SHX5_1.id
      SHX9_2 = SHX9_2[SHX10_2]
      SHX9_2 = SHX9_2.health
      SHX10_2 = "/100"
      SHX6_2 = SHX6_2 .. SHX7_2 .. SHX8_2 .. SHX9_2 .. SHX10_2
      SHX4_2(SHX5_2, SHX6_2)
    end
    SHX4_2 = SHX10_1
    SHX5_2 = SHX6_1.Success
    SHX6_2 = SHX14_1
    SHX6_2 = SHX6_2()
    SHX6_2 = SHX6_2.name
    SHX7_2 = " has now been created."
    SHX6_2 = SHX6_2 .. SHX7_2
    SHX4_2(SHX5_2, SHX6_2)
  end
end
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX13_1
  SHX1_2 = "petDelete"
  SHX0_2(SHX1_2)
  SHX5_1.active = false
  SHX5_1.id = 0
  SHX5_1.cooldown = true
  SHX0_2 = false
  SHX2_1 = SHX0_2
  SHX0_2 = RMenu
  SHX1_2 = SHX0_2
  SHX0_2 = SHX0_2.Get
  SHX2_2 = "cmgpets"
  SHX3_2 = "main"
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX1_2 = SHX0_2
  SHX0_2 = SHX0_2.SetSubtitle
  SHX2_2 = "Select your ~b~Pet"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetTimeout
  SHX1_2 = 20000
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3
    SHX5_1.cooldown = false
    SHX0_3 = SHX10_1
    SHX1_3 = SHX6_1.Success
    SHX2_3 = "You are now able to spawn in a pet again."
    SHX0_3(SHX1_3, SHX2_3)
  end
  SHX0_2(SHX1_2, SHX2_2)
end
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX13_1
  SHX1_2 = "petStay"
  SHX0_2(SHX1_2)
  SHX0_2 = SHX0_1.pets
  SHX1_2 = SHX5_1.id
  SHX0_2 = SHX0_2[SHX1_2]
  SHX0_2 = SHX0_2.info
  SHX1_2 = SHX4_1.Stay
  SHX0_2.currentAction = SHX1_2
end
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = tCMG
  SHX0_2 = SHX0_2.getNearestVehicle
  SHX1_2 = 7.0
  SHX0_2 = SHX0_2(SHX1_2)
  if -1 ~= SHX0_2 and nil ~= SHX0_2 and 0 ~= SHX0_2 then
    SHX1_2 = NetworkGetNetworkIdFromEntity
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if 0 ~= SHX1_2 then
      SHX2_2 = SHX13_1
      SHX3_2 = "putPetInVehicle"
      SHX4_2 = SHX1_2
      SHX2_2(SHX3_2, SHX4_2)
    end
    SHX2_2 = SHX0_1.pets
    SHX3_2 = SHX5_1.id
    SHX2_2 = SHX2_2[SHX3_2]
    SHX2_2 = SHX2_2.info
    SHX2_2.inVehicle = true
    SHX2_2 = SHX0_1.pets
    SHX3_2 = SHX5_1.id
    SHX2_2 = SHX2_2[SHX3_2]
    SHX2_2 = SHX2_2.info
    SHX2_2.insideVehicleHandle = SHX0_2
    SHX2_2 = SHX10_1
    SHX3_2 = SHX6_1.Info
    SHX4_2 = "Pet is now inside the vehicle"
    SHX2_2(SHX3_2, SHX4_2)
  else
    SHX1_2 = SHX10_1
    SHX2_2 = SHX6_1.Error
    SHX3_2 = "No nearby vehicle found."
    SHX1_2(SHX2_2, SHX3_2)
  end
end
function SHX21_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = IsPedInAnyVehicle
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerPed
  SHX1_2 = SHX1_2()
  SHX2_2 = true
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = SHX10_1
    SHX1_2 = SHX6_1.Error
    SHX2_2 = "You must be outside the vehicle."
    SHX0_2(SHX1_2, SHX2_2)
  else
    SHX0_2 = SHX13_1
    SHX1_2 = "removePetFromVehicle"
    SHX2_2 = GetPlayerServerId
    SHX3_2 = PlayerId
    SHX3_2 = SHX3_2()
    SHX2_2, SHX3_2 = SHX2_2(SHX3_2)
    SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    SHX0_2 = SHX10_1
    SHX1_2 = SHX6_1.Info
    SHX2_2 = SHX14_1
    SHX2_2 = SHX2_2()
    SHX2_2 = SHX2_2.name
    SHX3_2 = " is now removed from the vehicle."
    SHX2_2 = SHX2_2 .. SHX3_2
    SHX0_2(SHX1_2, SHX2_2)
    SHX0_2 = SHX0_1.pets
    SHX1_2 = SHX5_1.id
    SHX0_2 = SHX0_2[SHX1_2]
    SHX0_2 = SHX0_2.info
    SHX0_2.inVehicle = false
  end
end
function SHX22_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = SHX0_1.pets
  SHX1_2 = SHX5_1.id
  SHX0_2 = SHX0_2[SHX1_2]
  SHX0_2 = SHX0_2.animations
  SHX0_2 = SHX0_2.sit
  SHX0_2 = SHX0_2.dict
  SHX1_2 = SHX0_1.pets
  SHX2_2 = SHX5_1.id
  SHX1_2 = SHX1_2[SHX2_2]
  SHX1_2 = SHX1_2.animations
  SHX1_2 = SHX1_2.sit
  SHX1_2 = SHX1_2.base
  SHX2_2 = SHX13_1
  SHX3_2 = "petSit"
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
end
function SHX23_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX0_1.pets
  SHX1_2 = SHX5_1.id
  SHX0_2 = SHX0_2[SHX1_2]
  SHX0_2 = SHX0_2.onShoulder
  if SHX0_2 then
    SHX0_2 = SHX0_1.pets
    SHX1_2 = SHX5_1.id
    SHX0_2 = SHX0_2[SHX1_2]
    SHX0_2 = SHX0_2.info
    SHX0_2 = SHX0_2.currentAction
    SHX1_2 = SHX4_1.Shoulder
    if SHX0_2 == SHX1_2 then
      SHX0_2 = SHX0_1.pets
      SHX1_2 = SHX5_1.id
      SHX0_2 = SHX0_2[SHX1_2]
      SHX0_2 = SHX0_2.info
      SHX1_2 = SHX4_1.Floor
      SHX0_2.currentAction = SHX1_2
      SHX0_2 = SHX13_1
      SHX1_2 = "petOnGround"
      SHX2_2 = GetPlayerServerId
      SHX3_2 = PlayerId
      SHX3_2 = SHX3_2()
      SHX2_2, SHX3_2 = SHX2_2(SHX3_2)
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      SHX0_2 = SHX10_1
      SHX1_2 = SHX6_1.Success
      SHX2_2 = SHX14_1
      SHX2_2 = SHX2_2()
      SHX2_2 = SHX2_2.name
      SHX3_2 = " is now on the ground"
      SHX2_2 = SHX2_2 .. SHX3_2
      SHX0_2(SHX1_2, SHX2_2)
    end
  end
end
function SHX24_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX13_1
  SHX1_2 = "tpPet"
  SHX2_2 = GetPlayerServerId
  SHX3_2 = PlayerId
  SHX3_2 = SHX3_2()
  SHX2_2, SHX3_2 = SHX2_2(SHX3_2)
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
end
SHX25_1 = RegisterNetEvent
SHX26_1 = "81dacc19c5"
function SHX27_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX2_2 = SetPedToRagdoll
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerPed
  SHX3_2 = SHX3_2()
  SHX4_2 = 12000
  SHX5_2 = 12000
  SHX6_2 = 0
  SHX7_2 = false
  SHX8_2 = false
  SHX9_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX2_2 = SHX10_1
  SHX3_2 = SHX6_1.Alert
  SHX4_2 = "~y~~h~Alert~h~~s~: "
  SHX5_2 = "You have been attacked by a pet."
  SHX4_2 = SHX4_2 .. SHX5_2
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SHX10_1
  SHX3_2 = SHX6_1.Alert
  SHX4_2 = "~b~Owner: ~w~"
  SHX5_2 = SHX1_2
  SHX6_2 = [[

User ID: ~b~]]
  SHX7_2 = SHX0_2
  SHX4_2 = SHX4_2 .. SHX5_2 .. SHX6_2 .. SHX7_2
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = Citizen
  SHX2_2 = SHX2_2.Wait
  SHX3_2 = 1000
  SHX2_2(SHX3_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = IsPedRagdoll
  SHX4_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2)
  if not SHX3_2 then
    SHX3_2 = SetPedToRagdoll
    SHX4_2 = SHX2_2
    SHX5_2 = -1
    SHX6_2 = -1
    SHX7_2 = 0
    SHX8_2 = false
    SHX9_2 = false
    SHX10_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  end
end
SHX25_1(SHX26_1, SHX27_1)
SHX25_1 = RageUI
SHX25_1 = SHX25_1.CreateWhile
SHX26_1 = 1.0
SHX27_1 = RMenu
SHX28_1 = SHX27_1
SHX27_1 = SHX27_1.Get
SHX29_1 = "cmgpets"
SHX30_1 = "store"
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
  SHX3_2 = "cmgpets"
  SHX4_2 = "store"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3
    SHX0_3 = SHX3_1.purchasing
    if SHX0_3 then
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.ButtonWithStyle
      SHX1_3 = "Purchase "
      SHX2_3 = SHX0_1.pets
      SHX3_3 = SHX3_1.purchasingId
      SHX2_3 = SHX2_3[SHX3_3]
      SHX2_3 = SHX2_3.name
      SHX1_3 = SHX1_3 .. SHX2_3
      SHX2_3 = "Purchase"
      SHX3_3 = {}
      SHX4_3 = "\194\163"
      SHX5_3 = getMoneyStringFormatted
      SHX6_3 = SHX0_1.pets
      SHX7_3 = SHX3_1.purchasingId
      SHX6_3 = SHX6_3[SHX7_3]
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
        
        local SHX3_4, SHX4_4, SHX5_4
        if SHX2_4 then
          SHX3_4 = TriggerServerEvent
          SHX4_4 = "dc7cc2772e"
          SHX5_4 = SHX3_1.purchasingId
          SHX3_4(SHX4_4, SHX5_4)
          SHX3_1.purchasing = false
          SHX3_1.purchasingId = 0
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.ButtonWithStyle
      SHX1_3 = "Cancel Purchase"
      SHX2_3 = "Cancel"
      SHX3_3 = {}
      SHX4_3 = true
      function SHX5_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        if SHX2_4 then
          SHX3_1.purchasing = false
          SHX3_1.purchasingId = 0
        end
      end
      SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    else
      SHX0_3 = SHX1_1
      if SHX0_3 then
        SHX0_3 = false
        SHX1_3 = pairs
        SHX2_3 = SHX0_1.pets
        SHX1_3, SHX2_3, SHX3_3, SHX4_3 = SHX1_3(SHX2_3)
        for SHX5_3, SHX6_3 in SHX1_3, SHX2_3, SHX3_3, SHX4_3 do
          SHX7_3 = SHX6_3.info
          SHX7_3 = SHX7_3.owned
          if not SHX7_3 then
            SHX0_3 = true
            SHX7_3 = RageUI
            SHX7_3 = SHX7_3.ButtonWithStyle
            SHX8_3 = SHX6_3.name
            SHX9_3 = SHX6_3.description
            SHX10_3 = {}
            SHX11_3 = "\194\163"
            SHX12_3 = getMoneyStringFormatted
            SHX13_3 = SHX6_3.price
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
              
              local SHX3_4
              if SHX2_4 then
                SHX3_1.purchasing = true
                SHX3_4 = SHX5_3
                SHX3_1.purchasingId = SHX3_4
              end
              if SHX1_4 then
                SHX3_4 = SHX5_3
                SHX3_1.viewingId = SHX3_4
              end
            end
            SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3)
          end
        end
        if not SHX0_3 then
          SHX1_3 = RageUI
          SHX1_3 = SHX1_3.Visible
          SHX2_3 = RMenu
          SHX3_3 = SHX2_3
          SHX2_3 = SHX2_3.Get
          SHX4_3 = "cmgpets"
          SHX5_3 = "store"
          SHX2_3 = SHX2_3(SHX3_3, SHX4_3, SHX5_3)
          SHX3_3 = false
          SHX1_3(SHX2_3, SHX3_3)
          SHX1_3 = SHX10_1
          SHX2_3 = SHX6_1.Info
          SHX3_3 = "There are no available pets for you to purchase."
          SHX1_3(SHX2_3, SHX3_3)
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
end
SHX25_1(SHX26_1, SHX27_1, SHX28_1, SHX29_1)
function SHX25_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX0_1.pets
  SHX2_2 = SHX5_1.id
  SHX1_2 = SHX1_2[SHX2_2]
  SHX1_2 = SHX1_2.info
  SHX2_2 = SHX4_1.Trick
  SHX1_2.currentAction = SHX2_2
  SHX1_2 = SHX13_1
  SHX2_2 = "petPerformTrick"
  SHX3_2 = SHX0_2.dict
  SHX4_2 = SHX0_2.base
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
end
function SHX26_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = {}
  SHX2_2 = GetGameTimer
  SHX2_2 = SHX2_2()
  SHX2_2 = SHX2_2 / 200
  SHX3_2 = math
  SHX3_2 = SHX3_2.floor
  SHX4_2 = math
  SHX4_2 = SHX4_2.sin
  SHX5_2 = SHX2_2 * SHX0_2
  SHX5_2 = SHX5_2 + 0
  SHX4_2 = SHX4_2(SHX5_2)
  SHX4_2 = SHX4_2 * 127
  SHX4_2 = SHX4_2 + 128
  SHX3_2 = SHX3_2(SHX4_2)
  SHX1_2.r = SHX3_2
  SHX3_2 = math
  SHX3_2 = SHX3_2.floor
  SHX4_2 = math
  SHX4_2 = SHX4_2.sin
  SHX5_2 = SHX2_2 * SHX0_2
  SHX5_2 = SHX5_2 + 2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX4_2 = SHX4_2 * 127
  SHX4_2 = SHX4_2 + 128
  SHX3_2 = SHX3_2(SHX4_2)
  SHX1_2.g = SHX3_2
  SHX3_2 = math
  SHX3_2 = SHX3_2.floor
  SHX4_2 = math
  SHX4_2 = SHX4_2.sin
  SHX5_2 = SHX2_2 * SHX0_2
  SHX5_2 = SHX5_2 + 4
  SHX4_2 = SHX4_2(SHX5_2)
  SHX4_2 = SHX4_2 * 127
  SHX4_2 = SHX4_2 + 128
  SHX3_2 = SHX3_2(SHX4_2)
  SHX1_2.b = SHX3_2
  return SHX1_2
end
function SHX27_1()
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
  SHX3_2 = "cmgpets"
  SHX4_2 = "main"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = Citizen
  SHX0_2 = SHX0_2.CreateThread
  function SHX1_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3, SHX27_3, SHX28_3, SHX29_3, SHX30_3
    SHX0_3 = SHX0_1.pets
    SHX1_3 = SHX5_1.id
    SHX0_3 = SHX0_3[SHX1_3]
    SHX0_3 = SHX0_3.info
    SHX1_3 = SHX4_1.Attack
    SHX0_3.currentAction = SHX1_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.setupDogScaleform
    SHX1_3 = "instructional_buttons"
    SHX0_3 = SHX0_3(SHX1_3)
    SHX1_3 = SHX10_1
    SHX2_3 = SHX6_1.Info
    SHX3_3 = "Aim at the ~b~target ~s~and press ENTER to begin the attack."
    SHX1_3(SHX2_3, SHX3_3)
    SHX1_3 = PlayerId
    SHX1_3 = SHX1_3()
    while true do
      SHX2_3 = SHX5_1.id
      if 0 == SHX2_3 then
        break
      end
      SHX2_3 = SHX0_1.pets
      SHX3_3 = SHX5_1.id
      SHX2_3 = SHX2_3[SHX3_3]
      SHX2_3 = SHX2_3.info
      SHX2_3 = SHX2_3.currentAction
      SHX3_3 = SHX4_1.Attack
      if SHX2_3 ~= SHX3_3 then
        break
      end
      SHX2_3 = GetEntityPlayerIsFreeAimingAt
      SHX3_3 = SHX1_3
      SHX2_3, SHX3_3 = SHX2_3(SHX3_3)
      if SHX2_3 then
        SHX4_3 = IsEntityAPed
        SHX5_3 = SHX3_3
        SHX4_3 = SHX4_3(SHX5_3)
        if SHX4_3 then
          SHX4_3 = SHX0_1.pets
          SHX5_3 = SHX5_1.id
          SHX4_3 = SHX4_3[SHX5_3]
          SHX4_3 = SHX4_3.info
          SHX4_3 = SHX4_3.handle
          if SHX3_3 ~= SHX4_3 then
            SHX4_3 = DrawScaleformMovieFullscreen
            SHX5_3 = SHX0_3
            SHX6_3 = 255
            SHX7_3 = 255
            SHX8_3 = 255
            SHX9_3 = 255
            SHX10_3 = 0
            SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3)
            SHX4_3 = GetEntityCoords
            SHX5_3 = SHX3_3
            SHX6_3 = true
            SHX4_3 = SHX4_3(SHX5_3, SHX6_3)
            SHX5_3 = SHX26_1
            SHX6_3 = 0.5
            SHX5_3 = SHX5_3(SHX6_3)
            SHX6_3 = DrawMarker
            SHX7_3 = 1
            SHX8_3 = SHX4_3.x
            SHX9_3 = SHX4_3.y
            SHX10_3 = SHX4_3.z
            SHX10_3 = SHX10_3 - 1.02
            SHX11_3 = 0
            SHX12_3 = 0
            SHX13_3 = 0
            SHX14_3 = 0
            SHX15_3 = 0
            SHX16_3 = 0
            SHX17_3 = 0.7
            SHX18_3 = 0.7
            SHX19_3 = 1.5
            SHX20_3 = SHX5_3.r
            SHX21_3 = SHX5_3.g
            SHX22_3 = SHX5_3.b
            SHX23_3 = 200
            SHX24_3 = false
            SHX25_3 = false
            SHX26_3 = 2
            SHX27_3 = false
            SHX28_3 = nil
            SHX29_3 = nil
            SHX30_3 = false
            SHX6_3(SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3, SHX27_3, SHX28_3, SHX29_3, SHX30_3)
            SHX6_3 = IsControlJustPressed
            SHX7_3 = 1
            SHX8_3 = 18
            SHX6_3 = SHX6_3(SHX7_3, SHX8_3)
            if SHX6_3 then
              SHX6_3 = SHX0_1.pets
              SHX7_3 = SHX5_1.id
              SHX6_3 = SHX6_3[SHX7_3]
              SHX6_3 = SHX6_3.info
              SHX6_3 = SHX6_3.handle
              SHX7_3 = NetworkGetNetworkIdFromEntity
              SHX8_3 = SHX6_3
              SHX7_3 = SHX7_3(SHX8_3)
              SHX8_3 = NetworkGetNetworkIdFromEntity
              SHX9_3 = SHX3_3
              SHX8_3 = SHX8_3(SHX9_3)
              if 0 ~= SHX7_3 and 0 ~= SHX8_3 then
                SHX9_3 = TriggerServerEvent
                SHX10_3 = "e37c85acd2"
                SHX11_3 = SHX5_1.id
                SHX12_3 = SHX7_3
                SHX13_3 = SHX8_3
                SHX9_3(SHX10_3, SHX11_3, SHX12_3, SHX13_3)
                SHX9_3 = SHX0_1.pets
                SHX10_3 = SHX5_1.id
                SHX9_3 = SHX9_3[SHX10_3]
                SHX9_3 = SHX9_3.info
                SHX9_3.isAttacking = true
                SHX9_3 = CMG
                SHX9_3 = SHX9_3.setupDogScaleform
                SHX10_3 = "instructional_buttons"
                SHX9_3 = SHX9_3(SHX10_3)
                SHX0_3 = SHX9_3
                SHX9_3 = SHX10_1
                SHX10_3 = SHX6_1.Info
                SHX11_3 = "Attack has started!"
                SHX9_3(SHX10_3, SHX11_3)
                while true do
                  SHX9_3 = SHX5_1.id
                  if 0 == SHX9_3 then
                    goto SHX_LABEL_145
                  end
                  SHX9_3 = SHX0_1.pets
                  SHX10_3 = SHX5_1.id
                  SHX9_3 = SHX9_3[SHX10_3]
                  SHX9_3 = SHX9_3.info
                  SHX9_3 = SHX9_3.isAttacking
                  if not SHX9_3 then
                    goto SHX_LABEL_145
                  end
                  SHX9_3 = Citizen
                  SHX9_3 = SHX9_3.Wait
                  SHX10_3 = 0
                  SHX9_3(SHX10_3)
                end
                goto SHX_LABEL_145
                break
              end
            end
          end
        end
      end
      -- [FIX IF ERROR] Move ::SHX_LABEL_145:: outside nested blocks until all 'goto SHX_LABEL_145' can see it
      ::SHX_LABEL_145::
      SHX2_3 = Wait
      SHX3_3 = 0
      SHX2_3(SHX3_3)
    end
  end
  SHX0_2(SHX1_2)
end
SHX28_1 = 0
function SHX29_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2
  SHX0_2 = SHX5_1.id
  SHX1_2 = SHX0_1.pets
  SHX2_2 = SHX5_1.id
  SHX1_2 = SHX1_2[SHX2_2]
  SHX1_2 = SHX1_2.info
  SHX1_2 = SHX1_2.handle
  SHX2_2 = DoesEntityExist
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = IsEntityDead
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if not SHX2_2 then
      goto SHX_LABEL_18
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_18:: outside nested blocks until all 'goto SHX_LABEL_18' can see it
  ::SHX_LABEL_18::
  SHX2_2 = SHX2_1
  if SHX2_2 then
    return
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerCoords
  SHX2_2 = SHX2_2()
  SHX3_2 = GetEntityCoords
  SHX4_2 = SHX1_2
  SHX5_2 = true
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX2_2 = SHX2_2 - SHX3_2
  SHX2_2 = #SHX2_2
  SHX3_2 = 2.5
  if SHX2_2 > SHX3_2 then
    SHX2_2 = notify
    SHX3_2 = "~r~You are too far away"
    SHX2_2(SHX3_2)
    return
  end
  SHX2_2 = GetGameTimer
  SHX2_2 = SHX2_2()
  SHX3_2 = SHX28_1
  SHX2_2 = SHX2_2 - SHX3_2
  SHX3_2 = 10000
  if SHX2_2 < SHX3_2 then
    SHX2_2 = notify
    SHX3_2 = "~r~Please try again in 10 seconds."
    SHX2_2(SHX3_2)
    return
  end
  SHX2_2 = GetGameTimer
  SHX2_2 = SHX2_2()
  SHX28_1 = SHX2_2
  SHX2_2 = GetEntityModel
  SHX3_2 = PlayerPedId
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2 = SHX3_2()
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
  if 1885233650 ~= SHX2_2 and -1667301416 ~= SHX2_2 then
    SHX3_2 = notify
    SHX4_2 = "~r~Custom peds cannot be used with riding."
    SHX3_2(SHX4_2)
    return
  end
  SHX3_2 = DeleteEntity
  SHX4_2 = SHX1_2
  SHX3_2(SHX4_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.requestEntitySpawn
  SHX4_2 = "pets_bear_ped"
  SHX5_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = ClonePed
  SHX4_2 = PlayerPedId
  SHX4_2 = SHX4_2()
  SHX5_2 = true
  SHX6_2 = true
  SHX7_2 = true
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = true
  SHX2_1 = SHX4_2
  SHX4_2 = GetEntityHealth
  SHX5_2 = PlayerPedId
  SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2 = SHX5_2()
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
  SHX5_2 = tCMG
  SHX5_2 = SHX5_2.getCustomization
  SHX5_2 = SHX5_2()
  SHX6_2 = tCMG
  SHX6_2 = SHX6_2.setCustomization
  SHX7_2 = {}
  SHX7_2.modelhash = 6768186
  SHX6_2(SHX7_2)
  SHX6_2 = SetModelAsNoLongerNeeded
  SHX7_2 = 6768186
  SHX6_2(SHX7_2)
  SHX6_2 = Citizen
  SHX6_2 = SHX6_2.CreateThread
  function SHX7_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3
    SHX0_3 = Citizen
    SHX0_3 = SHX0_3.Wait
    SHX1_3 = 200
    SHX0_3(SHX1_3)
    SHX0_3 = SetEntityHealth
    SHX1_3 = PlayerPedId
    SHX1_3 = SHX1_3()
    SHX2_3 = SHX4_2
    SHX0_3(SHX1_3, SHX2_3)
  end
  SHX6_2(SHX7_2)
  SHX6_2 = SHX0_1.pets
  SHX7_2 = SHX5_1.id
  SHX6_2 = SHX6_2[SHX7_2]
  SHX6_2 = SHX6_2.info
  SHX7_2 = SHX4_1.Ride
  SHX6_2.currentAction = SHX7_2
  SHX6_2 = AttachEntityToEntity
  SHX7_2 = SHX3_2
  SHX8_2 = PlayerPedId
  SHX8_2 = SHX8_2()
  SHX9_2 = GetPedBoneIndex
  SHX10_2 = PlayerPedId
  SHX10_2 = SHX10_2()
  SHX11_2 = 24816
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
  SHX10_2 = -0.35
  SHX11_2 = 0.0
  SHX12_2 = 0.65
  SHX13_2 = 0.0
  SHX14_2 = 0.0
  SHX15_2 = -90.0
  SHX16_2 = false
  SHX17_2 = false
  SHX18_2 = false
  SHX19_2 = true
  SHX20_2 = 2
  SHX21_2 = true
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.loadAnimDict
  SHX7_2 = "amb@prop_human_seat_chair@male@generic@base"
  SHX6_2(SHX7_2)
  SHX6_2 = TaskPlayAnim
  SHX7_2 = SHX3_2
  SHX8_2 = "amb@prop_human_seat_chair@male@generic@base"
  SHX9_2 = "base"
  SHX10_2 = 8.0
  SHX11_2 = 1
  SHX12_2 = -1
  SHX13_2 = 1
  SHX14_2 = 1.0
  SHX15_2 = false
  SHX16_2 = false
  SHX17_2 = false
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX6_2 = RemoveAnimDict
  SHX7_2 = "amb@prop_human_seat_chair@male@generic@base"
  SHX6_2(SHX7_2)
  SHX6_2 = FreezeEntityPosition
  SHX7_2 = PlayerPedId
  SHX7_2 = SHX7_2()
  SHX8_2 = false
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = FreezeEntityPosition
  SHX7_2 = SHX3_2
  SHX8_2 = false
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = SetPedComponentVariation
  SHX7_2 = PlayerPedId
  SHX7_2 = SHX7_2()
  SHX8_2 = 0
  SHX9_2 = 0
  SHX10_2 = 0
  SHX11_2 = 0
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX6_2 = SetBlockingOfNonTemporaryEvents
  SHX7_2 = SHX3_2
  SHX8_2 = true
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = SetPedFleeAttributes
  SHX7_2 = SHX3_2
  SHX8_2 = 0
  SHX9_2 = false
  SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX6_2 = SetPedRelationshipGroupHash
  SHX7_2 = SHX3_2
  SHX8_2 = 1191392768
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = Citizen
  SHX6_2 = SHX6_2.CreateThread
  function SHX7_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3
    while true do
      SHX0_3 = SHX5_1
      if not SHX0_3 then
        break
      end
      SHX0_3 = SHX5_1.id
      if not SHX0_3 then
        break
      end
      SHX0_3 = SHX0_1.pets
      SHX1_3 = SHX5_1.id
      SHX0_3 = SHX0_3[SHX1_3]
      if not SHX0_3 then
        break
      end
      SHX0_3 = SHX0_1.pets
      SHX1_3 = SHX5_1.id
      SHX0_3 = SHX0_3[SHX1_3]
      SHX0_3 = SHX0_3.info
      SHX0_3 = SHX0_3.currentAction
      SHX1_3 = SHX4_1.Ride
      if SHX0_3 ~= SHX1_3 then
        break
      end
      SHX0_3 = SHX2_1
      if not SHX0_3 then
        break
      end
      SHX0_3 = drawNativeNotification
      SHX1_3 = "~s~~INPUT_JUMP~ to stop riding"
      SHX0_3(SHX1_3)
      SHX0_3 = CMG
      SHX0_3 = SHX0_3.setWeapon
      SHX1_3 = PlayerPedId
      SHX1_3 = SHX1_3()
      SHX2_3 = "weapon_unarmed"
      SHX3_3 = true
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      SHX0_3 = DisableControlAction
      SHX1_3 = 0
      SHX2_3 = 263
      SHX3_3 = true
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      SHX0_3 = DisableControlAction
      SHX1_3 = 0
      SHX2_3 = 264
      SHX3_3 = true
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      SHX0_3 = DisableControlAction
      SHX1_3 = 0
      SHX2_3 = 257
      SHX3_3 = true
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      SHX0_3 = DisableControlAction
      SHX1_3 = 0
      SHX2_3 = 140
      SHX3_3 = true
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      SHX0_3 = DisableControlAction
      SHX1_3 = 0
      SHX2_3 = 141
      SHX3_3 = true
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      SHX0_3 = DisableControlAction
      SHX1_3 = 0
      SHX2_3 = 142
      SHX3_3 = true
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      SHX0_3 = DisableControlAction
      SHX1_3 = 0
      SHX2_3 = 143
      SHX3_3 = true
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      SHX0_3 = DisableControlAction
      SHX1_3 = 0
      SHX2_3 = 24
      SHX3_3 = true
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      SHX0_3 = DisableControlAction
      SHX1_3 = 0
      SHX2_3 = 25
      SHX3_3 = true
      SHX0_3(SHX1_3, SHX2_3, SHX3_3)
      SHX0_3 = SetPedDropsWeaponsWhenDead
      SHX1_3 = SHX3_2
      SHX2_3 = false
      SHX0_3(SHX1_3, SHX2_3)
      SHX0_3 = IsDisabledControlPressed
      SHX1_3 = 0
      SHX2_3 = 22
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3)
      if SHX0_3 then
        break
      end
      SHX0_3 = Citizen
      SHX0_3 = SHX0_3.Wait
      SHX1_3 = 0
      SHX0_3(SHX1_3)
    end
    SHX0_3 = DeleteEntity
    SHX1_3 = SHX3_2
    SHX0_3(SHX1_3)
    SHX0_3 = DetachEntity
    SHX1_3 = PlayerPedId
    SHX1_3 = SHX1_3()
    SHX2_3 = false
    SHX3_3 = false
    SHX0_3(SHX1_3, SHX2_3, SHX3_3)
    SHX0_3 = GetEntityHealth
    SHX1_3 = PlayerPedId
    SHX1_3, SHX2_3, SHX3_3 = SHX1_3()
    SHX0_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3)
    SHX1_3 = tCMG
    SHX1_3 = SHX1_3.setCustomization
    SHX2_3 = SHX5_2
    SHX1_3(SHX2_3)
    SHX1_3 = Citizen
    SHX1_3 = SHX1_3.CreateThread
    function SHX2_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4, SHX2_4
      SHX0_4 = Citizen
      SHX0_4 = SHX0_4.Wait
      SHX1_4 = 200
      SHX0_4(SHX1_4)
      SHX0_4 = SetEntityHealth
      SHX1_4 = PlayerPedId
      SHX1_4 = SHX1_4()
      SHX2_4 = SHX0_3
      SHX0_4(SHX1_4, SHX2_4)
      SHX0_4 = Citizen
      SHX0_4 = SHX0_4.Wait
      SHX1_4 = 1000
      SHX0_4(SHX1_4)
      SHX0_4 = CMG
      SHX0_4 = SHX0_4.setInPoliceHorseDelayed
      SHX1_4 = false
      SHX0_4(SHX1_4)
    end
    SHX1_3(SHX2_3)
    SHX1_3 = false
    SHX2_1 = SHX1_3
    SHX1_3 = SHX5_1.id
    SHX2_3 = SHX0_2
    if SHX1_3 == SHX2_3 then
      SHX1_3 = SHX17_1
      SHX2_3 = SHX0_2
      SHX1_3(SHX2_3)
    end
  end
  SHX6_2(SHX7_2)
end
SHX30_1 = RageUI
SHX30_1 = SHX30_1.CreateWhile
SHX31_1 = 1.0
SHX32_1 = RMenu
SHX33_1 = SHX32_1
SHX32_1 = SHX32_1.Get
SHX34_1 = "cmgpets"
SHX35_1 = "main"
SHX32_1 = SHX32_1(SHX33_1, SHX34_1, SHX35_1)
SHX33_1 = nil
function SHX34_1()
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
  SHX3_2 = "cmgpets"
  SHX4_2 = "main"
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
    SHX0_3 = SHX12_1
    SHX0_3 = SHX0_3()
    if not SHX0_3 then
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.CloseAll
      SHX0_3()
      return
    end
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.inOrganHesit
    SHX0_3 = SHX0_3()
    if SHX0_3 then
      SHX0_3 = RageUI
      SHX0_3 = SHX0_3.Visible
      SHX1_3 = RMenu
      SHX2_3 = SHX1_3
      SHX1_3 = SHX1_3.Get
      SHX3_3 = "cmgpets"
      SHX4_3 = "main"
      SHX1_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3)
      SHX2_3 = false
      SHX0_3(SHX1_3, SHX2_3)
      return
    end
    SHX0_3 = SHX5_1.active
    if not SHX0_3 then
      SHX0_3 = pairs
      SHX1_3 = SHX0_1.pets
      SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
      for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
        SHX6_3 = SHX5_3.info
        SHX6_3 = SHX6_3.owned
        if SHX6_3 then
          SHX6_3 = RageUI
          SHX6_3 = SHX6_3.Button
          SHX7_3 = "Spawn "
          SHX8_3 = SHX5_3.name
          SHX7_3 = SHX7_3 .. SHX8_3
          SHX8_3 = "Press to spawn"
          SHX9_3 = true
          function SHX10_3(SHX0_4, SHX1_4, SHX2_4)
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4
            if SHX2_4 then
              SHX3_4 = SHX5_3.info
              SHX3_4 = SHX3_4.dead
              if SHX3_4 then
                SHX3_4 = SHX10_1
                SHX4_4 = SHX6_1.Info
                SHX5_4 = "Please wait before spawning in "
                SHX6_4 = SHX5_3.name
                SHX7_4 = "."
                SHX5_4 = SHX5_4 .. SHX6_4 .. SHX7_4
                SHX3_4(SHX4_4, SHX5_4)
              else
                SHX3_4 = SHX5_1.cooldown
                if SHX3_4 then
                  SHX3_4 = SHX10_1
                  SHX4_4 = SHX6_1.Info
                  SHX5_4 = "Please wait before spawning in a pet."
                  SHX3_4(SHX4_4, SHX5_4)
                else
                  SHX3_4 = SHX17_1
                  SHX4_4 = SHX4_3
                  SHX3_4(SHX4_4)
                end
              end
            end
          end
          SHX6_3(SHX7_3, SHX8_3, SHX9_3, SHX10_3)
        end
      end
    else
      SHX0_3 = SHX14_1
      SHX0_3 = SHX0_3()
      SHX0_3 = SHX0_3.info
      SHX0_3 = SHX0_3.inVehicle
      if SHX0_3 then
        SHX0_3 = RageUI
        SHX0_3 = SHX0_3.Button
        SHX1_3 = "Remove from vehicle"
        SHX2_3 = "Remove pet from vehicle"
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
            SHX3_4 = SHX21_1
            SHX3_4()
          end
        end
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
      else
        SHX0_3 = SHX0_1.pets
        SHX1_3 = SHX5_1.id
        SHX0_3 = SHX0_3[SHX1_3]
        SHX0_3 = SHX0_3.health
        if nil ~= SHX0_3 then
          SHX0_3 = SHX0_1.pets
          SHX1_3 = SHX5_1.id
          SHX0_3 = SHX0_3[SHX1_3]
          SHX0_3 = SHX0_3.health
          if not (SHX0_3 > 1) then
            goto SHX_LABEL_207
          end
          SHX0_3 = SHX0_1.pets
          SHX1_3 = SHX5_1.id
          SHX0_3 = SHX0_3[SHX1_3]
          SHX0_3 = SHX0_3.onShoulder
          if SHX0_3 then
            goto SHX_LABEL_207
          end
        end
        SHX0_3 = SHX14_1
        SHX0_3 = SHX0_3()
        SHX0_3 = SHX0_3.info
        SHX0_3 = SHX0_3.currentAction
        SHX1_3 = SHX4_1.Follow
        if SHX0_3 ~= SHX1_3 then
          SHX0_3 = RageUI
          SHX0_3 = SHX0_3.Button
          SHX1_3 = "Follow"
          SHX2_3 = "Pet will follow you"
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
              SHX3_4 = SHX2_1
              if not SHX3_4 then
                SHX3_4 = SHX16_1
                SHX3_4()
              end
            end
          end
          SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
        end
        SHX0_3 = SHX14_1
        SHX0_3 = SHX0_3()
        SHX0_3 = SHX0_3.info
        SHX0_3 = SHX0_3.currentAction
        SHX1_3 = SHX4_1.Stay
        if SHX0_3 ~= SHX1_3 then
          SHX0_3 = RageUI
          SHX0_3 = SHX0_3.Button
          SHX1_3 = "Stay"
          SHX2_3 = "Pet will stay"
          SHX3_3 = true
          function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX3_4, SHX4_4, SHX5_4, SHX6_4
            if SHX2_4 then
              SHX3_4 = SHX2_1
              if not SHX3_4 then
                SHX3_4 = SHX10_1
                SHX4_4 = SHX6_1.Info
                SHX5_4 = SHX14_1
                SHX5_4 = SHX5_4()
                SHX5_4 = SHX5_4.name
                SHX6_4 = " is now staying."
                SHX5_4 = SHX5_4 .. SHX6_4
                SHX3_4(SHX4_4, SHX5_4)
                SHX3_4 = SHX19_1
                SHX3_4()
              end
            end
          end
          SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
        end
        SHX0_3 = SHX0_1.pets
        SHX1_3 = SHX5_1.id
        SHX0_3 = SHX0_3[SHX1_3]
        SHX0_3 = SHX0_3.abilities
        SHX0_3 = SHX0_3.sit
        if SHX0_3 then
          SHX0_3 = SHX14_1
          SHX0_3 = SHX0_3()
          SHX0_3 = SHX0_3.info
          SHX0_3 = SHX0_3.currentAction
          SHX1_3 = SHX4_1.Sit
          if SHX0_3 ~= SHX1_3 then
            SHX0_3 = RageUI
            SHX0_3 = SHX0_3.Button
            SHX1_3 = "Sit"
            SHX2_3 = "Pet will sit"
            SHX3_3 = true
            function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
              -- [AI CLEANUP] Decompiled Lua - Fix these:
              -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
              -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
              -- 3. Replace goto/label with while/repeat-until where possible
              -- 4. Remove decompiler comments, add meaningful ones
              -- 5. Fix indentation and formatting
              
              local SHX3_4, SHX4_4, SHX5_4, SHX6_4
              if SHX2_4 then
                SHX3_4 = SHX2_1
                if not SHX3_4 then
                  SHX3_4 = SHX10_1
                  SHX4_4 = SHX6_1.Info
                  SHX5_4 = SHX14_1
                  SHX5_4 = SHX5_4()
                  SHX5_4 = SHX5_4.name
                  SHX6_4 = " is now sitting."
                  SHX5_4 = SHX5_4 .. SHX6_4
                  SHX3_4(SHX4_4, SHX5_4)
                  SHX3_4 = SHX22_1
                  SHX3_4()
                end
              end
            end
            SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
          end
        end
        SHX0_3 = SHX0_1.pets
        SHX1_3 = SHX5_1.id
        SHX0_3 = SHX0_3[SHX1_3]
        SHX0_3 = SHX0_3.abilities
        SHX0_3 = SHX0_3.teleport
        if SHX0_3 then
          SHX0_3 = RageUI
          SHX0_3 = SHX0_3.Button
          SHX1_3 = "Teleport"
          SHX2_3 = "Teleport pet to you"
          SHX3_3 = true
          function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX3_4, SHX4_4, SHX5_4
            if SHX2_4 then
              SHX3_4 = SHX2_1
              if not SHX3_4 then
                SHX3_4 = SHX24_1
                SHX3_4()
                SHX3_4 = SHX10_1
                SHX4_4 = SHX6_1.Info
                SHX5_4 = "Pet has now been teleported to you."
                SHX3_4(SHX4_4, SHX5_4)
              end
            end
          end
          SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
        end
        SHX0_3 = SHX0_1.pets
        SHX1_3 = SHX5_1.id
        SHX0_3 = SHX0_3[SHX1_3]
        SHX0_3 = SHX0_3.abilities
        SHX0_3 = SHX0_3.attack
        if SHX0_3 then
          SHX0_3 = SHX14_1
          SHX0_3 = SHX0_3()
          SHX0_3 = SHX0_3.info
          SHX0_3 = SHX0_3.currentAction
          SHX1_3 = SHX4_1.Attack
          if SHX0_3 ~= SHX1_3 then
            SHX0_3 = RageUI
            SHX0_3 = SHX0_3.Button
            SHX1_3 = "Attack"
            SHX2_3 = "Pet will attack"
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
                SHX3_4 = SHX2_1
                if not SHX3_4 then
                  SHX3_4 = SHX27_1
                  SHX3_4()
                end
              end
            end
            SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
          end
        end
        SHX0_3 = SHX14_1
        SHX0_3 = SHX0_3()
        SHX0_3 = SHX0_3.info
        SHX0_3 = SHX0_3.currentAction
        SHX1_3 = SHX4_1.Attack
        if SHX0_3 ~= SHX1_3 then
          SHX0_3 = RageUI
          SHX0_3 = SHX0_3.Button
          SHX1_3 = "Put in vehicle"
          SHX2_3 = "Put pet from vehicle"
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
              SHX3_4 = SHX2_1
              if not SHX3_4 then
                SHX3_4 = SHX20_1
                SHX3_4()
              end
            end
          end
          SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
          SHX0_3 = SHX0_1.pets
          SHX1_3 = SHX5_1.id
          SHX0_3 = SHX0_3[SHX1_3]
          SHX0_3 = SHX0_3.abilities
          SHX0_3 = SHX0_3.paw
          if SHX0_3 then
            SHX0_3 = RageUI
            SHX0_3 = SHX0_3.Button
            SHX1_3 = "Paw Trick"
            SHX2_3 = "Pet will lift paw"
            SHX3_3 = true
            function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
              -- [AI CLEANUP] Decompiled Lua - Fix these:
              -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
              -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
              -- 3. Replace goto/label with while/repeat-until where possible
              -- 4. Remove decompiler comments, add meaningful ones
              -- 5. Fix indentation and formatting
              
              local SHX3_4, SHX4_4, SHX5_4
              if SHX2_4 then
                SHX3_4 = SHX2_1
                if not SHX3_4 then
                  SHX3_4 = SHX25_1
                  SHX4_4 = SHX0_1.pets
                  SHX5_4 = SHX5_1.id
                  SHX4_4 = SHX4_4[SHX5_4]
                  SHX4_4 = SHX4_4.animations
                  SHX4_4 = SHX4_4.paw
                  SHX3_4(SHX4_4)
                end
              end
            end
            SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
          end
          SHX0_3 = SHX0_1.pets
          SHX1_3 = SHX5_1.id
          SHX0_3 = SHX0_3[SHX1_3]
          SHX0_3 = SHX0_3.abilities
          SHX0_3 = SHX0_3.sleep
          if SHX0_3 then
            SHX0_3 = RageUI
            SHX0_3 = SHX0_3.Button
            SHX1_3 = "Sleep Trick"
            SHX2_3 = "Pet will sleep"
            SHX3_3 = true
            function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
              -- [AI CLEANUP] Decompiled Lua - Fix these:
              -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
              -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
              -- 3. Replace goto/label with while/repeat-until where possible
              -- 4. Remove decompiler comments, add meaningful ones
              -- 5. Fix indentation and formatting
              
              local SHX3_4, SHX4_4, SHX5_4
              if SHX2_4 then
                SHX3_4 = SHX2_1
                if not SHX3_4 then
                  SHX3_4 = SHX25_1
                  SHX4_4 = SHX0_1.pets
                  SHX5_4 = SHX5_1.id
                  SHX4_4 = SHX4_4[SHX5_4]
                  SHX4_4 = SHX4_4.animations
                  SHX4_4 = SHX4_4.sleep
                  SHX3_4(SHX4_4)
                end
              end
            end
            SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
          end
        end
        -- [FIX IF ERROR] Move ::SHX_LABEL_207:: outside nested blocks until all 'goto SHX_LABEL_207' can see it
        ::SHX_LABEL_207::
        SHX0_3 = SHX0_1.pets
        SHX1_3 = SHX5_1.id
        SHX0_3 = SHX0_3[SHX1_3]
        SHX0_3 = SHX0_3.onShoulder
        if SHX0_3 then
          SHX0_3 = SHX0_1.pets
          SHX1_3 = SHX5_1.id
          SHX0_3 = SHX0_3[SHX1_3]
          SHX0_3 = SHX0_3.info
          SHX0_3 = SHX0_3.currentAction
          SHX1_3 = SHX4_1.Shoulder
          if SHX0_3 == SHX1_3 then
            SHX0_3 = RageUI
            SHX0_3 = SHX0_3.Button
            SHX1_3 = "Place on ground"
            SHX2_3 = "Place your pet on the ground"
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
                SHX3_4 = SHX2_1
                if not SHX3_4 then
                  SHX3_4 = SHX23_1
                  SHX3_4()
                end
              end
            end
            SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
          end
        end
        SHX0_3 = SHX0_1.pets
        SHX1_3 = SHX5_1.id
        SHX0_3 = SHX0_3[SHX1_3]
        SHX0_3 = SHX0_3.onShoulder
        if SHX0_3 then
          SHX0_3 = SHX0_1.pets
          SHX1_3 = SHX5_1.id
          SHX0_3 = SHX0_3[SHX1_3]
          SHX0_3 = SHX0_3.info
          SHX0_3 = SHX0_3.currentAction
          SHX1_3 = SHX4_1.Floor
          if SHX0_3 == SHX1_3 then
            SHX0_3 = RageUI
            SHX0_3 = SHX0_3.Button
            SHX1_3 = "Place on right shoulder"
            SHX2_3 = "Place your pet on your right shoulder"
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
                SHX3_4 = SHX2_1
                if not SHX3_4 then
                  SHX3_4 = SHX15_1
                  SHX4_4 = true
                  SHX3_4(SHX4_4)
                end
              end
            end
            SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
            SHX0_3 = RageUI
            SHX0_3 = SHX0_3.Button
            SHX1_3 = "Place on left shoulder"
            SHX2_3 = "Place your pet on your left shoulder"
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
                SHX3_4 = SHX2_1
                if not SHX3_4 then
                  SHX3_4 = SHX15_1
                  SHX4_4 = false
                  SHX3_4(SHX4_4)
                end
              end
            end
            SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
          end
        end
        SHX0_3 = SHX0_1.pets
        SHX1_3 = SHX5_1.id
        SHX0_3 = SHX0_3[SHX1_3]
        SHX0_3 = SHX0_3.health
        if nil ~= SHX0_3 then
          SHX0_3 = SHX0_1.pets
          SHX1_3 = SHX5_1.id
          SHX0_3 = SHX0_3[SHX1_3]
          SHX0_3 = SHX0_3.health
          if SHX0_3 < 100 then
            SHX0_3 = RageUI
            SHX0_3 = SHX0_3.Button
            SHX1_3 = "Feed Pet"
            SHX2_3 = "Feed your current pet"
            SHX3_3 = true
            function SHX4_3(SHX0_4, SHX1_4, SHX2_4)
              -- [AI CLEANUP] Decompiled Lua - Fix these:
              -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
              -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
              -- 3. Replace goto/label with while/repeat-until where possible
              -- 4. Remove decompiler comments, add meaningful ones
              -- 5. Fix indentation and formatting
              
              local SHX3_4, SHX4_4, SHX5_4
              if SHX2_4 then
                SHX3_4 = SHX2_1
                if not SHX3_4 then
                  SHX3_4 = TriggerServerEvent
                  SHX4_4 = "f895de7ef6"
                  SHX5_4 = SHX5_1.id
                  SHX3_4(SHX4_4, SHX5_4)
                end
              end
            end
            SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
          end
        end
        SHX0_3 = RageUI
        SHX0_3 = SHX0_3.Button
        SHX1_3 = "Delete Pet"
        SHX2_3 = "Deletes your current pet"
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
            SHX6_4 = "cmgpets"
            SHX7_4 = "main"
            SHX4_4 = SHX4_4(SHX5_4, SHX6_4, SHX7_4)
            SHX5_4 = false
            SHX3_4(SHX4_4, SHX5_4)
            SHX3_4 = SHX18_1
            SHX3_4()
          end
        end
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
        SHX0_3 = SHX0_1.pets
        SHX1_3 = SHX5_1.id
        SHX0_3 = SHX0_3[SHX1_3]
        if nil ~= SHX0_3 then
          SHX0_3 = SHX0_1.pets
          SHX1_3 = SHX5_1.id
          SHX0_3 = SHX0_3[SHX1_3]
          SHX0_3 = SHX0_3.abilities
          if nil ~= SHX0_3 then
            SHX0_3 = SHX0_1.pets
            SHX1_3 = SHX5_1.id
            SHX0_3 = SHX0_3[SHX1_3]
            SHX0_3 = SHX0_3.abilities
            SHX0_3 = SHX0_3.teleport
            if not SHX0_3 then
              SHX0_3 = SHX0_1.pets
              SHX1_3 = SHX5_1.id
              SHX0_3 = SHX0_3[SHX1_3]
              SHX0_3 = SHX0_3.onShoulder
              if not SHX0_3 then
                SHX0_3 = RageUI
                SHX0_3 = SHX0_3.ButtonWithStyle
                SHX1_3 = "Purchase Teleport Feature"
                SHX2_3 = "Purchase"
                SHX3_3 = {}
                SHX4_3 = "\194\163"
                SHX5_3 = getMoneyStringFormatted
                SHX6_3 = SHX0_1.pets
                SHX7_3 = SHX5_1.id
                SHX6_3 = SHX6_3[SHX7_3]
                SHX6_3 = SHX6_3.skillPrices
                SHX6_3 = SHX6_3.teleport
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
                  
                  local SHX3_4, SHX4_4, SHX5_4
                  if SHX2_4 then
                    SHX3_4 = TriggerServerEvent
                    SHX4_4 = "967f1b0ab8"
                    SHX5_4 = SHX5_1.id
                    SHX3_4(SHX4_4, SHX5_4)
                  end
                end
                SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
              end
            end
          end
        end
        SHX0_3 = RageUI
        SHX0_3 = SHX0_3.ButtonWithStyle
        SHX1_3 = "Change Name"
        SHX2_3 = "Purchase"
        SHX3_3 = {}
        SHX4_3 = "\194\163"
        SHX5_3 = getMoneyStringFormatted
        SHX6_3 = SHX0_1.shop
        SHX6_3 = SHX6_3.changeNamePrice
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
          
          local SHX3_4, SHX4_4, SHX5_4
          if SHX2_4 then
            SHX3_4 = TriggerServerEvent
            SHX4_4 = "55aec3a6bf"
            SHX5_4 = SHX5_1.id
            SHX3_4(SHX4_4, SHX5_4)
            SHX3_4 = RageUI
            SHX3_4 = SHX3_4.CloseAll
            SHX3_4()
          end
        end
        SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
        SHX0_3 = SHX0_1.pets
        SHX1_3 = SHX5_1.id
        SHX0_3 = SHX0_3[SHX1_3]
        if nil ~= SHX0_3 then
          SHX0_3 = SHX0_1.pets
          SHX1_3 = SHX5_1.id
          SHX0_3 = SHX0_3[SHX1_3]
          SHX0_3 = SHX0_3.abilities
          if nil ~= SHX0_3 then
            SHX0_3 = SHX0_1.pets
            SHX1_3 = SHX5_1.id
            SHX0_3 = SHX0_3[SHX1_3]
            SHX0_3 = SHX0_3.abilities
            SHX0_3 = SHX0_3.ride
            if SHX0_3 then
              SHX0_3 = RageUI
              SHX0_3 = SHX0_3.ButtonWithStyle
              SHX1_3 = "Ride"
              SHX2_3 = ""
              SHX3_3 = {}
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
                  SHX3_4 = SHX29_1
                  SHX3_4()
                  SHX3_4 = RageUI
                  SHX3_4 = SHX3_4.CloseAll
                  SHX3_4()
                end
              end
              SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
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
end
SHX30_1(SHX31_1, SHX32_1, SHX33_1, SHX34_1)
SHX30_1 = Citizen
SHX30_1 = SHX30_1.CreateThread
function SHX31_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  while true do
    SHX0_2 = SHX3_1.viewingPet
    if SHX0_2 then
      SHX0_2 = SHX3_1.viewingId
      SHX3_1.lastViewingId = SHX0_2
      SHX0_2 = SHX3_1.viewingId
      if 0 ~= SHX0_2 then
        SHX0_2 = CMG
        SHX0_2 = SHX0_2.loadModel
        SHX1_2 = SHX0_1.pets
        SHX2_2 = SHX3_1.viewingId
        SHX1_2 = SHX1_2[SHX2_2]
        SHX1_2 = SHX1_2.model
        SHX0_2(SHX1_2)
        SHX0_2 = drawNativeText
        SHX1_2 = "You are viewing the ~b~"
        SHX2_2 = SHX0_1.pets
        SHX3_2 = SHX3_1.viewingId
        SHX2_2 = SHX2_2[SHX3_2]
        SHX2_2 = SHX2_2.name
        SHX3_2 = "~w~."
        SHX1_2 = SHX1_2 .. SHX2_2 .. SHX3_2
        SHX0_2(SHX1_2)
        SHX0_2 = SHX0_1.pets
        SHX1_2 = SHX3_1.viewingId
        SHX0_2 = SHX0_2[SHX1_2]
        SHX0_2 = SHX0_2.abilities
        SHX0_2 = SHX0_2.attack
        if not SHX0_2 then
          SHX0_2 = SHX0_1.pets
          SHX1_2 = SHX3_1.viewingId
          SHX0_2 = SHX0_2[SHX1_2]
          SHX0_2 = SHX0_2.onShoulder
          if SHX0_2 then
            SHX0_2 = drawNativeText
            SHX1_2 = "This pet can only go on your ~b~shoulder ~w~."
            SHX0_2(SHX1_2)
          else
            SHX0_2 = drawNativeText
            SHX1_2 = "This pet ~b~cannot ~w~attack."
            SHX0_2(SHX1_2)
          end
        end
        SHX0_2 = CMG
        SHX0_2 = SHX0_2.getPlayerPed
        SHX0_2 = SHX0_2()
        SHX1_2 = CreatePed
        SHX2_2 = 28
        SHX3_2 = SHX0_1.pets
        SHX4_2 = SHX3_1.viewingId
        SHX3_2 = SHX3_2[SHX4_2]
        SHX3_2 = SHX3_2.model
        SHX4_2 = 564.83
        SHX5_2 = 2753.28
        SHX6_2 = 41.89
        SHX7_2 = 81.06
        SHX8_2 = false
        SHX9_2 = false
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
        SHX3_1.viewingEntity = SHX1_2
        SHX2_2 = SetEntityNoCollisionEntity
        SHX3_2 = SHX1_2
        SHX4_2 = SHX0_2
        SHX5_2 = false
        SHX2_2(SHX3_2, SHX4_2, SHX5_2)
        SHX2_2 = TaskStandStill
        SHX3_2 = SHX1_2
        SHX4_2 = 100000
        SHX2_2(SHX3_2, SHX4_2)
        while true do
          SHX2_2 = SHX3_1.viewingId
          SHX3_2 = SHX3_1.lastViewingId
          if SHX2_2 ~= SHX3_2 then
            break
          end
          SHX2_2 = SetEntityHeading
          SHX3_2 = SHX1_2
          SHX4_2 = GetEntityHeading
          SHX5_2 = SHX1_2
          SHX4_2 = SHX4_2(SHX5_2)
          SHX4_2 = SHX4_2 - 0.3
          SHX2_2(SHX3_2, SHX4_2)
          SHX2_2 = Wait
          SHX3_2 = 0
          SHX2_2(SHX3_2)
        end
        SHX2_2 = SHX0_1.pets
        SHX3_2 = SHX3_1.viewingId
        SHX2_2 = SHX2_2[SHX3_2]
        if nil ~= SHX2_2 then
          SHX2_2 = SHX0_1.pets
          SHX3_2 = SHX3_1.viewingId
          SHX2_2 = SHX2_2[SHX3_2]
          SHX2_2 = SHX2_2.model
          if nil ~= SHX2_2 then
            SHX2_2 = SetModelAsNoLongerNeeded
            SHX3_2 = SHX0_1.pets
            SHX4_2 = SHX3_1.viewingId
            SHX3_2 = SHX3_2[SHX4_2]
            SHX3_2 = SHX3_2.model
            SHX2_2(SHX3_2)
          end
        end
        SHX2_2 = DoesEntityExist
        SHX3_2 = SHX3_1.viewingEntity
        SHX2_2 = SHX2_2(SHX3_2)
        if SHX2_2 then
          SHX2_2 = DeleteEntity
          SHX3_2 = SHX3_1.viewingEntity
          SHX2_2(SHX3_2)
        end
      end
    end
    SHX0_2 = Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
end
SHX30_1(SHX31_1)
SHX30_1 = RegisterNetEvent
SHX31_1 = "991adbef17"
function SHX32_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = SHX0_1.pets
  SHX1_2 = SHX1_2[SHX0_2]
  SHX1_2 = SHX1_2.info
  SHX1_2.isAttacking = false
  SHX1_2 = SHX10_1
  SHX2_2 = SHX6_1.Alert
  SHX3_2 = "The attack has finished."
  SHX1_2(SHX2_2, SHX3_2)
end
SHX30_1(SHX31_1, SHX32_1)
function SHX30_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX3_2 = ClearPedTasks
  SHX4_2 = SHX5_1.handle
  SHX3_2(SHX4_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.loadAnimDict
  SHX4_2 = SHX1_2
  SHX3_2(SHX4_2)
  SHX3_2 = TaskPlayAnim
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  SHX6_2 = SHX2_2
  SHX7_2 = 8.0
  SHX8_2 = -8.0
  SHX9_2 = -1
  SHX10_2 = 2
  SHX11_2 = 0.0
  SHX12_2 = false
  SHX13_2 = false
  SHX14_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX3_2 = RemoveAnimDict
  SHX4_2 = SHX1_2
  SHX3_2(SHX4_2)
end
function SHX31_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = DeleteEntity
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
function SHX32_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX2_2 = GetPlayerFromServerId
  SHX3_2 = SHX1_2
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
  SHX4_2 = ClearPedTasks
  SHX5_2 = SHX0_2
  SHX4_2(SHX5_2)
  SHX4_2 = TaskFollowToOffsetOfEntity
  SHX5_2 = SHX0_2
  SHX6_2 = SHX3_2
  SHX7_2 = 0.0
  SHX8_2 = 0.0
  SHX9_2 = 0.0
  SHX10_2 = 7.0
  SHX11_2 = -1
  SHX12_2 = 10.0
  SHX13_2 = true
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
end
function SHX33_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = ClearPedTasks
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
function SHX34_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX2_2 = NetworkDoesNetworkIdExist
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    return
  end
  SHX2_2 = NetworkGetEntityFromNetworkId
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if 0 == SHX2_2 then
    return
  end
  SHX3_2 = ClearPedTasks
  SHX4_2 = SHX0_2
  SHX3_2(SHX4_2)
  SHX3_2 = GetEntityBoneIndexByName
  SHX4_2 = SHX2_2
  SHX5_2 = "seat_dside_r"
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  if -1 == SHX3_2 then
    SHX4_2 = GetEntityBoneIndexByName
    SHX5_2 = SHX2_2
    SHX6_2 = "seat_pside_f"
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
    SHX3_2 = SHX4_2
  end
  SHX4_2 = AttachEntityToEntity
  SHX5_2 = SHX0_2
  SHX6_2 = SHX2_2
  SHX7_2 = SHX3_2
  SHX8_2 = 0.0
  SHX9_2 = -0.1
  SHX10_2 = 0.4
  SHX11_2 = 0.0
  SHX12_2 = 0.0
  SHX13_2 = 0.0
  SHX14_2 = false
  SHX15_2 = false
  SHX16_2 = false
  SHX17_2 = true
  SHX18_2 = 0
  SHX19_2 = true
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
end
function SHX35_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX2_2 = GetPlayerFromServerId
  SHX3_2 = SHX1_2
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
  SHX4_2 = ClearPedTasks
  SHX5_2 = SHX0_2
  SHX4_2(SHX5_2)
  SHX4_2 = GetEntityCoords
  SHX5_2 = SHX3_2
  SHX6_2 = true
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX5_2 = DetachEntity
  SHX6_2 = SHX0_2
  SHX7_2 = true
  SHX8_2 = true
  SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = SetEntityCoords
  SHX6_2 = SHX0_2
  SHX7_2 = SHX4_2.x
  SHX8_2 = SHX4_2.y
  SHX9_2 = SHX4_2.z
  SHX9_2 = SHX9_2 - 1.0
  SHX10_2 = false
  SHX11_2 = false
  SHX12_2 = false
  SHX13_2 = false
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX5_2 = SHX32_1
  SHX6_2 = SHX0_2
  SHX7_2 = SHX1_2
  SHX5_2(SHX6_2, SHX7_2)
end
function SHX36_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX3_2 = ClearPedTasks
  SHX4_2 = SHX0_2
  SHX3_2(SHX4_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.loadAnimDict
  SHX4_2 = SHX1_2
  SHX3_2(SHX4_2)
  SHX3_2 = TaskPlayAnim
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  SHX6_2 = SHX2_2
  SHX7_2 = 8.0
  SHX8_2 = -8.0
  SHX9_2 = -1
  SHX10_2 = 2
  SHX11_2 = 0.0
  SHX12_2 = false
  SHX13_2 = false
  SHX14_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX3_2 = RemoveAnimDict
  SHX4_2 = SHX1_2
  SHX3_2(SHX4_2)
end
function SHX37_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX3_2 = ClearPedTasks
  SHX4_2 = SHX0_2
  SHX3_2(SHX4_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.loadAnimDict
  SHX4_2 = SHX1_2
  SHX3_2(SHX4_2)
  SHX3_2 = TaskPlayAnim
  SHX4_2 = SHX0_2
  SHX5_2 = SHX1_2
  SHX6_2 = SHX2_2
  SHX7_2 = 8.0
  SHX8_2 = -8.0
  SHX9_2 = -1
  SHX10_2 = 2
  SHX11_2 = 0.0
  SHX12_2 = false
  SHX13_2 = false
  SHX14_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX3_2 = RemoveAnimDict
  SHX4_2 = SHX1_2
  SHX3_2(SHX4_2)
end
function SHX38_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX2_2 = GetPlayerFromServerId
  SHX3_2 = SHX1_2
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
  SHX4_2 = DetachEntity
  SHX5_2 = SHX0_2
  SHX6_2 = false
  SHX7_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = TaskFollowToOffsetOfEntity
  SHX5_2 = SHX0_2
  SHX6_2 = SHX3_2
  SHX7_2 = 0.0
  SHX8_2 = 0.0
  SHX9_2 = 0.0
  SHX10_2 = 1.0
  SHX11_2 = -1
  SHX12_2 = 10.0
  SHX13_2 = true
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX4_2 = ClearPedTasks
  SHX5_2 = SHX0_2
  SHX4_2(SHX5_2)
end
function SHX39_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  SHX3_2 = GetPlayerFromServerId
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  if -1 == SHX3_2 then
    return
  end
  SHX4_2 = GetPlayerPed
  SHX5_2 = SHX3_2
  SHX4_2 = SHX4_2(SHX5_2)
  if 0 == SHX4_2 then
    return
  end
  if SHX2_2 then
    SHX5_2 = AttachEntityToEntity
    SHX6_2 = SHX0_2
    SHX7_2 = SHX4_2
    SHX8_2 = GetPedBoneIndex
    SHX9_2 = SHX4_2
    SHX10_2 = 24818
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
    SHX9_2 = 0.17
    SHX10_2 = 0.0
    SHX11_2 = -0.18
    SHX12_2 = 0.0
    SHX13_2 = 90.0
    SHX14_2 = 0.0
    SHX15_2 = false
    SHX16_2 = false
    SHX17_2 = false
    SHX18_2 = true
    SHX19_2 = 1
    SHX20_2 = true
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
  else
    SHX5_2 = AttachEntityToEntity
    SHX6_2 = SHX0_2
    SHX7_2 = SHX4_2
    SHX8_2 = GetPedBoneIndex
    SHX9_2 = SHX4_2
    SHX10_2 = 24818
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
    SHX9_2 = 0.17
    SHX10_2 = 0.0
    SHX11_2 = 0.2
    SHX12_2 = 0.0
    SHX13_2 = 90.0
    SHX14_2 = 0.0
    SHX15_2 = false
    SHX16_2 = false
    SHX17_2 = false
    SHX18_2 = true
    SHX19_2 = 1
    SHX20_2 = true
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
  end
end
function SHX40_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX2_2 = GetPlayerFromServerId
  SHX3_2 = SHX1_2
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
  SHX4_2 = GetEntityCoords
  SHX5_2 = SHX3_2
  SHX6_2 = true
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX5_2 = SetEntityCoords
  SHX6_2 = SHX0_2
  SHX7_2 = SHX4_2.x
  SHX8_2 = SHX4_2.y
  SHX9_2 = SHX4_2.z
  SHX9_2 = SHX9_2 - 1.0
  SHX10_2 = false
  SHX11_2 = false
  SHX12_2 = false
  SHX13_2 = false
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
end
SHX41_1 = RegisterNetEvent
SHX42_1 = "23e9f76715"
function SHX43_1(SHX0_2, SHX1_2, ...)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = NetworkDoesNetworkIdExist
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    return
  end
  SHX2_2 = NetworkGetEntityFromNetworkId
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if 0 == SHX2_2 then
    return
  end
  if "petPerformTrick" == SHX1_2 then
    SHX3_2 = SHX30_1
    SHX4_2 = SHX2_2
    SHX5_2 = ...
    SHX3_2(SHX4_2, SHX5_2)
  elseif "petDelete" == SHX1_2 then
    SHX3_2 = SHX31_1
    SHX4_2 = SHX2_2
    SHX3_2(SHX4_2)
  elseif "petFollow" == SHX1_2 then
    SHX3_2 = SHX32_1
    SHX4_2 = SHX2_2
    SHX5_2 = ...
    SHX3_2(SHX4_2, SHX5_2)
  elseif "petStay" == SHX1_2 then
    SHX3_2 = SHX33_1
    SHX4_2 = SHX2_2
    SHX3_2(SHX4_2)
  elseif "putPetInVehicle" == SHX1_2 then
    SHX3_2 = SHX34_1
    SHX4_2 = SHX2_2
    SHX5_2 = ...
    SHX3_2(SHX4_2, SHX5_2)
  elseif "removePetFromVehicle" == SHX1_2 then
    SHX3_2 = SHX35_1
    SHX4_2 = SHX2_2
    SHX5_2 = ...
    SHX3_2(SHX4_2, SHX5_2)
  elseif "petSit" == SHX1_2 then
    SHX3_2 = SHX36_1
    SHX4_2 = SHX2_2
    SHX5_2 = ...
    SHX3_2(SHX4_2, SHX5_2)
  elseif "petAttack" == SHX1_2 then
    SHX3_2 = SHX37_1
    SHX4_2 = SHX2_2
    SHX5_2 = ...
    SHX3_2(SHX4_2, SHX5_2)
  elseif "petOnGround" == SHX1_2 then
    SHX3_2 = SHX38_1
    SHX4_2 = SHX2_2
    SHX5_2 = ...
    SHX3_2(SHX4_2, SHX5_2)
  elseif "petOnShoulder" == SHX1_2 then
    SHX3_2 = SHX39_1
    SHX4_2 = SHX2_2
    SHX5_2 = ...
    SHX3_2(SHX4_2, SHX5_2)
  elseif "tpPet" == SHX1_2 then
    SHX3_2 = SHX40_1
    SHX4_2 = SHX2_2
    SHX5_2 = ...
    SHX3_2(SHX4_2, SHX5_2)
  end
end
SHX41_1(SHX42_1, SHX43_1)
function SHX41_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = SHX5_1.active
  if SHX0_2 then
    SHX0_2 = DoesEntityExist
    SHX1_2 = SHX5_1.handle
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      SHX0_2 = IsEntityDead
      SHX1_2 = SHX5_1.handle
      SHX0_2 = SHX0_2(SHX1_2)
      if SHX0_2 then
        SHX0_2 = drawNativeText
        SHX1_2 = "Your pet has ~b~died~w~, please wait before respawning."
        SHX0_2(SHX1_2)
        SHX0_2 = SHX10_1
        SHX1_2 = SHX6_1.Alert
        SHX2_2 = "Please wait 5 minutes before respawning the pet."
        SHX0_2(SHX1_2, SHX2_2)
        SHX0_2 = SHX5_1.id
        SHX1_2 = SetTimeout
        SHX2_2 = 300000
        function SHX3_2()
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX0_3, SHX1_3
          SHX0_3 = SHX0_1.pets
          SHX1_3 = SHX0_2
          SHX0_3 = SHX0_3[SHX1_3]
          SHX0_3 = SHX0_3.info
          SHX0_3.dead = false
        end
        SHX1_2(SHX2_2, SHX3_2)
        SHX1_2 = SHX0_1.pets
        SHX2_2 = SHX5_1.id
        SHX1_2 = SHX1_2[SHX2_2]
        SHX1_2 = SHX1_2.info
        SHX1_2.dead = true
        SHX5_1.active = false
        SHX1_2 = RMenu
        SHX2_2 = SHX1_2
        SHX1_2 = SHX1_2.Get
        SHX3_2 = "cmgpets"
        SHX4_2 = "main"
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
        SHX2_2 = SHX1_2
        SHX1_2 = SHX1_2.SetSubtitle
        SHX3_2 = "Select your ~b~Pet"
        SHX1_2(SHX2_2, SHX3_2)
    end
    else
      SHX0_2 = SHX0_1.pets
      SHX1_2 = SHX5_1.id
      SHX0_2 = SHX0_2[SHX1_2]
      SHX0_2 = SHX0_2.awaitingHealthReduction
      if not SHX0_2 then
        SHX0_2 = SHX0_1.pets
        SHX1_2 = SHX5_1.id
        SHX0_2 = SHX0_2[SHX1_2]
        SHX0_2 = SHX0_2.health
        if SHX0_2 < 1 then
          SHX0_2 = SHX0_1.pets
          SHX1_2 = SHX5_1.id
          SHX0_2 = SHX0_2[SHX1_2]
          SHX0_2.awaitingHealthReduction = true
          SHX0_2 = SetTimeout
          SHX1_2 = 300000
          function SHX2_2()
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
            SHX0_3 = SHX0_1.pets
            SHX1_3 = SHX5_1.id
            SHX0_3 = SHX0_3[SHX1_3]
            SHX0_3 = SHX0_3.health
            SHX1_3 = SHX0_3 - 10
            if SHX1_3 < 2 then
              SHX1_3 = 1
              SHX2_3 = SHX10_1
              SHX3_3 = SHX6_1.Alert
              SHX4_3 = "You must feed your pet to continue using it. Head to a pet store!"
              SHX2_3(SHX3_3, SHX4_3)
            end
            SHX2_3 = SHX0_1.pets
            SHX3_3 = SHX5_1.id
            SHX2_3 = SHX2_3[SHX3_3]
            SHX2_3.health = SHX1_3
            SHX2_3 = SHX0_1.pets
            SHX3_3 = SHX5_1.id
            SHX2_3 = SHX2_3[SHX3_3]
            SHX2_3.awaitingHealthReduction = false
            SHX2_3 = TriggerServerEvent
            SHX3_3 = "b4523ffc6f"
            SHX4_3 = SHX5_1.id
            SHX5_3 = SHX1_3
            SHX2_3(SHX3_3, SHX4_3, SHX5_3)
            SHX2_3 = RMenu
            SHX3_3 = SHX2_3
            SHX2_3 = SHX2_3.Get
            SHX4_3 = "cmgpets"
            SHX5_3 = "main"
            SHX2_3 = SHX2_3(SHX3_3, SHX4_3, SHX5_3)
            SHX3_3 = SHX2_3
            SHX2_3 = SHX2_3.SetSubtitle
            SHX4_3 = "~b~Pet: ~w~"
            SHX5_3 = SHX0_1.pets
            SHX6_3 = SHX5_1.id
            SHX5_3 = SHX5_3[SHX6_3]
            SHX5_3 = SHX5_3.name
            SHX6_3 = " ~b~Health: ~w~"
            SHX7_3 = SHX0_1.pets
            SHX8_3 = SHX5_1.id
            SHX7_3 = SHX7_3[SHX8_3]
            SHX7_3 = SHX7_3.health
            SHX8_3 = "/100"
            SHX4_3 = SHX4_3 .. SHX5_3 .. SHX6_3 .. SHX7_3 .. SHX8_3
            SHX2_3(SHX3_3, SHX4_3)
          end
          SHX0_2(SHX1_2, SHX2_2)
        end
      end
    end
  else
    SHX0_2 = SHX3_1.cameraEnabled
    if SHX0_2 then
      SHX0_2 = RageUI
      SHX0_2 = SHX0_2.Visible
      SHX1_2 = RMenu
      SHX2_2 = SHX1_2
      SHX1_2 = SHX1_2.Get
      SHX3_2 = "cmgpets"
      SHX4_2 = "store"
      SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
      if not SHX0_2 then
        SHX0_2 = RenderScriptCams
        SHX1_2 = false
        SHX2_2 = false
        SHX3_2 = 0
        SHX4_2 = true
        SHX5_2 = false
        SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
        SHX0_2 = SHX3_1.cameraHandle
        if nil == SHX0_2 then
          SHX0_2 = SHX3_1.cameraHandle
          if 0 == SHX0_2 then
            goto SHX_LABEL_93
          end
        end
        SHX0_2 = DestroyCam
        SHX1_2 = SHX3_1.cameraHandle
        SHX2_2 = false
        SHX0_2(SHX1_2, SHX2_2)
        -- [FIX IF ERROR] Move ::SHX_LABEL_93:: outside nested blocks until all 'goto SHX_LABEL_93' can see it
        ::SHX_LABEL_93::
        SHX3_1.cameraEnabled = false
        SHX3_1.viewingPet = false
      end
    end
  end
end
SHX42_1 = CMG
function SHX43_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX5_1.active
  return SHX0_2
end
SHX42_1.hasPetSpawned = SHX43_1
SHX42_1 = CMG
SHX42_1 = SHX42_1.createThreadOnTick
SHX43_1 = SHX41_1
SHX44_1 = "Pets"
SHX42_1(SHX43_1, SHX44_1)
SHX42_1 = {}
SHX43_1 = vector4
SHX44_1 = -576.30914306641
SHX45_1 = -1054.8338623047
SHX46_1 = 22.430583953857
SHX47_1 = 5.0
SHX43_1 = SHX43_1(SHX44_1, SHX45_1, SHX46_1, SHX47_1)
SHX44_1 = vector4
SHX45_1 = -573.13830566406
SHX46_1 = -1056.7286376953
SHX47_1 = 22.34726524353
SHX48_1 = 10.0
SHX44_1 = SHX44_1(SHX45_1, SHX46_1, SHX47_1, SHX48_1)
SHX45_1 = vector4
SHX46_1 = -583.85375976562
SHX47_1 = -1050.8475341797
SHX48_1 = 22.903409957886
SHX49_1 = 200.0
SHX45_1 = SHX45_1(SHX46_1, SHX47_1, SHX48_1, SHX49_1)
SHX46_1 = vector4
SHX47_1 = -575.36315917969
SHX48_1 = -1049.3723144531
SHX49_1 = 23.532382965088
SHX50_1 = 150.0
SHX46_1 = SHX46_1(SHX47_1, SHX48_1, SHX49_1, SHX50_1)
SHX47_1 = vector4
SHX48_1 = -571.82427978516
SHX49_1 = -1049.1110839844
SHX50_1 = 27.636543273926
SHX51_1 = 300.0
SHX47_1 = SHX47_1(SHX48_1, SHX49_1, SHX50_1, SHX51_1)
SHX48_1 = vector4
SHX49_1 = -574.15216064453
SHX50_1 = -1067.8732910156
SHX51_1 = 26.716175079346
SHX52_1 = 350.0
SHX48_1 = SHX48_1(SHX49_1, SHX50_1, SHX51_1, SHX52_1)
SHX49_1 = vector4
SHX50_1 = -575.49182128906
SHX51_1 = -1068.4104003906
SHX52_1 = 26.867456436157
SHX53_1 = 73.0
SHX49_1 = SHX49_1(SHX50_1, SHX51_1, SHX52_1, SHX53_1)
SHX50_1 = vector4
SHX51_1 = -577.69000244141
SHX52_1 = -1069.3704833984
SHX53_1 = 27.260467529297
SHX54_1 = 351.0
SHX50_1 = SHX50_1(SHX51_1, SHX52_1, SHX53_1, SHX54_1)
SHX51_1 = vector4
SHX52_1 = -580.46539306641
SHX53_1 = -1061.1938476562
SHX54_1 = 27.50301361084
SHX55_1 = 264.0
SHX51_1 = SHX51_1(SHX52_1, SHX53_1, SHX54_1, SHX55_1)
SHX52_1 = vector4
SHX53_1 = -566.78350830078
SHX54_1 = -1049.1219482422
SHX55_1 = 24.757600784302
SHX56_1 = 193.0
SHX52_1 = SHX52_1(SHX53_1, SHX54_1, SHX55_1, SHX56_1)
SHX53_1 = vector4
SHX54_1 = -577.61096191406
SHX55_1 = -1069.3815917969
SHX56_1 = 22.990507125854
SHX57_1 = 45.0
SHX53_1 = SHX53_1(SHX54_1, SHX55_1, SHX56_1, SHX57_1)
SHX54_1 = vector4
SHX55_1 = -579.7275390625
SHX56_1 = -1062.9910888672
SHX57_1 = 23.105237960815
SHX58_1 = 80.0
SHX54_1 = SHX54_1(SHX55_1, SHX56_1, SHX57_1, SHX58_1)
SHX55_1 = vector4
SHX56_1 = -588.34497070312
SHX57_1 = -1049.7238769531
SHX58_1 = 22.344200134277
SHX59_1 = 164.0
SHX55_1 = SHX55_1(SHX56_1, SHX57_1, SHX58_1, SHX59_1)
SHX56_1 = vector4
SHX57_1 = -598.33673095703
SHX58_1 = -1050.1214599609
SHX59_1 = 22.849090576172
SHX60_1 = 200.0
SHX56_1 = SHX56_1(SHX57_1, SHX58_1, SHX59_1, SHX60_1)
SHX57_1 = vector4
SHX58_1 = -573.61352539062
SHX59_1 = -1060.0550537109
SHX60_1 = 22.639022827148
SHX61_1 = 274.0
SHX57_1 = SHX57_1(SHX58_1, SHX59_1, SHX60_1, SHX61_1)
SHX58_1 = vector4
SHX59_1 = -577.73022460938
SHX60_1 = -1051.1755371094
SHX61_1 = 22.347290039062
SHX62_1 = 189.0
SHX58_1 = SHX58_1(SHX59_1, SHX60_1, SHX61_1, SHX62_1)
SHX59_1 = vector4
SHX60_1 = -582.08251953125
SHX61_1 = -1054.7325439453
SHX62_1 = 22.429388046265
SHX63_1 = 328.0
SHX59_1 = SHX59_1(SHX60_1, SHX61_1, SHX62_1, SHX63_1)
SHX60_1 = vector4
SHX61_1 = -581.43719482422
SHX62_1 = -1058.3192138672
SHX63_1 = 22.344200134277
SHX64_1 = 239.0
SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1 = SHX60_1(SHX61_1, SHX62_1, SHX63_1, SHX64_1)
SHX42_1[1] = SHX43_1
SHX42_1[2] = SHX44_1
SHX42_1[3] = SHX45_1
SHX42_1[4] = SHX46_1
SHX42_1[5] = SHX47_1
SHX42_1[6] = SHX48_1
SHX42_1[7] = SHX49_1
SHX42_1[8] = SHX50_1
SHX42_1[9] = SHX51_1
SHX42_1[10] = SHX52_1
SHX42_1[11] = SHX53_1
SHX42_1[12] = SHX54_1
SHX42_1[13] = SHX55_1
SHX42_1[14] = SHX56_1
SHX42_1[15] = SHX57_1
SHX42_1[16] = SHX58_1
SHX42_1[17] = SHX59_1
SHX42_1[18] = SHX60_1
SHX42_1[19] = SHX61_1
SHX42_1[20] = SHX62_1
SHX42_1[21] = SHX63_1
SHX42_1[22] = SHX64_1
SHX43_1 = {}
SHX44_1 = {}
SHX45_1 = {}
SHX46_1 = "creatures@cat@amb@world_cat_sleeping_ground@base"
SHX47_1 = "base"
SHX45_1[1] = SHX46_1
SHX45_1[2] = SHX47_1
SHX44_1[1] = SHX45_1
SHX45_1 = {}
SHX46_1 = vector3
SHX47_1 = -578.38031005859
SHX48_1 = -1059.7563476562
SHX49_1 = 21.339666366577
SHX46_1 = SHX46_1(SHX47_1, SHX48_1, SHX49_1)
SHX47_1 = vector3
SHX48_1 = -581.20819091797
SHX49_1 = -1053.5622558594
SHX50_1 = 21.347272872925
SHX47_1 = SHX47_1(SHX48_1, SHX49_1, SHX50_1)
SHX48_1 = vector3
SHX49_1 = -573.55206298828
SHX50_1 = -1051.6333007812
SHX51_1 = 21.344181060791
SHX48_1 = SHX48_1(SHX49_1, SHX50_1, SHX51_1)
SHX49_1 = vector3
SHX50_1 = -581.60565185547
SHX51_1 = -1067.0407714844
SHX52_1 = 21.344177246094
SHX49_1 = SHX49_1(SHX50_1, SHX51_1, SHX52_1)
SHX50_1 = vector3
SHX51_1 = -573.43670654297
SHX52_1 = -1050.8446044922
SHX53_1 = 22.344200134277
SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1, SHX58_1, SHX59_1, SHX60_1, SHX61_1, SHX62_1, SHX63_1, SHX64_1 = SHX50_1(SHX51_1, SHX52_1, SHX53_1)
SHX45_1[1] = SHX46_1
SHX45_1[2] = SHX47_1
SHX45_1[3] = SHX48_1
SHX45_1[4] = SHX49_1
SHX45_1[5] = SHX50_1
SHX45_1[6] = SHX51_1
SHX45_1[7] = SHX52_1
SHX45_1[8] = SHX53_1
SHX45_1[9] = SHX54_1
SHX45_1[10] = SHX55_1
SHX45_1[11] = SHX56_1
SHX45_1[12] = SHX57_1
SHX45_1[13] = SHX58_1
SHX45_1[14] = SHX59_1
SHX45_1[15] = SHX60_1
SHX45_1[16] = SHX61_1
SHX45_1[17] = SHX62_1
SHX45_1[18] = SHX63_1
SHX45_1[19] = SHX64_1
function SHX46_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.loadModel
  SHX1_2 = 1462895032
  SHX0_2(SHX1_2)
  SHX0_2 = pairs
  SHX1_2 = SHX42_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = CreatePed
    SHX7_2 = 0
    SHX8_2 = 1462895032
    SHX9_2 = SHX5_2.x
    SHX10_2 = SHX5_2.y
    SHX11_2 = SHX5_2.z
    SHX11_2 = SHX11_2 - 1.0
    SHX12_2 = SHX5_2.w
    SHX13_2 = false
    SHX14_2 = false
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX7_2 = FreezeEntityPosition
    SHX8_2 = SHX6_2
    SHX9_2 = true
    SHX7_2(SHX8_2, SHX9_2)
    SHX7_2 = SetEntityCanBeDamaged
    SHX8_2 = SHX6_2
    SHX9_2 = false
    SHX7_2(SHX8_2, SHX9_2)
    SHX7_2 = SetBlockingOfNonTemporaryEvents
    SHX8_2 = SHX6_2
    SHX9_2 = true
    SHX7_2(SHX8_2, SHX9_2)
    SHX7_2 = SHX44_1
    SHX7_2 = #SHX7_2
    SHX7_2 = SHX4_2 % SHX7_2
    SHX8_2 = SHX7_2 + 1
    SHX7_2 = SHX44_1
    SHX7_2 = SHX7_2[SHX8_2]
    SHX8_2 = CMG
    SHX8_2 = SHX8_2.loadAnimDict
    SHX9_2 = SHX7_2[1]
    SHX8_2(SHX9_2)
    SHX8_2 = TaskPlayAnim
    SHX9_2 = SHX6_2
    SHX10_2 = SHX7_2[1]
    SHX11_2 = SHX7_2[2]
    SHX12_2 = 8.0
    SHX13_2 = 8.0
    SHX14_2 = -1
    SHX15_2 = 3
    SHX16_2 = 1.0
    SHX17_2 = false
    SHX18_2 = false
    SHX19_2 = false
    SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
    SHX8_2 = RemoveAnimDict
    SHX9_2 = SHX7_2[1]
    SHX8_2(SHX9_2)
    SHX8_2 = table
    SHX8_2 = SHX8_2.insert
    SHX9_2 = SHX43_1
    SHX10_2 = SHX6_2
    SHX8_2(SHX9_2, SHX10_2)
  end
  SHX0_2 = SetModelAsNoLongerNeeded
  SHX1_2 = 1462895032
  SHX0_2(SHX1_2)
  SHX0_2 = 0
  SHX1_2 = pairs
  SHX2_2 = GetGamePool
  SHX3_2 = "CPed"
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2 = SHX2_2(SHX3_2)
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = GetEntityModel
    SHX8_2 = SHX6_2
    SHX7_2 = SHX7_2(SHX8_2)
    if 1462895032 == SHX7_2 then
      SHX7_2 = NetworkGetEntityIsNetworked
      SHX8_2 = SHX6_2
      SHX7_2 = SHX7_2(SHX8_2)
      if SHX7_2 then
        SHX0_2 = SHX0_2 + 1
      end
    end
  end
  SHX1_2 = SHX45_1
  SHX1_2 = #SHX1_2
  if SHX0_2 < SHX1_2 then
    SHX1_2 = math
    SHX1_2 = SHX1_2.random
    SHX2_2 = 1
    SHX3_2 = SHX45_1
    SHX3_2 = #SHX3_2
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    SHX2_2 = SHX45_1
    SHX1_2 = SHX2_2[SHX1_2]
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.requestEntitySpawn
    SHX3_2 = "catcafe_cat"
    SHX4_2 = SHX1_2
    SHX2_2(SHX3_2, SHX4_2)
    SHX2_2 = CreatePed
    SHX3_2 = 0
    SHX4_2 = 1462895032
    SHX5_2 = SHX1_2.x
    SHX6_2 = SHX1_2.y
    SHX7_2 = SHX1_2.z
    SHX8_2 = 0.0
    SHX9_2 = true
    SHX10_2 = true
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    SHX3_2 = SetEntityCanBeDamaged
    SHX4_2 = SHX2_2
    SHX5_2 = false
    SHX3_2(SHX4_2, SHX5_2)
    SHX3_2 = SetEntityProofs
    SHX4_2 = SHX2_2
    SHX5_2 = true
    SHX6_2 = true
    SHX7_2 = true
    SHX8_2 = true
    SHX9_2 = true
    SHX10_2 = true
    SHX11_2 = true
    SHX12_2 = true
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  end
end
function SHX47_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX0_2 = pairs
  SHX1_2 = GetGamePool
  SHX2_2 = "CPed"
  SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX1_2(SHX2_2)
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = GetEntityModel
    SHX7_2 = SHX5_2
    SHX6_2 = SHX6_2(SHX7_2)
    if 1462895032 == SHX6_2 then
      SHX6_2 = NetworkGetEntityIsNetworked
      SHX7_2 = SHX5_2
      SHX6_2 = SHX6_2(SHX7_2)
      if SHX6_2 then
        SHX6_2 = NetworkHasControlOfEntity
        SHX7_2 = SHX5_2
        SHX6_2 = SHX6_2(SHX7_2)
        if SHX6_2 then
          SHX6_2 = GetScriptTaskStatus
          SHX7_2 = SHX5_2
          SHX8_2 = 1056466932
          SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
          if 7 == SHX6_2 then
            SHX6_2 = TaskFollowToOffsetOfEntity
            SHX7_2 = SHX5_2
            SHX8_2 = PlayerPedId
            SHX8_2 = SHX8_2()
            SHX9_2 = 0.0
            SHX10_2 = 0.0
            SHX11_2 = 0.0
            SHX12_2 = 7.0
            SHX13_2 = -1
            SHX14_2 = 10.0
            SHX15_2 = true
            SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
          end
        end
      end
    end
  end
end
function SHX48_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = pairs
  SHX1_2 = SHX43_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = DeleteEntity
    SHX7_2 = SHX5_2
    SHX6_2(SHX7_2)
  end
end
SHX49_1 = CMG
SHX49_1 = SHX49_1.createArea
SHX50_1 = "catCafeCats"
SHX51_1 = SHX42_1[1]
SHX51_1 = SHX51_1.xyz
SHX52_1 = 25.0
SHX53_1 = 50.0
SHX54_1 = SHX46_1
SHX55_1 = SHX48_1
SHX56_1 = SHX47_1
SHX57_1 = {}
SHX49_1(SHX50_1, SHX51_1, SHX52_1, SHX53_1, SHX54_1, SHX55_1, SHX56_1, SHX57_1)
SHX49_1 = AddEventHandler
SHX50_1 = "onResourceStop"
function SHX51_1(SHX0_2)
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
    SHX1_2 = SHX48_1
    SHX1_2()
  end
end
SHX49_1(SHX50_1, SHX51_1)
SHX49_1 = RegisterNetEvent
SHX50_1 = "0d37102e9e"
function SHX51_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX2_2 = NetworkDoesNetworkIdExist
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = NetworkDoesNetworkIdExist
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      goto SHX_LABEL_12
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_12:: outside nested blocks until all 'goto SHX_LABEL_12' can see it
  ::SHX_LABEL_12::
  SHX2_2 = NetworkDoesEntityExistWithNetworkId
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = NetworkDoesEntityExistWithNetworkId
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      goto SHX_LABEL_23
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_23:: outside nested blocks until all 'goto SHX_LABEL_23' can see it
  ::SHX_LABEL_23::
  SHX2_2 = NetworkGetEntityFromNetworkId
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = NetworkGetEntityFromNetworkId
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  if 0 == SHX2_2 or 0 == SHX3_2 then
    return
  end
  SHX4_2 = NetworkHasControlOfEntity
  SHX5_2 = SHX2_2
  SHX4_2 = SHX4_2(SHX5_2)
  if not SHX4_2 then
    return
  end
  SHX4_2 = TaskCombatPed
  SHX5_2 = SHX2_2
  SHX6_2 = SHX3_2
  SHX7_2 = 0
  SHX8_2 = 16
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
end
SHX49_1(SHX50_1, SHX51_1)
SHX49_1 = RegisterNetEvent
SHX50_1 = "dd2a28ff60"
function SHX51_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = NetworkDoesNetworkIdExist
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = NetworkDoesEntityExistWithNetworkId
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      goto SHX_LABEL_12
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_12:: outside nested blocks until all 'goto SHX_LABEL_12' can see it
  ::SHX_LABEL_12::
  SHX1_2 = NetworkGetEntityFromNetworkId
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if 0 ~= SHX1_2 then
    SHX2_2 = NetworkHasControlOfEntity
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      goto SHX_LABEL_23
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_23:: outside nested blocks until all 'goto SHX_LABEL_23' can see it
  ::SHX_LABEL_23::
  SHX2_2 = ClearPedTasksImmediately
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
end
SHX49_1(SHX50_1, SHX51_1)
