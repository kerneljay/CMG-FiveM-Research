--[[
    Beginner Guide: cl_delivery.lua
    ===============================

    This file came from decompiled Lua. It has been cleaned so the
    temporary SHX names are replaced with role-based names. Where the
    exact server-side meaning cannot be proven from this client file,
    neutral names such as stateValue/workValue are used instead of
    inventing a misleading meaning.

    Compatibility:
      * Event/hash strings and public framework calls are unchanged.
      * This pass intentionally avoids guessing unknown server meanings.
]]
--[[
    BEGINNER GUIDE — Delivery
    =========================

    File: cmg/prod/client/business/cl_delivery.lua
    Purpose: This file contains FiveM client/resource logic.

    How to read FiveM Lua:
      * RegisterNetEvent/AddEventHandler = code that runs when an event happens.
      * TriggerServerEvent = this client asks/tells the server to do something.
      * PlayerPedId() = your local GTA character (called a 'ped').
      * vector3/vector4 = world coordinates; vector4 also normally includes heading.
      * RageUI/NUI = menu or browser-based UI code.
      * CreateThread/Wait = code that can keep running without freezing the game.

    Decompiled-code note:
      This file came from decompiled Lua. The repeated AI-cleanup boilerplate
      has been removed. Any remaining SHX-style values are compiler/decompiler
      temporaries whose meaning changes repeatedly; follow the surrounding API
      call and the comments rather than treating one SHX variable as one concept.

    Network/hash identifiers found: 11
      They are intentionally left unchanged because matching server code may use them.

    Example player-facing text in this file:
      * Enter the ~b~delivery vehicle~w~
      * Enter the driver seat of the ~b~delivery vehicle~w~
      * Press ~INPUT_CONTEXT~ to retrive delivery items
      * Exit the vehicle and locate the ~y~delivery collection~w~ point

]]
local numberValue, workValue12, workValue14, workValue16, workValue18, workValue19, workValue21, workValue23, workValue24, workValue25, workValue, workValue2, workValue3, workValue4, workValue6, workValue8, rageUiCall, textValue3, textValue4, rageUiCall2, textValue6, cmgCall2, rageUiCall4, rageUiCall5, textValue7, textValue8
numberValue = 60000
function workValue12(arg1)
  local arg2, workValue15, workValue17, textValue11, textValue13
  arg2 = arg1.jobInfo
  arg2.locationId = nil
  arg2 = RageUI
  arg2 = arg2.Visible
  workValue15 = RMenu
  workValue17 = workValue15
  workValue15 = workValue15.Get
  textValue11 = "business"
  textValue13 = "delivery_locations"
  workValue15, workValue17, textValue11, textValue13 = workValue15(workValue17, textValue11, textValue13)
  -- Beginner: result below is menuVisible.
  arg2 = arg2(workValue15, workValue17, textValue11, textValue13)
  if not arg2 then
    arg2 = drawNativeNotification
    workValue15 = [[
To choose a supplier to pick up stock from do /job.
To view current stock go inside the building.]]
    -- Beginner: Show a GTA-style notification/help prompt.
    arg2(workValue15)
  end
  arg2 = TriggerServerEvent
  workValue15 = "bf3f551598"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bf3f551598".
  arg2(workValue15)
end
function workValue14(arg1)
  local arg2, workValue15
  arg2 = DoesEntityExist
  workValue15 = arg1.jobInfo
  workValue15 = workValue15.vehicle
  arg2 = arg2(workValue15)
  if arg2 then
    arg2 = arg1.jobInfo
    arg2 = arg2.locationId
    arg2 = nil ~= arg2
  end
  return arg2
end
function workValue16(arg1)
  local arg2, workValue15, workValue17, textValue11, textValue13, numberValue8
  arg2 = arg1.jobMetadata
  arg2 = arg2.locations
  workValue15 = arg1.jobInfo
  workValue15 = workValue15.locationId
  arg2 = arg2[workValue15]
  workValue15 = AddBlipForEntity
  workValue17 = arg1.jobInfo
  workValue17 = workValue17.vehicle
  -- Beginner: result below is blipHandle.
  workValue15 = workValue15(workValue17)
  workValue17 = SetBlipSprite
  textValue11 = workValue15
  textValue13 = 326
  workValue17(textValue11, textValue13)
  workValue17 = SetBlipColour
  textValue11 = workValue15
  textValue13 = 3
  workValue17(textValue11, textValue13)
  workValue17 = arg1.jobInfo
  workValue17.vehicleBlip = workValue15
  workValue17 = AddBlipForCoord
  textValue11 = arg2.position
  textValue11 = textValue11.x
  textValue13 = arg2.position
  textValue13 = textValue13.y
  numberValue8 = arg2.position
  numberValue8 = numberValue8.z
  -- Beginner: result below is blipHandle.
  workValue17 = workValue17(textValue11, textValue13, numberValue8)
  textValue11 = SetBlipColour
  textValue13 = workValue17
  numberValue8 = 5
  textValue11(textValue13, numberValue8)
  textValue11 = SetBlipRoute
  textValue13 = workValue17
  numberValue8 = true
  textValue11(textValue13, numberValue8)
  textValue11 = arg1.jobInfo
  textValue11.routeBlip = workValue17
  textValue11 = TriggerServerEvent
  textValue13 = "bf3f551598"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bf3f551598".
  textValue11(textValue13)
