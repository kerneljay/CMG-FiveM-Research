-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1
SHX0_1 = false
SHX1_1 = 0
SHX2_1 = {}
SHX3_1 = {}
SHX4_1 = CMG
SHX4_1 = SHX4_1.uiRegisterCallback
SHX5_1 = "updateSkin"
function SHX6_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2, SHX37_2, SHX38_2
  SHX1_2 = tonumber
  SHX2_2 = SHX0_2.dad
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = 0
  end
  SHX2_2 = tonumber
  SHX3_2 = SHX0_2.mum
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    SHX2_2 = 0
  end
  SHX3_2 = tonumber
  SHX4_2 = SHX0_2.dadmumpercent
  SHX3_2 = SHX3_2(SHX4_2)
  if not SHX3_2 then
    SHX3_2 = 0
  end
  SHX4_2 = tonumber
  SHX5_2 = SHX0_2.skin
  SHX4_2 = SHX4_2(SHX5_2)
  if not SHX4_2 then
    SHX4_2 = 0
  end
  SHX5_2 = tonumber
  SHX6_2 = SHX0_2.eyecolor
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = tonumber
  SHX7_2 = SHX0_2.acne
  SHX6_2 = SHX6_2(SHX7_2)
  SHX7_2 = tonumber
  SHX8_2 = SHX0_2.skinproblem
  SHX7_2 = SHX7_2(SHX8_2)
  SHX8_2 = tonumber
  SHX9_2 = SHX0_2.freckle
  SHX8_2 = SHX8_2(SHX9_2)
  SHX9_2 = tonumber
  SHX10_2 = SHX0_2.wrinkle
  SHX9_2 = SHX9_2(SHX10_2)
  SHX10_2 = tonumber
  SHX11_2 = SHX0_2.wrinkleopacity
  SHX10_2 = SHX10_2(SHX11_2)
  if not SHX10_2 then
    SHX10_2 = 10
  end
  SHX11_2 = tonumber
  SHX12_2 = SHX0_2.hair
  SHX11_2 = SHX11_2(SHX12_2)
  SHX12_2 = tonumber
  SHX13_2 = SHX0_2.haircolor
  SHX12_2 = SHX12_2(SHX13_2)
  if not SHX12_2 then
    SHX12_2 = 0
  end
  SHX13_2 = tonumber
  SHX14_2 = SHX0_2.hairtint
  SHX13_2 = SHX13_2(SHX14_2)
  if not SHX13_2 then
    SHX13_2 = 0
  end
  SHX14_2 = tonumber
  SHX15_2 = SHX0_2.eyebrow
  SHX14_2 = SHX14_2(SHX15_2)
  SHX15_2 = tonumber
  SHX16_2 = SHX0_2.eyebrowopacity
  SHX15_2 = SHX15_2(SHX16_2)
  if not SHX15_2 then
    SHX15_2 = 10
  end
  SHX16_2 = tonumber
  SHX17_2 = SHX0_2.beard
  SHX16_2 = SHX16_2(SHX17_2)
  SHX17_2 = tonumber
  SHX18_2 = SHX0_2.beardopacity
  SHX17_2 = SHX17_2(SHX18_2)
  if not SHX17_2 then
    SHX17_2 = 10
  end
  SHX18_2 = tonumber
  SHX19_2 = SHX0_2.beardcolor
  SHX18_2 = SHX18_2(SHX19_2)
  SHX19_2 = tonumber
  SHX20_2 = SHX0_2.lipstick
  SHX19_2 = SHX19_2(SHX20_2)
  SHX20_2 = tonumber
  SHX21_2 = SHX0_2.lipstickcolour
  SHX20_2 = SHX20_2(SHX21_2)
  SHX21_2 = tonumber
  SHX22_2 = SHX0_2.eyeshadow
  SHX21_2 = SHX21_2(SHX22_2)
  SHX22_2 = tonumber
  SHX23_2 = SHX0_2.eyeshadowcolour
  SHX22_2 = SHX22_2(SHX23_2)
  SHX23_2 = tonumber
  SHX24_2 = SHX0_2.facepaints
  SHX23_2 = SHX23_2(SHX24_2)
  SHX24_2 = tonumber
  SHX25_2 = SHX0_2.facepaintscolour
  SHX24_2 = SHX24_2(SHX25_2)
  SHX25_2 = CMG
  SHX25_2 = SHX25_2.loadModel
  SHX26_2 = 1885233650
  SHX25_2(SHX26_2)
  SHX25_2 = CMG
  SHX25_2 = SHX25_2.loadModel
  SHX26_2 = -1667301416
  SHX25_2(SHX26_2)
  SHX25_2 = PlayerPedId
  SHX25_2 = SHX25_2()
  SHX26_2 = SHX3_2 / 10.0
  SHX27_2 = SetPedHeadBlendData
  SHX28_2 = SHX25_2
  SHX29_2 = SHX1_2
  SHX30_2 = SHX2_2
  SHX31_2 = 0
  SHX32_2 = SHX4_2
  SHX33_2 = SHX4_2
  SHX34_2 = SHX4_2
  SHX35_2 = SHX26_2
  SHX36_2 = SHX26_2
  SHX37_2 = 0.0
  SHX38_2 = false
  SHX27_2(SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2, SHX37_2, SHX38_2)
  if SHX5_2 then
    SHX27_2 = SetPedEyeColor
    SHX28_2 = SHX25_2
    SHX29_2 = SHX5_2
    SHX27_2(SHX28_2, SHX29_2)
  end
  if 0 == SHX6_2 then
    SHX27_2 = SetPedHeadOverlay
    SHX28_2 = SHX25_2
    SHX29_2 = 0
    SHX30_2 = SHX6_2
    SHX31_2 = 0.0
    SHX27_2(SHX28_2, SHX29_2, SHX30_2, SHX31_2)
  elseif SHX6_2 then
    SHX27_2 = SetPedHeadOverlay
    SHX28_2 = SHX25_2
    SHX29_2 = 0
    SHX30_2 = SHX6_2
    SHX31_2 = 1.0
    SHX27_2(SHX28_2, SHX29_2, SHX30_2, SHX31_2)
  end
  if SHX7_2 then
    SHX27_2 = SetPedHeadOverlay
    SHX28_2 = SHX25_2
    SHX29_2 = 6
    SHX30_2 = SHX7_2
    SHX31_2 = 1.0
    SHX27_2(SHX28_2, SHX29_2, SHX30_2, SHX31_2)
  end
  if 0 == SHX8_2 then
    SHX27_2 = SetPedHeadOverlay
    SHX28_2 = SHX25_2
    SHX29_2 = 9
    SHX30_2 = SHX8_2
    SHX31_2 = 0.0
    SHX27_2(SHX28_2, SHX29_2, SHX30_2, SHX31_2)
  elseif SHX8_2 then
    SHX27_2 = SetPedHeadOverlay
    SHX28_2 = SHX25_2
    SHX29_2 = 9
    SHX30_2 = SHX8_2
    SHX31_2 = 1.0
    SHX27_2(SHX28_2, SHX29_2, SHX30_2, SHX31_2)
  end
  if SHX9_2 then
    SHX27_2 = SetPedHeadOverlay
    SHX28_2 = SHX25_2
    SHX29_2 = 3
    SHX30_2 = SHX9_2
    SHX31_2 = SHX10_2 * 0.1
    SHX27_2(SHX28_2, SHX29_2, SHX30_2, SHX31_2)
  end
  if SHX11_2 then
    SHX27_2 = SetPedComponentVariation
    SHX28_2 = SHX25_2
    SHX29_2 = 2
    SHX30_2 = SHX11_2
    SHX31_2 = 0
    SHX32_2 = 2
    SHX27_2(SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2)
  end
  SHX27_2 = SetPedHairColor
  SHX28_2 = SHX25_2
  SHX29_2 = SHX12_2
  SHX30_2 = SHX13_2
  SHX27_2(SHX28_2, SHX29_2, SHX30_2)
  if SHX14_2 then
    SHX27_2 = SetPedHeadOverlay
    SHX28_2 = SHX25_2
    SHX29_2 = 2
    SHX30_2 = SHX14_2
    SHX31_2 = SHX15_2 * 0.1
    SHX27_2(SHX28_2, SHX29_2, SHX30_2, SHX31_2)
  end
  if SHX16_2 then
    SHX27_2 = SetPedHeadOverlay
    SHX28_2 = SHX25_2
    SHX29_2 = 1
    SHX30_2 = SHX16_2
    SHX31_2 = SHX17_2 * 0.1
    SHX27_2(SHX28_2, SHX29_2, SHX30_2, SHX31_2)
  end
  if SHX18_2 then
    SHX27_2 = SetPedHeadOverlayColor
    SHX28_2 = SHX25_2
    SHX29_2 = 1
    SHX30_2 = 1
    SHX31_2 = SHX18_2
    SHX32_2 = SHX18_2
    SHX27_2(SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2)
    SHX27_2 = SetPedHeadOverlayColor
    SHX28_2 = SHX25_2
    SHX29_2 = 2
    SHX30_2 = 1
    SHX31_2 = SHX18_2
    SHX32_2 = SHX18_2
    SHX27_2(SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2)
  end
  if SHX23_2 then
    SHX27_2 = SetPedHeadOverlay
    SHX28_2 = PlayerPedId
    SHX28_2 = SHX28_2()
    SHX29_2 = 5
    SHX30_2 = SHX23_2
    if SHX23_2 > 0 then
      SHX31_2 = 1.0
      if SHX31_2 then
        goto SHX_LABEL_243
      end
    end
    SHX31_2 = 0.0
    -- [FIX IF ERROR] Move ::SHX_LABEL_243:: outside nested blocks until all 'goto SHX_LABEL_243' can see it
    ::SHX_LABEL_243::
    SHX27_2(SHX28_2, SHX29_2, SHX30_2, SHX31_2)
  end
  if SHX24_2 then
    SHX27_2 = SetPedHeadOverlayColor
    SHX28_2 = PlayerPedId
    SHX28_2 = SHX28_2()
    SHX29_2 = 5
    SHX30_2 = 2
    SHX31_2 = SHX24_2
    SHX32_2 = SHX24_2
    SHX27_2(SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2)
  end
  SHX27_2 = 1.0
  if 0 == SHX21_2 then
    SHX27_2 = 0.0
  end
  if SHX21_2 then
    SHX28_2 = SetPedHeadOverlay
    SHX29_2 = SHX25_2
    SHX30_2 = 4
    SHX31_2 = SHX21_2
    SHX32_2 = SHX27_2
    SHX28_2(SHX29_2, SHX30_2, SHX31_2, SHX32_2)
  end
  SHX28_2 = 1.0
  if 0 == SHX19_2 then
    SHX28_2 = 0.0
  end
  if SHX19_2 then
    SHX29_2 = SetPedHeadOverlay
    SHX30_2 = SHX25_2
    SHX31_2 = 8
    SHX32_2 = SHX19_2
    SHX33_2 = SHX28_2
    SHX29_2(SHX30_2, SHX31_2, SHX32_2, SHX33_2)
  end
  if SHX22_2 then
    SHX29_2 = SetPedHeadOverlayColor
    SHX30_2 = SHX25_2
    SHX31_2 = 4
    SHX32_2 = 1
    SHX33_2 = SHX22_2
    SHX34_2 = SHX22_2
    SHX29_2(SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2)
  end
  if SHX20_2 then
    SHX29_2 = SetPedHeadOverlayColor
    SHX30_2 = SHX25_2
    SHX31_2 = 8
    SHX32_2 = 1
    SHX33_2 = SHX20_2
    SHX34_2 = SHX20_2
    SHX29_2(SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2)
  end
  SHX29_2 = SetPedComponentVariation
  SHX30_2 = SHX25_2
  SHX31_2 = 1
  SHX32_2 = 0
  SHX33_2 = 0
  SHX34_2 = 2
  SHX29_2(SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2)
  SHX29_2 = SetModelAsNoLongerNeeded
  SHX30_2 = 1885233650
  SHX29_2(SHX30_2)
  SHX29_2 = SetModelAsNoLongerNeeded
  SHX30_2 = 1885233650
  SHX29_2(SHX30_2)
  SHX29_2 = {}
  SHX29_2.dad = SHX1_2
  SHX29_2.mum = SHX2_2
  SHX29_2.skin = SHX4_2
  SHX29_2.dadmumpercent = SHX3_2
  SHX29_2.eyecolor = SHX5_2
  SHX29_2.acne = SHX6_2
  SHX29_2.skinproblem = SHX7_2
  SHX29_2.freckle = SHX8_2
  SHX29_2.wrinkle = SHX9_2
  SHX29_2.wrinkleopacity = SHX10_2
  SHX29_2.hair = SHX11_2
  SHX29_2.haircolor = SHX12_2
  SHX29_2.hairtint = SHX13_2
  SHX29_2.eyebrow = SHX14_2
  SHX29_2.eyebrowopacity = SHX15_2
  SHX29_2.beard = SHX16_2
  SHX29_2.beardopacity = SHX17_2
  SHX29_2.beardcolor = SHX18_2
  SHX29_2.eyeshadow = SHX21_2
  SHX29_2.lipstick = SHX19_2
  SHX29_2.eyeshadowcolour = SHX22_2
  SHX29_2.lipstickcolour = SHX20_2
  SHX29_2.facepaints = SHX23_2
  SHX29_2.facepaintscolour = SHX24_2
  SHX30_2 = CMG
  SHX30_2 = SHX30_2.getModelGender
  SHX30_2 = SHX30_2()
  if "male" == SHX30_2 then
    SHX2_1 = SHX29_2
  else
    SHX3_1 = SHX29_2
  end
  SHX30_2 = TriggerServerEvent
  SHX31_2 = "9c3ac4fb9c"
  SHX32_2 = SHX2_1
  SHX33_2 = SHX3_1
  SHX30_2(SHX31_2, SHX32_2, SHX33_2)
