--[[
    LEVEL 1 BEGINNER GUIDE — Delivery
    ======================================

    File: cmg/prod/client/business/cl_delivery.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: business gameplay and business job logic, specifically the Delivery feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 23
      * Background threads: 0
      * Always-running loops: 1
      * Commands: none found by static scan
      * Incoming network events: none found by static scan
      * Local event handlers: none found by static scan
      * Server events sent: none found by static scan
      * NUI callbacks: none found by static scan
      * Modules/config loaded: none found by static scan

    Read it in this order:
      1. Top-level config/state variables.
      2. Helper functions (small reusable pieces of logic).
      3. Commands/events/UI callbacks (what starts the logic).
      4. Threads/loops last (what keeps checking in the background).

    IMPORTANT — decompiler temporary names have been normalized for readability.
      Names like workingValue12, text4, dataCollection7, stateFlag3, cmgOperation2,
      localValue1/localValue2, or flow_label_* are NOT meaningful original developer names.
      A decompiler invented them while rebuilding source code.

      For a beginner, read the API call on the right-hand side first.
      Example:
        workingValue = GetEntityCoords
        dataCollection2 = workingValue(playerPed)
      means roughly:
        local playerCoords = GetEntityCoords(playerPed)

      Temporary variables use conservative plain-English fallback names.
      Decompiled code can reuse one temporary for several purposes, so API calls
      and nearby comments explain the exact role at each point.

    Safety note for editing:
      Keep event names, decorator keys, exported names, and config keys unchanged
      unless you also update every place that uses them.
]]
local number, workingValue12, workingValue14, workingValue16, workingValue18, workingValue19, workingValue21, workingValue23, workingValue24, workingValue25, workingValue, workingValue2, workingValue3, workingValue4, workingValue6, workingValue8, rageUiOperation, text3, text4, rageUiOperation2, text6, cmgOperation2, rageUiOperation4, rageUiOperation5, text7, text8
number = 60000

-- === HELPER FUNCTION (decompiler name: workingValue12; parameters: localValue1) ===
function workingValue12(localValue1)
  local localValue2, workingValue15, workingValue17, text11, text13
  localValue2 = localValue1.jobInfo
  localValue2.locationId = nil
  localValue2 = RageUI
  localValue2 = localValue2.Visible
  workingValue15 = RMenu
  workingValue17 = workingValue15
  workingValue15 = workingValue15.Get
  text11 = "business"
  text13 = "delivery_locations"
  workingValue15, workingValue17, text11, text13 = workingValue15(workingValue17, text11, text13)
  -- Beginner: result below is menuVisible.
  localValue2 = localValue2(workingValue15, workingValue17, text11, text13)
  if not localValue2 then
    localValue2 = drawNativeNotification
    workingValue15 = [[
To choose a supplier to pick up stock from do /job.
To view current stock go inside the building.]]
    -- Beginner: Show a GTA-style notification/help prompt.
    localValue2(workingValue15)
  end
  localValue2 = TriggerServerEvent
  workingValue15 = "bf3f551598"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bf3f551598".
  localValue2(workingValue15)
end

-- === HELPER FUNCTION (decompiler name: workingValue14; parameters: localValue1) ===
function workingValue14(localValue1)
  local localValue2, workingValue15
  localValue2 = DoesEntityExist
  workingValue15 = localValue1.jobInfo
  workingValue15 = workingValue15.vehicle
  localValue2 = localValue2(workingValue15)
  if localValue2 then
    localValue2 = localValue1.jobInfo
    localValue2 = localValue2.locationId
    localValue2 = nil ~= localValue2
  end
  return localValue2
end

-- === HELPER FUNCTION (decompiler name: workingValue16; parameters: localValue1) ===
function workingValue16(localValue1)
  local localValue2, workingValue15, workingValue17, text11, text13, number8
  localValue2 = localValue1.jobMetadata
  localValue2 = localValue2.locations
  workingValue15 = localValue1.jobInfo
  workingValue15 = workingValue15.locationId
  localValue2 = localValue2[workingValue15]
  workingValue15 = AddBlipForEntity
  workingValue17 = localValue1.jobInfo
  workingValue17 = workingValue17.vehicle
  -- Beginner: result below is blipHandle.
  workingValue15 = workingValue15(workingValue17)
  workingValue17 = SetBlipSprite
  text11 = workingValue15
  text13 = 326
  workingValue17(text11, text13)
  workingValue17 = SetBlipColour
  text11 = workingValue15
  text13 = 3
  workingValue17(text11, text13)
  workingValue17 = localValue1.jobInfo
  workingValue17.vehicleBlip = workingValue15
  workingValue17 = AddBlipForCoord
  text11 = localValue2.position
  text11 = text11.x
  text13 = localValue2.position
  text13 = text13.y
  number8 = localValue2.position
  number8 = number8.z
  -- Beginner: result below is blipHandle.
  workingValue17 = workingValue17(text11, text13, number8)
  text11 = SetBlipColour
  text13 = workingValue17
  number8 = 5
  text11(text13, number8)
  text11 = SetBlipRoute
  text13 = workingValue17
  number8 = true
  text11(text13, number8)
  text11 = localValue1.jobInfo
  text11.routeBlip = workingValue17
  text11 = TriggerServerEvent
  text13 = "bf3f551598"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bf3f551598".
  text11(text13)
