-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1
SHX0_1 = CMG
SHX0_1 = SHX0_1.loadModule
SHX1_1 = "cfg/cfg_stretcher"
SHX0_1 = SHX0_1(SHX1_1)
SHX1_1 = false
SHX2_1 = 0
SHX3_1 = nil
SHX4_1 = 1
SHX5_1 = nil
function SHX6_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerCoords
  SHX2_2 = SHX2_2()
  SHX3_2 = 0
  SHX4_2 = SHX0_2
  SHX5_2 = pairs
  SHX6_2 = CMG
  SHX6_2 = SHX6_2.getAllVehicles
  SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX6_2()
  SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
    SHX11_2 = GetEntityModel
    SHX12_2 = SHX10_2
    SHX11_2 = SHX11_2(SHX12_2)
    SHX12_2 = SHX1_2[SHX11_2]
    if SHX12_2 then
      SHX12_2 = GetEntityCoords
      SHX13_2 = SHX10_2
      SHX12_2 = SHX12_2(SHX13_2)
      SHX13_2 = SHX2_2 - SHX12_2
      SHX13_2 = #SHX13_2
      if SHX4_2 > SHX13_2 then
        SHX4_2 = SHX13_2
        SHX3_2 = SHX10_2
      end
    end
  end
  return SHX3_2
end
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = IsControlJustReleased
  SHX1_2 = 0
  SHX2_2 = 299
  SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
  if SHX0_2 then
    SHX0_2 = NetworkHasControlOfEntity
    SHX1_2 = SHX2_1
    SHX0_2 = SHX0_2(SHX1_2)
    if SHX0_2 then
      SHX0_2 = TriggerServerEvent
      SHX1_2 = "5afe1684a7"
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.getNetId
      SHX3_2 = SHX2_1
      SHX4_2 = "Stretchers"
      SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2, SHX4_2)
      SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
    else
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.hasClientPermission
      SHX1_2 = "nhs.onduty.permission"
      SHX0_2 = SHX0_2(SHX1_2)
      if SHX0_2 then
        SHX0_2 = SHX2_1
        if 0 ~= SHX0_2 then
          SHX0_2 = GetVehicleDoorAngleRatio
          SHX1_2 = SHX2_1
          SHX2_2 = 4
          SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
          SHX0_2 = 0 ~= SHX0_2
          if SHX0_2 then
            SHX1_2 = SetVehicleDoorShut
            SHX2_2 = SHX2_1
            SHX3_2 = 3
            SHX4_2 = false
            SHX1_2(SHX2_2, SHX3_2, SHX4_2)
            SHX1_2 = Wait
            SHX2_2 = 500
            SHX1_2(SHX2_2)
            SHX1_2 = SetVehicleDoorShut
            SHX2_2 = SHX2_1
            SHX3_2 = 4
            SHX4_2 = false
            SHX1_2(SHX2_2, SHX3_2, SHX4_2)
            SHX1_2 = tCMG
            SHX1_2 = SHX1_2.notify
            SHX2_2 = "Door closed."
            SHX1_2(SHX2_2)
          else
            SHX1_2 = SetVehicleDoorOpen
            SHX2_2 = SHX2_1
            SHX3_2 = 4
            SHX4_2 = false
            SHX5_2 = false
            SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
            SHX1_2 = Wait
            SHX2_2 = 500
            SHX1_2(SHX2_2)
            SHX1_2 = SetVehicleDoorOpen
            SHX2_2 = SHX2_1
            SHX3_2 = 3
            SHX4_2 = false
            SHX5_2 = false
            SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
            SHX1_2 = tCMG
            SHX1_2 = SHX1_2.notify
            SHX2_2 = "Door opened."
            SHX1_2(SHX2_2)
          end
        end
      end
    end
  end
end
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = BeginTextCommandDisplayHelp
  SHX2_2 = "STRING"
  SHX1_2(SHX2_2)
  SHX1_2 = AddTextEntry
  SHX2_2 = "STRETCHER_HELP_TEXT"
  SHX3_2 = SHX0_2
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = AddTextComponentSubstringTextLabel
  SHX2_2 = "STRETCHER_HELP_TEXT"
  SHX1_2(SHX2_2)
  SHX1_2 = EndTextCommandDisplayHelp
  SHX2_2 = 0
  SHX3_2 = false
  SHX4_2 = false
  SHX5_2 = 0
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
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
  
  local SHX0_2, SHX1_2, SHX2_2
  while true do
    SHX0_2 = Wait
    SHX1_2 = 750
    SHX0_2(SHX1_2)
    SHX0_2 = SHX6_1
    SHX1_2 = 2.0
    SHX2_2 = SHX0_1.stretcherModels
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    SHX3_1 = SHX0_2
  end
end
SHX9_1(SHX10_1)
function SHX9_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX1_2 = GetEntityAttachedTo
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = DetachEntity
  SHX3_2 = SHX0_2
  SHX4_2 = false
  SHX5_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = false
  SHX1_1 = SHX2_2
  SHX2_2 = 1
  SHX4_1 = SHX2_2
  if SHX1_2 and 0 ~= SHX1_2 then
    SHX2_2 = SetVehicleEngineOn
    SHX3_2 = SHX1_2
    SHX4_2 = false
    SHX5_2 = true
    SHX6_2 = true
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
    SHX2_2 = GetEntityCoords
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    SHX3_2 = DecorGetInt
    SHX4_2 = SHX1_2
    SHX5_2 = "58fe205294"
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
    if 0 ~= SHX3_2 then
      SHX3_2 = CMG
      SHX3_2 = SHX3_2.getObjectId
      SHX4_2 = DecorGetInt
      SHX5_2 = SHX1_2
      SHX6_2 = "58fe205294"
      SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
      SHX5_2 = "exitStretcher"
      SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
      if SHX3_2 and 0 ~= SHX3_2 then
        SHX4_2 = GetWorldPositionOfEntityBone
        SHX5_2 = SHX3_2
        SHX6_2 = GetEntityBoneIndexByName
        SHX7_2 = SHX3_2
        SHX8_2 = "bonnet"
        SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX6_2(SHX7_2, SHX8_2)
        SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
        SHX5_2 = vector3
        SHX6_2 = 0.0
        SHX7_2 = -2.0
        SHX8_2 = 0.0
        SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2)
        SHX2_2 = SHX4_2 + SHX5_2
      end
    end
    SHX3_2 = SetEntityCoords
    SHX4_2 = SHX0_2
    SHX5_2 = SHX2_2.x
    SHX6_2 = SHX2_2.y
    SHX7_2 = SHX2_2.z
    SHX8_2 = false
    SHX9_2 = false
    SHX10_2 = false
    SHX11_2 = false
    SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
    SHX3_2 = PlaceObjectOnGroundProperly
    SHX4_2 = SHX0_2
    SHX3_2(SHX4_2)
  end
  SHX2_2 = ClearPedTasksImmediately
  SHX3_2 = SHX0_2
  SHX2_2(SHX3_2)
end
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2
  SHX1_2 = pairs
  SHX2_2 = GetActivePlayers
  SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2 = SHX2_2()
  SHX1_2, SHX2_2, SHX3_2, SHX4_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  for SHX5_2, SHX6_2 in SHX1_2, SHX2_2, SHX3_2, SHX4_2 do
    SHX7_2 = GetPlayerPed
    SHX8_2 = SHX6_2
    SHX7_2 = SHX7_2(SHX8_2)
    SHX8_2 = GetEntityAttachedTo
    SHX9_2 = SHX7_2
    SHX8_2 = SHX8_2(SHX9_2)
    if SHX8_2 == SHX0_2 then
      SHX8_2 = true
      return SHX8_2
    end
  end
  SHX1_2 = false
  return SHX1_2
