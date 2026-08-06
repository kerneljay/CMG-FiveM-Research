-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1
SHX0_1 = RMenu
SHX0_1 = SHX0_1.Add
SHX1_1 = "nhs"
SHX2_1 = "main"
SHX3_1 = RageUI
SHX3_1 = SHX3_1.CreateMenu
SHX4_1 = "NHS"
SHX5_1 = "Status: ~b~Available"
SHX6_1 = CMG
SHX6_1 = SHX6_1.getRageUIMenuWidth
SHX6_1 = SHX6_1()
SHX7_1 = CMG
SHX7_1 = SHX7_1.getRageUIMenuHeight
SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1 = SHX7_1()
SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1 = SHX3_1(SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1)
SHX0_1(SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1)
SHX0_1 = RegisterKeyMapping
SHX1_1 = "nhs"
SHX2_1 = "NHS Menu"
SHX3_1 = "keyboard"
SHX4_1 = "U"
SHX0_1(SHX1_1, SHX2_1, SHX3_1, SHX4_1)
SHX0_1 = TriggerEvent
SHX1_1 = "chat:addSuggestion"
SHX2_1 = "/nhs"
SHX3_1 = "Toggle the NHS Menu"
SHX0_1(SHX1_1, SHX2_1, SHX3_1)
SHX0_1 = 0
SHX1_1 = 0
SHX2_1 = RegisterNetEvent
SHX3_1 = "ae21bf16d8"
function SHX4_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX2_2 = GetEntityCoords
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerPed
  SHX3_2, SHX4_2, SHX5_2 = SHX3_2()
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX3_2 = SHX2_2 - SHX0_2
  SHX3_2 = #SHX3_2
  if SHX3_2 <= 15 then
    SHX4_2 = SendNUIMessage
    SHX5_2 = {}
    SHX5_2.transactionType = SHX1_2
    SHX4_2(SHX5_2)
  end
end
SHX2_1(SHX3_1, SHX4_1)
SHX2_1 = RegisterCommand
SHX3_1 = "nhs"
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hasClientPermission
  SHX1_2 = "nhs.onduty.permission"
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.hasClientPermission
    SHX1_2 = "lfb.onduty.permission"
    SHX0_2 = SHX0_2(SHX1_2)
    if not SHX0_2 then
      goto SHX_LABEL_40
    end
  end
  SHX0_2 = RageUI
  SHX0_2 = SHX0_2.Visible
  SHX1_2 = RMenu
  SHX2_2 = SHX1_2
  SHX1_2 = SHX1_2.Get
  SHX3_2 = "nhs"
  SHX4_2 = "main"
  SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  if not SHX0_2 then
    SHX0_2 = RageUI
    SHX0_2 = SHX0_2.Visible
    SHX1_2 = RMenu
    SHX2_2 = SHX1_2
    SHX1_2 = SHX1_2.Get
    SHX3_2 = "nhs"
    SHX4_2 = "main"
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX2_2 = RageUI
    SHX2_2 = SHX2_2.Visible
    SHX3_2 = RMenu
    SHX4_2 = SHX3_2
    SHX3_2 = SHX3_2.Get
    SHX5_2 = "nhs"
    SHX6_2 = "main"
    SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    SHX2_2 = not SHX2_2
    SHX0_2(SHX1_2, SHX2_2)
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_40:: outside nested blocks until all 'goto SHX_LABEL_40' can see it
  ::SHX_LABEL_40::
