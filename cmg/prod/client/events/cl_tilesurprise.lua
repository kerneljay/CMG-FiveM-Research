-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/events/cfg_tilesurprise"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = vector3
SHX2_1 = -3947.41
SHX3_1 = -1712.07
SHX4_1 = 629.52
SHX1_1 = SHX1_1(SHX2_1, SHX3_1, SHX4_1)
SHX2_1 = {}
SHX3_1 = {}
SHX4_1 = "red"
SHX5_1 = "~r~"
SHX3_1[1] = SHX4_1
SHX3_1[2] = SHX5_1
SHX4_1 = {}
SHX5_1 = "blue"
SHX6_1 = "~b~"
SHX4_1[1] = SHX5_1
SHX4_1[2] = SHX6_1
SHX5_1 = {}
SHX6_1 = "purple"
SHX7_1 = "~p~"
SHX5_1[1] = SHX6_1
SHX5_1[2] = SHX7_1
SHX6_1 = {}
SHX7_1 = "black"
SHX8_1 = "~c~"
SHX6_1[1] = SHX7_1
SHX6_1[2] = SHX8_1
SHX7_1 = {}
SHX8_1 = "white"
SHX9_1 = "~y~"
SHX7_1[1] = SHX8_1
SHX7_1[2] = SHX9_1
SHX8_1 = {}
SHX9_1 = "grey"
SHX10_1 = "~m~"
SHX8_1[1] = SHX9_1
SHX8_1[2] = SHX10_1
SHX9_1 = {}
SHX10_1 = "yellow"
SHX11_1 = "~y~"
SHX9_1[1] = SHX10_1
SHX9_1[2] = SHX11_1
SHX10_1 = {}
SHX11_1 = "orange"
SHX12_1 = "~o~"
SHX10_1[1] = SHX11_1
SHX10_1[2] = SHX12_1
SHX11_1 = {}
SHX12_1 = "green"
SHX13_1 = "~g~"
SHX11_1[1] = SHX12_1
SHX11_1[2] = SHX13_1
SHX12_1 = {}
SHX13_1 = "pink"
SHX14_1 = "~y~"
SHX12_1[1] = SHX13_1
SHX12_1[2] = SHX14_1
SHX2_1[1] = SHX3_1
SHX2_1[2] = SHX4_1
SHX2_1[3] = SHX5_1
SHX2_1[4] = SHX6_1
SHX2_1[5] = SHX7_1
SHX2_1[6] = SHX8_1
SHX2_1[7] = SHX9_1
SHX2_1[8] = SHX10_1
SHX2_1[9] = SHX11_1
SHX2_1[10] = SHX12_1
SHX3_1 = {}
SHX4_1 = CMG
SHX4_1 = SHX4_1.createTimerBars
SHX4_1 = SHX4_1()
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = GetVehiclePedIsUsing
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = GetEntityCoords
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = GetEntityRotation
  SHX4_2 = SHX0_2
  SHX5_2 = 2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX4_2 = CreateCameraWithParams
  SHX5_2 = "DEFAULT_SCRIPTED_CAMERA"
  SHX6_2 = SHX2_2.x
  SHX7_2 = SHX2_2.y
  SHX8_2 = SHX2_2.z
  SHX8_2 = SHX8_2 + 10.0
  SHX9_2 = SHX3_2.x
  SHX10_2 = SHX3_2.y
  SHX11_2 = SHX3_2.z
  SHX12_2 = 65.001
  SHX13_2 = false
  SHX14_2 = 2
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX5_2 = SetCamActiveWithInterp
  SHX6_2 = SHX4_2
  SHX7_2 = GetRenderingCam
  SHX7_2 = SHX7_2()
  SHX8_2 = 1000
  SHX9_2 = 5
  SHX10_2 = 5
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX5_2 = RenderScriptCams
  SHX6_2 = true
  SHX7_2 = true
  SHX8_2 = 3000
  SHX9_2 = true
  SHX10_2 = false
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX5_2 = PointCamAtEntity
  SHX6_2 = SHX4_2
  SHX7_2 = SHX1_2
  SHX8_2 = 1
  SHX9_2 = 1
  SHX10_2 = 1
  SHX11_2 = true
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX5_2 = ShakeCam
  SHX6_2 = SHX4_2
  SHX7_2 = "DEATH_FAIL_IN_EFFECT_SHAKE"
  SHX8_2 = 0.7
  SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = AnimpostfxPlay
  SHX6_2 = "DeadlineNeon"
  SHX7_2 = 3000
  SHX8_2 = false
  SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX5_2 = PlaySoundFrontend
  SHX6_2 = -1
  SHX7_2 = "ScreenFlash"
  SHX8_2 = "WastedSounds"
  SHX9_2 = false
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.announceMpBigMsg
  SHX6_2 = "~r~WASTED"
  SHX7_2 = ""
  SHX8_2 = 3000
  SHX9_2 = true
  SHX10_2 = true
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX5_2 = SHX3_1.round
  SHX6_2 = TaskLeaveVehicle
  SHX7_2 = SHX0_2
  SHX8_2 = SHX1_2
  SHX9_2 = 16
  SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX6_2 = ClearPedTasksImmediately
  SHX7_2 = SHX0_2
  SHX6_2(SHX7_2)
  SHX6_2 = SetEntityCoordsNoOffset
  SHX7_2 = SHX0_2
  SHX8_2 = SHX3_1.position
  SHX8_2 = SHX8_2.x
  SHX9_2 = SHX3_1.position
  SHX9_2 = SHX9_2.y
  SHX10_2 = SHX3_1.position
  SHX10_2 = SHX10_2.z
  SHX11_2 = true
  SHX12_2 = false
  SHX13_2 = false
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX6_2 = FreezeEntityPosition
  SHX7_2 = SHX0_2
  SHX8_2 = true
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = SetEntityVisible
  SHX7_2 = SHX0_2
  SHX8_2 = false
  SHX9_2 = false
  SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX6_2 = SetEntityCollision
  SHX7_2 = SHX0_2
  SHX8_2 = false
  SHX9_2 = false
  SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  while true do
    SHX6_2 = SHX3_1.round
    if SHX6_2 ~= SHX5_2 then
      break
    end
    SHX6_2 = Citizen
    SHX6_2 = SHX6_2.Wait
    SHX7_2 = 0
    SHX6_2(SHX7_2)
  end
  SHX6_2 = PlayerPedId
  SHX6_2 = SHX6_2()
  SHX0_2 = SHX6_2
  SHX6_2 = FreezeEntityPosition
  SHX7_2 = SHX0_2
  SHX8_2 = false
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = SetEntityVisible
  SHX7_2 = SHX0_2
  SHX8_2 = true
  SHX9_2 = true
  SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX6_2 = SetEntityCollision
  SHX7_2 = SHX0_2
  SHX8_2 = true
  SHX9_2 = true
  SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX6_2 = AnimpostfxStop
  SHX7_2 = "DeadlineNeon"
  SHX6_2(SHX7_2)
  SHX6_2 = RenderScriptCams
  SHX7_2 = false
  SHX8_2 = false
  SHX9_2 = 0
  SHX10_2 = false
  SHX11_2 = false
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX6_2 = DestroyCam
  SHX7_2 = SHX4_2
  SHX8_2 = false
  SHX6_2(SHX7_2, SHX8_2)
end
function SHX6_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = GetPlayerFromServerId
  SHX2_2 = SHX0_2.source
  SHX1_2 = SHX1_2(SHX2_2)
  if -1 ~= SHX1_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.getPlayerName
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    SHX3_2 = string
    SHX3_2 = SHX3_2.format
    SHX4_2 = "%s (Lives: %d)"
    SHX5_2 = SHX2_2
    SHX6_2 = SHX0_2.lives
    if not SHX6_2 then
      SHX6_2 = -1
    end
    return SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  end
  SHX2_2 = "Unknown (Lives: -1)"
  return SHX2_2