end
SHX4_1(SHX5_1, SHX6_1)
SHX4_1 = RegisterNetEvent
SHX5_1 = "daf420849d"
function SHX6_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  SHX2_1 = SHX0_2
  SHX3_1 = SHX1_2
end
SHX4_1(SHX5_1, SHX6_1)
SHX4_1 = RegisterNetEvent
SHX5_1 = "5554c4f64b"
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = {}
  SHX2_1 = SHX0_2
  SHX0_2 = {}
  SHX3_1 = SHX0_2
end
SHX4_1(SHX5_1, SHX6_1)
function SHX4_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_1 = SHX0_2
  SHX1_2 = FreezeEntityPosition
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = ClearPedTasksImmediately
  SHX2_2 = PlayerPedId
  SHX2_2, SHX3_2, SHX4_2 = SHX2_2()
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  if not SHX0_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.uiSendMessage
    SHX2_2 = {}
    SHX2_2.type = "APP_TOGGLE"
    SHX2_2.app = ""
    SHX1_2(SHX2_2)
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.uiSetFocus
    SHX2_2 = false
    SHX3_2 = false
    SHX4_2 = false
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    return
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.uiSendMessage
  SHX2_2 = {}
  SHX2_2.type = "APP_TOGGLE"
  SHX2_2.app = "skin"
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.uiSetFocus
  SHX2_2 = true
  SHX3_2 = true
  SHX4_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = {}
  SHX2_2 = GetPedHeadOverlayNum
  SHX3_2 = 1
  SHX2_2 = SHX2_2(SHX3_2)
  SHX2_2 = SHX2_2 - 1
  SHX1_2.beard = SHX2_2
  SHX2_2 = GetPedHeadOverlayNum
  SHX3_2 = 5
  SHX2_2 = SHX2_2(SHX3_2)
  SHX1_2.facepaints = SHX2_2
  SHX2_2 = GetPedHeadOverlayNum
  SHX3_2 = 8
  SHX2_2 = SHX2_2(SHX3_2)
  SHX2_2 = SHX2_2 - 1
  SHX1_2.lipstick = SHX2_2
  SHX2_2 = GetPedHeadOverlayNum
  SHX3_2 = 3
  SHX2_2 = SHX2_2(SHX3_2)
  SHX2_2 = SHX2_2 - 1
  SHX1_2.wrinkle = SHX2_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.uiSendMessage
  SHX3_2 = {}
  SHX3_2.type = "SET_SKIN_MAX_VALUES"
  SHX3_2.info = SHX1_2
  SHX2_2(SHX3_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getModelGender
  SHX2_2 = SHX2_2()
  if "male" == SHX2_2 then
    SHX2_2 = SHX2_1
    if SHX2_2 then
      goto SHX_LABEL_80
    end
  end
  SHX2_2 = SHX3_1
  -- [FIX IF ERROR] Move ::SHX_LABEL_80:: outside nested blocks until all 'goto SHX_LABEL_80' can see it
  ::SHX_LABEL_80::
  if SHX2_2 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.uiSendMessage
    SHX4_2 = {}
    SHX4_2.type = "SET_SKIN_CACHED_DATA"
    SHX4_2.info = SHX2_2
    SHX3_2(SHX4_2)
  end
end
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX0_1
  if not SHX0_2 then
    return
  end
  SHX0_2 = InvalidateIdleCam
  SHX0_2()
  SHX0_2 = drawNativeNotification
  SHX1_2 = "Press ~INPUT_FRONTEND_LB~ and ~INPUT_FRONTEND_RB~ to rotate your character."
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
end
SHX6_1 = CMG
SHX6_1 = SHX6_1.createThreadOnTick
SHX7_1 = SHX5_1
SHX8_1 = "Skin"
SHX6_1(SHX7_1, SHX8_1)
SHX6_1 = AddEventHandler
SHX7_1 = "b0ae230dba"
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = SHX0_1
  if SHX0_2 then
    return
  end
  SHX0_2 = SHX4_1
  SHX1_2 = true
  SHX0_2(SHX1_2)
  SHX0_2 = CreateCam
  SHX1_2 = "DEFAULT_SCRIPTED_CAMERA"
  SHX2_2 = true
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  SHX1_1 = SHX0_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = GetEntityCoords
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SetCamCoord
  SHX3_2 = SHX1_1
  SHX4_2 = SHX1_2.x
  SHX5_2 = SHX1_2.y
  SHX6_2 = SHX1_2.z
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = SetCamRot
  SHX3_2 = SHX1_1
  SHX4_2 = 0.0
  SHX5_2 = 0.0
  SHX6_2 = 0.0
  SHX7_2 = 2
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX2_2 = SetCamActive
  SHX3_2 = SHX1_1
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = RenderScriptCams
  SHX3_2 = true
  SHX4_2 = false
  SHX5_2 = 0
  SHX6_2 = true
  SHX7_2 = true
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX2_2 = SetCamCoord
  SHX3_2 = SHX1_1
  SHX4_2 = SHX1_2.x
  SHX5_2 = SHX1_2.y
  SHX6_2 = SHX1_2.z
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = SetCamCoord
  SHX3_2 = SHX1_1
  SHX4_2 = SHX1_2.x
  SHX4_2 = SHX4_2 + 0.2
  SHX5_2 = SHX1_2.y
  SHX5_2 = SHX5_2 + 0.5
  SHX6_2 = SHX1_2.z
  SHX6_2 = SHX6_2 + 0.7
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = SetCamRot
  SHX3_2 = SHX1_1
  SHX4_2 = 0.0
  SHX5_2 = 0.0
  SHX6_2 = 150.0
  SHX7_2 = 2
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
end
SHX6_1(SHX7_1, SHX8_1)
SHX6_1 = CMG
SHX6_1 = SHX6_1.uiRegisterCallback
SHX7_1 = "closeSkinUI"
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = SHX0_1
  if not SHX0_2 then
    return
  end
  SHX0_2 = SHX4_1
  SHX1_2 = false
  SHX0_2(SHX1_2)
  SHX0_2 = SHX1_1
  if 0 ~= SHX0_2 then
    SHX0_2 = SetCamActive
    SHX1_2 = SHX1_1
    SHX2_2 = false
    SHX0_2(SHX1_2, SHX2_2)
    SHX0_2 = RenderScriptCams
    SHX1_2 = false
    SHX2_2 = true
    SHX3_2 = 500
    SHX4_2 = true
    SHX5_2 = true
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
    SHX0_2 = 0
    SHX1_1 = SHX0_2
  end
end
SHX6_1(SHX7_1, SHX8_1)
SHX6_1 = CMG
SHX6_1 = SHX6_1.uiRegisterCallback
SHX7_1 = "rotateSkinCharacter"
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = SetEntityHeading
  SHX3_2 = SHX1_2
  SHX4_2 = GetEntityHeading
  SHX5_2 = SHX1_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = SHX0_2.isLeft
  if SHX5_2 then
    SHX5_2 = 10.0
    if SHX5_2 then
      goto SHX_LABEL_15
    end
  end
  SHX5_2 = -10.0
  -- [FIX IF ERROR] Move ::SHX_LABEL_15:: outside nested blocks until all 'goto SHX_LABEL_15' can see it
  ::SHX_LABEL_15::
  SHX4_2 = SHX4_2 + SHX5_2
  SHX2_2(SHX3_2, SHX4_2)
end
SHX6_1(SHX7_1, SHX8_1)
