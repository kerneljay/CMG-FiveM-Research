-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1
SHX0_1 = {}
SHX0_1[0] = true
SHX0_1[1] = true
SHX0_1[2] = true
SHX0_1[3] = true
SHX0_1[4] = true
SHX0_1[5] = true
SHX0_1[6] = true
SHX0_1[9] = true
SHX0_1[11] = true
SHX0_1[12] = true
SHX0_1[17] = true
SHX0_1[18] = true
SHX1_1 = false
SHX2_1 = "fin_ext_p1-7"
SHX3_1 = "cs_devin_dual-7"
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX0_2 = GetActivePlayers
  SHX0_2 = SHX0_2()
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerCoords
  SHX1_2 = SHX1_2()
  SHX2_2 = pairs
  SHX3_2 = SHX0_2
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2)
  for SHX6_2, SHX7_2 in SHX2_2, SHX3_2, SHX4_2, SHX5_2 do
    SHX8_2 = GetPlayerPed
    SHX9_2 = SHX7_2
    SHX8_2 = SHX8_2(SHX9_2)
    SHX9_2 = GetEntityCoords
    SHX10_2 = SHX8_2
    SHX9_2 = SHX9_2(SHX10_2)
    SHX10_2 = SHX1_2 - SHX9_2
    SHX10_2 = #SHX10_2
    if SHX10_2 < 5 then
      SHX11_2 = IsEntityPlayingAnim
      SHX12_2 = SHX8_2
      SHX13_2 = SHX2_1
      SHX14_2 = SHX3_1
      SHX15_2 = 3
      SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2)
      if SHX11_2 then
        SHX11_2 = true
        return SHX11_2
      end
    end
  end
  SHX2_2 = false
  return SHX2_2
end
SHX5_1 = false
SHX6_1 = false
SHX7_1 = CMG
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX5_1
  return SHX0_2
end
SHX7_1.isPlayerHidingInBoot = SHX8_1
function SHX7_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.isHandcuffed
  SHX2_2 = SHX2_2()
  if not SHX2_2 then
    SHX2_2 = tCMG
    SHX2_2 = SHX2_2.isTazed
    SHX2_2 = SHX2_2()
    if not SHX2_2 then
      goto SHX_LABEL_13
    end
  end
  SHX2_2 = false
  return SHX2_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_13:: outside nested blocks until all 'goto SHX_LABEL_13' can see it
  ::SHX_LABEL_13::
  SHX2_2 = GetEntitySpeed
  SHX3_2 = PlayerPedId
  SHX3_2, SHX4_2 = SHX3_2()
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = GetEntitySpeed
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  if not (SHX2_2 > 1.0) then
    SHX4_2 = 2.5
    if not (SHX3_2 > SHX4_2) then
      goto SHX_LABEL_27
    end
  end
  SHX4_2 = false
  return SHX4_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_27:: outside nested blocks until all 'goto SHX_LABEL_27' can see it
  ::SHX_LABEL_27::
  if SHX1_2 then
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.getPlayerCoords
    SHX4_2 = SHX4_2()
    SHX4_2 = SHX4_2 - SHX1_2
    SHX4_2 = #SHX4_2
    if SHX4_2 > 1.0 then
      SHX4_2 = false
      return SHX4_2
    end
  end
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getPlayerCombatTimer
  SHX4_2 = SHX4_2()
  if SHX4_2 > 0 then
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.isPlayerInRedZone
    SHX4_2 = SHX4_2()
    if SHX4_2 then
      SHX4_2 = false
      return SHX4_2
    end
  end
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.isDrawingInventoryUI
  SHX4_2 = SHX4_2()
  if SHX4_2 then
    SHX4_2 = false
    return SHX4_2
  end
  SHX4_2 = true
  return SHX4_2