end
function SHX11_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2
  SHX2_2 = PlayerPedId
  SHX2_2 = SHX2_2()
  SHX3_2 = SHX10_1
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  if SHX3_2 then
    SHX3_2 = SHX1_1
    if not SHX3_2 then
      goto SHX_LABEL_81
    end
  end
  SHX3_2 = true
  SHX1_1 = SHX3_2
  SHX3_2 = SetVehicleEngineOn
  SHX4_2 = SHX0_2
  SHX5_2 = true
  SHX6_2 = true
  SHX7_2 = true
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  if SHX1_2 then
    SHX4_1 = SHX1_2
  end
  SHX3_2 = SHX0_1.positions
  SHX4_2 = SHX4_1
  SHX3_2 = SHX3_2[SHX4_2]
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.loadAnimDict
  SHX5_2 = SHX3_2.animDict
  SHX4_2(SHX5_2)
  SHX4_2 = DetachEntity
  SHX5_2 = SHX2_2
  SHX6_2 = false
  SHX7_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = AttachEntityToEntity
  SHX5_2 = SHX2_2
  SHX6_2 = SHX0_2
  SHX7_2 = SHX2_2
  SHX8_2 = SHX3_2.offset
  SHX8_2 = SHX8_2.x
  SHX9_2 = SHX3_2.offset
  SHX9_2 = SHX9_2.y
  SHX10_2 = SHX3_2.offset
  SHX10_2 = SHX10_2.z
  SHX11_2 = 0.0
  SHX12_2 = 0.0
  SHX13_2 = SHX3_2.offset
  SHX13_2 = SHX13_2.heading
  SHX14_2 = false
  SHX15_2 = false
  SHX16_2 = false
  SHX17_2 = false
  SHX18_2 = 0
  SHX19_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2)
  SHX4_2 = TaskPlayAnim
  SHX5_2 = SHX2_2
  SHX6_2 = SHX3_2.animDict
  SHX7_2 = SHX3_2.animName
  SHX8_2 = 8.0
  SHX9_2 = 8.0
  SHX10_2 = -1
  SHX11_2 = 1
  SHX12_2 = 0
  SHX13_2 = false
  SHX14_2 = false
  SHX15_2 = false
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2)
  SHX4_2 = RemoveAnimDict
  SHX5_2 = SHX3_2.animDict
  SHX4_2(SHX5_2)
  SHX4_2 = SHX4_1
  if 3 == SHX4_2 then
    SHX4_2 = 1
    SHX4_1 = SHX4_2
  else
    SHX4_2 = SHX4_1
    SHX4_2 = SHX4_2 + 1
    SHX4_1 = SHX4_2
  end
  -- [FIX IF ERROR] Move ::SHX_LABEL_81:: outside nested blocks until all 'goto SHX_LABEL_81' can see it
  ::SHX_LABEL_81::
