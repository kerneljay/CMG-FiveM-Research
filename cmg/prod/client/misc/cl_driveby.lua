-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_purge"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = CMG
SHX1_1 = SHX1_1.registerDevMenuState
SHX2_1 = "Drive By"
SHX3_1 = {}
SHX3_1.drawDebug = false
SHX1_1 = SHX1_1(SHX2_1, SHX3_1)
SHX2_1 = {}
SHX3_1 = 880995585
SHX2_1[SHX3_1] = true
SHX3_1 = 1047855333
SHX2_1[SHX3_1] = true
SHX3_1 = 1344775242
SHX2_1[SHX3_1] = true
SHX3_1 = -1645002784
SHX2_1[SHX3_1] = true
SHX3_1 = 1868620476
SHX2_1[SHX3_1] = true
SHX3_1 = -1189677529
SHX2_1[SHX3_1] = true
SHX3_1 = {}
SHX4_1 = pairs
SHX5_1 = SHX0_1.vehicles
SHX4_1, SHX5_1, SHX6_1, SHX7_1 = SHX4_1(SHX5_1)
for SHX8_1, SHX9_1 in SHX4_1, SHX5_1, SHX6_1, SHX7_1 do
  SHX10_1 = SHX9_1.spawncode
  SHX3_1[SHX10_1] = true
