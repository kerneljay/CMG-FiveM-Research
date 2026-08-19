--[[
    LEVEL 1 BEGINNER GUIDE — Stancer
    =====================================

    File: cmg/prod/client/vehicles/cl_stancer.lua
    Runs as: Client — runs on each player's FiveM client.
    Purpose: vehicle gameplay and vehicle systems, specifically the Stancer feature.

    FiveM words used in this project:
      * ped = a GTA character/entity (your player character is a ped).
      * entity = a ped, vehicle, or object that exists in the GTA world.
      * native = a GTA/FiveM function such as GetEntityCoords().
      * event = a named message that causes code to run.
      * client event = stays on this player; server event = crosses to the server.
      * NUI = the HTML/CSS/JavaScript interface shown over the game.
      * thread = code that can keep running over time; Wait() prevents it freezing the game.

    Quick map of this file (automatic static scan):
      * Named functions: 31
      * Background threads: 0
      * Always-running loops: 2
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
local cmgOperation, text5, text6, text8, rageUiOperation2, backgroundThread, text11, rageUiOperation3, rageUiOperation4, text13, text, dataCollection, number, number2, dataCollection2, number3, number4, workingValue3, number5, number6, number7, mathHelper, workingValue4, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, workingValue12, eventHandler, rageUiOperation, number8, workingValue13, workingValue14, text7, cmgOperation2, workingValue15
cmgOperation = CMG
cmgOperation = cmgOperation.loadModule
text5 = "cfg/cfg_lscustoms"
-- Beginner: result below is config.
cmgOperation = cmgOperation(text5)
text5 = RMenu
text5 = text5.Add
text6 = "stancer"
text8 = "mainmenu"
rageUiOperation2 = RageUI
rageUiOperation2 = rageUiOperation2.CreateMenu
backgroundThread = ""
text11 = "Stancer"
rageUiOperation3 = CMG
rageUiOperation3 = rageUiOperation3.getRageUIMenuWidth
rageUiOperation3 = rageUiOperation3()
rageUiOperation4 = CMG
rageUiOperation4 = rageUiOperation4.getRageUIMenuHeight
rageUiOperation4 = rageUiOperation4()
text13 = "cmg_lscustomsui"
text = "cmg_lscustomsui"
rageUiOperation2, backgroundThread, text11, rageUiOperation3, rageUiOperation4, text13, text, dataCollection, number, number2, dataCollection2, number3, number4, workingValue3, number5, number6, number7, mathHelper, workingValue4, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, workingValue12, eventHandler, rageUiOperation, number8, workingValue13, workingValue14, text7, cmgOperation2, workingValue15 = rageUiOperation2(backgroundThread, text11, rageUiOperation3, rageUiOperation4, text13, text)
text5(text6, text8, rageUiOperation2, backgroundThread, text11, rageUiOperation3, rageUiOperation4, text13, text, dataCollection, number, number2, dataCollection2, number3, number4, workingValue3, number5, number6, number7, mathHelper, workingValue4, workingValue5, workingValue6, workingValue7, workingValue8, workingValue9, workingValue10, workingValue11, workingValue12, eventHandler, rageUiOperation, number8, workingValue13, workingValue14, text7, cmgOperation2, workingValue15)
text5 = {}

-- === HELPER FUNCTION (decompiler name: text6; parameters: localValue1, localValue2) ===
function text6(localValue1, localValue2)
  local localValue3
  localValue3 = localValue1 % 2
  if 0 == localValue3 then
    localValue3 = -localValue2
    return localValue3
  else
    return localValue2
  end
end

-- === HELPER FUNCTION (decompiler name: text8; parameters: localValue1) ===
function text8(localValue1)
  local localValue2, localValue3, localValue4, localValue5, workingValue16, workingValue17, workingValue19, workingValue21, workingValue23, workingValue
  localValue2 = localValue1.frontWidth
  if localValue2 then
    localValue2 = 0
    localValue3 = localValue1.frontWheelCount
    localValue3 = localValue3 - 1
    localValue4 = 1
    for localValue5 = localValue2, localValue3, localValue4 do
      workingValue16 = SetVehicleWheelXOffset
      workingValue17 = localValue1.vehicle
      workingValue19 = localValue5
      workingValue21 = text6
      workingValue23 = localValue5
      workingValue = localValue1.frontWidth
      workingValue21, workingValue23, workingValue = workingValue21(workingValue23, workingValue)
      workingValue16(workingValue17, workingValue19, workingValue21, workingValue23, workingValue)
    end
  end
  localValue2 = localValue1.rearWidth
  if localValue2 then
    localValue2 = localValue1.frontWheelCount
    localValue3 = localValue1.wheelCount
    localValue3 = localValue3 - 1
    localValue4 = 1
    for localValue5 = localValue2, localValue3, localValue4 do
      workingValue16 = SetVehicleWheelXOffset
      workingValue17 = localValue1.vehicle
      workingValue19 = localValue5
      workingValue21 = text6
      workingValue23 = localValue5
      workingValue = localValue1.rearWidth
      workingValue21, workingValue23, workingValue = workingValue21(workingValue23, workingValue)
      workingValue16(workingValue17, workingValue19, workingValue21, workingValue23, workingValue)
    end
  end
  localValue2 = localValue1.frontCamber
  if localValue2 then
    localValue2 = 0
    localValue3 = localValue1.frontWheelCount
    localValue3 = localValue3 - 1
    localValue4 = 1
    for localValue5 = localValue2, localValue3, localValue4 do
      workingValue16 = SetVehicleWheelYRotation
      workingValue17 = localValue1.vehicle
      workingValue19 = localValue5
      workingValue21 = text6
      workingValue23 = localValue5
      workingValue = localValue1.frontCamber
      workingValue21, workingValue23, workingValue = workingValue21(workingValue23, workingValue)
      workingValue16(workingValue17, workingValue19, workingValue21, workingValue23, workingValue)
    end
  end
  localValue2 = localValue1.rearCamber
  if localValue2 then
    localValue2 = localValue1.frontWheelCount
    localValue3 = localValue1.wheelCount
    localValue3 = localValue3 - 1
    localValue4 = 1
    for localValue5 = localValue2, localValue3, localValue4 do
      workingValue16 = SetVehicleWheelYRotation
      workingValue17 = localValue1.vehicle
      workingValue19 = localValue5
      workingValue21 = text6
      workingValue23 = localValue5
      workingValue = localValue1.rearCamber
      workingValue21, workingValue23, workingValue = workingValue21(workingValue23, workingValue)
      workingValue16(workingValue17, workingValue19, workingValue21, workingValue23, workingValue)
    end
  end
end

-- === HELPER FUNCTION (decompiler name: rageUiOperation2; parameters: localValue1) ===
function rageUiOperation2(localValue1)
  local localValue2, localValue3, localValue4
  localValue2 = localValue1 / 2
  localValue3 = localValue2 % 2
  if 0 ~= localValue3 then
    localValue2 = localValue2 - 1
  end
  localValue3 = math
  localValue3 = localValue3.floor
  localValue4 = localValue2
  return localValue3(localValue4)
end
backgroundThread = AddStateBagChangeHandler
text11 = "stancer"
rageUiOperation3 = nil

-- === HELPER FUNCTION (decompiler name: rageUiOperation4; parameters: localValue1, localValue2, localValue3) ===
function rageUiOperation4(localValue1, localValue2, localValue3)
  local localValue4, localValue5, workingValue16, workingValue17, workingValue19, workingValue21
  localValue4 = tonumber
  localValue5 = stringsplit
  workingValue16 = localValue1
  workingValue17 = ":"
  localValue5 = localValue5(workingValue16, workingValue17)
  localValue5 = localValue5[2]
  localValue4 = localValue4(localValue5)
  localValue5 = 0
  while true do
    if localValue5 > 25 then
      return
    elseif localValue4 then
      workingValue16 = NetworkDoesEntityExistWithNetworkId
      workingValue17 = localValue4
      workingValue16 = workingValue16(workingValue17)
      if workingValue16 then
        workingValue16 = NetworkGetEntityFromNetworkId
        workingValue17 = localValue4
        workingValue16 = workingValue16(workingValue17)
        if 0 ~= workingValue16 then
          workingValue17 = GetVehicleNumberOfWheels
          workingValue19 = workingValue16
          workingValue17 = workingValue17(workingValue19)
          if workingValue17 < 32 then
            localValue3.vehicle = workingValue16
            localValue3.wheelCount = workingValue17
            workingValue19 = rageUiOperation2
            workingValue21 = localValue3.wheelCount
            workingValue19 = workingValue19(workingValue21)
            localValue3.frontWheelCount = workingValue19
            workingValue19 = text5
            workingValue19[workingValue16] = localValue3
            break
          end
        end
      end
    end
    localValue5 = localValue5 + 1
    workingValue16 = Citizen
    workingValue16 = workingValue16.Wait
    workingValue17 = 200
    workingValue16(workingValue17)
  end
end
backgroundThread(text11, rageUiOperation3, rageUiOperation4)
backgroundThread = Citizen
backgroundThread = backgroundThread.CreateThread

-- === HELPER FUNCTION (decompiler name: text11; parameters: none) ===
function text11()
  local localValue1, localValue2, localValue3, localValue4, localValue5, workingValue16, workingValue17, workingValue19, workingValue21
  while true do
    localValue1 = false
    localValue2 = pairs
    localValue3 = text5
    localValue2, localValue3, localValue4, localValue5 = localValue2(localValue3)
    for workingValue16, workingValue17 in localValue2, localValue3, localValue4, localValue5 do
      workingValue19 = DoesEntityExist
      workingValue21 = workingValue16
      workingValue19 = workingValue19(workingValue21)
      if workingValue19 then
        workingValue19 = text8
        workingValue21 = workingValue17
        workingValue19(workingValue21)
      else
        workingValue19 = text5
        workingValue19[workingValue16] = nil
      end
      localValue1 = true
    end
    localValue2 = Citizen
    localValue2 = localValue2.Wait
    if localValue1 then
      localValue3 = 0
      if localValue3 then
        goto continueAtStep29
      end
    end
    localValue3 = 1000
    ::continueAtStep29::
    localValue2(localValue3)
  end
end
-- Beginner: Start a separate FiveM thread so this code can run independently.
backgroundThread(text11)
backgroundThread = {}
text11 = 0.0
rageUiOperation3 = 0
rageUiOperation4 = {}
text13 = 0.0
text = 0
dataCollection = {}
number = 0.0
number2 = 0
dataCollection2 = {}
number3 = 0.0
number4 = 0
workingValue3 = nil
number5 = 0
number6 = 0
number7 = 10
mathHelper = math
mathHelper = mathHelper.ceil
workingValue4 = number7 * 2
workingValue4 = workingValue4 + 1
workingValue4 = workingValue4 / 2
mathHelper = mathHelper(workingValue4)
workingValue4 = nil

-- === HELPER FUNCTION (decompiler name: workingValue5; parameters: localValue1, localValue2) ===
function workingValue5(localValue1, localValue2)
  local localValue3, localValue4, localValue5, workingValue16, workingValue17, workingValue19, workingValue21, workingValue23
  if localValue1 then
    localValue3 = localValue1[localValue2]
    if localValue3 then
      localValue3 = pairs
      localValue4 = localValue1[localValue2]
      localValue3, localValue4, localValue5, workingValue16 = localValue3(localValue4)
      for workingValue17, workingValue19 in localValue3, localValue4, localValue5, workingValue16 do
        if workingValue19 then
          workingValue21 = tonumber
          workingValue23 = workingValue17
          workingValue21, workingValue23 = workingValue21(workingValue23)
          return workingValue21, workingValue23
        end
      end
    end
  end
  localValue3 = mathHelper
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: workingValue6; parameters: localValue1, localValue2) ===
function workingValue6(localValue1, localValue2)
  local localValue3, localValue4, localValue5, workingValue16, workingValue17, workingValue19, workingValue21, workingValue23, workingValue, text2
  localValue3 = {}
  localValue4 = -localValue1
  localValue5 = localValue1
  workingValue16 = 1
  for workingValue17 = localValue4, localValue5, workingValue16 do
    workingValue19 = table
    workingValue19 = workingValue19.insert
    workingValue21 = localValue3
    workingValue23 = string
    workingValue23 = workingValue23.format
    workingValue = "%.3f"
    text2 = localValue2 * workingValue17
    workingValue23, workingValue, text2 = workingValue23(workingValue, text2)
    workingValue19(workingValue21, workingValue23, workingValue, text2)
  end
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: workingValue7; parameters: localValue1) ===
function workingValue7(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = math
  localValue2 = localValue2.abs
  localValue3 = GetVehicleWheelXOffset
  localValue4 = localValue1
  localValue5 = 0
  localValue3, localValue4, localValue5 = localValue3(localValue4, localValue5)
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  text11 = localValue2
  localValue2 = cmgOperation.stancerLimits
  localValue2 = localValue2.frontWidth
  localValue3 = number7
  localValue2 = localValue2 / localValue3
  localValue3 = workingValue6
  localValue4 = number7
  localValue5 = localValue2
  localValue3 = localValue3(localValue4, localValue5)
  backgroundThread = localValue3
end

-- === HELPER FUNCTION (decompiler name: workingValue8; parameters: localValue1, localValue2) ===
function workingValue8(localValue1, localValue2)
  local localValue3, localValue4, localValue5, workingValue16
  localValue3 = math
  localValue3 = localValue3.abs
  localValue4 = GetVehicleWheelXOffset
  localValue5 = localValue1
  workingValue16 = localValue2
  localValue4, localValue5, workingValue16 = localValue4(localValue5, workingValue16)
  localValue3 = localValue3(localValue4, localValue5, workingValue16)
  text13 = localValue3
  localValue3 = cmgOperation.stancerLimits
  localValue3 = localValue3.rearWidth
  localValue4 = number7
  localValue3 = localValue3 / localValue4
  localValue4 = workingValue6
  localValue5 = number7
  workingValue16 = localValue3
  localValue4 = localValue4(localValue5, workingValue16)
  rageUiOperation4 = localValue4
end

-- === HELPER FUNCTION (decompiler name: workingValue9; parameters: localValue1) ===
function workingValue9(localValue1)
  local localValue2, localValue3, localValue4, localValue5
  localValue2 = math
  localValue2 = localValue2.abs
  localValue3 = GetVehicleWheelYRotation
  localValue4 = localValue1
  localValue5 = 0
  localValue3, localValue4, localValue5 = localValue3(localValue4, localValue5)
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  number = localValue2
  localValue2 = cmgOperation.stancerLimits
  localValue2 = localValue2.frontCamber
  localValue3 = number7
  localValue2 = localValue2 / localValue3
  localValue3 = workingValue6
  localValue4 = number7
  localValue5 = localValue2
  localValue3 = localValue3(localValue4, localValue5)
  dataCollection = localValue3
end

-- === HELPER FUNCTION (decompiler name: workingValue10; parameters: localValue1, localValue2) ===
function workingValue10(localValue1, localValue2)
  local localValue3, localValue4, localValue5, workingValue16
  localValue3 = math
  localValue3 = localValue3.abs
  localValue4 = GetVehicleWheelYRotation
  localValue5 = localValue1
  workingValue16 = localValue2
  localValue4, localValue5, workingValue16 = localValue4(localValue5, workingValue16)
  localValue3 = localValue3(localValue4, localValue5, workingValue16)
  number3 = localValue3
  localValue3 = cmgOperation.stancerLimits
  localValue3 = localValue3.rearCamber
  localValue4 = number7
  localValue3 = localValue3 / localValue4
  localValue4 = workingValue6
  localValue5 = number7
  workingValue16 = localValue3
  localValue4 = localValue4(localValue5, workingValue16)
  dataCollection2 = localValue4
end

-- === HELPER FUNCTION (decompiler name: workingValue11; parameters: none) ===
function workingValue11()
  local localValue1, localValue2, localValue3, localValue4, localValue5, workingValue16, workingValue17, workingValue19, workingValue21
  localValue1 = GetEntityModel
  localValue2 = number5
  -- Beginner: result below is modelHash.
  localValue1 = localValue1(localValue2)
  localValue2 = CMG
  localValue2 = localValue2.loadModel
  localValue3 = localValue1
  -- Beginner: Request/load a GTA model before spawning or applying it.
  localValue2(localValue3)
  localValue2 = CreateVehicle
  localValue3 = localValue1
  localValue4 = 0.0
  localValue5 = 0.0
  workingValue16 = 0.0
  workingValue17 = 0.0
  workingValue19 = false
  workingValue21 = false
  -- Beginner: result below is vehicleEntity.
  localValue2 = localValue2(localValue3, localValue4, localValue5, workingValue16, workingValue17, workingValue19, workingValue21)
  localValue3 = FreezeEntityPosition
  localValue4 = localValue2
  localValue5 = true
  -- Beginner: Freeze or unfreeze an entity in place.
  localValue3(localValue4, localValue5)
  localValue3 = GetVehicleNumberOfWheels
  localValue4 = localValue2
  localValue3 = localValue3(localValue4)
  if localValue3 > 32 then
    localValue4 = print
    localValue5 = "[LS Customs] Undefined result from GetVehicleNumberOfWheels in generateStancerLists"
    localValue4(localValue5)
    return
  end
  localValue4 = workingValue7
  localValue5 = localValue2
  localValue4(localValue5)
  localValue4 = workingValue8
  localValue5 = localValue2
  workingValue16 = localValue3 - 1
  localValue4(localValue5, workingValue16)
  localValue4 = workingValue9
  localValue5 = localValue2
  localValue4(localValue5)
  localValue4 = workingValue10
  localValue5 = localValue2
  workingValue16 = localValue3 - 1
  localValue4(localValue5, workingValue16)
  localValue4 = DeleteEntity
  localValue5 = localValue2
  -- Beginner: Delete a GTA entity.
  localValue4(localValue5)
  localValue4 = SetModelAsNoLongerNeeded
  localValue5 = localValue1
  localValue4(localValue5)
end

-- === HELPER FUNCTION (decompiler name: workingValue12; parameters: none) ===
function workingValue12()
  local localValue1, localValue2, localValue3, localValue4, localValue5, workingValue16, workingValue17
  localValue1 = GetVehicleNumberOfWheels
  localValue2 = number5
  localValue1 = localValue1(localValue2)
  if localValue1 > 32 then
    localValue2 = print
    localValue3 = "[LS Customs] Undefined result from GetVehicleNumberOfWheels in previewWheelCamber"
    localValue2(localValue3)
    return
  end
  localValue2 = text8
  localValue3 = {}
  localValue4 = number5
  localValue3.vehicle = localValue4
  localValue3.wheelCount = localValue1
  localValue4 = rageUiOperation2
  localValue5 = localValue1
  localValue4 = localValue4(localValue5)
  localValue3.frontWheelCount = localValue4
  localValue4 = text11
  localValue5 = tonumber
  workingValue17 = rageUiOperation3
  workingValue16 = backgroundThread
  workingValue16 = workingValue16[workingValue17]
  localValue5 = localValue5(workingValue16)
  localValue4 = localValue4 + localValue5
  localValue3.frontWidth = localValue4
  localValue4 = text13
  localValue5 = tonumber
  workingValue17 = text
  workingValue16 = rageUiOperation4
  workingValue16 = workingValue16[workingValue17]
  localValue5 = localValue5(workingValue16)
  localValue4 = localValue4 + localValue5
  localValue3.rearWidth = localValue4
  localValue4 = number
  localValue5 = tonumber
  workingValue17 = number2
  workingValue16 = dataCollection
  workingValue16 = workingValue16[workingValue17]
  localValue5 = localValue5(workingValue16)
  localValue4 = localValue4 + localValue5
  localValue3.frontCamber = localValue4
  localValue4 = number3
  localValue5 = tonumber
  workingValue17 = number4
  workingValue16 = dataCollection2
  workingValue16 = workingValue16[workingValue17]
  localValue5 = localValue5(workingValue16)
  localValue4 = localValue4 + localValue5
  localValue3.rearCamber = localValue4
  localValue2(localValue3)
end
eventHandler = AddEventHandler
rageUiOperation = "e3500806d7"
-- Beginner: this function runs when client event "e3500806d7" fires.

-- === HELPER FUNCTION (decompiler name: number8; parameters: localValue1, localValue2, localValue3, localValue4, localValue5) ===
function number8(localValue1, localValue2, localValue3, localValue4, localValue5)
  local workingValue16, workingValue17, workingValue19, workingValue21
  if "stancer" ~= localValue1 then
    return
  end
  number5 = localValue2
  number6 = localValue3
  workingValue3 = localValue4
  workingValue4 = localValue5
  workingValue16 = workingValue3.stancer
  workingValue17 = workingValue5
  workingValue19 = workingValue16
  workingValue21 = "frontWidth"
  workingValue17 = workingValue17(workingValue19, workingValue21)
  rageUiOperation3 = workingValue17
  workingValue17 = workingValue5
  workingValue19 = workingValue16
  workingValue21 = "rearWidth"
  workingValue17 = workingValue17(workingValue19, workingValue21)
  text = workingValue17
  workingValue17 = workingValue5
  workingValue19 = workingValue16
  workingValue21 = "frontCamber"
  workingValue17 = workingValue17(workingValue19, workingValue21)
  number2 = workingValue17
  workingValue17 = workingValue5
  workingValue19 = workingValue16
  workingValue21 = "rearCamber"
  workingValue17 = workingValue17(workingValue19, workingValue21)
  number4 = workingValue17
  workingValue17 = workingValue11
  workingValue17()
end
-- Beginner: Register a client-side event handler. Event/command: "e3500806d7".
eventHandler(rageUiOperation, number8)
eventHandler = RegisterNetEvent
rageUiOperation = "6b3c48e86c"
-- Beginner: this function handles network event "6b3c48e86c".

-- === HELPER FUNCTION (decompiler name: number8; parameters: localValue1, localValue2) ===
function number8(localValue1, localValue2)
  local localValue3
  localValue3 = workingValue3
  if localValue3 then
    localValue3 = workingValue3
    localValue3[localValue1] = localValue2
  end
end
-- Beginner: Register a network event handler that the server/other clients can trigger. Event/command: "6b3c48e86c".
eventHandler(rageUiOperation, number8)
-- Beginner: this function handles network event "6b3c48e86c".

-- === HELPER FUNCTION (decompiler name: eventHandler; parameters: localValue1, localValue2) ===
function eventHandler(localValue1, localValue2)
  local localValue3, localValue4, localValue5, workingValue16, workingValue17, workingValue19, workingValue21, workingValue23
  localValue3 = workingValue3
  if localValue3 then
    localValue3 = workingValue3.stancer
    if localValue3 then
      goto continueAtStep8
    end
  end
  localValue3 = nil
  ::continueAtStep8::
  if localValue3 then
    localValue4 = localValue3[localValue1]
    if localValue4 then
      localValue4 = table
      localValue4 = localValue4.count
      localValue5 = localValue3[localValue1]
      -- Beginner: result below is count.
      localValue4 = localValue4(localValue5)
      if 0 ~= localValue4 then
        goto continueAtStep37
      end
    end
  end
  localValue4 = {}
  localValue5 = "\194\163"
  workingValue16 = getMoneyStringFormatted
  workingValue17 = cmgOperation.stancerPrices
  workingValue17 = workingValue17[localValue1]
  workingValue16 = workingValue16(workingValue17)
  localValue5 = localValue5 .. workingValue16
  localValue4.RightLabel = localValue5
  localValue5 = RageUI
  localValue5 = localValue5.ButtonWithStyle
  workingValue16 = localValue2
  workingValue17 = nil
  workingValue19 = localValue4
  workingValue21 = true

  -- === HELPER FUNCTION (decompiler name: workingValue23; parameters: localValue12, localValue22, localValue32) ===
  function workingValue23(localValue12, localValue22, localValue32)
    local serverEventCall, text9, dataCollection3, stateFlag
    if localValue32 then
      serverEventCall = TriggerServerEvent
      text9 = "0ed46fc187"
      dataCollection3 = number6
      stateFlag = localValue1
      -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "0ed46fc187".
      serverEventCall(text9, dataCollection3, stateFlag)
    end
  end
  -- Beginner: Draw a selectable RageUI menu button.
  localValue5(workingValue16, workingValue17, workingValue19, workingValue21, workingValue23)
  goto continueAtStep39
  ::continueAtStep37::
  localValue4 = true
  return localValue4
  ::continueAtStep39::
end
rageUiOperation = RageUI
rageUiOperation = rageUiOperation.CreateWhile
number8 = 1.0
workingValue13 = RMenu
workingValue14 = workingValue13
workingValue13 = workingValue13.Get
text7 = "stancer"
cmgOperation2 = "mainmenu"
-- Beginner: result below is menu.
workingValue13 = workingValue13(workingValue14, text7, cmgOperation2)
workingValue14 = nil

-- === HELPER FUNCTION (decompiler name: text7; parameters: none) ===
function text7()
  local localValue1, localValue2, localValue3, localValue4, localValue5, workingValue16
  localValue1 = RageUI
  localValue1 = localValue1.IsVisible
  localValue2 = RMenu
  localValue3 = localValue2
  localValue2 = localValue2.Get
  localValue4 = "stancer"
  localValue5 = "mainmenu"
  -- Beginner: result below is menu.
  localValue2 = localValue2(localValue3, localValue4, localValue5)
  localValue3 = true
  localValue4 = true
  localValue5 = true

  -- === HELPER FUNCTION (decompiler name: workingValue16; parameters: none) ===
  function workingValue16()
    local localValue12, localValue22, localValue32, serverEventCall, text9, dataCollection3, stateFlag, workingValue20
    localValue12 = RageUI
    localValue12 = localValue12.BackspaceMenuCallback

    -- === HELPER FUNCTION: localValue22() ===
    function localValue22()
      local localValue13, localValue23, localValue33, localValue42, serverEventCall2
      localValue13 = workingValue4
      if localValue13 then
        localValue13 = RageUI
        localValue13 = localValue13.Visible
        localValue23 = RMenu
        localValue33 = localValue23
        localValue23 = localValue23.Get
        localValue42 = workingValue4
        localValue42 = localValue42[1]
        serverEventCall2 = workingValue4
        serverEventCall2 = serverEventCall2[2]
        -- Beginner: result below is menu.
        localValue23 = localValue23(localValue33, localValue42, serverEventCall2)
        localValue33 = true
        localValue13(localValue23, localValue33)
      end
    end
    localValue12(localValue22)
    localValue12 = workingValue12
    localValue12()
    localValue12 = eventHandler
    localValue22 = "frontWidth"
    localValue32 = "Front Track Width"
    localValue12 = localValue12(localValue22, localValue32)
    if localValue12 then
      localValue12 = RageUI
      localValue12 = localValue12.List
      localValue22 = "Front Track Width"
      localValue32 = backgroundThread
      serverEventCall = rageUiOperation3
      text9 = nil
      dataCollection3 = {}
      stateFlag = true

      -- === HELPER FUNCTION (decompiler name: workingValue20; parameters: localValue13, localValue23, localValue33, localValue42) ===
      function workingValue20(localValue13, localValue23, localValue33, localValue42)
        local serverEventCall2, text10, workingValue18, text12, workingValue22
        serverEventCall2 = rageUiOperation3
        if localValue42 ~= serverEventCall2 then
          rageUiOperation3 = localValue42
          serverEventCall2 = TriggerServerEvent
          text10 = "575d62fb6a"
          workingValue18 = number6
          text12 = "frontWidth"
          workingValue22 = localValue42
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "575d62fb6a".
          serverEventCall2(text10, workingValue18, text12, workingValue22)
        end
      end
      -- Beginner: Draw a RageUI list selector.
      localValue12(localValue22, localValue32, serverEventCall, text9, dataCollection3, stateFlag, workingValue20)
    end
    localValue12 = eventHandler
    localValue22 = "rearWidth"
    localValue32 = "Rear Track Width"
    localValue12 = localValue12(localValue22, localValue32)
    if localValue12 then
      localValue12 = RageUI
      localValue12 = localValue12.List
      localValue22 = "Rear Track Width"
      localValue32 = rageUiOperation4
      serverEventCall = text
      text9 = nil
      dataCollection3 = {}
      stateFlag = true

      -- === HELPER FUNCTION (decompiler name: workingValue20; parameters: localValue13, localValue23, localValue33, localValue42) ===
      function workingValue20(localValue13, localValue23, localValue33, localValue42)
        local serverEventCall2, text10, workingValue18, text12, workingValue22
        serverEventCall2 = text
        if localValue42 ~= serverEventCall2 then
          text = localValue42
          serverEventCall2 = TriggerServerEvent
          text10 = "575d62fb6a"
          workingValue18 = number6
          text12 = "rearWidth"
          workingValue22 = localValue42
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "575d62fb6a".
          serverEventCall2(text10, workingValue18, text12, workingValue22)
        end
      end
      -- Beginner: Draw a RageUI list selector.
      localValue12(localValue22, localValue32, serverEventCall, text9, dataCollection3, stateFlag, workingValue20)
    end
    localValue12 = eventHandler
    localValue22 = "frontCamber"
    localValue32 = "Front Camber"
    localValue12 = localValue12(localValue22, localValue32)
    if localValue12 then
      localValue12 = RageUI
      localValue12 = localValue12.List
      localValue22 = "Front Camber"
      localValue32 = dataCollection
      serverEventCall = number2
      text9 = nil
      dataCollection3 = {}
      stateFlag = true

      -- === HELPER FUNCTION (decompiler name: workingValue20; parameters: localValue13, localValue23, localValue33, localValue42) ===
      function workingValue20(localValue13, localValue23, localValue33, localValue42)
        local serverEventCall2, text10, workingValue18, text12, workingValue22
        serverEventCall2 = number2
        if localValue42 ~= serverEventCall2 then
          number2 = localValue42
          serverEventCall2 = TriggerServerEvent
          text10 = "575d62fb6a"
          workingValue18 = number6
          text12 = "frontCamber"
          workingValue22 = localValue42
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "575d62fb6a".
          serverEventCall2(text10, workingValue18, text12, workingValue22)
        end
      end
      -- Beginner: Draw a RageUI list selector.
      localValue12(localValue22, localValue32, serverEventCall, text9, dataCollection3, stateFlag, workingValue20)
    end
    localValue12 = eventHandler
    localValue22 = "rearCamber"
    localValue32 = "Rear Camber"
    localValue12 = localValue12(localValue22, localValue32)
    if localValue12 then
      localValue12 = RageUI
      localValue12 = localValue12.List
      localValue22 = "Rear Camber"
      localValue32 = dataCollection2
      serverEventCall = number4
      text9 = nil
      dataCollection3 = {}
      stateFlag = true

      -- === HELPER FUNCTION (decompiler name: workingValue20; parameters: localValue13, localValue23, localValue33, localValue42) ===
      function workingValue20(localValue13, localValue23, localValue33, localValue42)
        local serverEventCall2, text10, workingValue18, text12, workingValue22
        serverEventCall2 = number4
        if localValue42 ~= serverEventCall2 then
          number4 = localValue42
          serverEventCall2 = TriggerServerEvent
          text10 = "575d62fb6a"
          workingValue18 = number6
          text12 = "rearCamber"
          workingValue22 = localValue42
          -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "575d62fb6a".
          serverEventCall2(text10, workingValue18, text12, workingValue22)
        end
      end
      -- Beginner: Draw a RageUI list selector.
      localValue12(localValue22, localValue32, serverEventCall, text9, dataCollection3, stateFlag, workingValue20)
    end
  end
  localValue1(localValue2, localValue3, localValue4, localValue5, workingValue16)
end
rageUiOperation(number8, workingValue13, workingValue14, text7)

-- === HELPER FUNCTION (decompiler name: rageUiOperation; parameters: localValue1, localValue2) ===
function rageUiOperation(localValue1, localValue2)
  local localValue3, localValue4, localValue5, workingValue16, workingValue17, workingValue19, workingValue21, workingValue23
  localValue3 = {}
  localValue4 = -localValue1
  localValue5 = localValue1
  workingValue16 = 1
  for workingValue17 = localValue4, localValue5, workingValue16 do
    workingValue19 = table
    workingValue19 = workingValue19.insert
    workingValue21 = localValue3
    workingValue23 = localValue2 * workingValue17
    workingValue19(workingValue21, workingValue23)
  end
  return localValue3
end

-- === HELPER FUNCTION (decompiler name: number8; parameters: none) ===
function number8()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = cmgOperation.stancerLimits
  localValue1 = localValue1.frontWidth
  localValue2 = number7
  localValue1 = localValue1 / localValue2
  localValue2 = rageUiOperation
  localValue3 = number7
  localValue4 = localValue1
  return localValue2(localValue3, localValue4)
end

-- === HELPER FUNCTION (decompiler name: workingValue13; parameters: none) ===
function workingValue13()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = cmgOperation.stancerLimits
  localValue1 = localValue1.rearWidth
  localValue2 = number7
  localValue1 = localValue1 / localValue2
  localValue2 = rageUiOperation
  localValue3 = number7
  localValue4 = localValue1
  return localValue2(localValue3, localValue4)
end

-- === HELPER FUNCTION (decompiler name: workingValue14; parameters: none) ===
function workingValue14()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = cmgOperation.stancerLimits
  localValue1 = localValue1.frontCamber
  localValue2 = number7
  localValue1 = localValue1 / localValue2
  localValue2 = rageUiOperation
  localValue3 = number7
  localValue4 = localValue1
  return localValue2(localValue3, localValue4)
end

-- === HELPER FUNCTION (decompiler name: text7; parameters: none) ===
function text7()
  local localValue1, localValue2, localValue3, localValue4
  localValue1 = cmgOperation.stancerLimits
  localValue1 = localValue1.rearCamber
  localValue2 = number7
  localValue1 = localValue1 / localValue2
  localValue2 = rageUiOperation
  localValue3 = number7
  localValue4 = localValue1
  return localValue2(localValue3, localValue4)
end
cmgOperation2 = CMG

-- === HELPER FUNCTION (decompiler name: workingValue15; parameters: localValue1, localValue2) ===
function workingValue15(localValue1, localValue2)
  local localValue3, localValue4, localValue5, workingValue16, workingValue17, workingValue19, workingValue21, workingValue23, workingValue, text2, text3, text4, workingValue2
  localValue3 = {}
  localValue4 = GetVehicleNumberOfWheels
  localValue5 = localValue1
  localValue4 = localValue4(localValue5)
  if localValue4 > 32 then
    localValue5 = print
    workingValue16 = "[LS Customs] Undefined result from GetVehicleNumberOfWheels in setVehicleIdStancer"
    localValue5(workingValue16)
    return
  end
  localValue5 = GetVehicleWheelXOffset
  workingValue16 = localValue1
  workingValue17 = 0
  localValue5 = localValue5(workingValue16, workingValue17)
  workingValue16 = GetVehicleWheelXOffset
  workingValue17 = localValue1
  workingValue19 = localValue4 - 1
  workingValue16 = workingValue16(workingValue17, workingValue19)
  workingValue17 = GetVehicleWheelYRotation
  workingValue19 = localValue1
  workingValue21 = 0
  workingValue17 = workingValue17(workingValue19, workingValue21)
  workingValue19 = GetVehicleWheelYRotation
  workingValue21 = localValue1
  workingValue23 = localValue4 - 1
  workingValue19 = workingValue19(workingValue21, workingValue23)
  workingValue21 = Entity
  workingValue23 = localValue1
  workingValue21 = workingValue21(workingValue23)
  workingValue21 = workingValue21.state
  workingValue21 = workingValue21.stancer
  if workingValue21 then
    number5 = localValue1
    workingValue21 = workingValue11
    workingValue21()
    localValue5 = text11
    workingValue16 = text13
    workingValue17 = number
    workingValue19 = number3
  end
  workingValue21 = workingValue5
  workingValue23 = localValue2
  workingValue = "frontWidth"
  workingValue21 = workingValue21(workingValue23, workingValue)
  workingValue23 = mathHelper
  if workingValue21 ~= workingValue23 then
    workingValue23 = math
    workingValue23 = workingValue23.abs
    workingValue = localValue5
    workingValue23 = workingValue23(workingValue)
    workingValue = number8
    workingValue = workingValue()
    workingValue = workingValue[workingValue21]
    workingValue23 = workingValue23 + workingValue
    localValue3.frontWidth = workingValue23
  end
  workingValue23 = workingValue5
  workingValue = localValue2
  text2 = "rearWidth"
  workingValue23 = workingValue23(workingValue, text2)
  workingValue = mathHelper
  if workingValue23 ~= workingValue then
    workingValue = math
    workingValue = workingValue.abs
    text2 = workingValue16
    workingValue = workingValue(text2)
    text2 = workingValue13
    text2 = text2()
    text2 = text2[workingValue23]
    workingValue = workingValue + text2
    localValue3.rearWidth = workingValue
  end
  workingValue = workingValue5
  text2 = localValue2
  text3 = "frontCamber"
  workingValue = workingValue(text2, text3)
  text2 = mathHelper
  if workingValue ~= text2 then
    text2 = math
    text2 = text2.abs
    text3 = workingValue17
    text2 = text2(text3)
    text3 = workingValue14
    text3 = text3()
    text3 = text3[workingValue]
    text2 = text2 + text3
    localValue3.frontCamber = text2
  end
  text2 = workingValue5
  text3 = localValue2
  text4 = "rearCamber"
  text2 = text2(text3, text4)
  text3 = mathHelper
  if text2 ~= text3 then
    text3 = math
    text3 = text3.abs
    text4 = workingValue19
    text3 = text3(text4)
    text4 = text7
    text4 = text4()
    text4 = text4[text2]
    text3 = text3 + text4
    localValue3.rearCamber = text3
  end
  text3 = false
  text4 = NetworkGetEntityIsNetworked
  workingValue2 = localValue1
  text4 = text4(workingValue2)
  if text4 then
    text4 = NetworkGetNetworkIdFromEntity
    workingValue2 = localValue1
    text4 = text4(workingValue2)
    if 0 ~= text4 then
      goto continueAtStep124
    end
  end
  text3 = true
  ::continueAtStep124::
  text4 = Citizen
  text4 = text4.CreateThread

  -- === HELPER FUNCTION (decompiler name: workingValue2; parameters: none) ===
  function workingValue2()
    local localValue12, localValue22, localValue32, serverEventCall, text9
    localValue12 = Citizen
    localValue12 = localValue12.Wait
    localValue22 = text3
    if localValue22 then
      localValue22 = 2500
      if localValue22 then
        goto continueAtStep10
      end
    end
    localValue22 = 0
    ::continueAtStep10::
    localValue12(localValue22)
    localValue12 = NetworkGetNetworkIdFromEntity
    localValue22 = localValue1
    localValue12 = localValue12(localValue22)
    localValue22 = TriggerServerEvent
    localValue32 = "9805295c4f"
    serverEventCall = localValue12
    text9 = localValue3
    -- Beginner: Tell the server that something happened or request a server-side action. Event/command: "9805295c4f".
    localValue22(localValue32, serverEventCall, text9)
  end
  -- Beginner: Start a separate FiveM thread so this code can run independently.
  text4(workingValue2)
end
cmgOperation2.setVehicleIdStancer = workingValue15