end

-- === HELPER FUNCTION (decompiler name: workingValue18; parameters: localValue1) ===
function workingValue18(localValue1)
  local localValue2, workingValue15, workingValue17, text11, text13, number8, text14
  localValue2 = localValue1.jobMetadata
  localValue2 = localValue2.locations
  workingValue15 = localValue1.jobInfo
  workingValue15 = workingValue15.locationId
  localValue2 = localValue2[workingValue15]
  workingValue15 = CMG
  workingValue15 = workingValue15.getPlayerVehicle
  workingValue15, workingValue17 = workingValue15()
  text11 = DoesEntityExist
  text13 = localValue1.jobInfo
  text13 = text13.vehicle
  text11 = text11(text13)
  if not text11 then
    text11 = localValue1.jobInfo
    text11 = text11.failed
    if not text11 then
      text11 = TriggerServerEvent
      text13 = "15ea9471a1"
      text11(text13)
      text11 = localValue1.jobInfo
      text11.failed = true
    end
    text11 = notify
    text13 = "~r~Delivery failed, you lost the delivery vehicle."
    -- Beginner: Show a notification to the player.
    text11(text13)
    text11 = false
    return text11
  else
    text11 = localValue1.jobInfo
    text11 = text11.vehicle
    if workingValue15 ~= text11 then
      text11 = drawNativeText
      text13 = "Enter the ~b~delivery vehicle~w~"
      -- Beginner: Draw GTA-style text on screen.
      text11(text13)
      text11 = false
      return text11
    elseif not workingValue17 then
      text11 = drawNativeText
      text13 = "Enter the driver seat of the ~b~delivery vehicle~w~"
      text11(text13)
      text11 = false
      return text11
    end
  end
  text11 = drawNativeText
  text13 = "Drive to the ~y~"
  number8 = localValue2.name
  text14 = "~w~"
  text13 = text13 .. number8 .. text14
  -- Beginner: Draw GTA-style text on screen.
  text11(text13)
  text11 = GetEntityCoords
  text13 = workingValue15
  number8 = true
  -- Beginner: result below is entityCoords.
  text11 = text11(text13, number8)
  text13 = localValue2.position
  text11 = text11 - text13
  text11 = #text11
  text11 = text11 < 15.0
  return text11
end

-- === HELPER FUNCTION (decompiler name: workingValue19; parameters: localValue1) ===
function workingValue19(localValue1)
  local localValue2, workingValue15
  localValue2 = RemoveBlip
  workingValue15 = localValue1.jobInfo
  workingValue15 = workingValue15.vehicleBlip
  localValue2(workingValue15)
  localValue2 = localValue1.jobInfo
  localValue2.vehicleBlip = nil
  localValue2 = RemoveBlip
  workingValue15 = localValue1.jobInfo
  workingValue15 = workingValue15.routeBlip
  localValue2(workingValue15)
  localValue2 = localValue1.jobInfo
  localValue2.routeBlip = nil
end

