-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1
SHX0_1 = false
SHX1_1 = 0
SHX2_1 = false
SHX3_1 = false
SHX4_1 = RegisterNetEvent
SHX5_1 = "7e74b66dae"
function SHX6_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX2_1
  if SHX0_2 ~= SHX1_2 then
    SHX2_1 = SHX0_2
    SHX1_2 = notify
    if SHX0_2 then
      SHX2_2 = "~g~"
      if SHX2_2 then
        goto SHX_LABEL_12
      end
    end
    SHX2_2 = "~r~"
    -- [FIX IF ERROR] Move ::SHX_LABEL_12:: outside nested blocks until all 'goto SHX_LABEL_12' can see it
    ::SHX_LABEL_12::
    SHX3_2 = "Your phone has been set to "
    if SHX0_2 then
      SHX4_2 = "on duty"
      if SHX4_2 then
        goto SHX_LABEL_19
      end
    end
    SHX4_2 = "off duty"
    -- [FIX IF ERROR] Move ::SHX_LABEL_19:: outside nested blocks until all 'goto SHX_LABEL_19' can see it
    ::SHX_LABEL_19::
    SHX5_2 = "."
    SHX2_2 = SHX2_2 .. SHX3_2 .. SHX4_2 .. SHX5_2
    SHX1_2(SHX2_2)
  end
end
SHX4_1(SHX5_1, SHX6_1)
SHX4_1 = false
SHX5_1 = false
function SHX6_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = Citizen
  SHX1_2 = SHX1_2.InvokeNative
  SHX2_2 = 2635073306796480568
  SHX3_2 = SHX0_2
  return SHX1_2(SHX2_2, SHX3_2)
end
CellFrontCamActivate = SHX6_1
SHX6_1 = BeginTakeHighQualityPhoto
TakePhoto = SHX6_1
SHX6_1 = GetStatusOfTakeHighQualityPhoto
WasPhotoTaken = SHX6_1
SHX6_1 = SaveHighQualityPhoto
SavePhoto = SHX6_1
SHX6_1 = FreeMemoryForHighQualityPhoto
ClearPhoto = SHX6_1
SHX6_1 = RegisterCommand
SHX7_1 = "selfie"
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = DisplayHelpText
  SHX1_2 = "Backspace to close camera, /selfie again to take a selfie"
  SHX0_2(SHX1_2)
  SHX0_2 = SHX0_1
  if true == SHX0_2 then
    SHX0_2 = SHX4_1
    SHX0_2 = not SHX0_2
    SHX4_1 = SHX0_2
    SHX0_2 = CellFrontCamActivate
    SHX1_2 = SHX4_1
    SHX0_2(SHX1_2)
  else
    SHX0_2 = CreateMobilePhone
    SHX1_2 = SHX1_1
    SHX0_2(SHX1_2)
    SHX0_2 = CellCamActivate
    SHX1_2 = true
    SHX2_2 = true
    SHX0_2(SHX1_2, SHX2_2)
    SHX0_2 = true
    SHX0_1 = SHX0_2
    while true do
      SHX0_2 = SHX0_1
      if not SHX0_2 then
        break
      end
      SHX0_2 = IsControlJustPressed
      SHX1_2 = 0
      SHX2_2 = 177
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
      if SHX0_2 then
        SHX0_2 = DestroyMobilePhone
        SHX0_2()
        SHX0_2 = false
        SHX0_1 = SHX0_2
        SHX0_2 = CellCamActivate
        SHX1_2 = false
        SHX2_2 = false
        SHX0_2(SHX1_2, SHX2_2)
        SHX0_2 = SHX5_1
        if true == SHX0_2 then
          SHX0_2 = false
          SHX5_1 = SHX0_2
          SHX0_2 = Citizen
          SHX0_2 = SHX0_2.Wait
          SHX1_2 = 2500
          SHX0_2(SHX1_2)
        end
      end
      SHX0_2 = IsControlJustPressed
      SHX1_2 = 0
      SHX2_2 = 176
      SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
      if SHX0_2 then
        SHX0_2 = TakePhoto
        SHX0_2()
        SHX0_2 = WasPhotoTaken
        SHX0_2 = SHX0_2()
        if SHX0_2 then
          SHX0_2 = SavePhoto
          SHX1_2 = -1
          SHX0_2 = SHX0_2(SHX1_2)
          if SHX0_2 then
            SHX0_2 = ClearPhoto
            SHX0_2()
          end
        end
      end
      SHX0_2 = HideHudComponentThisFrame
      SHX1_2 = 7
      SHX0_2(SHX1_2)
      SHX0_2 = HideHudComponentThisFrame
      SHX1_2 = 8
      SHX0_2(SHX1_2)
      SHX0_2 = HideHudComponentThisFrame
      SHX1_2 = 9
      SHX0_2(SHX1_2)
      SHX0_2 = HideHudComponentThisFrame
      SHX1_2 = 6
      SHX0_2(SHX1_2)
      SHX0_2 = HideHudComponentThisFrame
      SHX1_2 = 19
      SHX0_2(SHX1_2)
      SHX0_2 = HideHudAndRadarThisFrame
      SHX0_2()
      SHX0_2 = Wait
      SHX1_2 = 0
      SHX0_2(SHX1_2)
    end
  end
