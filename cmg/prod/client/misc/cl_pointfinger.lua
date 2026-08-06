-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1
SHX0_1 = false
function SHX1_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.setWeapon
  SHX2_2 = SHX0_2
  SHX3_2 = -1569615261
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadAnimDict
  SHX2_2 = "anim@mp_point"
  SHX1_2(SHX2_2)
  SHX1_2 = SetPedCurrentWeaponVisible
  SHX2_2 = SHX0_2
  SHX3_2 = false
  SHX4_2 = true
  SHX5_2 = true
  SHX6_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX1_2 = SetPedConfigFlag
  SHX2_2 = SHX0_2
  SHX3_2 = 36
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = TaskMoveNetworkByName
  SHX2_2 = SHX0_2
  SHX3_2 = "task_mp_pointing"
  SHX4_2 = 0.5
  SHX5_2 = false
  SHX6_2 = "anim@mp_point"
  SHX7_2 = 24
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX1_2 = RemoveAnimDict
  SHX2_2 = "anim@mp_point"
  SHX1_2(SHX2_2)
end
function SHX2_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = RequestTaskMoveNetworkStateTransition
  SHX2_2 = SHX0_2
  SHX3_2 = "Stop"
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = IsPedInjured
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    SHX1_2 = ClearPedSecondaryTask
    SHX2_2 = SHX0_2
    SHX1_2(SHX2_2)
  end
  SHX1_2 = IsPedInAnyVehicle
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if not SHX1_2 then
    SHX1_2 = SetPedCurrentWeaponVisible
    SHX2_2 = SHX0_2
    SHX3_2 = true
    SHX4_2 = true
    SHX5_2 = true
    SHX6_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  end
  SHX1_2 = SetPedConfigFlag
  SHX2_2 = SHX0_2
  SHX3_2 = 36
  SHX4_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = ClearPedSecondaryTask
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
SHX3_1 = RegisterCommand
SHX4_1 = "pointfinger"
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = GetCurrentPedWeapon
  SHX2_2 = SHX0_2
  SHX3_2 = -1569615261
  SHX4_2 = false
  SHX1_2, SHX2_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX3_2 = IsPedOnFoot
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 and not SHX1_2 and -1569615261 == SHX2_2 then
    SHX3_2 = SHX0_1
    if SHX3_2 then
      SHX3_2 = false
      SHX0_1 = SHX3_2
      SHX3_2 = SHX2_1
      SHX3_2()
    else
      SHX3_2 = IsDisabledControlPressed
      SHX4_2 = 0
      SHX5_2 = 21
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
      if not SHX3_2 then
        SHX3_2 = CMG
        SHX3_2 = SHX3_2.inEvent
        SHX3_2 = SHX3_2()
        if not SHX3_2 then
          SHX3_2 = true
          SHX0_1 = SHX3_2
          SHX3_2 = SHX1_1
          SHX3_2()
        end
      end
    end
  end