-- === HELPER FUNCTION (decompiler name: workingValue21; parameters: localValue1) ===
function workingValue21(localValue1)
  local localValue2, workingValue15, workingValue17, text11, text13, number8, text14, number9, tableHelper, iterator, coords, number2, stateFlag2, number3, number4, stateFlag3, stateFlag4, stateFlag5, workingValue10, workingValue13, number5, number6, number7
  localValue2 = localValue1.jobMetadata
  localValue2 = localValue2.locations
  workingValue15 = localValue1.jobInfo
  workingValue15 = workingValue15.locationId
  localValue2 = localValue2[workingValue15]
  workingValue15 = localValue1.jobInfo
  workingValue17 = tCMG
  workingValue17 = workingValue17.addMarker
  text11 = localValue2.position
  text11 = text11.x
  text13 = localValue2.position
  text13 = text13.y
  number8 = localValue2.position
  number8 = number8.z
  text14 = 1.0
  number9 = 1.0
  tableHelper = 1.0
  iterator = 255
  coords = 255
  number2 = 0
  stateFlag2 = 150
  number3 = 25.0
  number4 = 1
  stateFlag3 = false
  stateFlag4 = false
  stateFlag5 = false
  workingValue10 = nil
  workingValue13 = nil
  number5 = 0.0
  number6 = 0.0
  number7 = 0.0
  workingValue17 = workingValue17(text11, text13, number8, text14, number9, tableHelper, iterator, coords, number2, stateFlag2, number3, number4, stateFlag3, stateFlag4, stateFlag5, workingValue10, workingValue13, number5, number6, number7)
  workingValue15.marker = workingValue17
  workingValue15 = localValue1.jobInfo
  workingValue17 = tCMG
  workingValue17 = workingValue17.addBlip
  text11 = localValue2.position
  text11 = text11.x
  text13 = localValue2.position
  text13 = text13.y
  number8 = localValue2.position
  number8 = number8.z
  text14 = 1
  number9 = 5
  tableHelper = nil
  iterator = 0.75
  coords = false
  workingValue17 = workingValue17(text11, text13, number8, text14, number9, tableHelper, iterator, coords)
  workingValue15.blip = workingValue17
  workingValue15 = localValue1.jobInfo
  workingValue15.hasFinishedLastRequest = false
  workingValue15 = localValue1.jobInfo
  workingValue15.remainingItemCount = -1
  workingValue15 = TriggerServerEvent
  workingValue17 = "bf3f551598"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bf3f551598".
  workingValue15(workingValue17)
end

-- === HELPER FUNCTION (decompiler name: workingValue23; parameters: localValue1) ===
function workingValue23(localValue1)
  local localValue2, workingValue15, workingValue17, text11, text13, number8, text14
  localValue2 = localValue1.jobMetadata
  localValue2 = localValue2.locations
  workingValue15 = localValue1.jobInfo
  workingValue15 = workingValue15.locationId
  localValue2 = localValue2[workingValue15]
  workingValue15 = CMG
  workingValue15 = workingValue15.getPlayerCoords
  -- Beginner: result below is playerCoords.
  workingValue15 = workingValue15()
  workingValue17 = localValue2.position
  workingValue15 = workingValue15 - workingValue17
  workingValue15 = #workingValue15
  if workingValue15 < 2.0 then
    workingValue17 = drawNativeNotification
    text11 = "Press ~INPUT_CONTEXT~ to retrive delivery items"
    -- Beginner: Show a GTA-style notification/help prompt.
    workingValue17(text11)
    workingValue17 = IsControlJustPressed
    text11 = 0
    text13 = 51
    workingValue17 = workingValue17(text11, text13)
    if workingValue17 then
      workingValue17 = TriggerServerEvent
      text11 = "301a0dda6e"
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "301a0dda6e".
      workingValue17(text11)
    end
  else
    workingValue17 = 150.0
    if workingValue15 > workingValue17 then
      workingValue17 = localValue1.jobInfo
      workingValue17 = workingValue17.failed
      if not workingValue17 then
        workingValue17 = TriggerServerEvent
        text11 = "15ea9471a1"
        workingValue17(text11)
        workingValue17 = localValue1.jobInfo
        workingValue17.failed = true
      end
      return
    else
      workingValue17 = CMG
      workingValue17 = workingValue17.getPlayerVehicle
      -- Beginner: result below is currentVehicle.
      workingValue17 = workingValue17()
      if 0 == workingValue17 then
        workingValue17 = drawNativeText
        text11 = "Locate the ~y~delivery collection~w~ point"
        -- Beginner: Draw GTA-style text on screen.
        workingValue17(text11)
      else
        workingValue17 = drawNativeText
        text11 = "Exit the vehicle and locate the ~y~delivery collection~w~ point"
        workingValue17(text11)
      end
    end
  end
  workingValue17 = localValue1.jobInfo
  workingValue17 = workingValue17.remainingItemCount
  if workingValue17 >= 0 then
    workingValue17 = CMG
    workingValue17 = workingValue17.createTimerBars
    -- Beginner: result below is timerBars.
    workingValue17 = workingValue17()
    text11 = workingValue17.push
    text13 = "~y~ITEMS LEFT"
    number8 = tostring
    text14 = localValue1.jobInfo
    text14 = text14.remainingItemCount
    number8, text14 = number8(text14)
    text11(text13, number8, text14)
    text11 = workingValue17.draw
    text11()
  end
  workingValue17 = localValue1.jobInfo
  workingValue17 = workingValue17.hasFinishedLastRequest
  return workingValue17
end

