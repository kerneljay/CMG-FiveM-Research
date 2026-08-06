-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1
SHX0_1 = 150.0
SHX1_1 = 3.0
SHX2_1 = 50.0
SHX3_1 = 8.0
SHX4_1 = 8.0
SHX5_1 = {}
SHX6_1 = vector3
SHX7_1 = 455.57122802734
SHX8_1 = -620.88134765625
SHX9_1 = 286.98864746094
SHX6_1 = SHX6_1(SHX7_1, SHX8_1, SHX9_1)
SHX7_1 = vector3
SHX8_1 = 455.92523193359
SHX9_1 = -601.85333251953
SHX10_1 = 286.99536132812
SHX7_1 = SHX7_1(SHX8_1, SHX9_1, SHX10_1)
SHX8_1 = vector3
SHX9_1 = 476.18197631836
SHX10_1 = -604.80316162109
SHX11_1 = 286.99682617188
SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1 = SHX8_1(SHX9_1, SHX10_1, SHX11_1)
SHX5_1[1] = SHX6_1
SHX5_1[2] = SHX7_1
SHX5_1[3] = SHX8_1
SHX5_1[4] = SHX9_1
SHX5_1[5] = SHX10_1
SHX5_1[6] = SHX11_1
SHX5_1[7] = SHX12_1
SHX5_1[8] = SHX13_1
SHX5_1[9] = SHX14_1
SHX5_1[10] = SHX15_1
SHX5_1[11] = SHX16_1
SHX5_1[12] = SHX17_1
SHX5_1[13] = SHX18_1
SHX5_1[14] = SHX19_1
SHX5_1[15] = SHX20_1
SHX5_1[16] = SHX21_1
SHX5_1[17] = SHX22_1
SHX5_1[18] = SHX23_1
SHX5_1[19] = SHX24_1
SHX5_1[20] = SHX25_1
SHX5_1[21] = SHX26_1
SHX5_1[22] = SHX27_1
SHX5_1[23] = SHX28_1
SHX5_1[24] = SHX29_1
SHX6_1 = {}
SHX7_1 = 844159446
SHX6_1[1] = SHX7_1
SHX7_1 = false
SHX8_1 = 0
SHX9_1 = SHX0_1 + SHX1_1
SHX9_1 = SHX9_1 * 0.5
SHX10_1 = RegisterNetEvent
SHX11_1 = "dfb83eb4ef"
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX7_1
  SHX0_2 = not SHX0_2
  SHX7_1 = SHX0_2
  SHX0_2 = notify
  SHX1_2 = "~b~Using binoculars, press E to close. (W/S to zoom in/out)"
  SHX0_2(SHX1_2)
end
SHX10_1(SHX11_1, SHX12_1)
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = HideHelpTextThisFrame
  SHX0_2()
  SHX0_2 = HideHudComponentThisFrame
  SHX1_2 = 19
  SHX0_2(SHX1_2)
  SHX0_2 = HideHudComponentThisFrame
  SHX1_2 = 1
  SHX0_2(SHX1_2)
  SHX0_2 = HideHudComponentThisFrame
  SHX1_2 = 2
  SHX0_2(SHX1_2)
  SHX0_2 = HideHudComponentThisFrame
  SHX1_2 = 3
  SHX0_2(SHX1_2)
  SHX0_2 = HideHudComponentThisFrame
  SHX1_2 = 4
  SHX0_2(SHX1_2)
  SHX0_2 = HideHudComponentThisFrame
  SHX1_2 = 13
  SHX0_2(SHX1_2)
  SHX0_2 = HideHudComponentThisFrame
  SHX1_2 = 11
  SHX0_2(SHX1_2)
  SHX0_2 = HideHudComponentThisFrame
  SHX1_2 = 12
  SHX0_2(SHX1_2)
  SHX0_2 = HideHudComponentThisFrame
  SHX1_2 = 15
  SHX0_2(SHX1_2)
  SHX0_2 = HideHudComponentThisFrame
  SHX1_2 = 18
  SHX0_2(SHX1_2)
