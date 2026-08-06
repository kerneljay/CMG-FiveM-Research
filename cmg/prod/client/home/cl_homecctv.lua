-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_homecustomisation"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = nil
SHX2_1 = nil
SHX3_1 = nil
SHX4_1 = 0
SHX5_1 = 0
SHX6_1 = 0
SHX7_1 = 0
SHX8_1 = RMenu
SHX8_1 = SHX8_1.Add
SHX9_1 = "housecctv"
SHX10_1 = "mainmenu"
SHX11_1 = RageUI
SHX11_1 = SHX11_1.CreateMenu
SHX12_1 = "CCTV"
SHX13_1 = "Main Menu"
SHX14_1 = CMG
SHX14_1 = SHX14_1.getRageUIMenuWidth
SHX14_1 = SHX14_1()
SHX15_1 = CMG
SHX15_1 = SHX15_1.getRageUIMenuHeight
SHX15_1, SHX16_1, SHX17_1, SHX18_1 = SHX15_1()
SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1)
SHX8_1(SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1)
SHX8_1 = RMenu
SHX8_1 = SHX8_1.Add
SHX9_1 = "housecctv"
SHX10_1 = "camerainfo"
SHX11_1 = RageUI
SHX11_1 = SHX11_1.CreateSubMenu
SHX12_1 = RMenu
SHX13_1 = SHX12_1
SHX12_1 = SHX12_1.Get
SHX14_1 = "housecctv"
SHX15_1 = "mainmenu"
SHX12_1 = SHX12_1(SHX13_1, SHX14_1, SHX15_1)
SHX13_1 = "CCTV"
SHX14_1 = "Camera Info"
SHX15_1 = CMG
SHX15_1 = SHX15_1.getRageUIMenuWidth
SHX15_1 = SHX15_1()
SHX16_1 = CMG
SHX16_1 = SHX16_1.getRageUIMenuHeight
SHX16_1, SHX17_1, SHX18_1 = SHX16_1()
SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1)
SHX8_1(SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1)
SHX8_1 = nil
function SHX9_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX1_2 = 1
  SHX2_2 = -1
  SHX3_2 = pairs
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getHomePlaceableObjects
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2 = SHX4_2()
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = SHX0_1.cctvLookup
    SHX10_2 = SHX8_2[1]
    SHX9_2 = SHX9_2[SHX10_2]
    if SHX9_2 then
      SHX10_2 = SHX1_1
      if SHX8_2 == SHX10_2 then
        SHX2_2 = SHX1_2
      end
      SHX1_2 = SHX1_2 + 1
    end
  end
  if -1 == SHX2_2 then
    return
  end
  SHX3_2 = SHX2_2 + SHX0_2
  if SHX3_2 <= 0 then
    SHX3_2 = SHX1_2
  elseif SHX1_2 < SHX3_2 then
    SHX3_2 = 1
  end
  SHX4_2 = 1
  SHX5_2 = pairs
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.getHomePlaceableObjects
  SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2 = SHX6_2()
  SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
    SHX11_2 = SHX0_1.cctvLookup
    SHX12_2 = SHX10_2[1]
    SHX11_2 = SHX11_2[SHX12_2]
    if SHX11_2 then
      if SHX4_2 == SHX3_2 then
        SHX12_2 = "Camera "
        SHX13_2 = tostring
        SHX14_2 = SHX4_2
        SHX13_2 = SHX13_2(SHX14_2)
        SHX12_2 = SHX12_2 .. SHX13_2
        SHX13_2 = SHX10_2[5]
        if SHX13_2 then
          SHX13_2 = SHX10_2[5]
          SHX13_2 = SHX13_2.camera_name
          if SHX13_2 then
            SHX13_2 = SHX10_2[5]
            SHX12_2 = SHX13_2.camera_name
          end
        end
        SHX13_2 = string
        SHX13_2 = SHX13_2.upper
        SHX14_2 = SHX12_2
        SHX13_2 = SHX13_2(SHX14_2)
        SHX3_1 = SHX13_2
        SHX13_2 = SHX1_1
        if SHX13_2 then
          SHX13_2 = SetEntityVisible
          SHX14_2 = SHX1_1
          SHX14_2 = SHX14_2[4]
          SHX15_2 = true
          SHX16_2 = true
          SHX13_2(SHX14_2, SHX15_2, SHX16_2)
        end
        SHX1_1 = SHX10_2
        SHX2_1 = SHX11_2
        SHX13_2 = SHX8_1
        SHX13_2()
        break
      end
      SHX4_2 = SHX4_2 + 1
    end
  end