end
SHX6_1 = false
SHX3_1(SHX4_1, SHX5_1, SHX6_1)
SHX3_1 = RegisterKeyMapping
SHX4_1 = "pointfinger"
SHX5_1 = "Point Finger"
SHX6_1 = "KEYBOARD"
SHX7_1 = "B"
SHX3_1(SHX4_1, SHX5_1, SHX6_1, SHX7_1)
function SHX3_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2
  SHX1_2 = SHX0_1
  if SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.isNewPlayer
    SHX1_2 = SHX1_2()
    if SHX1_2 then
      SHX1_2 = drawNativeNotification
      SHX2_2 = "Press ~INPUT_3090B280~ to toggle the finger pointing."
      SHX1_2(SHX2_2)
    end
    SHX1_2 = SHX0_2.playerPed
    SHX2_2 = GetGameplayCamRelativePitch
    SHX2_2 = SHX2_2()
    if SHX2_2 < -70.0 then
      SHX2_2 = -70.0
    elseif SHX2_2 > 42.0 then
      SHX2_2 = 42.0
    end
    SHX3_2 = SHX2_2 + 70.0
    SHX2_2 = SHX3_2 / 112.0
    SHX3_2 = GetGameplayCamRelativeHeading
    SHX3_2 = SHX3_2()
    SHX4_2 = Cos
    SHX5_2 = SHX3_2
    SHX4_2 = SHX4_2(SHX5_2)
    SHX5_2 = Sin
    SHX6_2 = SHX3_2
    SHX5_2 = SHX5_2(SHX6_2)
    SHX6_2 = -180.0
    if SHX3_2 < SHX6_2 then
      SHX3_2 = -180.0
    else
      SHX6_2 = 180.0
      if SHX3_2 > SHX6_2 then
        SHX3_2 = 180.0
      end
    end
    SHX6_2 = SHX3_2 + 180.0
    SHX3_2 = SHX6_2 / 360.0
    SHX6_2 = GetOffsetFromEntityInWorldCoords
    SHX7_2 = SHX1_2
    SHX8_2 = SHX4_2 * -0.2
    SHX9_2 = 0.4 * SHX3_2
    SHX9_2 = SHX9_2 + 0.3
    SHX9_2 = SHX5_2 * SHX9_2
    SHX8_2 = SHX8_2 - SHX9_2
    SHX9_2 = SHX5_2 * -0.2
    SHX10_2 = 0.4 * SHX3_2
    SHX10_2 = SHX10_2 + 0.3
    SHX10_2 = SHX4_2 * SHX10_2
    SHX9_2 = SHX9_2 + SHX10_2
    SHX10_2 = 0.6
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    SHX7_2 = StartShapeTestCapsule
    SHX8_2 = SHX6_2.x
    SHX9_2 = SHX6_2.y
    SHX10_2 = SHX6_2.z
    SHX10_2 = SHX10_2 - 0.2
    SHX11_2 = SHX6_2.x
    SHX12_2 = SHX6_2.y
    SHX13_2 = SHX6_2.z
    SHX13_2 = SHX13_2 + 0.2
    SHX14_2 = 0.4
    SHX15_2 = 95
    SHX16_2 = SHX1_2
    SHX17_2 = 7
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2)
    SHX8_2 = GetShapeTestResult
    SHX9_2 = SHX7_2
    SHX8_2, SHX9_2 = SHX8_2(SHX9_2)
    SHX10_2 = SetTaskMoveNetworkSignalFloat
    SHX11_2 = SHX1_2
    SHX12_2 = "Pitch"
    SHX13_2 = SHX2_2
    SHX10_2(SHX11_2, SHX12_2, SHX13_2)
    SHX10_2 = SetTaskMoveNetworkSignalFloat
    SHX11_2 = SHX1_2
    SHX12_2 = "Heading"
    SHX13_2 = SHX3_2 * -1.0
    SHX13_2 = SHX13_2 + 1.0
    SHX10_2(SHX11_2, SHX12_2, SHX13_2)
    SHX10_2 = SetTaskMoveNetworkSignalBool
    SHX11_2 = SHX1_2
    SHX12_2 = "isBlocked"
    SHX13_2 = SHX9_2
    SHX10_2(SHX11_2, SHX12_2, SHX13_2)
    SHX10_2 = SetTaskMoveNetworkSignalBool
    SHX11_2 = SHX1_2
    SHX12_2 = "isFirstPerson"
    SHX13_2 = GetCamViewModeForContext
    SHX14_2 = GetCamActiveViewModeContext
    SHX14_2, SHX15_2, SHX16_2, SHX17_2 = SHX14_2()
    SHX13_2 = SHX13_2(SHX14_2, SHX15_2, SHX16_2, SHX17_2)
    SHX13_2 = 4 == SHX13_2
    SHX10_2(SHX11_2, SHX12_2, SHX13_2)
  end
end
SHX4_1 = CMG
SHX4_1 = SHX4_1.createThreadOnTick
SHX5_1 = SHX3_1
SHX6_1 = "Point Finger"
SHX4_1(SHX5_1, SHX6_1)