end
function SHX8_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2
  SHX2_2 = true
  SHX1_1 = SHX2_2
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = GetVehicleDoorLockStatus
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = SHX4_1
  SHX4_2 = SHX4_2()
  if not SHX4_2 then
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.isDrawingInventoryUI
    SHX4_2 = SHX4_2()
    if not SHX4_2 then
      SHX4_2 = CMG
      SHX4_2 = SHX4_2.getPlayerCoords
      SHX4_2 = SHX4_2()
      SHX5_2 = CMG
      SHX5_2 = SHX5_2.startCircularProgressBar
      SHX6_2 = ""
      SHX7_2 = 2000
      SHX8_2 = nil
      function SHX9_2()
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX0_3, SHX1_3
      end
      SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2)
      SHX5_2 = SHX7_1
      SHX6_2 = SHX0_2
      SHX7_2 = SHX4_2
      SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
      if SHX5_2 then
        if SHX3_2 <= 1 then
          SHX5_2 = tCMG
          SHX5_2 = SHX5_2.setCanAnim
          SHX6_2 = false
          SHX5_2(SHX6_2)
          SHX5_2 = CMG
          SHX5_2 = SHX5_2.setWeapon
          SHX6_2 = SHX2_2
          SHX7_2 = -1569615261
          SHX8_2 = true
          SHX5_2(SHX6_2, SHX7_2, SHX8_2)
          SHX5_2 = true
          SHX5_1 = SHX5_2
          SHX5_2 = GetEntityCoords
          SHX6_2 = PlayerPedId
          SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2 = SHX6_2()
          SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
          SHX6_2 = CreateCam
          SHX7_2 = "DEFAULT_SCRIPTED_CAMERA"
          SHX8_2 = true
          SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
          SHX7_2 = SetCamCoord
          SHX8_2 = SHX6_2
          SHX9_2 = SHX5_2.x
          SHX10_2 = SHX5_2.x
          SHX11_2 = SHX5_2.z
          SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
          SHX7_2 = PointCamAtEntity
          SHX8_2 = SHX6_2
          SHX9_2 = SHX0_2
          SHX10_2 = 0.0
          SHX11_2 = 0.0
          SHX12_2 = 0.0
          SHX13_2 = false
          SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
          SHX7_2 = SetCamActive
          SHX8_2 = SHX6_2
          SHX9_2 = true
          SHX7_2(SHX8_2, SHX9_2)
          SHX7_2 = RenderScriptCams
          SHX8_2 = true
          SHX9_2 = false
          SHX10_2 = 0
          SHX11_2 = true
          SHX12_2 = true
          SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
          SHX7_2 = SetCamCoord
          SHX8_2 = SHX6_2
          SHX9_2 = SHX5_2.x
          SHX10_2 = SHX5_2.x
          SHX11_2 = SHX5_2.z
          SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
          SHX7_2 = AttachCamToEntity
          SHX8_2 = SHX6_2
          SHX9_2 = PlayerPedId
          SHX9_2 = SHX9_2()
          SHX10_2 = 0.0
          SHX11_2 = -2.5
          SHX12_2 = 1.0
          SHX13_2 = true
          SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
          SHX7_2 = SetCamRot
          SHX8_2 = SHX6_2
          SHX9_2 = -30.0
          SHX10_2 = 0.0
          SHX11_2 = GetEntityHeading
          SHX12_2 = PlayerPedId
          SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2 = SHX12_2()
          SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
          SHX12_2 = 0
          SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
          SHX7_2 = SetVehicleDoorOpen
          SHX8_2 = SHX0_2
          SHX9_2 = 5
          SHX10_2 = false
          SHX11_2 = false
          SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
          SHX7_2 = RaiseConvertibleRoof
          SHX8_2 = SHX0_2
          SHX9_2 = false
          SHX7_2(SHX8_2, SHX9_2)
          SHX7_2 = GetModelDimensions
          SHX8_2 = GetEntityModel
          SHX9_2 = SHX0_2
          SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2 = SHX8_2(SHX9_2)
          SHX7_2, SHX8_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
          SHX9_2 = AttachEntityToEntity
          SHX10_2 = SHX2_2
          SHX11_2 = SHX0_2
          SHX12_2 = 0
          SHX13_2 = -0.1
          SHX14_2 = SHX7_2.y
          SHX14_2 = SHX14_2 + 0.85
          SHX15_2 = SHX8_2.z
          SHX15_2 = SHX15_2 - 0.87
          SHX16_2 = 0
          SHX17_2 = 0
          SHX18_2 = 40.0
          SHX19_2 = true
          SHX20_2 = true
          SHX21_2 = true
          SHX22_2 = true
          SHX23_2 = 1
          SHX24_2 = true
          SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
          SHX9_2 = ClearPedTasksImmediately
          SHX10_2 = SHX2_2
          SHX9_2(SHX10_2)
          SHX9_2 = Wait
          SHX10_2 = 100
          SHX9_2(SHX10_2)
          SHX9_2 = CMG
          SHX9_2 = SHX9_2.loadAnimDict
          SHX10_2 = SHX2_1
          SHX9_2(SHX10_2)
          SHX9_2 = TaskPlayAnim
          SHX10_2 = SHX2_2
          SHX11_2 = SHX2_1
          SHX12_2 = SHX3_1
          SHX13_2 = 1.0
          SHX14_2 = -1
          SHX15_2 = -1
          SHX16_2 = 1
          SHX17_2 = 0
          SHX18_2 = false
          SHX19_2 = false
          SHX20_2 = false
          SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
          SHX9_2 = RemoveAnimDict
          SHX10_2 = SHX2_1
          SHX9_2(SHX10_2)
          SHX9_2 = Wait
          SHX10_2 = 1000
          SHX9_2(SHX10_2)
          SHX9_2 = SetVehicleDoorShut
          SHX10_2 = SHX0_2
          SHX11_2 = 5
          SHX12_2 = false
          SHX9_2(SHX10_2, SHX11_2, SHX12_2)
          SHX9_2 = DestroyCam
          SHX10_2 = SHX6_2
          SHX11_2 = false
          SHX9_2(SHX10_2, SHX11_2)
          SHX9_2 = RenderScriptCams
          SHX10_2 = false
          SHX11_2 = false
          SHX12_2 = 1
          SHX13_2 = true
          SHX14_2 = true
          SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          SHX9_2 = true
          SHX6_1 = SHX9_2
          SHX9_2 = drawNativeNotification
          SHX10_2 = "~s~~INPUT_FRONTEND_RRIGHT~ To exit the boot."
          SHX9_2(SHX10_2)
          SHX9_2 = true
          while SHX9_2 do
            SHX10_2 = SHX5_1
            if not SHX10_2 then
              break
            end
            SHX10_2 = DisableAllControlActions
            SHX11_2 = 0
            SHX10_2(SHX11_2)
            SHX10_2 = DisableAllControlActions
            SHX11_2 = 1
            SHX10_2(SHX11_2)
            SHX10_2 = DisableAllControlActions
            SHX11_2 = 2
            SHX10_2(SHX11_2)
            SHX10_2 = EnableControlAction
            SHX11_2 = 0
            SHX12_2 = 0
            SHX13_2 = true
            SHX10_2(SHX11_2, SHX12_2, SHX13_2)
            SHX10_2 = EnableControlAction
            SHX11_2 = 0
            SHX12_2 = 249
            SHX13_2 = true
            SHX10_2(SHX11_2, SHX12_2, SHX13_2)
            SHX10_2 = EnableControlAction
            SHX11_2 = 2
            SHX12_2 = 1
            SHX13_2 = true
            SHX10_2(SHX11_2, SHX12_2, SHX13_2)
            SHX10_2 = EnableControlAction
            SHX11_2 = 2
            SHX12_2 = 2
            SHX13_2 = true
            SHX10_2(SHX11_2, SHX12_2, SHX13_2)
            SHX10_2 = EnableControlAction
            SHX11_2 = 0
            SHX12_2 = 177
            SHX13_2 = true
            SHX10_2(SHX11_2, SHX12_2, SHX13_2)
            SHX10_2 = EnableControlAction
            SHX11_2 = 0
            SHX12_2 = 200
            SHX13_2 = true
            SHX10_2(SHX11_2, SHX12_2, SHX13_2)
            SHX10_2 = IsDisabledControlPressed
            SHX11_2 = 0
            SHX12_2 = 177
            SHX10_2 = SHX10_2(SHX11_2, SHX12_2)
            if SHX10_2 then
              SHX10_2 = GetVehicleDoorLockStatus
              SHX11_2 = SHX0_2
              SHX10_2 = SHX10_2(SHX11_2)
              if SHX10_2 <= 1 then
                SHX9_2 = false
              else
                SHX10_2 = tCMG
                SHX10_2 = SHX10_2.notify
                SHX11_2 = "~r~Vehicle is locked, cannot get in boot."
                SHX10_2(SHX11_2)
              end
            end
            SHX10_2 = DoesEntityExist
            SHX11_2 = SHX0_2
            SHX10_2 = SHX10_2(SHX11_2)
            if not SHX10_2 then
              SHX9_2 = false
            end
            SHX10_2 = GetEntityHealth
            SHX11_2 = SHX2_2
            SHX10_2 = SHX10_2(SHX11_2)
            if SHX10_2 <= 102 and not SHX1_2 then
              SHX9_2 = false
            end
            SHX10_2 = IsEntityPlayingAnim
            SHX11_2 = SHX2_2
            SHX12_2 = SHX2_1
            SHX13_2 = SHX3_1
            SHX14_2 = 3
            SHX10_2 = SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2)
            if not SHX10_2 then
              SHX10_2 = TaskPlayAnim
              SHX11_2 = SHX2_2
              SHX12_2 = SHX2_1
              SHX13_2 = SHX3_1
              SHX14_2 = 1.0
              SHX15_2 = -1
              SHX16_2 = -1
              SHX17_2 = 1
              SHX18_2 = 0
              SHX19_2 = false
              SHX20_2 = false
              SHX21_2 = false
              SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2)
            end
            SHX10_2 = Wait
            SHX11_2 = 0
            SHX10_2(SHX11_2)
          end
          SHX10_2 = false
          SHX5_1 = SHX10_2
          SHX10_2 = DetachEntity
          SHX11_2 = SHX2_2
          SHX12_2 = true
          SHX13_2 = true
          SHX10_2(SHX11_2, SHX12_2, SHX13_2)
          SHX10_2 = SetEntityVisible
          SHX11_2 = SHX2_2
          SHX12_2 = true
          SHX13_2 = true
          SHX10_2(SHX11_2, SHX12_2, SHX13_2)
          SHX10_2 = ClearAllHelpMessages
          SHX10_2()
          SHX10_2 = ClearPedTasks
          SHX11_2 = PlayerPedId
          SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2 = SHX11_2()
          SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2)
          SHX10_2 = SetVehicleDoorOpen
          SHX11_2 = SHX0_2
          SHX12_2 = 5
          SHX13_2 = false
          SHX14_2 = false
          SHX10_2(SHX11_2, SHX12_2, SHX13_2, SHX14_2)
          SHX10_2 = tCMG
          SHX10_2 = SHX10_2.setCanAnim
          SHX11_2 = true
          SHX10_2(SHX11_2)
          SHX10_2 = Wait
          SHX11_2 = 1000
          SHX10_2(SHX11_2)
          SHX10_2 = SetVehicleDoorShut
          SHX11_2 = SHX0_2
          SHX12_2 = 5
          SHX13_2 = false
          SHX10_2(SHX11_2, SHX12_2, SHX13_2)
        else
          SHX5_2 = tCMG
          SHX5_2 = SHX5_2.notify
          SHX6_2 = "~r~Vehicle is locked, cannot get out of boot."
          SHX5_2(SHX6_2)
        end
      else
        SHX5_2 = tCMG
        SHX5_2 = SHX5_2.notify
        SHX6_2 = "~r~You and the vehicle must remain stationary to get in."
        SHX5_2(SHX6_2)
      end
  end
  else
    SHX4_2 = tCMG
    SHX4_2 = SHX4_2.notify
    SHX5_2 = "~r~Someone is already in this boot."
    SHX4_2(SHX5_2)
  end
  SHX4_2 = false
  SHX1_1 = SHX4_2
