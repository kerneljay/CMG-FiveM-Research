-- [AI CLEANUP] Decompiled Lua - Fix these:
-- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
-- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
-- 3. Replace goto/label with while/repeat-until where possible
-- 4. Remove decompiler comments, add meaningful ones
-- 5. Fix indentation and formatting

local SHX0_1, SHX1_1, SHX2_1, SHX3_1, SHX4_1, SHX5_1, SHX6_1, SHX7_1, SHX8_1, SHX9_1, SHX10_1, SHX11_1, SHX12_1, SHX13_1, SHX14_1, SHX15_1, SHX16_1, SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1
SHX0_1 = 60000
function SHX1_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2
  SHX1_2 = SHX0_2.jobInfo
  SHX1_2.locationId = nil
  SHX1_2 = RageUI
  SHX1_2 = SHX1_2.Visible
  SHX2_2 = RMenu
  SHX3_2 = SHX2_2
  SHX2_2 = SHX2_2.Get
  SHX4_2 = "business"
  SHX5_2 = "delivery_locations"
  SHX2_2, SHX3_2, SHX4_2, SHX5_2 = SHX2_2(SHX3_2, SHX4_2, SHX5_2)
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2, SHX5_2)
  if not SHX1_2 then
    SHX1_2 = drawNativeNotification
    SHX2_2 = [[
To choose a supplier to pick up stock from do /job.
To view current stock go inside the building.]]
    SHX1_2(SHX2_2)
  end
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "bf3f551598"
  SHX1_2(SHX2_2)
end
function SHX2_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = DoesEntityExist
  SHX2_2 = SHX0_2.jobInfo
  SHX2_2 = SHX2_2.vehicle
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX1_2 = SHX0_2.jobInfo
    SHX1_2 = SHX1_2.locationId
    SHX1_2 = nil ~= SHX1_2
  end
  return SHX1_2
end
function SHX3_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2
  SHX1_2 = SHX0_2.jobMetadata
  SHX1_2 = SHX1_2.locations
  SHX2_2 = SHX0_2.jobInfo
  SHX2_2 = SHX2_2.locationId
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = AddBlipForEntity
  SHX3_2 = SHX0_2.jobInfo
  SHX3_2 = SHX3_2.vehicle
  SHX2_2 = SHX2_2(SHX3_2)
  SHX3_2 = SetBlipSprite
  SHX4_2 = SHX2_2
  SHX5_2 = 326
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SetBlipColour
  SHX4_2 = SHX2_2
  SHX5_2 = 3
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = SHX0_2.jobInfo
  SHX3_2.vehicleBlip = SHX2_2
  SHX3_2 = AddBlipForCoord
  SHX4_2 = SHX1_2.position
  SHX4_2 = SHX4_2.x
  SHX5_2 = SHX1_2.position
  SHX5_2 = SHX5_2.y
  SHX6_2 = SHX1_2.position
  SHX6_2 = SHX6_2.z
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2)
  SHX4_2 = SetBlipColour
  SHX5_2 = SHX3_2
  SHX6_2 = 5
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SetBlipRoute
  SHX5_2 = SHX3_2
  SHX6_2 = true
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SHX0_2.jobInfo
  SHX4_2.routeBlip = SHX3_2
  SHX4_2 = TriggerServerEvent
  SHX5_2 = "bf3f551598"
  SHX4_2(SHX5_2)