end
function SHX7_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX4_2 = SHX3_1.walls
  SHX4_2 = SHX4_2[SHX1_2]
  if not SHX4_2 then
    SHX4_2 = SHX3_1.walls
    SHX5_2 = {}
    SHX4_2[SHX1_2] = SHX5_2
  end
  if 1 == SHX2_2 then
    SHX4_2 = CreateObjectNoOffset
    SHX5_2 = 385042515
    SHX6_2 = SHX0_2.x
    SHX7_2 = SHX2_2 * 7.25
    SHX6_2 = SHX6_2 + SHX7_2
    SHX6_2 = SHX6_2 - 4.0
    SHX7_2 = SHX0_2.y
    SHX8_2 = SHX3_2 * 8.0
    SHX7_2 = SHX7_2 + SHX8_2
    SHX8_2 = SHX0_2.z
    SHX8_2 = SHX8_2 + 4.0
    SHX9_2 = false
    SHX10_2 = true
    SHX11_2 = false
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX5_2 = SetEntityRotation
    SHX6_2 = SHX4_2
    SHX7_2 = 0.0
    SHX8_2 = 90.0
    SHX9_2 = 0.0
    SHX10_2 = 2
    SHX11_2 = true
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX5_2 = SetObjectTextureVariation
    SHX6_2 = SHX4_2
    SHX7_2 = 9
    SHX5_2(SHX6_2, SHX7_2)
    SHX5_2 = table
    SHX5_2 = SHX5_2.insert
    SHX6_2 = SHX3_1.walls
    SHX6_2 = SHX6_2[SHX1_2]
    SHX7_2 = SHX4_2
    SHX5_2(SHX6_2, SHX7_2)
  end
  SHX4_2 = SHX3_1.mapSize
  if SHX2_2 == SHX4_2 then
    SHX4_2 = CreateObjectNoOffset
    SHX5_2 = 385042515
    SHX6_2 = SHX0_2.x
    SHX7_2 = SHX2_2 * 7.25
    SHX6_2 = SHX6_2 + SHX7_2
    SHX6_2 = SHX6_2 + 4.0
    SHX7_2 = SHX0_2.y
    SHX8_2 = SHX3_2 * 8.0
    SHX7_2 = SHX7_2 + SHX8_2
    SHX8_2 = SHX0_2.z
    SHX8_2 = SHX8_2 + 4.0
    SHX9_2 = false
    SHX10_2 = true
    SHX11_2 = false
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX5_2 = SetEntityRotation
    SHX6_2 = SHX4_2
    SHX7_2 = 0.0
    SHX8_2 = 90.0
    SHX9_2 = 0.0
    SHX10_2 = 2
    SHX11_2 = true
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX5_2 = SetObjectTextureVariation
    SHX6_2 = SHX4_2
    SHX7_2 = 9
    SHX5_2(SHX6_2, SHX7_2)
    SHX5_2 = table
    SHX5_2 = SHX5_2.insert
    SHX6_2 = SHX3_1.walls
    SHX6_2 = SHX6_2[SHX1_2]
    SHX7_2 = SHX4_2
    SHX5_2(SHX6_2, SHX7_2)
  end
  if 1 == SHX3_2 then
    SHX4_2 = CreateObjectNoOffset
    SHX5_2 = 385042515
    SHX6_2 = SHX0_2.x
    SHX7_2 = SHX2_2 * 7.25
    SHX6_2 = SHX6_2 + SHX7_2
    SHX7_2 = SHX0_2.y
    SHX8_2 = SHX3_2 * 8.0
    SHX7_2 = SHX7_2 + SHX8_2
    SHX7_2 = SHX7_2 - 4.3
    SHX8_2 = SHX0_2.z
    SHX8_2 = SHX8_2 + 3.625
    SHX9_2 = false
    SHX10_2 = true
    SHX11_2 = false
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX5_2 = SetEntityRotation
    SHX6_2 = SHX4_2
    SHX7_2 = 90.0
    SHX8_2 = 0.0
    SHX9_2 = 0.0
    SHX10_2 = 2
    SHX11_2 = true
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX5_2 = SetObjectTextureVariation
    SHX6_2 = SHX4_2
    SHX7_2 = 9
    SHX5_2(SHX6_2, SHX7_2)
    SHX5_2 = table
    SHX5_2 = SHX5_2.insert
    SHX6_2 = SHX3_1.walls
    SHX6_2 = SHX6_2[SHX1_2]
    SHX7_2 = SHX4_2
    SHX5_2(SHX6_2, SHX7_2)
  end
  SHX4_2 = SHX3_1.mapSize
  if SHX3_2 == SHX4_2 then
    SHX4_2 = CreateObjectNoOffset
    SHX5_2 = 385042515
    SHX6_2 = SHX0_2.x
    SHX7_2 = SHX2_2 * 7.25
    SHX6_2 = SHX6_2 + SHX7_2
    SHX7_2 = SHX0_2.y
    SHX8_2 = SHX3_2 * 8.0
    SHX7_2 = SHX7_2 + SHX8_2
    SHX7_2 = SHX7_2 + 4.3
    SHX8_2 = SHX0_2.z
    SHX8_2 = SHX8_2 + 3.625
    SHX9_2 = false
    SHX10_2 = true
    SHX11_2 = false
    SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX5_2 = SetEntityRotation
    SHX6_2 = SHX4_2
    SHX7_2 = 90.0
    SHX8_2 = 0.0
    SHX9_2 = 0.0
    SHX10_2 = 2
    SHX11_2 = true
    SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX5_2 = SetObjectTextureVariation
    SHX6_2 = SHX4_2
    SHX7_2 = 9
    SHX5_2(SHX6_2, SHX7_2)
    SHX5_2 = table
    SHX5_2 = SHX5_2.insert
    SHX6_2 = SHX3_1.walls
    SHX6_2 = SHX6_2[SHX1_2]
    SHX7_2 = SHX4_2
    SHX5_2(SHX6_2, SHX7_2)
  end
