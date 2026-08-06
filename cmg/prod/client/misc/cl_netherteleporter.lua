-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1
SHX0_1 = {}
SHX1_1 = {}
SHX1_1.id = 1
SHX2_1 = vector3
SHX3_1 = -3679.8432617188
SHX4_1 = -3487.1181640625
SHX5_1 = 11.354908943176
SHX2_1 = SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX1_1.position = SHX2_1
SHX1_1.name = "Admin Island 2 Legion "
SHX1_1.destination = 8
SHX2_1 = {}
SHX2_1.id = 2
SHX3_1 = vector3
SHX4_1 = -3675.1618652344
SHX5_1 = -3491.994140625
SHX6_1 = 11.357361793518
SHX3_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1)
SHX2_1.position = SHX3_1
SHX2_1.name = "Admin Island 2 Paleto"
SHX2_1.destination = 7
SHX3_1 = {}
SHX3_1.id = 3
SHX4_1 = vector3
SHX5_1 = -3670.7426757812
SHX6_1 = -3543.9267578125
SHX7_1 = 11.363542556763
SHX4_1 = SHX4_1(SHX5_1, SHX6_1, SHX7_1)
SHX3_1.position = SHX4_1
SHX3_1.name = "Admin Island 2 VIP Island"
SHX3_1.destination = 5
SHX4_1 = {}
SHX4_1.id = 4
SHX5_1 = vector3
SHX6_1 = -3739.6174316406
SHX7_1 = -3476.6198730469
SHX8_1 = 11.3069190979
SHX5_1 = SHX5_1(SHX6_1, SHX7_1, SHX8_1)
SHX4_1.position = SHX5_1
SHX4_1.name = "Admin Island 2 VIP Sandy"
SHX4_1.destination = 6
SHX5_1 = {}
SHX5_1.id = 5
SHX6_1 = vector3
SHX7_1 = -2172.5078125
SHX8_1 = 5142.3876953125
SHX9_1 = 2.8200016021729
SHX6_1 = SHX6_1(SHX7_1, SHX8_1, SHX9_1)
SHX5_1.position = SHX6_1
SHX5_1.name = "VIP Island"
SHX5_1.destination = nil
SHX6_1 = {}
SHX6_1.id = 6
SHX7_1 = vector3
SHX8_1 = 1842.3981933594
SHX9_1 = 3667.9018554688
SHX10_1 = 33.680000305176
SHX7_1 = SHX7_1(SHX8_1, SHX9_1, SHX10_1)
SHX6_1.position = SHX7_1
SHX6_1.name = "Sandy"
SHX6_1.destination = nil
SHX7_1 = {}
SHX7_1.id = 7
SHX8_1 = vector3
SHX9_1 = 131.46571350098
SHX10_1 = 6422.3735351562
SHX11_1 = 31.338863372803
SHX8_1 = SHX8_1(SHX9_1, SHX10_1, SHX11_1)
SHX7_1.position = SHX8_1
SHX7_1.name = "Paleto"
SHX7_1.destination = nil
SHX8_1 = {}
SHX8_1.id = 8
SHX9_1 = vector3
SHX10_1 = 167.32621765137
SHX11_1 = -1073.3220214844
SHX12_1 = 29.192348480225
SHX9_1 = SHX9_1(SHX10_1, SHX11_1, SHX12_1)
SHX8_1.position = SHX9_1
SHX8_1.name = "Legion"
SHX8_1.destination = nil
SHX0_1[1] = SHX1_1
SHX0_1[2] = SHX2_1
SHX0_1[3] = SHX3_1
SHX0_1[4] = SHX4_1
SHX0_1[5] = SHX5_1
SHX0_1[6] = SHX6_1
SHX0_1[7] = SHX7_1
SHX0_1[8] = SHX8_1
function SHX1_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = SHX0_2[1]
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerCombatTimer
  SHX1_2 = SHX1_2()
  if SHX1_2 > 0 then
    SHX1_2 = notify
    SHX2_2 = "~r~You can not teleport whilst you have a combat timer."
    SHX1_2(SHX2_2)
    return
  end
  SHX1_2 = AnimpostfxPlay
  SHX2_2 = "ArenaWheelPurple"
  SHX3_2 = 5000
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = PlaySoundFrontend
  SHX2_2 = -1
  SHX3_2 = "FocusIn"
  SHX4_2 = "HintCamSounds"
  SHX5_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = {}
  SHX2_2 = "scr_tplaces"
  SHX3_2 = "scr_tplaces_team_swap"
  SHX4_2 = 1.0
  SHX1_2[1] = SHX2_2
  SHX1_2[2] = SHX3_2
  SHX1_2[3] = SHX4_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerCoords
  SHX2_2 = SHX2_2()
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.loadPtfx
  SHX4_2 = SHX1_2[1]
  SHX3_2(SHX4_2)
  SHX3_2 = UseParticleFxAsset
  SHX4_2 = SHX1_2[1]
  SHX3_2(SHX4_2)
  SHX3_2 = StartParticleFxNonLoopedAtCoord
  SHX4_2 = SHX1_2[2]
  SHX5_2 = SHX2_2.x
  SHX6_2 = SHX2_2.y
  SHX7_2 = SHX2_2.z
  SHX8_2 = 0.0
  SHX9_2 = 0.0
  SHX10_2 = 0.0
  SHX11_2 = SHX1_2[3]
  SHX12_2 = false
  SHX13_2 = false
  SHX14_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX3_2 = RemoveNamedPtfxAsset
  SHX4_2 = SHX1_2[1]
  SHX3_2(SHX4_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerPed
  SHX3_2 = SHX3_2()
  SHX4_2 = NetworkFadeOutEntity
  SHX5_2 = SHX3_2
  SHX6_2 = true
  SHX7_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = DoScreenFadeOut
  SHX5_2 = 1000
  SHX4_2(SHX5_2)
  SHX4_2 = Citizen
  SHX4_2 = SHX4_2.Wait
  SHX5_2 = 1000
  SHX4_2(SHX5_2)
  SHX4_2 = SetEntityCoords
  SHX5_2 = SHX3_2
  SHX6_2 = SHX0_2.position
  SHX6_2 = SHX6_2.x
  SHX7_2 = SHX0_2.position
  SHX7_2 = SHX7_2.y
  SHX8_2 = SHX0_2.position
  SHX8_2 = SHX8_2.z
  SHX9_2 = true
  SHX10_2 = false
  SHX11_2 = false
  SHX12_2 = true
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX4_2 = SetEntityHeading
  SHX5_2 = SHX3_2
  SHX6_2 = SHX0_2.h
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = NetworkFadeInEntity
  SHX5_2 = SHX3_2
  SHX6_2 = false
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = Citizen
  SHX4_2 = SHX4_2.Wait
  SHX5_2 = 1000
  SHX4_2(SHX5_2)
  SHX4_2 = DoScreenFadeIn
  SHX5_2 = 1000
  SHX4_2(SHX5_2)
  SHX4_2 = AnimpostfxStopAll
  SHX4_2()
end
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX0_2.permission
  if SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.hasClientPermission
    SHX2_2 = SHX0_2.permission
    SHX1_2 = SHX1_2(SHX2_2)
    if not SHX1_2 then
      return
    end
  end
  SHX1_2 = SHX1_1
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
end
SHX5_1 = Citizen
SHX5_1 = SHX5_1.CreateThread
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX0_2 = pairs
  SHX1_2 = SHX0_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = SHX5_2.destination
    if SHX6_2 then
      SHX6_2 = CMG
      SHX6_2 = SHX6_2.createArea
      SHX7_2 = "nether_teleporter_"
      SHX8_2 = SHX5_2.id
      SHX7_2 = SHX7_2 .. SHX8_2
      SHX8_2 = SHX5_2.position
      SHX9_2 = 1.0
      SHX10_2 = 10.0
      SHX11_2 = SHX2_1
      SHX12_2 = SHX3_1
      SHX13_2 = SHX4_1
      SHX14_2 = {}
      SHX16_2 = SHX5_2.destination
      SHX15_2 = SHX0_1
      SHX15_2 = SHX15_2[SHX16_2]
      SHX14_2[1] = SHX15_2
      SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    end
  end
end
SHX5_1(SHX6_1)