end
SHX5_1 = false
SHX2_1(SHX3_1, SHX4_1, SHX5_1)
SHX2_1 = {}
SHX3_1 = 126349499
SHX2_1[SHX3_1] = true
SHX3_1 = -1554970529
SHX2_1[SHX3_1] = true
SHX3_1 = -243142012
SHX2_1[SHX3_1] = true
SHX3_1 = 883325847
SHX2_1[SHX3_1] = true
SHX3_1 = 101631238
SHX2_1[SHX3_1] = true
SHX3_1 = -72657034
SHX2_1[SHX3_1] = true
SHX3_1 = 1953687840
SHX2_1[SHX3_1] = true
SHX3_1 = 898258641
SHX2_1[SHX3_1] = true
SHX3_1 = false
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hasClientPermission
  SHX1_2 = "nhs.onduty.permission"
  SHX0_2 = SHX0_2(SHX1_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.isDevMode
  SHX1_2 = SHX1_2()
  if not SHX1_2 then
    if not SHX0_2 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.hasClientPermission
      SHX2_2 = "lfb.onduty.permission"
      SHX1_2 = SHX1_2(SHX2_2)
      if not SHX1_2 then
        SHX1_2 = CMG
        SHX1_2 = SHX1_2.hasClientPermission
        SHX2_2 = "aa.onduty.permission"
        SHX1_2 = SHX1_2(SHX2_2)
        if not SHX1_2 then
          SHX1_2 = CMG
          SHX1_2 = SHX1_2.isWorkingInBusiness
          SHX1_2 = SHX1_2()
          if not SHX1_2 then
            goto SHX_LABEL_72
          end
        end
      end
    end
    SHX1_2 = SHX3_1
    if SHX1_2 then
      SHX1_2 = DrawAdvancedText
      SHX2_2 = 0.971
      SHX3_2 = 0.914
      SHX4_2 = 0.005
      SHX5_2 = 0.0028
      SHX6_2 = 0.6
      SHX7_2 = "You are off duty"
      SHX8_2 = 255
      SHX9_2 = 51
      SHX10_2 = 51
      SHX11_2 = 255
      SHX12_2 = 2
      SHX13_2 = 0
      SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    end
    SHX1_2 = PlayerPedId
    SHX1_2 = SHX1_2()
    SHX2_2 = GetSelectedPedWeapon
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if -1569615261 ~= SHX2_2 then
      SHX3_2 = SHX2_1
      SHX3_2 = SHX3_2[SHX2_2]
      if not SHX3_2 then
        SHX3_2 = CMG
        SHX3_2 = SHX3_2.hasClientPermission
        SHX4_2 = "aa.onduty.permission"
        SHX3_2 = SHX3_2(SHX4_2)
        if SHX3_2 then
          SHX3_2 = notify
          SHX4_2 = "~r~You can not equip a weapon whilst on the Mechanic Job"
          SHX3_2(SHX4_2)
        end
        SHX3_2 = CMG
        SHX3_2 = SHX3_2.setWeapon
        SHX4_2 = SHX1_2
        SHX5_2 = -1569615261
        SHX6_2 = true
        SHX3_2(SHX4_2, SHX5_2, SHX6_2)
      end
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_72:: outside nested blocks until all 'goto SHX_LABEL_72' can see it
  ::SHX_LABEL_72::
  if SHX0_2 then
    SHX1_2 = SHX0_1
    if SHX1_2 > 0 then
      SHX1_2 = SHX0_1
      SHX2_2 = GetGameTimer
      SHX2_2 = SHX2_2()
      SHX1_2 = SHX1_2 - SHX2_2
      if SHX1_2 > 0 then
        SHX2_2 = DrawAdvancedText
        SHX3_2 = 0.985
        SHX4_2 = 0.805
        SHX5_2 = 0.005
        SHX6_2 = 0.0028
        SHX7_2 = 0.467
        SHX8_2 = "REVIVE COOLDOWN: "
        SHX9_2 = math
        SHX9_2 = SHX9_2.floor
        SHX10_2 = SHX1_2 / 1000
        SHX9_2 = SHX9_2(SHX10_2)
        SHX10_2 = " seconds"
        SHX8_2 = SHX8_2 .. SHX9_2 .. SHX10_2
        SHX9_2 = 51
        SHX10_2 = 255
        SHX11_2 = 51
        SHX12_2 = 255
        SHX13_2 = 7
        SHX14_2 = 0
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
      else
        SHX2_2 = 0
        SHX0_1 = SHX2_2
      end
    end
    SHX1_2 = SHX1_1
    if SHX1_2 > 0 then
      SHX1_2 = SHX1_1
      SHX2_2 = GetGameTimer
      SHX2_2 = SHX2_2()
      SHX1_2 = SHX1_2 - SHX2_2
      if SHX1_2 > 0 then
        SHX2_2 = DrawAdvancedText
        SHX3_2 = 0.985
        SHX4_2 = 0.845
        SHX5_2 = 0.005
        SHX6_2 = 0.0028
        SHX7_2 = 0.467
        SHX8_2 = "BODYBAG COOLDOWN: "
        SHX9_2 = math
        SHX9_2 = SHX9_2.floor
        SHX10_2 = SHX1_2 / 1000
        SHX9_2 = SHX9_2(SHX10_2)
        SHX10_2 = " seconds"
        SHX8_2 = SHX8_2 .. SHX9_2 .. SHX10_2
        SHX9_2 = 51
        SHX10_2 = 255
        SHX11_2 = 51
        SHX12_2 = 255
        SHX13_2 = 7
        SHX14_2 = 0
        SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
      else
        SHX2_2 = 0
        SHX1_1 = SHX2_2
      end
    end
  end
end
SHX5_1 = CMG
SHX5_1 = SHX5_1.createThreadOnTick
SHX6_1 = SHX4_1
SHX7_1 = "NHS Weapon Whitelisting"
SHX5_1(SHX6_1, SHX7_1)
SHX5_1 = CMG
SHX5_1 = SHX5_1.loadModule
SHX6_1 = "cfg/cfg_garages"
SHX5_1 = SHX5_1(SHX6_1)
SHX6_1 = CMG
SHX6_1 = SHX6_1.loadModule
SHX7_1 = "cfg/cfg_stretcher"
SHX6_1 = SHX6_1(SHX7_1)
if not SHX6_1 then
  SHX6_1 = {}
end
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  if 0 ~= SHX0_2 then
    SHX1_2 = IsEntityAVehicle
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      goto SHX_LABEL_10
    end
  end
  SHX1_2 = false
  return SHX1_2
  -- [FIX IF ERROR] Move ::SHX_LABEL_10:: outside nested blocks until all 'goto SHX_LABEL_10' can see it
  ::SHX_LABEL_10::
  SHX1_2 = GetEntityModel
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if -956048545 == SHX1_2 then
    SHX2_2 = true
    return SHX2_2
  end
  SHX2_2 = SHX6_1.stretcherModels
  if SHX2_2 then
    SHX2_2 = SHX6_1.stretcherModels
    SHX2_2 = SHX2_2[SHX1_2]
    if SHX2_2 then
      SHX2_2 = true
      return SHX2_2
    end
  end
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getVehicleIdFromModel
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 then
    SHX3_2 = SHX5_1.garages
    if SHX3_2 then
      SHX3_2 = SHX5_1.garages
      SHX3_2 = SHX3_2["Health Service Vehicles"]
      if SHX3_2 then
        SHX3_2 = SHX5_1.garages
        SHX3_2 = SHX3_2["Health Service Vehicles"]
        SHX3_2 = SHX3_2[SHX2_2]
        if SHX3_2 then
          SHX3_2 = true
          return SHX3_2
        end
      end
      SHX3_2 = SHX5_1.garages
      SHX3_2 = SHX3_2["Health Service Helicopters"]
      if SHX3_2 then
        SHX3_2 = SHX5_1.garages
        SHX3_2 = SHX3_2["Health Service Helicopters"]
        SHX3_2 = SHX3_2[SHX2_2]
        if SHX3_2 then
          SHX3_2 = true
          return SHX3_2
        end
      end
    end
  end
  SHX3_2 = false
  return SHX3_2
end
SHX8_1 = 0
SHX9_1 = "~r~You can only use HS vehicles whilst clocked on."
SHX10_1 = 0
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  if 0 ~= SHX0_2 then
    SHX1_2 = DoesEntityExist
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if SHX1_2 then
      goto SHX_LABEL_9
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_9:: outside nested blocks until all 'goto SHX_LABEL_9' can see it
  ::SHX_LABEL_9::
  SHX1_2 = NetworkRequestControlOfEntity
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = NetworkHasControlOfEntity
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = SetEntityAsMissionEntity
    SHX2_2 = SHX0_2
    SHX3_2 = true
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = DeleteEntity
    SHX2_2 = SHX0_2
    SHX1_2(SHX2_2)
  end
end
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX0_2 = SHX10_1
  if 0 ~= SHX0_2 then
    SHX0_2 = SHX10_1
    SHX1_2 = DoesEntityExist
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if not SHX1_2 then
      SHX1_2 = 0
      SHX10_1 = SHX1_2
    else
      SHX1_2 = SHX11_1
      SHX2_2 = SHX0_2
      SHX1_2(SHX2_2)
      SHX1_2 = DoesEntityExist
      SHX2_2 = SHX0_2
      SHX1_2 = SHX1_2(SHX2_2)
      if not SHX1_2 then
        SHX1_2 = 0
        SHX10_1 = SHX1_2
      end
    end
  end
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hasClientPermission
  SHX1_2 = "nhs.onduty.permission"
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX0_2 = CMG
    SHX0_2 = SHX0_2.hasClientPermission
    SHX1_2 = "doctor.permission"
    SHX0_2 = SHX0_2(SHX1_2)
    if not SHX0_2 then
      goto SHX_LABEL_36
    end
  end
  return
  -- [FIX IF ERROR] Move ::SHX_LABEL_36:: outside nested blocks until all 'goto SHX_LABEL_36' can see it
  ::SHX_LABEL_36::
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.isJobTutorialRunning
  SHX0_2 = SHX0_2()
  if SHX0_2 then
    return
  end
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  SHX1_2 = GetVehiclePedIsEntering
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if 0 ~= SHX1_2 then
    SHX2_2 = SHX7_1
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if not SHX2_2 then
      SHX2_2 = ClearPedTasks
      SHX3_2 = SHX0_2
      SHX2_2(SHX3_2)
      SHX2_2 = notify
      SHX3_2 = SHX9_1
      SHX2_2(SHX3_2)
    end
  end
  SHX2_2 = GetVehiclePedIsIn
  SHX3_2 = SHX0_2
  SHX4_2 = false
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  if 0 ~= SHX2_2 then
    SHX3_2 = SHX7_1
    SHX4_2 = SHX2_2
    SHX3_2 = SHX3_2(SHX4_2)
    if not SHX3_2 then
      SHX3_2 = GetPedInVehicleSeat
      SHX4_2 = SHX2_2
      SHX5_2 = -1
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
      SHX3_2 = SHX3_2 == SHX0_2
      SHX4_2 = GetOffsetFromEntityInWorldCoords
      SHX5_2 = SHX2_2
      SHX6_2 = 1.8
      SHX7_2 = 0.0
      SHX8_2 = 0.3
      SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2)
      SHX5_2 = GetGroundZFor_3dCoord
      SHX6_2 = SHX4_2.x
      SHX7_2 = SHX4_2.y
      SHX8_2 = SHX4_2.z
      SHX8_2 = SHX8_2 + 1.0
      SHX9_2 = 0
      SHX10_2 = false
      SHX5_2, SHX6_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
      if SHX5_2 and SHX6_2 > 0.0 then
        SHX7_2 = SHX6_2 + 0.5
        if SHX7_2 then
          goto SHX_LABEL_105
        end
      end
      SHX7_2 = SHX4_2.z
      SHX7_2 = SHX7_2 + 0.5
      -- [FIX IF ERROR] Move ::SHX_LABEL_105:: outside nested blocks until all 'goto SHX_LABEL_105' can see it
      ::SHX_LABEL_105::
      SHX8_2 = SetEntityCoordsNoOffset
      SHX9_2 = SHX0_2
      SHX10_2 = SHX4_2.x
      SHX11_2 = SHX4_2.y
      SHX12_2 = SHX7_2
      SHX13_2 = false
      SHX14_2 = false
      SHX15_2 = false
      SHX8_2(SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
      SHX8_2 = ClearPedTasksImmediately
      SHX9_2 = SHX0_2
      SHX8_2(SHX9_2)
      if SHX3_2 then
        SHX10_1 = SHX2_2
        SHX8_2 = SHX11_1
        SHX9_2 = SHX2_2
        SHX8_2(SHX9_2)
        SHX8_2 = DoesEntityExist
        SHX9_2 = SHX2_2
        SHX8_2 = SHX8_2(SHX9_2)
        if not SHX8_2 then
          SHX8_2 = 0
          SHX10_1 = SHX8_2
        end
      end
      SHX8_2 = GetGameTimer
      SHX8_2 = SHX8_2()
      SHX9_2 = SHX8_1
      if SHX8_2 >= SHX9_2 then
        SHX9_2 = SHX8_2 + 4000
        SHX8_1 = SHX9_2
        SHX9_2 = notify
        SHX10_2 = SHX9_1
        SHX9_2(SHX10_2)
      end
    end
  end
end
SHX13_1 = CMG
SHX13_1 = SHX13_1.createThreadOnTick
SHX14_1 = SHX12_1
SHX15_1 = "NHS Vehicle Restrict"
SHX13_1(SHX14_1, SHX15_1)
SHX13_1 = RegisterNetEvent
SHX14_1 = "767e50aac4"
function SHX15_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX3_1 = SHX0_2
end
SHX13_1(SHX14_1, SHX15_1)
SHX13_1 = {}
SHX13_1.running = false
SHX13_1.cancelled = false
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX1_2 = SHX0_2.isMedicTrained
  if SHX1_2 then
    SHX1_2 = "mini@cpr@char_b@cpr_def"
    if SHX1_2 then
      goto SHX_LABEL_8
    end
  end
  SHX1_2 = "mini@cpr@char_b@cpr_str"
  -- [FIX IF ERROR] Move ::SHX_LABEL_8:: outside nested blocks until all 'goto SHX_LABEL_8' can see it
  ::SHX_LABEL_8::
  SHX2_2 = SHX0_2.isMedicTrained
  if SHX2_2 then
    SHX2_2 = "cpr_intro"
    if SHX2_2 then
      goto SHX_LABEL_15
    end
  end
  SHX2_2 = "cpr_pumpchest"
  -- [FIX IF ERROR] Move ::SHX_LABEL_15:: outside nested blocks until all 'goto SHX_LABEL_15' can see it
  ::SHX_LABEL_15::
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.loadAnimDict
  SHX4_2 = SHX1_2
  SHX3_2(SHX4_2)
  SHX3_2 = SHX0_2.sceneX
  SHX4_2 = SHX0_2.sceneY
  SHX5_2 = GetAnimInitialOffsetPosition
  SHX6_2 = SHX1_2
  SHX7_2 = SHX2_2
  SHX8_2 = SHX3_2
  SHX9_2 = SHX4_2
  SHX10_2 = SHX0_2.sceneZ
  SHX11_2 = 0.0
  SHX12_2 = 0.0
  SHX13_2 = SHX0_2.sceneHeading
  SHX14_2 = 2
  SHX15_2 = 2
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX6_2 = SHX5_2.x
  SHX6_2 = SHX6_2 - SHX3_2
  SHX6_2 = SHX3_2 - SHX6_2
  SHX0_2.sceneX = SHX6_2
  SHX6_2 = SHX5_2.y
  SHX6_2 = SHX6_2 - SHX4_2
  SHX6_2 = SHX4_2 - SHX6_2
  SHX0_2.sceneY = SHX6_2
end
function SHX15_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX1_2 = true
  SHX2_2 = SHX0_2.holdLastFrame
  if false == SHX2_2 then
    SHX1_2 = false
  end
  SHX2_2 = SHX0_2.speed
  if not SHX2_2 then
    SHX2_2 = 1.0
  end
  SHX3_2 = NetworkCreateSynchronisedScene
  SHX4_2 = SHX0_2.x
  SHX5_2 = SHX0_2.y
  SHX6_2 = SHX0_2.z
  SHX7_2 = 0.0
  SHX8_2 = 0.0
  SHX9_2 = SHX0_2.heading
  SHX10_2 = 2
  SHX11_2 = SHX1_2
  SHX12_2 = false
  SHX13_2 = 1065353216
  SHX14_2 = 0
  SHX15_2 = SHX2_2
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX4_2 = NetworkAddPedToSynchronisedScene
  SHX5_2 = SHX0_2.ped
  SHX6_2 = SHX3_2
  SHX7_2 = SHX0_2.animDict
  SHX8_2 = SHX0_2.anim
  SHX9_2 = 8.0
  SHX10_2 = -8.0
  SHX11_2 = 0
  SHX12_2 = 0
  SHX13_2 = 1000.0
  SHX14_2 = 0
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX4_2 = NetworkStartSynchronisedScene
  SHX5_2 = SHX3_2
  SHX4_2(SHX5_2)
  SHX4_2 = SHX0_2.endEarlyMs
  if SHX4_2 then
    SHX4_2 = math
    SHX4_2 = SHX4_2.floor
    SHX5_2 = GetAnimDuration
    SHX6_2 = SHX0_2.animDict
    SHX7_2 = SHX0_2.anim
    SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
    SHX5_2 = SHX5_2 * 1000
    SHX4_2 = SHX4_2(SHX5_2)
    SHX5_2 = SHX0_2.endEarlyMs
    SHX5_2 = SHX4_2 - SHX5_2
    if SHX5_2 < 0 then
      SHX5_2 = 0
    end
    SHX6_2 = 0
    while SHX5_2 > SHX6_2 do
      SHX7_2 = SHX13_1.cancelled
      if SHX7_2 then
        break
      end
      SHX7_2 = math
      SHX7_2 = SHX7_2.min
      SHX8_2 = 100
      SHX9_2 = SHX5_2 - SHX6_2
      SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
      SHX8_2 = Wait
      SHX9_2 = SHX7_2
      SHX8_2(SHX9_2)
      SHX6_2 = SHX6_2 + SHX7_2
    end
    return SHX3_2
  end
  SHX4_2 = SHX0_2.chainPhase
  if not SHX4_2 then
    SHX4_2 = 0.92
  end
  SHX5_2 = GetGameTimer
  SHX5_2 = SHX5_2()
  SHX6_2 = math
  SHX6_2 = SHX6_2.floor
  SHX7_2 = GetAnimDuration
  SHX8_2 = SHX0_2.animDict
  SHX9_2 = SHX0_2.anim
  SHX7_2 = SHX7_2(SHX8_2, SHX9_2)
  SHX7_2 = SHX7_2 * 1000
  SHX7_2 = SHX7_2 + 250
  SHX6_2 = SHX6_2(SHX7_2)
  SHX5_2 = SHX5_2 + SHX6_2
  while true do
    SHX6_2 = GetGameTimer
    SHX6_2 = SHX6_2()
    if not (SHX5_2 > SHX6_2) then
      break
    end
    SHX6_2 = SHX13_1.cancelled
    if SHX6_2 then
      break
    end
    SHX6_2 = NetworkGetLocalSceneFromNetworkId
    SHX7_2 = SHX3_2
    SHX6_2 = SHX6_2(SHX7_2)
    if -1 ~= SHX6_2 then
      SHX7_2 = GetSynchronizedScenePhase
      SHX8_2 = SHX6_2
      SHX7_2 = SHX7_2(SHX8_2)
      if SHX4_2 <= SHX7_2 then
        break
      end
    end
    SHX7_2 = Wait
    SHX8_2 = 0
    SHX7_2(SHX8_2)
  end
  return SHX3_2
end
function SHX16_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = math
  SHX3_2 = SHX3_2.max
  SHX4_2 = 0
  SHX5_2 = math
  SHX5_2 = SHX5_2.min
  SHX6_2 = 3
  SHX7_2 = SHX0_2.cprPumpReduction
  if not SHX7_2 then
    SHX7_2 = 0
  end
  SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX5_2(SHX6_2, SHX7_2)
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX4_2 = math
  SHX4_2 = SHX4_2.max
  SHX5_2 = 1
  SHX6_2 = SHX0_2.isMedicTrained
  if SHX6_2 then
    SHX6_2 = 8
    if SHX6_2 then
      goto SHX_LABEL_25
    end
  end
  SHX6_2 = 16
  -- [FIX IF ERROR] Move ::SHX_LABEL_25:: outside nested blocks until all 'goto SHX_LABEL_25' can see it
  ::SHX_LABEL_25::
  SHX6_2 = SHX6_2 - SHX3_2
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.loadAnimDict
  SHX6_2 = "mini@cpr@char_a@cpr_def"
  SHX5_2(SHX6_2)
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.loadAnimDict
  SHX6_2 = "mini@cpr@char_a@cpr_str"
  SHX5_2(SHX6_2)
  SHX5_2 = ClearPedTasksImmediately
  SHX6_2 = SHX2_2
  SHX5_2(SHX6_2)
  SHX5_2 = FreezeEntityPosition
  SHX6_2 = SHX2_2
  SHX7_2 = true
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = nil
  SHX6_2 = SHX0_2.isMedicTrained
  if SHX6_2 then
    SHX6_2 = CMG
    SHX6_2 = SHX6_2.requestEntitySpawn
    SHX7_2 = "cpr_medicbag"
    SHX6_2(SHX7_2)
    SHX6_2 = GetOffsetFromEntityInWorldCoords
    SHX7_2 = SHX2_2
    SHX8_2 = 0.5
    SHX9_2 = 0.5
    SHX10_2 = 0.0
    SHX6_2 = SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2)
    SHX7_2 = CMG
    SHX7_2 = SHX7_2.loadModel
    SHX8_2 = -2140074399
    SHX7_2(SHX8_2)
    SHX7_2 = CreateObject
    SHX8_2 = -2140074399
    SHX9_2 = SHX6_2.x
    SHX10_2 = SHX6_2.y
    SHX11_2 = SHX6_2.z
    SHX12_2 = true
    SHX13_2 = true
    SHX14_2 = false
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
    SHX5_2 = SHX7_2
    SHX7_2 = PlaceObjectOnGroundProperly
    SHX8_2 = SHX5_2
    SHX7_2(SHX8_2)
    SHX7_2 = SetModelAsNoLongerNeeded
    SHX8_2 = -2140074399
    SHX7_2(SHX8_2)
  end
  function SHX6_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = SHX13_1.cancelled
    if SHX0_3 then
      SHX0_3 = SHX5_2
      if SHX0_3 then
        SHX0_3 = DoesEntityExist
        SHX1_3 = SHX5_2
        SHX0_3 = SHX0_3(SHX1_3)
        if SHX0_3 then
          SHX0_3 = DeleteEntity
          SHX1_3 = SHX5_2
          SHX0_3(SHX1_3)
        end
      end
      SHX0_3 = true
      return SHX0_3
    end
    SHX0_3 = false
    return SHX0_3
  end
  SHX7_2 = SHX0_2.isMedicTrained
  if SHX7_2 then
    SHX7_2 = SHX15_1
    SHX8_2 = {}
    SHX8_2.ped = SHX2_2
    SHX9_2 = SHX0_2.sceneX
    SHX8_2.x = SHX9_2
    SHX9_2 = SHX0_2.sceneY
    SHX8_2.y = SHX9_2
    SHX9_2 = SHX0_2.sceneZ
    SHX8_2.z = SHX9_2
    SHX9_2 = SHX0_2.sceneHeading
    SHX8_2.heading = SHX9_2
    SHX8_2.animDict = "mini@cpr@char_a@cpr_def"
    SHX8_2.anim = "cpr_intro"
    SHX8_2.chainPhase = 0.98
    SHX8_2.holdLastFrame = true
    SHX7_2(SHX8_2)
    SHX7_2 = SHX6_2
    SHX7_2 = SHX7_2()
    if SHX7_2 then
      return
    end
    SHX7_2 = 1
    SHX8_2 = SHX4_2
    SHX9_2 = 1
    for SHX10_2 = SHX7_2, SHX8_2, SHX9_2 do
      SHX11_2 = SHX15_1
      SHX12_2 = {}
      SHX12_2.ped = SHX2_2
      SHX13_2 = SHX0_2.sceneX
      SHX12_2.x = SHX13_2
      SHX13_2 = SHX0_2.sceneY
      SHX12_2.y = SHX13_2
      SHX13_2 = SHX0_2.sceneZ
      SHX12_2.z = SHX13_2
      SHX13_2 = SHX0_2.sceneHeading
      SHX12_2.heading = SHX13_2
      SHX12_2.animDict = "mini@cpr@char_a@cpr_str"
      SHX12_2.anim = "cpr_pumpchest"
      SHX12_2.chainPhase = 0.9
      SHX12_2.holdLastFrame = true
      SHX11_2(SHX12_2)
      SHX11_2 = SHX6_2
      SHX11_2 = SHX11_2()
      if SHX11_2 then
        return
      end
    end
    SHX7_2 = SHX15_1
    SHX8_2 = {}
    SHX8_2.ped = SHX2_2
    SHX9_2 = SHX0_2.sceneX
    SHX8_2.x = SHX9_2
    SHX9_2 = SHX0_2.sceneY
    SHX8_2.y = SHX9_2
    SHX9_2 = SHX0_2.sceneZ
    SHX8_2.z = SHX9_2
    SHX9_2 = SHX0_2.sceneHeading
    SHX8_2.heading = SHX9_2
    SHX8_2.animDict = "mini@cpr@char_a@cpr_str"
    SHX8_2.anim = "cpr_cpr_to_kol"
    SHX8_2.chainPhase = 0.98
    SHX8_2.holdLastFrame = true
    SHX7_2(SHX8_2)
    SHX7_2 = SHX6_2
    SHX7_2 = SHX7_2()
    if SHX7_2 then
      return
    end
    SHX7_2 = SHX15_1
    SHX8_2 = {}
    SHX8_2.ped = SHX2_2
    SHX9_2 = SHX0_2.sceneX
    SHX8_2.x = SHX9_2
    SHX9_2 = SHX0_2.sceneY
    SHX8_2.y = SHX9_2
    SHX9_2 = SHX0_2.sceneZ
    SHX8_2.z = SHX9_2
    SHX9_2 = SHX0_2.sceneHeading
    SHX8_2.heading = SHX9_2
    SHX8_2.animDict = "mini@cpr@char_a@cpr_str"
    SHX8_2.anim = "cpr_kol"
    SHX8_2.chainPhase = 0.95
    SHX8_2.holdLastFrame = true
    SHX7_2(SHX8_2)
    SHX7_2 = SHX6_2
    SHX7_2 = SHX7_2()
    if SHX7_2 then
      return
    end
    SHX7_2 = SHX15_1
    SHX8_2 = {}
    SHX8_2.ped = SHX2_2
    SHX9_2 = SHX0_2.sceneX
    SHX8_2.x = SHX9_2
    SHX9_2 = SHX0_2.sceneY
    SHX8_2.y = SHX9_2
    SHX9_2 = SHX0_2.sceneZ
    SHX8_2.z = SHX9_2
    SHX9_2 = SHX0_2.sceneHeading
    SHX8_2.heading = SHX9_2
    SHX8_2.animDict = "mini@cpr@char_a@cpr_str"
    SHX8_2.anim = "cpr_kol_to_cpr"
    SHX8_2.chainPhase = 0.98
    SHX8_2.holdLastFrame = true
    SHX7_2(SHX8_2)
    SHX7_2 = SHX6_2
    SHX7_2 = SHX7_2()
    if SHX7_2 then
      return
    end
    SHX7_2 = 1
    SHX8_2 = SHX4_2
    SHX9_2 = 1
    for SHX10_2 = SHX7_2, SHX8_2, SHX9_2 do
      SHX11_2 = SHX15_1
      SHX12_2 = {}
      SHX12_2.ped = SHX2_2
      SHX13_2 = SHX0_2.sceneX
      SHX12_2.x = SHX13_2
      SHX13_2 = SHX0_2.sceneY
      SHX12_2.y = SHX13_2
      SHX13_2 = SHX0_2.sceneZ
      SHX12_2.z = SHX13_2
      SHX13_2 = SHX0_2.sceneHeading
      SHX12_2.heading = SHX13_2
      SHX12_2.animDict = "mini@cpr@char_a@cpr_str"
      SHX12_2.anim = "cpr_pumpchest"
      SHX12_2.chainPhase = 0.9
      SHX12_2.holdLastFrame = true
      SHX11_2(SHX12_2)
      SHX11_2 = SHX6_2
      SHX11_2 = SHX11_2()
      if SHX11_2 then
        return
      end
    end
  else
    SHX7_2 = 1
    SHX8_2 = SHX4_2
    SHX9_2 = 1
    for SHX10_2 = SHX7_2, SHX8_2, SHX9_2 do
      SHX11_2 = SHX15_1
      SHX12_2 = {}
      SHX12_2.ped = SHX2_2
      SHX13_2 = SHX0_2.sceneX
      SHX12_2.x = SHX13_2
      SHX13_2 = SHX0_2.sceneY
      SHX12_2.y = SHX13_2
      SHX13_2 = SHX0_2.sceneZ
      SHX12_2.z = SHX13_2
      SHX13_2 = SHX0_2.sceneHeading
      SHX12_2.heading = SHX13_2
      SHX12_2.animDict = "mini@cpr@char_a@cpr_str"
      SHX12_2.anim = "cpr_pumpchest"
      SHX12_2.chainPhase = 0.9
      SHX12_2.holdLastFrame = true
      SHX11_2(SHX12_2)
      SHX11_2 = SHX6_2
      SHX11_2 = SHX11_2()
      if SHX11_2 then
        return
      end
    end
  end
  SHX7_2 = SHX6_2
  SHX7_2 = SHX7_2()
  if SHX7_2 then
    return
  end
  if "success" == SHX1_2 then
    SHX7_2 = SHX15_1
    SHX8_2 = {}
    SHX8_2.ped = SHX2_2
    SHX9_2 = SHX0_2.sceneX
    SHX8_2.x = SHX9_2
    SHX9_2 = SHX0_2.sceneY
    SHX8_2.y = SHX9_2
    SHX9_2 = SHX0_2.sceneZ
    SHX8_2.z = SHX9_2
    SHX9_2 = SHX0_2.sceneHeading
    SHX8_2.heading = SHX9_2
    SHX8_2.animDict = "mini@cpr@char_a@cpr_str"
    SHX8_2.anim = "cpr_success"
    SHX8_2.holdLastFrame = false
    SHX8_2.endEarlyMs = 13500
    SHX8_2.speed = 1.5
    SHX7_2(SHX8_2)
    SHX7_2 = SHX6_2
    SHX7_2 = SHX7_2()
    if SHX7_2 then
      return
    end
  elseif "fail" == SHX1_2 then
    SHX7_2 = SHX15_1
    SHX8_2 = {}
    SHX8_2.ped = SHX2_2
    SHX9_2 = SHX0_2.sceneX
    SHX8_2.x = SHX9_2
    SHX9_2 = SHX0_2.sceneY
    SHX8_2.y = SHX9_2
    SHX9_2 = SHX0_2.sceneZ
    SHX8_2.z = SHX9_2
    SHX9_2 = SHX0_2.sceneHeading
    SHX8_2.heading = SHX9_2
    SHX8_2.animDict = "mini@cpr@char_a@cpr_str"
    SHX8_2.anim = "cpr_fail"
    SHX8_2.holdLastFrame = false
    SHX8_2.endEarlyMs = 21000
    SHX8_2.speed = 1.5
    SHX7_2(SHX8_2)
    SHX7_2 = SHX6_2
    SHX7_2 = SHX7_2()
    if SHX7_2 then
      return
    end
  end
  if SHX5_2 then
    SHX7_2 = DoesEntityExist
    SHX8_2 = SHX5_2
    SHX7_2 = SHX7_2(SHX8_2)
    if SHX7_2 then
      SHX7_2 = DeleteEntity
      SHX8_2 = SHX5_2
      SHX7_2(SHX8_2)
    end
  end