end
SHX9_1 = false
SHX6_1(SHX7_1, SHX8_1, SHX9_1)
function SHX6_1(SHX0_2)
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
  SHX1_2 = AddTextComponentSubstringPlayerName
  SHX2_2 = SHX0_2
  SHX1_2(SHX2_2)
  SHX1_2 = EndTextCommandDisplayHelp
  SHX2_2 = 0
  SHX3_2 = false
  SHX4_2 = true
  SHX5_2 = -1
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
DisplayHelpText = SHX6_1
SHX6_1 = Citizen
SHX6_1 = SHX6_1.CreateThread
function SHX7_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = DestroyMobilePhone
  SHX0_2()
end
SHX6_1(SHX7_1)
SHX6_1 = exports
SHX7_1 = "lbGetCompanyData"
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = {}
  SHX1_2.job = "Business"
  SHX1_2.jobLabel = "Business"
  SHX1_2.isBoss = false
  SHX2_2 = SHX2_1
  SHX1_2.duty = SHX2_2
  SHX2_2 = SHX0_2
  SHX3_2 = SHX1_2
  SHX2_2(SHX3_2)
end
SHX6_1(SHX7_1, SHX8_1)
SHX6_1 = exports
SHX7_1 = "lbToggleDuty"
function SHX8_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = TriggerServerEvent
  SHX1_2 = "1c88547586"
  SHX0_2(SHX1_2)
  SHX0_2 = true
  return SHX0_2
end
SHX6_1(SHX7_1, SHX8_1)
SHX6_1 = RegisterNetEvent
SHX7_1 = "lb-phone:toggleHud"
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  if SHX0_2 then
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.hideAllDisplays
    SHX2_2 = "lb-phone"
    SHX1_2(SHX2_2)
  else
    SHX1_2 = CMG
    SHX1_2 = SHX1_2.showAllDisplays
    SHX2_2 = "lb-phone"
    SHX1_2(SHX2_2)
  end
end
SHX6_1(SHX7_1, SHX8_1)
SHX6_1 = 0
SHX7_1 = CMG
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2
  if SHX0_2 then
    SHX1_2 = SHX6_1
    if SHX1_2 > 0 then
      SHX1_2 = SHX6_1
      SHX1_2 = SHX1_2 - 1
      SHX6_1 = SHX1_2
    end
    SHX1_2 = SHX6_1
    if 0 == SHX1_2 then
      SHX1_2 = GetResourceState
      SHX2_2 = "lb-phone"
      SHX1_2 = SHX1_2(SHX2_2)
      if "started" == SHX1_2 then
        SHX1_2 = exports
        SHX1_2 = SHX1_2["lb-phone"]
        SHX2_2 = SHX1_2
        SHX1_2 = SHX1_2.ToggleDisabled
        SHX3_2 = false
        SHX1_2(SHX2_2, SHX3_2)
      end
    else
      SHX1_2 = print
      SHX2_2 = string
      SHX2_2 = SHX2_2.format
      SHX3_2 = "Can not setCanOpenPhone(true) as %d other references exist"
      SHX4_2 = SHX6_1
      SHX2_2, SHX3_2, SHX4_2 = SHX2_2(SHX3_2, SHX4_2)
      SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    end
  else
    SHX1_2 = SHX6_1
    SHX1_2 = SHX1_2 + 1
    SHX6_1 = SHX1_2
    SHX1_2 = GetResourceState
    SHX2_2 = "lb-phone"
    SHX1_2 = SHX1_2(SHX2_2)
    if "started" == SHX1_2 then
      SHX1_2 = exports
      SHX1_2 = SHX1_2["lb-phone"]
      SHX2_2 = SHX1_2
      SHX1_2 = SHX1_2.ToggleDisabled
      SHX3_2 = true
      SHX1_2(SHX2_2, SHX3_2)
    end
  end
