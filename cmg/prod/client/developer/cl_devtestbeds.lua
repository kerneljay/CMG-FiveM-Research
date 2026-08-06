-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1
SHX0_1 = {}
SHX1_1 = {}
SHX2_1 = 0
SHX3_1 = vector3
SHX4_1 = 0.0
SHX5_1 = 0.0
SHX6_1 = 0.0
SHX3_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1)
SHX4_1 = {}
SHX5_1 = 1885233650
SHX6_1 = {}
SHX7_1 = {}
SHX8_1 = 672
SHX9_1 = 547
SHX7_1[1] = SHX8_1
SHX7_1[2] = SHX9_1
SHX6_1[11] = SHX7_1
SHX7_1 = {}
SHX8_1 = 332
SHX9_1 = 251
SHX7_1[1] = SHX8_1
SHX7_1[2] = SHX9_1
SHX6_1[4] = SHX7_1
SHX7_1 = {}
SHX8_1 = 277
SHX9_1 = 230
SHX7_1[1] = SHX8_1
SHX7_1[2] = SHX9_1
SHX6_1[0] = SHX7_1
SHX7_1 = {}
SHX8_1 = 151
SHX7_1[1] = SHX8_1
SHX6_1[6] = SHX7_1
SHX4_1[SHX5_1] = SHX6_1
SHX5_1 = -1667301416
SHX6_1 = {}
SHX7_1 = {}
SHX8_1 = 716
SHX9_1 = 547
SHX7_1[1] = SHX8_1
SHX7_1[2] = SHX9_1
SHX6_1[11] = SHX7_1
SHX7_1 = {}
SHX8_1 = 348
SHX9_1 = 218
SHX7_1[1] = SHX8_1
SHX7_1[2] = SHX9_1
SHX6_1[4] = SHX7_1
SHX7_1 = {}
SHX8_1 = 263
SHX7_1[1] = SHX8_1
SHX6_1[0] = SHX7_1
SHX7_1 = {}
SHX8_1 = 159
SHX7_1[1] = SHX8_1
SHX6_1[6] = SHX7_1
SHX4_1[SHX5_1] = SHX6_1
function SHX5_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2
  SHX3_2 = 8
  SHX4_2 = 6.0
  SHX5_2 = 0
  SHX6_2 = 0
  SHX7_2 = ipairs
  SHX8_2 = SHX1_2
  SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
  for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
    SHX13_2 = CMG
    SHX13_2 = SHX13_2.loadModel
    SHX14_2 = SHX12_2
    SHX13_2(SHX14_2)
    SHX13_2 = SHX11_2 % SHX3_2
    SHX14_2 = math
    SHX14_2 = SHX14_2.floor
    SHX15_2 = SHX11_2 / SHX3_2
    SHX14_2 = SHX14_2(SHX15_2)
    SHX15_2 = vector3
    SHX16_2 = SHX13_2 * SHX4_2
    SHX17_2 = SHX14_2 * SHX4_2
    SHX18_2 = 0.0
    SHX15_2 = SHX15_2(SHX16_2, SHX17_2, SHX18_2)
    SHX15_2 = SHX0_2 + SHX15_2
    SHX16_2 = CreateVehicle
    SHX17_2 = SHX12_2
    SHX18_2 = SHX15_2.x
    SHX19_2 = SHX15_2.y
    SHX20_2 = SHX15_2.z
    SHX21_2 = 0.0
    SHX22_2 = false
    SHX23_2 = false
    SHX16_2 = SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
    SHX17_2 = CMG
    SHX17_2 = SHX17_2.initLocalVehicle
    SHX18_2 = SHX16_2
    SHX17_2(SHX18_2)
    SHX17_2 = SetVehicleOnGroundProperly
    SHX18_2 = SHX16_2
    SHX17_2(SHX18_2)
    SHX17_2 = SetVehicleEngineOn
    SHX18_2 = SHX16_2
    SHX19_2 = true
    SHX20_2 = true
    SHX21_2 = false
    SHX17_2(SHX18_2, SHX19_2, SHX20_2, SHX21_2)
    SHX17_2 = table
    SHX17_2 = SHX17_2.insert
    SHX18_2 = SHX0_1
    SHX19_2 = SHX16_2
    SHX17_2(SHX18_2, SHX19_2)
    if SHX2_2 then
      SHX17_2 = SHX11_2 % 2
      SHX17_2 = 0 == SHX17_2
      if SHX17_2 then
        SHX18_2 = 1885233650
        if SHX18_2 then
          goto SHX_LABEL_70
        end
      end
      SHX18_2 = -1667301416
      -- [FIX IF ERROR] Move ::SHX_LABEL_70:: outside nested blocks until all 'goto SHX_LABEL_70' can see it
      ::SHX_LABEL_70::
      SHX19_2 = CMG
      SHX19_2 = SHX19_2.loadModel
      SHX20_2 = SHX18_2
      SHX19_2(SHX20_2)
      if SHX17_2 then
        SHX5_2 = SHX5_2 + 1
      else
        SHX6_2 = SHX6_2 + 1
      end
      SHX19_2 = CreatePed
      SHX20_2 = 0
      SHX21_2 = SHX18_2
      SHX22_2 = SHX15_2.x
      SHX23_2 = SHX15_2.y
      SHX24_2 = SHX15_2.z
      SHX25_2 = 0.0
      SHX26_2 = false
      SHX27_2 = false
      SHX19_2 = SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2)
      SHX20_2 = pairs
      SHX21_2 = SHX4_1
      SHX21_2 = SHX21_2[SHX18_2]
      SHX20_2, SHX21_2, SHX22_2, SHX23_2 = SHX20_2(SHX21_2)
      for SHX24_2, SHX25_2 in SHX20_2, SHX21_2, SHX22_2, SHX23_2 do
        SHX26_2 = SHX5_2 or SHX26_2
        if not SHX17_2 or not SHX5_2 then
          SHX26_2 = SHX6_2
        end
        SHX27_2 = SHX26_2 % 2
        SHX27_2 = SHX27_2 + 1
        SHX28_2 = SHX25_2[SHX27_2]
        if not SHX28_2 then
          SHX28_2 = SHX25_2[1]
        end
        SHX29_2 = SetPedComponentVariation
        SHX30_2 = SHX19_2
        SHX31_2 = SHX24_2
        SHX32_2 = math
        SHX32_2 = SHX32_2.floor
        SHX33_2 = SHX26_2 / 2
        SHX32_2 = SHX32_2(SHX33_2)
        SHX32_2 = SHX28_2 + SHX32_2
        SHX33_2 = 0
        SHX34_2 = 0
        SHX29_2(SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2)
      end
      SHX20_2 = SetPedIntoVehicle
      SHX21_2 = SHX19_2
      SHX22_2 = SHX16_2
      SHX23_2 = -1
      SHX20_2(SHX21_2, SHX22_2, SHX23_2)
      SHX20_2 = table
      SHX20_2 = SHX20_2.insert
      SHX21_2 = SHX1_1
      SHX22_2 = SHX19_2
      SHX20_2(SHX21_2, SHX22_2)
    end
  end