end
function SHX17_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = math
  SHX3_2 = SHX3_2.max
  SHX4_2 = 0
  SHX5_2 = math
  SHX5_2 = SHX5_2.min
  SHX6_2 = 3
  SHX7_2 = SHX0_2.cprPumpReduction
  if not SHX7_2 then
    SHX7_2 = 0
  end
  SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2 = SHX5_2(SHX6_2, SHX7_2)
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX4_2 = math
  SHX4_2 = SHX4_2.max
  SHX5_2 = 1
  SHX6_2 = SHX0_2.isMedicTrained
  if SHX6_2 then
    SHX6_2 = 8
    if SHX6_2 then
      goto SHX_LABEL_25
    end
  end
  SHX6_2 = 16
  -- [FIX IF ERROR] Move ::SHX_LABEL_25:: outside nested blocks until all 'goto SHX_LABEL_25' can see it
  ::SHX_LABEL_25::
  SHX6_2 = SHX6_2 - SHX3_2
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.loadAnimDict
  SHX6_2 = "mini@cpr@char_b@cpr_def"
  SHX5_2(SHX6_2)
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.loadAnimDict
  SHX6_2 = "mini@cpr@char_b@cpr_str"
  SHX5_2(SHX6_2)
  SHX5_2 = FreezeEntityPosition
  SHX6_2 = SHX2_2
  SHX7_2 = true
  SHX5_2(SHX6_2, SHX7_2)
  function SHX5_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = SHX13_1.cancelled
    return SHX0_3
  end
  SHX6_2 = SHX0_2.isMedicTrained
  if SHX6_2 then
    SHX6_2 = SHX15_1
    SHX7_2 = {}
    SHX7_2.ped = SHX2_2
    SHX8_2 = SHX0_2.sceneX
    SHX7_2.x = SHX8_2
    SHX8_2 = SHX0_2.sceneY
    SHX7_2.y = SHX8_2
    SHX8_2 = SHX0_2.sceneZ
    SHX7_2.z = SHX8_2
    SHX8_2 = SHX0_2.sceneHeading
    SHX7_2.heading = SHX8_2
    SHX7_2.animDict = "mini@cpr@char_b@cpr_def"
    SHX7_2.anim = "cpr_intro"
    SHX7_2.chainPhase = 0.98
    SHX7_2.holdLastFrame = true
    SHX6_2(SHX7_2)
    SHX6_2 = SHX5_2
    SHX6_2 = SHX6_2()
    if SHX6_2 then
      return
    end
    SHX6_2 = 1
    SHX7_2 = SHX4_2
    SHX8_2 = 1
    for SHX9_2 = SHX6_2, SHX7_2, SHX8_2 do
      SHX10_2 = SHX15_1
      SHX11_2 = {}
      SHX11_2.ped = SHX2_2
      SHX12_2 = SHX0_2.sceneX
      SHX11_2.x = SHX12_2
      SHX12_2 = SHX0_2.sceneY
      SHX11_2.y = SHX12_2
      SHX12_2 = SHX0_2.sceneZ
      SHX11_2.z = SHX12_2
      SHX12_2 = SHX0_2.sceneHeading
      SHX11_2.heading = SHX12_2
      SHX11_2.animDict = "mini@cpr@char_b@cpr_str"
      SHX11_2.anim = "cpr_pumpchest"
      SHX11_2.chainPhase = 0.9
      SHX11_2.holdLastFrame = true
      SHX10_2(SHX11_2)
      SHX10_2 = SHX5_2
      SHX10_2 = SHX10_2()
      if SHX10_2 then
        return
      end
    end
    SHX6_2 = SHX15_1
    SHX7_2 = {}
    SHX7_2.ped = SHX2_2
    SHX8_2 = SHX0_2.sceneX
    SHX7_2.x = SHX8_2
    SHX8_2 = SHX0_2.sceneY
    SHX7_2.y = SHX8_2
    SHX8_2 = SHX0_2.sceneZ
    SHX7_2.z = SHX8_2
    SHX8_2 = SHX0_2.sceneHeading
    SHX7_2.heading = SHX8_2
    SHX7_2.animDict = "mini@cpr@char_b@cpr_str"
    SHX7_2.anim = "cpr_cpr_to_kol"
    SHX7_2.chainPhase = 0.98
    SHX7_2.holdLastFrame = true
    SHX6_2(SHX7_2)
    SHX6_2 = SHX5_2
    SHX6_2 = SHX6_2()
    if SHX6_2 then
      return
    end
    SHX6_2 = SHX15_1
    SHX7_2 = {}
    SHX7_2.ped = SHX2_2
    SHX8_2 = SHX0_2.sceneX
    SHX7_2.x = SHX8_2
    SHX8_2 = SHX0_2.sceneY
    SHX7_2.y = SHX8_2
    SHX8_2 = SHX0_2.sceneZ
    SHX7_2.z = SHX8_2
    SHX8_2 = SHX0_2.sceneHeading
    SHX7_2.heading = SHX8_2
    SHX7_2.animDict = "mini@cpr@char_b@cpr_str"
    SHX7_2.anim = "cpr_kol"
    SHX7_2.chainPhase = 0.95
    SHX7_2.holdLastFrame = true
    SHX6_2(SHX7_2)
    SHX6_2 = SHX5_2
    SHX6_2 = SHX6_2()
    if SHX6_2 then
      return
    end
    SHX6_2 = SHX15_1
    SHX7_2 = {}
    SHX7_2.ped = SHX2_2
    SHX8_2 = SHX0_2.sceneX
    SHX7_2.x = SHX8_2
    SHX8_2 = SHX0_2.sceneY
    SHX7_2.y = SHX8_2
    SHX8_2 = SHX0_2.sceneZ
    SHX7_2.z = SHX8_2
    SHX8_2 = SHX0_2.sceneHeading
    SHX7_2.heading = SHX8_2
    SHX7_2.animDict = "mini@cpr@char_b@cpr_str"
    SHX7_2.anim = "cpr_kol_to_cpr"
    SHX7_2.chainPhase = 0.98
    SHX7_2.holdLastFrame = true
    SHX6_2(SHX7_2)
    SHX6_2 = SHX5_2
    SHX6_2 = SHX6_2()
    if SHX6_2 then
      return
    end
    SHX6_2 = 1
    SHX7_2 = SHX4_2
    SHX8_2 = 1
    for SHX9_2 = SHX6_2, SHX7_2, SHX8_2 do
      SHX10_2 = SHX15_1
      SHX11_2 = {}
      SHX11_2.ped = SHX2_2
      SHX12_2 = SHX0_2.sceneX
      SHX11_2.x = SHX12_2
      SHX12_2 = SHX0_2.sceneY
      SHX11_2.y = SHX12_2
      SHX12_2 = SHX0_2.sceneZ
      SHX11_2.z = SHX12_2
      SHX12_2 = SHX0_2.sceneHeading
      SHX11_2.heading = SHX12_2
      SHX11_2.animDict = "mini@cpr@char_b@cpr_str"
      SHX11_2.anim = "cpr_pumpchest"
      SHX11_2.chainPhase = 0.9
      SHX11_2.holdLastFrame = true
      SHX10_2(SHX11_2)
      SHX10_2 = SHX5_2
      SHX10_2 = SHX10_2()
      if SHX10_2 then
        return
      end
    end
  else
    SHX6_2 = 1
    SHX7_2 = SHX4_2
    SHX8_2 = 1
    for SHX9_2 = SHX6_2, SHX7_2, SHX8_2 do
      SHX10_2 = SHX15_1
      SHX11_2 = {}
      SHX11_2.ped = SHX2_2
      SHX12_2 = SHX0_2.sceneX
      SHX11_2.x = SHX12_2
      SHX12_2 = SHX0_2.sceneY
      SHX11_2.y = SHX12_2
      SHX12_2 = SHX0_2.sceneZ
      SHX11_2.z = SHX12_2
      SHX12_2 = SHX0_2.sceneHeading
      SHX11_2.heading = SHX12_2
      SHX11_2.animDict = "mini@cpr@char_b@cpr_str"
      SHX11_2.anim = "cpr_pumpchest"
      SHX11_2.chainPhase = 0.9
      SHX11_2.holdLastFrame = true
      SHX10_2(SHX11_2)
    end
  end
  if "success" == SHX1_2 then
    SHX6_2 = SHX15_1
    SHX7_2 = {}
    SHX7_2.ped = SHX2_2
    SHX8_2 = SHX0_2.sceneX
    SHX7_2.x = SHX8_2
    SHX8_2 = SHX0_2.sceneY
    SHX7_2.y = SHX8_2
    SHX8_2 = SHX0_2.sceneZ
    SHX7_2.z = SHX8_2
    SHX8_2 = SHX0_2.sceneHeading
    SHX7_2.heading = SHX8_2
    SHX7_2.animDict = "mini@cpr@char_b@cpr_str"
    SHX7_2.anim = "cpr_success"
    SHX7_2.holdLastFrame = false
    SHX7_2.endEarlyMs = 13500
    SHX7_2.speed = 1.5
    SHX6_2(SHX7_2)
    SHX6_2 = SHX5_2
    SHX6_2 = SHX6_2()
    if SHX6_2 then
      return
    end
  elseif "fail" == SHX1_2 then
    SHX6_2 = SHX15_1
    SHX7_2 = {}
    SHX7_2.ped = SHX2_2
    SHX8_2 = SHX0_2.sceneX
    SHX7_2.x = SHX8_2
    SHX8_2 = SHX0_2.sceneY
    SHX7_2.y = SHX8_2
    SHX8_2 = SHX0_2.sceneZ
    SHX7_2.z = SHX8_2
    SHX8_2 = SHX0_2.sceneHeading
    SHX7_2.heading = SHX8_2
    SHX7_2.animDict = "mini@cpr@char_b@cpr_str"
    SHX7_2.anim = "cpr_fail"
    SHX7_2.holdLastFrame = false
    SHX7_2.endEarlyMs = 21000
    SHX7_2.speed = 1.5
    SHX6_2(SHX7_2)
    SHX6_2 = SHX5_2
    SHX6_2 = SHX6_2()
    if SHX6_2 then
      return
    end
  end