end
function SHX11_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX2_2 = GetCamRot
  SHX3_2 = SHX0_2
  SHX4_2 = 2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = GetDisabledControlNormal
  SHX4_2 = 0
  SHX5_2 = 220
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  SHX4_2 = GetDisabledControlNormal
  SHX5_2 = 0
  SHX6_2 = 221
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  if 0.0 ~= SHX3_2 or 0.0 ~= SHX4_2 then
    SHX5_2 = SHX2_2.z
    SHX6_2 = SHX3_2 * -1.0
    SHX7_2 = SHX4_1
    SHX6_2 = SHX6_2 * SHX7_2
    SHX7_2 = SHX1_2 + 0.1
    SHX6_2 = SHX6_2 * SHX7_2
    SHX5_2 = SHX5_2 + SHX6_2
    SHX6_2 = math
    SHX6_2 = SHX6_2.max
    SHX7_2 = math
    SHX7_2 = SHX7_2.min
    SHX8_2 = 20.0
    SHX9_2 = SHX2_2.x
    SHX10_2 = SHX4_2 * -1.0
    SHX11_2 = SHX3_1
    SHX10_2 = SHX10_2 * SHX11_2
    SHX11_2 = SHX1_2 + 0.1
    SHX10_2 = SHX10_2 * SHX11_2
    SHX9_2 = SHX9_2 + SHX10_2
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
    SHX8_2 = -89.5
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
    SHX7_2 = SetCamRot
    SHX8_2 = SHX0_2
    SHX9_2 = SHX6_2
    SHX10_2 = 0.0
    SHX11_2 = SHX5_2
    SHX12_2 = 2
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  end
end
function SHX12_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = IsPedInAnyVehicle
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerPed
  SHX2_2 = SHX2_2()
  SHX3_2 = true
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if not SHX1_2 then
    SHX1_2 = IsDisabledControlPressed
    SHX2_2 = 0
    SHX3_2 = 32
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    if SHX1_2 then
      SHX1_2 = math
      SHX1_2 = SHX1_2.max
      SHX2_2 = SHX9_1
      SHX3_2 = SHX2_1
      SHX4_2 = GetFrameTime
      SHX4_2 = SHX4_2()
      SHX3_2 = SHX3_2 * SHX4_2
      SHX2_2 = SHX2_2 - SHX3_2
      SHX3_2 = SHX1_1
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
      SHX9_1 = SHX1_2
    end
    SHX1_2 = IsDisabledControlPressed
    SHX2_2 = 0
    SHX3_2 = 8
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    if SHX1_2 then
      SHX1_2 = math
      SHX1_2 = SHX1_2.min
      SHX2_2 = SHX9_1
      SHX3_2 = SHX2_1
      SHX4_2 = GetFrameTime
      SHX4_2 = SHX4_2()
      SHX3_2 = SHX3_2 * SHX4_2
      SHX2_2 = SHX2_2 + SHX3_2
      SHX3_2 = SHX0_1
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
      SHX9_1 = SHX1_2
    end
    SHX1_2 = GetCamFov
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    SHX2_2 = math
    SHX2_2 = SHX2_2.abs
    SHX3_2 = SHX9_1
    SHX3_2 = SHX3_2 - SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    SHX3_2 = 0.1
    if SHX2_2 < SHX3_2 then
      SHX9_1 = SHX1_2
    end
    SHX2_2 = SetCamFov
    SHX3_2 = SHX0_2
    SHX4_2 = SHX9_1
    SHX4_2 = SHX4_2 - SHX1_2
    SHX4_2 = SHX4_2 * 0.05
    SHX4_2 = SHX1_2 + SHX4_2
    SHX2_2(SHX3_2, SHX4_2)
  else
    SHX1_2 = IsDisabledControlPressed
    SHX2_2 = 0
    SHX3_2 = 241
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    if SHX1_2 then
      SHX1_2 = math
      SHX1_2 = SHX1_2.max
      SHX2_2 = SHX9_1
      SHX3_2 = SHX2_1
      SHX4_2 = GetFrameTime
      SHX4_2 = SHX4_2()
      SHX3_2 = SHX3_2 * SHX4_2
      SHX2_2 = SHX2_2 - SHX3_2
      SHX3_2 = SHX1_1
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
      SHX9_1 = SHX1_2
    end
    SHX1_2 = IsDisabledControlPressed
    SHX2_2 = 0
    SHX3_2 = 242
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    if SHX1_2 then
      SHX1_2 = math
      SHX1_2 = SHX1_2.min
      SHX2_2 = SHX9_1
      SHX3_2 = SHX2_1
      SHX4_2 = GetFrameTime
      SHX4_2 = SHX4_2()
      SHX3_2 = SHX3_2 * SHX4_2
      SHX2_2 = SHX2_2 + SHX3_2
      SHX3_2 = SHX0_1
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
      SHX9_1 = SHX1_2
    end
    SHX1_2 = GetCamFov
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    SHX2_2 = math
    SHX2_2 = SHX2_2.abs
    SHX3_2 = SHX9_1
    SHX3_2 = SHX3_2 - SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    SHX3_2 = 0.1
    if SHX2_2 < SHX3_2 then
      SHX9_1 = SHX1_2
    end
    SHX2_2 = SetCamFov
    SHX3_2 = SHX0_2
    SHX4_2 = SHX9_1
    SHX4_2 = SHX4_2 - SHX1_2
    SHX4_2 = SHX4_2 * 0.05
    SHX4_2 = SHX1_2 + SHX4_2
    SHX2_2(SHX3_2, SHX4_2)
  end