end
function workValue18(arg1)
  local arg2, workValue15, workValue17, textValue11, textValue13, numberValue8, textValue14
  arg2 = arg1.jobMetadata
  arg2 = arg2.locations
  workValue15 = arg1.jobInfo
  workValue15 = workValue15.locationId
  arg2 = arg2[workValue15]
  workValue15 = CMG
  workValue15 = workValue15.getPlayerVehicle
  workValue15, workValue17 = workValue15()
  textValue11 = DoesEntityExist
  textValue13 = arg1.jobInfo
  textValue13 = textValue13.vehicle
  textValue11 = textValue11(textValue13)
  if not textValue11 then
    textValue11 = arg1.jobInfo
    textValue11 = textValue11.failed
    if not textValue11 then
      textValue11 = TriggerServerEvent
      textValue13 = "15ea9471a1"
      textValue11(textValue13)
      textValue11 = arg1.jobInfo
      textValue11.failed = true
    end
    textValue11 = notify
    textValue13 = "~r~Delivery failed, you lost the delivery vehicle."
    -- Beginner: Show a notification to the player.
    textValue11(textValue13)
    textValue11 = false
    return textValue11
  else
    textValue11 = arg1.jobInfo
    textValue11 = textValue11.vehicle
    if workValue15 ~= textValue11 then
      textValue11 = drawNativeText
      textValue13 = "Enter the ~b~delivery vehicle~w~"
      -- Beginner: Draw GTA-style text on screen.
      textValue11(textValue13)
      textValue11 = false
      return textValue11
    elseif not workValue17 then
      textValue11 = drawNativeText
      textValue13 = "Enter the driver seat of the ~b~delivery vehicle~w~"
      textValue11(textValue13)
      textValue11 = false
      return textValue11
    end
  end
  textValue11 = drawNativeText
  textValue13 = "Drive to the ~y~"
  numberValue8 = arg2.name
  textValue14 = "~w~"
  textValue13 = textValue13 .. numberValue8 .. textValue14
  -- Beginner: Draw GTA-style text on screen.
  textValue11(textValue13)
  textValue11 = GetEntityCoords
  textValue13 = workValue15
  numberValue8 = true
  -- Beginner: result below is entityCoords.
  textValue11 = textValue11(textValue13, numberValue8)
  textValue13 = arg2.position
  textValue11 = textValue11 - textValue13
  textValue11 = #textValue11
  textValue11 = textValue11 < 15.0
  return textValue11
end
function workValue19(arg1)
  local arg2, workValue15
  arg2 = RemoveBlip
  workValue15 = arg1.jobInfo
  workValue15 = workValue15.vehicleBlip
  arg2(workValue15)
  arg2 = arg1.jobInfo
  arg2.vehicleBlip = nil
  arg2 = RemoveBlip
  workValue15 = arg1.jobInfo
  workValue15 = workValue15.routeBlip
  arg2(workValue15)
  arg2 = arg1.jobInfo
  arg2.routeBlip = nil