end
function SHX18_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX13_1.running
  if SHX1_2 then
    return
  end
  SHX13_1.running = true
  SHX13_1.cancelled = false
  SHX13_1.isMedic = true
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.setCanAnim
  SHX2_2 = false
  SHX1_2(SHX2_2)
  SHX1_2 = SHX14_1
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = SHX16_1
  SHX2_2 = SHX0_2
  SHX3_2 = SHX0_2.ending
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = ClearPedTasksImmediately
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
  SHX2_2 = FreezeEntityPosition
  SHX3_2 = SHX1_2
  SHX4_2 = false
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = tCMG
  SHX2_2 = SHX2_2.setCanAnim
  SHX3_2 = true
  SHX2_2(SHX3_2)
  SHX13_1.running = false
  SHX13_1.isMedic = false
  SHX2_2 = SHX13_1.cancelled
  if SHX2_2 then
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "8fb0826fdf"
    SHX2_2(SHX3_2)
  else
    SHX2_2 = SHX0_2.targetServerId
    if nil ~= SHX2_2 then
      SHX2_2 = TriggerServerEvent
      SHX3_2 = "d25660a87c"
      SHX4_2 = SHX0_2.targetServerId
      SHX5_2 = SHX0_2.ending
      SHX2_2(SHX3_2, SHX4_2, SHX5_2)
    end
  end