end
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX1_2 = pairs
  SHX2_2 = GetGamePool
  SHX3_2 = "CObject"
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX2_2(SHX3_2)
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = GetEntityModel
    SHX8_2 = SHX6_2
    SHX7_2 = SHX7_2(SHX8_2)
    SHX8_2 = table
    SHX8_2 = SHX8_2.has
    SHX9_2 = SHX6_1
    SHX10_2 = SHX7_2
    SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
    if SHX8_2 then
      SHX8_2 = SHX0_2
      SHX9_2 = SHX6_2
      SHX8_2(SHX9_2)
    end
  end
end
SHX14_1 = CreateThread
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  while true do
    SHX0_2 = IsControlJustPressed
    SHX1_2 = 0
    SHX2_2 = 29
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if SHX0_2 then
      SHX0_2 = IsControlPressed
      SHX1_2 = 0
      SHX2_2 = 21
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
      if SHX0_2 then
        SHX0_2 = SHX7_1
        if not SHX0_2 then
          SHX0_2 = CMGclient
          SHX0_2 = SHX0_2.useInventoryItem
          SHX1_2 = {}
          SHX2_2 = "binos"
          SHX3_2 = 1
          SHX1_2[1] = SHX2_2
          SHX1_2[2] = SHX3_2
          SHX0_2(SHX1_2)
          SHX0_2 = TriggerServerEvent
          SHX1_2 = "4499b42011"
          SHX0_2(SHX1_2)
        end
      end
    end
    SHX0_2 = SHX7_1
    if SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.setEmotesIgnoreCombatTimer
      SHX1_2 = true
      SHX0_2(SHX1_2)
      SHX0_2 = PlayerPedId
      SHX0_2 = SHX0_2()
      SHX1_2 = IsPedInAnyVehicle
      SHX2_2 = SHX0_2
      SHX3_2 = true
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
      if not SHX1_2 then
        SHX1_2 = CMG
        SHX1_2 = SHX1_2.playEmote
        SHX2_2 = "binoculars"
        SHX1_2(SHX2_2)
      end
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.setWeapon
      SHX2_2 = SHX0_2
      SHX3_2 = "WEAPON_UNARMED"
      SHX4_2 = true
      SHX1_2(SHX2_2, SHX3_2, SHX4_2)
      SHX1_2 = Wait
      SHX2_2 = 450
      SHX1_2(SHX2_2)
      SHX1_2 = SetTimecycleModifier
      SHX2_2 = "heliGunCam"
      SHX1_2(SHX2_2)
      SHX1_2 = SetTimecycleModifierStrength
      SHX2_2 = 0.3
      SHX1_2(SHX2_2)
      SHX1_2 = RequestScaleformMovie
      SHX2_2 = "binoculars"
      SHX1_2 = SHX1_2(SHX2_2)
      while true do
        SHX2_2 = HasScaleformMovieLoaded
        SHX3_2 = SHX1_2
        SHX2_2 = SHX2_2(SHX3_2)
        if SHX2_2 then
          break
        end
        SHX2_2 = Wait
        SHX3_2 = 1
        SHX2_2(SHX3_2)
      end
      SHX2_2 = DrawScaleformMovieFullscreen
      SHX3_2 = SHX1_2
      SHX4_2 = 255
      SHX5_2 = 255
      SHX6_2 = 255
      SHX7_2 = 0
      SHX8_2 = 0
      SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX2_2 = CreateCam
      SHX3_2 = "DEFAULT_SCRIPTED_FLY_CAMERA"
      SHX4_2 = true
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
      SHX3_2 = AttachCamToEntity
      SHX4_2 = SHX2_2
      SHX5_2 = CMG
      SHX5_2 = SHX5_2.getPlayerPed
      SHX5_2 = SHX5_2()
      SHX6_2 = 0.0
      SHX7_2 = 0.0
      SHX8_2 = 1.0
      SHX9_2 = true
      SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
      SHX3_2 = SetCamRot
      SHX4_2 = SHX2_2
      SHX5_2 = 0.0
      SHX6_2 = 0.0
      SHX7_2 = GetEntityHeading
      SHX8_2 = CMG
      SHX8_2 = SHX8_2.getPlayerPed
      SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX8_2()
      SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
      SHX8_2 = 2
      SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX3_2 = SetCamFov
      SHX4_2 = SHX2_2
      SHX5_2 = SHX9_1
      SHX3_2(SHX4_2, SHX5_2)
      SHX3_2 = RenderScriptCams
      SHX4_2 = true
      SHX5_2 = false
      SHX6_2 = 0
      SHX7_2 = true
      SHX8_2 = false
      SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX3_2 = ScaleformMovieMethodAddParamInt
      SHX4_2 = 0
      SHX3_2(SHX4_2)
      SHX3_2 = EndScaleformMovieMethod
      SHX3_2()
      SHX3_2 = SHX13_1
      function SHX4_2(SHX0_3)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX1_3, SHX2_3, SHX3_3, SHX4_3
        SHX1_3 = SetEntityVisible
        SHX2_3 = SHX0_3
        SHX3_3 = false
        SHX4_3 = false
        SHX1_3(SHX2_3, SHX3_3, SHX4_3)
      end
      SHX3_2(SHX4_2)
      SHX3_2 = nil
      while true do
        SHX4_2 = SHX7_1
        if not SHX4_2 then
          break
        end
        SHX4_2 = IsPedInAnyVehicle
        SHX5_2 = CMG
        SHX5_2 = SHX5_2.getPlayerPed
        SHX5_2 = SHX5_2()
        SHX6_2 = true
        SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
        if SHX4_2 then
          break
        end
        SHX4_2 = CMG
        SHX4_2 = SHX4_2.isPlayingEmote
        SHX4_2, SHX5_2 = SHX4_2()
        SHX6_2 = IsControlJustPressed
        SHX7_2 = 0
        SHX8_2 = 38
        SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
        if not (not SHX6_2 and SHX4_2) or "Binoculars" ~= SHX5_2 then
          SHX6_2 = false
          SHX7_1 = SHX6_2
          break
        end
        if not SHX3_2 then
          SHX6_2 = SHX0_1
          SHX7_2 = SHX1_1
          SHX6_2 = SHX6_2 - SHX7_2
          SHX7_2 = 1.0
          SHX6_2 = SHX7_2 / SHX6_2
          SHX7_2 = SHX9_1
          SHX8_2 = SHX1_1
          SHX7_2 = SHX7_2 - SHX8_2
          SHX6_2 = SHX6_2 * SHX7_2
          SHX7_2 = SHX11_1
          SHX8_2 = SHX2_2
          SHX9_2 = SHX6_2
          SHX7_2(SHX8_2, SHX9_2)
        end
        SHX6_2 = DisableControlAction
        SHX7_2 = 0
        SHX8_2 = 30
        SHX9_2 = true
        SHX6_2(SHX7_2, SHX8_2, SHX9_2)
        SHX6_2 = DisableControlAction
        SHX7_2 = 0
        SHX8_2 = 31
        SHX9_2 = true
        SHX6_2(SHX7_2, SHX8_2, SHX9_2)
        SHX6_2 = DisableControlAction
        SHX7_2 = 0
        SHX8_2 = 32
        SHX9_2 = true
        SHX6_2(SHX7_2, SHX8_2, SHX9_2)
        SHX6_2 = DisableControlAction
        SHX7_2 = 0
        SHX8_2 = 33
        SHX9_2 = true
        SHX6_2(SHX7_2, SHX8_2, SHX9_2)
        SHX6_2 = DisableControlAction
        SHX7_2 = 0
        SHX8_2 = 34
        SHX9_2 = true
        SHX6_2(SHX7_2, SHX8_2, SHX9_2)
        SHX6_2 = DisableControlAction
        SHX7_2 = 0
        SHX8_2 = 35
        SHX9_2 = true
        SHX6_2(SHX7_2, SHX8_2, SHX9_2)
        SHX6_2 = SHX12_1
        SHX7_2 = SHX2_2
        SHX6_2(SHX7_2)
        SHX6_2 = SHX10_1
        SHX6_2()
        SHX6_2 = CMG
        SHX6_2 = SHX6_2.setWeapon
        SHX7_2 = SHX0_2
        SHX8_2 = "WEAPON_UNARMED"
        SHX9_2 = true
        SHX6_2(SHX7_2, SHX8_2, SHX9_2)
        SHX6_2 = DrawScaleformMovieFullscreen
        SHX7_2 = SHX1_2
        SHX8_2 = 255
        SHX9_2 = 255
        SHX10_2 = 255
        SHX11_2 = 255
        SHX12_2 = 0
        SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
        SHX6_2 = CMG
        SHX6_2 = SHX6_2.runVigilanteTargetCheckThisFrame
        SHX6_2()
        SHX6_2 = Wait
        SHX7_2 = 1
        SHX6_2(SHX7_2)
      end
      SHX4_2 = PlaySoundFrontend
      SHX5_2 = -1
      SHX6_2 = "SELECT"
      SHX7_2 = "HUD_FRONTEND_DEFAULT_SOUNDSET"
      SHX8_2 = false
      SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX4_2 = CMG
      SHX4_2 = SHX4_2.cancelEmote
      SHX5_2 = true
      SHX4_2(SHX5_2)
      SHX4_2 = false
      SHX7_1 = SHX4_2
      SHX4_2 = GetFrameCount
      SHX4_2 = SHX4_2()
      SHX8_1 = SHX4_2
      SHX4_2 = CMG
      SHX4_2 = SHX4_2.unregisterVigilanteHeadshots
      SHX5_2 = true
      SHX4_2(SHX5_2)
      SHX4_2 = ClearTimecycleModifier
      SHX4_2()
      SHX4_2 = SHX0_1
      SHX5_2 = SHX1_1
      SHX4_2 = SHX4_2 + SHX5_2
      SHX4_2 = SHX4_2 * 0.5
      SHX9_1 = SHX4_2
      SHX4_2 = RenderScriptCams
      SHX5_2 = false
      SHX6_2 = false
      SHX7_2 = 0
      SHX8_2 = true
      SHX9_2 = false
      SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
      SHX4_2 = SetScaleformMovieAsNoLongerNeeded
      SHX5_2 = SHX1_2
      SHX4_2(SHX5_2)
      SHX4_2 = DestroyCam
      SHX5_2 = SHX2_2
      SHX6_2 = false
      SHX4_2(SHX5_2, SHX6_2)
      SHX4_2 = SetNightvision
      SHX5_2 = false
      SHX4_2(SHX5_2)
      SHX4_2 = SetSeethrough
      SHX5_2 = false
      SHX4_2(SHX5_2)
      SHX4_2 = CMG
      SHX4_2 = SHX4_2.setEmotesIgnoreCombatTimer
      SHX5_2 = false
      SHX4_2(SHX5_2)
      SHX4_2 = SHX13_1
      function SHX5_2(SHX0_3)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX1_3, SHX2_3, SHX3_3, SHX4_3
        SHX1_3 = SetEntityVisible
        SHX2_3 = SHX0_3
        SHX3_3 = true
        SHX4_3 = true
        SHX1_3(SHX2_3, SHX3_3, SHX4_3)
      end
      SHX4_2(SHX5_2)
    end
    SHX0_2 = Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
