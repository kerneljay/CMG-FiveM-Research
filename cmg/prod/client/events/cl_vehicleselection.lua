-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1
SHX0_1 = {}
SHX1_1 = CMG
SHX1_1 = SHX1_1.registerHudTimerBarProvider
SHX2_1 = "vehicleSelection"
function SHX3_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = SHX0_1.camera
  if not SHX1_2 then
    return
  end
  SHX1_2 = SHX0_1.duration
  if SHX1_2 > 5 then
    SHX1_2 = SHX0_2.push
    SHX2_2 = "~y~REMAINING TIME~w~"
    SHX3_2 = tostring
    SHX4_2 = SHX0_1.duration
    SHX3_2, SHX4_2 = SHX3_2(SHX4_2)
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  else
    SHX1_2 = SHX0_2.push
    SHX2_2 = "~r~REMAINING TIME~w~"
    SHX3_2 = tostring
    SHX4_2 = SHX0_1.duration
    SHX3_2, SHX4_2 = SHX3_2(SHX4_2)
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  end
end
SHX1_1(SHX2_1, SHX3_1)
function SHX1_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = 5.0
  if SHX0_2 then
    SHX2_2 = DoesEntityExist
    SHX3_2 = SHX0_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      SHX2_2 = GetModelDimensions
      SHX3_2 = GetEntityModel
      SHX4_2 = SHX0_2
      SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX3_2(SHX4_2)
      SHX2_2, SHX3_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
      SHX4_2 = SHX2_2.xy
      SHX5_2 = SHX3_2.xy
      SHX4_2 = SHX4_2 - SHX5_2
      SHX4_2 = #SHX4_2
      SHX4_2 = SHX4_2 / 2.0
      SHX5_2 = math
      SHX5_2 = SHX5_2.max
      SHX6_2 = SHX1_2
      SHX7_2 = SHX4_2
      SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
      SHX1_2 = SHX5_2
    end
  end
  SHX2_2 = SHX0_1.position
  SHX3_2 = vector3
  SHX4_2 = math
  SHX4_2 = SHX4_2.cos
  SHX5_2 = math
  SHX5_2 = SHX5_2.rad
  SHX6_2 = SHX0_1.heading
  SHX6_2 = SHX6_2 + 70.0
  SHX5_2, SHX6_2, SHX7_2 = SHX5_2(SHX6_2)
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX5_2 = math
  SHX5_2 = SHX5_2.sin
  SHX6_2 = math
  SHX6_2 = SHX6_2.rad
  SHX7_2 = SHX0_1.heading
  SHX7_2 = SHX7_2 + 70.0
  SHX6_2, SHX7_2 = SHX6_2(SHX7_2)
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
  SHX6_2 = 0.0
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = SHX3_2 * SHX1_2
  SHX2_2 = SHX2_2 + SHX3_2
  SHX3_2 = vector3
  SHX4_2 = 0.0
  SHX5_2 = 0.0
  SHX6_2 = 2.0
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = SHX2_2 + SHX3_2
  return SHX2_2