end
function SHX4_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = SHX0_2.jobMetadata
  SHX1_2 = SHX1_2.locations
  SHX2_2 = SHX0_2.jobInfo
  SHX2_2 = SHX2_2.locationId
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerVehicle
  SHX2_2, SHX3_2 = SHX2_2()
  SHX4_2 = DoesEntityExist
  SHX5_2 = SHX0_2.jobInfo
  SHX5_2 = SHX5_2.vehicle
  SHX4_2 = SHX4_2(SHX5_2)
  if not SHX4_2 then
    SHX4_2 = SHX0_2.jobInfo
    SHX4_2 = SHX4_2.failed
    if not SHX4_2 then
      SHX4_2 = TriggerServerEvent
      SHX5_2 = "15ea9471a1"
      SHX4_2(SHX5_2)
      SHX4_2 = SHX0_2.jobInfo
      SHX4_2.failed = true
    end
    SHX4_2 = notify
    SHX5_2 = "~r~Delivery failed, you lost the delivery vehicle."
    SHX4_2(SHX5_2)
    SHX4_2 = false
    return SHX4_2
  else
    SHX4_2 = SHX0_2.jobInfo
    SHX4_2 = SHX4_2.vehicle
    if SHX2_2 ~= SHX4_2 then
      SHX4_2 = drawNativeText
      SHX5_2 = "Enter the ~b~delivery vehicle~w~"
      SHX4_2(SHX5_2)
      SHX4_2 = false
      return SHX4_2
    elseif not SHX3_2 then
      SHX4_2 = drawNativeText
      SHX5_2 = "Enter the driver seat of the ~b~delivery vehicle~w~"
      SHX4_2(SHX5_2)
      SHX4_2 = false
      return SHX4_2
    end
  end
  SHX4_2 = drawNativeText
  SHX5_2 = "Drive to the ~y~"
  SHX6_2 = SHX1_2.name
  SHX7_2 = "~w~"
  SHX5_2 = SHX5_2 .. SHX6_2 .. SHX7_2
  SHX4_2(SHX5_2)
  SHX4_2 = GetEntityCoords
  SHX5_2 = SHX2_2
  SHX6_2 = true
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX5_2 = SHX1_2.position
  SHX4_2 = SHX4_2 - SHX5_2
  SHX4_2 = #SHX4_2
  SHX4_2 = SHX4_2 < 15.0
  return SHX4_2
end
function SHX5_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = RemoveBlip
  SHX2_2 = SHX0_2.jobInfo
  SHX2_2 = SHX2_2.vehicleBlip
  SHX1_2(SHX2_2)
  SHX1_2 = SHX0_2.jobInfo
  SHX1_2.vehicleBlip = nil
  SHX1_2 = RemoveBlip
  SHX2_2 = SHX0_2.jobInfo
  SHX2_2 = SHX2_2.routeBlip
  SHX1_2(SHX2_2)
  SHX1_2 = SHX0_2.jobInfo
  SHX1_2.routeBlip = nil
end
function SHX6_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2
  SHX1_2 = SHX0_2.jobMetadata
  SHX1_2 = SHX1_2.locations
  SHX2_2 = SHX0_2.jobInfo
  SHX2_2 = SHX2_2.locationId
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = SHX0_2.jobInfo
  SHX3_2 = tCMG
  SHX3_2 = SHX3_2.addMarker
  SHX4_2 = SHX1_2.position
  SHX4_2 = SHX4_2.x
  SHX5_2 = SHX1_2.position
  SHX5_2 = SHX5_2.y
  SHX6_2 = SHX1_2.position
  SHX6_2 = SHX6_2.z
  SHX7_2 = 1.0
  SHX8_2 = 1.0
  SHX9_2 = 1.0
  SHX10_2 = 255
  SHX11_2 = 255
  SHX12_2 = 0
  SHX13_2 = 150
  SHX14_2 = 25.0
  SHX15_2 = 1
  SHX16_2 = false
  SHX17_2 = false
  SHX18_2 = false
  SHX19_2 = nil
  SHX20_2 = nil
  SHX21_2 = 0.0
  SHX22_2 = 0.0
  SHX23_2 = 0.0
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2, SHX17_2, SHX18_2, SHX19_2, SHX20_2, SHX21_2, SHX22_2, SHX23_2)
  SHX2_2.marker = SHX3_2
  SHX2_2 = SHX0_2.jobInfo
  SHX3_2 = tCMG
  SHX3_2 = SHX3_2.addBlip
  SHX4_2 = SHX1_2.position
  SHX4_2 = SHX4_2.x
  SHX5_2 = SHX1_2.position
  SHX5_2 = SHX5_2.y
  SHX6_2 = SHX1_2.position
  SHX6_2 = SHX6_2.z
  SHX7_2 = 1
  SHX8_2 = 5
  SHX9_2 = nil
  SHX10_2 = 0.75
  SHX11_2 = false
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX2_2.blip = SHX3_2
  SHX2_2 = SHX0_2.jobInfo
  SHX2_2.hasFinishedLastRequest = false
  SHX2_2 = SHX0_2.jobInfo
  SHX2_2.remainingItemCount = -1
  SHX2_2 = TriggerServerEvent
  SHX3_2 = "bf3f551598"
  SHX2_2(SHX3_2)