-- === HELPER FUNCTION (decompiler name: workingValue24; parameters: localValue1) ===
function workingValue24(localValue1)
  local localValue2, workingValue15
  localValue2 = tCMG
  localValue2 = localValue2.removeMarker
  workingValue15 = localValue1.jobInfo
  workingValue15 = workingValue15.marker
  localValue2(workingValue15)
  localValue2 = localValue1.jobInfo
  localValue2.marker = nil
  localValue2 = tCMG
  localValue2 = localValue2.removeBlip
  workingValue15 = localValue1.jobInfo
  workingValue15 = workingValue15.blip
  localValue2(workingValue15)
  localValue2 = localValue1.jobInfo
  localValue2.blip = nil
  localValue2 = localValue1.jobInfo
  localValue2.hasFinishedLastRequest = nil
end

-- === HELPER FUNCTION (decompiler name: workingValue25; parameters: localValue1, localValue2) ===
function workingValue25(localValue1, localValue2)
  local workingValue15, workingValue17, text11, text13, number8, text14, number9, tableHelper, iterator, coords, number2, stateFlag2, number3, number4, stateFlag3
  workingValue15 = {}
  workingValue17 = pairs
  text11 = CMG
  text11 = text11.getAllVehicles
  text11, text13, number8, text14, number9, tableHelper, iterator, coords, number2, stateFlag2, number3, number4, stateFlag3 = text11()
  workingValue17, text11, text13, number8 = workingValue17(text11, text13, number8, text14, number9, tableHelper, iterator, coords, number2, stateFlag2, number3, number4, stateFlag3)
  for text14, number9 in workingValue17, text11, text13, number8 do
    tableHelper = table
    tableHelper = tableHelper.insert
    iterator = workingValue15
    coords = GetEntityCoords
    number2 = number9
    stateFlag2 = true
    coords, number2, stateFlag2, number3, number4, stateFlag3 = coords(number2, stateFlag2)
    tableHelper(iterator, coords, number2, stateFlag2, number3, number4, stateFlag3)
  end
  workingValue17 = pairs
  text11 = localValue1.jobMetadata
  text11 = text11.vehicleSpawns
  workingValue17, text11, text13, number8 = workingValue17(text11)
  for text14, number9 in workingValue17, text11, text13, number8 do
    tableHelper = true
    iterator = pairs
    coords = workingValue15
    iterator, coords, number2, stateFlag2 = iterator(coords)
    for number3, number4 in iterator, coords, number2, stateFlag2 do
      stateFlag3 = number9.position
      stateFlag3 = stateFlag3.xyz
      stateFlag3 = number4 - stateFlag3
      stateFlag3 = #stateFlag3
      if stateFlag3 < 4.0 then
        tableHelper = false
        break
      end
    end
    if tableHelper or localValue2 then
      return text14
    end
  end
  workingValue17 = nil
  return workingValue17
end

-- === HELPER FUNCTION (decompiler name: workingValue; parameters: localValue1) ===
function workingValue(localValue1)
  local localValue2, workingValue15, workingValue17, text11, text13, number8, text14
  localValue2 = workingValue25
  workingValue15 = localValue1
  workingValue17 = true
  localValue2 = localValue2(workingValue15, workingValue17)
  workingValue15 = assert
  workingValue17 = localValue2
  text11 = "Spawn index is null"
  workingValue15(workingValue17, text11)
  workingValue15 = localValue1.jobMetadata
  workingValue15 = workingValue15.vehicleSpawns
  workingValue15 = workingValue15[localValue2]
  workingValue17 = localValue1.jobInfo
  workingValue17.spawnInfo = workingValue15
  workingValue17 = AddBlipForEntity
  text11 = localValue1.jobInfo
  text11 = text11.vehicle
  -- Beginner: result below is blipHandle.
  workingValue17 = workingValue17(text11)
  text11 = SetBlipSprite
  text13 = workingValue17
  number8 = 326
  text11(text13, number8)
  text11 = SetBlipColour
  text13 = workingValue17
  number8 = 3
  text11(text13, number8)
  text11 = localValue1.jobInfo
  text11.vehicleBlip = workingValue17
  text11 = AddBlipForCoord
  text13 = workingValue15.position
  text13 = text13.x
  number8 = workingValue15.position
  number8 = number8.y
  text14 = workingValue15.position
  text14 = text14.z
  -- Beginner: result below is blipHandle.
  text11 = text11(text13, number8, text14)
  text13 = SetBlipColour
  number8 = text11
  text14 = 5
  text13(number8, text14)
  text13 = SetBlipRoute
  number8 = text11
  text14 = true
  text13(number8, text14)
  text13 = localValue1.jobInfo
  text13.routeBlip = text11
  text13 = TriggerServerEvent
  number8 = "bf3f551598"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bf3f551598".
  text13(number8)