end
SHX2_1 = CMG
function SHX3_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX0_1.position = SHX0_2
  SHX0_1.heading = SHX1_2
  SHX0_1.vehicles = SHX2_2
  SHX0_1.duration = SHX3_2
  SHX0_1.cbVehicleChanged = SHX4_2
  SHX0_1.cbColourChanged = SHX5_2
  SHX0_1.colourListIndex = 1
  SHX0_1.lastVehicleName = nil
  SHX0_1.selectedVehicleName = nil
  SHX6_2 = GetGameTimer
  SHX6_2 = SHX6_2()
  SHX0_1.lastDecreased = SHX6_2
  SHX6_2 = {}
  SHX0_1.orders = SHX6_2
  SHX6_2 = IsPlayerControlOn
  SHX7_2 = PlayerId
  SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2 = SHX7_2()
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX0_1.prevHasControl = SHX6_2
  SHX6_2 = SetPlayerControl
  SHX7_2 = PlayerId
  SHX7_2 = SHX7_2()
  SHX8_2 = false
  SHX9_2 = 0
  SHX6_2(SHX7_2, SHX8_2, SHX9_2)
  SHX6_2 = pairs
  SHX7_2 = SHX0_1.vehicles
  SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX6_2(SHX7_2)
  for SHX10_2, SHX11_2 in SHX6_2, SHX7_2, SHX8_2, SHX9_2 do
    SHX12_2 = table
    SHX12_2 = SHX12_2.find
    SHX13_2 = SHX0_1.orders
    SHX14_2 = SHX11_2.level
    SHX12_2 = SHX12_2(SHX13_2, SHX14_2)
    if not SHX12_2 then
      SHX12_2 = table
      SHX12_2 = SHX12_2.insert
      SHX13_2 = SHX0_1.orders
      SHX14_2 = SHX11_2.level
      SHX12_2(SHX13_2, SHX14_2)
    end
  end
  SHX6_2 = table
  SHX6_2 = SHX6_2.sort
  SHX7_2 = SHX0_1.orders
  function SHX8_2(SHX0_3, SHX1_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX2_3
    SHX2_3 = SHX0_3 < SHX1_3
    return SHX2_3
  end
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = SHX1_1
  SHX7_2 = nil
  SHX6_2 = SHX6_2(SHX7_2)
  SHX7_2 = CreateCamWithParams
  SHX8_2 = "DEFAULT_SCRIPTED_CAMERA"
  SHX9_2 = SHX6_2.x
  SHX10_2 = SHX6_2.y
  SHX11_2 = SHX6_2.z
  SHX12_2 = 0.0
  SHX13_2 = 0.0
  SHX14_2 = 0.0
  SHX15_2 = 70.0
  SHX16_2 = false
  SHX17_2 = 2
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
  SHX0_1.camera = SHX7_2
  SHX7_2 = SetCamActive
  SHX8_2 = SHX0_1.camera
  SHX9_2 = true
  SHX7_2(SHX8_2, SHX9_2)
  SHX7_2 = PointCamAtCoord
  SHX8_2 = SHX0_1.camera
  SHX9_2 = SHX0_1.position
  SHX9_2 = SHX9_2.x
  SHX10_2 = SHX0_1.position
  SHX10_2 = SHX10_2.y
  SHX11_2 = SHX0_1.position
  SHX11_2 = SHX11_2.z
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX7_2 = RenderScriptCams
  SHX8_2 = true
  SHX9_2 = false
  SHX10_2 = 0
  SHX11_2 = false
  SHX12_2 = false
  SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX7_2 = pairs
  SHX8_2 = SHX0_1.vehicles
  SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX7_2(SHX8_2)
  for SHX11_2, SHX12_2 in SHX7_2, SHX8_2, SHX9_2, SHX10_2 do
    SHX13_2 = CMG
    SHX13_2 = SHX13_2.loadModel
    SHX14_2 = SHX12_2.model
    SHX13_2(SHX14_2)
  end
  SHX7_2 = RageUI
  SHX7_2 = SHX7_2.Visible
  SHX8_2 = RMenu
  SHX9_2 = SHX8_2
  SHX8_2 = SHX8_2.Get
  SHX10_2 = "selection"
  SHX11_2 = "mainmenu"
  SHX8_2 = SHX8_2(SHX9_2, SHX10_2, SHX11_2)
  SHX9_2 = true
  SHX7_2(SHX8_2, SHX9_2)
end
SHX2_1.startVehicleSelection = SHX3_1
SHX2_1 = CMG
function SHX3_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX0_2 = SHX0_1.camera
  if SHX0_2 then
    SHX0_2 = RageUI
    SHX0_2 = SHX0_2.Visible
    SHX1_2 = RMenu
    SHX2_2 = SHX1_2
    SHX1_2 = SHX1_2.Get
    SHX3_2 = "selection"
    SHX4_2 = "mainmenu"
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX2_2 = false
    SHX0_2(SHX1_2, SHX2_2)
    SHX0_2 = pairs
    SHX1_2 = SHX0_1.vehicles
    SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2)
    for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
      SHX6_2 = SetModelAsNoLongerNeeded
      SHX7_2 = SHX5_2.model
      SHX6_2(SHX7_2)
    end
    SHX0_2 = DeleteEntity
    SHX1_2 = SHX0_1.previewVehicle
    SHX0_2(SHX1_2)
    SHX0_2 = SetCamActive
    SHX1_2 = SHX0_1.camera
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
    SHX1_2 = SHX0_1.camera
    SHX2_2 = false
    SHX0_2(SHX1_2, SHX2_2)
    SHX0_2 = SHX0_1.prevHasControl
    if SHX0_2 then
      SHX0_2 = SetPlayerControl
      SHX1_2 = PlayerId
      SHX1_2 = SHX1_2()
      SHX2_2 = true
      SHX3_2 = 0
      SHX0_2(SHX1_2, SHX2_2, SHX3_2)
    end
    SHX0_2 = pairs
    SHX1_2 = GetActivePlayers
    SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2 = SHX1_2()
    SHX0_2, SHX1_2, SHX2_2, SHX3_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    for SHX4_2, SHX5_2 in SHX0_2, SHX1_2, SHX2_2, SHX3_2 do
      SHX6_2 = GetPlayerPed
      SHX7_2 = SHX5_2
      SHX6_2 = SHX6_2(SHX7_2)
      if 0 ~= SHX6_2 then
        SHX7_2 = SetEntityVisible
        SHX8_2 = SHX6_2
        SHX9_2 = true
        SHX10_2 = false
        SHX7_2(SHX8_2, SHX9_2, SHX10_2)
      end
    end
  end
  SHX0_2 = {}
  SHX0_1 = SHX0_2