end
function SHX6_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2
  SHX1_2 = 8
  SHX2_2 = 2.0
  SHX3_2 = 0
  SHX4_2 = 0
  SHX5_2 = 1
  SHX6_2 = 120
  SHX7_2 = 1
  for SHX8_2 = SHX5_2, SHX6_2, SHX7_2 do
    SHX9_2 = SHX8_2 % 2
    SHX9_2 = 0 == SHX9_2
    if SHX9_2 then
      SHX10_2 = 1885233650
      if SHX10_2 then
        goto SHX_LABEL_21
      end
    end
    SHX10_2 = -1667301416
    -- [FIX IF ERROR] Move ::SHX_LABEL_21:: outside nested blocks until all 'goto SHX_LABEL_21' can see it
    ::SHX_LABEL_21::
    SHX11_2 = CMG
    SHX11_2 = SHX11_2.loadModel
    SHX12_2 = SHX10_2
    SHX11_2(SHX12_2)
    if SHX9_2 then
      SHX3_2 = SHX3_2 + 1
    else
      SHX4_2 = SHX4_2 + 1
    end
    SHX11_2 = SHX8_2 % SHX1_2
    SHX12_2 = math
    SHX12_2 = SHX12_2.floor
    SHX13_2 = SHX8_2 / SHX1_2
    SHX12_2 = SHX12_2(SHX13_2)
    SHX13_2 = vector3
    SHX14_2 = SHX11_2 * SHX2_2
    SHX15_2 = SHX12_2 * SHX2_2
    SHX16_2 = 0.0
    SHX13_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2)
    SHX13_2 = SHX0_2 + SHX13_2
    SHX14_2 = CreatePed
    SHX15_2 = 0
    SHX16_2 = SHX10_2
    SHX17_2 = SHX13_2.x
    SHX18_2 = SHX13_2.y
    SHX19_2 = SHX13_2.z
    SHX20_2 = 0.0
    SHX21_2 = false
    SHX22_2 = false
    SHX14_2 = SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
    SHX15_2 = pairs
    SHX16_2 = SHX4_1
    SHX16_2 = SHX16_2[SHX10_2]
    SHX15_2, SHX16_2, SHX17_2, SHX18_2 = SHX15_2(SHX16_2)
    for SHX19_2, SHX20_2 in SHX15_2, SHX16_2, SHX17_2, SHX18_2 do
      SHX21_2 = SHX3_2 or SHX21_2
      if not SHX9_2 or not SHX3_2 then
        SHX21_2 = SHX4_2
      end
      SHX22_2 = SHX21_2 % 2
      SHX22_2 = SHX22_2 + 1
      SHX23_2 = SHX20_2[SHX22_2]
      if not SHX23_2 then
        SHX23_2 = SHX20_2[1]
      end
      SHX24_2 = SetPedComponentVariation
      SHX25_2 = SHX14_2
      SHX26_2 = SHX19_2
      SHX27_2 = math
      SHX27_2 = SHX27_2.floor
      SHX28_2 = SHX21_2 / 2
      SHX27_2 = SHX27_2(SHX28_2)
      SHX27_2 = SHX23_2 + SHX27_2
      SHX28_2 = 0
      SHX29_2 = 0
      SHX24_2(SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2)
    end
    SHX15_2 = table
    SHX15_2 = SHX15_2.insert
    SHX16_2 = SHX1_1
    SHX17_2 = SHX14_2
    SHX15_2(SHX16_2, SHX17_2)
  end
