-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1
SHX0_1 = false
SHX1_1 = {}
SHX2_1 = {}
SHX3_1 = {}
SHX4_1 = {}
SHX5_1 = nil
SHX6_1 = {}
SHX7_1 = -545580178
SHX8_1 = {}
SHX8_1.pfxDict = "scr_stunts"
SHX8_1.pfxName = "scr_stunts_fire_ring"
SHX9_1 = vector3
SHX10_1 = 0.0
SHX11_1 = 0.0
SHX12_1 = 4.0
SHX9_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1)
SHX8_1.offset = SHX9_1
SHX8_1.scale = 0.2
SHX6_1[SHX7_1] = SHX8_1
SHX7_1 = -35121593
SHX8_1 = {}
SHX8_1.pfxDict = "scr_stunts"
SHX8_1.pfxName = "scr_stunts_fire_ring"
SHX9_1 = vector3
SHX10_1 = 0.0
SHX11_1 = 0.0
SHX12_1 = 10.0
SHX9_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1)
SHX8_1.offset = SHX9_1
SHX8_1.scale = 0.4
SHX6_1[SHX7_1] = SHX8_1
SHX7_1 = 737590223
SHX8_1 = {}
SHX8_1.pfxDict = "scr_stunts"
SHX8_1.pfxName = "scr_stunts_fire_ring"
SHX9_1 = vector3
SHX10_1 = 0.0
SHX11_1 = 0.0
SHX12_1 = 25.0
SHX9_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1)
SHX8_1.offset = SHX9_1
SHX8_1.scale = 1.0
SHX6_1[SHX7_1] = SHX8_1
SHX7_1 = {}
SHX7_1.cmg_minigames_dust2 = true
SHX7_1.cmg_minigame_lego = true
SHX7_1.nuketown = true
SHX7_1.shipment = true
SHX7_1.map1 = true
SHX7_1.dragonball = true
SHX7_1.NOT_IPL = true
function SHX8_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2
  SHX8_2 = SHX6_1
  SHX8_2 = SHX8_2[SHX1_2]
  if SHX8_2 then
    SHX8_2 = SHX6_1
    SHX8_2 = SHX8_2[SHX1_2]
    SHX9_2 = CMG
    SHX9_2 = SHX9_2.loadPtfx
    SHX10_2 = SHX8_2.pfxDict
    SHX9_2(SHX10_2)
    SHX9_2 = StartParticleFxLoopedAtCoord
    SHX10_2 = SHX8_2.pfxName
    SHX11_2 = SHX8_2.offset
    SHX11_2 = SHX11_2.x
    SHX11_2 = SHX2_2 + SHX11_2
    SHX12_2 = SHX8_2.offset
    SHX12_2 = SHX12_2.y
    SHX12_2 = SHX3_2 + SHX12_2
    SHX13_2 = SHX8_2.offset
    SHX13_2 = SHX13_2.z
    SHX13_2 = SHX4_2 + SHX13_2
    SHX14_2 = SHX5_2
    SHX15_2 = SHX6_2
    SHX16_2 = SHX7_2
    SHX17_2 = SHX8_2.scale
    SHX18_2 = false
    SHX19_2 = false
    SHX20_2 = false
    SHX21_2 = false
    SHX9_2 = SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
    SHX10_2 = SetParticleFxLoopedColour
    SHX11_2 = SHX9_2
    SHX12_2 = 0
    SHX13_2 = 255
    SHX14_2 = 0
    SHX15_2 = false
    SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    SHX10_2 = table
    SHX10_2 = SHX10_2.insert
    SHX11_2 = SHX2_1
    SHX12_2 = SHX9_2
    SHX10_2(SHX11_2, SHX12_2)
  end