end
SHX2_1.endVehicleSelection = SHX3_1
SHX2_1 = RegisterNetEvent
SHX3_1 = "1239b973de"
function SHX4_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX0_1.votes = SHX0_2
end
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = {}
SHX3_1 = "White"
SHX4_1 = "Black"
SHX5_1 = "Red"
SHX6_1 = "Green"
SHX7_1 = "Blue"
SHX8_1 = "Yellow"
SHX9_1 = "Purple"
SHX10_1 = "Pink"
SHX2_1[1] = SHX3_1
SHX2_1[2] = SHX4_1
SHX2_1[3] = SHX5_1
SHX2_1[4] = SHX6_1
SHX2_1[5] = SHX7_1
SHX2_1[6] = SHX8_1
SHX2_1[7] = SHX9_1
SHX2_1[8] = SHX10_1
function SHX3_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  if 1 == SHX0_2 then
    SHX1_2 = 111
    return SHX1_2
  elseif 2 == SHX0_2 then
    SHX1_2 = 147
    return SHX1_2
  elseif 3 == SHX0_2 then
    SHX1_2 = 39
    return SHX1_2
  elseif 4 == SHX0_2 then
    SHX1_2 = 92
    return SHX1_2
  elseif 5 == SHX0_2 then
    SHX1_2 = 83
    return SHX1_2
  elseif 6 == SHX0_2 then
    SHX1_2 = 42
    return SHX1_2
  elseif 7 == SHX0_2 then
    SHX1_2 = 145
    return SHX1_2
  elseif 8 == SHX0_2 then
    SHX1_2 = 135
    return SHX1_2
  end
end
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX0_2 = SHX0_1.camera
  if SHX0_2 then
    SHX0_2 = DisableAllControlActions
    SHX1_2 = 0
    SHX0_2(SHX1_2)
    SHX0_2 = GetGameTimer
    SHX0_2 = SHX0_2()
    SHX1_2 = SHX0_1.lastDecreased
    SHX1_2 = SHX0_2 - SHX1_2
    SHX2_2 = 1000
    if SHX1_2 >= SHX2_2 then
      SHX1_2 = SHX0_1.duration
      if SHX1_2 > 0 then
        SHX1_2 = SHX0_1.duration
        SHX1_2 = SHX1_2 - 1
        SHX0_1.duration = SHX1_2
      end
      SHX1_2 = SHX0_1.duration
      if SHX1_2 < 5 then
        SHX1_2 = PlaySoundFrontend
        SHX2_2 = -1
        SHX3_2 = "Checkpoint_Buzz"
        SHX4_2 = "DLC_AW_Frontend_Sounds"
        SHX5_2 = false
        SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
      end
      SHX0_1.lastDecreased = SHX0_2
    end
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.setHudTimerBarProviderActive
    SHX2_2 = "vehicleSelection"
    SHX3_2 = true
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = RageUI
    SHX1_2 = SHX1_2.Visible
    SHX2_2 = RMenu
    SHX3_2 = SHX2_2
    SHX2_2 = SHX2_2.Get
    SHX4_2 = "selection"
    SHX5_2 = "mainmenu"
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    SHX3_2 = true
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = PlayerPedId
    SHX1_2 = SHX1_2()
    SHX2_2 = pairs
    SHX3_2 = GetActivePlayers
    SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX3_2()
    SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
    for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
      SHX8_2 = GetPlayerPed
      SHX9_2 = SHX7_2
      SHX8_2 = SHX8_2(SHX9_2)
      if 0 ~= SHX8_2 then
        SHX9_2 = SetEntityVisible
        SHX10_2 = SHX8_2
        SHX11_2 = SHX8_2 == SHX1_2
        SHX12_2 = false
        SHX9_2(SHX10_2, SHX11_2, SHX12_2)
      end
    end
  else
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.setHudTimerBarProviderActive
    SHX1_2 = "vehicleSelection"
    SHX2_2 = false
    SHX0_2(SHX1_2, SHX2_2)
  end