end
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2
  SHX1_2 = GetEntityCoords
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = true
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX2_2 = SHX3_1.map
  if SHX2_2 then
    SHX2_2 = ipairs
    SHX3_2 = SHX3_1.map
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
    for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
      SHX8_2 = ipairs
      SHX9_2 = SHX7_2
      SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX8_2(SHX9_2)
      for SHX12_2, SHX13_2 in SHX8_2, SHX9_2, SHX10_2, SHX11_2 do
        SHX14_2 = ipairs
        SHX15_2 = SHX13_2
        SHX14_2, SHX15_2, SHX16_2, SHX17_2 = SHX14_2(SHX15_2)
        for SHX18_2, SHX19_2 in SHX14_2, SHX15_2, SHX16_2, SHX17_2 do
          SHX20_2 = SHX19_2.colour
          if SHX20_2 ~= SHX0_2 then
            SHX20_2 = ActivatePhysics
            SHX21_2 = SHX19_2.object
            SHX20_2(SHX21_2)
            SHX20_2 = FreezeEntityPosition
            SHX21_2 = SHX19_2.object
            SHX22_2 = false
            SHX20_2(SHX21_2, SHX22_2)
            SHX20_2 = ApplyForceToEntity
            SHX21_2 = SHX19_2.object
            SHX22_2 = 1
            SHX23_2 = 0.0
            SHX24_2 = 0.0
            SHX25_2 = math
            SHX25_2 = SHX25_2.random
            SHX26_2 = 10
            SHX27_2 = 30
            SHX25_2 = SHX25_2(SHX26_2, SHX27_2)
            SHX25_2 = SHX25_2 + 0.0
            SHX26_2 = math
            SHX26_2 = SHX26_2.random
            SHX26_2 = SHX26_2()
            SHX26_2 = SHX26_2 - 0.5
            SHX27_2 = math
            SHX27_2 = SHX27_2.random
            SHX27_2 = SHX27_2()
            SHX27_2 = SHX27_2 - 0.5
            SHX28_2 = math
            SHX28_2 = SHX28_2.random
            SHX28_2 = SHX28_2()
            SHX28_2 = SHX28_2 - 0.5
            SHX29_2 = 0
            SHX30_2 = false
            SHX31_2 = false
            SHX32_2 = true
            SHX33_2 = false
            SHX34_2 = true
            SHX20_2(SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2)
          end
        end
        if 1 == SHX6_2 then
          SHX14_2 = AddExplosion
          SHX15_2 = SHX1_2.x
          SHX16_2 = SHX1_2.y
          SHX17_2 = SHX1_2.z
          SHX17_2 = SHX17_2 - 10.0
          SHX18_2 = math
          SHX18_2 = SHX18_2.random
          SHX19_2 = 0
          SHX20_2 = 80
          SHX18_2 = SHX18_2(SHX19_2, SHX20_2)
          SHX19_2 = 0.0
          SHX20_2 = true
          SHX21_2 = true
          SHX22_2 = 0.0
          SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
        end
      end
    end
  end
  SHX2_2 = SHX3_1.walls
  if SHX2_2 then
    SHX2_2 = ipairs
    SHX3_2 = SHX3_1.walls
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
    for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
      SHX8_2 = ipairs
      SHX9_2 = SHX7_2
      SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX8_2(SHX9_2)
      for SHX12_2, SHX13_2 in SHX8_2, SHX9_2, SHX10_2, SHX11_2 do
        SHX14_2 = SHX3_1.mapSize
        if 15 == SHX14_2 then
          SHX14_2 = DeleteEntity
          SHX15_2 = SHX13_2
          SHX14_2(SHX15_2)
        else
          SHX14_2 = ActivatePhysics
          SHX15_2 = SHX13_2
          SHX14_2(SHX15_2)
          SHX14_2 = FreezeEntityPosition
          SHX15_2 = SHX13_2
          SHX16_2 = false
          SHX14_2(SHX15_2, SHX16_2)
          SHX14_2 = ApplyForceToEntity
          SHX15_2 = SHX13_2
          SHX16_2 = 1
          SHX17_2 = 0.0
          SHX18_2 = 0.0
          SHX19_2 = 1.0
          SHX20_2 = math
          SHX20_2 = SHX20_2.random
          SHX20_2 = SHX20_2()
          SHX20_2 = SHX20_2 - 0.5
          SHX21_2 = math
          SHX21_2 = SHX21_2.random
          SHX21_2 = SHX21_2()
          SHX21_2 = SHX21_2 - 0.5
          SHX22_2 = math
          SHX22_2 = SHX22_2.random
          SHX22_2 = SHX22_2()
          SHX22_2 = SHX22_2 - 0.5
          SHX23_2 = 0
          SHX24_2 = false
          SHX25_2 = false
          SHX26_2 = true
          SHX27_2 = false
          SHX28_2 = true
          SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
        end
      end
    end
  end
