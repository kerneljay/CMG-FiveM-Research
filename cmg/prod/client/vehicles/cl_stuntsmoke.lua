-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1
SHX0_1 = {}
SHX1_1 = -1737346484
SHX2_1 = {}
SHX2_1.mod = 1
SHX3_1 = {}
SHX4_1 = 255
SHX5_1 = 25
SHX6_1 = 25
SHX3_1[1] = SHX4_1
SHX3_1[2] = SHX5_1
SHX3_1[3] = SHX6_1
SHX2_1.rgb = SHX3_1
SHX2_1.debugName = "Red"
SHX0_1[SHX1_1] = SHX2_1
SHX1_1 = -1915493356
SHX2_1 = {}
SHX2_1.mod = 2
SHX3_1 = {}
SHX4_1 = 255
SHX5_1 = 179
SHX6_1 = 25
SHX3_1[1] = SHX4_1
SHX3_1[2] = SHX5_1
SHX3_1[3] = SHX6_1
SHX2_1.rgb = SHX3_1
SHX2_1.debugName = "Orange"
SHX0_1[SHX1_1] = SHX2_1
SHX1_1 = -1741930097
SHX2_1 = {}
SHX2_1.mod = 3
SHX3_1 = {}
SHX4_1 = 255
SHX5_1 = 255
SHX6_1 = 25
SHX3_1[1] = SHX4_1
SHX3_1[2] = SHX5_1
SHX3_1[3] = SHX6_1
SHX2_1.rgb = SHX3_1
SHX2_1.debugName = "Yellow"
SHX0_1[SHX1_1] = SHX2_1
SHX1_1 = 1439605128
SHX2_1 = {}
SHX2_1.mod = 4
SHX3_1 = {}
SHX4_1 = 102
SHX5_1 = 255
SHX6_1 = 25
SHX3_1[1] = SHX4_1
SHX3_1[2] = SHX5_1
SHX3_1[3] = SHX6_1
SHX2_1.rgb = SHX3_1
SHX2_1.debugName = "Green"
SHX0_1[SHX1_1] = SHX2_1
SHX1_1 = -1974111254
SHX2_1 = {}
SHX2_1.mod = 5
SHX3_1 = {}
SHX4_1 = 25
SHX5_1 = 25
SHX6_1 = 255
SHX3_1[1] = SHX4_1
SHX3_1[2] = SHX5_1
SHX3_1[3] = SHX6_1
SHX2_1.rgb = SHX3_1
SHX2_1.debugName = "Blue"
SHX0_1[SHX1_1] = SHX2_1
SHX1_1 = -1629924060
SHX2_1 = {}
SHX2_1.mod = 6
SHX3_1 = {}
SHX4_1 = 179
SHX5_1 = 25
SHX6_1 = 255
SHX3_1[1] = SHX4_1
SHX3_1[2] = SHX5_1
SHX3_1[3] = SHX6_1
SHX2_1.rgb = SHX3_1
SHX2_1.debugName = "Purple"
SHX0_1[SHX1_1] = SHX2_1
SHX1_1 = -1253413535
SHX2_1 = {}
SHX2_1.mod = 7
SHX3_1 = {}
SHX4_1 = 255
SHX5_1 = 25
SHX6_1 = 255
SHX3_1[1] = SHX4_1
SHX3_1[2] = SHX5_1
SHX3_1[3] = SHX6_1
SHX2_1.rgb = SHX3_1
SHX2_1.debugName = "Pink"
SHX0_1[SHX1_1] = SHX2_1
SHX1_1 = -2024144439
SHX2_1 = {}
SHX2_1.mod = 8
SHX3_1 = {}
SHX4_1 = 255
SHX5_1 = 255
SHX6_1 = 255
SHX3_1[1] = SHX4_1
SHX3_1[2] = SHX5_1
SHX3_1[3] = SHX6_1
SHX2_1.rgb = SHX3_1
SHX2_1.debugName = "White"
SHX0_1[SHX1_1] = SHX2_1
SHX1_1 = {}
SHX2_1 = {}
function SHX3_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX1_2 = DecorGetBool
  SHX2_2 = SHX0_2
  SHX3_2 = "916cd57ed7"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if SHX1_2 then
    SHX2_2 = DecorGetInt
    SHX3_2 = SHX0_2
    SHX4_2 = "b67d156704"
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    SHX3_2 = SHX0_1
    SHX3_2 = SHX3_2[SHX2_2]
    SHX4_2 = SHX2_1
    SHX4_2 = SHX4_2[SHX0_2]
    if not SHX4_2 then
      SHX5_2 = CMG
      SHX5_2 = SHX5_2.loadPtfx
      SHX6_2 = "scr_ar_planes"
      SHX5_2(SHX6_2)
      SHX5_2 = UseParticleFxAsset
      SHX6_2 = "scr_ar_planes"
      SHX5_2(SHX6_2)
      SHX5_2 = StartParticleFxLoopedOnEntityBone
      SHX6_2 = "scr_ar_trail_smoke"
      SHX7_2 = SHX0_2
      SHX8_2 = 0.0
      SHX9_2 = 0.0
      SHX10_2 = 0.0
      SHX11_2 = 0.0
      SHX12_2 = 0.0
      SHX13_2 = 0.0
      SHX14_2 = -1
      SHX15_2 = 1.0
      SHX16_2 = false
      SHX17_2 = false
      SHX18_2 = false
      SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
      SHX4_2 = SHX5_2
      SHX5_2 = RemoveNamedPtfxAsset
      SHX6_2 = "scr_ar_planes"
      SHX5_2(SHX6_2)
      SHX5_2 = SetParticleFxLoopedFarClipDist
      SHX6_2 = SHX4_2
      SHX7_2 = 1000.0
      SHX5_2(SHX6_2, SHX7_2)
      SHX5_2 = SHX2_1
      SHX5_2[SHX0_2] = SHX4_2
    end
    SHX5_2 = SetParticleFxLoopedScale
    SHX6_2 = SHX4_2
    SHX7_2 = 1.0
    SHX5_2(SHX6_2, SHX7_2)
    SHX5_2 = SetParticleFxLoopedColour
    SHX6_2 = SHX4_2
    SHX7_2 = SHX3_2.rgb
    SHX7_2 = SHX7_2[1]
    SHX7_2 = SHX7_2 / 255
    SHX7_2 = SHX7_2 + 0.0
    SHX8_2 = SHX3_2.rgb
    SHX8_2 = SHX8_2[2]
    SHX8_2 = SHX8_2 / 255
    SHX8_2 = SHX8_2 + 0.0
    SHX9_2 = SHX3_2.rgb
    SHX9_2 = SHX9_2[3]
    SHX9_2 = SHX9_2 / 255
    SHX9_2 = SHX9_2 + 0.0
    SHX10_2 = false
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  else
    SHX2_2 = SHX2_1
    SHX2_2 = SHX2_2[SHX0_2]
    if SHX2_2 then
      SHX2_2 = StopParticleFxLooped
      SHX3_2 = SHX2_1
      SHX3_2 = SHX3_2[SHX0_2]
      SHX4_2 = false
      SHX2_2(SHX3_2, SHX4_2)
      SHX2_2 = SHX2_1
      SHX2_2[SHX0_2] = nil
    end
  end
