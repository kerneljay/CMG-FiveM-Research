-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1
SHX0_1 = {}
SHX1_1 = {}
SHX2_1 = vector3
SHX3_1 = -9.8369
SHX4_1 = -1474.088
SHX5_1 = 29.5453
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.position = SHX2_1
SHX1_1.heading = 5.4894
SHX2_1 = vector3
SHX3_1 = -3.0097
SHX4_1 = -1484.3165
SHX5_1 = 41.1898
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.cameraStartPosition = SHX2_1
SHX2_1 = vector3
SHX3_1 = 0.5292
SHX4_1 = 0.0
SHX4_1 = -SHX4_1
SHX5_1 = 24.6248
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.cameraStartRotation = SHX2_1
SHX2_1 = vector3
SHX3_1 = -13.842
SHX4_1 = -1454.4639
SHX5_1 = 32.9113
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.cameraEndPosition = SHX2_1
SHX2_1 = vector3
SHX3_1 = -2.4231
SHX4_1 = 0.0
SHX5_1 = 1.8101
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.cameraEndRotation = SHX2_1
SHX1_1.weather = "EXTRASUNNY"
SHX2_1 = {}
SHX3_1 = vector3
SHX4_1 = 806.0358
SHX5_1 = 1101.2482
SHX6_1 = 306.0945
SHX3_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1)
SHX2_1.position = SHX3_1
SHX2_1.heading = 348.7347
SHX3_1 = vector3
SHX4_1 = 804.6505
SHX5_1 = 1184.0697
SHX6_1 = 347.4004
SHX3_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1)
SHX2_1.cameraStartPosition = SHX3_1
SHX3_1 = vector3
SHX4_1 = -7.4378
SHX5_1 = 0.0
SHX5_1 = -SHX5_1
SHX6_1 = 110.8038
SHX3_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1)
SHX2_1.cameraStartRotation = SHX3_1
SHX3_1 = vector3
SHX4_1 = 771.2347
SHX5_1 = 1091.1151
SHX6_1 = 337.3588
SHX3_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1)
SHX2_1.cameraEndPosition = SHX3_1
SHX3_1 = vector3
SHX4_1 = -4.9158
SHX5_1 = 0.0
SHX5_1 = -SHX5_1
SHX6_1 = 22.8592
SHX3_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1)
SHX2_1.cameraEndRotation = SHX3_1
SHX2_1.weather = "SMOG"
SHX3_1 = {}
SHX4_1 = vector3
SHX5_1 = 2005.9663
SHX6_1 = 3803.6094
SHX7_1 = 31.1808
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX3_1.position = SHX4_1
SHX3_1.heading = 60.1616
SHX4_1 = vector3
SHX5_1 = 1987.1251
SHX6_1 = 3810.7661
SHX7_1 = 33.2256
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX3_1.cameraStartPosition = SHX4_1
SHX4_1 = vector3
SHX5_1 = -2.1421
SHX6_1 = 0.0
SHX6_1 = -SHX6_1
SHX7_1 = 37.1211
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX3_1.cameraStartRotation = SHX4_1
SHX4_1 = vector3
SHX5_1 = 1967.3821
SHX6_1 = 3840.4832
SHX7_1 = 54.8269
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX3_1.cameraEndPosition = SHX4_1
SHX4_1 = vector3
SHX5_1 = -1.2952
SHX6_1 = 0.0
SHX6_1 = -SHX6_1
SHX7_1 = 62.8825
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX3_1.cameraEndRotation = SHX4_1
SHX3_1.weather = "RAIN"
SHX4_1 = {}
SHX5_1 = vector3
SHX6_1 = -1713.2614
SHX7_1 = -1077.4807
SHX8_1 = 12.0172
SHX5_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1)
SHX4_1.position = SHX5_1
SHX4_1.heading = 18.823
SHX5_1 = vector3
SHX6_1 = -1705.3199
SHX7_1 = -1074.6646
SHX8_1 = 21.6983
SHX5_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1)
SHX4_1.cameraStartPosition = SHX5_1
SHX5_1 = vector3
SHX6_1 = 1.5777
SHX7_1 = 0.0
SHX7_1 = -SHX7_1
SHX8_1 = -163.0528
SHX5_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1)
SHX4_1.cameraStartRotation = SHX5_1
SHX5_1 = vector3
SHX6_1 = -1731.1056
SHX7_1 = -1098.6263
SHX8_1 = 24.3947
SHX5_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1)
SHX4_1.cameraEndPosition = SHX5_1
SHX5_1 = vector3
SHX6_1 = -3.393
SHX7_1 = 0.0
SHX7_1 = -SHX7_1
SHX8_1 = -109.8041
SHX5_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1)
SHX4_1.cameraEndRotation = SHX5_1
SHX4_1.weather = "CLEAR"
SHX5_1 = {}
SHX6_1 = vector3
SHX7_1 = -663.8303
SHX8_1 = 4484.105
SHX9_1 = 69.2669
SHX6_1 = SHX6_1(SHX7_1, SHX8_1, SHX9_1)
SHX5_1.position = SHX6_1
SHX5_1.heading = 238.4128
SHX6_1 = vector3
SHX7_1 = -608.3302
SHX8_1 = 4463.3027
SHX9_1 = 23.4348
SHX6_1 = SHX6_1(SHX7_1, SHX8_1, SHX9_1)
SHX5_1.cameraStartPosition = SHX6_1
SHX6_1 = vector3
SHX7_1 = -1.9612
SHX8_1 = 0.0
SHX9_1 = -127.5001
SHX6_1 = SHX6_1(SHX7_1, SHX8_1, SHX9_1)
SHX5_1.cameraStartRotation = SHX6_1
SHX6_1 = vector3
SHX7_1 = -615.5822
SHX8_1 = 4508.3086
SHX9_1 = 110.3908
SHX6_1 = SHX6_1(SHX7_1, SHX8_1, SHX9_1)
SHX5_1.cameraEndPosition = SHX6_1
SHX6_1 = vector3
SHX7_1 = -22.87
SHX8_1 = 0.0
SHX9_1 = -133.0594
SHX6_1 = SHX6_1(SHX7_1, SHX8_1, SHX9_1)
SHX5_1.cameraEndRotation = SHX6_1
SHX5_1.weather = "EXTRASUNNY"
SHX6_1 = {}
SHX7_1 = vector3
SHX8_1 = 234.57510375977
SHX9_1 = -1144.5062255859
SHX10_1 = 29.47513961792
SHX7_1 = SHX7_1(SHX8_1, SHX9_1, SHX10_1)
SHX6_1.position = SHX7_1
SHX6_1.heading = 0.0
SHX7_1 = vector3
SHX8_1 = 216.51281738281
SHX9_1 = -1282.3959960938
SHX10_1 = 32.077880859375
SHX7_1 = SHX7_1(SHX8_1, SHX9_1, SHX10_1)
SHX6_1.cameraStartPosition = SHX7_1
SHX7_1 = vector3
SHX8_1 = -0.98468792438507
SHX9_1 = 0.0
SHX9_1 = -SHX9_1
SHX10_1 = -0.036672409623861
SHX7_1 = SHX7_1(SHX8_1, SHX9_1, SHX10_1)
SHX6_1.cameraStartRotation = SHX7_1
SHX7_1 = vector3
SHX8_1 = 241.12530517578
SHX9_1 = -995.49108886719
SHX10_1 = 31.893032073975
SHX7_1 = SHX7_1(SHX8_1, SHX9_1, SHX10_1)
SHX6_1.cameraEndPosition = SHX7_1
SHX7_1 = vector3
SHX8_1 = 9.3380908966064
SHX9_1 = 0.0
SHX9_1 = -SHX9_1
SHX10_1 = 82.739128112793
SHX7_1 = SHX7_1(SHX8_1, SHX9_1, SHX10_1)
SHX6_1.cameraEndRotation = SHX7_1
SHX6_1.weather = "XMAS"
SHX0_1[1] = SHX1_1
SHX0_1[2] = SHX2_1
SHX0_1[3] = SHX3_1
SHX0_1[4] = SHX4_1
SHX0_1[5] = SHX5_1
SHX0_1[6] = SHX6_1
SHX1_1 = {}
SHX1_1.handle = 0
SHX1_1.name = "pc_bench"
SHX2_1 = 0
SHX3_1 = false
SHX4_1 = vector3
SHX5_1 = 0.0
SHX6_1 = 0.0
SHX7_1 = 0.0
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX5_1 = {}
SHX6_1 = 25
SHX7_1 = 1
SHX8_1 = 0.0
SHX9_1 = {}
SHX10_1 = 1
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = InvalidateIdleCam
  SHX0_2()
  SHX0_2 = InvalidateVehicleIdleCam
  SHX0_2()
  SHX0_2 = HideHudAndRadarThisFrame
  SHX0_2()
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 199
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 217
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 211
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 212
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 213
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.CloseAll
  SHX0_2()
  SHX0_2 = IsScreenFadedOut
  SHX0_2 = SHX0_2()
  if not SHX0_2 then
    SHX0_2 = IsScreenFadingOut
    SHX0_2 = SHX0_2()
    if not SHX0_2 then
      SHX0_2 = IsScreenFadingIn
      SHX0_2 = SHX0_2()
      if not SHX0_2 then
        SHX0_2 = Citizen
        SHX0_2 = SHX0_2.InvokeNative
        SHX1_2 = 8406597705123953709
        SHX2_2 = Citizen
        SHX2_2 = SHX2_2.ResultAsFloat
        SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX2_2()
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
        SHX1_2 = 1
        SHX0_2 = SHX1_2 / SHX0_2
        SHX2_2 = SHX10_1
        SHX1_2 = SHX9_1
        SHX1_2[SHX2_2] = SHX0_2
        SHX1_2 = SHX10_1
        SHX1_2 = SHX1_2 + 1
        SHX10_1 = SHX1_2
        SHX2_2 = SHX7_1
        SHX1_2 = SHX5_1
        SHX1_2[SHX2_2] = SHX0_2
        SHX1_2 = SHX7_1
        SHX1_2 = SHX1_2 + 1
        SHX7_1 = SHX1_2
        SHX1_2 = SHX7_1
        SHX2_2 = SHX6_1
        if SHX1_2 > SHX2_2 then
          SHX1_2 = 1
          SHX7_1 = SHX1_2
          SHX1_2 = 0.0
          SHX8_1 = SHX1_2
          SHX1_2 = pairs
          SHX2_2 = SHX5_1
          SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
          for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
            SHX7_2 = SHX8_1
            SHX7_2 = SHX7_2 + SHX6_2
            SHX8_1 = SHX7_2
          end
          SHX1_2 = SHX8_1
          SHX2_2 = SHX6_1
          SHX2_2 = SHX2_2 + 0.0
          SHX1_2 = SHX1_2 / SHX2_2
          SHX8_1 = SHX1_2
        end
        SHX1_2 = SHX8_1
        if SHX1_2 > 0.0 then
          SHX1_2 = DrawAdvancedText
          SHX2_2 = 0.5
          SHX3_2 = 0.8
          SHX4_2 = 0.0
          SHX5_2 = 0.0
          SHX6_2 = 2.0
          SHX7_2 = "FPS:"
          SHX8_2 = 255
          SHX9_2 = 255
          SHX10_2 = 255
          SHX11_2 = 255
          SHX12_2 = 0
          SHX13_2 = 0
          SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
          SHX1_2 = DrawAdvancedText
          SHX2_2 = 0.65
          SHX3_2 = 0.8
          SHX4_2 = 0.0
          SHX5_2 = 0.0
          SHX6_2 = 2.0
          SHX7_2 = tostring
          SHX8_2 = math
          SHX8_2 = SHX8_2.round
          SHX9_2 = SHX8_1
          SHX10_2 = 1
          SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX8_2(SHX9_2, SHX10_2)
          SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
          SHX8_2 = 255
          SHX9_2 = 255
          SHX10_2 = 255
          SHX11_2 = 255
          SHX12_2 = 0
          SHX13_2 = 0
          SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
        end
      end
    end
  end