end
SHX12_1 = DecorRegister
SHX13_1 = "ddf749d1be"
SHX14_1 = 2
SHX12_1(SHX13_1, SHX14_1)
SHX12_1 = DecorRegister
SHX13_1 = "58fe205294"
SHX14_1 = 3
SHX12_1(SHX13_1, SHX14_1)
function SHX12_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getPlayerPed
  SHX0_2 = SHX0_2()
  SHX1_2 = SHX1_1
  if SHX1_2 then
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 24
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = DisableControlAction
    SHX2_2 = 0
    SHX3_2 = 25
    SHX4_2 = true
    SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX1_2 = GetEntityAttachedTo
    SHX2_2 = SHX0_2
    SHX1_2 = SHX1_2(SHX2_2)
    if 0 == SHX1_2 then
      SHX1_2 = SHX9_1
      SHX2_2 = SHX0_2
      SHX1_2(SHX2_2)
    else
      SHX1_2 = SHX8_1
      SHX2_2 = "~INPUT_FRONTEND_RDOWN~ Change position  ~INPUT_CELLPHONE_CANCEL~ Get up"
      SHX1_2(SHX2_2)
      SHX1_2 = IsControlJustReleased
      SHX2_2 = 0
      SHX3_2 = 202
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
      if SHX1_2 then
        SHX1_2 = SHX9_1
        SHX2_2 = SHX0_2
        SHX1_2(SHX2_2)
      end
    end
  end
  SHX1_2 = SHX3_1
  if nil ~= SHX1_2 then
    SHX1_2 = SHX3_1
    if 0 ~= SHX1_2 then
      SHX1_2 = DecorGetInt
      SHX2_2 = SHX3_1
      SHX3_2 = "58fe205294"
      SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
      if 0 ~= SHX1_2 then
        SHX1_2 = CMG
        SHX1_2 = SHX1_2.getObjectId
        SHX2_2 = DecorGetInt
        SHX3_2 = SHX3_1
        SHX4_2 = "58fe205294"
        SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
        SHX3_2 = "Stretcher tick"
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        if not SHX1_2 then
          SHX1_2 = 0
        end
        SHX2_1 = SHX1_2
      else
        SHX1_2 = SHX6_1
        SHX2_2 = 15.0
        SHX3_2 = SHX0_1.ambulanceModels
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        SHX2_1 = SHX1_2
      end
      SHX1_2 = GetEntityCoords
      SHX2_2 = SHX3_1
      SHX1_2 = SHX1_2(SHX2_2)
      SHX2_2 = SHX1_1
      if not SHX2_2 then
        SHX2_2 = IsEntityPlayingAnim
        SHX3_2 = SHX0_2
        SHX4_2 = "anim@heists@box_carry@"
        SHX5_2 = "idle"
        SHX6_2 = 3
        SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
        if not SHX2_2 then
          SHX2_2 = CMG
          SHX2_2 = SHX2_2.getPlayerVehicle
          SHX2_2 = SHX2_2()
          if 0 == SHX2_2 then
            SHX2_2 = true
            SHX3_2 = DecorGetInt
            SHX4_2 = SHX3_1
            SHX5_2 = "58fe205294"
            SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
            if 0 ~= SHX3_2 then
              SHX3_2 = SHX2_1
              SHX2_2 = 0 ~= SHX3_2
            end
            if SHX2_2 then
              SHX3_2 = SHX8_1
              SHX4_2 = "~INPUT_COVER~ Push  ~INPUT_FRONTEND_RDOWN~ Use"
              SHX3_2(SHX4_2)
            end
          end
        end
      end
      SHX2_2 = IsEntityPlayingAnim
      SHX3_2 = SHX0_2
      SHX4_2 = "anim@heists@box_carry@"
      SHX5_2 = "idle"
      SHX6_2 = 3
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
      if SHX2_2 then
        SHX2_2 = SHX2_1
        if 0 == SHX2_2 then
          SHX2_2 = -1
          SHX3_2 = 5.0
          SHX4_2 = pairs
          SHX5_2 = GetActivePlayers
          SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2 = SHX5_2()
          SHX4_2, SHX5_2, SHX6_2, SHX7_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2)
          for SHX8_2, SHX9_2 in SHX4_2, SHX5_2, SHX6_2, SHX7_2 do
            SHX10_2 = GetPlayerPed
            SHX11_2 = SHX9_2
            SHX10_2 = SHX10_2(SHX11_2)
            if 0 ~= SHX10_2 then
              SHX11_2 = GetEntityHealth
              SHX12_2 = SHX10_2
              SHX11_2 = SHX11_2(SHX12_2)
              if SHX11_2 >= 100 and SHX11_2 <= 102 then
                SHX12_2 = GetEntityAttachedTo
                SHX13_2 = SHX10_2
                SHX12_2 = SHX12_2(SHX13_2)
                if 0 == SHX12_2 then
                  SHX12_2 = GetEntityCoords
                  SHX13_2 = SHX10_2
                  SHX14_2 = true
                  SHX12_2 = SHX12_2(SHX13_2, SHX14_2)
                  SHX12_2 = SHX12_2 - SHX1_2
                  SHX12_2 = #SHX12_2
                  if SHX3_2 > SHX12_2 then
                    SHX2_2 = SHX9_2
                    SHX3_2 = SHX12_2
                  end
                end
              end
            end
          end
          SHX4_2 = "~INPUT_CELLPHONE_CAMERA_EXPRESSION~ Stop pushing"
          if -1 ~= SHX2_2 then
            SHX5_2 = CMG
            SHX5_2 = SHX5_2.hasClientPermission
            SHX6_2 = "nhs.onduty.permission"
            SHX5_2 = SHX5_2(SHX6_2)
            if SHX5_2 then
              SHX4_2 = "~INPUT_CELLPHONE_CAMERA_EXPRESSION~ Stop  ~INPUT_CELLPHONE_CAMERA_GRID~ Place player"
              SHX5_2 = IsControlJustPressed
              SHX6_2 = 0
              SHX7_2 = 183
              SHX5_2 = SHX5_2(SHX6_2, SHX7_2)
              if SHX5_2 then
                SHX5_2 = GetPlayerServerId
                SHX6_2 = SHX2_2
                SHX5_2 = SHX5_2(SHX6_2)
                SHX6_2 = NetworkGetNetworkIdFromEntity
                SHX7_2 = SHX3_1
                SHX6_2 = SHX6_2(SHX7_2)
                if SHX5_2 > 0 and 0 ~= SHX6_2 then
                  SHX7_2 = TriggerServerEvent
                  SHX8_2 = "2d2aca0333"
                  SHX9_2 = SHX5_2
                  SHX10_2 = SHX6_2
                  SHX7_2(SHX8_2, SHX9_2, SHX10_2)
                end
              end
            end
          end
          SHX5_2 = SHX8_1
          SHX6_2 = SHX4_2
          SHX5_2(SHX6_2)
        end
      end
      SHX2_2 = SHX2_1
      if 0 ~= SHX2_2 then
        SHX2_2 = DecorGetBool
        SHX3_2 = SHX2_1
        SHX4_2 = "ddf749d1be"
        SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
        if SHX2_2 then
          SHX2_2 = CMG
          SHX2_2 = SHX2_2.hasClientPermission
          SHX3_2 = "nhs.onduty.permission"
          SHX2_2 = SHX2_2(SHX3_2)
          if SHX2_2 then
            SHX2_2 = IsPedInVehicle
            SHX3_2 = SHX0_2
            SHX4_2 = SHX2_1
            SHX5_2 = false
            SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
            if not SHX2_2 then
              SHX2_2 = SHX1_1
              if not SHX2_2 then
                SHX2_2 = GetWorldPositionOfEntityBone
                SHX3_2 = SHX2_1
                SHX4_2 = GetEntityBoneIndexByName
                SHX5_2 = SHX2_1
                SHX6_2 = "bonnet"
                SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2 = SHX4_2(SHX5_2, SHX6_2)
                SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2)
                SHX3_2 = DrawMarker
                SHX4_2 = 1
                SHX5_2 = SHX2_2.x
                SHX6_2 = SHX2_2.y
                SHX7_2 = SHX2_2.z
                SHX7_2 = SHX7_2 - 1.75
                SHX8_2 = 0.0
                SHX9_2 = 0.0
                SHX10_2 = 0.0
                SHX11_2 = 0
                SHX12_2 = 0.0
                SHX13_2 = 0.0
                SHX14_2 = 1.5
                SHX15_2 = 1.5
                SHX16_2 = 1.5
                SHX17_2 = 0
                SHX18_2 = 48
                SHX19_2 = 135
                SHX20_2 = 235
                SHX21_2 = false
                SHX22_2 = true
                SHX23_2 = 2
                SHX24_2 = false
                SHX25_2 = nil
                SHX26_2 = nil
                SHX27_2 = false
                SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2)
                SHX3_2 = SHX7_1
                SHX3_2()
                SHX3_2 = GetVehicleDoorAngleRatio
                SHX4_2 = SHX2_1
                SHX5_2 = 4
                SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
                SHX3_2 = 0 ~= SHX3_2
                if SHX3_2 then
                  SHX4_2 = SHX8_1
                  SHX5_2 = "~INPUT_REPLAY_REWIND~ Close door  ~INPUT_REPLAY_FFWD~ Take stretcher out"
                  SHX4_2(SHX5_2)
                  SHX4_2 = IsControlJustReleased
                  SHX5_2 = 0
                  SHX6_2 = 300
                  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
                  if SHX4_2 then
                    SHX4_2 = CMG
                    SHX4_2 = SHX4_2.getNetId
                    SHX5_2 = SHX2_1
                    SHX6_2 = "Stretchers"
                    SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
                    SHX5_2 = pairs
                    SHX6_2 = CMG
                    SHX6_2 = SHX6_2.getAllVehicles
                    SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2 = SHX6_2()
                    SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2)
                    for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
                      SHX11_2 = SHX0_1.stretcherModels
                      SHX12_2 = GetEntityModel
                      SHX13_2 = SHX10_2
                      SHX12_2 = SHX12_2(SHX13_2)
                      SHX11_2 = SHX11_2[SHX12_2]
                      if SHX11_2 then
                        SHX11_2 = DecorGetInt
                        SHX12_2 = SHX10_2
                        SHX13_2 = "58fe205294"
                        SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
                        if SHX11_2 == SHX4_2 then
                          SHX11_2 = DetachEntity
                          SHX12_2 = SHX10_2
                          SHX13_2 = true
                          SHX14_2 = false
                          SHX11_2(SHX12_2, SHX13_2, SHX14_2)
                          SHX11_2 = FreezeEntityPosition
                          SHX12_2 = SHX10_2
                          SHX13_2 = false
                          SHX11_2(SHX12_2, SHX13_2)
                          SHX11_2 = vector3
                          SHX12_2 = 0.0
                          SHX13_2 = -2.0
                          SHX14_2 = 0.0
                          SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2)
                          SHX11_2 = SHX2_2 + SHX11_2
                          SHX12_2 = SetEntityCoords
                          SHX13_2 = SHX10_2
                          SHX14_2 = SHX11_2.x
                          SHX15_2 = SHX11_2.y
                          SHX16_2 = SHX11_2.z
                          SHX17_2 = false
                          SHX18_2 = false
                          SHX19_2 = false
                          SHX20_2 = false
                          SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
                          SHX12_2 = SetVehicleOnGroundProperly
                          SHX13_2 = SHX10_2
                          SHX12_2(SHX13_2)
                          SHX12_2 = SetVehicleExtra
                          SHX13_2 = SHX10_2
                          SHX14_2 = 1
                          SHX15_2 = true
                          SHX12_2(SHX13_2, SHX14_2, SHX15_2)
                          SHX12_2 = SetVehicleExtra
                          SHX13_2 = SHX10_2
                          SHX14_2 = 2
                          SHX15_2 = false
                          SHX12_2(SHX13_2, SHX14_2, SHX15_2)
                          SHX12_2 = DecorSetInt
                          SHX13_2 = SHX10_2
                          SHX14_2 = "58fe205294"
                          SHX15_2 = 0
                          SHX12_2(SHX13_2, SHX14_2, SHX15_2)
                          SHX12_2 = NetworkHasControlOfEntity
                          SHX13_2 = SHX2_1
                          SHX12_2 = SHX12_2(SHX13_2)
                          if SHX12_2 then
                            SHX12_2 = DecorSetBool
                            SHX13_2 = SHX2_1
                            SHX14_2 = "ddf749d1be"
                            SHX15_2 = false
                            SHX12_2(SHX13_2, SHX14_2, SHX15_2)
                          else
                            SHX12_2 = TriggerServerEvent
                            SHX13_2 = "c15aeb9b9f"
                            SHX14_2 = CMG
                            SHX14_2 = SHX14_2.getNetId
                            SHX15_2 = SHX2_1
                            SHX16_2 = "Stretcher"
                            SHX14_2 = SHX14_2(SHX15_2, SHX16_2)
                            SHX15_2 = false
                            SHX12_2(SHX13_2, SHX14_2, SHX15_2)
                          end
                          SHX12_2 = tCMG
                          SHX12_2 = SHX12_2.notify
                          SHX13_2 = "Stretcher taken out."
                          SHX12_2(SHX13_2)
                          break
                        end
                      end
                    end
                  end
                else
                  SHX4_2 = SHX8_1
                  SHX5_2 = "~INPUT_REPLAY_REWIND~ Open/close rear door"
                  SHX4_2(SHX5_2)
                end
              end
            end
          end
        end
      end
      SHX2_2 = IsControlJustReleased
      SHX3_2 = 0
      SHX4_2 = 44
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
      if SHX2_2 then
        SHX2_2 = IsEntityPlayingAnim
        SHX3_2 = SHX0_2
        SHX4_2 = "anim@heists@box_carry@"
        SHX5_2 = "idle"
        SHX6_2 = 3
        SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
        if not SHX2_2 then
          SHX2_2 = SHX1_1
          if not SHX2_2 then
            SHX2_2 = DecorGetInt
            SHX3_2 = SHX3_1
            SHX4_2 = "58fe205294"
            SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
            if 0 ~= SHX2_2 then
              SHX2_2 = SHX2_1
              if nil == SHX2_2 then
                SHX2_2 = 0
              end
              if 0 ~= SHX2_2 then
                SHX3_2 = GetVehicleDoorAngleRatio
                SHX4_2 = SHX2_2
                SHX5_2 = 4
                SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
                if 0 == SHX3_2 then
                  SHX3_2 = IsThisModelAHeli
                  SHX4_2 = GetEntityModel
                  SHX5_2 = SHX2_2
                  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2 = SHX4_2(SHX5_2)
                  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2)
                end
                if SHX3_2 then
                  SHX3_2 = SHX5_1
                  SHX4_2 = SHX0_2
                  SHX5_2 = SHX3_1
                  SHX3_2(SHX4_2, SHX5_2)
                end
              end
            else
              SHX2_2 = SHX5_1
              SHX3_2 = SHX0_2
              SHX4_2 = SHX3_1
              SHX2_2(SHX3_2, SHX4_2)
            end
          end
        end
      end
      SHX2_2 = SHX2_1
      if 0 ~= SHX2_2 then
        SHX2_2 = DecorGetBool
        SHX3_2 = SHX2_1
        SHX4_2 = "ddf749d1be"
        SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
        if not SHX2_2 then
          SHX2_2 = IsEntityPlayingAnim
          SHX3_2 = SHX0_2
          SHX4_2 = "anim@heists@box_carry@"
          SHX5_2 = "idle"
          SHX6_2 = 3
          SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
          if SHX2_2 then
            SHX2_2 = IsPedInVehicle
            SHX3_2 = SHX0_2
            SHX4_2 = SHX2_1
            SHX5_2 = false
            SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
            if not SHX2_2 then
              SHX2_2 = GetWorldPositionOfEntityBone
              SHX3_2 = SHX2_1
              SHX4_2 = GetEntityBoneIndexByName
              SHX5_2 = SHX2_1
              SHX6_2 = "bonnet"
              SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2 = SHX4_2(SHX5_2, SHX6_2)
              SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2)
              SHX3_2 = DrawMarker
              SHX4_2 = 1
              SHX5_2 = SHX2_2.x
              SHX6_2 = SHX2_2.y
              SHX7_2 = SHX2_2.z
              SHX7_2 = SHX7_2 - 1.75
              SHX8_2 = 0.0
              SHX9_2 = 0.0
              SHX10_2 = 0.0
              SHX11_2 = 0
              SHX12_2 = 0.0
              SHX13_2 = 0.0
              SHX14_2 = 1.5
              SHX15_2 = 1.5
              SHX16_2 = 1.5
              SHX17_2 = 0
              SHX18_2 = 48
              SHX19_2 = 135
              SHX20_2 = 235
              SHX21_2 = false
              SHX22_2 = true
              SHX23_2 = 2
              SHX24_2 = false
              SHX25_2 = nil
              SHX26_2 = nil
              SHX27_2 = false
              SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2)
              SHX3_2 = SHX7_1
              SHX3_2()
            end
          end
        end
      end
      SHX2_2 = IsControlJustReleased
      SHX3_2 = 0
      SHX4_2 = 191
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
      if SHX2_2 then
        SHX2_2 = IsEntityPlayingAnim
        SHX3_2 = SHX0_2
        SHX4_2 = "anim@heists@box_carry@"
        SHX5_2 = "idle"
        SHX6_2 = 3
        SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
        if not SHX2_2 then
          SHX2_2 = SHX11_1
          SHX3_2 = SHX3_1
          SHX2_2(SHX3_2)
        end
      end
    end
  end
  SHX1_2 = SHX1_1
  if not SHX1_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.getPlayerVehicle
    SHX1_2 = SHX1_2()
    if 0 == SHX1_2 then
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.hasClientPermission
      SHX2_2 = "nhs.onduty.permission"
      SHX1_2 = SHX1_2(SHX2_2)
      if SHX1_2 then
        SHX1_2 = SHX6_1
        SHX2_2 = 5.0
        SHX3_2 = SHX0_1.ambulanceModels
        SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
        if SHX1_2 and 0 ~= SHX1_2 then
          SHX2_2 = DecorGetBool
          SHX3_2 = SHX1_2
          SHX4_2 = "ddf749d1be"
          SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
          if SHX2_2 then
            SHX2_2 = IsPedInVehicle
            SHX3_2 = SHX0_2
            SHX4_2 = SHX1_2
            SHX5_2 = false
            SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
            if not SHX2_2 then
              SHX2_2 = GetWorldPositionOfEntityBone
              SHX3_2 = SHX1_2
              SHX4_2 = GetEntityBoneIndexByName
              SHX5_2 = SHX1_2
              SHX6_2 = "bonnet"
              SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2 = SHX4_2(SHX5_2, SHX6_2)
              SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2)
              SHX3_2 = GetEntityCoords
              SHX4_2 = SHX0_2
              SHX3_2 = SHX3_2(SHX4_2)
              SHX3_2 = SHX3_2 - SHX2_2
              SHX3_2 = #SHX3_2
              if SHX3_2 < 4.0 then
                SHX3_2 = DrawMarker
                SHX4_2 = 1
                SHX5_2 = SHX2_2.x
                SHX6_2 = SHX2_2.y
                SHX7_2 = SHX2_2.z
                SHX7_2 = SHX7_2 - 1.75
                SHX8_2 = 0.0
                SHX9_2 = 0.0
                SHX10_2 = 0.0
                SHX11_2 = 0
                SHX12_2 = 0.0
                SHX13_2 = 0.0
                SHX14_2 = 1.5
                SHX15_2 = 1.5
                SHX16_2 = 1.5
                SHX17_2 = 0
                SHX18_2 = 48
                SHX19_2 = 135
                SHX20_2 = 235
                SHX21_2 = false
                SHX22_2 = true
                SHX23_2 = 2
                SHX24_2 = false
                SHX25_2 = nil
                SHX26_2 = nil
                SHX27_2 = false
                SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2)
                SHX2_1 = SHX1_2
                SHX3_2 = SHX7_1
                SHX3_2()
                SHX3_2 = GetVehicleDoorAngleRatio
                SHX4_2 = SHX1_2
                SHX5_2 = 4
                SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
                SHX3_2 = 0 ~= SHX3_2
                if SHX3_2 then
                  SHX4_2 = SHX8_1
                  SHX5_2 = "~INPUT_REPLAY_REWIND~ Close door  ~INPUT_REPLAY_FFWD~ Take stretcher out"
                  SHX4_2(SHX5_2)
                  SHX4_2 = IsControlJustReleased
                  SHX5_2 = 0
                  SHX6_2 = 300
                  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
                  if SHX4_2 then
                    SHX4_2 = CMG
                    SHX4_2 = SHX4_2.getNetId
                    SHX5_2 = SHX1_2
                    SHX6_2 = "Stretchers"
                    SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
                    SHX5_2 = pairs
                    SHX6_2 = CMG
                    SHX6_2 = SHX6_2.getAllVehicles
                    SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2 = SHX6_2()
                    SHX5_2, SHX6_2, SHX7_2, SHX8_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2, SHX24_2, SHX25_2, SHX26_2, SHX27_2)
                    for SHX9_2, SHX10_2 in SHX5_2, SHX6_2, SHX7_2, SHX8_2 do
                      SHX11_2 = SHX0_1.stretcherModels
                      SHX12_2 = GetEntityModel
                      SHX13_2 = SHX10_2
                      SHX12_2 = SHX12_2(SHX13_2)
                      SHX11_2 = SHX11_2[SHX12_2]
                      if SHX11_2 then
                        SHX11_2 = DecorGetInt
                        SHX12_2 = SHX10_2
                        SHX13_2 = "58fe205294"
                        SHX11_2 = SHX11_2(SHX12_2, SHX13_2)
                        if SHX11_2 == SHX4_2 then
                          SHX11_2 = DetachEntity
                          SHX12_2 = SHX10_2
                          SHX13_2 = true
                          SHX14_2 = false
                          SHX11_2(SHX12_2, SHX13_2, SHX14_2)
                          SHX11_2 = FreezeEntityPosition
                          SHX12_2 = SHX10_2
                          SHX13_2 = false
                          SHX11_2(SHX12_2, SHX13_2)
                          SHX11_2 = vector3
                          SHX12_2 = 0.0
                          SHX13_2 = -2.0
                          SHX14_2 = 0.0
                          SHX11_2 = SHX11_2(SHX12_2, SHX13_2, SHX14_2)
                          SHX11_2 = SHX2_2 + SHX11_2
                          SHX12_2 = SetEntityCoords
                          SHX13_2 = SHX10_2
                          SHX14_2 = SHX11_2.x
                          SHX15_2 = SHX11_2.y
                          SHX16_2 = SHX11_2.z
                          SHX17_2 = false
                          SHX18_2 = false
                          SHX19_2 = false
                          SHX20_2 = false
                          SHX12_2(SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
                          SHX12_2 = SetVehicleOnGroundProperly
                          SHX13_2 = SHX10_2
                          SHX12_2(SHX13_2)
                          SHX12_2 = SetVehicleExtra
                          SHX13_2 = SHX10_2
                          SHX14_2 = 1
                          SHX15_2 = true
                          SHX12_2(SHX13_2, SHX14_2, SHX15_2)
                          SHX12_2 = SetVehicleExtra
                          SHX13_2 = SHX10_2
                          SHX14_2 = 2
                          SHX15_2 = false
                          SHX12_2(SHX13_2, SHX14_2, SHX15_2)
                          SHX12_2 = DecorSetInt
                          SHX13_2 = SHX10_2
                          SHX14_2 = "58fe205294"
                          SHX15_2 = 0
                          SHX12_2(SHX13_2, SHX14_2, SHX15_2)
                          SHX12_2 = NetworkHasControlOfEntity
                          SHX13_2 = SHX1_2
                          SHX12_2 = SHX12_2(SHX13_2)
                          if SHX12_2 then
                            SHX12_2 = DecorSetBool
                            SHX13_2 = SHX1_2
                            SHX14_2 = "ddf749d1be"
                            SHX15_2 = false
                            SHX12_2(SHX13_2, SHX14_2, SHX15_2)
                          else
                            SHX12_2 = TriggerServerEvent
                            SHX13_2 = "c15aeb9b9f"
                            SHX14_2 = CMG
                            SHX14_2 = SHX14_2.getNetId
                            SHX15_2 = SHX1_2
                            SHX16_2 = "Stretcher"
                            SHX14_2 = SHX14_2(SHX15_2, SHX16_2)
                            SHX15_2 = false
                            SHX12_2(SHX13_2, SHX14_2, SHX15_2)
                          end
                          SHX12_2 = tCMG
                          SHX12_2 = SHX12_2.notify
                          SHX13_2 = "Stretcher taken out."
                          SHX12_2(SHX13_2)
                          break
                        end
                      end
                    end
                  end
                else
                  SHX4_2 = SHX8_1
                  SHX5_2 = "~INPUT_REPLAY_REWIND~ Open rear door"
                  SHX4_2(SHX5_2)
                end
              end
            end
          end
        end
      end
    end
  end
end
SHX13_1 = CMG
SHX13_1 = SHX13_1.createThreadOnTick
SHX14_1 = SHX12_1
SHX15_1 = "NHS Stretcher"
SHX13_1(SHX14_1, SHX15_1)
function SHX13_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2
  SHX2_2 = Citizen
  SHX2_2 = SHX2_2.CreateThread
  function SHX3_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3, SHX27_3, SHX28_3, SHX29_3
    SHX0_3 = NetworkGetNetworkIdFromEntity
    SHX1_3 = SHX1_2
    SHX0_3 = SHX0_3(SHX1_3)
    if 0 == SHX0_3 then
      return
    end
    SHX1_3 = TriggerServerEvent
    SHX2_3 = "5672bd2d03"
    SHX3_3 = SHX0_3
    SHX1_3(SHX2_3, SHX3_3)
    SHX1_3 = AttachEntityToEntity
    SHX2_3 = SHX1_2
    SHX3_3 = PlayerPedId
    SHX3_3 = SHX3_3()
    SHX4_3 = -1
    SHX5_3 = -0.05
    SHX6_3 = 1.3
    SHX7_3 = -0.345
    SHX8_3 = 180.0
    SHX9_3 = 180.0
    SHX10_3 = 180.0
    SHX11_3 = false
    SHX12_3 = false
    SHX13_3 = false
    SHX14_3 = true
    SHX15_3 = 0
    SHX16_3 = true
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3)
    while true do
      SHX1_3 = NetworkHasControlOfEntity
      SHX2_3 = SHX1_2
      SHX1_3 = SHX1_3(SHX2_3)
      if SHX1_3 then
        SHX1_3 = IsEntityAttachedToEntity
        SHX2_3 = SHX1_2
        SHX3_3 = SHX0_2
        SHX1_3 = SHX1_3(SHX2_3, SHX3_3)
        if SHX1_3 then
          break
        end
      end
      SHX1_3 = Wait
      SHX2_3 = 0
      SHX1_3(SHX2_3)
    end
    SHX1_3 = SetEntityHeading
    SHX2_3 = SHX0_2
    SHX3_3 = GetEntityHeading
    SHX4_3 = SHX1_2
    SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3, SHX27_3, SHX28_3, SHX29_3 = SHX3_3(SHX4_3)
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3, SHX27_3, SHX28_3, SHX29_3)
    SHX1_3 = SetVehicleExtra
    SHX2_3 = SHX1_2
    SHX3_3 = 1
    SHX4_3 = false
    SHX1_3(SHX2_3, SHX3_3, SHX4_3)
    SHX1_3 = SetVehicleExtra
    SHX2_3 = SHX1_2
    SHX3_3 = 2
    SHX4_3 = true
    SHX1_3(SHX2_3, SHX3_3, SHX4_3)
    SHX1_3 = CMG
    SHX1_3 = SHX1_3.loadAnimDict
    SHX2_3 = "anim@heists@box_carry@"
    SHX1_3(SHX2_3)
    SHX1_3 = 0
    while true do
      SHX2_3 = IsEntityAttachedToEntity
      SHX3_3 = SHX1_2
      SHX4_3 = SHX0_2
      SHX2_3 = SHX2_3(SHX3_3, SHX4_3)
      if not SHX2_3 then
        break
      end
      SHX2_3 = Citizen
      SHX2_3 = SHX2_3.Wait
      SHX3_3 = 0
      SHX2_3(SHX3_3)
      SHX2_3 = IsEntityPlayingAnim
      SHX3_3 = SHX0_2
      SHX4_3 = "anim@heists@box_carry@"
      SHX5_3 = "idle"
      SHX6_3 = 3
      SHX2_3 = SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3)
      if not SHX2_3 then
        SHX2_3 = TaskPlayAnim
        SHX3_3 = SHX0_2
        SHX4_3 = "anim@heists@box_carry@"
        SHX5_3 = "idle"
        SHX6_3 = 8.0
        SHX7_3 = 8.0
        SHX8_3 = -1
        SHX9_3 = 50
        SHX10_3 = 0
        SHX11_3 = false
        SHX12_3 = false
        SHX13_3 = false
        SHX2_3(SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3)
      end
      SHX2_3 = IsControlJustReleased
      SHX3_3 = 0
      SHX4_3 = 73
      SHX2_3 = SHX2_3(SHX3_3, SHX4_3)
      if not SHX2_3 then
        SHX2_3 = IsPedDeadOrDying
        SHX3_3 = SHX0_2
        SHX4_3 = false
        SHX2_3 = SHX2_3(SHX3_3, SHX4_3)
        if not SHX2_3 then
          goto SHX_LABEL_129
        end
      end
      SHX2_3 = ClearPedTasksImmediately
      SHX3_3 = SHX0_2
      SHX2_3(SHX3_3)
      SHX2_3 = SetVehicleExtra
      SHX3_3 = SHX1_2
      SHX4_3 = 1
      SHX5_3 = true
      SHX2_3(SHX3_3, SHX4_3, SHX5_3)
      SHX2_3 = SetVehicleExtra
      SHX3_3 = SHX1_2
      SHX4_3 = 2
      SHX5_3 = false
      SHX2_3(SHX3_3, SHX4_3, SHX5_3)
      SHX2_3 = DetachEntity
      SHX3_3 = SHX1_2
      SHX4_3 = true
      SHX5_3 = false
      SHX2_3(SHX3_3, SHX4_3, SHX5_3)
      SHX2_3 = SetVehicleOnGroundProperly
      SHX3_3 = SHX1_2
      SHX2_3(SHX3_3)
      -- [FIX IF ERROR] Move ::SHX_LABEL_129:: outside nested blocks until all 'goto SHX_LABEL_129' can see it
      ::SHX_LABEL_129::
      SHX2_3 = DecorGetInt
      SHX3_3 = SHX1_2
      SHX4_3 = "58fe205294"
      SHX2_3 = SHX2_3(SHX3_3, SHX4_3)
      if 0 ~= SHX2_3 then
        SHX2_3 = CMG
        SHX2_3 = SHX2_3.getObjectId
        SHX3_3 = DecorGetInt
        SHX4_3 = SHX1_2
        SHX5_3 = "58fe205294"
        SHX3_3 = SHX3_3(SHX4_3, SHX5_3)
        SHX4_3 = "pushStretcher(ped, nearbyStretcher)"
        SHX2_3 = SHX2_3(SHX3_3, SHX4_3)
        if SHX2_3 then
          SHX3_3 = DecorGetBool
          SHX4_3 = SHX2_3
          SHX5_3 = "ddf749d1be"
          SHX3_3 = SHX3_3(SHX4_3, SHX5_3)
          if SHX3_3 then
            SHX3_3 = NetworkHasControlOfEntity
            SHX4_3 = SHX2_3
            SHX3_3 = SHX3_3(SHX4_3)
            if not SHX3_3 then
              SHX3_3 = GetGameTimer
              SHX3_3 = SHX3_3()
              SHX3_3 = SHX3_3 - SHX1_3
              SHX4_3 = 200
              if SHX3_3 > SHX4_3 then
                SHX3_3 = TriggerServerEvent
                SHX4_3 = "c15aeb9b9f"
                SHX5_3 = CMG
                SHX5_3 = SHX5_3.getNetId
                SHX6_3 = SHX2_3
                SHX7_3 = "Stretchers"
                SHX5_3 = SHX5_3(SHX6_3, SHX7_3)
                SHX6_3 = false
                SHX3_3(SHX4_3, SHX5_3, SHX6_3)
                SHX3_3 = GetGameTimer
                SHX3_3 = SHX3_3()
                SHX1_3 = SHX3_3
              end
            else
              SHX3_3 = DecorSetBool
              SHX4_3 = SHX2_3
              SHX5_3 = "ddf749d1be"
              SHX6_3 = false
              SHX3_3(SHX4_3, SHX5_3, SHX6_3)
            end
          end
        end
      end
      SHX2_3 = SHX6_1
      SHX3_3 = 15.0
      SHX4_3 = SHX0_1.ambulanceModels
      SHX2_3 = SHX2_3(SHX3_3, SHX4_3)
      SHX2_1 = SHX2_3
      SHX2_3 = SHX2_1
      if nil ~= SHX2_3 then
        SHX2_3 = SHX2_1
        if 0 ~= SHX2_3 then
          SHX2_3 = GetVehicleDoorAngleRatio
          SHX3_3 = SHX2_1
          SHX4_3 = 4
          SHX2_3 = SHX2_3(SHX3_3, SHX4_3)
          SHX2_3 = 0 ~= SHX2_3
          if not SHX2_3 then
            SHX3_3 = SHX8_1
            SHX4_3 = "~INPUT_REPLAY_REWIND~ Open rear door"
            SHX3_3(SHX4_3)
          else
            SHX3_3 = SHX8_1
            SHX4_3 = "~INPUT_REPLAY_REWIND~ Close door  ~INPUT_REPLAY_FFWD~ Put stretcher in"
            SHX3_3(SHX4_3)
          end
          SHX3_3 = DecorGetBool
          SHX4_3 = SHX2_1
          SHX5_3 = "ddf749d1be"
          SHX3_3 = SHX3_3(SHX4_3, SHX5_3)
          if not SHX3_3 then
            SHX4_3 = GetWorldPositionOfEntityBone
            SHX5_3 = SHX2_1
            SHX6_3 = GetEntityBoneIndexByName
            SHX7_3 = SHX2_1
            SHX8_3 = "bonnet"
            SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3, SHX27_3, SHX28_3, SHX29_3 = SHX6_3(SHX7_3, SHX8_3)
            SHX4_3 = SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3, SHX27_3, SHX28_3, SHX29_3)
            SHX5_3 = DrawMarker
            SHX6_3 = 1
            SHX7_3 = SHX4_3.x
            SHX8_3 = SHX4_3.y
            SHX9_3 = SHX4_3.z
            SHX9_3 = SHX9_3 - 1.75
            SHX10_3 = 0.0
            SHX11_3 = 0.0
            SHX12_3 = 0.0
            SHX13_3 = 0
            SHX14_3 = 0.0
            SHX15_3 = 0.0
            SHX16_3 = 1.5
            SHX17_3 = 1.5
            SHX18_3 = 1.5
            SHX19_3 = 0
            SHX20_3 = 48
            SHX21_3 = 135
            SHX22_3 = 235
            SHX23_3 = false
            SHX24_3 = true
            SHX25_3 = 2
            SHX26_3 = false
            SHX27_3 = nil
            SHX28_3 = nil
            SHX29_3 = false
            SHX5_3(SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3, SHX27_3, SHX28_3, SHX29_3)
          end
          SHX4_3 = IsControlJustReleased
          SHX5_3 = 0
          SHX6_3 = 300
          SHX4_3 = SHX4_3(SHX5_3, SHX6_3)
          if SHX4_3 then
            if not SHX2_3 then
              SHX4_3 = IsThisModelAHeli
              SHX5_3 = GetEntityModel
              SHX6_3 = SHX2_1
              SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3, SHX27_3, SHX28_3, SHX29_3 = SHX5_3(SHX6_3)
              SHX4_3 = SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3, SHX27_3, SHX28_3, SHX29_3)
            end
            if SHX4_3 and not SHX3_3 then
              SHX4_3 = ClearPedTasksImmediately
              SHX5_3 = SHX0_2
              SHX4_3(SHX5_3)
              SHX4_3 = SetVehicleExtra
              SHX5_3 = SHX1_2
              SHX6_3 = 1
              SHX7_3 = true
              SHX4_3(SHX5_3, SHX6_3, SHX7_3)
              SHX4_3 = SetVehicleExtra
              SHX5_3 = SHX1_2
              SHX6_3 = 2
              SHX7_3 = false
              SHX4_3(SHX5_3, SHX6_3, SHX7_3)
              SHX4_3 = DetachEntity
              SHX5_3 = SHX1_2
              SHX6_3 = true
              SHX7_3 = false
              SHX4_3(SHX5_3, SHX6_3, SHX7_3)
              SHX4_3 = SetVehicleOnGroundProperly
              SHX5_3 = SHX1_2
              SHX4_3(SHX5_3)
              SHX4_3 = IsThisModelAHeli
              SHX5_3 = GetEntityModel
              SHX6_3 = SHX2_1
              SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3, SHX27_3, SHX28_3, SHX29_3 = SHX5_3(SHX6_3)
              SHX4_3 = SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3, SHX27_3, SHX28_3, SHX29_3)
              if SHX4_3 then
                SHX4_3 = AttachEntityToEntity
                SHX5_3 = SHX1_2
                SHX6_3 = SHX2_1
                SHX7_3 = -1
                SHX8_3 = 0.0
                SHX9_3 = 0.0
                SHX10_3 = 0.0
                SHX11_3 = 0.0
                SHX12_3 = 0.0
                SHX13_3 = 0.0
                SHX14_3 = false
                SHX15_3 = false
                SHX16_3 = false
                SHX17_3 = false
                SHX18_3 = 0.0
                SHX19_3 = true
                SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3)
              else
                SHX4_3 = AttachEntityToEntity
                SHX5_3 = SHX1_2
                SHX6_3 = SHX2_1
                SHX7_3 = GetEntityBoneIndexByName
                SHX8_3 = SHX2_1
                SHX9_3 = "engine"
                SHX7_3 = SHX7_3(SHX8_3, SHX9_3)
                SHX8_3 = 0.0
                SHX9_3 = -3.0
                SHX10_3 = -1.0
                SHX11_3 = 0.0
                SHX12_3 = 0.0
                SHX13_3 = 0.0
                SHX14_3 = false
                SHX15_3 = false
                SHX16_3 = false
                SHX17_3 = false
                SHX18_3 = 0.0
                SHX19_3 = true
                SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3)
              end
              SHX4_3 = NetworkHasControlOfEntity
              SHX5_3 = SHX2_1
              SHX4_3 = SHX4_3(SHX5_3)
              if not SHX4_3 then
                SHX4_3 = TriggerServerEvent
                SHX5_3 = "c15aeb9b9f"
                SHX6_3 = CMG
                SHX6_3 = SHX6_3.getNetId
                SHX7_3 = SHX2_1
                SHX8_3 = "Stretcher"
                SHX6_3 = SHX6_3(SHX7_3, SHX8_3)
                SHX7_3 = true
                SHX4_3(SHX5_3, SHX6_3, SHX7_3)
              else
                SHX4_3 = DecorSetBool
                SHX5_3 = SHX2_1
                SHX6_3 = "ddf749d1be"
                SHX7_3 = true
                SHX4_3(SHX5_3, SHX6_3, SHX7_3)
              end
              SHX4_3 = NetworkHasControlOfEntity
              SHX5_3 = SHX1_2
              SHX4_3 = SHX4_3(SHX5_3)
              if not SHX4_3 then
                SHX4_3 = SHX3_1
                if SHX4_3 then
                  SHX4_3 = TriggerServerEvent
                  SHX5_3 = "91ad572dcd"
                  SHX6_3 = CMG
                  SHX6_3 = SHX6_3.getNetId
                  SHX7_3 = SHX3_1
                  SHX8_3 = "Stretchers"
                  SHX6_3 = SHX6_3(SHX7_3, SHX8_3)
                  SHX7_3 = CMG
                  SHX7_3 = SHX7_3.getNetId
                  SHX8_3 = SHX2_1
                  SHX9_3 = "Stretchers"
                  SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3, SHX27_3, SHX28_3, SHX29_3 = SHX7_3(SHX8_3, SHX9_3)
                  SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3, SHX27_3, SHX28_3, SHX29_3)
                end
              else
                SHX4_3 = DecorSetInt
                SHX5_3 = SHX1_2
                SHX6_3 = "58fe205294"
                SHX7_3 = CMG
                SHX7_3 = SHX7_3.getNetId
                SHX8_3 = SHX2_1
                SHX9_3 = "Stretchers"
                SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3, SHX27_3, SHX28_3, SHX29_3 = SHX7_3(SHX8_3, SHX9_3)
                SHX4_3(SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3, SHX20_3, SHX21_3, SHX22_3, SHX23_3, SHX24_3, SHX25_3, SHX26_3, SHX27_3, SHX28_3, SHX29_3)
              end
              SHX4_3 = FreezeEntityPosition
              SHX5_3 = SHX1_2
              SHX6_3 = true
              SHX4_3(SHX5_3, SHX6_3)
            end
          end
        end
      end
    end
    SHX2_3 = RemoveAnimDict
    SHX3_3 = "anim@heists@box_carry@"
    SHX2_3(SHX3_3)
  end
  SHX2_2(SHX3_2)