end
SHX4_1 = Citizen
SHX4_1 = SHX4_1.CreateThread
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = DecorRegister
  SHX1_2 = "b67d156704"
  SHX2_2 = 3
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = DecorRegister
  SHX1_2 = "916cd57ed7"
  SHX2_2 = 2
  SHX0_2(SHX1_2, SHX2_2)
  while true do
    SHX0_2 = pairs
    SHX1_2 = GetActivePlayers
    SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX1_2()
    SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
      SHX6_2 = GetPlayerPed
      SHX7_2 = SHX5_2
      SHX6_2 = SHX6_2(SHX7_2)
      if 0 ~= SHX6_2 then
        SHX7_2 = GetVehiclePedIsUsing
        SHX8_2 = SHX6_2
        SHX7_2 = SHX7_2(SHX8_2)
        if 0 ~= SHX7_2 then
          SHX8_2 = SHX3_1
          SHX9_2 = SHX7_2
          SHX8_2(SHX9_2)
        end
      end
    end
    SHX0_2 = pairs
    SHX1_2 = SHX2_1
    SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
    for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
      SHX6_2 = DoesEntityExist
      SHX7_2 = SHX4_2
      SHX6_2 = SHX6_2(SHX7_2)
      if not SHX6_2 then
        SHX6_2 = StopParticleFxLooped
        SHX7_2 = SHX5_2
        SHX8_2 = false
        SHX6_2(SHX7_2, SHX8_2)
        SHX6_2 = SHX2_1
        SHX6_2[SHX4_2] = nil
      end
    end
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 1000
    SHX0_2(SHX1_2)
  end