end
function workValue21(arg1)
  local arg2, workValue15, workValue17, textValue11, textValue13, numberValue8, textValue14, numberValue9, tableHelper, iterator, coords, numberValue2, flag2, numberValue3, numberValue4, flag3, flag4, flag5, workValue10, workValue13, numberValue5, numberValue6, numberValue7
  arg2 = arg1.jobMetadata
  arg2 = arg2.locations
  workValue15 = arg1.jobInfo
  workValue15 = workValue15.locationId
  arg2 = arg2[workValue15]
  workValue15 = arg1.jobInfo
  workValue17 = tCMG
  workValue17 = workValue17.addMarker
  textValue11 = arg2.position
  textValue11 = textValue11.x
  textValue13 = arg2.position
  textValue13 = textValue13.y
  numberValue8 = arg2.position
  numberValue8 = numberValue8.z
  textValue14 = 1.0
  numberValue9 = 1.0
  tableHelper = 1.0
  iterator = 255
  coords = 255
  numberValue2 = 0
  flag2 = 150
  numberValue3 = 25.0
  numberValue4 = 1
  flag3 = false
  flag4 = false
  flag5 = false
  workValue10 = nil
  workValue13 = nil
  numberValue5 = 0.0
  numberValue6 = 0.0
  numberValue7 = 0.0
  workValue17 = workValue17(textValue11, textValue13, numberValue8, textValue14, numberValue9, tableHelper, iterator, coords, numberValue2, flag2, numberValue3, numberValue4, flag3, flag4, flag5, workValue10, workValue13, numberValue5, numberValue6, numberValue7)
  workValue15.marker = workValue17
  workValue15 = arg1.jobInfo
  workValue17 = tCMG
  workValue17 = workValue17.addBlip
  textValue11 = arg2.position
  textValue11 = textValue11.x
  textValue13 = arg2.position
  textValue13 = textValue13.y
  numberValue8 = arg2.position
  numberValue8 = numberValue8.z
  textValue14 = 1
  numberValue9 = 5
  tableHelper = nil
  iterator = 0.75
  coords = false
  workValue17 = workValue17(textValue11, textValue13, numberValue8, textValue14, numberValue9, tableHelper, iterator, coords)
  workValue15.blip = workValue17
  workValue15 = arg1.jobInfo
  workValue15.hasFinishedLastRequest = false
  workValue15 = arg1.jobInfo
  workValue15.remainingItemCount = -1
  workValue15 = TriggerServerEvent
  workValue17 = "bf3f551598"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bf3f551598".
  workValue15(workValue17)
end
function workValue23(arg1)
  local arg2, workValue15, workValue17, textValue11, textValue13, numberValue8, textValue14
  arg2 = arg1.jobMetadata
  arg2 = arg2.locations
  workValue15 = arg1.jobInfo
  workValue15 = workValue15.locationId
  arg2 = arg2[workValue15]
  workValue15 = CMG
  workValue15 = workValue15.getPlayerCoords
  -- Beginner: result below is playerCoords.
  workValue15 = workValue15()
  workValue17 = arg2.position
  workValue15 = workValue15 - workValue17
  workValue15 = #workValue15
  if workValue15 < 2.0 then
    workValue17 = drawNativeNotification
    textValue11 = "Press ~INPUT_CONTEXT~ to retrive delivery items"
    -- Beginner: Show a GTA-style notification/help prompt.
    workValue17(textValue11)
    workValue17 = IsControlJustPressed
    textValue11 = 0
    textValue13 = 51
    workValue17 = workValue17(textValue11, textValue13)
    if workValue17 then
      workValue17 = TriggerServerEvent
      textValue11 = "301a0dda6e"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "301a0dda6e".
      workValue17(textValue11)
    end
  else
    workValue17 = 150.0
    if workValue15 > workValue17 then
      workValue17 = arg1.jobInfo
      workValue17 = workValue17.failed
      if not workValue17 then
        workValue17 = TriggerServerEvent
        textValue11 = "15ea9471a1"
        workValue17(textValue11)
        workValue17 = arg1.jobInfo
        workValue17.failed = true
      end
      return
    else
      workValue17 = CMG
      workValue17 = workValue17.getPlayerVehicle
      -- Beginner: result below is currentVehicle.
      workValue17 = workValue17()
      if 0 == workValue17 then
        workValue17 = drawNativeText
        textValue11 = "Locate the ~y~delivery collection~w~ point"
        -- Beginner: Draw GTA-style text on screen.
        workValue17(textValue11)
      else
        workValue17 = drawNativeText
        textValue11 = "Exit the vehicle and locate the ~y~delivery collection~w~ point"
        workValue17(textValue11)
      end
    end
  end
  workValue17 = arg1.jobInfo
  workValue17 = workValue17.remainingItemCount
  if workValue17 >= 0 then
    workValue17 = CMG
    workValue17 = workValue17.createTimerBars
    -- Beginner: result below is timerBars.
    workValue17 = workValue17()
    textValue11 = workValue17.push
    textValue13 = "~y~ITEMS LEFT"
    numberValue8 = tostring
    textValue14 = arg1.jobInfo
    textValue14 = textValue14.remainingItemCount
    numberValue8, textValue14 = numberValue8(textValue14)
    textValue11(textValue13, numberValue8, textValue14)
    textValue11 = workValue17.draw
    textValue11()
  end
  workValue17 = arg1.jobInfo
  workValue17 = workValue17.hasFinishedLastRequest
  return workValue17