end
SHX5_1 = SHX13_1
SHX13_1 = RegisterNetEvent
SHX14_1 = "5672bd2d03"
function SHX15_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2
  SHX2_2 = NetworkDoesNetworkIdExist
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  if not SHX2_2 then
    return
  end
  SHX2_2 = NetworkGetEntityFromNetworkId
  SHX3_2 = SHX0_2
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = GetPlayerFromServerId
  SHX4_2 = SHX1_2
  SHX3_2 = SHX3_2(SHX4_2)
  if 0 == SHX2_2 or -1 == SHX3_2 then
    return
  end
  SHX4_2 = GetPlayerPed
  SHX5_2 = SHX3_2
  SHX4_2 = SHX4_2(SHX5_2)
  if 0 == SHX4_2 then
    return
  end
  SHX5_2 = AttachEntityToEntity
  SHX6_2 = SHX2_2
  SHX7_2 = SHX4_2
  SHX8_2 = -1
  SHX9_2 = -0.05
  SHX10_2 = 1.3
  SHX11_2 = -0.345
  SHX12_2 = 180.0
  SHX13_2 = 180.0
  SHX14_2 = 180.0
  SHX15_2 = false
  SHX16_2 = false
  SHX17_2 = false
  SHX18_2 = true
  SHX19_2 = 0
  SHX20_2 = true
  SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2)
