-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1
SHX0_1 = false
SHX1_1 = nil
SHX2_1 = 0
SHX3_1 = 90
SHX4_1 = -3.5
SHX5_1 = nil
SHX6_1 = vector3
SHX7_1 = 5218.9399414062
SHX8_1 = -5393.2563476562
SHX9_1 = 67.318588256836
SHX6_1 = SHX6_1(SHX7_1, SHX8_1, SHX9_1)
SHX7_1 = false
SHX8_1 = vector3
SHX9_1 = 0.0
SHX10_1 = 0.0
SHX11_1 = 0.0
SHX8_1 = SHX8_1(SHX9_1, SHX10_1, SHX11_1)
SHX9_1 = 0.0
SHX10_1 = 0
SHX11_1 = 0
SHX12_1 = {}
SHX13_1 = {}
SHX14_1 = 0
SHX15_1 = {}
SHX16_1 = CMG
SHX16_1 = SHX16_1.registerDevMenuState
SHX17_1 = "Spectate"
SHX18_1 = {}
SHX18_1.enabled = false
SHX16_1 = SHX16_1(SHX17_1, SHX18_1)
function SHX17_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX4_2 = math
  SHX4_2 = SHX4_2.rad
  SHX5_2 = SHX2_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX5_2 = math
  SHX5_2 = SHX5_2.rad
  SHX6_2 = SHX3_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = vector3
  SHX7_2 = SHX0_2.x
  SHX8_2 = math
  SHX8_2 = SHX8_2.sin
  SHX9_2 = SHX5_2
  SHX8_2 = SHX8_2(SHX9_2)
  SHX9_2 = math
  SHX9_2 = SHX9_2.cos
  SHX10_2 = SHX4_2
  SHX9_2 = SHX9_2(SHX10_2)
  SHX8_2 = SHX8_2 * SHX9_2
  SHX8_2 = SHX1_2 * SHX8_2
  SHX7_2 = SHX7_2 + SHX8_2
  SHX8_2 = SHX0_2.y
  SHX9_2 = math
  SHX9_2 = SHX9_2.sin
  SHX10_2 = SHX5_2
  SHX9_2 = SHX9_2(SHX10_2)
  SHX10_2 = math
  SHX10_2 = SHX10_2.sin
  SHX11_2 = SHX4_2
  SHX10_2 = SHX10_2(SHX11_2)
  SHX9_2 = SHX9_2 * SHX10_2
  SHX9_2 = SHX1_2 * SHX9_2
  SHX8_2 = SHX8_2 - SHX9_2
  SHX9_2 = SHX0_2.z
  SHX10_2 = math
  SHX10_2 = SHX10_2.cos
  SHX11_2 = SHX5_2
  SHX10_2 = SHX10_2(SHX11_2)
  SHX10_2 = SHX1_2 * SHX10_2
  SHX9_2 = SHX9_2 - SHX10_2
  return SHX6_2(SHX7_2, SHX8_2, SHX9_2)
end
SHX18_1 = RegisterNetEvent
SHX19_1 = "d3ac8df566"
function SHX20_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.hasClientPermission
  SHX4_2 = "admin.espspectate"
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = 0
    SHX10_1 = SHX3_2
  end
  SHX3_2 = PlayerPedId
  SHX3_2 = SHX3_2()
  SHX4_2 = FreezeEntityPosition
  SHX5_2 = SHX3_2
  SHX6_2 = true
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SetEntityCollision
  SHX5_2 = SHX3_2
  SHX6_2 = false
  SHX7_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = SetEntityVisible
  SHX5_2 = SHX3_2
  SHX6_2 = false
  SHX7_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = SetEntityInvincible
  SHX5_2 = SHX3_2
  SHX6_2 = true
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = math
  SHX4_2 = SHX4_2.random
  SHX5_2 = 7500
  SHX6_2 = 8900
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX5_2 = math
  SHX5_2 = SHX5_2.random
  SHX6_2 = 7500
  SHX7_2 = 8900
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
  SHX6_2 = math
  SHX6_2 = SHX6_2.random
  SHX7_2 = 1
  SHX8_2 = 2
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = 2 == SHX6_2
  if SHX6_2 then
    SHX4_2 = -SHX4_2
    SHX5_2 = -SHX5_2
  end
  SHX7_2 = SetEntityCoordsNoOffset
  SHX8_2 = SHX3_2
  SHX9_2 = SHX4_2 + 0.0
  SHX10_2 = SHX5_2 + 0.0
  SHX11_2 = 1000.0
  SHX12_2 = false
  SHX13_2 = false
  SHX14_2 = false
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX7_2 = CreateCamWithParams
  SHX8_2 = "DEFAULT_SCRIPTED_CAMERA"
  SHX9_2 = SHX1_2.x
  SHX10_2 = SHX1_2.y
  SHX11_2 = SHX1_2.z
  SHX12_2 = 0.0
  SHX13_2 = 0.0
  SHX14_2 = 0.0
  SHX15_2 = GetGameplayCamFov
  SHX15_2 = SHX15_2()
  SHX16_2 = false
  SHX17_2 = 2
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX5_1 = SHX7_2
  SHX7_2 = SetCamActive
  SHX8_2 = SHX5_1
  SHX9_2 = true
  SHX7_2(SHX8_2, SHX9_2)
  SHX7_2 = RenderScriptCams
  SHX8_2 = true
  SHX9_2 = false
  SHX10_2 = 0
  SHX11_2 = true
  SHX12_2 = true
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX1_1 = SHX0_2
  while true do
    SHX7_2 = SHX1_1
    if not SHX7_2 then
      return
    end
    SHX7_2 = SetFocusPosAndVel
    SHX8_2 = SHX1_2.x
    SHX9_2 = SHX1_2.y
    SHX10_2 = SHX1_2.z
    SHX11_2 = 0.0
    SHX12_2 = 0.0
    SHX13_2 = 0.0
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX7_2 = LockMinimapPosition
    SHX8_2 = SHX1_2.x
    SHX9_2 = SHX1_2.y
    SHX7_2(SHX8_2, SHX9_2)
    SHX7_2 = SetPlayerBlipPositionThisFrame
    SHX8_2 = SHX1_2.x
    SHX9_2 = SHX1_2.y
    SHX7_2(SHX8_2, SHX9_2)
    SHX7_2 = GetPlayerFromServerId
    SHX8_2 = SHX0_2
    SHX7_2 = SHX7_2(SHX8_2)
    if -1 ~= SHX7_2 then
      break
    end
    SHX7_2 = Citizen
    SHX7_2 = SHX7_2.Wait
    SHX8_2 = 0
    SHX7_2(SHX8_2)
  end
  SHX7_2 = true
  SHX0_1 = SHX7_2
  if not SHX2_2 then
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.setPlayerNameDistance
    SHX8_2 = 10000.0
    SHX7_2(SHX8_2)
    SHX7_2 = true
    SHX7_1 = SHX7_2
  end