end
SHX4_1 = false
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX0_2 = SHX1_1.drawDebug
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.drawDebugText
    SHX1_2 = "---------- Drive By ----------"
    SHX0_2(SHX1_2)
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.drawDebugText
    SHX1_2 = "Ignore Checks: %s"
    SHX2_2 = SHX4_1
    SHX0_2(SHX1_2, SHX2_2)
    SHX0_2 = GetCurrentPedVehicleWeapon
    SHX1_2 = PlayerPedId
    SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX1_2()
    SHX0_2, SHX1_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.drawDebugText
    SHX3_2 = "Vehicle Weapon: %s (%s)"
    if SHX0_2 then
      SHX4_2 = "Yes"
      if SHX4_2 then
        goto SHX_LABEL_26
      end
    end
    SHX4_2 = "No"
    -- [FIX IF ERROR] Move ::SHX_LABEL_26:: outside nested blocks until all 'goto SHX_LABEL_26' can see it
    ::SHX_LABEL_26::
    SHX5_2 = SHX1_2
    SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  end
  SHX0_2 = SHX4_1
  if SHX0_2 then
    return
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerVehicle
  SHX0_2 = SHX0_2()
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  if 0 ~= SHX0_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.getPlayerId
    SHX2_2 = SHX2_2()
    SHX3_2 = GetEntityModel
    SHX4_2 = SHX0_2
    SHX3_2 = SHX3_2(SHX4_2)
    SHX4_2 = true
    SHX5_2 = CMG
    SHX5_2 = SHX5_2.isPurge
    SHX5_2 = SHX5_2()
    if SHX5_2 then
      SHX5_2 = SHX3_1
      SHX5_2 = SHX5_2[SHX3_2]
      if SHX5_2 then
        SHX5_2 = SetPlayerCanDoDriveBy
        SHX6_2 = SHX2_2
        SHX7_2 = true
        SHX5_2(SHX6_2, SHX7_2)
        SHX4_2 = false
        SHX5_2 = GetSelectedPedWeapon
        SHX6_2 = SHX1_2
        SHX5_2 = SHX5_2(SHX6_2)
        if 0 ~= SHX5_2 and -1569615261 ~= SHX5_2 then
          SHX6_2 = GetCurrentPedVehicleWeapon
          SHX7_2 = SHX1_2
          SHX6_2 = SHX6_2(SHX7_2)
          if not SHX6_2 then
            SHX6_2 = CMG
            SHX6_2 = SHX6_2.setWeapon
            SHX7_2 = SHX1_2
            SHX8_2 = -1569615261
            SHX9_2 = true
            SHX6_2(SHX7_2, SHX8_2, SHX9_2)
          end
        end
    end
    else
      SHX5_2 = GetVehicleClass
      SHX6_2 = SHX0_2
      SHX5_2 = SHX5_2(SHX6_2)
      if 8 == SHX5_2 then
        SHX5_2 = GetPedInVehicleSeat
        SHX6_2 = SHX0_2
        SHX7_2 = -1
        SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
        if SHX5_2 ~= SHX1_2 then
          SHX5_2 = GetSelectedPedWeapon
          SHX6_2 = SHX1_2
          SHX5_2 = SHX5_2(SHX6_2)
          if -1569615261 ~= SHX5_2 then
            goto SHX_LABEL_100
          end
        end
        SHX5_2 = SetPlayerCanDoDriveBy
        SHX6_2 = SHX2_2
        SHX7_2 = false
        SHX5_2(SHX6_2, SHX7_2)
        goto SHX_LABEL_153
        -- [FIX IF ERROR] Move ::SHX_LABEL_100:: outside nested blocks until all 'goto SHX_LABEL_100' can see it
        ::SHX_LABEL_100::
        SHX5_2 = SetPlayerCanDoDriveBy
        SHX6_2 = SHX2_2
        SHX7_2 = true
        SHX5_2(SHX6_2, SHX7_2)
        SHX4_2 = false
      else
        SHX5_2 = GetVehicleClass
        SHX6_2 = SHX0_2
        SHX5_2 = SHX5_2(SHX6_2)
        if 15 == SHX5_2 then
          SHX5_2 = CMG
          SHX5_2 = SHX5_2.hasClientPermission
          SHX6_2 = "police.onduty.permission"
          SHX5_2 = SHX5_2(SHX6_2)
          if SHX5_2 then
            SHX5_2 = SetPlayerCanDoDriveBy
            SHX6_2 = SHX2_2
            SHX7_2 = true
            SHX5_2(SHX6_2, SHX7_2)
            SHX4_2 = false
        end
        else
          SHX5_2 = SHX2_1
          SHX5_2 = SHX5_2[SHX3_2]
          if SHX5_2 then
            SHX5_2 = CMG
            SHX5_2 = SHX5_2.hasClientPermission
            SHX6_2 = "police.onduty.permission"
            SHX5_2 = SHX5_2(SHX6_2)
            if SHX5_2 then
              SHX5_2 = CMG
              SHX5_2 = SHX5_2.hasClientPermission
              SHX6_2 = "arvtrained.permission"
              SHX5_2 = SHX5_2(SHX6_2)
              if SHX5_2 then
                SHX5_2 = SetPlayerCanDoDriveBy
                SHX6_2 = SHX2_2
                SHX7_2 = true
                SHX5_2(SHX6_2, SHX7_2)
                SHX5_2 = DisableControlAction
                SHX6_2 = 0
                SHX7_2 = 92
                SHX8_2 = true
                SHX5_2(SHX6_2, SHX7_2, SHX8_2)
            end
          end
          else
            SHX5_2 = SetPlayerCanDoDriveBy
            SHX6_2 = SHX2_2
            SHX7_2 = false
            SHX5_2(SHX6_2, SHX7_2)
          end
        end
      end
    end
    -- [FIX IF ERROR] Move ::SHX_LABEL_153:: outside nested blocks until all 'goto SHX_LABEL_153' can see it
    ::SHX_LABEL_153::
    if SHX4_2 then
      SHX5_2 = DisableControlAction
      SHX6_2 = 0
      SHX7_2 = 69
      SHX8_2 = true
      SHX5_2(SHX6_2, SHX7_2, SHX8_2)
      SHX5_2 = DisableControlAction
      SHX6_2 = 0
      SHX7_2 = 70
      SHX8_2 = true
      SHX5_2(SHX6_2, SHX7_2, SHX8_2)
      SHX5_2 = DisableControlAction
      SHX6_2 = 0
      SHX7_2 = 114
      SHX8_2 = true
      SHX5_2(SHX6_2, SHX7_2, SHX8_2)
      SHX5_2 = DisableControlAction
      SHX6_2 = 0
      SHX7_2 = 331
      SHX8_2 = true
      SHX5_2(SHX6_2, SHX7_2, SHX8_2)
      SHX5_2 = DisableControlAction
      SHX6_2 = 0
      SHX7_2 = 68
      SHX8_2 = true
      SHX5_2(SHX6_2, SHX7_2, SHX8_2)
      SHX5_2 = DisableControlAction
      SHX6_2 = 0
      SHX7_2 = 66
      SHX8_2 = true
      SHX5_2(SHX6_2, SHX7_2, SHX8_2)
      SHX5_2 = DisableControlAction
      SHX6_2 = 0
      SHX7_2 = 67
      SHX8_2 = true
      SHX5_2(SHX6_2, SHX7_2, SHX8_2)
      SHX5_2 = DisableControlAction
      SHX6_2 = 0
      SHX7_2 = 92
      SHX8_2 = true
      SHX5_2(SHX6_2, SHX7_2, SHX8_2)
      SHX5_2 = DisableControlAction
      SHX6_2 = 0
      SHX7_2 = 24
      SHX8_2 = true
      SHX5_2(SHX6_2, SHX7_2, SHX8_2)
      SHX5_2 = DisableControlAction
      SHX6_2 = 0
      SHX7_2 = 257
      SHX8_2 = true
      SHX5_2(SHX6_2, SHX7_2, SHX8_2)
    end
  else
    SHX2_2 = GetEntityAttachedTo
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if 0 ~= SHX2_2 then
      SHX3_2 = DisableControlAction
      SHX4_2 = 0
      SHX5_2 = 24
      SHX6_2 = true
      SHX3_2(SHX4_2, SHX5_2, SHX6_2)
      SHX3_2 = DisableControlAction
      SHX4_2 = 0
      SHX5_2 = 257
      SHX6_2 = true
      SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    end
  end