end
function SHX19_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2
  SHX1_2 = SHX13_1.running
  if SHX1_2 then
    return
  end
  SHX1_2 = TriggerEvent
  SHX2_2 = "505e07e36a"
  SHX1_2(SHX2_2)
  SHX13_1.running = true
  SHX13_1.cancelled = false
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.setCanAnim
  SHX2_2 = false
  SHX1_2(SHX2_2)
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = GetEntityCoords
  SHX3_2 = SHX1_2
  SHX4_2 = true
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  SHX3_2 = SHX2_2.x
  SHX0_2.sceneX = SHX3_2
  SHX3_2 = SHX2_2.y
  SHX0_2.sceneY = SHX3_2
  SHX3_2 = SHX14_1
  SHX4_2 = SHX0_2
  SHX3_2(SHX4_2)
  SHX3_2 = IsEntityDead
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  if not SHX3_2 then
    SHX3_2 = GetEntityHealth
    SHX4_2 = SHX1_2
    SHX3_2 = SHX3_2(SHX4_2)
    if not (SHX3_2 <= 100) then
      goto SHX_LABEL_44
    end
  end
  SHX3_2 = SetEntityHealth
  SHX4_2 = SHX1_2
  SHX5_2 = 102
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = ClearPedTasksImmediately
  SHX4_2 = SHX1_2
  SHX3_2(SHX4_2)
  -- [FIX IF ERROR] Move ::SHX_LABEL_44:: outside nested blocks until all 'goto SHX_LABEL_44' can see it
  ::SHX_LABEL_44::
  SHX3_2 = SHX17_1
  SHX4_2 = SHX0_2
  SHX5_2 = SHX0_2.ending
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = tCMG
  SHX3_2 = SHX3_2.isInComa
  SHX3_2 = SHX3_2()
  if SHX3_2 then
    SHX3_2 = GetEntityHealth
    SHX4_2 = SHX1_2
    SHX3_2 = SHX3_2(SHX4_2)
    SHX3_2 = SHX3_2 <= 102
  end
  if not SHX3_2 then
    SHX4_2 = ClearPedTasksImmediately
    SHX5_2 = SHX1_2
    SHX4_2(SHX5_2)
    SHX4_2 = FreezeEntityPosition
    SHX5_2 = SHX1_2
    SHX6_2 = false
    SHX4_2(SHX5_2, SHX6_2)
    SHX4_2 = Wait
    SHX5_2 = 150
    SHX4_2(SHX5_2)
    SHX4_2 = tCMG
    SHX4_2 = SHX4_2.setCanAnim
    SHX5_2 = true
    SHX4_2(SHX5_2)
    SHX13_1.running = false
    SHX4_2 = TriggerEvent
    SHX5_2 = "43128b61c1"
    SHX4_2(SHX5_2)
    return
  end
  SHX4_2 = SHX13_1.cancelled
  if SHX4_2 then
    SHX4_2 = ClearPedTasksImmediately
    SHX5_2 = SHX1_2
    SHX4_2(SHX5_2)
    SHX4_2 = SetEntityCollision
    SHX5_2 = SHX1_2
    SHX6_2 = true
    SHX7_2 = true
    SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    SHX4_2 = SetEntityVisible
    SHX5_2 = SHX1_2
    SHX6_2 = true
    SHX7_2 = true
    SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    SHX4_2 = SetEntityHealth
    SHX5_2 = SHX1_2
    SHX6_2 = 102
    SHX4_2(SHX5_2, SHX6_2)
    SHX4_2 = SetEntityInvincible
    SHX5_2 = SHX1_2
    SHX6_2 = true
    SHX4_2(SHX5_2, SHX6_2)
    SHX4_2 = FreezeEntityPosition
    SHX5_2 = SHX1_2
    SHX6_2 = false
    SHX4_2(SHX5_2, SHX6_2)
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.loadAnimDict
    SHX5_2 = "misslamar1dead_body"
    SHX4_2(SHX5_2)
    SHX4_2 = TaskPlayAnim
    SHX5_2 = SHX1_2
    SHX6_2 = "misslamar1dead_body"
    SHX7_2 = "dead_idle"
    SHX8_2 = 3.0
    SHX9_2 = 1.0
    SHX10_2 = -1
    SHX11_2 = 1
    SHX12_2 = 0
    SHX13_2 = false
    SHX14_2 = false
    SHX15_2 = false
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
    SHX4_2 = RemoveAnimDict
    SHX5_2 = "misslamar1dead_body"
    SHX4_2(SHX5_2)
    SHX4_2 = TriggerEvent
    SHX5_2 = "43128b61c1"
    SHX4_2(SHX5_2)
  else
    SHX4_2 = SHX0_2.ending
    if "success" == SHX4_2 then
      SHX4_2 = ClearPedTasksImmediately
      SHX5_2 = SHX1_2
      SHX4_2(SHX5_2)
      SHX4_2 = FreezeEntityPosition
      SHX5_2 = SHX1_2
      SHX6_2 = false
      SHX4_2(SHX5_2, SHX6_2)
    else
      SHX4_2 = SetEntityCollision
      SHX5_2 = SHX1_2
      SHX6_2 = true
      SHX7_2 = true
      SHX4_2(SHX5_2, SHX6_2, SHX7_2)
      SHX4_2 = SetEntityVisible
      SHX5_2 = SHX1_2
      SHX6_2 = true
      SHX7_2 = true
      SHX4_2(SHX5_2, SHX6_2, SHX7_2)
      SHX4_2 = SetEntityHealth
      SHX5_2 = SHX1_2
      SHX6_2 = 102
      SHX4_2(SHX5_2, SHX6_2)
      SHX4_2 = SetEntityInvincible
      SHX5_2 = SHX1_2
      SHX6_2 = true
      SHX4_2(SHX5_2, SHX6_2)
      SHX4_2 = FreezeEntityPosition
      SHX5_2 = SHX1_2
      SHX6_2 = false
      SHX4_2(SHX5_2, SHX6_2)
      SHX4_2 = CMG
      SHX4_2 = SHX4_2.loadAnimDict
      SHX5_2 = "misslamar1dead_body"
      SHX4_2(SHX5_2)
      SHX4_2 = TaskPlayAnim
      SHX5_2 = SHX1_2
      SHX6_2 = "misslamar1dead_body"
      SHX7_2 = "dead_idle"
      SHX8_2 = 3.0
      SHX9_2 = 1.0
      SHX10_2 = -1
      SHX11_2 = 1
      SHX12_2 = 0
      SHX13_2 = false
      SHX14_2 = false
      SHX15_2 = false
      SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
      SHX4_2 = RemoveAnimDict
      SHX5_2 = "misslamar1dead_body"
      SHX4_2(SHX5_2)
    end
  end
  SHX4_2 = Wait
  SHX5_2 = 150
  SHX4_2(SHX5_2)
  SHX4_2 = tCMG
  SHX4_2 = SHX4_2.setCanAnim
  SHX5_2 = true
  SHX4_2(SHX5_2)
  SHX13_1.running = false
  SHX4_2 = SHX0_2.ending
  if "success" ~= SHX4_2 then
    SHX4_2 = SHX13_1.cancelled
    if not SHX4_2 then
      SHX4_2 = TriggerEvent
      SHX5_2 = "43128b61c1"
      SHX4_2(SHX5_2)
    end
  end