end
SHX18_1(SHX19_1, SHX20_1)
function SHX18_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX1_2 = GetGameTimer
  SHX1_2 = SHX1_2()
  SHX2_2 = pairs
  SHX3_2 = SHX15_1
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    if not SHX0_2 then
      SHX8_2 = SHX1_2 - SHX7_2
      SHX9_2 = 1000
      if not (SHX8_2 > SHX9_2) then
        goto SHX_LABEL_29
      end
    end
    SHX8_2 = SHX16_1.enabled
    if SHX8_2 then
      SHX8_2 = print
      SHX9_2 = string
      SHX9_2 = SHX9_2.format
      SHX10_2 = "[Spectate] Unpinning interior %s"
      SHX11_2 = SHX6_2
      SHX9_2, SHX10_2, SHX11_2 = SHX9_2(SHX10_2, SHX11_2)
      SHX8_2(SHX9_2, SHX10_2, SHX11_2)
    end
    SHX8_2 = UnpinInterior
    SHX9_2 = SHX6_2
    SHX8_2(SHX9_2)
    SHX8_2 = SHX15_1
    SHX8_2[SHX6_2] = nil
    -- [FIX IF ERROR] Move ::SHX_LABEL_29:: outside nested blocks until all 'goto SHX_LABEL_29' can see it
    ::SHX_LABEL_29::
  end
end
SHX19_1 = RegisterNetEvent
SHX20_1 = "9ea813a9a7"
function SHX21_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = false
  SHX0_1 = SHX0_2
  SHX0_2 = ClearFocus
  SHX0_2()
  SHX0_2 = nil
  SHX1_1 = SHX0_2
  SHX0_2 = UnlockMinimapPosition
  SHX0_2()
  SHX0_2 = SHX5_1
  if SHX0_2 then
    SHX0_2 = SetCamActive
    SHX1_2 = SHX5_1
    SHX2_2 = false
    SHX0_2(SHX1_2, SHX2_2)
    SHX0_2 = RenderScriptCams
    SHX1_2 = false
    SHX2_2 = false
    SHX3_2 = 0
    SHX4_2 = false
    SHX5_2 = false
    SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
    SHX0_2 = DestroyCam
    SHX1_2 = SHX5_1
    SHX2_2 = false
    SHX0_2(SHX1_2, SHX2_2)
  end
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = SetEntityInvincible
  SHX2_2 = SHX0_2
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetEntityVisible
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX4_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = SetEntityCollision
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = FreezeEntityPosition
  SHX2_2 = SHX0_2
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerCoords
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX6_1
  SHX1_2 = SHX1_2 - SHX2_2
  SHX1_2 = #SHX1_2
  SHX2_2 = 2142.0
  if SHX1_2 > SHX2_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.isInCayoPerico
    SHX1_2 = SHX1_2()
    if SHX1_2 then
      SHX1_2 = DisableCayoPerico
      SHX2_2 = true
      SHX1_2(SHX2_2)
    end
  end
  SHX1_2 = SHX7_1
  if SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.setPlayerNameDistance
    SHX2_2 = -1
    SHX1_2(SHX2_2)
    SHX1_2 = false
    SHX7_1 = SHX1_2
  end
  SHX1_2 = SHX18_1
  SHX2_2 = true
  SHX1_2(SHX2_2)
end
SHX19_1(SHX20_1, SHX21_1)
function SHX19_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2
  SHX10_2 = CMG
  SHX10_2 = SHX10_2.DrawText
  SHX11_2 = SHX2_2 / 2
  SHX11_2 = SHX0_2 - SHX11_2
  SHX12_2 = SHX3_2 / 2
  SHX12_2 = SHX1_2 - SHX12_2
  SHX12_2 = SHX12_2 + 0.005
  SHX13_2 = SHX5_2
  SHX14_2 = SHX4_2
  SHX15_2 = 0
  SHX16_2 = 1
  SHX17_2 = {}
  SHX18_2 = SHX6_2
  SHX19_2 = SHX7_2
  SHX20_2 = SHX8_2
  SHX21_2 = SHX9_2
  SHX17_2[1] = SHX18_2
  SHX17_2[2] = SHX19_2
  SHX17_2[3] = SHX20_2
  SHX17_2[4] = SHX21_2
  SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
end
function SHX20_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = GetScreenCoordFromWorldCoord
  SHX2_2 = SHX0_2.x
  SHX3_2 = SHX0_2.y
  SHX4_2 = SHX0_2.z
  SHX1_2, SHX2_2, SHX3_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX4_2 = SHX1_2
  SHX5_2 = vector2
  SHX6_2 = SHX2_2
  SHX7_2 = SHX3_2
  SHX5_2, SHX6_2, SHX7_2 = SHX5_2(SHX6_2, SHX7_2)
  return SHX4_2, SHX5_2, SHX6_2, SHX7_2