end
SHX9_1 = {}
SHX10_1 = -1006978322
SHX9_1[SHX10_1] = true
SHX10_1 = -388593496
SHX9_1[SHX10_1] = true
SHX10_1 = -66244843
SHX9_1[SHX10_1] = true
SHX10_1 = -1170462683
SHX9_1[SHX10_1] = true
SHX10_1 = 993442923
SHX9_1[SHX10_1] = true
SHX10_1 = 737005456
SHX9_1[SHX10_1] = true
SHX10_1 = -904856315
SHX9_1[SHX10_1] = true
SHX10_1 = -279848256
SHX9_1[SHX10_1] = true
SHX10_1 = 588352126
SHX9_1[SHX10_1] = true
SHX10_1 = {}
SHX11_1 = 346059280
SHX10_1[SHX11_1] = true
SHX11_1 = 620582592
SHX10_1[SHX11_1] = true
SHX11_1 = 85342060
SHX10_1[SHX11_1] = true
SHX11_1 = 483832101
SHX10_1[SHX11_1] = true
SHX11_1 = 930976262
SHX10_1[SHX11_1] = true
SHX11_1 = 1677872320
SHX10_1[SHX11_1] = true
SHX11_1 = 708828172
SHX10_1[SHX11_1] = true
SHX11_1 = 950795200
SHX10_1[SHX11_1] = true
SHX11_1 = -1260656854
SHX10_1[SHX11_1] = true
SHX11_1 = -1875404158
SHX10_1[SHX11_1] = true
SHX11_1 = -864804458
SHX10_1[SHX11_1] = true
SHX11_1 = -1302470386
SHX10_1[SHX11_1] = true
SHX11_1 = 1518201148
SHX10_1[SHX11_1] = true
SHX11_1 = 384852939
SHX10_1[SHX11_1] = true
SHX11_1 = 117169896
SHX10_1[SHX11_1] = true
SHX11_1 = -1479958115
SHX10_1[SHX11_1] = true
SHX11_1 = -227275508
SHX10_1[SHX11_1] = true
SHX11_1 = 1431235846
SHX10_1[SHX11_1] = true
SHX11_1 = 1832852758
SHX10_1[SHX11_1] = true
function SHX11_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  if -1 == SHX1_2 then
    SHX2_2 = false
    SHX3_2 = 0
    SHX4_2 = 0
    return SHX2_2, SHX3_2, SHX4_2
  end
  SHX2_2 = -1
  SHX3_2 = -1
  SHX4_2 = SHX9_1
  SHX4_2 = SHX4_2[SHX0_2]
  if SHX4_2 then
    if 1 == SHX1_2 then
      SHX4_2 = 15
      SHX3_2 = 0.3
      SHX2_2 = SHX4_2
    elseif 2 == SHX1_2 then
      SHX4_2 = 25
      SHX3_2 = 0.3
      SHX2_2 = SHX4_2
    elseif 3 == SHX1_2 then
      SHX4_2 = 35
      SHX3_2 = 0.5
      SHX2_2 = SHX4_2
    elseif 4 == SHX1_2 then
      SHX4_2 = 45
      SHX3_2 = 0.5
      SHX2_2 = SHX4_2
    elseif 5 == SHX1_2 then
      SHX4_2 = 100
      SHX3_2 = 0.5
      SHX2_2 = SHX4_2
    else
      SHX4_2 = 25
      SHX3_2 = 0.4
      SHX2_2 = SHX4_2
    end
  else
    SHX4_2 = SHX10_1
    SHX4_2 = SHX4_2[SHX0_2]
    if SHX4_2 then
      SHX3_2 = -1
      if 1 == SHX1_2 then
        SHX2_2 = 44
      elseif 2 == SHX1_2 then
        SHX2_2 = 30
      elseif 3 == SHX1_2 then
        SHX2_2 = 16
      else
        SHX2_2 = 30
      end
    else
      SHX4_2 = false
      SHX5_2 = 0
      SHX6_2 = 0
      return SHX4_2, SHX5_2, SHX6_2
    end
  end
  SHX4_2 = true
  SHX5_2 = SHX2_2
  SHX6_2 = SHX3_2
  return SHX4_2, SHX5_2, SHX6_2