end
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  while true do
    SHX0_2 = IsControlJustPressed
    SHX1_2 = 0
    SHX2_2 = 202
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.showAllDisplays
      SHX1_2 = "homecctv"
      SHX0_2(SHX1_2)
      SHX0_2 = ClearTimecycleModifier
      SHX0_2()
      SHX0_2 = RenderScriptCams
      SHX1_2 = false
      SHX2_2 = false
      SHX3_2 = 0
      SHX4_2 = false
      SHX5_2 = false
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
      SHX0_2 = DestroyCam
      SHX1_2 = SHX4_1
      SHX2_2 = false
      SHX0_2(SHX1_2, SHX2_2)
      SHX0_2 = SHX1_1
      if SHX0_2 then
        SHX0_2 = SetEntityVisible
        SHX1_2 = SHX1_1
        SHX1_2 = SHX1_2[4]
        SHX2_2 = true
        SHX3_2 = true
        SHX0_2(SHX1_2, SHX2_2, SHX3_2)
      end
      SHX0_2 = SHX6_1
      if 0 ~= SHX0_2 then
        SHX0_2 = SetScaleformMovieAsNoLongerNeeded
        SHX1_2 = SHX6_1
        SHX0_2(SHX1_2)
        SHX0_2 = 0
        SHX6_1 = SHX0_2
      end
      SHX0_2 = SHX7_1
      if 0 ~= SHX0_2 then
        SHX0_2 = DeleteEntity
        SHX1_2 = SHX7_1
        SHX0_2(SHX1_2)
        SHX0_2 = 0
        SHX7_1 = SHX0_2
      end
      SHX0_2 = ClearPedTasks
      SHX1_2 = PlayerPedId
      SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX1_2()
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
      SHX0_2 = 0
      SHX4_1 = SHX0_2
      break
    end
    SHX0_2 = IsControlJustPressed
    SHX1_2 = 0
    SHX2_2 = 189
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if SHX0_2 then
      SHX0_2 = SHX9_1
      SHX1_2 = -1
      SHX0_2(SHX1_2)
    end
    SHX0_2 = IsControlJustPressed
    SHX1_2 = 0
    SHX2_2 = 190
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if SHX0_2 then
      SHX0_2 = SHX9_1
      SHX1_2 = 1
      SHX0_2(SHX1_2)
    end
    SHX0_2 = SHX2_1
    if SHX0_2 then
      SHX0_2 = SHX2_1.type
      if "fixed" ~= SHX0_2 then
        SHX0_2 = GetDisabledControlNormal
        SHX1_2 = 0
        SHX2_2 = 220
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        SHX1_2 = GetFrameTime
        SHX1_2 = SHX1_2()
        SHX0_2 = SHX0_2 * SHX1_2
        SHX0_2 = SHX0_2 * 250.0
        SHX1_2 = math
        SHX1_2 = SHX1_2.abs
        SHX2_2 = SHX0_2
        SHX1_2 = SHX1_2(SHX2_2)
        SHX2_2 = 0.001
        if SHX1_2 > SHX2_2 then
          SHX1_2 = GetCamRot
          SHX2_2 = SHX4_1
          SHX3_2 = 2
          SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
          SHX2_2 = SetCamRot
          SHX3_2 = SHX4_1
          SHX4_2 = SHX1_2.x
          SHX5_2 = SHX1_2.y
          SHX6_2 = SHX1_2.z
          SHX6_2 = SHX6_2 - SHX0_2
          SHX7_2 = 2
          SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
        end
      end
    end
    SHX0_2 = SHX6_1
    if 0 ~= SHX0_2 then
      SHX0_2 = DrawScaleformMovieFullscreen
      SHX1_2 = SHX6_1
      SHX2_2 = 255
      SHX3_2 = 255
      SHX4_2 = 255
      SHX5_2 = 255
      SHX6_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    end
    SHX0_2 = SHX3_1
    if SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.DrawText
      SHX1_2 = 0.5
      SHX2_2 = 0.05
      SHX3_2 = SHX3_1
      SHX4_2 = 1.0
      SHX5_2 = nil
      SHX6_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    end
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
end
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2
  SHX0_2 = RequestScaleformMovie
  SHX1_2 = "instructional_buttons"
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
  SHX3_2 = "CLEAR_ALL"
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = EndScaleformMovieMethod
  SHX1_2()
  SHX1_2 = BeginScaleformMovieMethod
  SHX2_2 = SHX0_2
  SHX3_2 = "SET_DATA_SLOT"
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = ScaleformMovieMethodAddParamInt
  SHX2_2 = 0
  SHX1_2(SHX2_2)
  SHX1_2 = _ENV
  SHX2_2 = "ScaleformMovieMethodAddParamPlayerNameString"
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = "~INPUT_FRONTEND_CANCEL~"
  SHX1_2(SHX2_2)
  SHX1_2 = BeginTextCommandScaleformString
  SHX2_2 = "STRING"
  SHX1_2(SHX2_2)
  SHX1_2 = AddTextComponentSubstringKeyboardDisplay
  SHX2_2 = "Exit Viewing"
  SHX1_2(SHX2_2)
  SHX1_2 = EndTextCommandScaleformString
  SHX1_2()
  SHX1_2 = EndScaleformMovieMethod
  SHX1_2()
  SHX1_2 = BeginScaleformMovieMethod
  SHX2_2 = SHX0_2
  SHX3_2 = "SET_DATA_SLOT"
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = ScaleformMovieMethodAddParamInt
  SHX2_2 = 1
  SHX1_2(SHX2_2)
  SHX1_2 = _ENV
  SHX2_2 = "ScaleformMovieMethodAddParamPlayerNameString"
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = "~INPUT_FRONTEND_RIGHT~"
  SHX1_2(SHX2_2)
  SHX1_2 = BeginTextCommandScaleformString
  SHX2_2 = "STRING"
  SHX1_2(SHX2_2)
  SHX1_2 = AddTextComponentSubstringKeyboardDisplay
  SHX2_2 = "Next Camera"
  SHX1_2(SHX2_2)
  SHX1_2 = EndTextCommandScaleformString
  SHX1_2()
  SHX1_2 = EndScaleformMovieMethod
  SHX1_2()
  SHX1_2 = BeginScaleformMovieMethod
  SHX2_2 = SHX0_2
  SHX3_2 = "SET_DATA_SLOT"
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = ScaleformMovieMethodAddParamInt
  SHX2_2 = 2
  SHX1_2(SHX2_2)
  SHX1_2 = _ENV
  SHX2_2 = "ScaleformMovieMethodAddParamPlayerNameString"
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = "~INPUT_FRONTEND_LEFT~"
  SHX1_2(SHX2_2)
  SHX1_2 = BeginTextCommandScaleformString
  SHX2_2 = "STRING"
  SHX1_2(SHX2_2)
  SHX1_2 = AddTextComponentSubstringKeyboardDisplay
  SHX2_2 = "Previous Camera"
  SHX1_2(SHX2_2)
  SHX1_2 = EndTextCommandScaleformString
  SHX1_2()
  SHX1_2 = EndScaleformMovieMethod
  SHX1_2()
  SHX1_2 = BeginScaleformMovieMethod
  SHX2_2 = SHX0_2
  SHX3_2 = "DRAW_INSTRUCTIONAL_BUTTONS"
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = EndScaleformMovieMethod
  SHX1_2()
  SHX1_2 = BeginScaleformMovieMethod
  SHX2_2 = SHX0_2
  SHX3_2 = "SET_BACKGROUND_COLOUR"
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = ScaleformMovieMethodAddParamInt
  SHX2_2 = 0
  SHX1_2(SHX2_2)
  SHX1_2 = ScaleformMovieMethodAddParamInt
  SHX2_2 = 0
  SHX1_2(SHX2_2)
  SHX1_2 = ScaleformMovieMethodAddParamInt
  SHX2_2 = 0
  SHX1_2(SHX2_2)
  SHX1_2 = ScaleformMovieMethodAddParamInt
  SHX2_2 = 80
  SHX1_2(SHX2_2)
  SHX1_2 = EndScaleformMovieMethod
  SHX1_2()
  SHX6_1 = SHX0_2
