-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1
SHX0_1 = 0
SHX1_1 = 0
SHX2_1 = 0
SHX3_1 = CMG
SHX3_1 = SHX3_1.loadModule
SHX4_1 = "cfg/cfg_cctv"
SHX3_1 = SHX3_1(SHX4_1)
if not SHX3_1 then
  return
end
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CloseSecurityCamera
  SHX0_2()
  SHX0_2 = SendNUIMessage
  SHX1_2 = {}
  SHX1_2.type = "disablecam"
  SHX0_2(SHX1_2)
end
function SHX5_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX1_2 = SHX0_2.index
  SHX2_2 = SHX3_1.Locations
  SHX2_2 = SHX2_2[SHX1_2]
  SHX2_2 = SHX2_2.camBox
  SHX2_2 = SHX2_2.label
  SHX3_2 = SHX3_1.Locations
  SHX3_2 = SHX3_2[SHX1_2]
  SHX3_2 = SHX3_2.camBox
  SHX3_2 = SHX3_2.position
  SHX3_2 = SHX3_2.x
  SHX4_2 = SHX3_1.Locations
  SHX4_2 = SHX4_2[SHX1_2]
  SHX4_2 = SHX4_2.camBox
  SHX4_2 = SHX4_2.position
  SHX4_2 = SHX4_2.y
  SHX5_2 = SHX3_1.Locations
  SHX5_2 = SHX5_2[SHX1_2]
  SHX5_2 = SHX5_2.camBox
  SHX5_2 = SHX5_2.position
  SHX5_2 = SHX5_2.z
  SHX6_2 = SHX2_1
  if 0 == SHX6_2 then
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.DrawText3D
    SHX7_2 = vector3
    SHX8_2 = SHX3_2
    SHX9_2 = SHX4_2
    SHX10_2 = SHX5_2
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2)
    SHX8_2 = tostring
    SHX9_2 = "~o~[E]~w~ Use "
    SHX10_2 = SHX2_2
    SHX11_2 = " Cameras"
    SHX9_2 = SHX9_2 .. SHX10_2 .. SHX11_2
    SHX8_2 = SHX8_2(SHX9_2)
    SHX9_2 = 0.35
    SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  end
  SHX6_2 = IsControlJustPressed
  SHX7_2 = 1
  SHX8_2 = 38
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  if SHX6_2 then
    SHX6_2 = SHX2_1
    if 0 == SHX6_2 then
      SHX6_2 = SHX3_1.Locations
      SHX6_2 = SHX6_2[SHX1_2]
      SHX6_2 = SHX6_2.cameras
      SHX6_2 = SHX6_2[1]
      SHX6_2 = SHX6_2.x
      SHX7_2 = SHX3_1.Locations
      SHX7_2 = SHX7_2[SHX1_2]
      SHX7_2 = SHX7_2.cameras
      SHX7_2 = SHX7_2[1]
      SHX7_2 = SHX7_2.y
      SHX8_2 = SHX3_1.Locations
      SHX8_2 = SHX8_2[SHX1_2]
      SHX8_2 = SHX8_2.cameras
      SHX8_2 = SHX8_2[1]
      SHX8_2 = SHX8_2.z
      SHX9_2 = SHX3_1.Locations
      SHX9_2 = SHX9_2[SHX1_2]
      SHX9_2 = SHX9_2.cameras
      SHX9_2 = SHX9_2[1]
      SHX9_2 = SHX9_2.r
      SHX10_2 = SetFocusPosAndVel
      SHX11_2 = SHX6_2
      SHX12_2 = SHX7_2
      SHX13_2 = SHX8_2
      SHX14_2 = SHX6_2
      SHX15_2 = SHX7_2
      SHX16_2 = SHX8_2
      SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
      SHX10_2 = ChangeSecurityCamera
      SHX11_2 = SHX6_2
      SHX12_2 = SHX7_2
      SHX13_2 = SHX8_2
      SHX14_2 = SHX9_2
      SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2)
      SHX10_2 = SendNUIMessage
      SHX11_2 = {}
      SHX11_2.type = "enablecam"
      SHX12_2 = SHX3_1.Locations
      SHX12_2 = SHX12_2[SHX1_2]
      SHX12_2 = SHX12_2.cameras
      SHX12_2 = SHX12_2[1]
      SHX12_2 = SHX12_2.label
      SHX11_2.label = SHX12_2
      SHX12_2 = SHX3_1.Locations
      SHX12_2 = SHX12_2[SHX1_2]
      SHX12_2 = SHX12_2.camBox
      SHX12_2 = SHX12_2.label
      SHX11_2.box = SHX12_2
      SHX10_2(SHX11_2)
      SHX0_1 = SHX1_2
      SHX10_2 = 1
      SHX1_1 = SHX10_2
      SHX10_2 = FreezeEntityPosition
      SHX11_2 = GetPlayerPed
      SHX12_2 = PlayerId
      SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2 = SHX12_2()
      SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
      SHX12_2 = true
      SHX10_2(SHX11_2, SHX12_2)
    end
  end
  SHX6_2 = SHX2_1
  if 0 ~= SHX6_2 then
    SHX6_2 = CreateInstuctionScaleform
    SHX7_2 = "instructional_buttons"
    SHX6_2 = SHX6_2(SHX7_2)
    SHX7_2 = DrawScaleformMovieFullscreen
    SHX8_2 = SHX6_2
    SHX9_2 = 255
    SHX10_2 = 255
    SHX11_2 = 255
    SHX12_2 = 255
    SHX13_2 = 0
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX7_2 = SetTimecycleModifier
    SHX8_2 = "scanline_cam_cheap"
    SHX7_2(SHX8_2)
    SHX7_2 = SetTimecycleModifierStrength
    SHX8_2 = 2.0
    SHX7_2(SHX8_2)
    SHX7_2 = SHX3_1.HideRadar
    if SHX7_2 then
      SHX7_2 = DisplayRadar
      SHX8_2 = false
      SHX7_2(SHX8_2)
    end
    SHX7_2 = IsControlJustPressed
    SHX8_2 = 1
    SHX9_2 = 194
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
    if SHX7_2 then
      SHX7_2 = CloseSecurityCamera
      SHX7_2()
      SHX7_2 = SendNUIMessage
      SHX8_2 = {}
      SHX8_2.type = "disablecam"
      SHX7_2(SHX8_2)
      SHX7_2 = SHX3_1.HideRadar
      if SHX7_2 then
        SHX7_2 = DisplayRadar
        SHX8_2 = true
        SHX7_2(SHX8_2)
      end
    end
    SHX7_2 = IsControlJustPressed
    SHX8_2 = 1
    SHX9_2 = 174
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
    if SHX7_2 then
      SHX7_2 = nil
      SHX8_2 = SHX1_1
      if 1 == SHX8_2 then
        SHX8_2 = SHX3_1.Locations
        SHX9_2 = SHX0_1
        SHX8_2 = SHX8_2[SHX9_2]
        SHX8_2 = SHX8_2.cameras
        SHX7_2 = #SHX8_2
      else
        SHX8_2 = SHX1_1
        SHX7_2 = SHX8_2 - 1
      end
      SHX8_2 = SHX3_1.Locations
      SHX9_2 = SHX0_1
      SHX8_2 = SHX8_2[SHX9_2]
      SHX8_2 = SHX8_2.cameras
      SHX8_2 = SHX8_2[SHX7_2]
      SHX8_2 = SHX8_2.x
      SHX9_2 = SHX3_1.Locations
      SHX10_2 = SHX0_1
      SHX9_2 = SHX9_2[SHX10_2]
      SHX9_2 = SHX9_2.cameras
      SHX9_2 = SHX9_2[SHX7_2]
      SHX9_2 = SHX9_2.y
      SHX10_2 = SHX3_1.Locations
      SHX11_2 = SHX0_1
      SHX10_2 = SHX10_2[SHX11_2]
      SHX10_2 = SHX10_2.cameras
      SHX10_2 = SHX10_2[SHX7_2]
      SHX10_2 = SHX10_2.z
      SHX11_2 = SHX3_1.Locations
      SHX12_2 = SHX0_1
      SHX11_2 = SHX11_2[SHX12_2]
      SHX11_2 = SHX11_2.cameras
      SHX11_2 = SHX11_2[SHX7_2]
      SHX11_2 = SHX11_2.r
      SHX12_2 = SetFocusPosAndVel
      SHX13_2 = SHX8_2
      SHX14_2 = SHX9_2
      SHX15_2 = SHX10_2
      SHX16_2 = SHX8_2
      SHX17_2 = SHX9_2
      SHX18_2 = SHX10_2
      SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
      SHX12_2 = SendNUIMessage
      SHX13_2 = {}
      SHX13_2.type = "updatecam"
      SHX14_2 = SHX3_1.Locations
      SHX15_2 = SHX0_1
      SHX14_2 = SHX14_2[SHX15_2]
      SHX14_2 = SHX14_2.cameras
      SHX14_2 = SHX14_2[SHX7_2]
      SHX14_2 = SHX14_2.label
      SHX13_2.label = SHX14_2
      SHX12_2(SHX13_2)
      SHX12_2 = ChangeSecurityCamera
      SHX13_2 = SHX8_2
      SHX14_2 = SHX9_2
      SHX15_2 = SHX10_2
      SHX16_2 = SHX11_2
      SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2)
      SHX1_1 = SHX7_2
    end
    SHX7_2 = IsControlJustPressed
    SHX8_2 = 1
    SHX9_2 = 175
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
    if SHX7_2 then
      SHX7_2 = nil
      SHX8_2 = SHX1_1
      SHX9_2 = SHX3_1.Locations
      SHX10_2 = SHX0_1
      SHX9_2 = SHX9_2[SHX10_2]
      SHX9_2 = SHX9_2.cameras
      SHX9_2 = #SHX9_2
      if SHX8_2 == SHX9_2 then
        SHX7_2 = 1
      else
        SHX8_2 = SHX1_1
        SHX7_2 = SHX8_2 + 1
      end
      SHX8_2 = SHX3_1.Locations
      SHX9_2 = SHX0_1
      SHX8_2 = SHX8_2[SHX9_2]
      SHX8_2 = SHX8_2.cameras
      SHX8_2 = SHX8_2[SHX7_2]
      SHX8_2 = SHX8_2.x
      SHX9_2 = SHX3_1.Locations
      SHX10_2 = SHX0_1
      SHX9_2 = SHX9_2[SHX10_2]
      SHX9_2 = SHX9_2.cameras
      SHX9_2 = SHX9_2[SHX7_2]
      SHX9_2 = SHX9_2.y
      SHX10_2 = SHX3_1.Locations
      SHX11_2 = SHX0_1
      SHX10_2 = SHX10_2[SHX11_2]
      SHX10_2 = SHX10_2.cameras
      SHX10_2 = SHX10_2[SHX7_2]
      SHX10_2 = SHX10_2.z
      SHX11_2 = SHX3_1.Locations
      SHX12_2 = SHX0_1
      SHX11_2 = SHX11_2[SHX12_2]
      SHX11_2 = SHX11_2.cameras
      SHX11_2 = SHX11_2[SHX7_2]
      SHX11_2 = SHX11_2.r
      SHX12_2 = SetFocusPosAndVel
      SHX13_2 = SHX8_2
      SHX14_2 = SHX9_2
      SHX15_2 = SHX10_2
      SHX16_2 = SHX8_2
      SHX17_2 = SHX9_2
      SHX18_2 = SHX10_2
      SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
      SHX12_2 = SendNUIMessage
      SHX13_2 = {}
      SHX13_2.type = "updatecam"
      SHX14_2 = SHX3_1.Locations
      SHX15_2 = SHX0_1
      SHX14_2 = SHX14_2[SHX15_2]
      SHX14_2 = SHX14_2.cameras
      SHX14_2 = SHX14_2[SHX7_2]
      SHX14_2 = SHX14_2.label
      SHX13_2.label = SHX14_2
      SHX12_2(SHX13_2)
      SHX12_2 = ChangeSecurityCamera
      SHX13_2 = SHX8_2
      SHX14_2 = SHX9_2
      SHX15_2 = SHX10_2
      SHX16_2 = SHX11_2
      SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2)
      SHX1_1 = SHX7_2
    end
    SHX7_2 = SHX3_1.Locations
    SHX8_2 = SHX0_1
    SHX7_2 = SHX7_2[SHX8_2]
    SHX7_2 = SHX7_2.cameras
    SHX8_2 = SHX1_1
    SHX7_2 = SHX7_2[SHX8_2]
    SHX7_2 = SHX7_2.canRotate
    if SHX7_2 then
      SHX7_2 = GetCamRot
      SHX8_2 = SHX2_1
      SHX9_2 = 2
      SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
      SHX8_2 = IsControlPressed
      SHX9_2 = 1
      SHX10_2 = 32
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
      if SHX8_2 then
        SHX8_2 = SHX7_2.x
        if SHX8_2 <= 0.0 then
          SHX8_2 = SetCamRot
          SHX9_2 = SHX2_1
          SHX10_2 = SHX7_2.x
          SHX10_2 = SHX10_2 + 0.7
          SHX11_2 = 0.0
          SHX12_2 = SHX7_2.z
          SHX13_2 = 2
          SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
        end
      end
      SHX8_2 = IsControlPressed
      SHX9_2 = 1
      SHX10_2 = 33
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
      if SHX8_2 then
        SHX8_2 = SHX7_2.x
        if SHX8_2 >= -50.0 then
          SHX8_2 = SetCamRot
          SHX9_2 = SHX2_1
          SHX10_2 = SHX7_2.x
          SHX10_2 = SHX10_2 - 0.7
          SHX11_2 = 0.0
          SHX12_2 = SHX7_2.z
          SHX13_2 = 2
          SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
        end
      end
      SHX8_2 = IsControlPressed
      SHX9_2 = 1
      SHX10_2 = 34
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
      if SHX8_2 then
        SHX8_2 = SetCamRot
        SHX9_2 = SHX2_1
        SHX10_2 = SHX7_2.x
        SHX11_2 = 0.0
        SHX12_2 = SHX7_2.z
        SHX12_2 = SHX12_2 + 0.7
        SHX13_2 = 2
        SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
      end
      SHX8_2 = IsControlPressed
      SHX9_2 = 1
      SHX10_2 = 35
      SHX8_2 = SHX8_2(SHX9_2, SHX10_2)
      if SHX8_2 then
        SHX8_2 = SetCamRot
        SHX9_2 = SHX2_1
        SHX10_2 = SHX7_2.x
        SHX11_2 = 0.0
        SHX12_2 = SHX7_2.z
        SHX12_2 = SHX12_2 - 0.7
        SHX13_2 = 2
        SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
      end
    end
  end