end
function workValue24(arg1)
  local arg2, workValue15
  arg2 = tCMG
  arg2 = arg2.removeMarker
  workValue15 = arg1.jobInfo
  workValue15 = workValue15.marker
  arg2(workValue15)
  arg2 = arg1.jobInfo
  arg2.marker = nil
  arg2 = tCMG
  arg2 = arg2.removeBlip
  workValue15 = arg1.jobInfo
  workValue15 = workValue15.blip
  arg2(workValue15)
  arg2 = arg1.jobInfo
  arg2.blip = nil
  arg2 = arg1.jobInfo
  arg2.hasFinishedLastRequest = nil
end
function workValue25(arg1, arg2)
  local workValue15, workValue17, textValue11, textValue13, numberValue8, textValue14, numberValue9, tableHelper, iterator, coords, numberValue2, flag2, numberValue3, numberValue4, flag3
  workValue15 = {}
  workValue17 = pairs
  textValue11 = CMG
  textValue11 = textValue11.getAllVehicles
  textValue11, textValue13, numberValue8, textValue14, numberValue9, tableHelper, iterator, coords, numberValue2, flag2, numberValue3, numberValue4, flag3 = textValue11()
  workValue17, textValue11, textValue13, numberValue8 = workValue17(textValue11, textValue13, numberValue8, textValue14, numberValue9, tableHelper, iterator, coords, numberValue2, flag2, numberValue3, numberValue4, flag3)
  for textValue14, numberValue9 in workValue17, textValue11, textValue13, numberValue8 do
    tableHelper = table
    tableHelper = tableHelper.insert
    iterator = workValue15
    coords = GetEntityCoords
    numberValue2 = numberValue9
    flag2 = true
    coords, numberValue2, flag2, numberValue3, numberValue4, flag3 = coords(numberValue2, flag2)
    tableHelper(iterator, coords, numberValue2, flag2, numberValue3, numberValue4, flag3)
  end
  workValue17 = pairs
  textValue11 = arg1.jobMetadata
  textValue11 = textValue11.vehicleSpawns
  workValue17, textValue11, textValue13, numberValue8 = workValue17(textValue11)
  for textValue14, numberValue9 in workValue17, textValue11, textValue13, numberValue8 do
    tableHelper = true
    iterator = pairs
    coords = workValue15
    iterator, coords, numberValue2, flag2 = iterator(coords)
    for numberValue3, numberValue4 in iterator, coords, numberValue2, flag2 do
      flag3 = numberValue9.position
      flag3 = flag3.xyz
      flag3 = numberValue4 - flag3
      flag3 = #flag3
      if flag3 < 4.0 then
        tableHelper = false
        break
      end
    end
    if tableHelper or arg2 then
      return textValue14
    end
  end
  workValue17 = nil
  return workValue17
end
function workValue(arg1)
  local arg2, workValue15, workValue17, textValue11, textValue13, numberValue8, textValue14
  arg2 = workValue25
  workValue15 = arg1
  workValue17 = true
  arg2 = arg2(workValue15, workValue17)
  workValue15 = assert
  workValue17 = arg2
  textValue11 = "Spawn index is null"
  workValue15(workValue17, textValue11)
  workValue15 = arg1.jobMetadata
  workValue15 = workValue15.vehicleSpawns
  workValue15 = workValue15[arg2]
  workValue17 = arg1.jobInfo
  workValue17.spawnInfo = workValue15
  workValue17 = AddBlipForEntity
  textValue11 = arg1.jobInfo
  textValue11 = textValue11.vehicle
  -- Beginner: result below is blipHandle.
  workValue17 = workValue17(textValue11)
  textValue11 = SetBlipSprite
  textValue13 = workValue17
  numberValue8 = 326
  textValue11(textValue13, numberValue8)
  textValue11 = SetBlipColour
  textValue13 = workValue17
  numberValue8 = 3
  textValue11(textValue13, numberValue8)
  textValue11 = arg1.jobInfo
  textValue11.vehicleBlip = workValue17
  textValue11 = AddBlipForCoord
  textValue13 = workValue15.position
  textValue13 = textValue13.x
  numberValue8 = workValue15.position
  numberValue8 = numberValue8.y
  textValue14 = workValue15.position
  textValue14 = textValue14.z
  -- Beginner: result below is blipHandle.
  textValue11 = textValue11(textValue13, numberValue8, textValue14)
  textValue13 = SetBlipColour
  numberValue8 = textValue11
  textValue14 = 5
  textValue13(numberValue8, textValue14)
  textValue13 = SetBlipRoute
  numberValue8 = textValue11
  textValue14 = true
  textValue13(numberValue8, textValue14)
  textValue13 = arg1.jobInfo
  textValue13.routeBlip = textValue11
  textValue13 = TriggerServerEvent
  numberValue8 = "bf3f551598"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bf3f551598".
  textValue13(numberValue8)