end
SHX20_1 = RegisterNetEvent
SHX21_1 = "2114f6e305"
function SHX22_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX18_1
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
end
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = RegisterNetEvent
SHX21_1 = "505e07e36a"
function SHX22_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  if SHX0_2 then
    SHX1_2 = SHX19_1
    SHX2_2 = SHX0_2
    SHX1_2(SHX2_2)
  end
end
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = RegisterNetEvent
SHX21_1 = "a23fad560e"
function SHX22_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX13_1.cancelled = true
end
SHX20_1(SHX21_1, SHX22_1)
SHX20_1 = RegisterNetEvent
SHX21_1 = "4935c71079"
function SHX22_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX13_1.cancelled = true
end
SHX20_1(SHX21_1, SHX22_1)
function SHX20_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = BeginTextCommandDisplayHelp
  SHX1_2 = "STRING"
  SHX0_2(SHX1_2)
  SHX0_2 = AddTextEntry
  SHX1_2 = "CPR_CANCEL_HELP"
  SHX2_2 = "~INPUT_CELLPHONE_CANCEL~ Cancel CPR"
  SHX0_2(SHX1_2, SHX2_2)
  SHX0_2 = AddTextComponentSubstringTextLabel
  SHX1_2 = "CPR_CANCEL_HELP"
  SHX0_2(SHX1_2)
  SHX0_2 = EndTextCommandDisplayHelp
  SHX1_2 = 0
  SHX2_2 = false
  SHX3_2 = false
  SHX4_2 = 0
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
end
SHX21_1 = CMG
SHX21_1 = SHX21_1.createThreadOnTick
function SHX22_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX13_1.running
  if SHX0_2 then
    SHX0_2 = SHX13_1.isMedic
    if SHX0_2 then
      SHX0_2 = SHX20_1
      SHX0_2()
      SHX0_2 = IsControlJustPressed
      SHX1_2 = 0
      SHX2_2 = 202
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
      if not SHX0_2 then
        SHX0_2 = IsDisabledControlJustPressed
        SHX1_2 = 0
        SHX2_2 = 177
        SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
        if not SHX0_2 then
          goto SHX_LABEL_23
        end
      end
      SHX13_1.cancelled = true
      goto SHX_LABEL_30
      -- [FIX IF ERROR] Move ::SHX_LABEL_23:: outside nested blocks until all 'goto SHX_LABEL_23' can see it
      ::SHX_LABEL_23::
      SHX0_2 = IsEntityDead
      SHX1_2 = PlayerPedId
      SHX1_2, SHX2_2 = SHX1_2()
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
      if SHX0_2 then
        SHX13_1.cancelled = true
      end
    end
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_30:: outside nested blocks until all 'goto SHX_LABEL_30' can see it
  ::SHX_LABEL_30::