end
SHX13_1(SHX14_1, SHX15_1)
SHX13_1 = 0
SHX14_1 = RegisterCommand
SHX15_1 = "stretcher"
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hasClientPermission
  SHX1_2 = "nhs.onduty.permission"
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX0_2 = GetGameTimer
    SHX0_2 = SHX0_2()
    SHX1_2 = SHX13_1
    SHX0_2 = SHX0_2 - SHX1_2
    SHX1_2 = 10000
    if SHX0_2 > SHX1_2 then
      SHX0_2 = GetGameTimer
      SHX0_2 = SHX0_2()
      SHX13_1 = SHX0_2
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.getPlayerPed
      SHX0_2 = SHX0_2()
      SHX1_2 = CMG
      SHX1_2 = SHX1_2.getPlayerCoords
      SHX1_2 = SHX1_2()
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.loadModel
      SHX3_2 = -665859588
      SHX2_2(SHX3_2)
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.requestEntitySpawn
      SHX3_2 = "stretcher"
      SHX2_2(SHX3_2)
      SHX2_2 = CMG
      SHX2_2 = SHX2_2.spawnVehicle
      SHX3_2 = -665859588
      SHX4_2 = SHX1_2.x
      SHX5_2 = SHX1_2.y
      SHX6_2 = SHX1_2.z
      SHX7_2 = GetEntityHeading
      SHX8_2 = SHX0_2
      SHX7_2 = SHX7_2(SHX8_2)
      SHX8_2 = false
      SHX9_2 = true
      SHX10_2 = true
      SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2)
      SHX3_2 = SetVehicleDoorsLocked
      SHX4_2 = SHX2_2
      SHX5_2 = 2
      SHX3_2(SHX4_2, SHX5_2)
      SHX3_2 = SetVehicleOnGroundProperly
      SHX4_2 = SHX2_2
      SHX3_2(SHX4_2)
      SHX3_2 = SetVehicleExtra
      SHX4_2 = SHX2_2
      SHX5_2 = 7
      SHX6_2 = true
      SHX3_2(SHX4_2, SHX5_2, SHX6_2)
      SHX3_2 = SetVehicleExtra
      SHX4_2 = SHX2_2
      SHX5_2 = 6
      SHX6_2 = true
      SHX3_2(SHX4_2, SHX5_2, SHX6_2)
      SHX3_2 = SetVehicleExtra
      SHX4_2 = SHX2_2
      SHX5_2 = 5
      SHX6_2 = true
      SHX3_2(SHX4_2, SHX5_2, SHX6_2)
      SHX3_2 = SetVehicleExtra
      SHX4_2 = SHX2_2
      SHX5_2 = 3
      SHX6_2 = true
      SHX3_2(SHX4_2, SHX5_2, SHX6_2)
      SHX3_2 = SetVehicleExtra
      SHX4_2 = SHX2_2
      SHX5_2 = 1
      SHX6_2 = true
      SHX3_2(SHX4_2, SHX5_2, SHX6_2)
      SHX3_2 = SetVehicleExtra
      SHX4_2 = SHX2_2
      SHX5_2 = 2
      SHX6_2 = false
      SHX3_2(SHX4_2, SHX5_2, SHX6_2)
      SHX3_2 = SetVehicleExtra
      SHX4_2 = SHX2_2
      SHX5_2 = 11
      SHX6_2 = false
      SHX3_2(SHX4_2, SHX5_2, SHX6_2)
      SHX3_2 = SetVehicleExtra
      SHX4_2 = SHX2_2
      SHX5_2 = 12
      SHX6_2 = true
      SHX3_2(SHX4_2, SHX5_2, SHX6_2)
      SHX3_2 = SetModelAsNoLongerNeeded
      SHX4_2 = -665859588
      SHX3_2(SHX4_2)
      SHX3_2 = tCMG
      SHX3_2 = SHX3_2.notify
      SHX4_2 = "Stretcher created."
      SHX3_2(SHX4_2)
    end
  end