end
function workValue2(arg1)
  local arg2, workValue15, workValue17, textValue11, textValue13, numberValue8, textValue14
  arg2 = arg1.jobInfo
  arg2 = arg2.spawnInfo
  workValue15 = CMG
  workValue15 = workValue15.getPlayerVehicle
  workValue15, workValue17 = workValue15()
  textValue11 = DoesEntityExist
  textValue13 = arg1.jobInfo
  textValue13 = textValue13.vehicle
  textValue11 = textValue11(textValue13)
  if not textValue11 then
    textValue11 = arg1.jobInfo
    textValue11 = textValue11.failed
    if not textValue11 then
      textValue11 = TriggerServerEvent
      textValue13 = "15ea9471a1"
      textValue11(textValue13)
      textValue11 = arg1.jobInfo
      textValue11.failed = true
    end
    textValue11 = notify
    textValue13 = "~r~Delivery failed, you lost the delivery vehicle."
    -- Beginner: Show a notification to the player.
    textValue11(textValue13)
    return
  else
    textValue11 = arg1.jobInfo
    textValue11 = textValue11.vehicle
    if workValue15 ~= textValue11 then
      textValue11 = drawNativeText
      textValue13 = "Enter the ~b~delivery vehicle~w~"
      -- Beginner: Draw GTA-style text on screen.
      textValue11(textValue13)
      return
    elseif not workValue17 then
      textValue11 = drawNativeText
      textValue13 = "Enter the driver seat of the ~b~delivery vehicle~w~"
      textValue11(textValue13)
      return
    end
  end
  textValue11 = drawNativeText
  textValue13 = "Drive to the ~y~"
  numberValue8 = arg1.name
  textValue14 = "~w~"
  textValue13 = textValue13 .. numberValue8 .. textValue14
  -- Beginner: Draw GTA-style text on screen.
  textValue11(textValue13)
  textValue11 = GetEntityCoords
  textValue13 = workValue15
  numberValue8 = true
  -- Beginner: result below is entityCoords.
  textValue11 = textValue11(textValue13, numberValue8)
  textValue13 = arg2.position
  textValue13 = textValue13.xyz
  textValue11 = textValue11 - textValue13
  textValue11 = #textValue11
  textValue11 = textValue11 < 15.0
  return textValue11
end
function workValue3(arg1)
  local arg2, workValue15
  arg2 = RemoveBlip
  workValue15 = arg1.jobInfo
  workValue15 = workValue15.vehicleBlip
  arg2(workValue15)
  arg2 = arg1.jobInfo
  arg2.vehicleBlip = nil
  arg2 = RemoveBlip
  workValue15 = arg1.jobInfo
  workValue15 = workValue15.routeBlip
  arg2(workValue15)
  arg2 = arg1.jobInfo
  arg2.routeBlip = nil
end
function workValue4(arg1)
  local arg2, workValue15
  arg2 = arg1.jobInfo
  workValue15 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  workValue15 = workValue15()
  arg2.placeStartTime = workValue15
  arg2 = TriggerServerEvent
  workValue15 = "bf3f551598"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bf3f551598".
  arg2(workValue15)
end
function workValue6(arg1)
  local arg2, workValue15, workValue17, textValue11, textValue13, numberValue8, textValue14
  arg2 = drawNativeText
  workValue15 = "Empty the stock from your ~b~vehicle~w~ into the business storage"
  -- Beginner: Draw GTA-style text on screen.
  arg2(workValue15)
  arg2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  arg2 = arg2()
  workValue15 = arg1.jobInfo
  workValue15 = workValue15.placeStartTime
  arg2 = arg2 - workValue15
  workValue15 = math
  workValue15 = workValue15.floor
  workValue17 = numberValue
  workValue17 = workValue17 - arg2
  workValue17 = workValue17 / 1000
  workValue15 = workValue15(workValue17)
  if workValue15 > 0 then
    workValue17 = CMG
    workValue17 = workValue17.createTimerBars
    -- Beginner: result below is timerBars.
    workValue17 = workValue17()
    textValue11 = workValue17.push
    textValue13 = "~y~NEXT JOB TIME"
    numberValue8 = tostring
    textValue14 = workValue15
    numberValue8, textValue14 = numberValue8(textValue14)
    textValue11(textValue13, numberValue8, textValue14)
    textValue11 = workValue17.draw
    textValue11()
  end
  workValue17 = numberValue
  workValue17 = arg2 > workValue17
  return workValue17