end
SHX23_1 = "CPR Cancel Tick"
SHX21_1(SHX22_1, SHX23_1)
SHX21_1 = CMG
SHX21_1 = SHX21_1.RegisterClientCallback
SHX22_1 = "9f2bde707e"
function SHX23_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2
  SHX0_2 = PlayerPedId
  SHX0_2 = SHX0_2()
  if 0 == SHX0_2 then
    SHX1_2 = nil
    return SHX1_2
  end
  SHX1_2 = GetEntityCoords
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = GetEntityHeading
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = GetGroundZFor_3dCoord
  SHX4_2 = SHX1_2.x
  SHX5_2 = SHX1_2.y
  SHX6_2 = SHX1_2.z
  SHX6_2 = SHX6_2 + 2.0
  SHX7_2 = 0
  SHX8_2 = false
  SHX3_2, SHX4_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2)
  if SHX3_2 then
    SHX5_2 = type
    SHX6_2 = SHX4_2
    SHX5_2 = SHX5_2(SHX6_2)
    if "number" == SHX5_2 then
      goto SHX_LABEL_30
    end
  end
  SHX4_2 = SHX1_2.z
  -- [FIX IF ERROR] Move ::SHX_LABEL_30:: outside nested blocks until all 'goto SHX_LABEL_30' can see it
  ::SHX_LABEL_30::
  SHX5_2 = {}
  SHX6_2 = SHX1_2.x
  SHX5_2.x = SHX6_2
  SHX6_2 = SHX1_2.y
  SHX5_2.y = SHX6_2
  SHX6_2 = SHX1_2.z
  SHX5_2.z = SHX6_2
  SHX5_2.heading = SHX2_2
  SHX5_2.groundZ = SHX4_2
  return SHX5_2
end
SHX21_1(SHX22_1, SHX23_1)
SHX21_1 = false
SHX22_1 = RegisterNetEvent
SHX23_1 = "676d7f86f9"
function SHX24_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerCoords
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX21_1
  if SHX1_2 then
    SHX1_2 = notify
    SHX2_2 = "~r~You are using morphine currently. Please try again later."
    SHX1_2(SHX2_2)
    return
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerVehicle
  SHX1_2 = SHX1_2()
  if 0 ~= SHX1_2 then
    SHX1_2 = notify
    SHX2_2 = "~r~You can not do this whilst in a vehicle."
    SHX1_2(SHX2_2)
    return
  end
  SHX1_2 = -1
  SHX2_2 = 0
  SHX3_2 = 3.0
  SHX4_2 = pairs
  SHX5_2 = GetActivePlayers
  SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX5_2()
  SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
    SHX10_2 = GetPlayerPed
    SHX11_2 = SHX9_2
    SHX10_2 = SHX10_2(SHX11_2)
    if 0 ~= SHX10_2 then
      SHX11_2 = PlayerPedId
      SHX11_2 = SHX11_2()
      if SHX10_2 ~= SHX11_2 then
        SHX11_2 = GetEntityCoords
        SHX12_2 = SHX10_2
        SHX13_2 = true
        SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
        SHX11_2 = SHX11_2 - SHX0_2
        SHX11_2 = #SHX11_2
        if SHX3_2 > SHX11_2 then
          SHX1_2 = SHX9_2
          SHX2_2 = SHX10_2
          SHX3_2 = SHX11_2
        end
      end
    end
  end
  if -1 == SHX1_2 then
    SHX4_2 = notify
    SHX5_2 = "~r~No nearby player found."
    SHX4_2(SHX5_2)
    return
  end
  SHX4_2 = GetEntityHealth
  SHX5_2 = SHX2_2
  SHX4_2 = SHX4_2(SHX5_2)
  if SHX4_2 <= 102 then
    SHX5_2 = notify
    SHX6_2 = "~r~This player is dead and can not have morphine injected."
    SHX5_2(SHX6_2)
  else
    SHX5_2 = 200
    if SHX4_2 >= SHX5_2 then
      SHX5_2 = notify
      SHX6_2 = "~r~This player is healthy and does not require morphine."
      SHX5_2(SHX6_2)
    else
      SHX5_2 = GetPlayerServerId
      SHX6_2 = SHX1_2
      SHX5_2 = SHX5_2(SHX6_2)
      if SHX5_2 > 0 then
        SHX6_2 = TriggerServerEvent
        SHX7_2 = "a00a7ed7df"
        SHX8_2 = SHX5_2
        SHX6_2(SHX7_2, SHX8_2)
      end
    end
  end