end
function SHX12_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  if SHX2_2 then
    SHX3_2 = SHX2_2
    SHX4_2 = SHX11_1
    SHX5_2 = SHX1_2
    SHX6_2 = SHX3_2
    SHX4_2, SHX5_2, SHX6_2 = SHX4_2(SHX5_2, SHX6_2)
    if SHX4_2 then
      if SHX5_2 > -1 then
        SHX7_2 = SetObjectStuntPropSpeedup
        SHX8_2 = SHX0_2
        SHX9_2 = SHX5_2
        SHX7_2(SHX8_2, SHX9_2)
      end
      if SHX6_2 > -1 then
        SHX7_2 = SetObjectStuntPropDuration
        SHX8_2 = SHX0_2
        SHX9_2 = SHX6_2
        SHX7_2(SHX8_2, SHX9_2)
      end
    end
  end
end
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = IsNamedRendertargetRegistered
  SHX1_2 = "blimp_text"
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 then
    SHX0_2 = RegisterNamedRendertarget
    SHX1_2 = "blimp_text"
    SHX2_2 = false
    SHX0_2(SHX1_2, SHX2_2)
  end
  SHX0_2 = IsNamedRendertargetLinked
  SHX1_2 = 1575467428
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 then
    SHX0_2 = LinkNamedRendertarget
    SHX1_2 = 1575467428
    SHX0_2(SHX1_2)
  end
  SHX0_2 = RequestScaleformMovie
  SHX1_2 = "BLIMP_TEXT"
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
  SHX3_2 = "SET_MESSAGE"
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = _ENV
  SHX2_2 = "ScaleformMovieMethodAddParamTextureNameString_2"
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = "CMG EVENTS"
  SHX1_2(SHX2_2)
  SHX1_2 = BeginTextCommandScaleformString
  SHX2_2 = "SR_BLIMPTX"
  SHX1_2(SHX2_2)
  SHX1_2 = EndTextCommandScaleformString
  SHX1_2()
  SHX1_2 = EndScaleformMovieMethod
  SHX1_2()
  SHX1_2 = BeginScaleformMovieMethod
  SHX2_2 = SHX0_2
  SHX3_2 = "SET_COLOUR"
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = ScaleformMovieMethodAddParamInt
  SHX2_2 = 1
  SHX1_2(SHX2_2)
  SHX1_2 = EndScaleformMovieMethod
  SHX1_2()
  SHX1_2 = BeginScaleformMovieMethod
  SHX2_2 = SHX0_2
  SHX3_2 = "SET_SCROLL_SPEED"
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = ScaleformMovieMethodAddParamFloat
  SHX2_2 = 100.0
  SHX1_2(SHX2_2)
  SHX1_2 = EndScaleformMovieMethod
  SHX1_2()
  SHX1_2 = N_0x32f34ff7f617643b
  SHX2_2 = SHX0_2
  SHX3_2 = 1
  SHX1_2(SHX2_2, SHX3_2)
  SHX5_1 = SHX0_2