end
function workValue8(arg1)
  local arg2
  arg2 = arg1.jobInfo
  arg2.placeStartTime = nil
end
rageUiCall = RMenu
rageUiCall = rageUiCall.Add
textValue3 = "business"
textValue4 = "delivery_locations"
rageUiCall2 = RageUI
rageUiCall2 = rageUiCall2.CreateMenu
textValue6 = ""
cmgCall2 = "~b~CMG Business"
rageUiCall4 = CMG
rageUiCall4 = rageUiCall4.getRageUIMenuWidth
rageUiCall4 = rageUiCall4()
rageUiCall5 = CMG
rageUiCall5 = rageUiCall5.getRageUIMenuHeight
rageUiCall5 = rageUiCall5()
textValue7 = "cmg_marketui"
textValue8 = "cmg_marketui"
rageUiCall2, textValue6, cmgCall2, rageUiCall4, rageUiCall5, textValue7, textValue8 = rageUiCall2(textValue6, cmgCall2, rageUiCall4, rageUiCall5, textValue7, textValue8)
rageUiCall(textValue3, textValue4, rageUiCall2, textValue6, cmgCall2, rageUiCall4, rageUiCall5, textValue7, textValue8)
rageUiCall = RageUI
rageUiCall = rageUiCall.CreateWhile
textValue3 = 1.0
textValue4 = RMenu
rageUiCall2 = textValue4
textValue4 = textValue4.Get
textValue6 = "business"
cmgCall2 = "delivery_locations"
-- Beginner: result below is menu.
textValue4 = textValue4(rageUiCall2, textValue6, cmgCall2)
rageUiCall2 = nil
function textValue6()
  local arg1, arg2, workValue15, workValue17, textValue11, textValue13
  arg1 = RageUI
  arg1 = arg1.IsVisible
  arg2 = RMenu
  workValue15 = arg2
  arg2 = arg2.Get
  workValue17 = "business"
  textValue11 = "delivery_locations"
  -- Beginner: result below is menu.
  arg2 = arg2(workValue15, workValue17, textValue11)
  workValue15 = true
  workValue17 = false
  textValue11 = true
  function textValue13()
    local cmgCall, rageUiCall3, textValue9, textValue10, dataTable2, flag6, workValue22, textValue15, rageUiCall6, textValue16, textValue, dataTable, flag, workValue5, workValue7, workValue9, textValue2, stringHelper, textValue5, workValue11
    cmgCall = CMG
    cmgCall = cmgCall.getUserBusinessData
    rageUiCall3 = "delivery"
    cmgCall = cmgCall(rageUiCall3)
    if not cmgCall then
      rageUiCall3 = RageUI
      rageUiCall3 = rageUiCall3.CloseAll
      rageUiCall3()
      return
    end
    rageUiCall3 = RageUI
    rageUiCall3 = rageUiCall3.ButtonWithStyle
    textValue9 = "~y~View Orders"
    textValue10 = ""
    dataTable2 = {}
    dataTable2.RightLabel = "\226\134\146\226\134\146\226\134\146"
    flag6 = true
    function workValue22()
      local arg12, arg22
    end
    textValue15 = RMenu
    rageUiCall6 = textValue15
    textValue15 = textValue15.Get
    textValue16 = "business"
    textValue = "delivery_vieworders"
    textValue15, rageUiCall6, textValue16, textValue, dataTable, flag, workValue5, workValue7, workValue9, textValue2, stringHelper, textValue5, workValue11 = textValue15(rageUiCall6, textValue16, textValue)
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiCall3(textValue9, textValue10, dataTable2, flag6, workValue22, textValue15, rageUiCall6, textValue16, textValue, dataTable, flag, workValue5, workValue7, workValue9, textValue2, stringHelper, textValue5, workValue11)
    rageUiCall3 = pairs
    textValue9 = cmgCall.jobMetadata
    textValue9 = textValue9.locations
    rageUiCall3, textValue9, textValue10, dataTable2 = rageUiCall3(textValue9)
    for flag6, workValue22 in rageUiCall3, textValue9, textValue10, dataTable2 do
      textValue15 = ""
      rageUiCall6 = pairs
      textValue16 = workValue22.itemsPerDelivery
      rageUiCall6, textValue16, textValue, dataTable = rageUiCall6(textValue16)
      for flag, workValue5 in rageUiCall6, textValue16, textValue, dataTable do
        workValue7 = cmgCall.locationInfo
        workValue7 = workValue7.items
        workValue9 = workValue5.id
        workValue7 = workValue7[workValue9]
        if workValue7 then
          workValue9 = textValue15
          textValue2 = "\n"
          stringHelper = tostring
          textValue5 = workValue5.amount
          stringHelper = stringHelper(textValue5)
          textValue5 = "x "
          workValue11 = workValue7[1]
          workValue9 = workValue9 .. textValue2 .. stringHelper .. textValue5 .. workValue11
          textValue15 = workValue9
        end
      end
      rageUiCall6 = RageUI
      rageUiCall6 = rageUiCall6.ButtonWithStyle
      textValue16 = workValue22.name
      textValue = "Items gained from delivery:"
      dataTable = textValue15
      textValue = textValue .. dataTable
      dataTable = {}
      dataTable.RightLabel = "\226\134\146\226\134\146\226\134\146"
      flag = true
      function workValue5(arg12, arg22, arg3)
        local serverEventCall, textValue12, workValue20
        if arg3 then
          serverEventCall = TriggerServerEvent
          textValue12 = "fda3ea3d66"
          workValue20 = flag6
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "fda3ea3d66".
          serverEventCall(textValue12, workValue20)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      rageUiCall6(textValue16, textValue, dataTable, flag, workValue5)
    end
  end
  arg1(arg2, workValue15, workValue17, textValue11, textValue13)