end
SHX17_1 = false
SHX14_1(SHX15_1, SHX16_1, SHX17_1)
SHX14_1 = RegisterCommand
SHX15_1 = "removestretcher"
function SHX16_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.hasClientPermission
  SHX1_2 = "nhs.onduty.permission"
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX0_2 = SHX6_1
    SHX1_2 = 5.0
    SHX2_2 = SHX0_1.stretcherModels
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if nil ~= SHX0_2 then
      SHX1_2 = TriggerServerEvent
      SHX2_2 = "2bfff324f7"
      SHX3_2 = CMG
      SHX3_2 = SHX3_2.getNetId
      SHX4_2 = SHX0_2
      SHX5_2 = "Stretchers"
      SHX3_2, SHX4_2, SHX5_2 = SHX3_2(SHX4_2, SHX5_2)
      SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
    end
  end
end
SHX17_1 = false
SHX14_1(SHX15_1, SHX16_1, SHX17_1)
SHX14_1 = RegisterNetEvent
SHX15_1 = "0a9884b220"
function SHX16_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getObjectId
  SHX3_2 = SHX0_2
  SHX4_2 = "0a9884b220"
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  if SHX2_2 then
    SHX3_2 = DecorSetInt
    SHX4_2 = SHX2_2
    SHX5_2 = "58fe205294"
    SHX6_2 = SHX1_2
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  end
end
SHX14_1(SHX15_1, SHX16_1)
SHX14_1 = RegisterNetEvent
SHX15_1 = "5f63e7b654"
function SHX16_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getObjectId
  SHX3_2 = SHX0_2
  SHX4_2 = "5f63e7b654"
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  if SHX2_2 then
    SHX3_2 = DecorSetBool
    SHX4_2 = SHX2_2
    SHX5_2 = "ddf749d1be"
    SHX6_2 = SHX1_2
    SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  end