end
function SHX7_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = SHX0_2.jobMetadata
  SHX1_2 = SHX1_2.locations
  SHX2_2 = SHX0_2.jobInfo
  SHX2_2 = SHX2_2.locationId
  SHX1_2 = SHX1_2[SHX2_2]
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerCoords
  SHX2_2 = SHX2_2()
  SHX3_2 = SHX1_2.position
  SHX2_2 = SHX2_2 - SHX3_2
  SHX2_2 = #SHX2_2
  if SHX2_2 < 2.0 then
    SHX3_2 = drawNativeNotification
    SHX4_2 = "Press ~INPUT_CONTEXT~ to retrive delivery items"
    SHX3_2(SHX4_2)
    SHX3_2 = IsControlJustPressed
    SHX4_2 = 0
    SHX5_2 = 51
    SHX3_2 = SHX3_2(SHX4_2, SHX5_2)
    if SHX3_2 then
      SHX3_2 = TriggerServerEvent
      SHX4_2 = "301a0dda6e"
      SHX3_2(SHX4_2)
    end
  else
    SHX3_2 = 150.0
    if SHX2_2 > SHX3_2 then
      SHX3_2 = SHX0_2.jobInfo
      SHX3_2 = SHX3_2.failed
      if not SHX3_2 then
        SHX3_2 = TriggerServerEvent
        SHX4_2 = "15ea9471a1"
        SHX3_2(SHX4_2)
        SHX3_2 = SHX0_2.jobInfo
        SHX3_2.failed = true
      end
      return
    else
      SHX3_2 = CMG
      SHX3_2 = SHX3_2.getPlayerVehicle
      SHX3_2 = SHX3_2()
      if 0 == SHX3_2 then
        SHX3_2 = drawNativeText
        SHX4_2 = "Locate the ~y~delivery collection~w~ point"
        SHX3_2(SHX4_2)
      else
        SHX3_2 = drawNativeText
        SHX4_2 = "Exit the vehicle and locate the ~y~delivery collection~w~ point"
        SHX3_2(SHX4_2)
      end
    end
  end
  SHX3_2 = SHX0_2.jobInfo
  SHX3_2 = SHX3_2.remainingItemCount
  if SHX3_2 >= 0 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.createTimerBars
    SHX3_2 = SHX3_2()
    SHX4_2 = SHX3_2.push
    SHX5_2 = "~y~ITEMS LEFT"
    SHX6_2 = tostring
    SHX7_2 = SHX0_2.jobInfo
    SHX7_2 = SHX7_2.remainingItemCount
    SHX6_2, SHX7_2 = SHX6_2(SHX7_2)
    SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    SHX4_2 = SHX3_2.draw
    SHX4_2()
  end
  SHX3_2 = SHX0_2.jobInfo
  SHX3_2 = SHX3_2.hasFinishedLastRequest
  return SHX3_2
end
function SHX8_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.removeMarker
  SHX2_2 = SHX0_2.jobInfo
  SHX2_2 = SHX2_2.marker
  SHX1_2(SHX2_2)
  SHX1_2 = SHX0_2.jobInfo
  SHX1_2.marker = nil
  SHX1_2 = tCMG
  SHX1_2 = SHX1_2.removeBlip
  SHX2_2 = SHX0_2.jobInfo
  SHX2_2 = SHX2_2.blip
  SHX1_2(SHX2_2)
  SHX1_2 = SHX0_2.jobInfo
  SHX1_2.blip = nil
  SHX1_2 = SHX0_2.jobInfo
  SHX1_2.hasFinishedLastRequest = nil