end
function SHX9_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadModel
  SHX2_2 = 385042515
  SHX1_2(SHX2_2)
  SHX1_2 = SHX3_1.map
  if SHX1_2 then
    SHX1_2 = ipairs
    SHX2_2 = SHX3_1.map
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
    for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
      SHX7_2 = ipairs
      SHX8_2 = SHX6_2
      SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
      for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
        SHX13_2 = ipairs
        SHX14_2 = SHX12_2
        SHX13_2, SHX14_2, SHX15_2, SHX16_2 = SHX13_2(SHX14_2)
        for SHX17_2, SHX18_2 in SHX13_2, SHX14_2, SHX15_2, SHX16_2 do
          SHX19_2 = DeleteObject
          SHX20_2 = SHX18_2.object
          SHX19_2(SHX20_2)
        end
      end
    end
  end
  SHX1_2 = SHX3_1.walls
  if SHX1_2 then
    SHX1_2 = ipairs
    SHX2_2 = SHX3_1.walls
    SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2)
    for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
      SHX7_2 = ipairs
      SHX8_2 = SHX6_2
      SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
      for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
        SHX13_2 = DeleteObject
        SHX14_2 = SHX12_2
        SHX13_2(SHX14_2)
      end
    end
  end
  SHX1_2 = {}
  SHX3_1.map = SHX1_2
  SHX1_2 = {}
  SHX3_1.walls = SHX1_2
  SHX1_2 = 1
  SHX2_2 = 1
  SHX3_2 = 1
  for SHX4_2 = SHX1_2, SHX2_2, SHX3_2 do
    SHX5_2 = SHX3_1.map
    SHX6_2 = {}
    SHX5_2[SHX4_2] = SHX6_2
    SHX5_2 = 1
    SHX6_2 = SHX3_1.mapSize
    SHX7_2 = 1
    for SHX8_2 = SHX5_2, SHX6_2, SHX7_2 do
      SHX9_2 = SHX3_1.map
      SHX9_2 = SHX9_2[SHX4_2]
      SHX10_2 = {}
      SHX9_2[SHX8_2] = SHX10_2
      SHX9_2 = 1
      SHX10_2 = SHX3_1.mapSize
      SHX11_2 = 1
      for SHX12_2 = SHX9_2, SHX10_2, SHX11_2 do
        SHX13_2 = SHX4_2 - 1
        SHX13_2 = SHX13_2 * 200.0
        SHX14_2 = CreateObjectNoOffset
        SHX15_2 = 385042515
        SHX16_2 = SHX1_1.x
        SHX17_2 = SHX8_2 * 7.25
        SHX16_2 = SHX16_2 + SHX17_2
        SHX17_2 = SHX1_1.y
        SHX18_2 = SHX12_2 * 8.0
        SHX17_2 = SHX17_2 + SHX18_2
        SHX18_2 = SHX1_1.z
        SHX18_2 = SHX18_2 - SHX13_2
        SHX19_2 = false
        SHX20_2 = true
        SHX21_2 = false
        SHX14_2 = SHX14_2(SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
        if SHX0_2 then
          SHX15_2 = SHX3_1.mapSize
          SHX15_2 = SHX8_2 * SHX15_2
          SHX15_2 = SHX15_2 + SHX12_2
          SHX16_2 = SHX3_1.mapSize
          SHX15_2 = SHX15_2 - SHX16_2
          SHX15_2 = SHX0_2[SHX15_2]
          if SHX15_2 then
            goto SHX_LABEL_120
          end
        end
        SHX15_2 = math
        SHX15_2 = SHX15_2.random
        SHX16_2 = 1
        SHX17_2 = 10
        SHX15_2 = SHX15_2(SHX16_2, SHX17_2)
        -- [FIX IF ERROR] Move ::SHX_LABEL_120:: outside nested blocks until all 'goto SHX_LABEL_120' can see it
        ::SHX_LABEL_120::
        SHX16_2 = SetObjectTextureVariation
        SHX17_2 = SHX14_2
        SHX18_2 = SHX15_2
        SHX16_2(SHX17_2, SHX18_2)
        SHX16_2 = SetEntityRotation
        SHX17_2 = SHX14_2
        SHX18_2 = 0.0
        SHX19_2 = 0.0
        SHX20_2 = 0.0
        SHX21_2 = 2
        SHX22_2 = true
        SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
        SHX16_2 = SHX3_1.map
        SHX16_2 = SHX16_2[SHX4_2]
        SHX16_2 = SHX16_2[SHX8_2]
        SHX17_2 = {}
        SHX17_2.object = SHX14_2
        SHX17_2.colour = SHX15_2
        SHX16_2[SHX12_2] = SHX17_2
      end
    end
  end
end
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = SetPedIntoVehicle
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = SHX3_1.vehicle
  SHX4_2 = -1
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = GetGameTimer
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX3_1
  while true do
    SHX3_2 = NetworkHasControlOfEntity
    SHX4_2 = SHX3_1.vehicle
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      break
    end
    SHX3_2 = GetGameTimer
    SHX3_2 = SHX3_2()
    SHX3_2 = SHX3_2 - SHX1_2
    SHX4_2 = 2000
    if not (SHX3_2 < SHX4_2) then
      break
    end
    SHX3_2 = Citizen
    SHX3_2 = SHX3_2.Wait
    SHX4_2 = 0
    SHX3_2(SHX4_2)
    SHX3_2 = SHX3_1
    if SHX2_2 ~= SHX3_2 then
      return
    end
  end
  SHX3_2 = SHX3_1.position
  if nil == SHX3_2 then
    SHX3_2 = print
    SHX4_2 = "[Tile Surprise] Deleting vehicle on spawn, no position was set."
    SHX3_2(SHX4_2)
    SHX3_2 = DeleteEntity
    SHX4_2 = SHX3_1.vehicle
    SHX3_2(SHX4_2)
    return
  end
  SHX3_2 = SetEntityCoordsNoOffset
  SHX4_2 = SHX3_1.vehicle
  SHX5_2 = SHX3_1.position
  SHX5_2 = SHX5_2.x
  SHX6_2 = SHX3_1.position
  SHX6_2 = SHX6_2.y
  SHX7_2 = SHX3_1.position
  SHX7_2 = SHX7_2.z
  SHX7_2 = SHX7_2 + 1.0
  SHX8_2 = true
  SHX9_2 = false
  SHX10_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX3_2 = SetVehicleOnGroundProperly
  SHX4_2 = SHX3_1.vehicle
  SHX3_2(SHX4_2)
  if not SHX0_2 then
    SHX3_2 = FreezeEntityPosition
    SHX4_2 = SHX3_1.vehicle
    SHX5_2 = true
    SHX3_2(SHX4_2, SHX5_2)
  end
  SHX3_2 = SetVehRadioStation
  SHX4_2 = SHX3_1.vehicle
  SHX5_2 = "OFF"
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SetVehicleRadioEnabled
  SHX4_2 = SHX3_1.vehicle
  SHX5_2 = false
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SetDisableVehicleEngineFires
  SHX4_2 = SHX3_1.vehicle
  SHX5_2 = true
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SetDisableVehiclePetrolTankFires
  SHX4_2 = SHX3_1.vehicle
  SHX5_2 = true
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = Citizen
  SHX3_2 = SHX3_2.CreateThreadNow
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
    SHX0_3 = -1
    SHX1_3 = -1
    while true do
      SHX2_3 = SHX3_1.colour
      if SHX0_3 == SHX2_3 then
        SHX2_3 = SHX3_1.colour
        if SHX1_3 == SHX2_3 then
          break
        end
      end
      SHX2_3 = SetVehicleColours
      SHX3_3 = SHX3_1.vehicle
      SHX4_3 = SHX3_1.colour
      SHX5_3 = SHX3_1.colour
      SHX2_3(SHX3_3, SHX4_3, SHX5_3)
      SHX2_3 = GetVehicleColours
      SHX3_3 = SHX3_1.vehicle
      SHX2_3, SHX3_3 = SHX2_3(SHX3_3)
      SHX1_3 = SHX3_3
      SHX0_3 = SHX2_3
      SHX2_3 = Citizen
      SHX2_3 = SHX2_3.Wait
      SHX3_3 = 0
      SHX2_3(SHX3_3)
    end
  end
  SHX3_2(SHX4_2)
end
SHX11_1 = RegisterNetEvent
SHX12_1 = "cba023ac32"
function SHX13_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX3_1.hasFailed = false
  SHX2_2 = DoesEntityExist
  SHX3_2 = SHX3_1.vehicle
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX2_2 = DeleteEntity
    SHX3_2 = SHX3_1.vehicle
    SHX2_2(SHX3_2)
  end
  SHX2_2 = SHX3_1
  while true do
    SHX3_2 = DoesEntityExist
    SHX4_2 = SHX3_1.vehicle
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      break
    end
    SHX3_2 = NetworkDoesEntityExistWithNetworkId
    SHX4_2 = SHX0_2
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      SHX3_2 = NetworkGetEntityFromNetworkId
      SHX4_2 = SHX0_2
      SHX3_2 = SHX3_2(SHX4_2)
      SHX3_1.vehicle = SHX3_2
    end
    SHX3_2 = Citizen
    SHX3_2 = SHX3_2.Wait
    SHX4_2 = 0
    SHX3_2(SHX4_2)
    SHX3_2 = SHX3_1
    if SHX3_2 ~= SHX2_2 then
      return
    end
  end
  while true do
    SHX3_2 = NetworkHasControlOfEntity
    SHX4_2 = SHX3_1.vehicle
    SHX3_2 = SHX3_2(SHX4_2)
    if SHX3_2 then
      SHX3_2 = GetPedInVehicleSeat
      SHX4_2 = SHX3_1.vehicle
      SHX5_2 = -1
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
      SHX4_2 = PlayerPedId
      SHX4_2 = SHX4_2()
      if SHX3_2 == SHX4_2 then
        break
      end
    end
    SHX3_2 = Citizen
    SHX3_2 = SHX3_2.Wait
    SHX4_2 = 0
    SHX3_2(SHX4_2)
    SHX3_2 = SHX3_1
    if SHX3_2 ~= SHX2_2 then
      return
    end
  end
  SHX3_2 = SHX10_1
  SHX4_2 = SHX1_2
  SHX3_2(SHX4_2)
end
SHX11_1(SHX12_1, SHX13_1)
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 23
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 75
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
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
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 37
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 12
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 13
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 14
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 15
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 16
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 17
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 53
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 54
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 99
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 100
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 261
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
  SHX0_2 = DisableControlAction
  SHX1_2 = 0
  SHX2_2 = 262
  SHX3_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2)