end
SHX22_1(SHX23_1, SHX24_1)
SHX22_1 = RegisterNetEvent
SHX23_1 = "73be4abad8"
function SHX24_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX1_2 = SHX21_1
  if SHX1_2 then
    return
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerVehicle
  SHX1_2 = SHX1_2()
  if 0 ~= SHX1_2 then
    return
  end
  SHX1_2 = GetPlayerFromServerId
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if -1 == SHX1_2 then
    return
  end
  SHX2_2 = GetPlayerPed
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if 0 == SHX2_2 then
    return
  end
  SHX3_2 = notify
  SHX4_2 = "~g~Injecting morphine into player..."
  SHX3_2(SHX4_2)
  SHX3_2 = true
  SHX21_1 = SHX3_2
  SHX3_2 = tCMG
  SHX3_2 = SHX3_2.setCanAnim
  SHX4_2 = false
  SHX3_2(SHX4_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.loadClipSet
  SHX4_2 = "move_ped_crouched"
  SHX3_2(SHX4_2)
  SHX3_2 = PlayerPedId
  SHX3_2 = SHX3_2()
  SHX4_2 = GetEntityCoords
  SHX5_2 = SHX2_2
  SHX6_2 = true
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX5_2 = GetEntityForwardVector
  SHX6_2 = SHX2_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX5_2 = SHX5_2 * 0.75
  SHX4_2 = SHX4_2 + SHX5_2
  SHX5_2 = vector3
  SHX6_2 = 0.0
  SHX7_2 = 0.0
  SHX8_2 = -0.5
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  SHX4_2 = SHX4_2 + SHX5_2
  SHX5_2 = SetEntityCoords
  SHX6_2 = SHX3_2
  SHX7_2 = SHX4_2.x
  SHX8_2 = SHX4_2.y
  SHX9_2 = SHX4_2.z
  SHX10_2 = true
  SHX11_2 = false
  SHX12_2 = false
  SHX13_2 = false
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX5_2 = SetEntityHeading
  SHX6_2 = SHX3_2
  SHX7_2 = GetEntityHeading
  SHX8_2 = SHX2_2
  SHX7_2 = SHX7_2(SHX8_2)
  SHX7_2 = SHX7_2 + 180.0
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = true
  SHX6_2 = GetGameTimer
  SHX6_2 = SHX6_2()
  while true do
    SHX7_2 = GetGameTimer
    SHX7_2 = SHX7_2()
    SHX7_2 = SHX7_2 - SHX6_2
    SHX8_2 = 5000
    if not (SHX7_2 < SHX8_2) then
      break
    end
    SHX7_2 = GetEntityHealth
    SHX8_2 = SHX3_2
    SHX7_2 = SHX7_2(SHX8_2)
    if not (SHX7_2 < 102) then
      SHX7_2 = IsEntityDead
      SHX8_2 = SHX3_2
      SHX7_2 = SHX7_2(SHX8_2)
      if not SHX7_2 then
        goto SHX_LABEL_96
      end
    end
    SHX5_2 = false
    do break end
    -- [FIX IF ERROR] Move ::SHX_LABEL_96:: outside nested blocks until all 'goto SHX_LABEL_96' can see it
    ::SHX_LABEL_96::
    SHX7_2 = SetPedMovementClipset
    SHX8_2 = SHX3_2
    SHX9_2 = "move_ped_crouched"
    SHX10_2 = 0.6
    SHX7_2(SHX8_2, SHX9_2, SHX10_2)
    SHX7_2 = SetPedStrafeClipset
    SHX8_2 = SHX3_2
    SHX9_2 = "move_ped_crouched_strafing"
    SHX7_2(SHX8_2, SHX9_2)
    SHX7_2 = Citizen
    SHX7_2 = SHX7_2.Wait
    SHX8_2 = 5000
    SHX7_2(SHX8_2)
  end
  if SHX5_2 then
    SHX7_2 = ResetPedStrafeClipset
    SHX8_2 = SHX3_2
    SHX7_2(SHX8_2)
    SHX7_2 = ResetPedMovementClipset
    SHX8_2 = SHX3_2
    SHX9_2 = 0.5
    SHX7_2(SHX8_2, SHX9_2)
  end
  SHX7_2 = RemoveAnimSet
  SHX8_2 = "move_ped_crouched"
  SHX7_2(SHX8_2)
  SHX7_2 = tCMG
  SHX7_2 = SHX7_2.setCanAnim
  SHX8_2 = true
  SHX7_2(SHX8_2)
  SHX7_2 = false
  SHX21_1 = SHX7_2
end
SHX22_1(SHX23_1, SHX24_1)
SHX22_1 = RegisterNetEvent
SHX23_1 = "da84b34be7"
function SHX24_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2
  SHX1_2 = SHX21_1
  if SHX1_2 then
    return
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getPlayerVehicle
  SHX1_2 = SHX1_2()
  if 0 ~= SHX1_2 then
    return
  end
  SHX1_2 = GetPlayerFromServerId
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if -1 == SHX1_2 then
    return
  end
  SHX2_2 = GetPlayerPed
  SHX3_2 = SHX1_2
  SHX2_2 = SHX2_2(SHX3_2)
  if 0 == SHX2_2 then
    return
  end
  SHX3_2 = notify
  SHX4_2 = "~g~Waiting for morphine to be injected..."
  SHX3_2(SHX4_2)
  SHX3_2 = true
  SHX21_1 = SHX3_2
  SHX3_2 = tCMG
  SHX3_2 = SHX3_2.setCanAnim
  SHX4_2 = false
  SHX3_2(SHX4_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.loadAnimDict
  SHX4_2 = "timetable@tracy@ig_14@"
  SHX3_2(SHX4_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerCoords
  SHX3_2 = SHX3_2()
  SHX4_2 = vector3
  SHX5_2 = 0.0
  SHX6_2 = 0.0
  SHX7_2 = -0.2
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX3_2 = SHX3_2 + SHX4_2
  SHX4_2 = true
  SHX5_2 = PlayerPedId
  SHX5_2 = SHX5_2()
  SHX6_2 = GetGameTimer
  SHX6_2 = SHX6_2()
  while true do
    SHX7_2 = GetGameTimer
    SHX7_2 = SHX7_2()
    SHX7_2 = SHX7_2 - SHX6_2
    SHX8_2 = 5000
    if not (SHX7_2 < SHX8_2) then
      break
    end
    SHX7_2 = GetEntityHealth
    SHX8_2 = SHX5_2
    SHX7_2 = SHX7_2(SHX8_2)
    if not (SHX7_2 < 102) then
      SHX7_2 = IsEntityDead
      SHX8_2 = SHX5_2
      SHX7_2 = SHX7_2(SHX8_2)
      if not SHX7_2 then
        goto SHX_LABEL_70
      end
    end
    SHX4_2 = false
    do break end
    -- [FIX IF ERROR] Move ::SHX_LABEL_70:: outside nested blocks until all 'goto SHX_LABEL_70' can see it
    ::SHX_LABEL_70::
    SHX7_2 = IsEntityPlayingAnim
    SHX8_2 = SHX5_2
    SHX9_2 = "timetable@tracy@ig_14@"
    SHX10_2 = "ig_14_base_tracy"
    SHX11_2 = 3
    SHX7_2 = SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    if not SHX7_2 then
      SHX7_2 = FreezeEntityPosition
      SHX8_2 = SHX5_2
      SHX9_2 = true
      SHX7_2(SHX8_2, SHX9_2)
      SHX7_2 = TaskPlayAnimAdvanced
      SHX8_2 = SHX5_2
      SHX9_2 = "timetable@tracy@ig_14@"
      SHX10_2 = "ig_14_base_tracy"
      SHX11_2 = SHX3_2.x
      SHX12_2 = SHX3_2.y
      SHX13_2 = SHX3_2.z
      SHX14_2 = 0.0
      SHX15_2 = 0.0
      SHX16_2 = GetEntityHeading
      SHX17_2 = SHX5_2
      SHX16_2 = SHX16_2(SHX17_2)
      SHX17_2 = 8.0
      SHX18_2 = 8.0
      SHX19_2 = -1
      SHX20_2 = 1
      SHX21_2 = 1.0
      SHX22_2 = false
      SHX23_2 = false
      SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
    end
    SHX7_2 = Citizen
    SHX7_2 = SHX7_2.Wait
    SHX8_2 = 0
    SHX7_2(SHX8_2)
  end
  SHX7_2 = FreezeEntityPosition
  SHX8_2 = SHX5_2
  SHX9_2 = false
  SHX7_2(SHX8_2, SHX9_2)
  if SHX4_2 then
    SHX7_2 = StopAnimTask
    SHX8_2 = SHX5_2
    SHX9_2 = "timetable@tracy@ig_14@"
    SHX10_2 = "ig_14_base_tracy"
    SHX11_2 = 1.0
    SHX7_2(SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX7_2 = GetEntityHealth
    SHX8_2 = SHX5_2
    SHX7_2 = SHX7_2(SHX8_2)
    if SHX7_2 > 102 then
      SHX8_2 = 200
      if SHX7_2 < SHX8_2 then
        SHX8_2 = SetEntityHealth
        SHX9_2 = SHX5_2
        SHX10_2 = 200
        SHX8_2(SHX9_2, SHX10_2)
        SHX8_2 = notify
        SHX9_2 = "~g~Morphine applied free of charge by the NHS!"
        SHX8_2(SHX9_2)
        SHX8_2 = TriggerEvent
        SHX9_2 = "TriggerTazer"
        SHX8_2(SHX9_2)
    end
    else
      SHX8_2 = notify
      SHX9_2 = "~r~The morphine had no affect on you."
      SHX8_2(SHX9_2)
    end
  end
  SHX7_2 = RemoveAnimDict
  SHX8_2 = "timetable@tracy@ig_14@"
  SHX7_2(SHX8_2)
  SHX7_2 = tCMG
  SHX7_2 = SHX7_2.setCanAnim
  SHX8_2 = true
  SHX7_2(SHX8_2)
  SHX7_2 = false
  SHX21_1 = SHX7_2
end
SHX22_1(SHX23_1, SHX24_1)
SHX22_1 = RegisterNetEvent
SHX23_1 = "cefef09c49"
function SHX24_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  if 0 == SHX0_2 then
    SHX1_2 = 0
    SHX0_1 = SHX1_2
  else
    SHX1_2 = GetGameTimer
    SHX1_2 = SHX1_2()
    SHX1_2 = SHX1_2 + SHX0_2
    SHX0_1 = SHX1_2
  end
end
SHX22_1(SHX23_1, SHX24_1)
SHX22_1 = RegisterNetEvent
SHX23_1 = "3ea9b56577"
function SHX24_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  if 0 == SHX0_2 then
    SHX1_2 = 0
    SHX1_1 = SHX1_2
  else
    SHX1_2 = GetGameTimer
    SHX1_2 = SHX1_2()
    SHX1_2 = SHX1_2 + SHX0_2
    SHX1_1 = SHX1_2
  end
end
SHX22_1(SHX23_1, SHX24_1)