end
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadModel
  SHX2_2 = -1585232418
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.requestEntitySpawn
  SHX2_2 = "home_cctv_tablet"
  SHX1_2(SHX2_2)
  SHX1_2 = CreateObject
  SHX2_2 = -1585232418
  SHX3_2 = 0
  SHX4_2 = 0
  SHX5_2 = 0
  SHX6_2 = true
  SHX7_2 = true
  SHX8_2 = true
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX7_1 = SHX1_2
  SHX1_2 = SetModelAsNoLongerNeeded
  SHX2_2 = -1585232418
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadAnimDict
  SHX2_2 = "amb@world_human_seat_wall_tablet@female@base"
  SHX1_2(SHX2_2)
  SHX1_2 = TaskPlayAnim
  SHX2_2 = SHX0_2
  SHX3_2 = "amb@world_human_seat_wall_tablet@female@base"
  SHX4_2 = "base"
  SHX5_2 = 8.0
  SHX6_2 = -8.0
  SHX7_2 = -1
  SHX8_2 = 50
  SHX9_2 = 0
  SHX10_2 = false
  SHX11_2 = false
  SHX12_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX1_2 = RemoveAnimDict
  SHX2_2 = "amb@world_human_seat_wall_tablet@female@base"
  SHX1_2(SHX2_2)
  SHX1_2 = AttachEntityToEntity
  SHX2_2 = SHX7_1
  SHX3_2 = SHX0_2
  SHX4_2 = GetPedBoneIndex
  SHX5_2 = SHX0_2
  SHX6_2 = 57005
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX5_2 = 0.17
  SHX6_2 = 0.1
  SHX7_2 = -0.13
  SHX8_2 = 24.0
  SHX9_2 = 180.0
  SHX10_2 = 180.0
  SHX11_2 = true
  SHX12_2 = true
  SHX13_2 = false
  SHX14_2 = true
  SHX15_2 = 1
  SHX16_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.CreateThread
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3
    while true do
      SHX0_3 = DoesEntityExist
      SHX1_3 = SHX7_1
      SHX0_3 = SHX0_3(SHX1_3)
      if not SHX0_3 then
        break
      end
      SHX0_3 = IsEntityPlayingAnim
      SHX1_3 = SHX0_2
      SHX2_3 = "amb@world_human_seat_wall_tablet@female@base"
      SHX3_3 = "base"
      SHX4_3 = 3
      SHX0_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
      if not SHX0_3 then
        SHX0_3 = DeleteEntity
        SHX1_3 = SHX7_1
        SHX0_3(SHX1_3)
        return
      end
      SHX0_3 = Citizen
      SHX0_3 = SHX0_3.Wait
      SHX1_3 = 0
      SHX0_3(SHX1_3)
    end
  end
  SHX1_2(SHX2_2)