end
function SHX12_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = IsScreenFadedIn
  SHX2_2 = SHX2_2()
  if not SHX2_2 then
    SHX2_2 = IsScreenFadingOut
    SHX2_2 = SHX2_2()
    if not SHX2_2 then
      return
    end
  end
  SHX2_2 = DoScreenFadeOut
  SHX3_2 = SHX0_2
  SHX2_2(SHX3_2)
  if not SHX1_2 then
    return
  end
  while true do
    SHX2_2 = IsScreenFadedOut
    SHX2_2 = SHX2_2()
    if SHX2_2 then
      break
    end
    SHX2_2 = Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
end
function SHX13_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = IsScreenFadedOut
  SHX2_2 = SHX2_2()
  if not SHX2_2 then
    SHX2_2 = IsScreenFadingOut
    SHX2_2 = SHX2_2()
    if not SHX2_2 then
      return
    end
  end
  SHX2_2 = IsScreenFadingIn
  SHX2_2 = SHX2_2()
  if not SHX2_2 then
    SHX2_2 = DoScreenFadeIn
    SHX3_2 = SHX0_2
    SHX2_2(SHX3_2)
  end
  if SHX1_2 then
    while true do
      SHX2_2 = IsScreenFadingIn
      SHX2_2 = SHX2_2()
      if not SHX2_2 then
        break
      end
      SHX2_2 = Wait
      SHX3_2 = 0
      SHX2_2(SHX3_2)
    end
  end