end
SHX6_1 = pairs
SHX7_1 = SHX3_1.Locations
SHX6_1, SHX7_1, SHX8_1, SHX9_1 = SHX6_1(SHX7_1)
for SHX10_1, SHX11_1 in SHX6_1, SHX7_1, SHX8_1, SHX9_1 do
  SHX12_1 = CMG
  SHX12_1 = SHX12_1.createArea
  SHX13_1 = "cctv_"
  SHX14_1 = tostring
  SHX15_1 = SHX10_1
  SHX14_1 = SHX14_1(SHX15_1)
  SHX13_1 = SHX13_1 .. SHX14_1
  SHX14_1 = SHX11_1.camBox
  SHX14_1 = SHX14_1.position
  SHX15_1 = 1.0
  SHX16_1 = 3.0
  function SHX17_1()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_2, SHX1_2
  end
  SHX18_1 = SHX4_1
  SHX19_1 = SHX5_1
  SHX20_1 = {}
  SHX20_1.index = SHX10_1
  SHX12_1(SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1)
end
function SHX6_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX4_2 = SHX2_1
  if 0 ~= SHX4_2 then
    SHX4_2 = DestroyCam
    SHX5_2 = SHX2_1
    SHX6_2 = false
    SHX4_2(SHX5_2, SHX6_2)
    SHX4_2 = 0
    SHX2_1 = SHX4_2
  end
  SHX4_2 = CreateCam
  SHX5_2 = "DEFAULT_SCRIPTED_CAMERA"
  SHX6_2 = true
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX5_2 = SetCamCoord
  SHX6_2 = SHX4_2
  SHX7_2 = SHX0_2
  SHX8_2 = SHX1_2
  SHX9_2 = SHX2_2
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX5_2 = SetCamRot
  SHX6_2 = SHX4_2
  SHX7_2 = SHX3_2.x
  SHX8_2 = SHX3_2.y
  SHX9_2 = SHX3_2.z
  SHX10_2 = 2
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX5_2 = RenderScriptCams
  SHX6_2 = true
  SHX7_2 = false
  SHX8_2 = 0
  SHX9_2 = true
  SHX10_2 = true
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX5_2 = Citizen
  SHX5_2 = SHX5_2.Wait
  SHX6_2 = 250
  SHX5_2(SHX6_2)
  SHX2_1 = SHX4_2