end
SHX7_1.setCanOpenPhone = SHX8_1
SHX7_1 = false
SHX8_1 = RegisterNetEvent
SHX9_1 = "ef297ed60b"
function SHX10_1()
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
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.setCanOpenPhone
  SHX1_2 = false
  SHX0_2(SHX1_2)
  SHX0_2 = true
  SHX7_1 = SHX0_2
  SHX0_2 = notify
  SHX1_2 = "~y~Your phone has been slapped out of your hand!"
  SHX0_2(SHX1_2)
  SHX0_2 = SetTimeout
  SHX1_2 = 30000
  function SHX2_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.setCanOpenPhone
    SHX1_3 = true
    SHX0_3(SHX1_3)
    SHX0_3 = false
    SHX7_1 = SHX0_3
  end
  SHX0_2(SHX1_2, SHX2_2)
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = RegisterNetEvent
SHX9_1 = "5934568413"
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
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
  SHX3_2 = GetPedBoneIndex
  SHX4_2 = SHX2_2
  SHX5_2 = 57005
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
  if -1 == SHX3_2 then
    return
  end
  SHX4_2 = GetWorldPositionOfEntityBone
  SHX5_2 = SHX2_2
  SHX6_2 = SHX3_2
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX5_2 = CMG
  SHX5_2 = SHX5_2.loadModel
  SHX6_2 = 108397254
  SHX5_2(SHX6_2)
  SHX5_2 = CreateObjectNoOffset
  SHX6_2 = 108397254
  SHX7_2 = SHX4_2.x
  SHX8_2 = SHX4_2.y
  SHX9_2 = SHX4_2.z
  SHX10_2 = false
  SHX11_2 = false
  SHX12_2 = false
  SHX5_2 = SHX5_2(SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX6_2 = SetModelAsNoLongerNeeded
  SHX7_2 = 108397254
  SHX6_2(SHX7_2)
  SHX6_2 = PlaceObjectOnGroundProperly
  SHX7_2 = SHX5_2
  SHX6_2(SHX7_2)
  SHX6_2 = SetEntityRotation
  SHX7_2 = SHX5_2
  SHX8_2 = 90.0
  SHX9_2 = 90.0
  SHX10_2 = 90.0
  SHX11_2 = 2
  SHX12_2 = false
  SHX6_2(SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX6_2 = SetTimeout
  SHX7_2 = 60000
  function SHX8_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
    SHX0_3 = DeleteEntity
    SHX1_3 = SHX5_2
    SHX0_3(SHX1_3)
  end
  SHX6_2(SHX7_2, SHX8_2)
end
SHX8_1(SHX9_1, SHX10_1)
SHX8_1 = AddStateBagChangeHandler
SHX9_1 = "phoneOpen"
SHX10_1 = nil
function SHX11_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX3_2 = tonumber
  SHX4_2 = stringsplit
  SHX5_2 = SHX0_2
  SHX6_2 = ":"
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SHX4_2[2]
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getLocalPlayerSrc
  SHX4_2 = SHX4_2()
  if SHX3_2 == SHX4_2 then
    SHX3_1 = SHX2_2
  end
end
SHX8_1(SHX9_1, SHX10_1, SHX11_1)
SHX8_1 = CMG
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX3_1
  return SHX0_2
end
SHX8_1.isPhoneOpen = SHX9_1