end
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getActiveEventPlayers
  SHX0_2 = SHX0_2()
  SHX0_2 = #SHX0_2
  SHX1_2 = currentEvent
  SHX1_2 = SHX1_2.players
  SHX1_2 = #SHX1_2
  SHX1_2 = SHX1_2 - SHX0_2
  SHX2_2 = SHX4_1.push
  SHX3_2 = "~y~ELIMINATED~w~"
  SHX4_2 = tostring
  SHX5_2 = SHX1_2
  SHX4_2, SHX5_2 = SHX4_2(SHX5_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = SHX4_1.push
  SHX3_2 = "~y~REMAINING~w~"
  SHX4_2 = tostring
  SHX5_2 = SHX0_2
  SHX4_2, SHX5_2 = SHX4_2(SHX5_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = SHX4_1.push
  SHX3_2 = "~y~ROUND~w~"
  SHX4_2 = tostring
  SHX5_2 = SHX3_1.round
  SHX4_2, SHX5_2 = SHX4_2(SHX5_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
end
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = ipairs
  SHX1_2 = GetActivePlayers
  SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX1_2()
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX6_2 = GetPlayerPed
    SHX7_2 = SHX5_2
    SHX6_2 = SHX6_2(SHX7_2)
    if 0 ~= SHX6_2 then
      SHX7_2 = GetVehiclePedIsUsing
      SHX8_2 = SHX6_2
      SHX7_2 = SHX7_2(SHX8_2)
      if 0 ~= SHX7_2 then
        SHX8_2 = HasEntityBeenDamagedByEntity
        SHX9_2 = SHX3_1.vehicle
        SHX10_2 = SHX7_2
        SHX11_2 = true
        SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2)
        if SHX8_2 then
          SHX3_1.lastDamagedVehicle = SHX7_2
          SHX8_2 = GetGameTimer
          SHX8_2 = SHX8_2()
          SHX3_1.lastDamagedVehicleTime = SHX8_2
        end
        SHX8_2 = SetVehicleHandlingFloat
        SHX9_2 = SHX7_2
        SHX10_2 = "CHandlingData"
        SHX11_2 = "fMass"
        SHX12_2 = 1500.0
        SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2)
        SHX8_2 = ClearEntityLastDamageEntity
        SHX9_2 = SHX7_2
        SHX8_2(SHX9_2)
      end
    end
  end
end
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = SHX3_1.lastDamagedVehicle
  if SHX0_2 then
    SHX0_2 = GetPedInVehicleSeat
    SHX1_2 = SHX3_1.lastDamagedVehicle
    SHX2_2 = -1
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    SHX1_2 = NetworkGetPlayerIndexFromPed
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    SHX2_2 = GetPlayerServerId
    SHX3_2 = SHX1_2
    return SHX2_2(SHX3_2)
  end
  SHX0_2 = nil
  return SHX0_2
end
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hideAllDisplays
  SHX1_2 = "tilesurprise"
  SHX0_2(SHX1_2)
  SHX0_2 = DoesEntityExist
  SHX1_2 = SHX3_1.vehicle
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getPlayerVehicle
    SHX0_2 = SHX0_2()
    if 0 ~= SHX0_2 then
      SHX3_1.vehicle = SHX0_2
    else
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.getPlayerCoords
      SHX1_2 = SHX1_2()
      SHX2_2 = SHX1_1
      SHX1_2 = SHX1_2 - SHX2_2
      SHX1_2 = #SHX1_2
      if SHX1_2 > 100.0 then
        SHX1_2 = SetEntityCoordsNoOffset
        SHX2_2 = PlayerPedId
        SHX2_2 = SHX2_2()
        SHX3_2 = SHX1_1.x
        SHX4_2 = SHX1_1.y
        SHX5_2 = SHX1_1.z
        SHX6_2 = false
        SHX7_2 = false
        SHX8_2 = false
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      end
    end
  end
  SHX0_2 = SHX4_1.reset
  SHX0_2()
  SHX0_2 = SHX12_1
  SHX0_2()
  SHX0_2 = SHX13_1
  SHX0_2()
  SHX0_2 = ClearEntityLastDamageEntity
  SHX1_2 = SHX3_1.vehicle
  SHX0_2(SHX1_2)
  SHX0_2 = SHX3_1.lastDamagedVehicle
  if SHX0_2 then
    SHX0_2 = GetGameTimer
    SHX0_2 = SHX0_2()
    SHX1_2 = SHX3_1.lastDamagedVehicleTime
    SHX0_2 = SHX0_2 - SHX1_2
    SHX1_2 = 5000
    if SHX0_2 > SHX1_2 then
      SHX3_1.lastDamagedVehicle = nil
    end
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getEventLocalPlayer
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    SHX1_2 = SHX0_2.active
    if SHX1_2 then
      SHX1_2 = SHX11_1
      SHX1_2()
      SHX1_2 = SetPlayerControl
      SHX2_2 = PlayerId
      SHX2_2 = SHX2_2()
      SHX3_2 = true
      SHX4_2 = 0
      SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      SHX1_2 = GetVehiclePedIsUsing
      SHX2_2 = PlayerPedId
      SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX2_2()
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      if 0 ~= SHX1_2 then
        SHX2_2 = GetEntityHealth
        SHX3_2 = PlayerPedId
        SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX3_2()
        SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
        if not (SHX2_2 <= 0) then
          SHX2_2 = GetEntityHealth
          SHX3_2 = SHX1_2
          SHX2_2 = SHX2_2(SHX3_2)
          if not (SHX2_2 <= 0) then
            goto SHX_LABEL_112
          end
        end
        SHX2_2 = SHX3_1.hasFailed
        if SHX2_2 then
          SHX2_2 = GetGameTimer
          SHX2_2 = SHX2_2()
          SHX3_2 = SHX3_1.lastFailedTime
          SHX2_2 = SHX2_2 - SHX3_2
          SHX3_2 = 20000
          if not (SHX2_2 > SHX3_2) then
            goto SHX_LABEL_112
          end
        end
        SHX2_2 = TriggerServerEvent
        SHX3_2 = "22086f3ac9"
        SHX2_2(SHX3_2)
        SHX2_2 = Citizen
        SHX2_2 = SHX2_2.CreateThreadNow
        SHX3_2 = SHX5_1
        SHX2_2(SHX3_2)
        SHX3_1.hasFailed = true
        SHX2_2 = GetGameTimer
        SHX2_2 = SHX2_2()
        SHX3_1.lastFailedTime = SHX2_2
        -- [FIX IF ERROR] Move ::SHX_LABEL_112:: outside nested blocks until all 'goto SHX_LABEL_112' can see it
        ::SHX_LABEL_112::
        SHX2_2 = FreezeEntityPosition
        SHX3_2 = SHX1_2
        SHX4_2 = false
        SHX2_2(SHX3_2, SHX4_2)
        SHX2_2 = SetVehicleEngineOn
        SHX3_2 = SHX1_2
        SHX4_2 = true
        SHX5_2 = true
        SHX6_2 = false
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
        SHX2_2 = SetVehicleColours
        SHX3_2 = SHX1_2
        SHX4_2 = SHX3_1.colour
        SHX5_2 = SHX3_1.colour
        SHX2_2(SHX3_2, SHX4_2, SHX5_2)
      end
      SHX2_2 = GetEntityCoords
      SHX3_2 = PlayerPedId
      SHX3_2 = SHX3_2()
      SHX4_2 = true
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
      SHX3_2 = SHX2_2.z
      SHX4_2 = 625.0
      if SHX3_2 < SHX4_2 then
        SHX3_2 = SHX3_1.hasFailed
        if SHX3_2 then
          SHX3_2 = GetGameTimer
          SHX3_2 = SHX3_2()
          SHX4_2 = SHX3_1.lastFailedTime
          SHX3_2 = SHX3_2 - SHX4_2
          SHX4_2 = 20000
          if not (SHX3_2 > SHX4_2) then
            goto SHX_LABEL_160
          end
        end
        SHX3_2 = TriggerServerEvent
        SHX4_2 = "22086f3ac9"
        SHX5_2 = SHX14_1
        SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2()
        SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
        SHX3_2 = Citizen
        SHX3_2 = SHX3_2.CreateThreadNow
        SHX4_2 = SHX5_1
        SHX3_2(SHX4_2)
        SHX3_1.hasFailed = true
        SHX3_2 = GetGameTimer
        SHX3_2 = SHX3_2()
        SHX3_1.lastFailedTime = SHX3_2
      end
      -- [FIX IF ERROR] Move ::SHX_LABEL_160:: outside nested blocks until all 'goto SHX_LABEL_160' can see it
      ::SHX_LABEL_160::
      SHX3_2 = SHX4_1.push
      SHX4_2 = "~y~LIVES~w~"
      SHX5_2 = tostring
      SHX6_2 = SHX0_2.lives
      SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2)
      SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    end
  end
  SHX1_2 = SHX3_1.counter
  if nil ~= SHX1_2 then
    SHX1_2 = SHX4_1.push
    SHX2_2 = "~r~COUNTDOWN~W~"
    SHX3_2 = tostring
    SHX4_2 = SHX3_1.counter
    SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX3_2(SHX4_2)
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  end
  SHX1_2 = SHX4_1.draw
  SHX1_2()