end
SHX6_1 = CMG
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  if SHX0_2 then
    SHX1_2 = SetPlayerCanDoDriveBy
    SHX2_2 = PlayerId
    SHX2_2 = SHX2_2()
    SHX3_2 = true
    SHX1_2(SHX2_2, SHX3_2)
  end
  SHX4_1 = SHX0_2
end
SHX6_1.enableDriveBy = SHX7_1
SHX6_1 = CMG
SHX6_1 = SHX6_1.registerCommand
SHX7_1 = "undriveby"
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getClientUserId
  SHX0_2 = SHX0_2()
  if 1 ~= SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.getClientUserId
    SHX0_2 = SHX0_2()
    if 2 ~= SHX0_2 then
      goto SHX_LABEL_16
    end
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.enableDriveBy
  SHX1_2 = SHX4_1
  SHX1_2 = not SHX1_2
  SHX0_2(SHX1_2)
  -- [FIX IF ERROR] Move ::SHX_LABEL_16:: outside nested blocks until all 'goto SHX_LABEL_16' can see it
  ::SHX_LABEL_16::
end
SHX9_1 = false
SHX6_1(SHX7_1, SHX8_1, SHX9_1)
SHX6_1 = CMG
SHX6_1 = SHX6_1.createThreadOnTick
SHX7_1 = SHX5_1
SHX8_1 = "Drive By"
SHX6_1(SHX7_1, SHX8_1)
SHX6_1 = CMG
SHX6_1 = SHX6_1.registerDevMenuItems
SHX7_1 = "Drive By"
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Checkbox
  SHX1_2 = "Debug Enabled"
  SHX2_2 = ""
  SHX3_2 = SHX1_1.drawDebug
  SHX4_2 = {}
  function SHX5_2(SHX0_3, SHX1_3, SHX2_3, SHX3_3)
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    SHX1_1.drawDebug = SHX3_3
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX6_1(SHX7_1, SHX8_1)