end
SHX5_1 = CMG
SHX5_1 = SHX5_1.createThreadOnTick
SHX6_1 = SHX4_1
SHX7_1 = "Event Vehicle Selection"
SHX5_1(SHX6_1, SHX7_1)
function SHX5_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX0_1.lastVehicleName = SHX1_2
  SHX2_2 = DeleteEntity
  SHX3_2 = SHX0_1.previewVehicle
  SHX2_2(SHX3_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.spawnVehicle
  SHX3_2 = SHX0_2.model
  SHX4_2 = SHX0_1.position
  SHX4_2 = SHX4_2.x
  SHX5_2 = SHX0_1.position
  SHX5_2 = SHX5_2.y
  SHX6_2 = SHX0_1.position
  SHX6_2 = SHX6_2.z
  SHX7_2 = SHX0_1.heading
  SHX8_2 = false
  SHX9_2 = false
  SHX10_2 = false
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  SHX0_1.previewVehicle = SHX2_2
  SHX2_2 = FreezeEntityPosition
  SHX3_2 = SHX0_1.previewVehicle
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SHX3_1
  SHX3_2 = SHX0_1.colourListIndex
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = SetVehicleColours
  SHX4_2 = SHX0_1.previewVehicle
  SHX5_2 = SHX2_2
  SHX6_2 = SHX2_2
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = SetVehicleEngineOn
  SHX4_2 = SHX0_1.previewVehicle
  SHX5_2 = true
  SHX6_2 = true
  SHX7_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX3_2 = SetPedIntoVehicle
  SHX4_2 = PlayerPedId
  SHX4_2 = SHX4_2()
  SHX5_2 = SHX0_1.previewVehicle
  SHX6_2 = -1
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = SetVehRadioStation
  SHX4_2 = SHX0_1.previewVehicle
  SHX5_2 = "OFF"
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = DoesVehicleHaveLandingGear
  SHX4_2 = SHX0_1.previewVehicle
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = ControlLandingGear
    SHX4_2 = SHX0_1.previewVehicle
    SHX5_2 = 3
    SHX3_2(SHX4_2, SHX5_2)
  end
  SHX3_2 = SetHeliBladesFullSpeed
  SHX4_2 = SHX0_1.previewVehicle
  SHX3_2(SHX4_2)
  SHX3_2 = GetEntityCoords
  SHX4_2 = SHX0_1.previewVehicle
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = SHX0_1.position
  SHX3_2 = SHX3_2 - SHX4_2
  SHX3_2 = #SHX3_2
  if SHX3_2 > 3.0 then
    SHX3_2 = SetEntityCoordsNoOffset
    SHX4_2 = SHX0_1.previewVehicle
    SHX5_2 = SHX0_1.position
    SHX5_2 = SHX5_2.x
    SHX6_2 = SHX0_1.position
    SHX6_2 = SHX6_2.y
    SHX7_2 = SHX0_1.position
    SHX7_2 = SHX7_2.z
    SHX8_2 = true
    SHX9_2 = false
    SHX10_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
  end
  SHX3_2 = SHX1_1
  SHX4_2 = SHX0_1.previewVehicle
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = SetCamCoord
  SHX5_2 = SHX0_1.camera
  SHX6_2 = SHX3_2.x
  SHX7_2 = SHX3_2.y
  SHX8_2 = SHX3_2.z
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
end
function SHX6_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX3_2 = SHX0_1.lastVehicleName
  if nil ~= SHX3_2 then
    SHX3_2 = SHX0_1.selectedVehicleName
    if nil ~= SHX3_2 then
      goto SHX_LABEL_26
    end
  end
  SHX0_1.selectedVehicleName = SHX1_2
  SHX3_2 = SHX0_1.cbVehicleChanged
  SHX4_2 = SHX1_2
  SHX3_2(SHX4_2)
  SHX3_2 = SHX3_1
  SHX4_2 = SHX0_1.colourListIndex
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = SHX0_1.cbColourChanged
  if SHX4_2 then
    SHX4_2 = SHX0_1.cbColourChanged
    SHX5_2 = SHX3_2
    SHX4_2(SHX5_2)
  end
  if SHX2_2 then
    SHX4_2 = SHX5_1
    SHX5_2 = SHX0_2
    SHX6_2 = SHX1_2
    SHX4_2(SHX5_2, SHX6_2)
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_26:: outside nested blocks until all 'goto SHX_LABEL_26' can see it
  ::SHX_LABEL_26::
end
function SHX7_1(SHX0_2, SHX1_2, SHX2_2, SHX3_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  if SHX0_2 then
    SHX4_2 = SHX0_1.lastVehicleName
    if SHX3_2 ~= SHX4_2 then
      SHX4_2 = SHX6_1
      SHX5_2 = SHX2_2
      SHX6_2 = SHX3_2
      SHX7_2 = false
      SHX4_2(SHX5_2, SHX6_2, SHX7_2)
      SHX4_2 = SHX5_1
      SHX5_2 = SHX2_2
      SHX6_2 = SHX3_2
      SHX4_2(SHX5_2, SHX6_2)
    end
  end
  if SHX1_2 then
    SHX0_1.selectedVehicleName = SHX3_2
    SHX4_2 = AnimpostfxPlay
    SHX5_2 = "SuccessNeutral"
    SHX6_2 = 0
    SHX7_2 = false
    SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    SHX4_2 = PlaySoundFrontend
    SHX5_2 = -1
    SHX6_2 = "Deliver"
    SHX7_2 = "In_And_Out_Attacker_Sounds"
    SHX8_2 = false
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
    SHX4_2 = SHX0_1.cbVehicleChanged
    SHX5_2 = SHX3_2
    SHX4_2(SHX5_2)
  end
  if SHX0_2 then
    SHX4_2 = SHX0_1.cbColourChanged
    if SHX4_2 then
      SHX4_2 = IsDisabledControlJustPressed
      SHX5_2 = 0
      SHX6_2 = 22
      SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
      if SHX4_2 then
        SHX4_2 = SHX0_1.colourListIndex
        SHX5_2 = SHX2_1
        SHX5_2 = #SHX5_2
        if SHX4_2 == SHX5_2 then
          SHX0_1.colourListIndex = 1
        else
          SHX4_2 = SHX0_1.colourListIndex
          SHX4_2 = SHX4_2 + 1
          SHX0_1.colourListIndex = SHX4_2
        end
        SHX4_2 = SHX3_1
        SHX5_2 = SHX0_1.colourListIndex
        SHX4_2 = SHX4_2(SHX5_2)
        SHX5_2 = SHX0_1.cbColourChanged
        SHX6_2 = SHX4_2
        SHX5_2(SHX6_2)
        SHX5_2 = SetVehicleColours
        SHX6_2 = SHX0_1.previewVehicle
        SHX7_2 = SHX4_2
        SHX8_2 = SHX4_2
        SHX5_2(SHX6_2, SHX7_2, SHX8_2)
      end
    end
  end
end
SHX8_1 = RMenu
SHX8_1 = SHX8_1.Add
SHX9_1 = "selection"
SHX10_1 = "mainmenu"
SHX11_1 = RageUI
SHX11_1 = SHX11_1.CreateMenu
SHX12_1 = ""
SHX13_1 = "Select your vehicle"
SHX14_1 = CMG
SHX14_1 = SHX14_1.getRageUIMenuWidth
SHX14_1 = SHX14_1()
SHX15_1 = CMG
SHX15_1 = SHX15_1.getRageUIMenuHeight
SHX15_1 = SHX15_1()
SHX16_1 = "cmg_minigames_choosevehicle"
SHX17_1 = "cmg_minigames_choosevehicle"
SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1 = SHX11_1(SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1)
SHX8_1(SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1)
SHX8_1 = RageUI
SHX8_1 = SHX8_1.CreateWhile
SHX9_1 = 1.0
SHX10_1 = RMenu
SHX11_1 = SHX10_1
SHX10_1 = SHX10_1.Get
SHX12_1 = "selection"
SHX13_1 = "mainmenu"
SHX10_1 = SHX10_1(SHX11_1, SHX12_1, SHX13_1)
SHX11_1 = nil
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.IsVisible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "selection"
  SHX4_2 = "mainmenu"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX2_2 = true
  SHX3_2 = true
  SHX4_2 = true
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3
    SHX0_3 = SHX0_1.votes
    if SHX0_3 then
      SHX0_3 = currentEvent
      SHX0_3 = SHX0_3.players
      if SHX0_3 then
        SHX0_3 = RageUI
        SHX0_3 = SHX0_3.Separator
        SHX1_3 = "Event Options"
        SHX0_3(SHX1_3)
        SHX0_3 = GetPlayerServerId
        SHX1_3 = PlayerId
        SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3 = SHX1_3()
        SHX0_3 = SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3)
        SHX1_3 = pairs
        SHX2_3 = SHX0_1.votes
        SHX1_3, SHX2_3, SHX3_3, SHX4_3 = SHX1_3(SHX2_3)
        for SHX5_3, SHX6_3 in SHX1_3, SHX2_3, SHX3_3, SHX4_3 do
          SHX7_3 = RageUI
          SHX7_3 = SHX7_3.Checkbox
          SHX8_3 = "Vote For "
          SHX9_3 = SHX5_3
          SHX8_3 = SHX8_3 .. SHX9_3
          SHX9_3 = nil
          SHX10_3 = table
          SHX10_3 = SHX10_3.has
          SHX11_3 = SHX6_3
          SHX12_3 = SHX0_3
          SHX10_3 = SHX10_3(SHX11_3, SHX12_3)
          SHX11_3 = {}
          SHX12_3 = string
          SHX12_3 = SHX12_3.format
          SHX13_3 = "(%d/%d)"
          SHX14_3 = #SHX6_3
          SHX15_3 = currentEvent
          SHX15_3 = SHX15_3.players
          SHX15_3 = #SHX15_3
          SHX12_3 = SHX12_3(SHX13_3, SHX14_3, SHX15_3)
          SHX11_3.RightLabel = SHX12_3
          function SHX12_3()
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX0_4, SHX1_4
          end
          function SHX13_3()
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX0_4, SHX1_4, SHX2_4, SHX3_4
            SHX0_4 = TriggerServerEvent
            SHX1_4 = "2d1686688d"
            SHX2_4 = SHX5_3
            SHX3_4 = true
            SHX0_4(SHX1_4, SHX2_4, SHX3_4)
          end
          function SHX14_3()
            -- [AI CLEANUP] Decompiled Lua - Fix these:
            -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
            -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
            -- 3. Replace goto/label with while/repeat-until where possible
            -- 4. Remove decompiler comments, add meaningful ones
            -- 5. Fix indentation and formatting
            
            local SHX0_4, SHX1_4, SHX2_4, SHX3_4
            SHX0_4 = TriggerServerEvent
            SHX1_4 = "2d1686688d"
            SHX2_4 = SHX5_3
            SHX3_4 = false
            SHX0_4(SHX1_4, SHX2_4, SHX3_4)
          end
          SHX7_3(SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3)
        end
        SHX1_3 = RageUI
        SHX1_3 = SHX1_3.Separator
        SHX2_3 = "Available Vehicles"
        SHX1_3(SHX2_3)
      end
    end
    SHX0_3 = currentEvent
    SHX0_3 = SHX0_3.data
    SHX0_3 = SHX0_3.customSpawncode
    if SHX0_3 then
      SHX0_3 = currentEvent
      SHX0_3 = SHX0_3.data
      SHX0_3 = SHX0_3.customSpawncode
      SHX1_3 = RageUI
      SHX1_3 = SHX1_3.ButtonWithStyle
      SHX2_3 = SHX0_3
      SHX3_3 = nil
      SHX4_3 = {}
      SHX4_3.RightLabel = "\226\156\148\239\184\143"
      SHX5_3 = true
      function SHX6_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4, SHX8_4
        SHX3_4 = {}
        SHX4_4 = SHX0_3
        SHX3_4.model = SHX4_4
        SHX4_4 = SHX7_1
        SHX5_4 = SHX1_4
        SHX6_4 = SHX2_4
        SHX7_4 = SHX3_4
        SHX8_4 = SHX0_3
        SHX4_4(SHX5_4, SHX6_4, SHX7_4, SHX8_4)
        SHX4_4 = SHX6_1
        SHX5_4 = SHX3_4
        SHX6_4 = SHX0_3
        SHX7_4 = true
        SHX4_4(SHX5_4, SHX6_4, SHX7_4)
      end
      SHX7_3 = nil
      SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3)
    else
      SHX0_3 = pairs
      SHX1_3 = SHX0_1.orders
      SHX0_3, SHX1_3, SHX2_3, SHX3_3 = SHX0_3(SHX1_3)
      for SHX4_3, SHX5_3 in SHX0_3, SHX1_3, SHX2_3, SHX3_3 do
        SHX6_3 = pairs
        SHX7_3 = SHX0_1.vehicles
        SHX6_3, SHX7_3, SHX8_3, SHX9_3 = SHX6_3(SHX7_3)
        for SHX10_3, SHX11_3 in SHX6_3, SHX7_3, SHX8_3, SHX9_3 do
          SHX12_3 = SHX11_3.level
          if SHX12_3 == SHX5_3 then
            SHX12_3 = SHX0_1.selectedVehicleName
            if SHX10_3 == SHX12_3 then
              SHX12_3 = {}
              SHX12_3.RightLabel = "\226\156\148\239\184\143"
              if SHX12_3 then
                goto SHX_LABEL_96
              end
            end
            SHX12_3 = {}
            -- [FIX IF ERROR] Move ::SHX_LABEL_96:: outside nested blocks until all 'goto SHX_LABEL_96' can see it
            ::SHX_LABEL_96::
            SHX13_3 = RageUI
            SHX13_3 = SHX13_3.ButtonWithStyle
            SHX14_3 = SHX10_3
            SHX15_3 = nil
            SHX16_3 = SHX12_3
            SHX17_3 = true
            function SHX18_3(SHX0_4, SHX1_4, SHX2_4)
              -- [AI CLEANUP] Decompiled Lua - Fix these:
              -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
              -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
              -- 3. Replace goto/label with while/repeat-until where possible
              -- 4. Remove decompiler comments, add meaningful ones
              -- 5. Fix indentation and formatting
              
              local SHX3_4, SHX4_4, SHX5_4, SHX6_4, SHX7_4
              SHX3_4 = SHX7_1
              SHX4_4 = SHX1_4
              SHX5_4 = SHX2_4
              SHX6_4 = SHX11_3
              SHX7_4 = SHX10_3
              SHX3_4(SHX4_4, SHX5_4, SHX6_4, SHX7_4)
            end
            SHX19_3 = nil
            SHX13_3(SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3)
            SHX13_3 = SHX6_1
            SHX14_3 = SHX11_3
            SHX15_3 = SHX10_3
            SHX16_3 = true
            SHX13_3(SHX14_3, SHX15_3, SHX16_3)
          end
        end
      end
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX8_1(SHX9_1, SHX10_1, SHX11_1, SHX12_1)
SHX8_1 = RMenu
SHX9_1 = SHX8_1
SHX8_1 = SHX8_1.Get
SHX10_1 = "selection"
SHX11_1 = "mainmenu"
SHX8_1 = SHX8_1(SHX9_1, SHX10_1, SHX11_1)
SHX9_1 = SHX8_1
SHX8_1 = SHX8_1.AddInstructionButton
SHX10_1 = {}
SHX11_1 = "~INPUT_JUMP~"
SHX12_1 = "Switch Colour"
SHX10_1[1] = SHX11_1
SHX10_1[2] = SHX12_1
SHX8_1(SHX9_1, SHX10_1)