end
function SHX21_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX2_2 = math
  SHX2_2 = SHX2_2.min
  SHX3_2 = math
  SHX3_2 = SHX3_2.max
  SHX4_2 = SHX9_1
  SHX4_2 = SHX4_2 / 50.0
  SHX5_2 = 1.0
  SHX4_2 = SHX5_2 - SHX4_2
  SHX5_2 = 0.1
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX4_2 = 1.0
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = DrawLine_2d
  SHX4_2 = SHX0_2.x
  SHX5_2 = SHX0_2.y
  SHX6_2 = SHX1_2.x
  SHX7_2 = SHX1_2.y
  SHX8_2 = 0.001 * SHX2_2
  SHX9_2 = 255
  SHX10_2 = 255
  SHX11_2 = 0
  SHX12_2 = 255
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
end
function SHX22_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2, SHX36_2, SHX37_2, SHX38_2, SHX39_2, SHX40_2, SHX41_2, SHX42_2, SHX43_2, SHX44_2, SHX45_2, SHX46_2, SHX47_2, SHX48_2, SHX49_2, SHX50_2, SHX51_2, SHX52_2, SHX53_2, SHX54_2, SHX55_2, SHX56_2, SHX57_2, SHX58_2, SHX59_2, SHX60_2, SHX61_2, SHX62_2, SHX63_2, SHX64_2, SHX65_2, SHX66_2
  SHX1_2 = GetEntityCoords
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX2_2 = SHX20_1
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    return
  end
  SHX2_2 = GetPedBoneIndex
  SHX3_2 = SHX0_2
  SHX4_2 = 39317
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = GetPedBoneIndex
  SHX4_2 = SHX0_2
  SHX5_2 = 45509
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX4_2 = GetPedBoneIndex
  SHX5_2 = SHX0_2
  SHX6_2 = 40269
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX5_2 = GetPedBoneIndex
  SHX6_2 = SHX0_2
  SHX7_2 = 22711
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
  SHX6_2 = GetPedBoneIndex
  SHX7_2 = SHX0_2
  SHX8_2 = 2992
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  SHX7_2 = GetPedBoneIndex
  SHX8_2 = SHX0_2
  SHX9_2 = 18905
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
  SHX8_2 = GetPedBoneIndex
  SHX9_2 = SHX0_2
  SHX10_2 = 57005
  SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
  SHX9_2 = GetPedBoneIndex
  SHX10_2 = SHX0_2
  SHX11_2 = 11816
  SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
  SHX10_2 = GetPedBoneIndex
  SHX11_2 = SHX0_2
  SHX12_2 = 46078
  SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
  SHX11_2 = GetPedBoneIndex
  SHX12_2 = SHX0_2
  SHX13_2 = 16335
  SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
  SHX12_2 = GetPedBoneIndex
  SHX13_2 = SHX0_2
  SHX14_2 = 14201
  SHX12_2 = SHX12_2(SHX13_2, SHX14_2)
  SHX13_2 = GetPedBoneIndex
  SHX14_2 = SHX0_2
  SHX15_2 = 52301
  SHX13_2 = SHX13_2(SHX14_2, SHX15_2)
  SHX14_2 = GetPedBoneIndex
  SHX15_2 = SHX0_2
  SHX16_2 = 31086
  SHX14_2 = SHX14_2(SHX15_2, SHX16_2)
  SHX15_2 = GetWorldPositionOfEntityBone
  SHX16_2 = SHX0_2
  SHX17_2 = SHX2_2
  SHX15_2 = SHX15_2(SHX16_2, SHX17_2)
  SHX16_2 = GetWorldPositionOfEntityBone
  SHX17_2 = SHX0_2
  SHX18_2 = SHX3_2
  SHX16_2 = SHX16_2(SHX17_2, SHX18_2)
  SHX17_2 = GetWorldPositionOfEntityBone
  SHX18_2 = SHX0_2
  SHX19_2 = SHX4_2
  SHX17_2 = SHX17_2(SHX18_2, SHX19_2)
  SHX18_2 = GetWorldPositionOfEntityBone
  SHX19_2 = SHX0_2
  SHX20_2 = SHX5_2
  SHX18_2 = SHX18_2(SHX19_2, SHX20_2)
  SHX19_2 = GetWorldPositionOfEntityBone
  SHX20_2 = SHX0_2
  SHX21_2 = SHX6_2
  SHX19_2 = SHX19_2(SHX20_2, SHX21_2)
  SHX20_2 = GetWorldPositionOfEntityBone
  SHX21_2 = SHX0_2
  SHX22_2 = SHX7_2
  SHX20_2 = SHX20_2(SHX21_2, SHX22_2)
  SHX21_2 = GetWorldPositionOfEntityBone
  SHX22_2 = SHX0_2
  SHX23_2 = SHX8_2
  SHX21_2 = SHX21_2(SHX22_2, SHX23_2)
  SHX22_2 = GetWorldPositionOfEntityBone
  SHX23_2 = SHX0_2
  SHX24_2 = SHX9_2
  SHX22_2 = SHX22_2(SHX23_2, SHX24_2)
  SHX23_2 = GetWorldPositionOfEntityBone
  SHX24_2 = SHX0_2
  SHX25_2 = SHX10_2
  SHX23_2 = SHX23_2(SHX24_2, SHX25_2)
  SHX24_2 = GetWorldPositionOfEntityBone
  SHX25_2 = SHX0_2
  SHX26_2 = SHX11_2
  SHX24_2 = SHX24_2(SHX25_2, SHX26_2)
  SHX25_2 = GetWorldPositionOfEntityBone
  SHX26_2 = SHX0_2
  SHX27_2 = SHX12_2
  SHX25_2 = SHX25_2(SHX26_2, SHX27_2)
  SHX26_2 = GetWorldPositionOfEntityBone
  SHX27_2 = SHX0_2
  SHX28_2 = SHX13_2
  SHX26_2 = SHX26_2(SHX27_2, SHX28_2)
  SHX27_2 = GetWorldPositionOfEntityBone
  SHX28_2 = SHX0_2
  SHX29_2 = SHX14_2
  SHX27_2 = SHX27_2(SHX28_2, SHX29_2)
  SHX28_2 = SHX20_1
  SHX29_2 = SHX15_2
  SHX28_2, SHX29_2 = SHX28_2(SHX29_2)
  SHX30_2 = SHX20_1
  SHX31_2 = SHX16_2
  SHX30_2, SHX31_2 = SHX30_2(SHX31_2)
  SHX32_2 = SHX20_1
  SHX33_2 = SHX17_2
  SHX32_2, SHX33_2 = SHX32_2(SHX33_2)
  SHX34_2 = SHX20_1
  SHX35_2 = SHX18_2
  SHX34_2, SHX35_2 = SHX34_2(SHX35_2)
  SHX36_2 = SHX20_1
  SHX37_2 = SHX19_2
  SHX36_2, SHX37_2 = SHX36_2(SHX37_2)
  SHX38_2 = SHX20_1
  SHX39_2 = SHX20_2
  SHX38_2, SHX39_2 = SHX38_2(SHX39_2)
  SHX40_2 = SHX20_1
  SHX41_2 = SHX21_2
  SHX40_2, SHX41_2 = SHX40_2(SHX41_2)
  SHX42_2 = SHX20_1
  SHX43_2 = SHX22_2
  SHX42_2, SHX43_2 = SHX42_2(SHX43_2)
  SHX44_2 = SHX20_1
  SHX45_2 = SHX23_2
  SHX44_2, SHX45_2 = SHX44_2(SHX45_2)
  SHX46_2 = SHX20_1
  SHX47_2 = SHX24_2
  SHX46_2, SHX47_2 = SHX46_2(SHX47_2)
  SHX48_2 = SHX20_1
  SHX49_2 = SHX25_2
  SHX48_2, SHX49_2 = SHX48_2(SHX49_2)
  SHX50_2 = SHX20_1
  SHX51_2 = SHX26_2
  SHX50_2, SHX51_2 = SHX50_2(SHX51_2)
  SHX52_2 = GetFinalRenderedCamCoord
  SHX52_2 = SHX52_2()
  SHX52_2 = SHX52_2 - SHX1_2
  SHX52_2 = #SHX52_2
  SHX9_1 = SHX52_2
  SHX52_2 = SHX10_1
  if 1 ~= SHX52_2 then
    SHX52_2 = SHX10_1
    if 2 ~= SHX52_2 then
      goto SHX_LABEL_251
    end
  end
  if SHX28_2 and SHX30_2 then
    SHX52_2 = SHX21_1
    SHX53_2 = SHX29_2
    SHX54_2 = SHX31_2
    SHX52_2(SHX53_2, SHX54_2)
  end
  if SHX30_2 and SHX34_2 then
    SHX52_2 = SHX21_1
    SHX53_2 = SHX31_2
    SHX54_2 = SHX35_2
    SHX52_2(SHX53_2, SHX54_2)
  end
  if SHX34_2 and SHX38_2 then
    SHX52_2 = SHX21_1
    SHX53_2 = SHX35_2
    SHX54_2 = SHX39_2
    SHX52_2(SHX53_2, SHX54_2)
  end
  if SHX28_2 and SHX32_2 then
    SHX52_2 = SHX21_1
    SHX53_2 = SHX29_2
    SHX54_2 = SHX33_2
    SHX52_2(SHX53_2, SHX54_2)
  end
  if SHX32_2 and SHX36_2 then
    SHX52_2 = SHX21_1
    SHX53_2 = SHX33_2
    SHX54_2 = SHX37_2
    SHX52_2(SHX53_2, SHX54_2)
  end
  if SHX36_2 and SHX40_2 then
    SHX52_2 = SHX21_1
    SHX53_2 = SHX37_2
    SHX54_2 = SHX41_2
    SHX52_2(SHX53_2, SHX54_2)
  end
  if SHX28_2 and SHX42_2 then
    SHX52_2 = SHX21_1
    SHX53_2 = SHX29_2
    SHX54_2 = SHX43_2
    SHX52_2(SHX53_2, SHX54_2)
  end
  if SHX42_2 and SHX44_2 then
    SHX52_2 = SHX21_1
    SHX53_2 = SHX43_2
    SHX54_2 = SHX45_2
    SHX52_2(SHX53_2, SHX54_2)
  end
  if SHX44_2 and SHX48_2 then
    SHX52_2 = SHX21_1
    SHX53_2 = SHX45_2
    SHX54_2 = SHX49_2
    SHX52_2(SHX53_2, SHX54_2)
  end
  if SHX42_2 and SHX46_2 then
    SHX52_2 = SHX21_1
    SHX53_2 = SHX43_2
    SHX54_2 = SHX47_2
    SHX52_2(SHX53_2, SHX54_2)
  end
  if SHX46_2 and SHX50_2 then
    SHX52_2 = SHX21_1
    SHX53_2 = SHX47_2
    SHX54_2 = SHX51_2
    SHX52_2(SHX53_2, SHX54_2)
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_251:: outside nested blocks until all 'goto SHX_LABEL_251' can see it
  ::SHX_LABEL_251::
  SHX52_2 = SHX10_1
  if 1 == SHX52_2 then
    SHX52_2 = DrawLine
    SHX53_2 = SHX8_1.x
    SHX54_2 = SHX8_1.y
    SHX55_2 = SHX8_1.z
    SHX56_2 = SHX1_2.x
    SHX57_2 = SHX1_2.y
    SHX58_2 = SHX1_2.z
    SHX59_2 = 255
    SHX60_2 = 0
    SHX61_2 = 0
    SHX62_2 = 255
    SHX52_2(SHX53_2, SHX54_2, SHX55_2, SHX56_2, SHX57_2, SHX58_2, SHX59_2, SHX60_2, SHX61_2, SHX62_2)
  end
  SHX52_2 = NetworkGetPlayerIndexFromPed
  SHX53_2 = SHX0_2
  SHX52_2 = SHX52_2(SHX53_2)
  if SHX52_2 >= 0 then
    SHX53_2 = GetFinalRenderedInWhenFriendlyRot
    SHX54_2 = SHX52_2
    SHX55_2 = 2
    SHX53_2 = SHX53_2(SHX54_2, SHX55_2)
    SHX54_2 = #SHX53_2
    SHX55_2 = 0.1
    if SHX54_2 > SHX55_2 then
      SHX54_2 = CMG
      SHX54_2 = SHX54_2.rotationToDirection
      SHX55_2 = SHX53_2
      SHX54_2 = SHX54_2(SHX55_2)
      SHX55_2 = SHX54_2 * 3.0
      SHX55_2 = SHX27_2 + SHX55_2
      SHX56_2 = DrawLine
      SHX57_2 = SHX27_2.x
      SHX58_2 = SHX27_2.y
      SHX59_2 = SHX27_2.z
      SHX60_2 = SHX55_2.x
      SHX61_2 = SHX55_2.y
      SHX62_2 = SHX55_2.z
      SHX63_2 = 0
      SHX64_2 = 0
      SHX65_2 = 255
      SHX66_2 = 255
      SHX56_2(SHX57_2, SHX58_2, SHX59_2, SHX60_2, SHX61_2, SHX62_2, SHX63_2, SHX64_2, SHX65_2, SHX66_2)
    end
  end