end
SHX16_1 = RegisterNetEvent
SHX17_1 = "460d7ee179"
function SHX18_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX2_2 = currentEvent
  SHX2_2.drawPlayersTimeBar = false
  SHX2_2 = SetPlayerControl
  SHX3_2 = PlayerId
  SHX3_2 = SHX3_2()
  SHX4_2 = false
  SHX5_2 = 0
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = SHX0_1.locations
  SHX2_2 = SHX2_2[SHX0_2]
  SHX3_1.colour = 1
  SHX3_2 = SHX2_2.vehicles
  SHX3_1.vehicles = SHX3_2
  SHX3_1.confirmedCharacter = false
  SHX3_1.hasFailed = false
  SHX3_1.lastFailedTime = 0
  SHX3_1.lastDamagedVehicle = nil
  SHX3_1.lastDamagedVehicleTime = 0
  SHX3_2 = SHX2_2.spawnpoints
  SHX3_2 = SHX3_2[SHX1_2]
  SHX3_1.position = SHX3_2
  SHX3_2 = SHX2_2.isLarge
  if SHX3_2 then
    SHX3_2 = 15
    if SHX3_2 then
      goto SHX_LABEL_29
    end
  end
  SHX3_2 = 12
  -- [FIX IF ERROR] Move ::SHX_LABEL_29:: outside nested blocks until all 'goto SHX_LABEL_29' can see it
  ::SHX_LABEL_29::
  SHX3_1.mapSize = SHX3_2
  SHX3_2 = assert
  SHX4_2 = SHX3_1.position
  SHX5_2 = string
  SHX5_2 = SHX5_2.format
  SHX6_2 = "Invalid spawnIndex %s provided to client"
  SHX7_2 = tostring
  SHX8_2 = SHX1_2
  SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
  SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX3_2 = SetEntityCoordsNoOffset
  SHX4_2 = PlayerPedId
  SHX4_2 = SHX4_2()
  SHX5_2 = SHX3_1.position
  SHX5_2 = SHX5_2.x
  SHX6_2 = SHX3_1.position
  SHX6_2 = SHX6_2.y
  SHX7_2 = SHX3_1.position
  SHX7_2 = SHX7_2.z
  SHX8_2 = true
  SHX9_2 = false
  SHX10_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX3_2 = FreezeEntityPosition
  SHX4_2 = PlayerPedId
  SHX4_2 = SHX4_2()
  SHX5_2 = true
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SetEntityHeading
  SHX4_2 = PlayerPedId
  SHX4_2 = SHX4_2()
  SHX5_2 = SHX3_1.position
  SHX5_2 = SHX5_2.w
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = RequestScriptAudioBank
  SHX4_2 = "DLC_STUNT/STUNT_RACE_01"
  SHX5_2 = false
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = RequestScriptAudioBank
  SHX4_2 = "DLC_STUNT/STUNT_RACE_02"
  SHX5_2 = false
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = RequestScriptAudioBank
  SHX4_2 = "DLC_STUNT/STUNT_RACE_03"
  SHX5_2 = false
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.setEventMusic
  SHX4_2 = "FAM2_NEAR_YACHT"
  SHX3_2(SHX4_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.loadPtfx
  SHX4_2 = "core"
  SHX3_2(SHX4_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.setIgnoreEventRespawns
  SHX4_2 = true
  SHX3_2(SHX4_2)
  SHX3_2 = SHX9_1
  SHX4_2 = nil
  SHX3_2(SHX4_2)
end
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = RegisterNetEvent
SHX17_1 = "bb0fad16db"
function SHX18_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.stopEventSequence
  SHX1_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.hideAllDisplays
  SHX2_2 = "tilesurprise"
  SHX1_2(SHX2_2)
  SHX1_2 = BusyspinnerOff
  SHX1_2()
  SHX1_2 = SetPlayerControl
  SHX2_2 = PlayerId
  SHX2_2 = SHX2_2()
  SHX3_2 = true
  SHX4_2 = 0
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = SetEntityVisible
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = true
  SHX4_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.startVehicleSelection
  SHX2_2 = SHX0_2.xyz
  SHX3_2 = SHX0_2.w
  SHX4_2 = SHX3_1.vehicles
  SHX5_2 = 20
  function SHX6_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3, SHX2_3, SHX3_3
    SHX1_3 = TriggerServerEvent
    SHX2_3 = "6d6db403a1"
    SHX3_3 = SHX0_3
    SHX1_3(SHX2_3, SHX3_3)
  end
  function SHX7_2(SHX0_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX1_3
    SHX3_1.colour = SHX0_3
  end
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX3_1.stage = "SELECT"
  SHX3_1.position = SHX0_2
  while true do
    SHX1_2 = SHX3_1.stage
    if "SELECT" ~= SHX1_2 then
      break
    end
    SHX1_2 = GetVehiclePedIsUsing
    SHX2_2 = PlayerPedId
    SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX2_2()
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
    if 0 ~= SHX1_2 then
      SHX2_2 = FreezeEntityPosition
      SHX3_2 = SHX1_2
      SHX4_2 = true
      SHX2_2(SHX3_2, SHX4_2)
    end
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
end
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = RegisterNetEvent
SHX17_1 = "b328b55f35"
function SHX18_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX3_1.round = SHX1_2
  if 1 == SHX1_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.endVehicleSelection
    SHX2_2()
    SHX2_2 = SetFollowPedCamViewMode
    SHX3_2 = 2
    SHX2_2(SHX3_2)
    SHX2_2 = DoesEntityExist
    SHX3_2 = SHX3_1.vehicle
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      SHX2_2 = DeleteEntity
      SHX3_2 = SHX3_1.vehicle
      SHX2_2(SHX3_2)
    end
    SHX2_2 = ipairs
    SHX3_2 = currentEvent
    SHX3_2 = SHX3_2.players
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
    for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
      SHX7_2.lives = 3
    end
    SHX2_2 = pairs
    SHX3_2 = GetActivePlayers
    SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX3_2()
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
      SHX8_2 = SetEntityVisible
      SHX9_2 = GetPlayerPed
      SHX10_2 = SHX7_2
      SHX9_2 = SHX9_2(SHX10_2)
      SHX10_2 = true
      SHX11_2 = false
      SHX8_2(SHX9_2, SHX10_2, SHX11_2)
    end
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.CreateThreadNow
    function SHX3_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3, SHX2_3, SHX3_3
      while true do
        SHX0_3 = SHX3_1.stage
        if "SELECT" ~= SHX0_3 then
          SHX0_3 = SHX3_1.stage
          if "BEFORE_START" ~= SHX0_3 then
            break
          end
        end
        SHX0_3 = SHX11_1
        SHX0_3()
        SHX0_3 = GetVehiclePedIsUsing
        SHX1_3 = PlayerPedId
        SHX1_3, SHX2_3, SHX3_3 = SHX1_3()
        SHX0_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3)
        if 0 ~= SHX0_3 then
          SHX1_3 = FreezeEntityPosition
          SHX2_3 = SHX0_3
          SHX3_3 = true
          SHX1_3(SHX2_3, SHX3_3)
        end
        SHX1_3 = Citizen
        SHX1_3 = SHX1_3.Wait
        SHX2_3 = 0
        SHX1_3(SHX2_3)
      end
    end
    SHX2_2(SHX3_2)
  end
  SHX2_2 = SHX9_1
  SHX3_2 = SHX0_2
  SHX2_2(SHX3_2)
  SHX2_2 = AnimpostfxPlay
  SHX3_2 = "MinigameEndNeutral"
  SHX4_2 = 0
  SHX5_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = SetVehicleFixed
  SHX3_2 = SHX3_1.vehicle
  SHX2_2(SHX3_2)
  if 1 ~= SHX1_2 then
    SHX2_2 = PlaySoundFrontend
    SHX3_2 = -1
    SHX4_2 = "Deliver_Item"
    SHX5_2 = "GTAO_Biker_Modes_Soundset"
    SHX6_2 = false
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getEventLocalPlayer
  SHX2_2 = SHX2_2()
  if SHX2_2 then
    SHX3_2 = SHX2_2.active
    if SHX3_2 then
      if 1 == SHX1_2 then
        SHX3_2 = CMG
        SHX3_2 = SHX3_2.setEventIntroMessage
        SHX4_2 = "TILE SURPRISE"
        SHX5_2 = "Remain safely on a tile and knock opponents off"
        SHX6_2 = 3000
        SHX3_2(SHX4_2, SHX5_2, SHX6_2)
      else
        SHX3_2 = CMG
        SHX3_2 = SHX3_2.announceMpBigMsg
        SHX4_2 = "Round "
        SHX5_2 = tostring
        SHX6_2 = SHX1_2
        SHX5_2 = SHX5_2(SHX6_2)
        SHX4_2 = SHX4_2 .. SHX5_2
        SHX5_2 = ""
        SHX6_2 = 3000
        SHX3_2(SHX4_2, SHX5_2, SHX6_2)
      end
    end
  end
  if 1 == SHX1_2 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.hideAllDisplays
    SHX4_2 = "tilesurprise"
    SHX3_2(SHX4_2)
    SHX3_1.stage = "BEFORE_START"
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.showCountdownTimer
    SHX4_2 = 3
    SHX3_2(SHX4_2)
    SHX3_2 = SHX3_1.stage
    if "BEFORE_START" ~= SHX3_2 then
      return
    end
    SHX3_2 = FreezeEntityPosition
    SHX4_2 = SHX3_1.vehicle
    SHX5_2 = false
    SHX3_2(SHX4_2, SHX5_2)
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.enableMinigamePlayerTags
    SHX4_2 = true
    SHX5_2 = false
    SHX6_2 = nil
    SHX7_2 = SHX6_1
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.setPlayerCanOpenLeaderboard
    SHX4_2 = true
    SHX3_2(SHX4_2)
    SHX3_1.stage = "START"
    while true do
      SHX3_2 = SHX3_1.stage
      if "START" ~= SHX3_2 then
        break
      end
      SHX3_2 = SHX15_1
      SHX3_2()
      SHX3_2 = Citizen
      SHX3_2 = SHX3_2.Wait
      SHX4_2 = 0
      SHX3_2(SHX4_2)
    end
  end
end
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = RegisterNetEvent
SHX17_1 = "0c97107a0d"
function SHX18_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  SHX2_2 = SHX2_1
  SHX2_2 = SHX2_2[SHX0_2]
  SHX3_2 = Citizen
  SHX3_2 = SHX3_2.CreateThreadNow
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
    SHX0_3 = PlaySoundFrontend
    SHX1_3 = -1
    SHX2_3 = "Crates_Blipped"
    SHX3_3 = "GTAO_Biker_Modes_Soundset"
    SHX4_3 = false
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.announceMpBigMsg
    SHX1_3 = "Head to a "
    SHX2_3 = SHX2_2
    SHX2_3 = SHX2_3[2]
    SHX3_3 = SHX2_2
    SHX3_3 = SHX3_3[1]
    SHX4_3 = "~w~ tile"
    SHX1_3 = SHX1_3 .. SHX2_3 .. SHX3_3 .. SHX4_3
    SHX2_3 = ""
    SHX3_3 = 2000
    SHX0_3(SHX1_3, SHX2_3, SHX3_3)
  end
  SHX3_2(SHX4_2)
  SHX3_2 = 1
  SHX4_2 = 1
  SHX5_2 = 1
  for SHX6_2 = SHX3_2, SHX4_2, SHX5_2 do
    SHX7_2 = 1
    SHX8_2 = SHX3_1.mapSize
    SHX9_2 = 1
    for SHX10_2 = SHX7_2, SHX8_2, SHX9_2 do
      SHX11_2 = 1
      SHX12_2 = SHX3_1.mapSize
      SHX13_2 = 1
      for SHX14_2 = SHX11_2, SHX12_2, SHX13_2 do
        SHX15_2 = SHX6_2 - 1
        SHX15_2 = SHX15_2 * 200.0
        SHX16_2 = SHX7_1
        SHX17_2 = vector3
        SHX18_2 = SHX1_1.x
        SHX19_2 = SHX1_1.y
        SHX20_2 = SHX1_1.z
        SHX20_2 = SHX20_2 - SHX15_2
        SHX17_2 = SHX17_2(SHX18_2, SHX19_2, SHX20_2)
        SHX18_2 = SHX6_2
        SHX19_2 = SHX10_2
        SHX20_2 = SHX14_2
        SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2)
      end
    end
  end
  SHX3_2 = SHX3_1.walls
  if SHX3_2 then
    SHX3_2 = ipairs
    SHX4_2 = SHX3_1.walls
    SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
    for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
      SHX9_2 = ipairs
      SHX10_2 = SHX8_2
      SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX9_2(SHX10_2)
      for SHX13_2, SHX14_2 in SHX9_2, SHX10_2, SHX11_2, SHX12_2 do
        SHX15_2 = SetObjectTextureVariation
        SHX16_2 = SHX14_2
        SHX17_2 = SHX0_2
        SHX15_2(SHX16_2, SHX17_2)
      end
    end
  end
  SHX3_2 = GetGameTimer
  SHX3_2 = SHX3_2()
  SHX3_1.counter = SHX1_2
  while true do
    SHX4_2 = SHX3_1.counter
    if not SHX4_2 then
      break
    end
    SHX4_2 = GetGameTimer
    SHX4_2 = SHX4_2()
    SHX4_2 = SHX4_2 - SHX3_2
    SHX5_2 = 1000
    if SHX4_2 > SHX5_2 then
      SHX4_2 = SHX3_1.counter
      SHX4_2 = SHX4_2 - 1
      SHX3_1.counter = SHX4_2
      SHX4_2 = GetGameTimer
      SHX4_2 = SHX4_2()
      SHX3_2 = SHX4_2
      SHX4_2 = SHX3_1.counter
      if 0 == SHX4_2 then
        SHX3_1.counter = nil
        break
      else
        SHX4_2 = PlaySoundFrontend
        SHX5_2 = -1
        SHX6_2 = "Checkpoint_Buzz"
        SHX7_2 = "DLC_AW_Frontend_Sounds"
        SHX8_2 = false
        SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      end
    end
    SHX4_2 = drawNativeText
    SHX5_2 = "Head to a "
    SHX6_2 = SHX2_2[2]
    SHX7_2 = SHX2_2[1]
    SHX8_2 = "~w~ tile"
    SHX5_2 = SHX5_2 .. SHX6_2 .. SHX7_2 .. SHX8_2
    SHX4_2(SHX5_2)
    SHX4_2 = Citizen
    SHX4_2 = SHX4_2.Wait
    SHX5_2 = 0
    SHX4_2(SHX5_2)
  end
  SHX4_2 = SHX8_1
  SHX5_2 = SHX0_2
  SHX4_2(SHX5_2)
  SHX4_2 = ShakeGameplayCam
  SHX5_2 = "MEDIUM_EXPLOSION_SHAKE"
  SHX6_2 = 1.0
  SHX4_2(SHX5_2, SHX6_2)
end
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = RegisterNetEvent
SHX17_1 = "70a0b3cccd"
function SHX18_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  if 0 == SHX2_2 then
    if SHX4_2 and SHX5_2 then
      SHX6_2 = notify
      SHX7_2 = SHX1_2
      SHX8_2 = SHX3_2
      SHX9_2 = " ~w~has been eliminated by "
      SHX10_2 = SHX4_2
      SHX11_2 = SHX5_2
      SHX12_2 = "~w~!"
      SHX7_2 = SHX7_2 .. SHX8_2 .. SHX9_2 .. SHX10_2 .. SHX11_2 .. SHX12_2
      SHX6_2(SHX7_2)
    else
      SHX6_2 = notify
      SHX7_2 = SHX1_2
      SHX8_2 = SHX3_2
      SHX9_2 = " ~w~has been eliminated!"
      SHX7_2 = SHX7_2 .. SHX8_2 .. SHX9_2
      SHX6_2(SHX7_2)
    end
  else
    if SHX2_2 > 1 then
      SHX6_2 = "lives"
      if SHX6_2 then
        goto SHX_LABEL_30
      end
    end
    SHX6_2 = "life"
    -- [FIX IF ERROR] Move ::SHX_LABEL_30:: outside nested blocks until all 'goto SHX_LABEL_30' can see it
    ::SHX_LABEL_30::
    if SHX4_2 and SHX5_2 then
      SHX7_2 = notify
      SHX8_2 = string
      SHX8_2 = SHX8_2.format
      SHX9_2 = "%s%s~w~ has been knocked out by %s%s~w~! (%d %s remaining)"
      SHX10_2 = SHX1_2
      SHX11_2 = SHX3_2
      SHX12_2 = SHX4_2
      SHX13_2 = SHX5_2
      SHX14_2 = SHX2_2
      SHX15_2 = SHX6_2
      SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
      SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    else
      SHX7_2 = notify
      SHX8_2 = string
      SHX8_2 = SHX8_2.format
      SHX9_2 = "%s%s~w~ has %d %s remaining!"
      SHX10_2 = SHX1_2
      SHX11_2 = SHX3_2
      SHX12_2 = SHX2_2
      SHX13_2 = SHX6_2
      SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
      SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    end
  end
  SHX6_2 = ipairs
  SHX7_2 = currentEvent
  SHX7_2 = SHX7_2.players
  SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
  for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
    SHX12_2 = SHX11_2.source
    if SHX12_2 == SHX0_2 then
      SHX11_2.lives = SHX2_2
      SHX12_2 = SHX11_2.tag
      if SHX12_2 then
        SHX12_2 = RemoveMpGamerTag
        SHX13_2 = SHX11_2.tag
        SHX12_2(SHX13_2)
        SHX11_2.tag = nil
      end
      break
    end
  end
end
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = Citizen
SHX16_1 = SHX16_1.CreateThread
function SHX17_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = "Tile Surprise"
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.registerMinigameCleanupHandler
  SHX2_2 = SHX0_2
  function SHX3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3
    SHX0_3 = SHX3_1.map
    if SHX0_3 then
      SHX0_3 = ipairs
      SHX1_3 = SHX3_1.map
      SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
      for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
        SHX6_3 = ipairs
        SHX7_3 = SHX5_3
        SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3)
        for SHX10_3, SHX11_3 in SHX6_3, SHX7_3, SHX8_3, SHX9_3 do
          SHX12_3 = ipairs
          SHX13_3 = SHX11_3
          SHX12_3, SHX13_3, SHX14_3, SHX15_3 = SHX12_3(SHX13_3)
          for SHX16_3, SHX17_3 in SHX12_3, SHX13_3, SHX14_3, SHX15_3 do
            SHX18_3 = DeleteObject
            SHX19_3 = SHX17_3.object
            SHX18_3(SHX19_3)
          end
        end
      end
    end
    SHX0_3 = SHX3_1.walls
    if SHX0_3 then
      SHX0_3 = ipairs
      SHX1_3 = SHX3_1.walls
      SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
      for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
        SHX6_3 = ipairs
        SHX7_3 = SHX5_3
        SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3)
        for SHX10_3, SHX11_3 in SHX6_3, SHX7_3, SHX8_3, SHX9_3 do
          SHX12_3 = DeleteObject
          SHX13_3 = SHX11_3
          SHX12_3(SHX13_3)
        end
      end
    end
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.enableMinigamePlayerTags
    SHX1_3 = false
    SHX2_3 = false
    SHX0_3(SHX1_3, SHX2_3)
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.setIgnoreEventRespawns
    SHX1_3 = false
    SHX0_3(SHX1_3)
    SHX0_3 = ReleaseNamedScriptAudioBank
    SHX1_3 = "DLC_STUNT/STUNT_RACE_01"
    SHX0_3(SHX1_3)
    SHX0_3 = ReleaseNamedScriptAudioBank
    SHX1_3 = "DLC_STUNT/STUNT_RACE_02"
    SHX0_3(SHX1_3)
    SHX0_3 = ReleaseNamedScriptAudioBank
    SHX1_3 = "DLC_STUNT/STUNT_RACE_03"
    SHX0_3(SHX1_3)
    SHX0_3 = TriggerMusicEvent
    SHX1_3 = "BST_STOP"
    SHX0_3(SHX1_3)
    SHX0_3 = RemoveNamedPtfxAsset
    SHX1_3 = "core"
    SHX0_3(SHX1_3)
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.setPlayerCanOpenLeaderboard
    SHX1_3 = false
    SHX0_3(SHX1_3)
    SHX0_3 = DeleteEntity
    SHX1_3 = SHX3_1.vehicle
    SHX0_3(SHX1_3)
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.showAllDisplays
    SHX1_3 = "tilesurprise"
    SHX0_3(SHX1_3)
    SHX0_3 = BusyspinnerOff
    SHX0_3()
    SHX0_3 = SetPlayerControl
    SHX1_3 = PlayerId
    SHX1_3 = SHX1_3()
    SHX2_3 = true
    SHX3_3 = 0
    SHX0_3(SHX1_3, SHX2_3, SHX3_3)
    SHX0_3 = {}
    SHX3_1 = SHX0_3
  end
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = {}
  SHX1_2.customSpawncode = nil
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.registerMinigameOptionsHandler
  SHX3_2 = SHX0_2
  function SHX4_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3
    SHX0_3 = RageUI
    SHX0_3 = SHX0_3.ButtonWithStyle
    SHX1_3 = "~y~Custom Spawncode"
    SHX2_3 = "The custom spawncode to use on the map. Leave empty to have the default vehicle selection used."
    SHX3_3 = {}
    SHX4_3 = SHX1_2.customSpawncode
    if not SHX4_3 then
      SHX4_3 = "N/A"
    end
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
        SHX4_4 = "Enter Spawncode"
        SHX5_4 = ""
        function SHX6_4(SHX0_5)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX1_5, SHX2_5, SHX3_5, SHX4_5
          SHX1_5 = string
          SHX1_5 = SHX1_5.lower
          SHX2_5 = SHX0_5
          SHX1_5 = SHX1_5(SHX2_5)
          SHX2_5 = IsModelValid
          SHX3_5 = GetHashKey
          SHX4_5 = SHX1_5
          SHX3_5, SHX4_5 = SHX3_5(SHX4_5)
          SHX2_5 = SHX2_5(SHX3_5, SHX4_5)
          if SHX2_5 then
            SHX1_2.customSpawncode = SHX1_5
          else
            SHX1_2.customSpawncode = nil
          end
        end
        SHX3_4(SHX4_4, SHX5_4, SHX6_4)
      end
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3)
    SHX0_3 = SHX1_2
    return SHX0_3
  end
  SHX2_2(SHX3_2, SHX4_2)
end
SHX16_1(SHX17_1)