end
rageUiCall(textValue3, textValue4, rageUiCall2, textValue6)
rageUiCall = RegisterNetEvent
textValue3 = "69b6b20fea"
-- Beginner: this function handles network event "69b6b20fea".
function textValue4(arg1)
  local arg2, workValue15, workValue17
  arg2 = CMG
  arg2 = arg2.getUserBusinessData
  workValue15 = "delivery"
  arg2 = arg2(workValue15)
  if not arg2 then
    return
  end
  workValue15 = arg2.jobInfo
  workValue15 = workValue15.hasFinishedLastRequest
  if nil == workValue15 then
    return
  end
  workValue15 = arg2.jobInfo
  workValue15.remainingItemCount = arg1
  workValue15 = arg2.jobInfo
  workValue17 = 0 == arg1
  workValue15.hasFinishedLastRequest = workValue17
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "69b6b20fea".
rageUiCall(textValue3, textValue4)
rageUiCall = RegisterNetEvent
textValue3 = "95847a6f46"
-- Beginner: this function handles network event "95847a6f46".
function textValue4(arg1)
  local arg2, workValue15
  arg2 = CMG
  arg2 = arg2.getUserBusinessData
  workValue15 = "delivery"
  arg2 = arg2(workValue15)
  if arg2 then
    workValue15 = arg2.jobInfo
    workValue15.locationId = arg1
  end