end
SHX4_1(SHX5_1)
SHX4_1 = RegisterCommand
SHX5_1 = "setsmoke"
function SHX6_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerVehicle
  SHX2_2, SHX3_2 = SHX2_2()
  if 0 == SHX2_2 or not SHX3_2 then
    return
  end
  SHX4_2 = DecorGetInt
  SHX5_2 = SHX2_2
  SHX6_2 = "0a6cf607ed"
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  if not (SHX4_2 <= 0) then
    SHX5_2 = SHX1_1
    SHX5_2 = SHX5_2[SHX4_2]
    if SHX5_2 then
      goto SHX_LABEL_23
    end
  end
  SHX5_2 = notify
  SHX6_2 = "~r~You can not set the smoke colour of this vehicle"
  SHX5_2(SHX6_2)
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_23:: outside nested blocks until all 'goto SHX_LABEL_23' can see it
  ::SHX_LABEL_23::
  SHX5_2 = #SHX1_2
  if 1 ~= SHX5_2 then
    SHX5_2 = notify
    SHX6_2 = "~r~No smoke colour was specified"
    SHX5_2(SHX6_2)
    return
  end
  SHX5_2 = GetHashKey
  SHX6_2 = SHX1_2[1]
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = SHX0_1
  SHX6_2 = SHX6_2[SHX5_2]
  if not SHX6_2 then
    SHX6_2 = notify
    SHX7_2 = "~r~The specified smoke colour does not exist"
    SHX6_2(SHX7_2)
    return
  end
  SHX6_2 = SHX1_1
  SHX6_2 = SHX6_2[SHX4_2]
  SHX7_2 = tostring
  SHX8_2 = SHX0_1
  SHX8_2 = SHX8_2[SHX5_2]
  SHX8_2 = SHX8_2.mod
  SHX7_2 = SHX7_2(SHX8_2)
  SHX6_2 = SHX6_2[SHX7_2]
  SHX6_2 = not SHX6_2
  if nil == SHX6_2 then
    SHX6_2 = notify
    SHX7_2 = "~r~You have not purchased this colour in LS Customs"
    SHX6_2(SHX7_2)
    return
  end
  SHX6_2 = DecorSetInt
  SHX7_2 = SHX2_2
  SHX8_2 = "b67d156704"
  SHX9_2 = SHX5_2
  SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX6_2 = SHX3_1
  SHX7_2 = SHX2_2
  SHX6_2(SHX7_2)