end
SHX9_1 = Citizen
SHX9_1 = SHX9_1.CreateThread
function SHX10_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2
  SHX0_2 = 250
  while true do
    SHX1_2 = Citizen
    SHX1_2 = SHX1_2.Wait
    SHX2_2 = SHX0_2
    SHX1_2(SHX2_2)
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerVehicle
    SHX1_2 = SHX1_2()
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.getClosestVehicle
    SHX3_2 = 7.0
    SHX2_2 = SHX2_2(SHX3_2)
    SHX3_2 = GetVehicleClass
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    if 0 == SHX1_2 then
      SHX4_2 = SHX0_1
      SHX4_2 = SHX4_2[SHX3_2]
      if SHX4_2 then
        SHX4_2 = GetEntityHealth
        SHX5_2 = CMG
        SHX5_2 = SHX5_2.getPlayerPed
        SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2 = SHX5_2()
        SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2)
        if SHX4_2 > 102 then
          SHX4_2 = CMG
          SHX4_2 = SHX4_2.isNoClipActive
          SHX4_2 = SHX4_2()
          if not SHX4_2 then
            SHX4_2 = SHX1_1
            if not SHX4_2 then
              SHX4_2 = CMG
              SHX4_2 = SHX4_2.isPlayerInBankHeistSetup
              SHX4_2 = SHX4_2()
              if not SHX4_2 then
                if SHX2_2 and 0 ~= SHX2_2 then
                  SHX0_2 = 0
                  SHX4_2 = GetEntityBoneIndexByName
                  SHX5_2 = SHX2_2
                  SHX6_2 = "boot"
                  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
                  SHX5_2 = GetWorldPositionOfEntityBone
                  SHX6_2 = SHX2_2
                  SHX7_2 = SHX4_2
                  SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
                  SHX6_2 = CMG
                  SHX6_2 = SHX6_2.getPlayerCoords
                  SHX6_2 = SHX6_2()
                  SHX6_2 = SHX5_2 - SHX6_2
                  SHX6_2 = #SHX6_2
                  if SHX6_2 < 2 then
                    SHX7_2 = NetworkGetEntityIsNetworked
                    SHX8_2 = SHX2_2
                    SHX7_2 = SHX7_2(SHX8_2)
                    if SHX7_2 then
                      SHX7_2 = CMG
                      SHX7_2 = SHX7_2.isInTutorial
                      SHX7_2 = SHX7_2()
                      if not SHX7_2 then
                        SHX7_2 = DrawMarker
                        SHX8_2 = 0
                        SHX9_2 = SHX5_2.x
                        SHX10_2 = SHX5_2.y
                        SHX11_2 = SHX5_2.z
                        SHX12_2 = 0.0
                        SHX13_2 = 0.0
                        SHX14_2 = 0.0
                        SHX15_2 = 0.0
                        SHX16_2 = 0.0
                        SHX17_2 = 0.0
                        SHX18_2 = 0.3
                        SHX19_2 = 0.3
                        SHX20_2 = 0.3
                        SHX21_2 = 0
                        SHX22_2 = 255
                        SHX23_2 = 150
                        SHX24_2 = 255
                        SHX25_2 = true
                        SHX26_2 = false
                        SHX27_2 = 2
                        SHX28_2 = false
                        SHX29_2 = nil
                        SHX30_2 = nil
                        SHX31_2 = false
                        SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2, SHX28_2, SHX29_2, SHX30_2, SHX31_2)
                        SHX7_2 = true
                        SHX6_1 = SHX7_2
                        SHX7_2 = CMG
                        SHX7_2 = SHX7_2.isCarrying
                        SHX7_2 = SHX7_2()
                        if SHX7_2 then
                          SHX7_2 = drawNativeNotification
                          SHX8_2 = "~s~~INPUT_VEH_PUSHBIKE_SPRINT~ to place carried player inside the boot."
                          SHX7_2(SHX8_2)
                        else
                          SHX7_2 = drawNativeNotification
                          SHX8_2 = "~s~~INPUT_VEH_PUSHBIKE_SPRINT~ to get inside the boot."
                          SHX7_2(SHX8_2)
                        end
                        SHX7_2 = IsDisabledControlJustReleased
                        SHX8_2 = 1
                        SHX9_2 = 137
                        SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
                        if SHX7_2 then
                          SHX7_2 = SHX7_1
                          SHX8_2 = SHX2_2
                          SHX7_2 = SHX7_2(SHX8_2)
                          if SHX7_2 then
                            SHX7_2 = CMG
                            SHX7_2 = SHX7_2.isCarrying
                            SHX7_2 = SHX7_2()
                            if SHX7_2 then
                              SHX7_2 = CMG
                              SHX7_2 = SHX7_2.getCarryingPlayerSrc
                              SHX7_2 = SHX7_2()
                              if 0 ~= SHX7_2 then
                                SHX8_2 = NetworkGetNetworkIdFromEntity
                                SHX9_2 = SHX2_2
                                SHX8_2 = SHX8_2(SHX9_2)
                                if 0 ~= SHX8_2 and SHX8_2 ~= SHX2_2 then
                                  SHX9_2 = TriggerEvent
                                  SHX10_2 = "CarryPeople:cl_stop"
                                  SHX9_2(SHX10_2)
                                  SHX9_2 = TriggerServerEvent
                                  SHX10_2 = "6297bbdeaf"
                                  SHX11_2 = SHX7_2
                                  SHX12_2 = SHX8_2
                                  SHX9_2(SHX10_2, SHX11_2, SHX12_2)
                                end
                              end
                            else
                              SHX7_2 = SHX8_1
                              SHX8_2 = SHX2_2
                              SHX9_2 = false
                              SHX7_2(SHX8_2, SHX9_2)
                            end
                          end
                        end
                    end
                  end
                  else
                    SHX7_2 = SHX6_1
                    if SHX7_2 then
                      SHX7_2 = ClearHelp
                      SHX8_2 = true
                      SHX7_2(SHX8_2)
                      SHX7_2 = false
                      SHX6_1 = SHX7_2
                    end
                  end
                else
                  SHX0_2 = 250
                end
              end
            end
          end
        end
      end
    end
  end