end

-- === HELPER FUNCTION (decompiler name: workingValue2; parameters: localValue1) ===
function workingValue2(localValue1)
  local localValue2, workingValue15, workingValue17, text11, text13, number8, text14
  localValue2 = localValue1.jobInfo
  localValue2 = localValue2.spawnInfo
  workingValue15 = CMG
  workingValue15 = workingValue15.getPlayerVehicle
  workingValue15, workingValue17 = workingValue15()
  text11 = DoesEntityExist
  text13 = localValue1.jobInfo
  text13 = text13.vehicle
  text11 = text11(text13)
  if not text11 then
    text11 = localValue1.jobInfo
    text11 = text11.failed
    if not text11 then
      text11 = TriggerServerEvent
      text13 = "15ea9471a1"
      text11(text13)
      text11 = localValue1.jobInfo
      text11.failed = true
    end
    text11 = notify
    text13 = "~r~Delivery failed, you lost the delivery vehicle."
    -- Beginner: Show a notification to the player.
    text11(text13)
    return
  else
    text11 = localValue1.jobInfo
    text11 = text11.vehicle
    if workingValue15 ~= text11 then
      text11 = drawNativeText
      text13 = "Enter the ~b~delivery vehicle~w~"
      -- Beginner: Draw GTA-style text on screen.
      text11(text13)
      return
    elseif not workingValue17 then
      text11 = drawNativeText
      text13 = "Enter the driver seat of the ~b~delivery vehicle~w~"
      text11(text13)
      return
    end
  end
  text11 = drawNativeText
  text13 = "Drive to the ~y~"
  number8 = localValue1.name
  text14 = "~w~"
  text13 = text13 .. number8 .. text14
  -- Beginner: Draw GTA-style text on screen.
  text11(text13)
  text11 = GetEntityCoords
  text13 = workingValue15
  number8 = true
  -- Beginner: result below is entityCoords.
  text11 = text11(text13, number8)
  text13 = localValue2.position
  text13 = text13.xyz
  text11 = text11 - text13
  text11 = #text11
  text11 = text11 < 15.0
  return text11
end

-- === HELPER FUNCTION (decompiler name: workingValue3; parameters: localValue1) ===
function workingValue3(localValue1)
  local localValue2, workingValue15
  localValue2 = RemoveBlip
  workingValue15 = localValue1.jobInfo
  workingValue15 = workingValue15.vehicleBlip
  localValue2(workingValue15)
  localValue2 = localValue1.jobInfo
  localValue2.vehicleBlip = nil
  localValue2 = RemoveBlip
  workingValue15 = localValue1.jobInfo
  workingValue15 = workingValue15.routeBlip
  localValue2(workingValue15)
  localValue2 = localValue1.jobInfo
  localValue2.routeBlip = nil
end

-- === HELPER FUNCTION (decompiler name: workingValue4; parameters: localValue1) ===
function workingValue4(localValue1)
  local localValue2, workingValue15
  localValue2 = localValue1.jobInfo
  workingValue15 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  workingValue15 = workingValue15()
  localValue2.placeStartTime = workingValue15
  localValue2 = TriggerServerEvent
  workingValue15 = "bf3f551598"
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bf3f551598".
  localValue2(workingValue15)
end

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1) ===
function workingValue6(localValue1)
  local localValue2, workingValue15, workingValue17, text11, text13, number8, text14
  localValue2 = drawNativeText
  workingValue15 = "Empty the stock from your ~b~vehicle~w~ into the business storage"
  -- Beginner: Draw GTA-style text on screen.
  localValue2(workingValue15)
  localValue2 = GetGameTimer
  -- Beginner: result below is gameTimeMs.
  localValue2 = localValue2()
  workingValue15 = localValue1.jobInfo
  workingValue15 = workingValue15.placeStartTime
  localValue2 = localValue2 - workingValue15
  workingValue15 = math
  workingValue15 = workingValue15.floor
  workingValue17 = number
  workingValue17 = workingValue17 - localValue2
  workingValue17 = workingValue17 / 1000
  workingValue15 = workingValue15(workingValue17)
  if workingValue15 > 0 then
    workingValue17 = CMG
    workingValue17 = workingValue17.createTimerBars
    -- Beginner: result below is timerBars.
    workingValue17 = workingValue17()
    text11 = workingValue17.push
    text13 = "~y~NEXT JOB TIME"
    number8 = tostring
    text14 = workingValue15
    number8, text14 = number8(text14)
    text11(text13, number8, text14)
    text11 = workingValue17.draw
    text11()
  end
  workingValue17 = number
  workingValue17 = localValue2 > workingValue17
  return workingValue17