end
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX1_2 = SHX0_1
  SHX1_2 = SHX1_2[SHX0_2]
  SHX2_2 = SHX12_1
  SHX3_2 = 500
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = RenderScriptCams
  SHX3_2 = false
  SHX4_2 = false
  SHX5_2 = 0
  SHX6_2 = false
  SHX7_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX2_2 = DestroyAllCams
  SHX3_2 = false
  SHX2_2(SHX3_2)
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = SetEntityCoords
  SHX4_2 = SHX2_2
  SHX5_2 = SHX1_2.position
  SHX5_2 = SHX5_2.x
  SHX6_2 = SHX1_2.position
  SHX6_2 = SHX6_2.y
  SHX7_2 = SHX1_2.position
  SHX7_2 = SHX7_2.z
  SHX8_2 = true
  SHX9_2 = false
  SHX10_2 = false
  SHX11_2 = true
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX3_2 = SetEntityHeading
  SHX4_2 = SHX2_2
  SHX5_2 = SHX1_2.heading
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = FreezeEntityPosition
  SHX4_2 = SHX2_2
  SHX5_2 = true
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = ForcePedAiAndAnimationUpdate
  SHX4_2 = SHX2_2
  SHX5_2 = true
  SHX6_2 = true
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = SetGameplayCamRelativePitch
  SHX4_2 = 0.0
  SHX5_2 = 1.0
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SetGameplayCamRelativeHeading
  SHX4_2 = 0.0
  SHX3_2(SHX4_2)
  SHX3_2 = ClearArea
  SHX4_2 = SHX1_2.position
  SHX4_2 = SHX4_2.x
  SHX5_2 = SHX1_2.position
  SHX5_2 = SHX5_2.y
  SHX6_2 = SHX1_2.position
  SHX6_2 = SHX6_2.z
  SHX7_2 = 100.0
  SHX8_2 = true
  SHX9_2 = false
  SHX10_2 = false
  SHX11_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX3_2 = GetGameTimer
  SHX3_2 = SHX3_2()
  while true do
    SHX4_2 = GetNumberOfStreamingRequests
    SHX4_2 = SHX4_2()
    if not (SHX4_2 > 0) then
      break
    end
    SHX4_2 = GetGameTimer
    SHX4_2 = SHX4_2()
    SHX4_2 = SHX4_2 - SHX3_2
    SHX5_2 = 5000
    if SHX4_2 > SHX5_2 then
      break
    end
    SHX4_2 = Wait
    SHX5_2 = 0
    SHX4_2(SHX5_2)
  end
  SHX4_2 = LoadAllObjectsNow
  SHX4_2()
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.setWeather
  SHX5_2 = SHX1_2.weather
  SHX6_2 = false
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.overrideTime
  SHX5_2 = 12
  SHX6_2 = 0
  SHX7_2 = 0
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = CreateCam
  SHX5_2 = "DEFAULT_SPLINE_CAMERA"
  SHX6_2 = false
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX2_1 = SHX4_2
  SHX4_2 = AddCamSplineNode
  SHX5_2 = SHX2_1
  SHX6_2 = SHX1_2.cameraStartPosition
  SHX6_2 = SHX6_2.x
  SHX7_2 = SHX1_2.cameraStartPosition
  SHX7_2 = SHX7_2.y
  SHX8_2 = SHX1_2.cameraStartPosition
  SHX8_2 = SHX8_2.z
  SHX9_2 = SHX1_2.cameraStartRotation
  SHX9_2 = SHX9_2.x
  SHX10_2 = SHX1_2.cameraStartRotation
  SHX10_2 = SHX10_2.y
  SHX11_2 = SHX1_2.cameraStartRotation
  SHX11_2 = SHX11_2.z
  SHX12_2 = 15000
  SHX13_2 = 3
  SHX14_2 = 2
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX4_2 = AddCamSplineNode
  SHX5_2 = SHX2_1
  SHX6_2 = SHX1_2.cameraEndPosition
  SHX6_2 = SHX6_2.x
  SHX7_2 = SHX1_2.cameraEndPosition
  SHX7_2 = SHX7_2.y
  SHX8_2 = SHX1_2.cameraEndPosition
  SHX8_2 = SHX8_2.z
  SHX9_2 = SHX1_2.cameraEndRotation
  SHX9_2 = SHX9_2.x
  SHX10_2 = SHX1_2.cameraEndRotation
  SHX10_2 = SHX10_2.y
  SHX11_2 = SHX1_2.cameraEndRotation
  SHX11_2 = SHX11_2.z
  SHX12_2 = 15000
  SHX13_2 = 3
  SHX14_2 = 2
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX4_2 = SetCamSplinePhase
  SHX5_2 = SHX2_1
  SHX6_2 = 0.0
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SetCamFov
  SHX5_2 = SHX2_1
  SHX6_2 = 50.0
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SetCamSplineSmoothingStyle
  SHX5_2 = SHX2_1
  SHX6_2 = 3
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SetCamActive
  SHX5_2 = SHX2_1
  SHX6_2 = true
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = RenderScriptCams
  SHX5_2 = true
  SHX6_2 = false
  SHX7_2 = 0
  SHX8_2 = false
  SHX9_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  while true do
    SHX4_2 = GetCamSplinePhase
    SHX5_2 = SHX2_1
    SHX4_2 = SHX4_2(SHX5_2)
    SHX5_2 = 0.05
    if not (SHX4_2 < SHX5_2) then
      break
    end
    SHX4_2 = Wait
    SHX5_2 = 0
    SHX4_2(SHX5_2)
  end
  SHX4_2 = SHX13_1
  SHX5_2 = 500
  SHX6_2 = false
  SHX4_2(SHX5_2, SHX6_2)
  while true do
    SHX4_2 = GetCamSplinePhase
    SHX5_2 = SHX2_1
    SHX4_2 = SHX4_2(SHX5_2)
    SHX5_2 = 0.88
    if SHX4_2 > SHX5_2 then
      break
    end
    SHX5_2 = SHX4_2 - 0.05
    SHX5_2 = SHX5_2 / 0.83
    SHX6_2 = math
    SHX6_2 = SHX6_2.floor
    SHX7_2 = 1440 * SHX5_2
    SHX6_2 = SHX6_2(SHX7_2)
    SHX6_2 = SHX6_2 + 720
    SHX7_2 = math
    SHX7_2 = SHX7_2.floor
    SHX8_2 = SHX6_2 / 60
    SHX7_2 = SHX7_2(SHX8_2)
    SHX8_2 = SHX6_2 % 60
    if SHX7_2 >= 24 then
      SHX7_2 = SHX7_2 - 24
    end
    SHX9_2 = CMG
    SHX9_2 = SHX9_2.overrideTime
    SHX10_2 = SHX7_2
    SHX11_2 = SHX8_2
    SHX12_2 = 0
    SHX9_2(SHX10_2, SHX11_2, SHX12_2)
    SHX9_2 = Wait
    SHX10_2 = 0
    SHX9_2(SHX10_2)
  end
  if 5 ~= SHX0_2 then
    SHX4_2 = SHX12_1
    SHX5_2 = 500
    SHX6_2 = true
    SHX4_2(SHX5_2, SHX6_2)
  end