end
SHX7_1 = false
SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX4_1 = RegisterCommand
SHX5_1 = "togglesmoke"
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerVehicle
  SHX0_2, SHX1_2 = SHX0_2()
  if 0 == SHX0_2 or not SHX1_2 then
    return
  end
  SHX2_2 = IsThisModelAPlane
  SHX3_2 = GetEntityModel
  SHX4_2 = SHX0_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  if not SHX2_2 then
    return
  end
  SHX2_2 = DecorGetInt
  SHX3_2 = SHX0_2
  SHX4_2 = "b67d156704"
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  if 0 == SHX2_2 then
    SHX2_2 = notify
    SHX3_2 = "No smoke colour has been set or purchased for this vehicle"
    SHX2_2(SHX3_2)
    return
  end
  SHX2_2 = DecorGetBool
  SHX3_2 = SHX0_2
  SHX4_2 = "916cd57ed7"
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = not SHX2_2
  SHX3_2 = DecorSetBool
  SHX4_2 = SHX0_2
  SHX5_2 = "916cd57ed7"
  SHX6_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = SHX3_1
  SHX4_2 = SHX0_2
  SHX3_2(SHX4_2)
end
SHX7_1 = false
SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX4_1 = RegisterKeyMapping
SHX5_1 = "togglesmoke"
SHX6_1 = "Toggle Plane Stunt Smoke"
SHX7_1 = "KEYBOARD"
SHX8_1 = "G"
SHX4_1(SHX5_1, SHX6_1, SHX7_1, SHX8_1)
SHX4_1 = CMG
function SHX5_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX3_2 = SHX1_1
  SHX3_2[SHX1_2] = SHX2_2
  SHX3_2 = pairs
  SHX4_2 = SHX2_2
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    if true == SHX8_2 then
      SHX9_2 = pairs
      SHX10_2 = SHX0_1
      SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX9_2(SHX10_2)
      for SHX13_2, SHX14_2 in SHX9_2, SHX10_2, SHX11_2, SHX12_2 do
        SHX15_2 = SHX14_2.mod
        SHX16_2 = tonumber
        SHX17_2 = SHX7_2
        SHX16_2 = SHX16_2(SHX17_2)
        if SHX15_2 == SHX16_2 then
          SHX15_2 = DecorSetInt
          SHX16_2 = SHX0_2
          SHX17_2 = "b67d156704"
          SHX18_2 = SHX13_2
          SHX15_2(SHX16_2, SHX17_2, SHX18_2)
          break
        end
      end
    end
  end
end
SHX4_1.setVehicleIdPlaneSmoke = SHX5_1
function SHX4_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX1_2 = GetEntityModel
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = IsThisModelAPlane
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    SHX2_2 = ""
    return SHX2_2
  end
  SHX2_2 = nil
  SHX3_2 = DecorGetInt
  SHX4_2 = SHX0_2
  SHX5_2 = "b67d156704"
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX4_2 = SHX0_1
  SHX4_2 = SHX4_2[SHX3_2]
  if SHX4_2 then
    SHX4_2 = SHX0_1
    SHX4_2 = SHX4_2[SHX3_2]
    SHX2_2 = SHX4_2.debugName
  elseif 0 == SHX3_2 then
    SHX2_2 = "Not Set"
  else
    SHX4_2 = tostring
    SHX5_2 = SHX3_2
    SHX4_2 = SHX4_2(SHX5_2)
    SHX2_2 = SHX4_2
  end
  SHX4_2 = string
  SHX4_2 = SHX4_2.format
  SHX5_2 = [[
Smoke Enabled: %s
Smoke Type: %s]]
  SHX6_2 = DecorGetBool
  SHX7_2 = SHX0_2
  SHX8_2 = "916cd57ed7"
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  if SHX6_2 then
    SHX6_2 = "Yes"
    if SHX6_2 then
      goto SHX_LABEL_45
    end
  end
  SHX6_2 = "No"
  -- [FIX IF ERROR] Move ::SHX_LABEL_45:: outside nested blocks until all 'goto SHX_LABEL_45' can see it
  ::SHX_LABEL_45::
  SHX7_2 = SHX2_2
  return SHX4_2(SHX5_2, SHX6_2, SHX7_2)
end
SHX5_1 = CMG
SHX5_1 = SHX5_1.registerDevMenuEntityEditor
SHX6_1 = "Stunt Smoke"
SHX7_1 = "vehicle"
SHX8_1 = SHX4_1
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
SHX5_1(SHX6_1, SHX7_1, SHX8_1, SHX9_1)