end
function SHX13_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = assert
  SHX1_2 = SHX2_1
  SHX2_2 = "A valid cctv must be selected in order to view the camera"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = assert
  SHX1_2 = SHX1_1
  SHX2_2 = "A valid selectable must be active to view the camera"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = SHX4_1
  SHX0_2 = 0 ~= SHX0_2
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.CloseAll
  SHX1_2()
  if not SHX0_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.hideAllDisplays
    SHX2_2 = "homecctv"
    SHX1_2(SHX2_2)
    SHX1_2 = CreateCam
    SHX2_2 = "DEFAULT_SCRIPTED_CAMERA"
    SHX3_2 = true
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
    SHX4_1 = SHX1_2
  end
  SHX1_2 = vector3
  SHX2_2 = 0.0
  SHX3_2 = 0.0
  SHX4_2 = 0.0
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = SHX2_1.offset
  if SHX2_2 then
    SHX2_2 = SHX2_1.offset
    SHX1_2 = SHX1_2 + SHX2_2
  end
  SHX2_2 = AttachCamToEntity
  SHX3_2 = SHX4_1
  SHX4_2 = SHX1_1
  SHX4_2 = SHX4_2[4]
  SHX5_2 = SHX1_2.x
  SHX6_2 = SHX1_2.y
  SHX7_2 = SHX1_2.z
  SHX8_2 = true
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX2_2 = GetEntityRotation
  SHX3_2 = SHX1_1
  SHX3_2 = SHX3_2[4]
  SHX4_2 = 2
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = SHX2_1.rotation
  if SHX3_2 then
    SHX3_2 = SHX2_1.rotation
    SHX2_2 = SHX2_2 + SHX3_2
  end
  SHX3_2 = SetCamRot
  SHX4_2 = SHX4_1
  SHX5_2 = SHX2_2.x
  SHX6_2 = SHX2_2.y
  SHX7_2 = SHX2_2.z
  SHX8_2 = 2
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  SHX3_2 = SetEntityVisible
  SHX4_2 = SHX1_1
  SHX4_2 = SHX4_2[4]
  SHX5_2 = false
  SHX6_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  if not SHX0_2 then
    SHX3_2 = RenderScriptCams
    SHX4_2 = true
    SHX5_2 = false
    SHX6_2 = 0
    SHX7_2 = false
    SHX8_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX3_2 = SetTimecycleModifier
    SHX4_2 = "scanline_cam_cheap"
    SHX3_2(SHX4_2)
    SHX3_2 = SetTimecycleModifierStrength
    SHX4_2 = 1.0
    SHX3_2(SHX4_2)
    SHX3_2 = Citizen
    SHX3_2 = SHX3_2.CreateThread
    SHX4_2 = SHX10_1
    SHX3_2(SHX4_2)
    SHX3_2 = SHX11_1
    SHX3_2()
    SHX3_2 = SHX12_1
    SHX3_2()
  end