end
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.loadModel
  SHX1_2 = -1281684762
  SHX0_2(SHX1_2)
  SHX0_2 = RequestVehicleRecording
  SHX1_2 = SHX1_1.handle
  SHX2_2 = SHX1_1.name
  SHX0_2(SHX1_2, SHX2_2)
  while true do
    SHX0_2 = HasVehicleRecordingBeenLoaded
    SHX1_2 = SHX1_1.handle
    SHX2_2 = SHX1_1.name
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if SHX0_2 then
      break
    end
    SHX0_2 = Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.overrideTime
  SHX1_2 = 12
  SHX2_2 = 0
  SHX3_2 = 0
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setWeather
  SHX1_2 = "EXTRASUNNY"
  SHX0_2(SHX1_2)
  SHX0_2 = GetVehicleRecordingId
  SHX1_2 = SHX1_1.handle
  SHX2_2 = SHX1_1.name
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  SHX1_2 = GetPositionOfVehicleRecordingAtTime
  SHX2_2 = SHX0_2
  SHX3_2 = 4500.0
  SHX4_2 = nil
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = GetRotationOfVehicleRecordingAtTime
  SHX3_2 = SHX0_2
  SHX4_2 = 4500.0
  SHX5_2 = nil
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.spawnVehicle
  SHX4_2 = -1281684762
  SHX5_2 = SHX1_2.x
  SHX6_2 = SHX1_2.y
  SHX7_2 = SHX1_2.z
  SHX8_2 = SHX2_2.z
  SHX9_2 = false
  SHX10_2 = false
  SHX11_2 = false
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX4_2 = SetEntityInvincible
  SHX5_2 = SHX3_2
  SHX6_2 = true
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SetVehicleEngineOn
  SHX5_2 = SHX3_2
  SHX6_2 = true
  SHX7_2 = true
  SHX8_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX4_2 = SetVehicleCanBeVisiblyDamaged
  SHX5_2 = SHX3_2
  SHX6_2 = false
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SetVehicleCanBreak
  SHX5_2 = SHX3_2
  SHX6_2 = false
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SetEntityProofs
  SHX5_2 = SHX3_2
  SHX6_2 = true
  SHX7_2 = true
  SHX8_2 = true
  SHX9_2 = true
  SHX10_2 = true
  SHX11_2 = true
  SHX12_2 = true
  SHX13_2 = true
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX4_2 = ControlLandingGear
  SHX5_2 = SHX3_2
  SHX6_2 = 3
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SetEntityLodDist
  SHX5_2 = SHX3_2
  SHX6_2 = 500
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = StartPlaybackRecordedVehicle
  SHX5_2 = SHX3_2
  SHX6_2 = SHX1_1.handle
  SHX7_2 = SHX1_1.name
  SHX8_2 = true
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX4_2 = SkipTimeInPlaybackRecordedVehicle
  SHX5_2 = SHX3_2
  SHX6_2 = 4500.0
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SetPedIntoVehicle
  SHX5_2 = PlayerPedId
  SHX5_2 = SHX5_2()
  SHX6_2 = SHX3_2
  SHX7_2 = -1
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = RenderScriptCams
  SHX5_2 = false
  SHX6_2 = true
  SHX7_2 = 10000
  SHX8_2 = true
  SHX9_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX4_2 = SHX13_1
  SHX5_2 = 500
  SHX6_2 = false
  SHX4_2(SHX5_2, SHX6_2)
  while true do
    SHX4_2 = DoesEntityExist
    SHX5_2 = SHX3_2
    SHX4_2 = SHX4_2(SHX5_2)
    if not SHX4_2 then
      break
    end
    SHX4_2 = SetPlaybackSpeed
    SHX5_2 = SHX3_2
    SHX6_2 = 2.0
    SHX4_2(SHX5_2, SHX6_2)
    SHX4_2 = SetGameplayCamRelativePitch
    SHX5_2 = 0.0
    SHX6_2 = 1.0
    SHX4_2(SHX5_2, SHX6_2)
    SHX4_2 = SetGameplayCamRelativeHeading
    SHX5_2 = 0.0
    SHX4_2(SHX5_2)
    SHX4_2 = math
    SHX4_2 = SHX4_2.floor
    SHX5_2 = GetTimePositionInRecording
    SHX6_2 = SHX3_2
    SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX5_2(SHX6_2)
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX5_2 = 104000
    if SHX4_2 > SHX5_2 then
      break
    end
    SHX5_2 = Wait
    SHX6_2 = 0
    SHX5_2(SHX6_2)
  end
  SHX4_2 = SHX12_1
  SHX5_2 = 500
  SHX6_2 = true
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = PlayerPedId
  SHX4_2 = SHX4_2()
  SHX5_2 = DoesEntityExist
  SHX6_2 = SHX3_2
  SHX5_2 = SHX5_2(SHX6_2)
  if SHX5_2 then
    SHX5_2 = IsPedInVehicle
    SHX6_2 = SHX4_2
    SHX7_2 = SHX3_2
    SHX8_2 = false
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
    if SHX5_2 then
      SHX5_2 = TaskLeaveVehicle
      SHX6_2 = SHX4_2
      SHX7_2 = SHX3_2
      SHX8_2 = 16
      SHX5_2(SHX6_2, SHX7_2, SHX8_2)
      SHX5_2 = Wait
      SHX6_2 = 0
      SHX5_2(SHX6_2)
    end
    SHX5_2 = StopPlaybackRecordedVehicle
    SHX6_2 = SHX3_2
    SHX5_2(SHX6_2)
    SHX5_2 = DeleteEntity
    SHX6_2 = SHX3_2
    SHX5_2(SHX6_2)
  end
  SHX5_2 = SetModelAsNoLongerNeeded
  SHX6_2 = -1281684762
  SHX5_2(SHX6_2)
  SHX5_2 = RemoveVehicleRecording
  SHX6_2 = SHX1_1.handle
  SHX7_2 = SHX1_1.name
  SHX5_2(SHX6_2, SHX7_2)