end
rageUiCall(textValue3, textValue4)
rageUiCall = RegisterNetEvent
textValue3 = "f443811a93"
-- Beginner: this function handles network event "f443811a93".
function textValue4()
  local arg1, arg2, workValue15, workValue17, textValue11, textValue13, numberValue8, textValue14, numberValue9, tableHelper, iterator, coords
  arg1 = CMG
  arg1 = arg1.getUserBusinessData
  arg2 = "delivery"
  arg1 = arg1(arg2)
  if not arg1 then
    return
  end
  arg2 = workValue25
  workValue15 = arg1
  workValue17 = false
  arg2 = arg2(workValue15, workValue17)
  if not arg2 then
    workValue15 = notify
    workValue17 = "~r~Unable to find a suitable location to spawn the vehicle."
    -- Beginner: Show a notification to the player.
    workValue15(workValue17)
    workValue15 = TriggerServerEvent
    workValue17 = "15ea9471a1"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "15ea9471a1".
    workValue15(workValue17)
    return
  end
  workValue15 = arg1.jobMetadata
  workValue15 = workValue15.vehicleSpawns
  workValue15 = workValue15[arg2]
  workValue17 = CMG
  workValue17 = workValue17.loadModel
  textValue11 = workValue15.vehicle
  -- Beginner: Request/load a GTA model before spawning or applying it.
  workValue17(textValue11)
  workValue17 = CMG
  workValue17 = workValue17.requestEntitySpawn
  textValue11 = "business_delivery_vehicle"
  textValue13 = arg2
  workValue17(textValue11, textValue13)
  workValue17 = CMG
  workValue17 = workValue17.spawnVehicle
  textValue11 = workValue15.vehicle
  textValue13 = workValue15.position
  textValue13 = textValue13.x
  numberValue8 = workValue15.position
  numberValue8 = numberValue8.y
  textValue14 = workValue15.position
  textValue14 = textValue14.z
  numberValue9 = workValue15.position
  numberValue9 = numberValue9.w
  tableHelper = false
  iterator = true
  coords = true
  workValue17 = workValue17(textValue11, textValue13, numberValue8, textValue14, numberValue9, tableHelper, iterator, coords)
  textValue11 = SetModelAsNoLongerNeeded
  textValue13 = workValue15.vehicle
  textValue11(textValue13)
  textValue11 = SetVehicleDoorsLocked
  textValue13 = workValue17
  numberValue8 = 2
  textValue11(textValue13, numberValue8)
  textValue11 = DecorSetInt
  textValue13 = workValue17
  numberValue8 = "ac76c9d452"
  textValue14 = CMG
  textValue14 = textValue14.getClientUserId
  -- Beginner: result below is userId.
  textValue14 = textValue14()
  if not textValue14 then
    textValue14 = 0
  end
  textValue11(textValue13, numberValue8, textValue14)
  textValue11 = tonumber
  textValue13 = 1927688563
  textValue11 = textValue11(textValue13)
  if textValue11 then
    textValue13 = DecorSetInt
    numberValue8 = workValue17
    textValue14 = "0a6cf607ed"
    numberValue9 = textValue11
    textValue13(numberValue8, textValue14, numberValue9)
  end
  while true do
    textValue13 = NetworkGetEntityIsNetworked
    numberValue8 = workValue17
    textValue13 = textValue13(numberValue8)
    if textValue13 then
      textValue13 = NetworkGetNetworkIdFromEntity
      numberValue8 = workValue17
      textValue13 = textValue13(numberValue8)
      if 0 ~= textValue13 then
        break
      end
    end
    textValue13 = Citizen
    textValue13 = textValue13.Wait
    numberValue8 = 0
    textValue13(numberValue8)
  end
  textValue13 = NetworkGetNetworkIdFromEntity
  numberValue8 = workValue17
  textValue13 = textValue13(numberValue8)
  numberValue8 = TriggerServerEvent
  textValue14 = "ea365e9b72"
  numberValue9 = textValue13
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ea365e9b72".
  numberValue8(textValue14, numberValue9)
  numberValue8 = arg1.jobInfo
  numberValue8.vehicle = workValue17
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f443811a93".
rageUiCall(textValue3, textValue4)
rageUiCall = RegisterNetEvent
textValue3 = "7aa155f442"
-- Beginner: this function handles network event "7aa155f442".
function textValue4()
  local arg1, arg2, workValue15, workValue17, textValue11
  arg1 = CMG
  arg1 = arg1.getUserBusinessData
  arg2 = "delivery"
  arg1 = arg1(arg2)
  if arg1 then
    arg1 = RageUI
    arg1 = arg1.Visible
    arg2 = RMenu
    workValue15 = arg2
    arg2 = arg2.Get
    workValue17 = "business"
    textValue11 = "delivery_locations"
    -- Beginner: result below is menu.
    arg2 = arg2(workValue15, workValue17, textValue11)
    workValue15 = true
    arg1(arg2, workValue15)
    arg1 = TriggerServerEvent
    arg2 = "bf3f551598"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bf3f551598".
    arg1(arg2)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "7aa155f442".
rageUiCall(textValue3, textValue4)
rageUiCall = {}
textValue3 = {}
textValue3.init = workValue12
textValue3.tick = workValue14
textValue3.finish = nil
textValue3.next = "drive"
rageUiCall.prep = textValue3
textValue3 = {}
textValue3.init = workValue16
textValue3.tick = workValue18
textValue3.finish = workValue19
textValue3.next = "pickup"
rageUiCall.drive = textValue3
textValue3 = {}
textValue3.init = workValue21
textValue3.tick = workValue23
textValue3.finish = workValue24
textValue3.next = "return"
rageUiCall.pickup = textValue3
textValue3 = {}
textValue3.init = workValue
textValue3.tick = workValue2
textValue3.finish = workValue3
textValue3.next = "place"
rageUiCall["return"] = textValue3
textValue3 = {}
textValue3.init = workValue4
textValue3.tick = workValue6
textValue3.finish = workValue8
textValue3.next = "prep"
rageUiCall.place = textValue3
textValue3 = CMG
textValue3 = textValue3.registerBusinessJob
textValue4 = "delivery"
rageUiCall2 = nil
textValue6 = "prep"
cmgCall2 = rageUiCall
rageUiCall4 = nil
textValue3(textValue4, rageUiCall2, textValue6, cmgCall2, rageUiCall4)
textValue3 = Citizen
textValue3 = textValue3.Wait
textValue4 = 0
textValue3(textValue4)
textValue3 = CMG
textValue3 = textValue3.addGenericBusinessOrderView
textValue4 = "delivery"
rageUiCall2 = "delivery_locations"
textValue3(textValue4, rageUiCall2)