end
SHX8_1 = SHX13_1
SHX13_1 = RageUI
SHX13_1 = SHX13_1.CreateWhile
SHX14_1 = 1.0
SHX15_1 = RMenu
SHX16_1 = SHX15_1
SHX15_1 = SHX15_1.Get
SHX17_1 = "housecctv"
SHX18_1 = "mainmenu"
SHX15_1 = SHX15_1(SHX16_1, SHX17_1, SHX18_1)
SHX16_1 = nil
function SHX17_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "housecctv"
  SHX4_2 = "mainmenu"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX3_2 = false
  SHX4_2 = true
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3
    SHX0_3 = 1
    SHX1_3 = pairs
    SHX2_3 = CMG
    SHX2_3 = SHX2_3.getHomePlaceableObjects
    SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3 = SHX2_3()
    SHX1_3, SHX2_3, SHX3_3, SHX4_3 = SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3)
    for SHX5_3, SHX6_3 in SHX1_3, SHX2_3, SHX3_3, SHX4_3 do
      SHX7_3 = SHX0_1.cctvLookup
      SHX8_3 = SHX6_3[1]
      SHX7_3 = SHX7_3[SHX8_3]
      if SHX7_3 then
        SHX8_3 = "Camera "
        SHX9_3 = tostring
        SHX10_3 = SHX0_3
        SHX9_3 = SHX9_3(SHX10_3)
        SHX8_3 = SHX8_3 .. SHX9_3
        SHX9_3 = SHX6_3[5]
        if SHX9_3 then
          SHX9_3 = SHX6_3[5]
          SHX9_3 = SHX9_3.camera_name
          if SHX9_3 then
            SHX9_3 = SHX6_3[5]
            SHX8_3 = SHX9_3.camera_name
          end
        end
        SHX9_3 = RageUI
        SHX9_3 = SHX9_3.ButtonWithStyle
        SHX10_3 = SHX8_3
        SHX11_3 = ""
        SHX12_3 = {}
        SHX12_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
        SHX13_3 = true
        function SHX14_3(SHX0_4, SHX1_4, SHX2_4)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX3_4, SHX4_4, SHX5_4
          if SHX1_4 then
            SHX3_4 = SHX5_1
            SHX4_4 = SHX5_1
            SHX3_4 = SHX3_4 ~= SHX4_4
            SHX4_4 = SHX6_3
            SHX4_4 = SHX4_4[4]
            if SHX3_4 ~= SHX4_4 then
              SHX3_4 = SetEntityDrawOutline
              SHX4_4 = SHX5_1
              SHX5_4 = false
              SHX3_4(SHX4_4, SHX5_4)
            end
            SHX3_4 = SetEntityDrawOutline
            SHX4_4 = SHX6_3
            SHX4_4 = SHX4_4[4]
            SHX5_4 = true
            SHX3_4(SHX4_4, SHX5_4)
            SHX3_4 = SHX6_3
            SHX3_4 = SHX3_4[4]
            SHX5_1 = SHX3_4
          end
          if SHX2_4 then
            SHX3_4 = SHX6_3
            SHX1_1 = SHX3_4
            SHX3_4 = SHX7_3
            SHX2_1 = SHX3_4
            SHX3_4 = string
            SHX3_4 = SHX3_4.upper
            SHX4_4 = SHX8_3
            SHX3_4 = SHX3_4(SHX4_4)
            SHX3_1 = SHX3_4
          end
        end
        SHX15_3 = RMenu
        SHX16_3 = SHX15_3
        SHX15_3 = SHX15_3.Get
        SHX17_3 = "housecctv"
        SHX18_3 = "camerainfo"
        SHX15_3, SHX16_3, SHX17_3, SHX18_3 = SHX15_3(SHX16_3, SHX17_3, SHX18_3)
        SHX9_3(SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3)
        SHX0_3 = SHX0_3 + 1
      end
    end
  end
  function SHX6_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "housecctv"
  SHX4_2 = "camerainfo"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX3_2 = false
  SHX4_2 = true
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3
    SHX0_3 = SHX1_1
    if not SHX0_3 then
      return
    end
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.getHomePlaceableIndex
    SHX1_3 = SHX1_1
    SHX1_3 = SHX1_3[4]
    SHX0_3 = SHX0_3(SHX1_3)
    if SHX0_3 <= 0 then
      SHX1_3 = RageUI
      SHX1_3 = SHX1_3.Visible
      SHX2_3 = RMenu
      SHX3_3 = SHX2_3
      SHX2_3 = SHX2_3.Get
      SHX4_3 = "housecctv"
      SHX5_3 = "mainmenu"
      SHX2_3 = SHX2_3(SHX3_3, SHX4_3, SHX5_3)
      SHX3_3 = true
      SHX1_3(SHX2_3, SHX3_3)
      return
    end
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.ButtonWithStyle
    SHX2_3 = "View Camera"
    SHX3_3 = ""
    SHX4_3 = {}
    SHX4_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
    SHX5_3 = true
    function SHX6_3(SHX0_4, SHX1_4, SHX2_4)
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX3_4
      if SHX2_4 then
        SHX3_4 = SHX8_1
        SHX3_4()
      end
    end
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.ButtonWithStyle
    SHX2_3 = "Set Name"
    SHX3_3 = ""
    SHX4_3 = {}
    SHX4_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
    SHX5_3 = true
    function SHX6_3(SHX0_4, SHX1_4, SHX2_4)
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
        SHX4_4 = "Enter Camera Name"
        SHX5_4 = ""
        function SHX6_4(SHX0_5)
          -- [AI CLEANUP] Decompiled Lua - Fix these:
          -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
          -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
          -- 3. Replace goto/label with while/repeat-until where possible
          -- 4. Remove decompiler comments, add meaningful ones
          -- 5. Fix indentation and formatting
          
          local SHX1_5, SHX2_5, SHX3_5, SHX4_5
          SHX1_5 = #SHX0_5
          if SHX1_5 > 2 then
            SHX1_5 = #SHX0_5
            if SHX1_5 < 25 then
              SHX1_5 = TriggerServerEvent
              SHX2_5 = "4c8a1aa1b3"
              SHX3_5 = SHX0_3
              SHX4_5 = SHX0_5
              SHX1_5(SHX2_5, SHX3_5, SHX4_5)
          end
          else
            SHX1_5 = notify
            SHX2_5 = "~r~Please enter a name between 3 and 25 characters."
            SHX1_5(SHX2_5)
          end
        end
        SHX3_4(SHX4_4, SHX5_4, SHX6_4)
      end
    end
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3)
  end
  function SHX6_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