end
SHX14_1 = CMG
function SHX15_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX3_2 = false
  SHX0_1 = SHX3_2
  if SHX1_2 then
    SHX3_2 = DoScreenFadeOut
    SHX4_2 = 250
    SHX3_2(SHX4_2)
  end
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.setPlayerInvisible
  SHX4_2 = true
  SHX3_2(SHX4_2)
  SHX3_2 = type
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  if "string" == SHX3_2 then
    SHX3_2 = SHX7_1
    SHX3_2 = SHX3_2[SHX0_2]
    if SHX3_2 then
      if "NOT_IPL" == SHX0_2 then
        goto SHX_LABEL_269
      end
      SHX3_2 = print
      SHX4_2 = "loading ipl"
      SHX3_2(SHX4_2)
      SHX3_2 = RequestIpl
      SHX4_2 = SHX0_2
      SHX3_2(SHX4_2)
      while true do
        SHX3_2 = IsIplActive
        SHX4_2 = SHX0_2
        SHX3_2 = SHX3_2(SHX4_2)
        if SHX3_2 then
          break
        end
        SHX3_2 = print
        SHX4_2 = "loading ipl"
        SHX3_2(SHX4_2)
        SHX3_2 = Wait
        SHX4_2 = 0
        SHX3_2(SHX4_2)
      end
      SHX3_2 = table
      SHX3_2 = SHX3_2.insert
      SHX4_2 = SHX4_1
      SHX5_2 = SHX0_2
      SHX3_2(SHX4_2, SHX5_2)
  end
  else
    SHX3_2 = 1
    SHX4_2 = SHX0_2.models
    SHX4_2 = #SHX4_2
    SHX5_2 = 1
    for SHX6_2 = SHX3_2, SHX4_2, SHX5_2 do
      SHX7_2 = CMG
      SHX7_2 = SHX7_2.loadModel
      SHX8_2 = SHX0_2.models
      SHX8_2 = SHX8_2[SHX6_2]
      SHX7_2(SHX8_2)
      SHX7_2 = CreateObjectNoOffset
      SHX8_2 = SHX0_2.models
      SHX8_2 = SHX8_2[SHX6_2]
      SHX9_2 = SHX0_2.modelPos
      SHX9_2 = SHX9_2[SHX6_2]
      SHX9_2 = SHX9_2.x
      SHX10_2 = SHX0_2.modelPos
      SHX10_2 = SHX10_2[SHX6_2]
      SHX10_2 = SHX10_2.y
      SHX11_2 = SHX0_2.modelPos
      SHX11_2 = SHX11_2[SHX6_2]
      SHX11_2 = SHX11_2.z
      SHX12_2 = false
      SHX13_2 = false
      SHX14_2 = false
      SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
      SHX8_2 = SHX0_2.prpclr
      if SHX8_2 then
        SHX8_2 = SetObjectTextureVariation
        SHX9_2 = SHX7_2
        SHX10_2 = SHX0_2.prpclr
        SHX10_2 = SHX10_2[SHX6_2]
        SHX8_2(SHX9_2, SHX10_2)
      end
      SHX8_2 = FreezeEntityPosition
      SHX9_2 = SHX7_2
      SHX10_2 = true
      SHX8_2(SHX9_2, SHX10_2)
      SHX8_2 = SetEntityHeading
      SHX9_2 = SHX7_2
      SHX10_2 = SHX0_2.modelHeading
      SHX10_2 = SHX10_2[SHX6_2]
      SHX8_2(SHX9_2, SHX10_2)
      SHX8_2 = SetEntityRotation
      SHX9_2 = SHX7_2
      SHX10_2 = SHX0_2.modelRotation
      SHX10_2 = SHX10_2[SHX6_2]
      SHX10_2 = SHX10_2.x
      SHX11_2 = SHX0_2.modelRotation
      SHX11_2 = SHX11_2[SHX6_2]
      SHX11_2 = SHX11_2.y
      SHX12_2 = SHX0_2.modelRotation
      SHX12_2 = SHX12_2[SHX6_2]
      SHX12_2 = SHX12_2.z
      SHX13_2 = 2
      SHX14_2 = true
      SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
      SHX8_2 = SHX8_1
      SHX9_2 = SHX7_2
      SHX10_2 = SHX0_2.models
      SHX10_2 = SHX10_2[SHX6_2]
      SHX11_2 = SHX0_2.modelPos
      SHX11_2 = SHX11_2[SHX6_2]
      SHX11_2 = SHX11_2.x
      SHX12_2 = SHX0_2.modelPos
      SHX12_2 = SHX12_2[SHX6_2]
      SHX12_2 = SHX12_2.y
      SHX13_2 = SHX0_2.modelPos
      SHX13_2 = SHX13_2[SHX6_2]
      SHX13_2 = SHX13_2.z
      SHX14_2 = SHX0_2.modelRotation
      SHX14_2 = SHX14_2[SHX6_2]
      SHX14_2 = SHX14_2.x
      SHX15_2 = SHX0_2.modelRotation
      SHX15_2 = SHX15_2[SHX6_2]
      SHX15_2 = SHX15_2.y
      SHX16_2 = SHX0_2.modelRotation
      SHX16_2 = SHX16_2[SHX6_2]
      SHX16_2 = SHX16_2.z
      SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
      SHX8_2 = SHX0_2.speedBoosts
      if SHX8_2 then
        SHX8_2 = SHX12_1
        SHX9_2 = SHX7_2
        SHX10_2 = SHX0_2.models
        SHX10_2 = SHX10_2[SHX6_2]
        SHX11_2 = SHX0_2.speedBoosts
        SHX11_2 = SHX11_2[SHX6_2]
        SHX8_2(SHX9_2, SHX10_2, SHX11_2)
      end
      SHX8_2 = table
      SHX8_2 = SHX8_2.insert
      SHX9_2 = SHX1_1
      SHX10_2 = SHX7_2
      SHX8_2(SHX9_2, SHX10_2)
    end
    SHX3_2 = 1
    SHX4_2 = SHX0_2.models2
    SHX4_2 = #SHX4_2
    SHX5_2 = 1
    for SHX6_2 = SHX3_2, SHX4_2, SHX5_2 do
      SHX7_2 = CMG
      SHX7_2 = SHX7_2.loadModel
      SHX8_2 = SHX0_2.models2
      SHX8_2 = SHX8_2[SHX6_2]
      SHX7_2(SHX8_2)
      SHX7_2 = CreateObjectNoOffset
      SHX8_2 = SHX0_2.models2
      SHX8_2 = SHX8_2[SHX6_2]
      SHX9_2 = SHX0_2.modelPos2
      SHX9_2 = SHX9_2[SHX6_2]
      SHX9_2 = SHX9_2.x
      SHX10_2 = SHX0_2.modelPos2
      SHX10_2 = SHX10_2[SHX6_2]
      SHX10_2 = SHX10_2.y
      SHX11_2 = SHX0_2.modelPos2
      SHX11_2 = SHX11_2[SHX6_2]
      SHX11_2 = SHX11_2.z
      SHX12_2 = false
      SHX13_2 = false
      SHX14_2 = SHX0_2.modelDynamic2
      SHX14_2 = SHX14_2[SHX6_2]
      SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
      SHX8_2 = SetObjectTextureVariation
      SHX9_2 = SHX7_2
      SHX10_2 = SHX0_2.prpclr2
      SHX10_2 = SHX10_2[SHX6_2]
      SHX8_2(SHX9_2, SHX10_2)
      SHX8_2 = SetEntityHeading
      SHX9_2 = SHX7_2
      SHX10_2 = SHX0_2.modelHeading2
      SHX10_2 = SHX10_2[SHX6_2]
      SHX8_2(SHX9_2, SHX10_2)
      SHX8_2 = SetEntityRotation
      SHX9_2 = SHX7_2
      SHX10_2 = SHX0_2.modelRotation2
      SHX10_2 = SHX10_2[SHX6_2]
      SHX10_2 = SHX10_2.x
      SHX11_2 = SHX0_2.modelRotation2
      SHX11_2 = SHX11_2[SHX6_2]
      SHX11_2 = SHX11_2.y
      SHX12_2 = SHX0_2.modelRotation2
      SHX12_2 = SHX12_2[SHX6_2]
      SHX12_2 = SHX12_2.z
      SHX13_2 = 2
      SHX14_2 = true
      SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
      SHX8_2 = SHX8_1
      SHX9_2 = SHX7_2
      SHX10_2 = SHX0_2.models2
      SHX10_2 = SHX10_2[SHX6_2]
      SHX11_2 = SHX0_2.modelPos2
      SHX11_2 = SHX11_2[SHX6_2]
      SHX11_2 = SHX11_2.x
      SHX12_2 = SHX0_2.modelPos2
      SHX12_2 = SHX12_2[SHX6_2]
      SHX12_2 = SHX12_2.y
      SHX13_2 = SHX0_2.modelPos2
      SHX13_2 = SHX13_2[SHX6_2]
      SHX13_2 = SHX13_2.z
      SHX14_2 = SHX0_2.modelRotation2
      SHX14_2 = SHX14_2[SHX6_2]
      SHX14_2 = SHX14_2.x
      SHX15_2 = SHX0_2.modelRotation2
      SHX15_2 = SHX15_2[SHX6_2]
      SHX15_2 = SHX15_2.y
      SHX16_2 = SHX0_2.modelRotation2
      SHX16_2 = SHX16_2[SHX6_2]
      SHX16_2 = SHX16_2.z
      SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
      SHX8_2 = table
      SHX8_2 = SHX8_2.insert
      SHX9_2 = SHX1_1
      SHX10_2 = SHX7_2
      SHX8_2(SHX9_2, SHX10_2)
    end
    if not SHX2_2 then
      SHX3_2 = 1
      SHX4_2 = SHX0_2.vehicles
      SHX4_2 = SHX4_2.models
      SHX4_2 = #SHX4_2
      SHX5_2 = 1
      for SHX6_2 = SHX3_2, SHX4_2, SHX5_2 do
        SHX7_2 = SHX0_2.vehicles
        SHX7_2 = SHX7_2.models
        SHX7_2 = SHX7_2[SHX6_2]
        SHX8_2 = SHX0_2.vehicles
        SHX8_2 = SHX8_2.locations
        SHX8_2 = SHX8_2[SHX6_2]
        SHX9_2 = SHX0_2.vehicles
        SHX9_2 = SHX9_2.heading
        SHX9_2 = SHX9_2[SHX6_2]
        SHX10_2 = CMG
        SHX10_2 = SHX10_2.loadModel
        SHX11_2 = SHX7_2
        SHX10_2(SHX11_2)
        SHX10_2 = CMG
        SHX10_2 = SHX10_2.spawnVehicle
        SHX11_2 = SHX7_2
        SHX12_2 = SHX8_2.x
        SHX13_2 = SHX8_2.y
        SHX14_2 = SHX8_2.z
        SHX15_2 = SHX9_2
        SHX16_2 = false
        SHX17_2 = false
        SHX18_2 = true
        SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
        SHX11_2 = SetVehicleDoorsLocked
        SHX12_2 = SHX10_2
        SHX13_2 = 2
        SHX11_2(SHX12_2, SHX13_2)
        SHX11_2 = FreezeEntityPosition
        SHX12_2 = SHX10_2
        SHX13_2 = true
        SHX11_2(SHX12_2, SHX13_2)
        SHX11_2 = table
        SHX11_2 = SHX11_2.insert
        SHX12_2 = SHX3_1
        SHX13_2 = SHX10_2
        SHX11_2(SHX12_2, SHX13_2)
      end
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_269:: outside nested blocks until all 'goto SHX_LABEL_269' can see it
  ::SHX_LABEL_269::
  SHX3_2 = SHX0_2.pickups
  if SHX3_2 then
    SHX3_2 = 1
    SHX4_2 = SHX0_2.pickups
    SHX4_2 = #SHX4_2
    SHX5_2 = 1
    for SHX6_2 = SHX3_2, SHX4_2, SHX5_2 do
      SHX7_2 = SHX0_2.pickups
      SHX7_2 = SHX7_2[SHX6_2]
      SHX8_2 = CMG
      SHX8_2 = SHX8_2.createPickup
      SHX9_2 = SHX7_2.type
      SHX10_2 = SHX7_2.coords
      SHX8_2(SHX9_2, SHX10_2)
    end
  end
  SHX3_2 = SHX13_1
  SHX3_2()
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.setPlayerInvisible
  SHX4_2 = false
  SHX3_2(SHX4_2)
  SHX3_2 = true
  SHX0_1 = SHX3_2
  if SHX1_2 then
    SHX3_2 = Wait
    SHX4_2 = 1000
    SHX3_2(SHX4_2)
    SHX3_2 = DoScreenFadeIn
    SHX4_2 = 1000
    SHX3_2(SHX4_2)
  end