end

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue1) ===
function workingValue8(localValue1)
  local localValue2
  localValue2 = localValue1.jobInfo
  localValue2.placeStartTime = nil
end
rageUiOperation = RMenu
rageUiOperation = rageUiOperation.Add
text3 = "business"
text4 = "delivery_locations"
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateMenu
text6 = ""
cmgOperation2 = "~b~CMG Business"
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuWidth
rageUiOperation4 = rageUiOperation4()
rageUiOperation5 = CMG
rageUiOperation5 = rageUiOperation5.getRageUIMenuHeight
rageUiOperation5 = rageUiOperation5()
text7 = "cmg_marketui"
text8 = "cmg_marketui"
rageUiOperation2, text6, cmgOperation2, rageUiOperation4, rageUiOperation5, text7, text8 = rageUiOperation2(text6, cmgOperation2, rageUiOperation4, rageUiOperation5, text7, text8)
rageUiOperation(text3, text4, rageUiOperation2, text6, cmgOperation2, rageUiOperation4, rageUiOperation5, text7, text8)
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateWhile
text3 = 1.0
text4 = RMenu
rageUiOperation2 = text4
text4 = text4.Get
text6 = "business"
cmgOperation2 = "delivery_locations"
-- Beginner: result below is menu.
text4 = text4(rageUiOperation2, text6, cmgOperation2)
rageUiOperation2 = nil

-- === HELPER FUNCTION (decompiler name: text6; parameters: none) ===
function text6()
  local localValue1, localValue2, workingValue15, workingValue17, text11, text13
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  workingValue15 = localValue2
  localValue2 = localValue2.Get
  workingValue17 = "business"
  text11 = "delivery_locations"
  -- Beginner: result below is menu.
  localValue2 = localValue2(workingValue15, workingValue17, text11)
  workingValue15 = true
  workingValue17 = false
  text11 = true

  -- === HELPER FUNCTION (decompiler name: text13; parameters: none) ===
  function text13()
    local cmgOperation, rageUiOperation3, text9, text10, dataCollection2, stateFlag6, workingValue22, text15, rageUiOperation6, text16, text, dataCollection, stateFlag, workingValue5, workingValue7, workingValue9, text2, stringHelper, text5, workingValue11
    cmgOperation = CMG
    cmgOperation = cmgOperation.getUserBusinessData
    rageUiOperation3 = "delivery"
    cmgOperation = cmgOperation(rageUiOperation3)
    if not cmgOperation then
      rageUiOperation3 = RageUI
      rageUiOperation3 = rageUiOperation3.CloseAll
      rageUiOperation3()
      return
    end
    rageUiOperation3 = RageUI
    rageUiOperation3 = rageUiOperation3.ButtonWithStyle
    text9 = "~y~View Orders"
    text10 = ""
    dataCollection2 = {}
    dataCollection2.RightLabel = "\226\134\146\226\134\146\226\134\146"
    stateFlag6 = true

    -- === HELPER FUNCTION (decompiler name: workingValue22; parameters: none) ===
    function workingValue22()
      local localValue12, localValue22
    end
    text15 = RMenu
    rageUiOperation6 = text15
    text15 = text15.Get
    text16 = "business"
    text = "delivery_vieworders"
    text15, rageUiOperation6, text16, text, dataCollection, stateFlag, workingValue5, workingValue7, workingValue9, text2, stringHelper, text5, workingValue11 = text15(rageUiOperation6, text16, text)
    -- Beginner: Draw a selectable RageUI menu button.
    rageUiOperation3(text9, text10, dataCollection2, stateFlag6, workingValue22, text15, rageUiOperation6, text16, text, dataCollection, stateFlag, workingValue5, workingValue7, workingValue9, text2, stringHelper, text5, workingValue11)
    rageUiOperation3 = pairs
    text9 = cmgOperation.jobMetadata
    text9 = text9.locations
    rageUiOperation3, text9, text10, dataCollection2 = rageUiOperation3(text9)
    for stateFlag6, workingValue22 in rageUiOperation3, text9, text10, dataCollection2 do
      text15 = ""
      rageUiOperation6 = pairs
      text16 = workingValue22.itemsPerDelivery
      rageUiOperation6, text16, text, dataCollection = rageUiOperation6(text16)
      for stateFlag, workingValue5 in rageUiOperation6, text16, text, dataCollection do
        workingValue7 = cmgOperation.locationInfo
        workingValue7 = workingValue7.items
        workingValue9 = workingValue5.id
        workingValue7 = workingValue7[workingValue9]
        if workingValue7 then
          workingValue9 = text15
          text2 = "\n"
          stringHelper = tostring
          text5 = workingValue5.amount
          stringHelper = stringHelper(text5)
          text5 = "x "
          workingValue11 = workingValue7[1]
          workingValue9 = workingValue9 .. text2 .. stringHelper .. text5 .. workingValue11
          text15 = workingValue9
        end
      end
      rageUiOperation6 = RageUI
      rageUiOperation6 = rageUiOperation6.ButtonWithStyle
      text16 = workingValue22.name
      text = "Items gained from delivery:"
      dataCollection = text15
      text = text .. dataCollection
      dataCollection = {}
      dataCollection.RightLabel = "\226\134\146\226\134\146\226\134\146"
      stateFlag = true

      -- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue12, localValue22, localValue3) ===
      function workingValue5(localValue12, localValue22, localValue3)
        local serverEventCall, text12, workingValue20
        if localValue3 then
          serverEventCall = TriggerServerEvent
          text12 = "fda3ea3d66"
          workingValue20 = stateFlag6
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "fda3ea3d66".
          serverEventCall(text12, workingValue20)
        end
      end
      -- Beginner: Draw a selectable RageUI menu button.
      rageUiOperation6(text16, text, dataCollection, stateFlag, workingValue5)
    end
  end
  localValue1(localValue2, workingValue15, workingValue17, text11, text13)