end
SHX14_1(SHX15_1, SHX16_1)
SHX14_1 = RegisterNetEvent
SHX15_1 = "48c58592c1"
function SHX16_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getObjectId
  SHX2_2 = SHX0_2
  SHX3_2 = "48c58592c1"
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX2_2 = GetVehicleDoorAngleRatio
  SHX3_2 = SHX1_2
  SHX4_2 = 4
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
  if 0 == SHX2_2 then
    SHX2_2 = GetVehicleDoorAngleRatio
    SHX3_2 = SHX1_2
    SHX4_2 = 3
    SHX2_2 = SHX2_2(SHX3_2, SHX4_2)
    if 0 == SHX2_2 then
      goto SHX_LABEL_32
    end
  end
  SHX2_2 = SetVehicleDoorShut
  SHX3_2 = SHX1_2
  SHX4_2 = 3
  SHX5_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX2_2 = Wait
  SHX3_2 = 500
  SHX2_2(SHX3_2)
  SHX2_2 = SetVehicleDoorShut
  SHX3_2 = SHX1_2
  SHX4_2 = 4
  SHX5_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  goto SHX_LABEL_47
  -- [FIX IF ERROR] Move ::SHX_LABEL_32:: outside nested blocks until all 'goto SHX_LABEL_32' can see it
  ::SHX_LABEL_32::
  SHX2_2 = SetVehicleDoorOpen
  SHX3_2 = SHX1_2
  SHX4_2 = 4
  SHX5_2 = false
  SHX6_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX2_2 = Wait
  SHX3_2 = 500
  SHX2_2(SHX3_2)
  SHX2_2 = SetVehicleDoorOpen
  SHX3_2 = SHX1_2
  SHX4_2 = 3
  SHX5_2 = false
  SHX6_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  -- [FIX IF ERROR] Move ::SHX_LABEL_47:: outside nested blocks until all 'goto SHX_LABEL_47' can see it
  ::SHX_LABEL_47::
end
SHX14_1(SHX15_1, SHX16_1)
SHX14_1 = CMG
function SHX15_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX1_1
  return SHX0_2
end
SHX14_1.isUsingStretcher = SHX15_1
SHX14_1 = RegisterNetEvent
SHX15_1 = "2d2aca0333"
function SHX16_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
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
    SHX2_2 = DoesEntityExist
    SHX3_2 = SHX1_2
    SHX2_2 = SHX2_2(SHX3_2)
    if SHX2_2 then
      SHX2_2 = SHX11_1
      SHX3_2 = SHX1_2
      SHX4_2 = 2
      SHX2_2(SHX3_2, SHX4_2)
    end
  end
end
SHX14_1(SHX15_1, SHX16_1)