end
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = true
  SHX3_1 = SHX0_2
  SHX0_2 = table
  SHX0_2 = SHX0_2.create
  SHX1_2 = 60000
  SHX2_2 = 0
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  SHX9_1 = SHX0_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = SetEntityInvincible
  SHX2_2 = SHX0_2
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = GetEntityCoords
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX4_1 = SHX1_2
  SHX1_2 = PlayerId
  SHX1_2 = SHX1_2()
  SHX2_2 = SetPlayerControl
  SHX3_2 = SHX1_2
  SHX4_2 = false
  SHX5_2 = 0
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = SetEveryoneIgnorePlayer
  SHX3_2 = SHX1_2
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.createThreadOnTick
  SHX3_2 = SHX11_1
  SHX4_2 = "Benchmark"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.hideAllDisplays
  SHX3_2 = "benchmark"
  SHX2_2(SHX3_2)
  SHX2_2 = SHX12_1
  SHX3_2 = 500
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = AnimpostfxStopAll
  SHX2_2()
end
function SHX17_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.deleteThreadOnTick
  SHX1_2 = SHX11_1
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
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = SetEntityInvincible
  SHX2_2 = SHX0_2
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetEntityCoords
  SHX2_2 = SHX0_2
  SHX3_2 = SHX4_1.x
  SHX4_2 = SHX4_1.y
  SHX5_2 = SHX4_1.z
  SHX6_2 = true
  SHX7_2 = false
  SHX8_2 = false
  SHX9_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX1_2 = FreezeEntityPosition
  SHX2_2 = SHX0_2
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = PlayerId
  SHX1_2 = SHX1_2()
  SHX2_2 = SetPlayerControl
  SHX3_2 = SHX1_2
  SHX4_2 = true
  SHX5_2 = 0
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = SetEveryoneIgnorePlayer
  SHX3_2 = SHX1_2
  SHX4_2 = false
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SHX13_1
  SHX3_2 = 500
  SHX4_2 = false
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = 0.0
  SHX3_2 = pairs
  SHX4_2 = SHX9_1
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = SHX10_1
    if SHX7_2 >= SHX9_2 then
      break
    end
    SHX2_2 = SHX2_2 + SHX8_2
  end
  SHX3_2 = SHX10_1
  SHX3_2 = SHX3_2 + 0.0
  SHX2_2 = SHX2_2 / SHX3_2
  SHX3_2 = math
  SHX3_2 = SHX3_2.round
  SHX4_2 = SHX2_2
  SHX5_2 = 1
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.showWarningMessage
  SHX5_2 = "BENCHMARK"
  SHX6_2 = string
  SHX6_2 = SHX6_2.format
  SHX7_2 = "Average FPS: %s"
  SHX8_2 = SHX3_2
  SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2, SHX8_2)
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX4_2 = TriggerServerEvent
  SHX5_2 = "fc507140b6"
  SHX6_2 = SHX3_2
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.cancelOverrideTimeWeather
  SHX4_2()
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.showAllDisplays
  SHX5_2 = "benchmark"
  SHX4_2(SHX5_2)
  SHX4_2 = table
  SHX4_2 = SHX4_2.clear
  SHX5_2 = SHX5_1
  SHX4_2(SHX5_2)
  SHX4_2 = 1
  SHX7_1 = SHX4_2
  SHX4_2 = {}
  SHX9_1 = SHX4_2
  SHX4_2 = 1
  SHX10_1 = SHX4_2
  SHX4_2 = false
  SHX3_1 = SHX4_2