end
rageUiOperation(text3, text4, rageUiOperation2, text6)
rageUiOperation = RegisterNetEvent
text3 = "69b6b20fea"
-- Beginner: this function handles network event "69b6b20fea".

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1) ===
function text4(localValue1)
  local localValue2, workingValue15, workingValue17
  localValue2 = CMG
  localValue2 = localValue2.getUserBusinessData
  workingValue15 = "delivery"
  localValue2 = localValue2(workingValue15)
  if not localValue2 then
    return
  end
  workingValue15 = localValue2.jobInfo
  workingValue15 = workingValue15.hasFinishedLastRequest
  if nil == workingValue15 then
    return
  end
  workingValue15 = localValue2.jobInfo
  workingValue15.remainingItemCount = localValue1
  workingValue15 = localValue2.jobInfo
  workingValue17 = 0 == localValue1
  workingValue15.hasFinishedLastRequest = workingValue17
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "69b6b20fea".
rageUiOperation(text3, text4)
rageUiOperation = RegisterNetEvent
text3 = "95847a6f46"
-- Beginner: this function handles network event "95847a6f46".

-- === HELPER FUNCTION (decompiler name: text4; parameters: localValue1) ===
function text4(localValue1)
  local localValue2, workingValue15
  localValue2 = CMG
  localValue2 = localValue2.getUserBusinessData
  workingValue15 = "delivery"
  localValue2 = localValue2(workingValue15)
  if localValue2 then
    workingValue15 = localValue2.jobInfo
    workingValue15.locationId = localValue1
  end