end
function SHX7_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX2_2 = CreateCamWithParams
  SHX3_2 = "DEFAULT_SCRIPTED_CAMERA"
  SHX4_2 = SHX0_2.x
  SHX5_2 = SHX0_2.y
  SHX6_2 = SHX0_2.z
  SHX7_2 = SHX1_2.x
  SHX8_2 = SHX1_2.y
  SHX9_2 = SHX1_2.z
  SHX10_2 = 50.0
  SHX11_2 = true
  SHX12_2 = 2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX2_1 = SHX2_2
  SHX2_2 = RenderScriptCams
  SHX3_2 = true
  SHX4_2 = false
  SHX5_2 = 0
  SHX6_2 = false
  SHX7_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX2_2 = SetFocusPosAndVel
  SHX3_2 = SHX0_2.x
  SHX4_2 = SHX0_2.y
  SHX5_2 = SHX0_2.z
  SHX6_2 = 0.0
  SHX7_2 = 0.0
  SHX8_2 = 0.0
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerCoords
  SHX2_2 = SHX2_2()
  SHX3_1 = SHX2_2
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = SetEntityCoords
  SHX4_2 = SHX2_2
  SHX5_2 = SHX0_2.x
  SHX6_2 = SHX0_2.y
  SHX7_2 = SHX0_2.z
  SHX7_2 = SHX7_2 - 2.0
  SHX8_2 = true
  SHX9_2 = false
  SHX10_2 = false
  SHX11_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX3_2 = FreezeEntityPosition
  SHX4_2 = SHX2_2
  SHX5_2 = true
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SetEntityVisible
  SHX4_2 = SHX2_2
  SHX5_2 = false
  SHX6_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.hideAllDisplays
  SHX4_2 = "testbeds"
  SHX3_2(SHX4_2)
  SHX3_2 = RageUI
  SHX3_2 = SHX3_2.CloseAll
  SHX3_2()
end
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = pairs
  SHX1_2 = SHX0_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = DeleteEntity
    SHX7_2 = SHX5_2
    SHX6_2(SHX7_2)
  end
  SHX0_2 = table
  SHX0_2 = SHX0_2.clear
  SHX1_2 = SHX0_1
  SHX0_2(SHX1_2)
  SHX0_2 = pairs
  SHX1_2 = SHX1_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = DeleteEntity
    SHX7_2 = SHX5_2
    SHX6_2(SHX7_2)
  end
  SHX0_2 = table
  SHX0_2 = SHX0_2.clear
  SHX1_2 = SHX1_1
  SHX0_2(SHX1_2)
  SHX0_2 = RenderScriptCams
  SHX1_2 = false
  SHX2_2 = false
  SHX3_2 = 0
  SHX4_2 = false
  SHX5_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = SetCamActive
  SHX1_2 = SHX2_1
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = DestroyCam
  SHX1_2 = SHX2_1
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = 0
  SHX2_1 = SHX0_2
  SHX0_2 = SetEntityCoords
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX3_1.x
  SHX3_2 = SHX3_1.y
  SHX4_2 = SHX3_1.z
  SHX5_2 = true
  SHX6_2 = false
  SHX7_2 = false
  SHX8_2 = false
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX0_2 = FreezeEntityPosition
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SetEntityVisible
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = true
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.showAllDisplays
  SHX1_2 = "testbeds"
  SHX0_2(SHX1_2)