end
function SHX23_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = GetEntityCoords
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX8_1 = SHX1_2
  SHX1_2 = IsControlJustPressed
  SHX2_2 = 0
  SHX3_2 = 121
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if SHX1_2 then
    SHX1_2 = TriggerServerEvent
    SHX2_2 = "38142e1d4b"
    SHX1_2(SHX2_2)
    SHX1_2 = SHX10_1
    if 0 == SHX1_2 then
      SHX1_2 = 1
      SHX10_1 = SHX1_2
    else
      SHX1_2 = SHX10_1
      if 1 == SHX1_2 then
        SHX1_2 = 2
        SHX10_1 = SHX1_2
      else
        SHX1_2 = SHX10_1
        if 2 == SHX1_2 then
          SHX1_2 = 3
          SHX10_1 = SHX1_2
        else
          SHX1_2 = SHX10_1
          if 3 == SHX1_2 then
            SHX1_2 = 0
            SHX10_1 = SHX1_2
          end
        end
      end
    end
    SHX1_2 = TriggerServerEvent
    SHX2_2 = "07f615539e"
    SHX3_2 = SHX10_1
    SHX3_2 = 0 ~= SHX3_2
    SHX1_2(SHX2_2, SHX3_2)
  end
  SHX1_2 = SHX10_1
  if SHX1_2 > 0 then
    SHX1_2 = PlayerPedId
    SHX1_2 = SHX1_2()
    SHX2_2 = pairs
    SHX3_2 = GetActivePlayers
    SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX3_2()
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
      SHX8_2 = GetPlayerPed
      SHX9_2 = SHX7_2
      SHX8_2 = SHX8_2(SHX9_2)
      if 0 ~= SHX8_2 and SHX8_2 ~= SHX1_2 then
        SHX9_2 = SHX22_1
        SHX10_2 = SHX8_2
        SHX9_2(SHX10_2)
      end
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
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2
  SHX0_2 = SHX0_1
  if SHX0_2 then
    SHX0_2 = SHX1_1
    if SHX0_2 then
      SHX0_2 = GetPlayerFromServerId
      SHX1_2 = SHX1_1
      SHX0_2 = SHX0_2(SHX1_2)
      if -1 ~= SHX0_2 then
        SHX1_2 = CMG
        SHX1_2 = SHX1_2.getPlayerPed
        SHX1_2 = SHX1_2()
        SHX2_2 = GetPlayerPed
        SHX3_2 = SHX0_2
        SHX2_2 = SHX2_2(SHX3_2)
        if 0 ~= SHX2_2 then
          SHX3_2 = GetEntityCoords
          SHX4_2 = SHX2_2
          SHX3_2 = SHX3_2(SHX4_2)
          SHX4_2 = GetEntityHealth
          SHX5_2 = SHX2_2
          SHX4_2 = SHX4_2(SHX5_2)
          SHX5_2 = GetEntityMaxHealth
          SHX6_2 = SHX2_2
          SHX5_2 = SHX5_2(SHX6_2)
          SHX6_2 = GetSelectedPedWeapon
          SHX7_2 = SHX2_2
          SHX6_2 = SHX6_2(SHX7_2)
          SHX7_2 = GetVehiclePedIsUsing
          SHX8_2 = SHX2_2
          SHX7_2 = SHX7_2(SHX8_2)
          SHX8_2 = GetInteriorAtCoords
          SHX9_2 = SHX3_2.x
          SHX10_2 = SHX3_2.y
          SHX11_2 = SHX3_2.z
          SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2)
          if 0 ~= SHX8_2 then
            SHX9_2 = SHX16_1.enabled
            if SHX9_2 then
              SHX9_2 = SHX15_1
              SHX9_2 = SHX9_2[SHX8_2]
              if not SHX9_2 then
                SHX9_2 = print
                SHX10_2 = string
                SHX10_2 = SHX10_2.format
                SHX11_2 = "[Spectate] Pinning interior %s"
                SHX12_2 = SHX8_2
                SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2 = SHX10_2(SHX11_2, SHX12_2)
                SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2)
              end
            end
            SHX9_2 = SHX15_1
            SHX10_2 = GetGameTimer
            SHX10_2 = SHX10_2()
            SHX9_2[SHX8_2] = SHX10_2
            SHX9_2 = PinInteriorInMemory
            SHX10_2 = SHX8_2
            SHX9_2(SHX10_2)
          end
          SHX9_2 = SHX16_1.enabled
          if SHX9_2 then
            SHX9_2 = CMG
            SHX9_2 = SHX9_2.drawDebugText
            SHX10_2 = "---------- Spectate ----------"
            SHX9_2(SHX10_2)
            SHX9_2 = CMG
            SHX9_2 = SHX9_2.drawDebugText
            SHX10_2 = "Interior ID: %s"
            SHX11_2 = SHX8_2
            SHX9_2(SHX10_2, SHX11_2)
            SHX9_2 = 1
            SHX10_2 = pairs
            SHX11_2 = SHX15_1
            SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX10_2(SHX11_2)
            for SHX14_2 in SHX10_2, SHX11_2, SHX12_2, SHX13_2 do
              SHX15_2 = CMG
              SHX15_2 = SHX15_2.drawDebugText
              SHX16_2 = "Pinned (%s): %s"
              SHX17_2 = SHX9_2
              SHX18_2 = SHX14_2
              SHX15_2(SHX16_2, SHX17_2, SHX18_2)
              SHX9_2 = SHX9_2 + 1
            end
          end
          SHX9_2 = PinInteriorInMemory
          SHX10_2 = SHX8_2
          SHX9_2(SHX10_2)
          SHX9_2 = CMG
          SHX9_2 = SHX9_2.getOrganRoomKeyFromInteriorId
          SHX10_2 = SHX8_2
          SHX9_2 = SHX9_2(SHX10_2)
          if SHX9_2 then
            SHX10_2 = ForceRoomForGameViewport
            SHX11_2 = SHX8_2
            SHX12_2 = SHX9_2
            SHX10_2(SHX11_2, SHX12_2)
          end
          SHX10_2 = GetPedArmour
          SHX11_2 = SHX2_2
          SHX10_2 = SHX10_2(SHX11_2)
          SHX11_2 = GetAmmoInPedWeapon
          SHX12_2 = SHX2_2
          SHX13_2 = SHX6_2
          SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
          if 0 == SHX7_2 then
            SHX12_2 = SHX19_1
            SHX13_2 = 0.76
            SHX14_2 = 1.465
            SHX15_2 = 1.0
            SHX16_2 = 1.0
            SHX17_2 = 0.4
            SHX18_2 = string
            SHX18_2 = SHX18_2.format
            SHX19_2 = "Player Speed: %.2f MPH"
            SHX20_2 = GetEntitySpeed
            SHX21_2 = SHX2_2
            SHX20_2 = SHX20_2(SHX21_2)
            SHX20_2 = SHX20_2 * 2.236936
            SHX18_2 = SHX18_2(SHX19_2, SHX20_2)
            SHX19_2 = 51
            SHX20_2 = 153
            SHX21_2 = 255
            SHX22_2 = 200
            SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
          else
            SHX12_2 = SHX19_1
            SHX13_2 = 0.76
            SHX14_2 = 1.465
            SHX15_2 = 1.0
            SHX16_2 = 1.0
            SHX17_2 = 0.4
            SHX18_2 = string
            SHX18_2 = SHX18_2.format
            SHX19_2 = "Vehicle Speed: %.2f MPH"
            SHX20_2 = GetEntitySpeed
            SHX21_2 = SHX7_2
            SHX20_2 = SHX20_2(SHX21_2)
            SHX20_2 = SHX20_2 * 2.236936
            SHX18_2 = SHX18_2(SHX19_2, SHX20_2)
            SHX19_2 = 51
            SHX20_2 = 153
            SHX21_2 = 255
            SHX22_2 = 200
            SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
          end
          SHX12_2 = SHX19_1
          SHX13_2 = 0.76
          SHX14_2 = 1.44
          SHX15_2 = 1.0
          SHX16_2 = 1.0
          SHX17_2 = 0.4
          SHX18_2 = "Health: "
          SHX19_2 = SHX4_2
          SHX20_2 = "/"
          SHX21_2 = SHX5_2
          SHX18_2 = SHX18_2 .. SHX19_2 .. SHX20_2 .. SHX21_2
          SHX19_2 = 51
          SHX20_2 = 153
          SHX21_2 = 255
          SHX22_2 = 200
          SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
          SHX12_2 = SHX19_1
          SHX13_2 = 0.76
          SHX14_2 = 1.415
          SHX15_2 = 1.0
          SHX16_2 = 1.0
          SHX17_2 = 0.4
          SHX18_2 = "Armor: "
          SHX19_2 = SHX10_2
          SHX18_2 = SHX18_2 .. SHX19_2
          SHX19_2 = 51
          SHX20_2 = 153
          SHX21_2 = 255
          SHX22_2 = 200
          SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
          SHX12_2 = SHX19_1
          SHX13_2 = 0.76
          SHX14_2 = 1.39
          SHX15_2 = 1.0
          SHX16_2 = 1.0
          SHX17_2 = 0.4
          SHX18_2 = "Vehicle Health: "
          SHX19_2 = GetEntityHealth
          SHX20_2 = GetVehiclePedIsIn
          SHX21_2 = SHX2_2
          SHX22_2 = false
          SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2 = SHX20_2(SHX21_2, SHX22_2)
          SHX19_2 = SHX19_2(SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2)
          SHX18_2 = SHX18_2 .. SHX19_2
          SHX19_2 = 51
          SHX20_2 = 153
          SHX21_2 = 255
          SHX22_2 = 200
          SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2)
          SHX12_2 = tostring
          SHX13_2 = WeaponNames
          SHX13_2 = SHX13_2[SHX6_2]
          SHX12_2 = SHX12_2(SHX13_2)
          SHX13_2 = SHX19_1
          SHX14_2 = 0.76
          SHX15_2 = 1.365
          SHX16_2 = 1.0
          SHX17_2 = 1.0
          SHX18_2 = 0.4
          SHX19_2 = "Weapon: "
          SHX20_2 = SHX12_2 or SHX20_2
          if not SHX12_2 then
            SHX20_2 = "N/A"
          end
          SHX19_2 = SHX19_2 .. SHX20_2
          SHX20_2 = 51
          SHX21_2 = 153
          SHX22_2 = 255
          SHX23_2 = 200
          SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
          SHX13_2 = SHX19_1
          SHX14_2 = 0.76
          SHX15_2 = 1.34
          SHX16_2 = 1.0
          SHX17_2 = 1.0
          SHX18_2 = 0.4
          SHX19_2 = "Ammo: "
          SHX20_2 = SHX11_2 or SHX20_2
          if not SHX11_2 then
            SHX20_2 = "N/A"
          end
          SHX19_2 = SHX19_2 .. SHX20_2
          SHX20_2 = 51
          SHX21_2 = 153
          SHX22_2 = 255
          SHX23_2 = 200
          SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
          SHX13_2 = GetActivePlayers
          SHX13_2 = SHX13_2()
          SHX14_2 = pairs
          SHX15_2 = SHX13_2
          SHX14_2, SHX15_2, SHX16_2, SHX17_2 = SHX14_2(SHX15_2)
          for SHX18_2, SHX19_2 in SHX14_2, SHX15_2, SHX16_2, SHX17_2 do
            SHX20_2 = GetPlayerPed
            SHX21_2 = SHX19_2
            SHX20_2 = SHX20_2(SHX21_2)
            SHX21_2 = SetEntityNoCollisionEntity
            SHX22_2 = SHX1_2
            SHX23_2 = SHX20_2
            SHX24_2 = true
            SHX21_2(SHX22_2, SHX23_2, SHX24_2)
          end
          SHX14_2 = DisableControlAction
          SHX15_2 = 2
          SHX16_2 = 15
          SHX17_2 = true
          SHX14_2(SHX15_2, SHX16_2, SHX17_2)
          SHX14_2 = DisableControlAction
          SHX15_2 = 2
          SHX16_2 = 17
          SHX17_2 = true
          SHX14_2(SHX15_2, SHX16_2, SHX17_2)
          SHX14_2 = IsControlPressed
          SHX15_2 = 2
          SHX16_2 = 241
          SHX14_2 = SHX14_2(SHX15_2, SHX16_2)
          if SHX14_2 then
            SHX14_2 = SHX4_1
            SHX14_2 = SHX14_2 + 0.5
            SHX4_1 = SHX14_2
          end
          SHX14_2 = DisableControlAction
          SHX15_2 = 2
          SHX16_2 = 14
          SHX17_2 = true
          SHX14_2(SHX15_2, SHX16_2, SHX17_2)
          SHX14_2 = DisableControlAction
          SHX15_2 = 2
          SHX16_2 = 16
          SHX17_2 = true
          SHX14_2(SHX15_2, SHX16_2, SHX17_2)
          SHX14_2 = IsControlPressed
          SHX15_2 = 2
          SHX16_2 = 242
          SHX14_2 = SHX14_2(SHX15_2, SHX16_2)
          if SHX14_2 then
            SHX14_2 = SHX4_1
            SHX14_2 = SHX14_2 - 0.5
            SHX4_1 = SHX14_2
          end
          SHX14_2 = SHX4_1
          if SHX14_2 > -1 then
            SHX14_2 = -1
            SHX4_1 = SHX14_2
          end
          SHX14_2 = GetDisabledControlNormal
          SHX15_2 = 0
          SHX16_2 = 1
          SHX14_2 = SHX14_2(SHX15_2, SHX16_2)
          SHX15_2 = GetDisabledControlNormal
          SHX16_2 = 0
          SHX17_2 = 2
          SHX15_2 = SHX15_2(SHX16_2, SHX17_2)
          SHX16_2 = SHX2_1
          SHX17_2 = SHX14_2 * 10
          SHX16_2 = SHX16_2 + SHX17_2
          SHX2_1 = SHX16_2
          SHX16_2 = SHX2_1
          SHX17_2 = 360
          if SHX16_2 >= SHX17_2 then
            SHX16_2 = 0
            SHX2_1 = SHX16_2
          end
          SHX16_2 = SHX3_1
          SHX17_2 = SHX15_2 * 10
          SHX16_2 = SHX16_2 - SHX17_2
          SHX3_1 = SHX16_2
          SHX16_2 = SHX3_1
          SHX17_2 = 360
          if SHX16_2 >= SHX17_2 then
            SHX16_2 = 0
            SHX3_1 = SHX16_2
          end
          SHX16_2 = SHX17_1
          SHX17_2 = SHX3_2
          SHX18_2 = SHX4_1
          SHX19_2 = SHX2_1
          SHX20_2 = SHX3_1
          SHX16_2 = SHX16_2(SHX17_2, SHX18_2, SHX19_2, SHX20_2)
          SHX17_2 = SHX5_1
          if SHX17_2 then
            SHX17_2 = SetCamCoord
            SHX18_2 = SHX5_1
            SHX19_2 = SHX16_2.x
            SHX20_2 = SHX16_2.y
            SHX21_2 = SHX16_2.z
            SHX17_2(SHX18_2, SHX19_2, SHX20_2, SHX21_2)
            SHX17_2 = PointCamAtEntity
            SHX18_2 = SHX5_1
            SHX19_2 = SHX2_2
            SHX20_2 = 0.0
            SHX21_2 = 0.0
            SHX22_2 = 0.0
            SHX23_2 = false
            SHX17_2(SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
          end
          SHX17_2 = SetFocusPosAndVel
          SHX18_2 = SHX3_2.x
          SHX19_2 = SHX3_2.y
          SHX20_2 = SHX3_2.z
          SHX21_2 = 0.0
          SHX22_2 = 0.0
          SHX23_2 = 0.0
          SHX17_2(SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
          SHX17_2 = LockMinimapPosition
          SHX18_2 = SHX3_2.x
          SHX19_2 = SHX3_2.y
          SHX17_2(SHX18_2, SHX19_2)
          SHX17_2 = SetPlayerBlipPositionThisFrame
          SHX18_2 = SHX3_2.x
          SHX19_2 = SHX3_2.y
          SHX17_2(SHX18_2, SHX19_2)
          SHX17_2 = GetFinalRenderedCamCoord
          SHX17_2 = SHX17_2()
          SHX18_2 = SHX6_1
          SHX17_2 = SHX17_2 - SHX18_2
          SHX17_2 = #SHX17_2
          SHX18_2 = 2142.0
          if SHX17_2 < SHX18_2 then
            SHX17_2 = CMG
            SHX17_2 = SHX17_2.isInCayoPerico
            SHX17_2 = SHX17_2()
            if not SHX17_2 then
              SHX17_2 = EnableCayoPerico
              SHX18_2 = true
              SHX17_2(SHX18_2)
            end
          else
            SHX17_2 = CMG
            SHX17_2 = SHX17_2.isInCayoPerico
            SHX17_2 = SHX17_2()
            if SHX17_2 then
              SHX17_2 = DisableCayoPerico
              SHX18_2 = true
              SHX17_2(SHX18_2)
            end
          end
          SHX17_2 = CMG
          SHX17_2 = SHX17_2.hasClientPermission
          SHX18_2 = "admin.espspectate"
          SHX17_2 = SHX17_2(SHX18_2)
          if SHX17_2 then
            SHX17_2 = CMG
            SHX17_2 = SHX17_2.isStreamerMode
            SHX17_2 = SHX17_2()
            if not SHX17_2 then
              SHX17_2 = SHX23_1
              SHX18_2 = SHX2_2
              SHX17_2(SHX18_2)
            end
          end
          SHX17_2 = GetGameTimer
          SHX17_2 = SHX17_2()
          SHX18_2 = SHX11_1
          SHX18_2 = SHX17_2 - SHX18_2
          SHX19_2 = 2000
          if SHX18_2 > SHX19_2 then
            SHX18_2 = TriggerServerEvent
            SHX19_2 = "933f9e09bb"
            SHX18_2(SHX19_2)
            SHX11_1 = SHX17_2
          end
          SHX18_2 = SHX12_1
          SHX18_2 = #SHX18_2
          if SHX18_2 > 0 then
            SHX18_2 = CMG
            SHX18_2 = SHX18_2.hasClientPermission
            SHX19_2 = "admin.spectatingnames"
            SHX18_2 = SHX18_2(SHX19_2)
            if SHX18_2 then
              SHX18_2 = SHX19_1
              SHX19_2 = 0.76
              SHX20_2 = 0.5
              SHX21_2 = 1.0
              SHX22_2 = 1.0
              SHX23_2 = 0.4
              SHX24_2 = "Staff Spectating:"
              SHX25_2 = 255
              SHX26_2 = 143
              SHX27_2 = 27
              SHX28_2 = 255
              SHX18_2(SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
              SHX18_2 = pairs
              SHX19_2 = SHX12_1
              SHX18_2, SHX19_2, SHX20_2, SHX21_2 = SHX18_2(SHX19_2)
              for SHX22_2, SHX23_2 in SHX18_2, SHX19_2, SHX20_2, SHX21_2 do
                SHX24_2 = fullPlayerListData
                SHX24_2 = SHX24_2[SHX23_2]
                if SHX24_2 then
                  SHX25_2 = SHX19_1
                  SHX26_2 = 0.76
                  SHX27_2 = SHX22_2 / 30.0
                  SHX27_2 = 0.5 + SHX27_2
                  SHX28_2 = 1.0
                  SHX29_2 = 1.0
                  SHX30_2 = 0.4
                  SHX31_2 = string
                  SHX31_2 = SHX31_2.format
                  SHX32_2 = "%s (%s)"
                  SHX33_2 = SHX24_2[2]
                  SHX34_2 = SHX23_2
                  SHX31_2 = SHX31_2(SHX32_2, SHX33_2, SHX34_2)
                  SHX32_2 = 255
                  SHX33_2 = 143
                  SHX34_2 = 27
                  SHX35_2 = 255
                  SHX25_2(SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2, SHX34_2, SHX35_2)
                end
              end
            else
              SHX18_2 = SHX19_1
              SHX19_2 = 0.76
              SHX20_2 = 0.5
              SHX21_2 = 1.0
              SHX22_2 = 1.0
              SHX23_2 = 0.4
              SHX24_2 = tostring
              SHX25_2 = SHX12_1
              SHX25_2 = #SHX25_2
              SHX24_2 = SHX24_2(SHX25_2)
              SHX25_2 = " Staff Spectating"
              SHX24_2 = SHX24_2 .. SHX25_2
              SHX25_2 = 255
              SHX26_2 = 143
              SHX27_2 = 27
              SHX28_2 = 255
              SHX18_2(SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2)
            end
          end
          SHX18_2 = SHX13_1
          SHX18_2 = #SHX18_2
          if SHX18_2 > 0 then
            SHX19_2 = SHX18_2
            SHX20_2 = 1
            SHX21_2 = -1
            for SHX22_2 = SHX19_2, SHX20_2, SHX21_2 do
              SHX23_2 = SHX13_1
              SHX23_2 = SHX23_2[SHX22_2]
              SHX24_2 = SHX23_2[2]
              SHX24_2 = SHX17_2 - SHX24_2
              SHX25_2 = 3000
              if SHX24_2 > SHX25_2 then
                SHX24_2 = table
                SHX24_2 = SHX24_2.remove
                SHX25_2 = SHX13_1
                SHX26_2 = SHX22_2
                SHX24_2(SHX25_2, SHX26_2)
              end
            end
            SHX19_2 = pairs
            SHX20_2 = SHX13_1
            SHX19_2, SHX20_2, SHX21_2, SHX22_2 = SHX19_2(SHX20_2)
            for SHX23_2, SHX24_2 in SHX19_2, SHX20_2, SHX21_2, SHX22_2 do
              SHX25_2 = CMG
              SHX25_2 = SHX25_2.DrawText
              SHX26_2 = 0.7
              SHX27_2 = SHX23_2 / 45.0
              SHX27_2 = 0.4 + SHX27_2
              SHX28_2 = SHX24_2[1]
              SHX29_2 = 0.4
              SHX30_2 = nil
              SHX31_2 = nil
              SHX32_2 = nil
              SHX33_2 = true
              SHX25_2(SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2, SHX32_2, SHX33_2)
            end
          end
        end
      else
        SHX1_2 = GetGameTimer
        SHX1_2 = SHX1_2()
        SHX2_2 = SHX14_1
        SHX2_2 = SHX1_2 - SHX2_2
        SHX3_2 = 5000
        if SHX2_2 >= SHX3_2 then
          SHX14_1 = SHX1_2
          SHX2_2 = tCMG
          SHX2_2 = SHX2_2.notify
          SHX3_2 = "~r~Couldn't spectate, person not in your zone"
          SHX2_2(SHX3_2)
        end
      end
      SHX1_2 = SHX18_1
      SHX2_2 = false
      SHX1_2(SHX2_2)
    end
  end
end
SHX25_1 = CMG
SHX25_1 = SHX25_1.createThreadOnTick
SHX26_1 = SHX24_1
SHX27_1 = "Staff Spectator"
SHX25_1(SHX26_1, SHX27_1)
SHX25_1 = {}
SHX26_1 = AddStateBagChangeHandler
SHX27_1 = "conceal"
SHX28_1 = nil
function SHX29_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX3_2 = tonumber
  SHX4_2 = stringsplit
  SHX5_2 = SHX0_2
  SHX6_2 = ":"
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SHX4_2[2]
  SHX3_2 = SHX3_2(SHX4_2)
  if not SHX3_2 then
    return
  end
  if SHX2_2 then
    SHX4_2 = SHX25_1
    SHX4_2[SHX3_2] = true
  else
    SHX4_2 = GetPlayerFromServerId
    SHX5_2 = SHX3_2
    SHX4_2 = SHX4_2(SHX5_2)
    if -1 ~= SHX4_2 then
      SHX5_2 = PlayerId
      SHX5_2 = SHX5_2()
      if SHX4_2 ~= SHX5_2 then
        SHX5_2 = NetworkConcealPlayer
        SHX6_2 = SHX4_2
        SHX7_2 = false
        SHX8_2 = false
        SHX5_2(SHX6_2, SHX7_2, SHX8_2)
      end
    end
    SHX5_2 = SHX25_1
    SHX5_2[SHX3_2] = nil
  end
end
SHX26_1(SHX27_1, SHX28_1, SHX29_1)
SHX26_1 = RegisterNetEvent
SHX27_1 = "onPlayerDropped"
function SHX28_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX25_1
  SHX1_2[SHX0_2] = nil
end
SHX26_1(SHX27_1, SHX28_1)
function SHX26_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = pairs
  SHX1_2 = SHX25_1
  SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
  for SHX4_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
    SHX5_2 = GetPlayerFromServerId
    SHX6_2 = SHX4_2
    SHX5_2 = SHX5_2(SHX6_2)
    if -1 ~= SHX5_2 then
      SHX6_2 = PlayerId
      SHX6_2 = SHX6_2()
      if SHX5_2 ~= SHX6_2 then
        SHX6_2 = NetworkConcealPlayer
        SHX7_2 = SHX5_2
        SHX8_2 = true
        SHX9_2 = true
        SHX6_2(SHX7_2, SHX8_2, SHX9_2)
      end
    end
  end
end
SHX27_1 = CMG
SHX27_1 = SHX27_1.createThreadOnTick
SHX28_1 = SHX26_1
SHX29_1 = "Staff Spectator Concealing"
SHX27_1(SHX28_1, SHX29_1)
SHX27_1 = CMG
function SHX28_1()
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
SHX27_1.isInSpectate = SHX28_1
SHX27_1 = RegisterNetEvent
SHX28_1 = "5126fa6ac5"
function SHX29_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.hasClientPermission
  SHX2_2 = "admin.tickets"
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX12_1 = SHX0_2
  end
end
SHX27_1(SHX28_1, SHX29_1)
SHX27_1 = RegisterNetEvent
SHX28_1 = "90dc9c490b"
function SHX29_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX1_2 = GetGameTimer
  SHX1_2 = SHX1_2()
  SHX2_2 = pairs
  SHX3_2 = SHX0_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = CMG
    SHX8_2 = SHX8_2.isKeyboardKeyCaptured
    SHX9_2 = SHX7_2[1]
    SHX8_2 = SHX8_2(SHX9_2)
    if SHX8_2 then
      SHX8_2 = "~r~"
      if SHX8_2 then
        goto SHX_LABEL_17
      end
    end
    SHX8_2 = "~g~"
    -- [FIX IF ERROR] Move ::SHX_LABEL_17:: outside nested blocks until all 'goto SHX_LABEL_17' can see it
    ::SHX_LABEL_17::
    SHX9_2 = SHX7_2[1]
    SHX10_2 = table
    SHX10_2 = SHX10_2.insert
    SHX11_2 = SHX13_1
    SHX12_2 = {}
    SHX13_2 = string
    SHX13_2 = SHX13_2.format
    SHX14_2 = "%s%s"
    SHX15_2 = SHX8_2
    SHX16_2 = SHX9_2
    SHX13_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2)
    SHX14_2 = SHX1_2
    SHX12_2[1] = SHX13_2
    SHX12_2[2] = SHX14_2
    SHX10_2(SHX11_2, SHX12_2)
  end
end
SHX27_1(SHX28_1, SHX29_1)
SHX27_1 = CMG
SHX27_1 = SHX27_1.registerDevMenuItems
SHX28_1 = "Spectate"
function SHX29_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Checkbox
  SHX1_2 = "Debug"
  SHX2_2 = "Display debug information for spectate."
  SHX3_2 = SHX16_1.enabled
  SHX4_2 = {}
  function SHX5_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    SHX16_1.enabled = SHX3_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX27_1(SHX28_1, SHX29_1)