end
function SHX9_1(SHX0_2, SHX1_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2
  SHX2_2 = {}
  SHX3_2 = pairs
  SHX4_2 = CMG
  SHX4_2 = SHX4_2.getAllVehicles
  SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2 = SHX4_2()
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = table
    SHX9_2 = SHX9_2.insert
    SHX10_2 = SHX2_2
    SHX11_2 = GetEntityCoords
    SHX12_2 = SHX8_2
    SHX13_2 = true
    SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2 = SHX11_2(SHX12_2, SHX13_2)
    SHX9_2(SHX10_2, SHX11_2, SHX12_2, SHX13_2, SHX14_2, SHX15_2, SHX16_2)
  end
  SHX3_2 = pairs
  SHX4_2 = SHX0_2.jobMetadata
  SHX4_2 = SHX4_2.vehicleSpawns
  SHX3_2, SHX4_2, SHX5_2, SHX6_2 = SHX3_2(SHX4_2)
  for SHX7_2, SHX8_2 in SHX3_2, SHX4_2, SHX5_2, SHX6_2 do
    SHX9_2 = true
    SHX10_2 = pairs
    SHX11_2 = SHX2_2
    SHX10_2, SHX11_2, SHX12_2, SHX13_2 = SHX10_2(SHX11_2)
    for SHX14_2, SHX15_2 in SHX10_2, SHX11_2, SHX12_2, SHX13_2 do
      SHX16_2 = SHX8_2.position
      SHX16_2 = SHX16_2.xyz
      SHX16_2 = SHX15_2 - SHX16_2
      SHX16_2 = #SHX16_2
      if SHX16_2 < 4.0 then
        SHX9_2 = false
        break
      end
    end
    if SHX9_2 or SHX1_2 then
      return SHX7_2
    end
  end
  SHX3_2 = nil
  return SHX3_2
end
function SHX10_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = SHX9_1
  SHX2_2 = SHX0_2
  SHX3_2 = true
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  SHX2_2 = assert
  SHX3_2 = SHX1_2
  SHX4_2 = "Spawn index is null"
  SHX2_2(SHX3_2, SHX4_2)
  SHX2_2 = SHX0_2.jobMetadata
  SHX2_2 = SHX2_2.vehicleSpawns
  SHX2_2 = SHX2_2[SHX1_2]
  SHX3_2 = SHX0_2.jobInfo
  SHX3_2.spawnInfo = SHX2_2
  SHX3_2 = AddBlipForEntity
  SHX4_2 = SHX0_2.jobInfo
  SHX4_2 = SHX4_2.vehicle
  SHX3_2 = SHX3_2(SHX4_2)
  SHX4_2 = SetBlipSprite
  SHX5_2 = SHX3_2
  SHX6_2 = 326
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SetBlipColour
  SHX5_2 = SHX3_2
  SHX6_2 = 3
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = SHX0_2.jobInfo
  SHX4_2.vehicleBlip = SHX3_2
  SHX4_2 = AddBlipForCoord
  SHX5_2 = SHX2_2.position
  SHX5_2 = SHX5_2.x
  SHX6_2 = SHX2_2.position
  SHX6_2 = SHX6_2.y
  SHX7_2 = SHX2_2.position
  SHX7_2 = SHX7_2.z
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX5_2 = SetBlipColour
  SHX6_2 = SHX4_2
  SHX7_2 = 5
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = SetBlipRoute
  SHX6_2 = SHX4_2
  SHX7_2 = true
  SHX5_2(SHX6_2, SHX7_2)
  SHX5_2 = SHX0_2.jobInfo
  SHX5_2.routeBlip = SHX4_2
  SHX5_2 = TriggerServerEvent
  SHX6_2 = "bf3f551598"
  SHX5_2(SHX6_2)
end
function SHX11_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = SHX0_2.jobInfo
  SHX1_2 = SHX1_2.spawnInfo
  SHX2_2 = CMG
  SHX2_2 = SHX2_2.getPlayerVehicle
  SHX2_2, SHX3_2 = SHX2_2()
  SHX4_2 = DoesEntityExist
  SHX5_2 = SHX0_2.jobInfo
  SHX5_2 = SHX5_2.vehicle
  SHX4_2 = SHX4_2(SHX5_2)
  if not SHX4_2 then
    SHX4_2 = SHX0_2.jobInfo
    SHX4_2 = SHX4_2.failed
    if not SHX4_2 then
      SHX4_2 = TriggerServerEvent
      SHX5_2 = "15ea9471a1"
      SHX4_2(SHX5_2)
      SHX4_2 = SHX0_2.jobInfo
      SHX4_2.failed = true
    end
    SHX4_2 = notify
    SHX5_2 = "~r~Delivery failed, you lost the delivery vehicle."
    SHX4_2(SHX5_2)
    return
  else
    SHX4_2 = SHX0_2.jobInfo
    SHX4_2 = SHX4_2.vehicle
    if SHX2_2 ~= SHX4_2 then
      SHX4_2 = drawNativeText
      SHX5_2 = "Enter the ~b~delivery vehicle~w~"
      SHX4_2(SHX5_2)
      return
    elseif not SHX3_2 then
      SHX4_2 = drawNativeText
      SHX5_2 = "Enter the driver seat of the ~b~delivery vehicle~w~"
      SHX4_2(SHX5_2)
      return
    end
  end
  SHX4_2 = drawNativeText
  SHX5_2 = "Drive to the ~y~"
  SHX6_2 = SHX0_2.name
  SHX7_2 = "~w~"
  SHX5_2 = SHX5_2 .. SHX6_2 .. SHX7_2
  SHX4_2(SHX5_2)
  SHX4_2 = GetEntityCoords
  SHX5_2 = SHX2_2
  SHX6_2 = true
  SHX4_2 = SHX4_2(SHX5_2, SHX6_2)
  SHX5_2 = SHX1_2.position
  SHX5_2 = SHX5_2.xyz
  SHX4_2 = SHX4_2 - SHX5_2
  SHX4_2 = #SHX4_2
  SHX4_2 = SHX4_2 < 15.0
  return SHX4_2
end
function SHX12_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = RemoveBlip
  SHX2_2 = SHX0_2.jobInfo
  SHX2_2 = SHX2_2.vehicleBlip
  SHX1_2(SHX2_2)
  SHX1_2 = SHX0_2.jobInfo
  SHX1_2.vehicleBlip = nil
  SHX1_2 = RemoveBlip
  SHX2_2 = SHX0_2.jobInfo
  SHX2_2 = SHX2_2.routeBlip
  SHX1_2(SHX2_2)
  SHX1_2 = SHX0_2.jobInfo
  SHX1_2.routeBlip = nil
end
function SHX13_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = SHX0_2.jobInfo
  SHX2_2 = GetGameTimer
  SHX2_2 = SHX2_2()
  SHX1_2.placeStartTime = SHX2_2
  SHX1_2 = TriggerServerEvent
  SHX2_2 = "bf3f551598"
  SHX1_2(SHX2_2)
end
function SHX14_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2
  SHX1_2 = drawNativeText
  SHX2_2 = "Empty the stock from your ~b~vehicle~w~ into the business storage"
  SHX1_2(SHX2_2)
  SHX1_2 = GetGameTimer
  SHX1_2 = SHX1_2()
  SHX2_2 = SHX0_2.jobInfo
  SHX2_2 = SHX2_2.placeStartTime
  SHX1_2 = SHX1_2 - SHX2_2
  SHX2_2 = math
  SHX2_2 = SHX2_2.floor
  SHX3_2 = SHX0_1
  SHX3_2 = SHX3_2 - SHX1_2
  SHX3_2 = SHX3_2 / 1000
  SHX2_2 = SHX2_2(SHX3_2)
  if SHX2_2 > 0 then
    SHX3_2 = CMG
    SHX3_2 = SHX3_2.createTimerBars
    SHX3_2 = SHX3_2()
    SHX4_2 = SHX3_2.push
    SHX5_2 = "~y~NEXT JOB TIME"
    SHX6_2 = tostring
    SHX7_2 = SHX2_2
    SHX6_2, SHX7_2 = SHX6_2(SHX7_2)
    SHX4_2(SHX5_2, SHX6_2, SHX7_2)
    SHX4_2 = SHX3_2.draw
    SHX4_2()
  end
  SHX3_2 = SHX0_1
  SHX3_2 = SHX1_2 > SHX3_2
  return SHX3_2
end
function SHX15_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2
  SHX1_2 = SHX0_2.jobInfo
  SHX1_2.placeStartTime = nil
end
SHX16_1 = RMenu
SHX16_1 = SHX16_1.Add
SHX17_1 = "business"
SHX18_1 = "delivery_locations"
SHX19_1 = RageUI
SHX19_1 = SHX19_1.CreateMenu
SHX20_1 = ""
SHX21_1 = "~b~CMG Business"
SHX22_1 = CMG
SHX22_1 = SHX22_1.getRageUIMenuWidth
SHX22_1 = SHX22_1()
SHX23_1 = CMG
SHX23_1 = SHX23_1.getRageUIMenuHeight
SHX23_1 = SHX23_1()
SHX24_1 = "cmg_marketui"
SHX25_1 = "cmg_marketui"
SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1 = SHX19_1(SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1)
SHX16_1(SHX17_1, SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1, SHX23_1, SHX24_1, SHX25_1)
SHX16_1 = RageUI
SHX16_1 = SHX16_1.CreateWhile
SHX17_1 = 1.0
SHX18_1 = RMenu
SHX19_1 = SHX18_1
SHX18_1 = SHX18_1.Get
SHX20_1 = "business"
SHX21_1 = "delivery_locations"
SHX18_1 = SHX18_1(SHX19_1, SHX20_1, SHX21_1)
SHX19_1 = nil
function SHX20_1()
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
  SHX3_2 = "business"
  SHX4_2 = "delivery_locations"
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
    
    local SHX0_3, SHX1_3, SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3
    SHX0_3 = CMG
    SHX0_3 = SHX0_3.getUserBusinessData
    SHX1_3 = "delivery"
    SHX0_3 = SHX0_3(SHX1_3)
    if not SHX0_3 then
      SHX1_3 = RageUI
      SHX1_3 = SHX1_3.CloseAll
      SHX1_3()
      return
    end
    SHX1_3 = RageUI
    SHX1_3 = SHX1_3.ButtonWithStyle
    SHX2_3 = "~y~View Orders"
    SHX3_3 = ""
    SHX4_3 = {}
    SHX4_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
    SHX5_3 = true
    function SHX6_3()
      -- [AI CLEANUP] Decompiled Lua - Fix these:
      -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
      -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
      -- 3. Replace goto/label with while/repeat-until where possible
      -- 4. Remove decompiler comments, add meaningful ones
      -- 5. Fix indentation and formatting
      
      local SHX0_4, SHX1_4
    end
    SHX7_3 = RMenu
    SHX8_3 = SHX7_3
    SHX7_3 = SHX7_3.Get
    SHX9_3 = "business"
    SHX10_3 = "delivery_vieworders"
    SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3 = SHX7_3(SHX8_3, SHX9_3, SHX10_3)
    SHX1_3(SHX2_3, SHX3_3, SHX4_3, SHX5_3, SHX6_3, SHX7_3, SHX8_3, SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3, SHX14_3, SHX15_3, SHX16_3, SHX17_3, SHX18_3, SHX19_3)
    SHX1_3 = pairs
    SHX2_3 = SHX0_3.jobMetadata
    SHX2_3 = SHX2_3.locations
    SHX1_3, SHX2_3, SHX3_3, SHX4_3 = SHX1_3(SHX2_3)
    for SHX5_3, SHX6_3 in SHX1_3, SHX2_3, SHX3_3, SHX4_3 do
      SHX7_3 = ""
      SHX8_3 = pairs
      SHX9_3 = SHX6_3.itemsPerDelivery
      SHX8_3, SHX9_3, SHX10_3, SHX11_3 = SHX8_3(SHX9_3)
      for SHX12_3, SHX13_3 in SHX8_3, SHX9_3, SHX10_3, SHX11_3 do
        SHX14_3 = SHX0_3.locationInfo
        SHX14_3 = SHX14_3.items
        SHX15_3 = SHX13_3.id
        SHX14_3 = SHX14_3[SHX15_3]
        if SHX14_3 then
          SHX15_3 = SHX7_3
          SHX16_3 = "\n"
          SHX17_3 = tostring
          SHX18_3 = SHX13_3.amount
          SHX17_3 = SHX17_3(SHX18_3)
          SHX18_3 = "x "
          SHX19_3 = SHX14_3[1]
          SHX15_3 = SHX15_3 .. SHX16_3 .. SHX17_3 .. SHX18_3 .. SHX19_3
          SHX7_3 = SHX15_3
        end
      end
      SHX8_3 = RageUI
      SHX8_3 = SHX8_3.ButtonWithStyle
      SHX9_3 = SHX6_3.name
      SHX10_3 = "Items gained from delivery:"
      SHX11_3 = SHX7_3
      SHX10_3 = SHX10_3 .. SHX11_3
      SHX11_3 = {}
      SHX11_3.RightLabel = "\226\134\146\226\134\146\226\134\146"
      SHX12_3 = true
      function SHX13_3(SHX0_4, SHX1_4, SHX2_4)
        -- [AI CLEANUP] Decompiled Lua - Fix these:
        -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
        -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
        -- 3. Replace goto/label with while/repeat-until where possible
        -- 4. Remove decompiler comments, add meaningful ones
        -- 5. Fix indentation and formatting
        
        local SHX3_4, SHX4_4, SHX5_4
        if SHX2_4 then
          SHX3_4 = TriggerServerEvent
          SHX4_4 = "fda3ea3d66"
          SHX5_4 = SHX5_3
          SHX3_4(SHX4_4, SHX5_4)
        end
      end
      SHX8_3(SHX9_3, SHX10_3, SHX11_3, SHX12_3, SHX13_3)
    end
  end
  SHX0_2(SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2)
end
SHX16_1(SHX17_1, SHX18_1, SHX19_1, SHX20_1)
SHX16_1 = RegisterNetEvent
SHX17_1 = "69b6b20fea"
function SHX18_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2, SHX3_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getUserBusinessData
  SHX2_2 = "delivery"
  SHX1_2 = SHX1_2(SHX2_2)
  if not SHX1_2 then
    return
  end
  SHX2_2 = SHX1_2.jobInfo
  SHX2_2 = SHX2_2.hasFinishedLastRequest
  if nil == SHX2_2 then
    return
  end
  SHX2_2 = SHX1_2.jobInfo
  SHX2_2.remainingItemCount = SHX0_2
  SHX2_2 = SHX1_2.jobInfo
  SHX3_2 = 0 == SHX0_2
  SHX2_2.hasFinishedLastRequest = SHX3_2
end
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = RegisterNetEvent
SHX17_1 = "95847a6f46"
function SHX18_1(SHX0_2)
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX1_2, SHX2_2
  SHX1_2 = CMG
  SHX1_2 = SHX1_2.getUserBusinessData
  SHX2_2 = "delivery"
  SHX1_2 = SHX1_2(SHX2_2)
  if SHX1_2 then
    SHX2_2 = SHX1_2.jobInfo
    SHX2_2.locationId = SHX0_2
  end
end
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = RegisterNetEvent
SHX17_1 = "f443811a93"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getUserBusinessData
  SHX1_2 = "delivery"
  SHX0_2 = SHX0_2(SHX1_2)
  if not SHX0_2 then
    return
  end
  SHX1_2 = SHX9_1
  SHX2_2 = SHX0_2
  SHX3_2 = false
  SHX1_2 = SHX1_2(SHX2_2, SHX3_2)
  if not SHX1_2 then
    SHX2_2 = notify
    SHX3_2 = "~r~Unable to find a suitable location to spawn the vehicle."
    SHX2_2(SHX3_2)
    SHX2_2 = TriggerServerEvent
    SHX3_2 = "15ea9471a1"
    SHX2_2(SHX3_2)
    return
  end
  SHX2_2 = SHX0_2.jobMetadata
  SHX2_2 = SHX2_2.vehicleSpawns
  SHX2_2 = SHX2_2[SHX1_2]
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.loadModel
  SHX4_2 = SHX2_2.vehicle
  SHX3_2(SHX4_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.requestEntitySpawn
  SHX4_2 = "business_delivery_vehicle"
  SHX5_2 = SHX1_2
  SHX3_2(SHX4_2, SHX5_2)
  SHX3_2 = CMG
  SHX3_2 = SHX3_2.spawnVehicle
  SHX4_2 = SHX2_2.vehicle
  SHX5_2 = SHX2_2.position
  SHX5_2 = SHX5_2.x
  SHX6_2 = SHX2_2.position
  SHX6_2 = SHX6_2.y
  SHX7_2 = SHX2_2.position
  SHX7_2 = SHX7_2.z
  SHX8_2 = SHX2_2.position
  SHX8_2 = SHX8_2.w
  SHX9_2 = false
  SHX10_2 = true
  SHX11_2 = true
  SHX3_2 = SHX3_2(SHX4_2, SHX5_2, SHX6_2, SHX7_2, SHX8_2, SHX9_2, SHX10_2, SHX11_2)
  SHX4_2 = SetModelAsNoLongerNeeded
  SHX5_2 = SHX2_2.vehicle
  SHX4_2(SHX5_2)
  SHX4_2 = SetVehicleDoorsLocked
  SHX5_2 = SHX3_2
  SHX6_2 = 2
  SHX4_2(SHX5_2, SHX6_2)
  SHX4_2 = DecorSetInt
  SHX5_2 = SHX3_2
  SHX6_2 = "ac76c9d452"
  SHX7_2 = CMG
  SHX7_2 = SHX7_2.getClientUserId
  SHX7_2 = SHX7_2()
  if not SHX7_2 then
    SHX7_2 = 0
  end
  SHX4_2(SHX5_2, SHX6_2, SHX7_2)
  SHX4_2 = tonumber
  SHX5_2 = 1927688563
  SHX4_2 = SHX4_2(SHX5_2)
  if SHX4_2 then
    SHX5_2 = DecorSetInt
    SHX6_2 = SHX3_2
    SHX7_2 = "0a6cf607ed"
    SHX8_2 = SHX4_2
    SHX5_2(SHX6_2, SHX7_2, SHX8_2)
  end
  while true do
    SHX5_2 = NetworkGetEntityIsNetworked
    SHX6_2 = SHX3_2
    SHX5_2 = SHX5_2(SHX6_2)
    if SHX5_2 then
      SHX5_2 = NetworkGetNetworkIdFromEntity
      SHX6_2 = SHX3_2
      SHX5_2 = SHX5_2(SHX6_2)
      if 0 ~= SHX5_2 then
        break
      end
    end
    SHX5_2 = Citizen
    SHX5_2 = SHX5_2.Wait
    SHX6_2 = 0
    SHX5_2(SHX6_2)
  end
  SHX5_2 = NetworkGetNetworkIdFromEntity
  SHX6_2 = SHX3_2
  SHX5_2 = SHX5_2(SHX6_2)
  SHX6_2 = TriggerServerEvent
  SHX7_2 = "ea365e9b72"
  SHX8_2 = SHX5_2
  SHX6_2(SHX7_2, SHX8_2)
  SHX6_2 = SHX0_2.jobInfo
  SHX6_2.vehicle = SHX3_2
end
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = RegisterNetEvent
SHX17_1 = "7aa155f442"
function SHX18_1()
  -- [AI CLEANUP] Decompiled Lua - Fix these:
  -- 1. Move ::SHX_LABEL_XX:: outside nested blocks if 'no visible label' error
  -- 2. Rename SHX0_1, SHX1_2 variables to meaningful names
  -- 3. Replace goto/label with while/repeat-until where possible
  -- 4. Remove decompiler comments, add meaningful ones
  -- 5. Fix indentation and formatting
  
  local SHX0_2, SHX1_2, SHX2_2, SHX3_2, SHX4_2
  SHX0_2 = CMG
  SHX0_2 = SHX0_2.getUserBusinessData
  SHX1_2 = "delivery"
  SHX0_2 = SHX0_2(SHX1_2)
  if SHX0_2 then
    SHX0_2 = RageUI
    SHX0_2 = SHX0_2.Visible
    SHX1_2 = RMenu
    SHX2_2 = SHX1_2
    SHX1_2 = SHX1_2.Get
    SHX3_2 = "business"
    SHX4_2 = "delivery_locations"
    SHX1_2 = SHX1_2(SHX2_2, SHX3_2, SHX4_2)
    SHX2_2 = true
    SHX0_2(SHX1_2, SHX2_2)
    SHX0_2 = TriggerServerEvent
    SHX1_2 = "bf3f551598"
    SHX0_2(SHX1_2)
  end
end
SHX16_1(SHX17_1, SHX18_1)
SHX16_1 = {}
SHX17_1 = {}
SHX17_1.init = SHX1_1
SHX17_1.tick = SHX2_1
SHX17_1.finish = nil
SHX17_1.next = "drive"
SHX16_1.prep = SHX17_1
SHX17_1 = {}
SHX17_1.init = SHX3_1
SHX17_1.tick = SHX4_1
SHX17_1.finish = SHX5_1
SHX17_1.next = "pickup"
SHX16_1.drive = SHX17_1
SHX17_1 = {}
SHX17_1.init = SHX6_1
SHX17_1.tick = SHX7_1
SHX17_1.finish = SHX8_1
SHX17_1.next = "return"
SHX16_1.pickup = SHX17_1
SHX17_1 = {}
SHX17_1.init = SHX10_1
SHX17_1.tick = SHX11_1
SHX17_1.finish = SHX12_1
SHX17_1.next = "place"
SHX16_1["return"] = SHX17_1
SHX17_1 = {}
SHX17_1.init = SHX13_1
SHX17_1.tick = SHX14_1
SHX17_1.finish = SHX15_1
SHX17_1.next = "prep"
SHX16_1.place = SHX17_1
SHX17_1 = CMG
SHX17_1 = SHX17_1.registerBusinessJob
SHX18_1 = "delivery"
SHX19_1 = nil
SHX20_1 = "prep"
SHX21_1 = SHX16_1
SHX22_1 = nil
SHX17_1(SHX18_1, SHX19_1, SHX20_1, SHX21_1, SHX22_1)
SHX17_1 = Citizen
SHX17_1 = SHX17_1.Wait
SHX18_1 = 0
SHX17_1(SHX18_1)
SHX17_1 = CMG
SHX17_1 = SHX17_1.addGenericBusinessOrderView
SHX18_1 = "delivery"
SHX19_1 = "delivery_locations"
SHX17_1(SHX18_1, SHX19_1)