end
SHX9_1 = CMG
SHX9_1 = SHX9_1.registerDevMenuItems
SHX10_1 = "Testbeds"
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "Empty Testbed"
  SHX2_2 = "Creates a test bed with no vehicles"
  SHX3_2 = true
  function SHX4_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
    if SHX2_3 then
      SHX3_3 = SHX7_1
      SHX4_3 = vector3
      SHX5_3 = -1556.5574951172
      SHX6_3 = -2741.05859375
      SHX7_3 = 23.179716110229
      SHX4_3 = SHX4_3(SHX5_3, SHX6_3, SHX7_3)
      SHX5_3 = vector3
      SHX6_3 = -14.400593757629
      SHX7_3 = -4.4073442495574E-7
      SHX8_3 = -43.419734954834
      SHX5_3, SHX6_3, SHX7_3, SHX8_3 = SHX5_3(SHX6_3, SHX7_3, SHX8_3)
      SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "View Vehicles (CMG)"
  SHX2_2 = "Creates a test bed of hardcoded spawncodes from CMG"
  SHX3_2 = true
  function SHX4_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3, SHX27_3, SHX28_3, SHX29_3, SHX30_3, SHX31_3, SHX32_3, SHX33_3, SHX34_3, SHX35_3, SHX36_3, SHX37_3, SHX38_3, SHX39_3, SHX40_3, SHX41_3, SHX42_3, SHX43_3, SHX44_3, SHX45_3, SHX46_3, SHX47_3, SHX48_3, SHX49_3, SHX50_3, SHX51_3, SHX52_3, SHX53_3, SHX54_3, SHX55_3
    if SHX2_3 then
      SHX3_3 = SHX5_1
      SHX4_3 = vector3
      SHX5_3 = -1545.5848388672
      SHX6_3 = -2728.4724121094
      SHX7_3 = 13.94452381134
      SHX4_3 = SHX4_3(SHX5_3, SHX6_3, SHX7_3)
      SHX5_3 = {}
      SHX6_3 = -591656107
      SHX7_3 = -1009308385
      SHX8_3 = 934775262
      SHX9_3 = -73532343
      SHX10_3 = 1279054538
      SHX11_3 = -1987080451
      SHX12_3 = 1046541171
      SHX13_3 = -356772413
      SHX14_3 = 2112115937
      SHX15_3 = 1744402006
      SHX16_3 = -338573826
      SHX17_3 = -1440073795
      SHX18_3 = -581602444
      SHX19_3 = -1110613433
      SHX20_3 = -1618641119
      SHX21_3 = -686361117
      SHX22_3 = 1180067545
      SHX23_3 = -1716497127
      SHX24_3 = 176767793
      SHX25_3 = -1792104722
      SHX26_3 = -1517696258
      SHX27_3 = 1423182998
      SHX28_3 = 541729238
      SHX29_3 = 361960151
      SHX30_3 = 1318035284
      SHX31_3 = -546692846
      SHX32_3 = 191208755
      SHX33_3 = -1698524521
      SHX34_3 = 268464514
      SHX35_3 = 1772961451
      SHX36_3 = -959123330
      SHX37_3 = -1392982098
      SHX38_3 = 118843548
      SHX39_3 = -1491226698
      SHX40_3 = -472912397
      SHX41_3 = -1998846971
      SHX42_3 = 1564933974
      SHX43_3 = 1792287121
      SHX44_3 = -119718915
      SHX45_3 = -1148674271
      SHX46_3 = 1978837259
      SHX47_3 = -1998868072
      SHX48_3 = 323059884
      SHX49_3 = -1663771234
      SHX50_3 = 1473119040
      SHX51_3 = -288742714
      SHX52_3 = -1750300292
      SHX53_3 = -1758624382
      SHX54_3 = -1289689034
      SHX55_3 = 1268711383
      SHX5_3[1] = SHX6_3
      SHX5_3[2] = SHX7_3
      SHX5_3[3] = SHX8_3
      SHX5_3[4] = SHX9_3
      SHX5_3[5] = SHX10_3
      SHX5_3[6] = SHX11_3
      SHX5_3[7] = SHX12_3
      SHX5_3[8] = SHX13_3
      SHX5_3[9] = SHX14_3
      SHX5_3[10] = SHX15_3
      SHX5_3[11] = SHX16_3
      SHX5_3[12] = SHX17_3
      SHX5_3[13] = SHX18_3
      SHX5_3[14] = SHX19_3
      SHX5_3[15] = SHX20_3
      SHX5_3[16] = SHX21_3
      SHX5_3[17] = SHX22_3
      SHX5_3[18] = SHX23_3
      SHX5_3[19] = SHX24_3
      SHX5_3[20] = SHX25_3
      SHX5_3[21] = SHX26_3
      SHX5_3[22] = SHX27_3
      SHX5_3[23] = SHX28_3
      SHX5_3[24] = SHX29_3
      SHX5_3[25] = SHX30_3
      SHX5_3[26] = SHX31_3
      SHX5_3[27] = SHX32_3
      SHX5_3[28] = SHX33_3
      SHX5_3[29] = SHX34_3
      SHX5_3[30] = SHX35_3
      SHX5_3[31] = SHX36_3
      SHX5_3[32] = SHX37_3
      SHX5_3[33] = SHX38_3
      SHX5_3[34] = SHX39_3
      SHX5_3[35] = SHX40_3
      SHX5_3[36] = SHX41_3
      SHX5_3[37] = SHX42_3
      SHX5_3[38] = SHX43_3
      SHX5_3[39] = SHX44_3
      SHX5_3[40] = SHX45_3
      SHX5_3[41] = SHX46_3
      SHX5_3[42] = SHX47_3
      SHX5_3[43] = SHX48_3
      SHX5_3[44] = SHX49_3
      SHX5_3[45] = SHX50_3
      SHX5_3[46] = SHX51_3
      SHX5_3[47] = SHX52_3
      SHX5_3[48] = SHX53_3
      SHX5_3[49] = SHX54_3
      SHX5_3[50] = SHX55_3
      SHX6_3 = 1867789750
      SHX7_3 = -781483748
      SHX8_3 = 242633659
      SHX9_3 = -277924201
      SHX10_3 = -1531754134
      SHX11_3 = -957772333
      SHX12_3 = -1075805112
      SHX13_3 = -53577316
      SHX14_3 = 67014652
      SHX15_3 = -184685184
      SHX16_3 = 309337572
      SHX5_3[51] = SHX6_3
      SHX5_3[52] = SHX7_3
      SHX5_3[53] = SHX8_3
      SHX5_3[54] = SHX9_3
      SHX5_3[55] = SHX10_3
      SHX5_3[56] = SHX11_3
      SHX5_3[57] = SHX12_3
      SHX5_3[58] = SHX13_3
      SHX5_3[59] = SHX14_3
      SHX5_3[60] = SHX15_3
      SHX5_3[61] = SHX16_3
      SHX6_3 = false
      SHX3_3(SHX4_3, SHX5_3, SHX6_3)
      SHX3_3 = SHX7_1
      SHX4_3 = vector3
      SHX5_3 = -1556.5574951172
      SHX6_3 = -2741.05859375
      SHX7_3 = 23.179716110229
      SHX4_3 = SHX4_3(SHX5_3, SHX6_3, SHX7_3)
      SHX5_3 = vector3
      SHX6_3 = -14.400593757629
      SHX7_3 = -4.4073442495574E-7
      SHX8_3 = -43.419734954834
      SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3, SHX27_3, SHX28_3, SHX29_3, SHX30_3, SHX31_3, SHX32_3, SHX33_3, SHX34_3, SHX35_3, SHX36_3, SHX37_3, SHX38_3, SHX39_3, SHX40_3, SHX41_3, SHX42_3, SHX43_3, SHX44_3, SHX45_3, SHX46_3, SHX47_3, SHX48_3, SHX49_3, SHX50_3, SHX51_3, SHX52_3, SHX53_3, SHX54_3, SHX55_3 = SHX5_3(SHX6_3, SHX7_3, SHX8_3)
      SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3, SHX27_3, SHX28_3, SHX29_3, SHX30_3, SHX31_3, SHX32_3, SHX33_3, SHX34_3, SHX35_3, SHX36_3, SHX37_3, SHX38_3, SHX39_3, SHX40_3, SHX41_3, SHX42_3, SHX43_3, SHX44_3, SHX45_3, SHX46_3, SHX47_3, SHX48_3, SHX49_3, SHX50_3, SHX51_3, SHX52_3, SHX53_3, SHX54_3, SHX55_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "View Vehicles (GTA)"
  SHX2_2 = "Creates a test bed of hardcoded spawncodes from GTA"
  SHX3_2 = true
  function SHX4_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3, SHX27_3, SHX28_3, SHX29_3, SHX30_3, SHX31_3, SHX32_3, SHX33_3, SHX34_3, SHX35_3, SHX36_3, SHX37_3, SHX38_3, SHX39_3, SHX40_3, SHX41_3, SHX42_3, SHX43_3, SHX44_3, SHX45_3, SHX46_3, SHX47_3, SHX48_3, SHX49_3, SHX50_3, SHX51_3, SHX52_3, SHX53_3, SHX54_3, SHX55_3
    if SHX2_3 then
      SHX3_3 = SHX5_1
      SHX4_3 = vector3
      SHX5_3 = -1545.5848388672
      SHX6_3 = -2728.4724121094
      SHX7_3 = 13.94452381134
      SHX4_3 = SHX4_3(SHX5_3, SHX6_3, SHX7_3)
      SHX5_3 = {}
      SHX6_3 = -1216765807
      SHX7_3 = -1041692462
      SHX8_3 = -1696146015
      SHX9_3 = -1311154784
      SHX10_3 = -1291952903
      SHX11_3 = -591610296
      SHX12_3 = 418536135
      SHX13_3 = -1297672541
      SHX14_3 = -1372848492
      SHX15_3 = -142942670
      SHX16_3 = -433375717
      SHX17_3 = 1034187331
      SHX18_3 = 1987142870
      SHX19_3 = -1758137366
      SHX20_3 = -1934452204
      SHX21_3 = 970598228
      SHX22_3 = 1663218586
      SHX23_3 = 972671128
      SHX24_3 = 338562499
      SHX25_3 = -1622444098
      SHX26_3 = -1403128555
      SHX27_3 = -1479664699
      SHX28_3 = -1130810103
      SHX29_3 = -1842748181
      SHX30_3 = -1089039904
      SHX31_3 = 75131841
      SHX32_3 = 886934177
      SHX33_3 = -310465116
      SHX34_3 = -431692672
      SHX35_3 = -1450650718
      SHX36_3 = 1645267888
      SHX37_3 = -14495224
      SHX38_3 = 788045382
      SHX39_3 = -295689028
      SHX40_3 = 464687292
      SHX41_3 = 1531094468
      SHX42_3 = 1762279763
      SHX43_3 = 740289177
      SHX44_3 = -1242608589
      SHX45_3 = 1373123368
      SHX46_3 = 1777363799
      SHX47_3 = 758895617
      SHX48_3 = 633712403
      SHX49_3 = -344943009
      SHX50_3 = 2006918058
      SHX51_3 = -2030171296
      SHX52_3 = 1682114128
      SHX53_3 = -2119578145
      SHX54_3 = -1790546981
      SHX55_3 = -2039755226
      SHX5_3[1] = SHX6_3
      SHX5_3[2] = SHX7_3
      SHX5_3[3] = SHX8_3
      SHX5_3[4] = SHX9_3
      SHX5_3[5] = SHX10_3
      SHX5_3[6] = SHX11_3
      SHX5_3[7] = SHX12_3
      SHX5_3[8] = SHX13_3
      SHX5_3[9] = SHX14_3
      SHX5_3[10] = SHX15_3
      SHX5_3[11] = SHX16_3
      SHX5_3[12] = SHX17_3
      SHX5_3[13] = SHX18_3
      SHX5_3[14] = SHX19_3
      SHX5_3[15] = SHX20_3
      SHX5_3[16] = SHX21_3
      SHX5_3[17] = SHX22_3
      SHX5_3[18] = SHX23_3
      SHX5_3[19] = SHX24_3
      SHX5_3[20] = SHX25_3
      SHX5_3[21] = SHX26_3
      SHX5_3[22] = SHX27_3
      SHX5_3[23] = SHX28_3
      SHX5_3[24] = SHX29_3
      SHX5_3[25] = SHX30_3
      SHX5_3[26] = SHX31_3
      SHX5_3[27] = SHX32_3
      SHX5_3[28] = SHX33_3
      SHX5_3[29] = SHX34_3
      SHX5_3[30] = SHX35_3
      SHX5_3[31] = SHX36_3
      SHX5_3[32] = SHX37_3
      SHX5_3[33] = SHX38_3
      SHX5_3[34] = SHX39_3
      SHX5_3[35] = SHX40_3
      SHX5_3[36] = SHX41_3
      SHX5_3[37] = SHX42_3
      SHX5_3[38] = SHX43_3
      SHX5_3[39] = SHX44_3
      SHX5_3[40] = SHX45_3
      SHX5_3[41] = SHX46_3
      SHX5_3[42] = SHX47_3
      SHX5_3[43] = SHX48_3
      SHX5_3[44] = SHX49_3
      SHX5_3[45] = SHX50_3
      SHX5_3[46] = SHX51_3
      SHX5_3[47] = SHX52_3
      SHX5_3[48] = SHX53_3
      SHX5_3[49] = SHX54_3
      SHX5_3[50] = SHX55_3
      SHX6_3 = -192961924
      SHX7_3 = 600450546
      SHX8_3 = 1051415893
      SHX9_3 = -1660945322
      SHX10_3 = -2124201592
      SHX11_3 = 525509695
      SHX12_3 = -1943285540
      SHX13_3 = 61200530
      SHX14_3 = -667151410
      SHX15_3 = 234062309
      SHX16_3 = -1683328900
      SHX17_3 = -2033222435
      SHX18_3 = 101905590
      SHX19_3 = 579912970
      SHX20_3 = 1663810515
      SHX5_3[51] = SHX6_3
      SHX5_3[52] = SHX7_3
      SHX5_3[53] = SHX8_3
      SHX5_3[54] = SHX9_3
      SHX5_3[55] = SHX10_3
      SHX5_3[56] = SHX11_3
      SHX5_3[57] = SHX12_3
      SHX5_3[58] = SHX13_3
      SHX5_3[59] = SHX14_3
      SHX5_3[60] = SHX15_3
      SHX5_3[61] = SHX16_3
      SHX5_3[62] = SHX17_3
      SHX5_3[63] = SHX18_3
      SHX5_3[64] = SHX19_3
      SHX5_3[65] = SHX20_3
      SHX6_3 = false
      SHX3_3(SHX4_3, SHX5_3, SHX6_3)
      SHX3_3 = SHX7_1
      SHX4_3 = vector3
      SHX5_3 = -1556.5574951172
      SHX6_3 = -2741.05859375
      SHX7_3 = 23.179716110229
      SHX4_3 = SHX4_3(SHX5_3, SHX6_3, SHX7_3)
      SHX5_3 = vector3
      SHX6_3 = -14.400593757629
      SHX7_3 = -4.4073442495574E-7
      SHX8_3 = -43.419734954834
      SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3, SHX27_3, SHX28_3, SHX29_3, SHX30_3, SHX31_3, SHX32_3, SHX33_3, SHX34_3, SHX35_3, SHX36_3, SHX37_3, SHX38_3, SHX39_3, SHX40_3, SHX41_3, SHX42_3, SHX43_3, SHX44_3, SHX45_3, SHX46_3, SHX47_3, SHX48_3, SHX49_3, SHX50_3, SHX51_3, SHX52_3, SHX53_3, SHX54_3, SHX55_3 = SHX5_3(SHX6_3, SHX7_3, SHX8_3)
      SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3, SHX27_3, SHX28_3, SHX29_3, SHX30_3, SHX31_3, SHX32_3, SHX33_3, SHX34_3, SHX35_3, SHX36_3, SHX37_3, SHX38_3, SHX39_3, SHX40_3, SHX41_3, SHX42_3, SHX43_3, SHX44_3, SHX45_3, SHX46_3, SHX47_3, SHX48_3, SHX49_3, SHX50_3, SHX51_3, SHX52_3, SHX53_3, SHX54_3, SHX55_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "View Peds (CMG)"
  SHX2_2 = "Creates a test bed of hardcoded components from CMG"
  SHX3_2 = true
  function SHX4_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3
    if SHX2_3 then
      SHX3_3 = SHX6_1
      SHX4_3 = vector3
      SHX5_3 = -1545.5848388672
      SHX6_3 = -2728.4724121094
      SHX7_3 = 13.94452381134
      SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3 = SHX4_3(SHX5_3, SHX6_3, SHX7_3)
      SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
      SHX3_3 = SHX7_1
      SHX4_3 = vector3
      SHX5_3 = -1556.5574951172
      SHX6_3 = -2741.05859375
      SHX7_3 = 23.179716110229
      SHX4_3 = SHX4_3(SHX5_3, SHX6_3, SHX7_3)
      SHX5_3 = vector3
      SHX6_3 = -14.400593757629
      SHX7_3 = -4.4073442495574E-7
      SHX8_3 = -43.419734954834
      SHX5_3, SHX6_3, SHX7_3, SHX8_3 = SHX5_3(SHX6_3, SHX7_3, SHX8_3)
      SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Button
  SHX1_2 = "View Vehicles & Peds (CMG)"
  SHX2_2 = "Creates a test bed of hardcoded components from CMG"
  SHX3_2 = true
  function SHX4_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3, SHX27_3, SHX28_3, SHX29_3, SHX30_3, SHX31_3, SHX32_3, SHX33_3, SHX34_3, SHX35_3, SHX36_3, SHX37_3, SHX38_3, SHX39_3, SHX40_3, SHX41_3, SHX42_3, SHX43_3, SHX44_3, SHX45_3, SHX46_3, SHX47_3, SHX48_3, SHX49_3, SHX50_3, SHX51_3, SHX52_3, SHX53_3, SHX54_3, SHX55_3
    if SHX2_3 then
      SHX3_3 = SHX5_1
      SHX4_3 = vector3
      SHX5_3 = -1545.5848388672
      SHX6_3 = -2728.4724121094
      SHX7_3 = 13.94452381134
      SHX4_3 = SHX4_3(SHX5_3, SHX6_3, SHX7_3)
      SHX5_3 = {}
      SHX6_3 = -591656107
      SHX7_3 = -1009308385
      SHX8_3 = 934775262
      SHX9_3 = -73532343
      SHX10_3 = 1279054538
      SHX11_3 = -1987080451
      SHX12_3 = 1046541171
      SHX13_3 = -356772413
      SHX14_3 = 2112115937
      SHX15_3 = 1744402006
      SHX16_3 = -338573826
      SHX17_3 = -1440073795
      SHX18_3 = -581602444
      SHX19_3 = -1110613433
      SHX20_3 = -1618641119
      SHX21_3 = -686361117
      SHX22_3 = 1180067545
      SHX23_3 = -1716497127
      SHX24_3 = 176767793
      SHX25_3 = -1792104722
      SHX26_3 = -1517696258
      SHX27_3 = 1423182998
      SHX28_3 = 541729238
      SHX29_3 = 361960151
      SHX30_3 = 1318035284
      SHX31_3 = -546692846
      SHX32_3 = 191208755
      SHX33_3 = -1698524521
      SHX34_3 = 268464514
      SHX35_3 = 1772961451
      SHX36_3 = -959123330
      SHX37_3 = -1392982098
      SHX38_3 = 118843548
      SHX39_3 = -1491226698
      SHX40_3 = -472912397
      SHX41_3 = -1998846971
      SHX42_3 = 1564933974
      SHX43_3 = 1792287121
      SHX44_3 = -119718915
      SHX45_3 = -1148674271
      SHX46_3 = 1978837259
      SHX47_3 = -1998868072
      SHX48_3 = 323059884
      SHX49_3 = -1663771234
      SHX50_3 = 1473119040
      SHX51_3 = -288742714
      SHX52_3 = -1750300292
      SHX53_3 = -1758624382
      SHX54_3 = -1289689034
      SHX55_3 = 1268711383
      SHX5_3[1] = SHX6_3
      SHX5_3[2] = SHX7_3
      SHX5_3[3] = SHX8_3
      SHX5_3[4] = SHX9_3
      SHX5_3[5] = SHX10_3
      SHX5_3[6] = SHX11_3
      SHX5_3[7] = SHX12_3
      SHX5_3[8] = SHX13_3
      SHX5_3[9] = SHX14_3
      SHX5_3[10] = SHX15_3
      SHX5_3[11] = SHX16_3
      SHX5_3[12] = SHX17_3
      SHX5_3[13] = SHX18_3
      SHX5_3[14] = SHX19_3
      SHX5_3[15] = SHX20_3
      SHX5_3[16] = SHX21_3
      SHX5_3[17] = SHX22_3
      SHX5_3[18] = SHX23_3
      SHX5_3[19] = SHX24_3
      SHX5_3[20] = SHX25_3
      SHX5_3[21] = SHX26_3
      SHX5_3[22] = SHX27_3
      SHX5_3[23] = SHX28_3
      SHX5_3[24] = SHX29_3
      SHX5_3[25] = SHX30_3
      SHX5_3[26] = SHX31_3
      SHX5_3[27] = SHX32_3
      SHX5_3[28] = SHX33_3
      SHX5_3[29] = SHX34_3
      SHX5_3[30] = SHX35_3
      SHX5_3[31] = SHX36_3
      SHX5_3[32] = SHX37_3
      SHX5_3[33] = SHX38_3
      SHX5_3[34] = SHX39_3
      SHX5_3[35] = SHX40_3
      SHX5_3[36] = SHX41_3
      SHX5_3[37] = SHX42_3
      SHX5_3[38] = SHX43_3
      SHX5_3[39] = SHX44_3
      SHX5_3[40] = SHX45_3
      SHX5_3[41] = SHX46_3
      SHX5_3[42] = SHX47_3
      SHX5_3[43] = SHX48_3
      SHX5_3[44] = SHX49_3
      SHX5_3[45] = SHX50_3
      SHX5_3[46] = SHX51_3
      SHX5_3[47] = SHX52_3
      SHX5_3[48] = SHX53_3
      SHX5_3[49] = SHX54_3
      SHX5_3[50] = SHX55_3
      SHX6_3 = 1867789750
      SHX7_3 = -781483748
      SHX8_3 = 242633659
      SHX9_3 = -277924201
      SHX10_3 = -1531754134
      SHX11_3 = -957772333
      SHX12_3 = -1075805112
      SHX13_3 = -53577316
      SHX14_3 = 67014652
      SHX15_3 = -184685184
      SHX16_3 = 309337572
      SHX5_3[51] = SHX6_3
      SHX5_3[52] = SHX7_3
      SHX5_3[53] = SHX8_3
      SHX5_3[54] = SHX9_3
      SHX5_3[55] = SHX10_3
      SHX5_3[56] = SHX11_3
      SHX5_3[57] = SHX12_3
      SHX5_3[58] = SHX13_3
      SHX5_3[59] = SHX14_3
      SHX5_3[60] = SHX15_3
      SHX5_3[61] = SHX16_3
      SHX6_3 = true
      SHX3_3(SHX4_3, SHX5_3, SHX6_3)
      SHX3_3 = SHX7_1
      SHX4_3 = vector3
      SHX5_3 = -1556.5574951172
      SHX6_3 = -2741.05859375
      SHX7_3 = 23.179716110229
      SHX4_3 = SHX4_3(SHX5_3, SHX6_3, SHX7_3)
      SHX5_3 = vector3
      SHX6_3 = -14.400593757629
      SHX7_3 = -4.4073442495574E-7
      SHX8_3 = -43.419734954834
      SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3, SHX27_3, SHX28_3, SHX29_3, SHX30_3, SHX31_3, SHX32_3, SHX33_3, SHX34_3, SHX35_3, SHX36_3, SHX37_3, SHX38_3, SHX39_3, SHX40_3, SHX41_3, SHX42_3, SHX43_3, SHX44_3, SHX45_3, SHX46_3, SHX47_3, SHX48_3, SHX49_3, SHX50_3, SHX51_3, SHX52_3, SHX53_3, SHX54_3, SHX55_3 = SHX5_3(SHX6_3, SHX7_3, SHX8_3)
      SHX3_3(SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3, SHX27_3, SHX28_3, SHX29_3, SHX30_3, SHX31_3, SHX32_3, SHX33_3, SHX34_3, SHX35_3, SHX36_3, SHX37_3, SHX38_3, SHX39_3, SHX40_3, SHX41_3, SHX42_3, SHX43_3, SHX44_3, SHX45_3, SHX46_3, SHX47_3, SHX48_3, SHX49_3, SHX50_3, SHX51_3, SHX52_3, SHX53_3, SHX54_3, SHX55_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
end
SHX9_1(SHX10_1, SHX11_1)
SHX9_1 = CMG
SHX9_1 = SHX9_1.registerDevMenuThread
SHX10_1 = "Testbeds"
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX2_1
  if 0 == SHX0_2 then
    return
  end
  SHX0_2 = drawNativeNotification
  SHX1_2 = "Press ~INPUT_CONTEXT~ to exit the test bed."
  SHX0_2(SHX1_2)
  SHX0_2 = IsControlJustPressed
  SHX1_2 = 0
  SHX2_2 = 51
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = SHX8_1
    SHX0_2()
  end
end
SHX9_1(SHX10_1, SHX11_1)