end
SHX9_1(SHX10_1)
SHX9_1 = RegisterNetEvent
SHX10_1 = "1cfec3255e"
function SHX11_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = false
  SHX5_1 = SHX0_2
end
SHX9_1(SHX10_1, SHX11_1)
SHX9_1 = RegisterNetEvent
SHX10_1 = "6297bbdeaf"
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.isCarrying
  SHX1_2 = SHX1_2()
  if not SHX1_2 then
    return
  end
  SHX1_2 = TriggerEvent
  SHX2_2 = "CarryPeople:cl_stop"
  SHX1_2(SHX2_2)
  SHX1_2 = NetworkDoesNetworkIdExist
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    return
  end
  SHX1_2 = NetworkGetEntityFromNetworkId
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if 0 ~= SHX1_2 then
    SHX2_2 = IsEntityAVehicle
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      goto SHX_LABEL_27
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_27:: outside nested blocks until all 'goto SHX_LABEL_27' can see it
  ::SHX_LABEL_27::
  SHX2_2 = GetEntityCoords
  SHX3_2 = SHX1_2
  SHX4_2 = true
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerCoords
  SHX3_2 = SHX3_2()
  SHX2_2 = SHX2_2 - SHX3_2
  SHX2_2 = #SHX2_2
  if SHX2_2 > 15.0 then
    return
  end
  SHX2_2 = SHX8_1
  SHX3_2 = SHX1_2
  SHX4_2 = true
  SHX2_2(SHX3_2, SHX4_2)
end
SHX9_1(SHX10_1, SHX11_1)
