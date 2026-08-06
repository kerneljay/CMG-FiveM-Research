-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1
SHX0_1 = "IDLE"
SHX1_1 = false
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadModel
  SHX2_2 = SHX0_2.model
  SHX1_2(SHX2_2)
  SHX1_2 = CreatePed
  SHX2_2 = 0
  SHX3_2 = SHX0_2.model
  SHX4_2 = SHX0_2.position
  SHX4_2 = SHX4_2.x
  SHX5_2 = SHX0_2.position
  SHX5_2 = SHX5_2.y
  SHX6_2 = SHX0_2.position
  SHX6_2 = SHX6_2.z
  SHX6_2 = SHX6_2 - 1.0
  SHX7_2 = SHX0_2.position
  SHX7_2 = SHX7_2.w
  SHX8_2 = false
  SHX9_2 = false
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX0_2.ped = SHX1_2
  SHX1_2 = SetModelAsNoLongerNeeded
  SHX2_2 = SHX0_2.model
  SHX1_2(SHX2_2)
  SHX1_2 = FreezeEntityPosition
  SHX2_2 = SHX0_2.ped
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetEntityInvincible
  SHX2_2 = SHX0_2.ped
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetEntityCanBeDamaged
  SHX2_2 = SHX0_2.ped
  SHX3_2 = false
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetPedAlertness
  SHX2_2 = SHX0_2.ped
  SHX3_2 = 0
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetBlockingOfNonTemporaryEvents
  SHX2_2 = SHX0_2.ped
  SHX3_2 = true
  SHX1_2(SHX2_2, SHX3_2)
  SHX1_2 = SetEntityCollision
  SHX2_2 = SHX0_2.ped
  SHX3_2 = false
  SHX4_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = GiveWeaponToPed
  SHX2_2 = SHX0_2.ped
  SHX3_2 = 28811031
  SHX4_2 = 1
  SHX5_2 = false
  SHX6_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2)
  SHX1_2 = SetCurrentPedWeapon
  SHX2_2 = SHX0_2.ped
  SHX3_2 = 28811031
  SHX4_2 = true
  SHX1_2(SHX2_2, SHX3_2, SHX4_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.loadAnimDict
  SHX2_2 = "anim@heists@heist_corona@team_idles@female_a"
  SHX1_2(SHX2_2)
  SHX1_2 = TaskPlayAnim
  SHX2_2 = SHX0_2.ped
  SHX3_2 = "anim@heists@heist_corona@team_idles@female_a"
  SHX4_2 = "idle"
  SHX5_2 = 8.0
  SHX6_2 = 8.0
  SHX7_2 = -1
  SHX8_2 = 1
  SHX9_2 = 0
  SHX10_2 = false
  SHX11_2 = false
  SHX12_2 = false
  SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX1_2 = RemoveAnimDict
  SHX2_2 = "anim@heists@heist_corona@team_idles@female_a"
  SHX1_2(SHX2_2)
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getLocalPlayerSrc
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX0_2.playerSrc
  if SHX1_2 == SHX2_2 then
    SHX1_2 = AddBlipForRadius
    SHX2_2 = SHX0_2.position
    SHX2_2 = SHX2_2.x
    SHX3_2 = SHX0_2.position
    SHX3_2 = SHX3_2.y
    SHX4_2 = SHX0_2.position
    SHX4_2 = SHX4_2.z
    SHX5_2 = 10.0
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
    SHX0_2.blip = SHX1_2
    SHX1_2 = SetBlipColour
    SHX2_2 = SHX0_2.blip
    SHX3_2 = 5
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SetBlipAlpha
    SHX2_2 = SHX0_2.blip
    SHX3_2 = 150
    SHX1_2(SHX2_2, SHX3_2)
    SHX1_2 = SetWaypointOff
    SHX1_2()
  end
end
function SHX3_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX0_2.blip
  if SHX1_2 then
    SHX1_2 = RemoveBlip
    SHX2_2 = SHX0_2.blip
    SHX1_2(SHX2_2)
  end
  SHX1_2 = DeleteEntity
  SHX2_2 = SHX0_2.ped
  SHX1_2(SHX2_2)
end
function SHX4_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2
  SHX0_2 = SHX0_1
  if "IDLE" == SHX0_2 then
    SHX0_2 = drawNativeNotification
    SHX1_2 = "Press ~INPUT_CONTEXT~ to hand over the dirty cash."
    SHX0_2(SHX1_2)
    SHX0_2 = IsControlJustPressed
    SHX1_2 = 0
    SHX2_2 = 51
    SHX0_2 = SHX0_2(SHX1_2, SHX2_2)
    if SHX0_2 then
      SHX0_2 = CMG
      SHX0_2 = SHX0_2.disableSittingOnChairThisFrame
      SHX0_2()
      SHX0_2 = TriggerServerEvent
      SHX1_2 = "8ac077847b"
      SHX0_2(SHX1_2)
    end
  else
    SHX0_2 = SHX0_1
    if "HANDING_OVER" == SHX0_2 then
      SHX0_2 = subtitleText
      SHX1_2 = "~b~Handing over cash..."
      SHX0_2(SHX1_2)
    end
  end
end
function SHX5_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2
  SHX0_2 = SHX0_1
  if "HANDING_OVER" == SHX0_2 then
    SHX0_2 = TriggerServerEvent
    SHX1_2 = "28586dd690"
    SHX0_2(SHX1_2)
  end
end
SHX6_1 = RegisterNetEvent
SHX7_1 = "8dfaa23b61"
function SHX8_1(SHX0_2, SHX1_2, SHX2_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2
  SHX3_2 = {}
  SHX3_2.playerSrc = SHX0_2
  SHX3_2.position = SHX1_2
  SHX3_2.model = SHX2_2
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.createArea
  SHX5_2 = "dirtycash_"
  SHX6_2 = tostring
  SHX7_2 = SHX0_2
  SHX6_2 = SHX6_2(SHX7_2)
  SHX5_2 = SHX5_2 .. SHX6_2
  SHX6_2 = SHX1_2.xyz
  SHX7_2 = 50.0
  SHX8_2 = 6.0
  SHX9_2 = SHX2_1
  SHX10_2 = SHX3_1
  function SHX11_2()
    -- [AI CLEANUP] Decompiled Lua - Fix these:
    -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
    -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
    -- 3. Replace goto/label with while/repeat-until where possible
    -- 4. Remove decompiler comments, add meaningful ones
    -- 5. Fix indentation and formatting
    
    local SHX0_3, SHX1_3
  end
  SHX12_2 = SHX3_2
  SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getLocalPlayerSrc
  SHX4_2 = SHX4_2()
  if SHX4_2 == SHX0_2 then
    SHX4_2 = CMG
    SHX4_2 = SHX4_2.createArea
    SHX5_2 = "dirtycash_local"
    SHX6_2 = SHX1_2.xyz
    SHX7_2 = 1.5
    SHX8_2 = 6.0
    function SHX9_2()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_3, SHX1_3
    end
    SHX10_2 = SHX5_1
    SHX11_2 = SHX4_1
    SHX12_2 = nil
    SHX4_2(SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2)
  end
end
SHX6_1(SHX7_1, SHX8_1)
SHX6_1 = RegisterNetEvent
SHX7_1 = "fa2dcfab18"
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getLocalPlayerSrc
  SHX1_2 = SHX1_2()
  if SHX1_2 == SHX0_2 then
    SHX1_2 = tCMG
    SHX1_2 = SHX1_2.removeArea
    SHX2_2 = "dirtycash_local"
    SHX1_2(SHX2_2)
  end
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getAreaMetaData
  SHX2_2 = "dirtycash_"
  SHX3_2 = tostring
  SHX4_2 = SHX0_2
  SHX3_2 = SHX3_2(SHX4_2)
  SHX2_2 = SHX2_2 .. SHX3_2
  SHX1_2 = SHX1_2(SHX2_2)
  SHX2_2 = SHX1_2.ped
  if SHX2_2 then
    SHX2_2 = ClearPedTasksImmediately
    SHX3_2 = SHX1_2.ped
    SHX2_2(SHX3_2)
    SHX2_2 = SetEntityAsNoLongerNeeded
    SHX3_2 = SHX1_2.ped
    SHX2_2(SHX3_2)
  end
  SHX2_2 = SHX1_2.blip
  if SHX2_2 then
    SHX2_2 = RemoveBlip
    SHX3_2 = SHX1_2.blip
    SHX2_2(SHX3_2)
  end
  SHX2_2 = tCMG
  SHX2_2 = SHX2_2.removeArea
  SHX3_2 = "dirtycash_"
  SHX4_2 = tostring
  SHX5_2 = SHX0_2
  SHX4_2 = SHX4_2(SHX5_2)
  SHX3_2 = SHX3_2 .. SHX4_2
  SHX2_2(SHX3_2)
end
SHX6_1(SHX7_1, SHX8_1)
SHX6_1 = RegisterNetEvent
SHX7_1 = "e16d390302"
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2
  SHX1_2 = SHX1_1
  if SHX1_2 then
    return
  end
  SHX1_2 = true
  SHX1_1 = SHX1_2
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = SendNUIMessage
  SHX3_2 = {}
  SHX3_2.transactionType = "ring"
  SHX2_2(SHX3_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.loadAnimDict
  SHX3_2 = "cellphone@"
  SHX2_2(SHX3_2)
  SHX2_2 = TaskPlayAnim
  SHX3_2 = SHX1_2
  SHX4_2 = "cellphone@"
  SHX5_2 = "cellphone_call_listen_base"
  SHX6_2 = 3.0
  SHX7_2 = -1
  SHX8_2 = -1
  SHX9_2 = 50
  SHX10_2 = 0
  SHX11_2 = false
  SHX12_2 = false
  SHX13_2 = false
  SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
  SHX2_2 = RemoveAnimDict
  SHX3_2 = "cellphone@"
  SHX2_2(SHX3_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.loadModel
  SHX3_2 = "prop_amb_phone"
  SHX2_2(SHX3_2)
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.requestEntitySpawn
  SHX3_2 = "dirtycash_phone"
  SHX2_2(SHX3_2)
  SHX2_2 = CreateObject
  SHX3_2 = 974883178
  SHX4_2 = SHX0_2.x
  SHX5_2 = SHX0_2.y
  SHX6_2 = SHX0_2.z
  SHX7_2 = true
  SHX8_2 = true
  SHX9_2 = false
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2)
  SHX3_2 = AttachEntityToEntity
  SHX4_2 = SHX2_2
  SHX5_2 = SHX1_2
  SHX6_2 = GetPedBoneIndex
  SHX7_2 = SHX1_2
  SHX8_2 = 28422
  SHX6_2 = SHX6_2(SHX7_2, SHX8_2)
  SHX7_2 = 0.0
  SHX8_2 = 0.0
  SHX9_2 = 0.0
  SHX10_2 = 0.0
  SHX11_2 = 0.0
  SHX12_2 = 0.0
  SHX13_2 = true
  SHX14_2 = true
  SHX15_2 = false
  SHX16_2 = false
  SHX17_2 = 0
  SHX18_2 = true
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2)
  SHX3_2 = SetModelAsNoLongerNeeded
  SHX4_2 = "prop_amb_phone"
  SHX3_2(SHX4_2)
  SHX3_2 = Citizen
  SHX3_2 = SHX3_2.Wait
  SHX4_2 = 9000
  SHX3_2(SHX4_2)
  SHX3_2 = StopAnimTask
  SHX4_2 = SHX1_2
  SHX5_2 = "cellphone@"
  SHX6_2 = "cellphone_call_listen_base"
  SHX7_2 = 1.0
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
  SHX3_2 = DeleteEntity
  SHX4_2 = SHX2_2
  SHX3_2(SHX4_2)
  SHX3_2 = SetNewWaypoint
  SHX4_2 = SHX0_2.x
  SHX5_2 = SHX0_2.y
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = drawNativeNotification
  SHX4_2 = "A marker has been set to the cleaners location."
  SHX3_2(SHX4_2)
  SHX3_2 = false
  SHX1_1 = SHX3_2
end
SHX6_1(SHX7_1, SHX8_1)
function SHX6_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX1_2 = 5.0
  SHX2_2 = 0
  SHX3_2 = pairs
  SHX4_2 = GetGamePool
  SHX5_2 = "CPed"
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2 = SHX4_2(SHX5_2)
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = IsPedAPlayer
    SHX10_2 = SHX8_2
    SHX9_2 = SHX9_2(SHX10_2)
    if not SHX9_2 then
      SHX9_2 = NetworkGetEntityIsLocal
      SHX10_2 = SHX8_2
      SHX9_2 = SHX9_2(SHX10_2)
      if SHX9_2 then
        SHX9_2 = GetEntityCoords
        SHX10_2 = SHX8_2
        SHX11_2 = true
        SHX9_2 = SHX9_2(SHX10_2, SHX11_2)
        SHX10_2 = SHX0_2.xyz
        SHX9_2 = SHX9_2 - SHX10_2
        SHX9_2 = #SHX9_2
        if SHX1_2 > SHX9_2 then
          SHX1_2 = SHX9_2
          SHX2_2 = SHX8_2
        end
      end
    end
  end
  return SHX2_2
end
SHX7_1 = RegisterNetEvent
SHX8_1 = "8ac077847b"
function SHX9_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2
  SHX1_2 = "HANDING_OVER"
  SHX0_1 = SHX1_2
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
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.startCircularProgressBar
    SHX1_3 = ""
    SHX2_3 = SHX0_2
    SHX3_3 = nil
    function SHX4_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    SHX0_3(SHX1_3, SHX2_3, SHX3_3, SHX4_3)
  end
  SHX1_2(SHX2_2)
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX6_1
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.getPlayerCoords
  SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2 = SHX3_2()
  SHX2_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX3_2 = TaskTurnPedToFaceEntity
  SHX4_2 = SHX1_2
  SHX5_2 = SHX2_2
  SHX6_2 = 1000
  SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX3_2 = Citizen
  SHX3_2 = SHX3_2.Wait
  SHX4_2 = 1000
  SHX3_2(SHX4_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.loadAnimDict
  SHX4_2 = "mp_common"
  SHX3_2(SHX4_2)
  SHX3_2 = TaskPlayAnim
  SHX4_2 = SHX1_2
  SHX5_2 = "mp_common"
  SHX6_2 = "givetake1_a"
  SHX7_2 = 8.0
  SHX8_2 = 8.0
  SHX9_2 = -1
  SHX10_2 = 1
  SHX11_2 = 0
  SHX12_2 = false
  SHX13_2 = false
  SHX14_2 = false
  SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2)
  SHX3_2 = RemoveAnimDict
  SHX4_2 = "mp_common"
  SHX3_2(SHX4_2)
  SHX3_2 = Citizen
  SHX3_2 = SHX3_2.Wait
  SHX4_2 = 2000
  SHX3_2(SHX4_2)
  while true do
    SHX3_2 = SHX0_1
    if "HANDING_OVER" ~= SHX3_2 then
      break
    end
    SHX3_2 = IsEntityPlayingAnim
    SHX4_2 = SHX1_2
    SHX5_2 = "mp_common"
    SHX6_2 = "givetake1_a"
    SHX7_2 = 3
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2)
    if not SHX3_2 then
      SHX3_2 = TriggerServerEvent
      SHX4_2 = "28586dd690"
      SHX3_2(SHX4_2)
      break
    end
    SHX3_2 = Citizen
    SHX3_2 = SHX3_2.Wait
    SHX4_2 = 0
    SHX3_2(SHX4_2)
  end
end
SHX7_1(SHX8_1, SHX9_1)
SHX7_1 = RegisterNetEvent
SHX8_1 = "28586dd690"
function SHX9_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = "IDLE"
  SHX0_1 = SHX0_2
  SHX0_2 = StopAnimTask
  SHX1_2 = PlayerPedId
  SHX1_2 = SHX1_2()
  SHX2_2 = "mp_common"
  SHX3_2 = "givetake1_a"
  SHX4_2 = 1.0
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2)
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.stopCircularProgressBar
  SHX0_2()