end
ChangeSecurityCamera = SHX6_1
function SHX6_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = DestroyCam
  SHX1_2 = SHX2_1
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = RenderScriptCams
  SHX1_2 = false
  SHX2_2 = false
  SHX3_2 = 1
  SHX4_2 = true
  SHX5_2 = true
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = 0
  SHX2_1 = SHX0_2
  SHX0_2 = ClearTimecycleModifier
  SHX0_2()
  SHX0_2 = SetFocusEntity
  SHX1_2 = GetPlayerPed
  SHX2_2 = PlayerId
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2()
  SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX0_2 = SHX3_1.HideRadar
  if SHX0_2 then
    SHX0_2 = DisplayRadar
    SHX1_2 = true
    SHX0_2(SHX1_2)
  end
  SHX0_2 = FreezeEntityPosition
  SHX1_2 = GetPlayerPed
  SHX2_2 = PlayerId
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2()
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = false
  SHX0_2(SHX1_2, SHX2_2)
end
CloseSecurityCamera = SHX6_1
function SHX6_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = RequestScaleformMovie
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  while true do
    SHX2_2 = HasScaleformMovieLoaded
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      break
    end
    SHX2_2 = Citizen
    SHX2_2 = SHX2_2.Wait
    SHX3_2 = 0
    SHX2_2(SHX3_2)
  end
  SHX2_2 = BeginScaleformMovieMethod
  SHX3_2 = SHX1_2
  SHX4_2 = "CLEAR_ALL"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = EndScaleformMovieMethod
  SHX2_2()
  SHX2_2 = BeginScaleformMovieMethod
  SHX3_2 = SHX1_2
  SHX4_2 = "SET_CLEAR_SPACE"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = ScaleformMovieMethodAddParamInt
  SHX3_2 = 200
  SHX2_2(SHX3_2)
  SHX2_2 = EndScaleformMovieMethod
  SHX2_2()
  SHX2_2 = BeginScaleformMovieMethod
  SHX3_2 = SHX1_2
  SHX4_2 = "SET_DATA_SLOT"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = ScaleformMovieMethodAddParamInt
  SHX3_2 = 0
  SHX2_2(SHX3_2)
  SHX2_2 = InstructionButton
  SHX3_2 = GetControlInstructionalButton
  SHX4_2 = 1
  SHX5_2 = 175
  SHX6_2 = true
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = InstructionButtonMessage
  SHX3_2 = "Go Forward"
  SHX2_2(SHX3_2)
  SHX2_2 = EndScaleformMovieMethod
  SHX2_2()
  SHX2_2 = BeginScaleformMovieMethod
  SHX3_2 = SHX1_2
  SHX4_2 = "SET_DATA_SLOT"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = ScaleformMovieMethodAddParamInt
  SHX3_2 = 1
  SHX2_2(SHX3_2)
  SHX2_2 = InstructionButton
  SHX3_2 = GetControlInstructionalButton
  SHX4_2 = 1
  SHX5_2 = 194
  SHX6_2 = true
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = InstructionButtonMessage
  SHX3_2 = "Close Camera"
  SHX2_2(SHX3_2)
  SHX2_2 = EndScaleformMovieMethod
  SHX2_2()
  SHX2_2 = BeginScaleformMovieMethod
  SHX3_2 = SHX1_2
  SHX4_2 = "SET_DATA_SLOT"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = ScaleformMovieMethodAddParamInt
  SHX3_2 = 2
  SHX2_2(SHX3_2)
  SHX2_2 = InstructionButton
  SHX3_2 = GetControlInstructionalButton
  SHX4_2 = 1
  SHX5_2 = 174
  SHX6_2 = true
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = InstructionButtonMessage
  SHX3_2 = "Go Back"
  SHX2_2(SHX3_2)
  SHX2_2 = EndScaleformMovieMethod
  SHX2_2()
  SHX2_2 = BeginScaleformMovieMethod
  SHX3_2 = SHX1_2
  SHX4_2 = "DRAW_INSTRUCTIONAL_BUTTONS"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = EndScaleformMovieMethod
  SHX2_2()
  SHX2_2 = BeginScaleformMovieMethod
  SHX3_2 = SHX1_2
  SHX4_2 = "SET_BACKGROUND_COLOUR"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = ScaleformMovieMethodAddParamInt
  SHX3_2 = 0
  SHX2_2(SHX3_2)
  SHX2_2 = ScaleformMovieMethodAddParamInt
  SHX3_2 = 0
  SHX2_2(SHX3_2)
  SHX2_2 = ScaleformMovieMethodAddParamInt
  SHX3_2 = 0
  SHX2_2(SHX3_2)
  SHX2_2 = ScaleformMovieMethodAddParamInt
  SHX3_2 = 80
  SHX2_2(SHX3_2)
  SHX2_2 = EndScaleformMovieMethod
  SHX2_2()
  return SHX1_2
end
CreateInstuctionScaleform = SHX6_1
function SHX6_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = _ENV
  SHX2_2 = "ScaleformMovieMethodAddParamPlayerNameString"
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
InstructionButton = SHX6_1
function SHX6_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = BeginTextCommandScaleformString
  SHX2_2 = "STRING"
  SHX1_2(SHX2_2)
  SHX1_2 = AddTextComponentSubstringKeyboardDisplay
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = EndTextCommandScaleformString
  SHX1_2()
end
InstructionButtonMessage = SHX6_1