end
rageUiOperation(text3, text4)
rageUiOperation = RegisterNetEvent
text3 = "f443811a93"
-- Beginner: this function handles network event "f443811a93".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, workingValue15, workingValue17, text11, text13, number8, text14, number9, tableHelper, iterator, coords
  localValue1 = CMG
  localValue1 = localValue1.getUserBusinessData
  localValue2 = "delivery"
  localValue1 = localValue1(localValue2)
  if not localValue1 then
    return
  end
  localValue2 = workingValue25
  workingValue15 = localValue1
  workingValue17 = false
  localValue2 = localValue2(workingValue15, workingValue17)
  if not localValue2 then
    workingValue15 = notify
    workingValue17 = "~r~Unable to find a suitable location to spawn the vehicle."
    -- Beginner: Show a notification to the player.
    workingValue15(workingValue17)
    workingValue15 = TriggerServerEvent
    workingValue17 = "15ea9471a1"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "15ea9471a1".
    workingValue15(workingValue17)
    return
  end
  workingValue15 = localValue1.jobMetadata
  workingValue15 = workingValue15.vehicleSpawns
  workingValue15 = workingValue15[localValue2]
  workingValue17 = CMG
  workingValue17 = workingValue17.loadModel
  text11 = workingValue15.vehicle
  -- Beginner: Request/load a GTA model before spawning or applying it.
  workingValue17(text11)
  workingValue17 = CMG
  workingValue17 = workingValue17.requestEntitySpawn
  text11 = "business_delivery_vehicle"
  text13 = localValue2
  workingValue17(text11, text13)
  workingValue17 = CMG
  workingValue17 = workingValue17.spawnVehicle
  text11 = workingValue15.vehicle
  text13 = workingValue15.position
  text13 = text13.x
  number8 = workingValue15.position
  number8 = number8.y
  text14 = workingValue15.position
  text14 = text14.z
  number9 = workingValue15.position
  number9 = number9.w
  tableHelper = false
  iterator = true
  coords = true
  workingValue17 = workingValue17(text11, text13, number8, text14, number9, tableHelper, iterator, coords)
  text11 = SetModelAsNoLongerNeeded
  text13 = workingValue15.vehicle
  text11(text13)
  text11 = SetVehicleDoorsLocked
  text13 = workingValue17
  number8 = 2
  text11(text13, number8)
  text11 = DecorSetInt
  text13 = workingValue17
  number8 = "ac76c9d452"
  text14 = CMG
  text14 = text14.getClientUserId
  -- Beginner: result below is userId.
  text14 = text14()
  if not text14 then
    text14 = 0
  end
  text11(text13, number8, text14)
  text11 = tonumber
  text13 = 1927688563
  text11 = text11(text13)
  if text11 then
    text13 = DecorSetInt
    number8 = workingValue17
    text14 = "0a6cf607ed"
    number9 = text11
    text13(number8, text14, number9)
  end
  while true do
    text13 = NetworkGetEntityIsNetworked
    number8 = workingValue17
    text13 = text13(number8)
    if text13 then
      text13 = NetworkGetNetworkIdFromEntity
      number8 = workingValue17
      text13 = text13(number8)
      if 0 ~= text13 then
        break
      end
    end
    text13 = Citizen
    text13 = text13.Wait
    number8 = 0
    text13(number8)
  end
  text13 = NetworkGetNetworkIdFromEntity
  number8 = workingValue17
  text13 = text13(number8)
  number8 = TriggerServerEvent
  text14 = "ea365e9b72"
  number9 = text13
  -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "ea365e9b72".
  number8(text14, number9)
  number8 = localValue1.jobInfo
  number8.vehicle = workingValue17
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "f443811a93".
rageUiOperation(text3, text4)
rageUiOperation = RegisterNetEvent
text3 = "7aa155f442"
-- Beginner: this function handles network event "7aa155f442".

-- === HELPER FUNCTION (decompiler name: text4; parameters: none) ===
function text4()
  local localValue1, localValue2, workingValue15, workingValue17, text11
  localValue1 = CMG
  localValue1 = localValue1.getUserBusinessData
  localValue2 = "delivery"
  localValue1 = localValue1(localValue2)
  if localValue1 then
    localValue1 = RageUI
    localValue1 = localValue1.Visible
    localValue2 = RMenu
    workingValue15 = localValue2
    localValue2 = localValue2.Get
    workingValue17 = "business"
    text11 = "delivery_locations"
    -- Beginner: result below is menu.
    localValue2 = localValue2(workingValue15, workingValue17, text11)
    workingValue15 = true
    localValue1(localValue2, workingValue15)
    localValue1 = TriggerServerEvent
    localValue2 = "bf3f551598"
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "bf3f551598".
    localValue1(localValue2)
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "7aa155f442".
rageUiOperation(text3, text4)
rageUiOperation = {}
text3 = {}
text3.init = workingValue12
text3.tick = workingValue14
text3.finish = nil
text3.next = "drive"
rageUiOperation.prep = text3
text3 = {}
text3.init = workingValue16
text3.tick = workingValue18
text3.finish = workingValue19
text3.next = "pickup"
rageUiOperation.drive = text3
text3 = {}
text3.init = workingValue21
text3.tick = workingValue23
text3.finish = workingValue24
text3.next = "return"
rageUiOperation.pickup = text3
text3 = {}
text3.init = workingValue
text3.tick = workingValue2
text3.finish = workingValue3
text3.next = "place"
rageUiOperation["return"] = text3
text3 = {}
text3.init = workingValue4
text3.tick = workingValue6
text3.finish = workingValue8
text3.next = "prep"
rageUiOperation.place = text3
text3 = CMG
text3 = text3.registerBusinessJob
text4 = "delivery"
rageUiOperation2 = nil
text6 = "prep"
cmgOperation2 = rageUiOperation
rageUiOperation4 = nil
text3(text4, rageUiOperation2, text6, cmgOperation2, rageUiOperation4)
text3 = Citizen
text3 = text3.Wait
text4 = 0
text3(text4)
text3 = CMG
text3 = text3.addGenericBusinessOrderView
text4 = "delivery"
rageUiOperation2 = "delivery_locations"
text3(text4, rageUiOperation2)