end
SHX18_1 = RegisterNetEvent
SHX19_1 = "1b2bb2e289"
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX16_1
  SHX0_2()
  SHX0_2 = SHX14_1
  SHX1_2 = 1
  SHX0_2(SHX1_2)
  SHX0_2 = SHX14_1
  SHX1_2 = 2
  SHX0_2(SHX1_2)
  SHX0_2 = SHX14_1
  SHX1_2 = 3
  SHX0_2(SHX1_2)
  SHX0_2 = SHX14_1
  SHX1_2 = 4
  SHX0_2(SHX1_2)
  SHX0_2 = SHX14_1
  SHX1_2 = 5
  SHX0_2(SHX1_2)
  SHX0_2 = SHX15_1
  SHX0_2()
  SHX0_2 = SHX14_1
  SHX1_2 = 6
  SHX0_2(SHX1_2)
  SHX0_2 = SHX17_1
  SHX0_2()
end
SHX18_1(SHX19_1, SHX20_1)
SHX18_1 = CMG
function SHX19_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX3_1
  return SHX0_2
end
SHX18_1.isBenchmarking = SHX19_1
SHX18_1 = AddEventHandler
SHX19_1 = "onResourceStop"
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = GetCurrentResourceName
  SHX1_2 = SHX1_2()
  if SHX1_2 == SHX0_2 then
    SHX1_2 = SHX3_1
    if SHX1_2 then
      SHX1_2 = SHX17_1
      SHX1_2()
    end
  end
end
SHX18_1(SHX19_1, SHX20_1)