end
SHX14_1.loadClientRockstarMap = SHX15_1
SHX14_1 = CMG
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = pairs
  SHX1_2 = SHX1_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = DoesEntityExist
    SHX7_2 = SHX5_2
    SHX6_2 = SHX6_2(SHX7_2)
    if SHX6_2 then
      SHX6_2 = DeleteObject
      SHX7_2 = SHX5_2
      SHX6_2(SHX7_2)
    end
  end
  SHX0_2 = pairs
  SHX1_2 = SHX2_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = DoesParticleFxLoopedExist
    SHX7_2 = SHX5_2
    SHX6_2 = SHX6_2(SHX7_2)
    if SHX6_2 then
      SHX6_2 = StopParticleFxLooped
      SHX7_2 = SHX5_2
      SHX8_2 = false
      SHX6_2(SHX7_2, SHX8_2)
    end
  end
  SHX0_2 = pairs
  SHX1_2 = SHX3_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = DoesEntityExist
    SHX7_2 = SHX5_2
    SHX6_2 = SHX6_2(SHX7_2)
    if SHX6_2 then
      SHX6_2 = DeleteEntity
      SHX7_2 = SHX5_2
      SHX6_2(SHX7_2)
    end
  end
  SHX0_2 = pairs
  SHX1_2 = SHX4_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = RemoveIpl
    SHX7_2 = SHX5_2
    SHX6_2(SHX7_2)
  end
  SHX0_2 = SHX5_1
  if SHX0_2 then
    SHX0_2 = HasScaleformMovieLoaded
    SHX1_2 = SHX5_1
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      SHX0_2 = SetScaleformMovieAsNoLongerNeeded
      SHX1_2 = SHX5_1
      SHX0_2(SHX1_2)
    end
  end
  SHX0_2 = IsNamedRendertargetRegistered
  SHX1_2 = "blimp_text"
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX0_2 = ReleaseNamedRendertarget
    SHX1_2 = "blimp_text"
    SHX0_2(SHX1_2)
  end
  SHX0_2 = {}
  SHX1_1 = SHX0_2
  SHX0_2 = {}
  SHX2_1 = SHX0_2
  SHX0_2 = {}
  SHX3_1 = SHX0_2
  SHX0_2 = {}
  SHX4_1 = SHX0_2
  SHX0_2 = nil
  SHX5_1 = SHX0_2