end
SHX7_1(SHX8_1, SHX9_1)
SHX7_1 = RegisterNetEvent
SHX8_1 = "429c274229"
function SHX9_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX1_2 = SHX6_1
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if 0 ~= SHX1_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.loadAnimDict
    SHX3_2 = "mp_common"
    SHX2_2(SHX3_2)
    SHX2_2 = TaskPlayAnim
    SHX3_2 = SHX1_2
    SHX4_2 = "mp_common"
    SHX5_2 = "givetake2_a"
    SHX6_2 = 8.0
    SHX7_2 = 8.0
    SHX8_2 = -1
    SHX9_2 = 1
    SHX10_2 = 0
    SHX11_2 = false
    SHX12_2 = false
    SHX13_2 = false
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX2_2 = RemoveAnimDict
    SHX3_2 = "mp_common"
    SHX2_2(SHX3_2)
  end
end
SHX7_1(SHX8_1, SHX9_1)
SHX7_1 = RegisterNetEvent
SHX8_1 = "9ebeeadd8b"
function SHX9_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2
  SHX1_2 = SHX6_1
  SHX2_2 = SHX0_2
  SHX1_2 = SHX1_2(SHX2_2)
  if 0 ~= SHX1_2 then
    SHX2_2 = CMG
    SHX2_2 = SHX2_2.loadAnimDict
    SHX3_2 = "anim@heists@heist_corona@team_idles@female_a"
    SHX2_2(SHX3_2)
    SHX2_2 = TaskPlayAnim
    SHX3_2 = SHX1_2
    SHX4_2 = "anim@heists@heist_corona@team_idles@female_a"
    SHX5_2 = "idle"
    SHX6_2 = 8.0
    SHX7_2 = 8.0
    SHX8_2 = -1
    SHX9_2 = 1
    SHX10_2 = 0
    SHX11_2 = false
    SHX12_2 = false
    SHX13_2 = false
    SHX2_2(SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2)
    SHX2_2 = RemoveAnimDict
    SHX3_2 = "anim@heists@heist_corona@team_idles@female_a"
    SHX2_2(SHX3_2)
  end
end
SHX7_1(SHX8_1, SHX9_1)