end
SHX14_1(SHX15_1)
function SHX14_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX7_1
  if SHX0_2 then
    return
  end
  SHX0_2 = drawNativeNotification
  SHX1_2 = "Press ~INPUT_CONTEXT~ to use the binoculars"
  SHX0_2(SHX1_2)
  SHX0_2 = IsControlJustPressed
  SHX1_2 = 0
  SHX2_2 = 51
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = GetFrameCount
    SHX0_2 = SHX0_2()
    SHX1_2 = SHX8_1
    if SHX0_2 ~= SHX1_2 then
      SHX0_2 = TriggerEvent
      SHX1_2 = "dfb83eb4ef"
      SHX0_2(SHX1_2)
    end
  end
end
SHX15_1 = pairs
SHX16_1 = SHX5_1
SHX15_1, SHX16_1, SHX17_1, SHX18_1 = SHX15_1(SHX16_1)
for SHX19_1, SHX20_1 in SHX15_1, SHX16_1, SHX17_1, SHX18_1 do
  SHX21_1 = CMG
  SHX21_1 = SHX21_1.createArea
  SHX22_1 = "static_binos_"
  SHX23_1 = tostring
  SHX24_1 = SHX19_1
  SHX23_1 = SHX23_1(SHX24_1)
  SHX22_1 = SHX22_1 .. SHX23_1
  SHX23_1 = SHX20_1
  SHX24_1 = 0.5
  SHX25_1 = 2.0
  function SHX26_1()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_2, SHX1_2
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
  SHX28_1 = SHX14_1
  SHX29_1 = {}
  SHX21_1(SHX22_1, SHX23_1, SHX24_1, SHX25_1, SHX26_1, SHX27_1, SHX28_1, SHX29_1)
end