end
SHX13_1(SHX14_1, SHX15_1, SHX16_1, SHX17_1)
SHX13_1 = RegisterNetEvent
SHX14_1 = "4a71260cab"
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Visible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "housecctv"
  SHX4_2 = "mainmenu"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX0_2(SHX1_2, SHX2_2)
  while true do
    SHX0_2 = RageUI
    SHX0_2 = SHX0_2.IsAnyMenuOfTypeVisible
    SHX1_2 = "housecctv"
    SHX0_2 = SHX0_2(SHX1_2)
    if not SHX0_2 then
      break
    end
    SHX0_2 = Citizen
    SHX0_2 = SHX0_2.Wait
    SHX1_2 = 0
    SHX0_2(SHX1_2)
  end
  SHX0_2 = SHX5_1
  if 0 ~= SHX0_2 then
    SHX0_2 = SetEntityDrawOutline
    SHX1_2 = SHX5_1
    SHX2_2 = false
    SHX0_2(SHX1_2, SHX2_2)
    SHX0_2 = 0
    SHX5_1 = SHX0_2
  end
end
SHX13_1(SHX14_1, SHX15_1)
SHX13_1 = CMG
SHX13_1 = SHX13_1.registerHomeCustomisationButtons
SHX14_1 = "CCTV Control"
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Separator
  SHX1_2 = "~y~Makes all CCTVs in your house controllable"
  SHX0_2(SHX1_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Separator
  SHX1_2 = "~y~View and name them by using /cctv"
  SHX0_2(SHX1_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.ButtonWithStyle
  SHX1_2 = "Purchase"
  SHX2_2 = ""
  SHX3_2 = {}
  SHX3_2.RightLabel = "\194\1632,000,000"
  SHX4_2 = true
  function SHX5_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3
    if SHX2_3 then
      SHX3_3 = TriggerServerEvent
      SHX4_3 = "780b19ba17"
      SHX3_3(SHX4_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX13_1(SHX14_1, SHX15_1)
SHX13_1 = CMG
SHX13_1 = SHX13_1.registerHomeCustomisationButtons
SHX14_1 = "Silent Alarm"
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Separator
  SHX1_2 = "~y~Notifies the police when being broken into"
  SHX0_2(SHX1_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Separator
  SHX1_2 = "~y~The house location and name will be provided"
  SHX0_2(SHX1_2)
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.ButtonWithStyle
  SHX1_2 = "Purchase"
  SHX2_2 = ""
  SHX3_2 = {}
  SHX3_2.RightLabel = "\194\1633,000,000"
  SHX4_2 = true
  function SHX5_2(SHX0_3, SHX1_3, SHX2_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX3_3, SHX4_3
    if SHX2_3 then
      SHX3_3 = TriggerServerEvent
      SHX4_3 = "e2673bb257"
      SHX3_3(SHX4_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX13_1(SHX14_1, SHX15_1)