end
SHX14_1.cleanupRockstarMaps = SHX15_1
SHX14_1 = RegisterNetEvent
SHX15_1 = "1723bb249d"
function SHX16_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadClientRockstarMap
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
end
SHX14_1(SHX15_1, SHX16_1)
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX0_2 = SHX5_1
  if SHX0_2 then
    SHX0_2 = SetTextRenderId
    SHX1_2 = GetNamedRendertargetRenderId
    SHX2_2 = "blimp_text"
    SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX1_2(SHX2_2)
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    SHX0_2 = SetScriptGfxDrawOrder
    SHX1_2 = 4
    SHX0_2(SHX1_2)
    SHX0_2 = SetScriptGfxDrawBehindPausemenu
    SHX1_2 = true
    SHX0_2(SHX1_2)
    SHX0_2 = SetScaleformFitRendertarget
    SHX1_2 = SHX5_1
    SHX2_2 = true
    SHX0_2(SHX1_2, SHX2_2)
    SHX0_2 = DrawScaleformMovie
    SHX1_2 = SHX5_1
    SHX2_2 = 0.0
    SHX3_2 = -0.08
    SHX4_2 = 1.0
    SHX5_2 = 1.7
    SHX6_2 = 255
    SHX7_2 = 255
    SHX8_2 = 255
    SHX9_2 = 255
    SHX10_2 = 0
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    SHX0_2 = SetTextRenderId
    SHX1_2 = GetDefaultScriptRendertargetRenderId
    SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX1_2()
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  end
end
SHX15_1 = CMG
SHX15_1 = SHX15_1.createThreadOnTick
SHX16_1 = SHX14_1
SHX17_1 = "Rockstar Map Blimp"
SHX15_1(SHX16_1, SHX17_1)
SHX15_1 = CMG
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX0_1
  return SHX0_2
end
SHX15_1.hasEventMapLoaded = SHX16_1
